uint64_t sub_297E74B88(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Desfire_HCrHandler");
  if (a1)
  {
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
        LOBYTE(v10) = 3;
        if (((1 << a2) & 0x24480000) != 0)
        {
          v6 = 152;
        }

        else
        {
          v6 = a2;
        }

        if (a2 <= 0x1Du)
        {
          a2 = v6;
        }

        else
        {
          a2 = a2;
        }
      }

      else
      {
        *(a1 + 546) = 1;
        v5 = *(a1 + 648) - 2;
        HIDWORD(v10) = *(a1 + 660);
        v11 = v5;
        LOBYTE(v10) = *(a1 + 545);
      }

      (*(a1 + 8))(*(a1 + 40), a2, &v10);
    }

    else if (v4 == 2)
    {
      if (a2 == 24 || !a2)
      {
        LODWORD(v9) = **(a1 + 552);
        v8 = *(a1 + 240);
      }

      (*(a1 + 16))(*(a1 + 40), a2, &v8);
    }
  }

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desfire_HCrHandler");
}

uint64_t sub_297E74CEC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Desfire_ReadRemCCBytes");
  if (a1 && a2)
  {
    v4 = *(a1 + 642);
    if (v4 == 7 || v4 == 4)
    {
      *(a1 + 266) = -20480;
      *(a1 + 268) = *(a1 + 2748);
      *(a1 + 269) = 0;
      *(a1 + 270) = a2;
      *(a1 + 526) = 5;
      v6 = sub_297E7487C(a1, a2 + 2);
      if (v6 != 13)
      {
        v7 = v6;
        phOsalNfc_SetMemory();
        *(a1 + 2748) = 0;
        sub_297E74B88(a1, v7);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desfire_ReadRemCCBytes");
}

uint64_t sub_297E74DD0(uint64_t a1)
{
  v22[2] = *MEMORY[0x29EDCA608];
  *(v22 + 7) = 0;
  v22[0] = 0;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Desfire_ProcReadCapCont");
  if (!a1)
  {
    return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desfire_ProcReadCapCont");
  }

  if (*(a1 + 642) != 7)
  {
    v21 = 0;
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Desfire_Update_SmartTagCapContainer");
    v6 = __rev16(*(a1 + 266));
    if (v6 < 0xF || v6 == 0xFFFF || sub_297E9C178(a1, 2u))
    {
      goto LABEL_22;
    }

    if (*(a1 + 269))
    {
      v7 = -1;
    }

    else
    {
      v7 = *(a1 + 270);
    }

    *(a1 + 654) = v7;
    v8 = __rev16(*(a1 + 271));
    if (v8 >= 0xFA)
    {
      LOWORD(v8) = 250;
    }

    *(a1 + 656) = v8;
    if (!*(a1 + 65) && !sub_297EE7F9C(*(a1 + 2712), &v21) && v21 && *(a1 + 656) > v21)
    {
      *(a1 + 656) = v21 - 5;
    }

    if (*(a1 + 654) < 0xFu || !*(a1 + 656))
    {
      goto LABEL_22;
    }

    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Desf_HChkAndParseTLV");
    v9 = *(a1 + 273);
    if ((v9 - 7) < 0xFFFFFFFD)
    {
      sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desf_HChkAndParseTLV");
LABEL_22:
      sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desfire_Update_SmartTagCapContainer");
      v5 = a1;
      v4 = 22;
      goto LABEL_23;
    }

    if (v9 == 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = 5;
    }

    if (v9 == 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    *(a1 + 64) = v12;
    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desf_HChkAndParseTLV");
    v13 = *(a1 + 64);
    if (v13 != 6)
    {
      if (v13 == 5)
      {
        goto LABEL_40;
      }

      if (v13 != 4)
      {
        goto LABEL_22;
      }
    }

    v14 = *(a1 + 274);
    if (*(a1 + 274) && v14 != 255 && (*(a1 + 64) == 4 && v14 == 6 || *(a1 + 64) == 6 && v14 == 8))
    {
      v16 = __rev16(*(a1 + 275));
      *(a1 + 644) = v16;
      if (v16 <= 57601)
      {
        if (v16 == 16128)
        {
          goto LABEL_22;
        }

        v17 = 0x3FFF;
      }

      else
      {
        if ((v16 - 57602) < 2)
        {
          goto LABEL_22;
        }

        v17 = 0xFFFF;
      }

      if (v16 == v17)
      {
        goto LABEL_22;
      }

      v18 = *(a1 + 277);
      v19 = *(a1 + 278);
      v20 = v14 == 6 ? v19 | (v18 << 8) : (v18 << 24) | (v19 << 16) | (*(a1 + 279) << 8) | *(a1 + 280);
      *(a1 + 648) = v20;
      if ((v20 - 2) < 5)
      {
        goto LABEL_22;
      }

      if (v20 == 0xFFFF)
      {
        if (v13 == 4)
        {
          goto LABEL_22;
        }
      }

      else if (v13 == 6 && v20 == -3)
      {
        goto LABEL_22;
      }

      *(a1 + 652) = *(a1 + 279);
      sub_297E75B64(a1);
    }

LABEL_40:
    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desfire_Update_SmartTagCapContainer");
    *(a1 + 642) = 5;
    if (*(a1 + 65) && *(a1 + 544) != 6)
    {
      v15 = sub_297E74774(a1);
    }

    else
    {
      v15 = sub_297E73D2C(a1);
    }

    v4 = v15;
    if (v15 != 13)
    {
      goto LABEL_8;
    }

    return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desfire_ProcReadCapCont");
  }

  *a1 = 62;
  phOsalNfc_MemCopy();
  if (sub_297E8EA44(*(a1 + 2712)) == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  BYTE6(v22[1]) = v2;
  *(a1 + 266) = 54784;
  *(a1 + 270) = 15;
  phOsalNfc_MemCopy();
  *(a1 + 526) = 20;
  v3 = sub_297E7487C(a1, 2);
  if (v3 != 13)
  {
    v4 = v3;
LABEL_8:
    v5 = a1;
LABEL_23:
    sub_297E74B88(v5, v4);
  }

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desfire_ProcReadCapCont");
}

uint64_t sub_297E751F0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v55 = a1;
  sub_297E4E1B4(0, &v55, 8, 5u, "phFriNfc_Desfire_Process");
  if (a3)
  {
    if (a2)
    {
      if (*a2 == 8)
      {
        v5 = *(a2 + 84);
        if (*v5)
        {
          *v5 = 0;
          *(a2 + 166) = 0;
          a3 = 24;
        }
      }
    }

    goto LABEL_44;
  }

  v6 = *a2;
  if (v6 <= 7)
  {
    if (*a2 <= 5u)
    {
      if (v6 == 4)
      {
        v19 = *(a2 + 132);
        if ((v19 - 2) > 0x102 || a2[(v19 - 2) + 266] != 144 || a2[(v19 - 1) + 266])
        {
          a2[544] = 2;
          sub_297E73EB4(a2);
          return sub_297E4DFAC(0, &v55, 8, 5u, "phFriNfc_Desfire_Process");
        }

        a2[544] = 6;
      }

      else
      {
        if (v6 != 5)
        {
          goto LABEL_68;
        }

        v8 = *(a2 + 132);
        if ((v8 - 2) > 0x102 || a2[(v8 - 2) + 266] != 144 || a2[(v8 - 1) + 266])
        {
          a2[544] = 0;
          v9 = a2;
          v7 = 19;
LABEL_45:
          sub_297E74B88(v9, v7);
          return sub_297E4DFAC(0, &v55, 8, 5u, "phFriNfc_Desfire_Process");
        }
      }

      v46 = sub_297E73D2C(a2);
      goto LABEL_140;
    }

    if (v6 == 6)
    {
      if (a2[266] != 144 || a2[267])
      {
        goto LABEL_53;
      }

      v35 = a2[642];
      if (v35 <= 3)
      {
        if (v35 != 2)
        {
          if (v35 != 3)
          {
            goto LABEL_53;
          }

          v46 = sub_297E741D0(a2);
LABEL_140:
          if (v46 == 13)
          {
            return sub_297E4DFAC(0, &v55, 8, 5u, "phFriNfc_Desfire_Process");
          }

          v7 = v46;
          goto LABEL_92;
        }

        if (!a2[65] && a2[560] == 1 && !*(a2 + 166) && !**(a2 + 84))
        {
          v46 = sub_297E73A68(a2);
          goto LABEL_140;
        }
      }

      else if (v35 - 4 >= 2 && v35 != 7)
      {
        goto LABEL_53;
      }

LABEL_139:
      v46 = sub_297E73B20(a2);
      goto LABEL_140;
    }

    if (v6 != 7)
    {
      goto LABEL_68;
    }

    v10 = *(a2 + 132);
    if (v10 - 2 <= 0x102)
    {
      v11 = *(a2 + 1374);
      if (17 - v11 >= v10 && a2[(v10 - 2) + 266] == 144 && !a2[(v10 - 1) + 266])
      {
        phOsalNfc_MemCopy();
        v49 = *(a2 + 132) + *(a2 + 1374) - 2;
        *(a2 + 1374) = v49;
        if (v49 == 15)
        {
          phOsalNfc_MemCopy();
          *(a2 + 281) = 144;
          *(a2 + 132) = *(a2 + 1374) + 2;
          phOsalNfc_SetMemory();
          *(a2 + 1374) = 0;
          sub_297E74DD0(a2);
          return sub_297E4DFAC(0, &v55, 8, 5u, "phFriNfc_Desfire_Process");
        }

        v13 = 15 - v49;
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_32;
        }

        v12 = a2[266];
        if (v12 != 108 && v12 != 97)
        {
          goto LABEL_32;
        }

        v13 = a2[267];
        if (!a2[267] || 15 - v11 <= v13)
        {
          goto LABEL_32;
        }
      }

      sub_297E74CEC(a2, v13);
      return sub_297E4DFAC(0, &v55, 8, 5u, "phFriNfc_Desfire_Process");
    }

LABEL_32:
    phOsalNfc_SetMemory();
    *(a2 + 1374) = 0;
    goto LABEL_53;
  }

  if (*a2 <= 0x3Bu)
  {
    if (v6 != 8)
    {
      if (v6 != 9)
      {
        goto LABEL_68;
      }

      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Desfire_Validate_NdefRdLen");
      v14 = a2[64];
      if (v14 == 6)
      {
        v15 = 4;
      }

      else
      {
        v15 = 2;
      }

      a2[669] = 0;
      v16 = *(a2 + 132);
      a3 = 20;
      if ((v16 - 2) > 0x102)
      {
        goto LABEL_42;
      }

      if (v15 != (v16 - 2))
      {
        goto LABEL_42;
      }

      v17 = a2 + 266;
      if (a2[v15 + 266] != 144 || v17[(v16 - 1)])
      {
        goto LABEL_42;
      }

      if (v14 == 6)
      {
        v47 = (a2[266] << 24) | (a2[267] << 16) | (a2[268] << 8);
        v48 = 269;
      }

      else
      {
        if (v14 != 4)
        {
          v50 = 0;
LABEL_129:
          if (v14 == 4)
          {
            v51 = 2;
          }

          else
          {
            v51 = 4 * (v14 == 6);
          }

          v52 = sub_297E74158(a2, v51);
          a3 = 22;
          if (v50 != 0xFFFF && v50 <= v52)
          {
            if (v50)
            {
              *(a2 + 165) = v50;
              a3 = sub_297E9C0B8(a2, v50);
              if (a3)
              {
                goto LABEL_43;
              }

              **(a2 + 84) = 0;
              *(a2 + 166) = 0;
              if (!a2[65])
              {
                a2[680] = 1;
                a2[668] = 1;
              }

              sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Desfire_Validate_NdefRdLen");
              goto LABEL_139;
            }

            a3 = 157;
          }

LABEL_42:
          **(a2 + 84) = 0;
          *(a2 + 166) = 0;
LABEL_43:
          sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Desfire_Validate_NdefRdLen");
LABEL_44:
          v9 = a2;
          v7 = a3;
          goto LABEL_45;
        }

        v47 = *v17 << 8;
        v48 = 267;
      }

      v50 = v47 | a2[v48];
      goto LABEL_129;
    }

    *(a2 + 686) = 0;
    v20 = sub_297E75A68(a2);
    v21 = *(a2 + 132);
    if (v21 <= 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21 - 2;
    }

    if (a2[669] == 1)
    {
      v23 = a2[64];
      v24 = v20 - 1;
      if (v23 == 4 && v24 <= 1)
      {
        v20 += 2;
      }

      else if (v24 < 4 && v23 == 6)
      {
        v20 += 4;
      }
    }

    if (v20 < v22)
    {
      goto LABEL_79;
    }

    if ((v21 - 2) > 0x102u)
    {
LABEL_89:
      v33 = *(a2 + 84);
      v34 = *v33;
      *v33 = 0;
      *(a2 + 166) = 0;
      if (v34)
      {
        v7 = 24;
      }

      else
      {
        v7 = 20;
      }

LABEL_92:
      v9 = a2;
      goto LABEL_45;
    }

    v28 = a2 + 266;
    if (a2[(v21 - 2) + 266] != 144 || v28[(v21 - 1)])
    {
LABEL_79:
      if (v21 == 2)
      {
        v26 = a2[266];
        if (v26 == 108 || v26 == 97)
        {
          v27 = a2[267];
          if (a2[267])
          {
            if (v20 > v27)
            {
              *(a2 + 686) = v27;
              sub_297E73B20(a2);
              return sub_297E4DFAC(0, &v55, 8, 5u, "phFriNfc_Desfire_Process");
            }
          }
        }
      }

      goto LABEL_89;
    }

    v29 = a2[642];
    if (v29 == 2)
    {
      sub_297E74924(a2);
      return sub_297E4DFAC(0, &v55, 8, 5u, "phFriNfc_Desfire_Process");
    }

    if (v29 == 5)
    {
      v30 = a2[64];
      if (v30 == 6)
      {
        v31 = (a2[266] << 24) | (a2[267] << 16) | (a2[268] << 8);
        v32 = 269;
      }

      else
      {
        if (v30 != 4)
        {
          v53 = 0;
          goto LABEL_149;
        }

        v31 = *v28 << 8;
        v32 = 267;
      }

      v53 = v31 | a2[v32];
LABEL_149:
      if (v30 == 4)
      {
        v54 = 2;
      }

      else
      {
        v54 = 4 * (v30 == 6);
      }

      if (v53 > sub_297E74158(a2, v54))
      {
        sub_297E4E0B0(2, a2, 8, 2u, "phFriNfc_Desfire_Process: Current NDEF message exceeds the Maximum Tag NDEF size");
        sub_297E50EBC(2, a2, 8, 2u, "phFriNfc_Desfire_Process:Current Ndef Message size");
        sub_297E50EBC(2, a2, 8, 2u, "phFriNfc_Desfire_Process:Maximum Ndef Message size");
        *(a2 + 165) = 0;
        a2[545] = 0;
        v9 = a2;
        v7 = 25;
        goto LABEL_45;
      }

      *(a2 + 165) = v53;
      v7 = sub_297E9C0B8(a2, v53);
      if (!v7)
      {
        *a2 = 10;
        **(a2 + 84) = 0;
        *(a2 + 166) = 0;
        a2[642] = 4;
      }

      goto LABEL_92;
    }

LABEL_53:
    v9 = a2;
    v7 = 29;
    goto LABEL_45;
  }

  if (v6 != 60)
  {
    if (v6 == 61)
    {
      if (a2[266] == 144 && !a2[267])
      {
        v7 = 0;
        v45 = a2[545];
        if (!v45)
        {
          v45 = 2;
        }

        a2[545] = v45;
        *(a2 + 165) = **(a2 + 32);
      }

      else
      {
        a2[540] = 0;
        v7 = 21;
      }

      *(a2 + 166) = 0;
      goto LABEL_92;
    }

    if (v6 == 62)
    {
      if (a2[266] == 144 && !a2[267])
      {
        v7 = 0;
        a2[545] = 1;
      }

      else
      {
        a2[540] = 0;
        v7 = 21;
      }

      goto LABEL_92;
    }

LABEL_68:
    v9 = a2;
    v7 = 245;
    goto LABEL_45;
  }

  if (a2[266] != 144 || a2[267])
  {
    *(a2 + 166) = 0;
    v9 = a2;
    v7 = 21;
    goto LABEL_45;
  }

  v36 = *(a2 + 84);
  v37 = *(a2 + 108);
  v38 = ~v37;
  if (*v36 <= ~v37)
  {
    v39 = *v36 + v37;
  }

  else
  {
    v39 = 0;
  }

  *v36 = v39;
  v40 = *(a2 + 166);
  if (v40 <= v38)
  {
    v41 = v40 + v37;
  }

  else
  {
    v41 = 0;
  }

  *(a2 + 166) = v41;
  v42 = *(a2 + 32);
  v43 = *v42 + v37;
  if (*v42 <= v38)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  *v42 = v44;
  sub_297E741D0(a2);
  return sub_297E4DFAC(0, &v55, 8, 5u, "phFriNfc_Desfire_Process");
}

uint64_t sub_297E75A68(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Desfire_HGetLeBytes");
  v2 = *(a1 + 642);
  if (v2 == 5)
  {
    if (*(a1 + 64) == 6)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    *(a1 + 669) = 0;
  }

  else
  {
    v4 = *(a1 + 248);
    v5 = *(a1 + 664);
    v12 = v4 >= v5;
    v6 = v4 - v5;
    if (v12)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 654);
    if (v7 >= v8)
    {
      v13 = *(a1 + 660);
      v10 = **(a1 + 672);
      v12 = v13 >= v10;
      v6 = v13 - v10;
      if (!v12)
      {
        v6 = 0;
      }

      v12 = v6 >= v8;
    }

    else
    {
      v9 = *(a1 + 660);
      v10 = **(a1 + 672);
      v12 = v9 >= v10;
      v8 = v9 - v10;
      if (v12)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      v12 = v6 >= v11;
    }

    if (v12)
    {
      v3 = v8;
    }

    else
    {
      v3 = v6;
    }

    v17 = (v2 != 2 || *(a1 + 65) != 0) && *(a1 + 560) == 1 && v10 == 0;
    *(a1 + 669) = v17;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desfire_HGetLeBytes");
  return v3;
}

uint64_t sub_297E75B64(_BYTE *a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Desfire_HChkNDEFFileAccessRights");
  if (a1[653] < -1 || a1[653] == 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (a1[652] < -1 || a1[652] == 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 3;
  }

  a1[545] = v5;

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Desfire_HChkNDEFFileAccessRights");
}

uint64_t sub_297E75BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 8, 5u, "phFriNfc_Desfire_CB_Transceive");
  sub_297E57170(v8, &v7);
  v5 = v7;
  if (v7)
  {
    if (a4)
    {
      *(v7 + 264) = *(a4 + 8);
    }

    (*(v5 + 48))(v8);
  }

  return sub_297E4DFAC(0, &v8, 8, 5u, "phFriNfc_Desfire_CB_Transceive");
}

uint64_t sub_297E75C94(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreRecvMgrInit");
  if (a1)
  {
    phOsalNfc_SetMemory();
    phOsalNfc_SetMemory();
    phOsalNfc_SetMemory();
    v2 = 0;
    *(a1 + 904) = 0;
    *(a1 + 900) = 0;
    *(a1 + 928) = 0;
    *(a1 + 944) = 0;
    *(a1 + 936) = 0;
    *(a1 + 952) = 0;
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreRecvMgrInit");
  return v2;
}

uint64_t sub_297E75D54(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreRecvMgrRelease");
  if (a1)
  {
    phOsalNfc_SetMemory();
    phOsalNfc_SetMemory();
    phOsalNfc_SetMemory();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreRecvMgrRelease");
  return v2;
}

uint64_t sub_297E75DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreRecvMgrDeRegisterCb");
  if (!a1 || !a2)
  {
    v8 = "Invalid input parameters";
    v9 = 1;
    v10 = 3;
    v11 = a1;
LABEL_15:
    sub_297E4E0B0(v10, v11, 3, 1u, v8);
    goto LABEL_16;
  }

  if (!*(a2 + 16))
  {
    v8 = "Invalid call back function pointer to register";
LABEL_14:
    v9 = 1;
    v11 = a1 + 2460;
    v10 = 1;
    goto LABEL_15;
  }

  if (!v3)
  {
    v6 = "De-registering data message call back...";
    v7 = 2184;
    goto LABEL_12;
  }

  if (v3 == 2)
  {
    v6 = "De-registering response message call back...";
    v7 = 1008;
    goto LABEL_12;
  }

  if (v3 != 3)
  {
    v8 = "Invalid message type";
    goto LABEL_14;
  }

  v6 = "De-registering notification message  call back...";
  v7 = 1032;
LABEL_12:
  sub_297E4E0B0(1, a1 + 2460, 3, 4u, v6);
  v9 = sub_297E75F2C(*(a1 + 632), a1 + v7, a2, v3);
LABEL_16:
  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreRecvMgrDeRegisterCb");
  return v9;
}

uint64_t sub_297E75F2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20 = a1;
  v19 = 0;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 3, 5u, "phNciNfc_CoreDeRegister");
  if (sub_297E5AB2C(v20, &v18))
  {
    sub_297E4E0B0(0, &v20, 3, 2u, "phNciNfc_CoreDeRegister: Nci Core context not valid");
  }

  if ((a4 | 2) == 2)
  {
    if (sub_297E522A0(v18, 0, a2, a3, a4, &v19))
    {
      v7 = 52;
      v8 = "Response/Data call back de-registration failed";
    }

    else if (a4 == 2)
    {
      v7 = 0;
      v13 = a2 + 24 * v19;
      *v13 = 768;
      *(v13 + 2) = 15;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v8 = "Response call back de-registration success";
    }

    else
    {
      v7 = 0;
      v14 = a2 + 24 * v19;
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      v8 = "Data call back de-registration success";
    }
  }

  else
  {
    v9 = 0;
    while (1)
    {
      if (sub_297E522A0(v18, 0, a2, a3, a4, &v19))
      {
        v15 = "End of list reached2";
        goto LABEL_19;
      }

      v10 = v19;
      v11 = a2 + 24 * v19;
      if (*(a3 + 16) == *(v11 + 16))
      {
        v7 = 0;
        *v11 = 0;
        v16 = a2 + 24 * v10;
        *(v16 + 1) = 3843;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        v8 = "Notification call back de-registration success";
        goto LABEL_20;
      }

      if (++v19 == 48)
      {
        break;
      }

      if (v9++ > 0x2E)
      {
        v7 = 52;
        goto LABEL_21;
      }
    }

    v15 = "End of list reached1";
LABEL_19:
    sub_297E4E0B0(0, &v20, 3, 4u, v15);
    v7 = 52;
    v8 = "Notification call back de-registration failed";
  }

LABEL_20:
  sub_297E4E0B0(0, &v20, 3, 4u, v8);
LABEL_21:
  sub_297E4DFAC(0, &v20, 3, 5u, "phNciNfc_CoreDeRegister");
  return v7;
}

uint64_t sub_297E76150(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreDeRegNciRes");
  if (a1)
  {
    *(a1 + 1008) = 768;
    *(a1 + 1010) = 15;
    *(a1 + 1016) = 0u;
  }

  return sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreDeRegNciRes");
}

uint64_t sub_297E761D4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v4 = a4;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ListenMgmt");
  if (!a2 || !a3 || !a1 || !v4)
  {
    sub_297E4E0B0(2, a1, 3, 4u, "Invalid input parameters");
    goto LABEL_8;
  }

  if (sub_297E762AC(a1, a2, a3, v4))
  {
LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  *(a1 + 4552) = a2;
  v8 = sub_297E6E69C(a1);
LABEL_9:
  sub_297E934F4(a1, a2);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ListenMgmt");
  return v8;
}

uint64_t sub_297E762AC(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateLstnMgmtRemDevInfo");
  if (a2 && a3 && a4)
  {
    *(a2 + 8) = *a3;
    v8 = a3[1];
    *(a2 + 12) = v8;
    if (v8)
    {
      v9 = 0;
      *(a2 + 16) = a3[2];
      *(a2 + 20) = a3[3];
      *(a2 + 24) = a3[4];
      *(a2 + 25) = a3[5];
      v10 = a3[6];
      *(a2 + 26) = v10;
      v11 = &a3[v10];
      *(a2 + 28) = v11[7];
      *(a2 + 32) = v11[8];
      *(a2 + 33) = v11[9];
    }

    else
    {
      sub_297E4E0B0(2, a1, 3, 2u, "Interface is NFCEE Direct RF,subsequent payload contents ignored..");
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
    sub_297E4E0B0(2, a1, 3, 1u, " Invalid Param(s)..");
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateLstnMgmtRemDevInfo");
  return v9;
}

uint64_t sub_297E763CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ReceiveData");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v8 = 49;
    goto LABEL_22;
  }

  if (!a2)
  {
    v8 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid input parameter (Nci Context)!");
    goto LABEL_22;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
  if (*(a1 + 3328) != 1)
  {
    v13 = 0;
    if (sub_297E8BB50(a1, *(a1 + 4552), &v13))
    {
      *(a1 + 3424) = 0;
      *(a1 + 3752) = 0;
      v9 = "Couldn't Get ConnId!";
    }

    else
    {
      v10 = v13;
      BYTE4(v15) = v13;
      LODWORD(v14) = 0;
      sub_297F00C28(a1 + 936, &v14, sub_297E70190);
      BYTE5(v15) = 1;
      LODWORD(v14) = 0;
      BYTE4(v15) = v10;
      if (!sub_297E59AEC(a1 + 936, &v14, sub_297E76760, a1))
      {
        *(a1 + 3360) = 1;
        goto LABEL_21;
      }

      *(a1 + 3424) = 0;
      *(a1 + 3752) = 0;
      v9 = "Data message call back registration failed!";
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 1u, v9);
    v8 = 255;
    goto LABEL_22;
  }

  v6 = phOsalNfc_Timer_Create();
  if (v6)
  {
    v7 = v6;
    if (v6 != 0xFFFFFFFFFFFFLL)
    {
      v11 = phOsalNfc_Timer_Start();
      if (v11)
      {
        v8 = v11;
        phOsalNfc_Timer_Delete();
        goto LABEL_16;
      }

      *(a1 + 3352) = v7;
      *(a1 + 3360) = 1;
      *(a1 + 3328) = 0;
LABEL_21:
      v8 = 13;
      goto LABEL_22;
    }
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Failed to create Timer!");
  v8 = 255;
LABEL_16:
  *(a1 + 3328) = 0;
  *(a1 + 3424) = 0;
  *(a1 + 3752) = 0;
  if (*(a1 + 3336))
  {
    phOsalNfc_FreeMemory();
    *(a1 + 3336) = 0;
  }

  *(a1 + 3344) = 16711680;
LABEL_22:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ReceiveData");
  return v8;
}

uint64_t sub_297E7662C(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a2, 3, 5u, "phNciNfc_TempReceiveCb");
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(&unk_2A18BDDC0 + 14 * v4 + 4);
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
      *(a2 + 3360) = 0;
      v7 = *(a2 + 3352);
      if (v7)
      {
        if (v7 != 0xFFFFFFFFFFFFLL)
        {
          phOsalNfc_Timer_Stop();
          phOsalNfc_Timer_Delete();
          *(a2 + 3352) = 0xFFFFFFFFFFFFLL;
          v8 = *(a2 + 3336);
          v13 = v8;
          LODWORD(v14) = *(a2 + 3344);
          v9 = *(a2 + 3346);
          v10 = *(a2 + 3424);
          v11 = *(a2 + 3752);
          *(a2 + 3424) = 0;
          *(a2 + 3752) = 0;
          if (v10)
          {
            v10(v11, v9, &v12);
            v8 = *(a2 + 3336);
          }

          if (v8)
          {
            phOsalNfc_FreeMemory();
            *(a2 + 3336) = 0;
          }

          *(a2 + 3344) = 16711680;
        }
      }
    }
  }

  return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_TempReceiveCb");
}

uint64_t sub_297E76760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ReceiveCb");
  if (a1)
  {
    *(a1 + 3360) = 0;
    v6 = *(a1 + 3424);
    if (v6)
    {
      v6(*(a1 + 3752), a3, a2);
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid context received from RecvMgrHdlr!");
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ReceiveCb");
  return a3;
}

uint64_t sub_297E7680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0u;
  v11 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendData");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v8 = 49;
    goto LABEL_13;
  }

  if (!a2 || !a4)
  {
    v8 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid input parameter!");
    goto LABEL_13;
  }

  if (!*(a4 + 8) || !*a4)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid Send buffer!");
    goto LABEL_12;
  }

  *(a1 + 3424) = 0;
  *(a1 + 3752) = 0;
  phOsalNfc_SetMemory();
  LODWORD(v10) = 0;
  if (sub_297E8BB50(a1, *(a1 + 4552), (&v10 | 0xC)))
  {
LABEL_12:
    v8 = 255;
    goto LABEL_13;
  }

  *&v11 = *a4;
  DWORD2(v11) = *(a4 + 8);
  v8 = sub_297F00AB4(a1 + 936, &v10, sub_297E769A8, a1);
  if (v8 == 13)
  {
    *(a1 + 3361) = 1;
    *(a1 + 3424) = a2;
    *(a1 + 3752) = a3;
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendData");
  return v8;
}

uint64_t sub_297E769A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendCb");
  if (a1)
  {
    *(a1 + 3361) = 0;
    sub_297E70080(a1);
    v5 = *(a1 + 3424);
    if (v5)
    {
      v5(*(a1 + 3752), a3, 0);
    }

    if (*(a1 + 4640))
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "De-allocating Send Request Payload Buffer...");
      phOsalNfc_FreeMemory();
      *(a1 + 4640) = 0;
      *(a1 + 4648) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid context received from RecvMgrHdlr!");
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendCb");
  return a3;
}

uint64_t sub_297E76A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SeSendData");
  if (a1)
  {
    if (a3 && a2 && a4)
    {
      phOsalNfc_SetMemory();
      *&v20[0] = 0;
      DWORD2(v20[0]) = 0;
      if (sub_297E8BB50(a1, a3, (v20 | 0xC)))
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, " Couldn't Get ConnId!");
        v14 = 255;
      }

      else
      {
        phOsalNfc_SetMemory();
        phOsalNfc_MemCopy();
        phOsalNfc_MemCopy();
        BYTE14(v18) = 1;
        *(a1 + 6616) = a6;
        if (a7 == 3)
        {
          v16 = 3;
        }

        else
        {
          v16 = 1;
        }

        v14 = sub_297E57CC8(a1, v16, v17, sub_297E76C94, a1);
        if (v14 == 13)
        {
          *(a1 + 3760) = a4;
          *(a1 + 3768) = a5;
        }

        else
        {
          *(a1 + 6616) = 0;
        }
      }
    }

    else
    {
      v14 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid input parameter!");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v14 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SeSendData");
  return v14;
}

uint64_t sub_297E76C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SeSendCb");
  if (a1)
  {
    if (*(a1 + 4640))
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "De-allocating Send Request Payload Buffer...");
      phOsalNfc_FreeMemory();
      *(a1 + 4640) = 0;
      *(a1 + 4648) = 0;
    }

    v5 = *(a1 + 3760);
    v6 = *(a1 + 3768);
    *(a1 + 3760) = 0u;
    if (v5)
    {
      v5(v6, a3, 0);
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid context received from RecvMgrHdlr!");
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SeSendCb");
  return a3;
}

uint64_t sub_297E76D74(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ListenMgmt_DeActivate");
  if (a1)
  {
    if (a2)
    {
      v4 = *(a2 + 20);
      if (((v4 - 128) < 4 || v4 == 133) && *(a1 + 3328) == 1)
      {
        *(a1 + 3328) = 0;
        if (*(a1 + 3336))
        {
          phOsalNfc_FreeMemory();
          *(a1 + 3336) = 0;
        }

        *(a1 + 3344) = 9568256;
      }
    }
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ListenMgmt_DeActivate");
}

uint64_t sub_297E76E28(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v27 = 26;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RdrAInit");
  if (a1 && a2 && a3 && a4)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " NFC-A Passive Poll Mode Info being captured..");
    v8 = *(a3 + 6);
    if (*(a2 + 20) == 128)
    {
      v9 = 0;
      LODWORD(v10) = 0;
      v11 = 0;
      goto LABEL_19;
    }

    v10 = *(a3 + 9);
    if (v10 <= 0xA && (v13 = 1, ((1 << v10) & 0x491) != 0))
    {
      v12 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid Nfc-A UID length");
      v13 = 0;
      v12 = 255;
    }

    v11 = 0;
    if (v10 > 0xA)
    {
      goto LABEL_18;
    }

    v9 = 0;
    if (((1 << v10) & 0x491) == 0)
    {
      goto LABEL_16;
    }

    v11 = *(a3 + v10 + 10);
    if (*(a3 + v10 + 10))
    {
      if (v11 == 1)
      {
        v9 = *(a3 + v10 + 11);
LABEL_16:
        if ((v13 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_19:
        sub_297E6DD78(a1, v9, v11, a2, &v27);
        v14 = v27;
        *(a2 + 4) = v27;
        if ((v14 - 3) >= 0xC)
        {
          if (v14 != 19)
          {
            v12 = 0;
LABEL_30:
            if (v14 <= 7)
            {
              if ((v14 - 5) < 3 || v14 == 3)
              {
                if (!v12)
                {
                  if (*(a2 + 12) == 2 && (v17 = (a3 + v8), v18 = *(a3 + v8 + 10), *(a3 + v8 + 10)))
                  {
                    v19 = v17[11];
                    *(a2 + 104) = v19;
                    if (v18 <= v19)
                    {
                      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid RATS Resp Recvd!!");
                      v12 = 255;
                    }

                    else
                    {
                      phOsalNfc_SetMemory();
                      if (*(a2 + 104))
                      {
                        v21 = v17 + 12;
                        v20 = v17[12];
                        *(a2 + 105) = v20;
                        *(a2 + 106) = sub_297E772B8(a1, v20 & 0xF);
                        v22 = *(a2 + 105);
                        v23 = *(a2 + 104);
                        v24 = 1;
                        if ((v22 & 0x10) != 0 && v23 >= 2)
                        {
                          *(a2 + 107) = v17[13];
                          v24 = 2;
                        }

                        if ((v22 & 0x20) != 0 && v23 > v24)
                        {
                          *(a2 + 108) = v21[v24++];
                        }

                        if ((v22 & 0x40) != 0 && v23 > v24)
                        {
                          *(a2 + 109) = v21[v24];
                          LOBYTE(v24) = v24 + 1;
                        }

                        phOsalNfc_MemCopy();
                        *(a2 + 125) = *(a2 + 104) - v24;
                      }

                      v12 = 0;
                      *(a2 + 100) = *(a2 + 108);
                    }
                  }

                  else
                  {
                    v12 = 0;
                  }

                  v15 = *(a1 + 4800);
                  *v15 = sub_297EE81B0;
                  v16 = sub_297EE8080;
                  goto LABEL_61;
                }

LABEL_39:
                v12 = 1;
                goto LABEL_62;
              }

              if (v14 != 4)
              {
                goto LABEL_62;
              }
            }

            else if ((v14 - 9) >= 6 && v14 != 8)
            {
              if (v14 != 19)
              {
                goto LABEL_62;
              }

              if (!v12)
              {
                v12 = sub_297E9BA08(*(a1 + 6528), (a2 + 47));
                v15 = *(a1 + 4800);
                *v15 = sub_297E9BDB8;
                v16 = sub_297E9BA8C;
                goto LABEL_61;
              }

              goto LABEL_39;
            }

            if (!v12)
            {
              v15 = *(a1 + 4800);
              *v15 = sub_297EBC1A8;
              v16 = sub_297EBC964;
LABEL_61:
              v15[1] = v16;
              goto LABEL_62;
            }

            goto LABEL_39;
          }

          if (!v10)
          {
            goto LABEL_22;
          }
        }

        else if (v10)
        {
          *(a2 + 46) = v10;
          *(a2 + 103) = v11;
          *(a2 + 96) = v9;
          phOsalNfc_MemCopy();
          phOsalNfc_SetMemory();
LABEL_22:
          phOsalNfc_MemCopy();
          v12 = 0;
LABEL_29:
          v14 = *(a2 + 4);
          goto LABEL_30;
        }

        v12 = 1;
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid UID Length received");
        goto LABEL_29;
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid Nfc-A SEL_RES length");
      v12 = 255;
    }

    else
    {
LABEL_18:
      v9 = v11;
      if (v13)
      {
        goto LABEL_19;
      }
    }

LABEL_24:
    *(a2 + 4) = 26;
LABEL_62:
    v25 = *(a1 + 4800);
    *(v25 + 16) = 0;
    *(v25 + 24) = sub_297EFF438;
    goto LABEL_63;
  }

  sub_297E4E0B0(2, a1, 3, 4u, " Invalid Params..");
  v12 = 1;
LABEL_63:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RdrAInit");
  return v12;
}

uint64_t sub_297E772B8(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_H_CalcFSC");
  if (a2 >= 8)
  {
    v4 = -3;
  }

  else
  {
    v4 = 0x7D5D3D2D251D150DuLL >> (8 * a2);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_H_CalcFSC");
  return v4;
}

uint64_t sub_297E77344(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RdrKovioInit");
  if (a2 && a3 && a4)
  {
    sub_297E4E0B0(2, a1, 3, 4u, " NFC-A Passive Poll Mode Info being captured..");
    if (*(a3 + 6) == 16)
    {
      *(a2 + 4) = 22;
      *(a2 + 36) = 16;
      phOsalNfc_SetMemory();
      phOsalNfc_MemCopy();
    }

    else
    {
      sub_297E4E0B0(2, a1, 3, 4u, " Invalid Params: Kovio TagId < 16 Bytes..");
    }

    v8 = 0;
  }

  else
  {
    sub_297E4E0B0(2, a1, 3, 4u, " Invalid Params..");
    v8 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RdrKovioInit");
  return v8;
}

uint64_t sub_297E77468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Iso15693Map");
  if (*a2 >= 2u)
  {
    if (*a2 != 32)
    {
      v10 = 1;
      sub_297E4E0B0(2, a1, 4, 1u, "Error: Iso15693 command not defined");
      goto LABEL_15;
    }

    v11 = *(a2 + 32);
    if (v11)
    {
      v12 = *(a2 + 40);
      if (v12)
      {
        v13 = *(a2 + 48);
        if (v13)
        {
          v14 = *(a2 + 56);
          if (v14)
          {
            v10 = 0;
            *(a3 + 16) = v11;
            *(a3 + 32) = v13;
            *(a3 + 24) = v12;
            *(a3 + 40) = v14;
            *a3 = 0;
            *v11 |= 2u;
            goto LABEL_15;
          }
        }
      }
    }

LABEL_13:
    v10 = 1;
    goto LABEL_15;
  }

  v6 = *(a2 + 32);
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = *(a2 + 40);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = *(a2 + 48);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = *(a2 + 56);
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = 0;
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  *(a3 + 24) = v7;
  *(a3 + 40) = v9;
  *a3 = *a2;
  *(a3 + 8) = *(a2 + 8);
LABEL_15:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Iso15693Map");
  return v10;
}

uint64_t sub_297E775A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapRemoteDevIso15693");
  if (a1 && a2 && a3)
  {
    if (*(a3 + 8) == 8)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Valid ISO15693 UID length received");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Invalid ISO15693 UID length");
    }

    if (*(a3 + 8) >= 9u)
    {
      v7 = *(a2 + 8);
      v6 = 1;
    }

    else
    {
      phOsalNfc_MemCopy();
      v6 = 0;
      v7 = *(a3 + 8);
      *(a2 + 8) = v7;
    }

    *(a2 + 11) = *(a3 + 11);
    *(a2 + 9) = *(a3 + 9);
    sub_297E4E880(1, a1 + 9792, 4, 4u, "Received UID", a2, v7);
    sub_297E50DB0(1, a1 + 9792, 4, 4u, "UID length");
    sub_297E50DB0(1, a1 + 9792, 4, 4u, "AFI");
    sub_297E50DB0(1, a1 + 9792, 4, 4u, "DSFID");
    sub_297E50DB0(1, a1 + 9792, 4, 4u, "Flags");
  }

  else
  {
    v6 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid input parameter!");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapRemoteDevIso15693");
  return v6;
}

uint64_t sub_297E77774(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendDiscSelCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0x100000001;
    DWORD2(v4) = 4;
    *&v5 = *(a1 + 160);
    DWORD2(v5) = *(a1 + 168);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E779EC, a1);
    if (v2 == 13)
    {
      *(a1 + 177) = 1;
    }
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendDiscSelCmd");
  return v2;
}

uint64_t sub_297E7785C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteDiscSelSequence");
  if (a1)
  {
    *(a1 + 177) = 0;
    if (*(a1 + 160))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 160) = 0;
      *(a1 + 168) = 0;
    }

    if (!a2)
    {
      *(a1 + 768) = *(a1 + 3424);
      *(a1 + 776) = *(a1 + 3752);
      v6 = 3;
      LODWORD(v7) = 7;
      sub_297E59AEC(a1 + 936, &v6, sub_297E6F764, a1);
      v4 = *(a1 + 4696);
      if (v4 != 0xFFFFFFFFFFFFLL)
      {
        sub_297E5A304(*(a1 + 6524), v4);
        *(a1 + 6512) = 0;
        a2 = phOsalNfc_Timer_Start();
        if (a2)
        {
          goto LABEL_11;
        }

        sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_CompleteDiscSelSequence");
        *(a1 + 3424) = 0;
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Select ntf timer started\n");
      }

      a2 = 0;
      goto LABEL_11;
    }

    sub_297E5B994(a1, a2, 0);
  }

  else
  {
    a2 = 255;
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteDiscSelSequence");
  return a2;
}

uint64_t sub_297E779EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_DiscSelSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_DiscSelSequence");
  return v6;
}

uint64_t sub_297E77A80(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ValidateSuppDeActvType");
  v6 = 0;
  if (a3 && a3 != 3)
  {
    v7 = *(a2 + 12);
    if (v7 > 2)
    {
      if (v7 != 128)
      {
        if (v7 != 3)
        {
          goto LABEL_20;
        }

        if (a3 == 2 && *(a2 + 20) < 3u)
        {
          goto LABEL_25;
        }

LABEL_16:
        v9 = a3 == 4;
LABEL_17:
        if (v7 == 2 && v9)
        {
          v6 = 0;
        }

        else
        {
          v6 = 255;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (v7 < 2)
      {
        goto LABEL_25;
      }

      if (v7 != 2)
      {
LABEL_20:
        v9 = a3 == 4;
        if (a3 != 4 || v7 != 131)
        {
          goto LABEL_17;
        }

LABEL_25:
        v6 = 0;
        goto LABEL_26;
      }
    }

    v8 = *(a2 + 20);
    if (v8 <= 0xB && ((1 << v8) & 0xC07) != 0)
    {
      if (a3 == 1)
      {
        goto LABEL_25;
      }
    }

    else if (a3 == 1 && v8 == 12)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

LABEL_26:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ValidateSuppDeActvType");
  return v6;
}

uint64_t sub_297E77BBC(uint64_t a1, _DWORD *a2, int a3, void *a4, int a5)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RetrieveRemDevInfo");
  if (*a2)
  {
    for (i = 2; i != 22; i += 2)
    {
      v11 = *&a2[i];
      if (v11)
      {
        if (a5 == 1)
        {
          if (*v11 == 1)
          {
            goto LABEL_10;
          }
        }

        else if (v11[8] == a3)
        {
LABEL_10:
          v12 = 0;
          *a4 = v11;
          goto LABEL_11;
        }
      }
    }
  }

  v12 = 255;
LABEL_11:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RetrieveRemDevInfo");
  return v12;
}

uint64_t sub_297E77C8C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 3, 5u, "phNciNfc_DeactNtfTimeoutHandler");
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 4);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a2);
  if (v6 != a2)
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 3, 1u, "Nci context null (phNciNfc_DeactNtfTimeoutHandler)\n");
    goto LABEL_7;
  }

  if (!*(a2 + 6512))
  {
    phOsalNfc_Timer_Stop();
    if (!phOsalNfc_Timer_Start())
    {
      sub_297E4E0B0(1, a2 + 6524, 3, 4u, "Deactivate ntf timer restarted for extended time\n");
      *(a2 + 6512) = 1;
      goto LABEL_7;
    }

    sub_297E4E0B0(1, a2 + 6524, 3, 1u, "Deactivate ntf timer failed to start for extended time\n\n");
  }

  sub_297E687D8(2, a2, a1, 3, 4u, "phNciNfc_DeactNtfTimeoutHandler");
  sub_297E4E0B0(1, a2 + 6524, 3, 4u, "#######Deactivate notification TIMEOUT########\n");
  phOsalNfc_Timer_Stop();
  *(a2 + 6512) = 0;
  v8 = *(a2 + 784);
  if (v8)
  {
    *(a2 + 784) = 0;
    *(a2 + 6730) = 47;
    v8(*(a2 + 792), 0, a2 + 6730);
  }

LABEL_7:

  return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_DeactNtfTimeoutHandler");
}

uint64_t sub_297E77E68(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 3, 5u, "phNciNfc_SelectNtfTimeoutHandler");
  if (!a2)
  {
    goto LABEL_12;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 4);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a2);
  if (v6 != a2)
  {
    goto LABEL_12;
  }

  if (!*(a2 + 6512))
  {
    phOsalNfc_Timer_Stop();
    if (!phOsalNfc_Timer_Start())
    {
      sub_297E4E0B0(1, a2 + 6524, 3, 4u, "Select ntf timer restarted for extended time\n");
      *(a2 + 6512) = 1;
      goto LABEL_12;
    }

    sub_297E4E0B0(1, a2 + 6524, 3, 4u, "Select ntf timer failed to start for extended time\n");
  }

  sub_297E687D8(2, a2, a1, 3, 4u, "phNciNfc_SelectNtfTimeoutHandler");
  phOsalNfc_Timer_Stop();
  *(a2 + 6512) = 0;
  v7 = *(a2 + 768);
  if (v7)
  {
    *(a2 + 768) = 0;
    v7(*(a2 + 776), 255, 0);
  }

LABEL_12:

  return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_SelectNtfTimeoutHandler");
}

uint64_t sub_297E77FF8(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessActivatedIfDeActv");
  if (!a1)
  {
    goto LABEL_7;
  }

  sub_297E76D74(a1, a2);
  v4 = *(a1 + 172);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (!sub_297EFF370(a1))
      {
        sub_297E5B6B4(a1);
        v5 = 0;
        *(a1 + 176) = 1;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (v4 != 4)
    {
LABEL_11:
      v5 = 255;
      goto LABEL_12;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_12;
  }

  if ((v4 - 1) >= 2)
  {
    if (!v4)
    {
      v5 = sub_297EFF370(a1);
      sub_297E5B6B4(a1);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *a2 = 0;
  v5 = sub_297EFF370(a1);
LABEL_12:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessActivatedIfDeActv");
  return v5;
}

uint64_t sub_297E780F0(uint64_t a1, _DWORD *a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateNtfList");
  if (a4 == 1 && *a2 > 9u)
  {
LABEL_12:
    v11 = 255;
    goto LABEL_15;
  }

  v8 = 2;
  while (1)
  {
    v9 = *&a2[v8];
    if (a4 != 1)
    {
      break;
    }

    if (!v9)
    {
      v12 = 1;
      goto LABEL_14;
    }

LABEL_11:
    v8 += 2;
    if (v8 == 22)
    {
      goto LABEL_12;
    }
  }

  if (v9)
  {
    v10 = v9 == a3;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  a3 = 0;
  v12 = -1;
LABEL_14:
  v11 = 0;
  *a2 += v12;
  *&a2[v8] = a3;
LABEL_15:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateNtfList");
  return v11;
}

uint64_t sub_297E781D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessDiscNtf");
  if (a3)
  {
    v6 = "Received Erroneous Notification(phNciNfc_ProcessDiscNtf)\n";
    goto LABEL_3;
  }

  a3 = 1;
  v6 = "Invalid input parameter (phNciNfc_ProcessDiscNtf)\n";
  if (a1 && a2)
  {
    v7 = *(a2 + 8);
    if (!v7 || (v8 = *(a2 + 16)) == 0)
    {
      a3 = 1;
      v10 = 2;
      v9 = a1;
      goto LABEL_13;
    }

    if (v8 <= 4)
    {
      v6 = "Failed, Ntf Length is less than minimum (phNciNfc_ProcessDiscNtf)\n";
      a3 = 1;
      v9 = a1 + 6524;
      v10 = 1;
LABEL_13:
      sub_297E4E0B0(v10, v9, 3, 1u, v6);
LABEL_14:
      sub_297E78980(a1, a3);
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Failed,phNciNfc_ProcessDiscNtf()");
      sub_297E5B6B4(a1);
      goto LABEL_15;
    }

    sub_297F00E88(a1 + 936);
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (!Memory_Typed)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Memory allocation for Remotedevice information failed");
      a3 = 12;
      goto LABEL_14;
    }

    v13 = Memory_Typed;
    phOsalNfc_SetMemory();
    sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_StoreRemDevInfo");
    sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_StoreDiscNtfParams");
    v14 = *v7;
    if (!*v7 || v14 == 255 || ((*(v13 + 8) = v14, sub_297E5C390(a1, v7[1])) || sub_297E6DCDC(a1, v7[2])) && sub_297E7029C(a1, v7))
    {
      sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_StoreDiscNtfParams");
      goto LABEL_23;
    }

    *(v13 + 16) = v7[1];
    *(v13 + 20) = v7[2];
    v15 = v7[3];
    v16 = (v7 + 4);
    sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_StoreRfTechParams");
    v17 = 0;
    v18 = *(v13 + 20);
    if (v18 <= 0xC && ((1 << v18) & 0x1C01) != 0)
    {
      v19 = v7[6];
      v42 = v19 <= 0xFD;
      v20 = -3 - v19;
      if (!v42)
      {
        v20 = 0;
      }

      v17 = -v20;
    }

    sub_297E6DD78(a1, v16[v17 + 1], v16[v17], v13, (v13 + 4));
    v21 = *(v13 + 20);
    if (v21 <= 0xC)
    {
      if (((1 << v21) & 0x1C08) != 0)
      {
LABEL_32:
        if (v15 >= 4)
        {
          sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_StoreNfcATechParams");
          v22 = v7[6];
          v23 = 255;
          if (v22 > 0xA || ((1 << v22) & 0x491) == 0)
          {
LABEL_80:
            v31 = "phNciNfc_StoreNfcATechParams";
LABEL_81:
            sub_297E4DFAC(2, a1, 3, 5u, v31);
            goto LABEL_82;
          }

          v24 = *(v13 + 4);
          v25 = *v16;
          if (v24 == 23)
          {
            *(v13 + 49) = v25;
            *(v13 + 50) = v7[5];
            *(v13 + 67) = 2;
            v33 = v7[6];
            *(v13 + 46) = v33;
            if (!v33)
            {
LABEL_62:
              v29 = 3;
LABEL_69:
              v27 = 255;
              v28 = 1;
              goto LABEL_74;
            }

            if (v33 <= 0xA)
            {
              phOsalNfc_MemCopy();
              v34 = *(v13 + 46);
              v29 = v34 + 3;
              v28 = 1;
              if (v16[(v34 + 3)] == 1)
              {
                v27 = 0;
                *(v13 + 48) = 1;
                v29 = v34 + 5;
                *(v13 + 47) = v16[(v34 + 4)];
LABEL_67:
                v28 = 0;
                goto LABEL_74;
              }

LABEL_73:
              v27 = 255;
              goto LABEL_74;
            }

            v37 = "Received NFCID Length exceeded max NFCID size";
          }

          else
          {
            if (v24 == 19)
            {
              *(v13 + 47) = v25;
              *(v13 + 48) = v7[5];
              v26 = v7[6];
              *(v13 + 46) = v26;
              if (!v26)
              {
                v27 = v7[7];
                if (!v7[7])
                {
                  v28 = 0;
                  v29 = 4;
LABEL_74:
                  if (v15 == v29)
                  {
                    v38 = 1;
                  }

                  else
                  {
                    v38 = v28;
                  }

                  if (v38)
                  {
                    v23 = v27;
                  }

                  else
                  {
                    v23 = 255;
                  }

                  goto LABEL_80;
                }
              }

              goto LABEL_62;
            }

            *(v13 + 101) = v25;
            *(v13 + 102) = v7[5];
            v35 = v7[6];
            if (!v7[6])
            {
              v29 = 2;
              goto LABEL_69;
            }

            *(v13 + 46) = v35;
            if (v35 <= 0xA)
            {
              phOsalNfc_MemCopy();
              v36 = *(v13 + 46);
              v29 = v36 + 3;
              v28 = 1;
              if (v16[(v36 + 3)] != 1)
              {
                v27 = 255;
                goto LABEL_74;
              }

              v27 = 0;
              *(v13 + 103) = 1;
              v29 = v36 + 5;
              *(v13 + 96) = v16[(v36 + 4)];
              goto LABEL_67;
            }

            v37 = "Received UID Length exceeded max UID size";
          }

          v29 = 3;
          v28 = 1;
          sub_297E4E0B0(2, a1, 3, 1u, v37);
          goto LABEL_73;
        }

LABEL_57:
        v23 = 255;
        goto LABEL_82;
      }

      if (((1 << v21) & 0x24) != 0)
      {
        if (v15 >= 0x12)
        {
          sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_StoreNfcFTechParams");
          v30 = *v16;
          if ((v30 - 1) <= 1 && (v7[5] | 2) == 0x12 && *(v13 + 4) != 23)
          {
            *(v13 + 55) = v30;
            v41 = v7[5];
            *(v13 + 56) = v41;
            if (v41 > 0x12)
            {
              sub_297E4E0B0(2, a1, 3, 1u, "Received SensFResp Length exceeded max SensF length");
            }

            else
            {
              phOsalNfc_MemCopy();
            }

            v42 = (*(v13 + 56) + 2) != v15 || v41 >= 0x13;
            if (v42)
            {
              v23 = 255;
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 255;
          }

          v31 = "phNciNfc_StoreNfcFTechParams";
          goto LABEL_81;
        }

        goto LABEL_57;
      }

      if (v21 == 6)
      {
        *(v13 + 46) = v7[4];
        *(v13 + 45) = v7[5];
        *(v13 + 44) = 8;
        phOsalNfc_MemCopy();
        v23 = 0;
        goto LABEL_82;
      }
    }

    if (v21 == 1)
    {
      if (v15 >= 0xC)
      {
        v32 = *v16;
        v23 = 255;
        if ((v32 - 11) <= 1)
        {
          *(v13 + 98) = v32;
          phOsalNfc_MemCopy();
          if (v15 == (*(v13 + 98) + 1))
          {
            v23 = 0;
          }

          else
          {
            v23 = 255;
          }
        }

LABEL_82:
        sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_StoreRfTechParams");
        v39 = v7[3];
        sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_StoreDiscNtfParams");
        if (!v23)
        {
          v40 = v39 + 4;
          if (v7[v40] > 2u)
          {
            v40 = 0;
          }

          else if (sub_297E780F0(a1, (a1 + 72), v13, 1) || v40 + 1 != v8)
          {
            goto LABEL_23;
          }

          sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_StoreRemDevInfo");
          if (v7[v40] > 1u)
          {
            a3 = 0;
          }

          else if (*(a1 + 72))
          {
            sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Last Notification received");
            *(a1 + 176) = 0;
            a3 = 55;
            sub_297E78980(a1, 55);
          }

          else
          {
            sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Chain of Discover notifications failed");
            a3 = 255;
          }

          sub_297E9157C(a1, v13);
          if (!a3)
          {
            goto LABEL_15;
          }

          goto LABEL_4;
        }

LABEL_23:
        sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_StoreRemDevInfo");
        phOsalNfc_FreeMemory();
        a3 = 255;
        goto LABEL_14;
      }

      goto LABEL_57;
    }

    if (v21)
    {
      goto LABEL_57;
    }

    goto LABEL_32;
  }

LABEL_3:
  sub_297E4E0B0(2, a1, 3, 1u, v6);
  if (!a1)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (a3 != 55)
  {
    goto LABEL_14;
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessDiscNtf");
  return a3;
}

uint64_t sub_297E78980(uint64_t a1, uint64_t a2)
{
  memset(v6, 0, sizeof(v6));
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TargetDiscoveryComplete");
  if (a1)
  {
    v4 = *(a1 + 216);
    if (v4)
    {
      v6[0] = a1 + 72;
      v4(*(a1 + 208), 0, v6, a2);
    }
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TargetDiscoveryComplete");
}

uint64_t sub_297E78A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessDeActvNtf");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Received Erroneous Notification(phNciNfc_ProcessDeActvNtf)\n");
    goto LABEL_22;
  }

  if (!*(a1 + 3424) || *(a1 + 3776) != off_2A1A93B80)
  {
    phOsalNfc_Timer_Stop();
    *(a1 + 6512) = 0;
    sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_ProcessDeActvNtf");
  }

  if (!a3)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = *(a2 + 16);
    if (v8 == 2)
    {
      if (*(a1 + 784) && !v7[1])
      {
        v12 = *v7;
        v13 = *(a1 + 172);
        if (v12 == v13)
        {
          LODWORD(a3) = 0;
        }

        else if (v12 || v13 != 1)
        {
          LODWORD(a3) = 255;
          if (v13 == 2)
          {
            if (v12 == 1)
            {
              LODWORD(a3) = 0;
            }

            else
            {
              LODWORD(a3) = 255;
            }
          }
        }

        else
        {
          LODWORD(a3) = 121;
          sub_297E96818(*(a1 + 6528), 121);
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (!v8)
      {
LABEL_12:
        v6 = "Invalid input parameter (phNciNfc_ProcessDeActvNtf)\n";
        LODWORD(a3) = 1;
        goto LABEL_13;
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Failed,(phNciNfc_ProcessDeActvNtf)Wrong ntf length\n");
    }

    LODWORD(a3) = 255;
    goto LABEL_14;
  }

  v6 = "Received Erroneous Notification(phNciNfc_ProcessDeActvNtf)\n";
LABEL_13:
  sub_297E4E0B0(1, a1 + 6524, 3, 1u, v6);
LABEL_14:
  if (a3 == 121 || a3 == 0)
  {
    a3 = a3;
  }

  else
  {
    a3 = 255;
  }

  sub_297E5B554(a1);
  sub_297F00E88(a1 + 936);
  v10 = *(a1 + 784);
  if (v10)
  {
    *(a1 + 784) = 0;
    *(a1 + 6730) = a3;
    v10(*(a1 + 792), 0, a1 + 6730);
  }

LABEL_22:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessDeActvNtf");
  return a3;
}

uint64_t sub_297E78C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  Memory_Typed = 0;
  v6 = (a1 + 4096);
  v23 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessActvNtf");
  if (a3)
  {
    v7 = "Received Erroneous Notification(phNciNfc_ProcessActvNtf)\n";
    goto LABEL_8;
  }

  if (!a1 || !a2)
  {
    v7 = "Invalid input parameter (phNciNfc_ProcessActvNtf)\n";
    a3 = 1;
LABEL_8:
    sub_297E4E0B0(2, a1, 3, 1u, v7);
    if (!a1)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  phOsalNfc_Timer_Stop();
  v6[2416] = 0;
  v6[2925] = 0;
  sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_ProcessActvNtf");
  sub_297F00E88(a1 + 936);
  v23 = 3;
  LODWORD(v24) = 7;
  sub_297F00C28(a1 + 936, &v23, sub_297E6F764);
  v8 = *(a2 + 8);
  *(a1 + 176) = 0;
  if (*(a1 + 177) != 1)
  {
    if (!v8 || (v10 = *(a2 + 16), v10 < 0xB))
    {
      v9 = "Failed,(phNciNfc_ProcessActvNtf)Wrong ntf payload length\n";
      goto LABEL_14;
    }

    if (sub_297E6E218(a1, v8, v10))
    {
      goto LABEL_15;
    }

    if (!v8[1])
    {
      a3 = sub_297EBBC7C(a1, *(a2 + 8), *(a2 + 16));
      if (!a3)
      {
        a3 = 42;
        goto LABEL_19;
      }

LABEL_54:
      if (a3 == 42)
      {
        goto LABEL_19;
      }

      v17 = Memory_Typed;
      if (a3)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

    a3 = sub_297E77BBC(a1, (a1 + 72), *v8, &Memory_Typed, 1);
    if (a3 == 255)
    {
      if (!*(a1 + 72))
      {
        Memory_Typed = phOsalNfc_GetMemory_Typed();
        if (!Memory_Typed)
        {
          v17 = 0;
          a3 = 255;
          goto LABEL_61;
        }

        phOsalNfc_SetMemory();
LABEL_33:
        if (!*(a1 + 72))
        {
          v19 = sub_297E780F0(a1, (a1 + 72), Memory_Typed, 1);
          if (v19)
          {
            a3 = v19;
            if (*(a1 + 72))
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        v16 = v8[3];
        if (v16 > 0xC || ((1 << v16) & 0x1C6F) == 0)
        {
          v20 = v16 - 112;
          if (v20 > 0x15)
          {
            goto LABEL_50;
          }

          v21 = 1 << v20;
          if ((v21 & 0x2F0000) != 0)
          {
            v17 = Memory_Typed;
            v18 = sub_297E761D4(a1, Memory_Typed, *(a2 + 8), *(a2 + 16));
LABEL_43:
            a3 = v18;
            if (v18)
            {
LABEL_51:
              if (*(a1 + 72) == 1)
              {
                sub_297E780F0(a1, (a1 + 72), v17, 0);
              }

LABEL_53:
              phOsalNfc_FreeMemory();
              Memory_Typed = 0;
              goto LABEL_54;
            }

LABEL_44:
            if (v17)
            {
              if (*(v17 + 4) == 18 && !*(v17 + 56))
              {
                a3 = 0;
              }

              else
              {
                a3 = 0;
                *v17 = 1;
              }

LABEL_56:
              if (v17)
              {
                v22 = *(v17 + 20);
                if ((v22 - 128) >= 4 && v22 != 133)
                {
                  v11 = *(a1 + 768);
                  if (v11)
                  {
                    a3 = 0;
                    *(a1 + 768) = 0;
                    goto LABEL_63;
                  }

                  goto LABEL_69;
                }

                a3 = sub_297E70080(a1);
                if (a3 == 255)
                {
                  sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Dummy Read request for data message failed!");
                  phOsalNfc_FreeMemory();
                  v17 = 0;
                  Memory_Typed = 0;
                }
              }

LABEL_61:
              v11 = *(a1 + 768);
              if (v11)
              {
                *(a1 + 768) = 0;
                if (!v17)
                {
                  goto LABEL_17;
                }

LABEL_63:
                v12 = *(a1 + 776);
                v13 = a3;
                v14 = v17;
                goto LABEL_18;
              }

              if (a3)
              {
                goto LABEL_21;
              }

              if (!v17)
              {
LABEL_71:
                a3 = 41;
                goto LABEL_21;
              }

LABEL_69:
              if (*v17 == 1)
              {
                a3 = 40;
                goto LABEL_21;
              }

              goto LABEL_71;
            }

            goto LABEL_51;
          }

          if ((v21 & 5) == 0)
          {
LABEL_50:
            sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_ProcessActvNtf:Invalid Rf Tech and mode received");
            a3 = 0;
            v17 = Memory_Typed;
            goto LABEL_44;
          }
        }

        v17 = Memory_Typed;
        v18 = sub_297E8FDA4(a1, Memory_Typed, *(a2 + 8), *(a2 + 16));
        goto LABEL_43;
      }

      a3 = sub_297E77BBC(a1, (a1 + 72), *v8, &Memory_Typed, 0);
    }

    if (a3)
    {
      goto LABEL_54;
    }

    goto LABEL_33;
  }

  v9 = "Dropping the Activated notification, as the Select command's Response has not yet come";
LABEL_14:
  sub_297E4E0B0(1, a1 + 6524, 3, 1u, v9);
LABEL_15:
  sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Interface activated notification validation failed!");
  v6[2562] = 1;
  v11 = *(a1 + 768);
  if (v11)
  {
    *(a1 + 768) = 0;
    a3 = 188;
LABEL_17:
    v12 = *(a1 + 776);
    v13 = a3;
    v14 = 0;
LABEL_18:
    v11(v12, v13, v14);
    a3 = 40;
    goto LABEL_19;
  }

  a3 = 188;
LABEL_21:
  sub_297E78980(a1, a3);
LABEL_9:
  if ((a3 - 43) <= 0xFFFCu)
  {
    sub_297E4E0B0(2, a1, 3, 1u, "Failed,(phNciNfc_ProcessActvNtf)\n");
    v6[2425] = 1;
  }

LABEL_19:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessActvNtf");
  return a3;
}

uint64_t sub_297E7913C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PrepareHceNciHandle_ExpMode");
  if (!a3)
  {
    if (!a1 || !a2 || !*(a2 + 8))
    {
      goto LABEL_8;
    }

    v7 = *(a2 + 16);
    if (v7 != 1)
    {
      if (!v7)
      {
LABEL_8:
        v6 = "Invalid input parameter (phNciNfc_PrepareHceNciHandle_ExpMode)\n";
        a3 = 1;
        goto LABEL_9;
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Failed,(phNciNfc_PrepareHceNciHandle_ExpMode)Wrong ntf parameter\n");
LABEL_17:
      a3 = 255;
      goto LABEL_10;
    }

    sub_297F00E88(a1 + 936);
    v9 = *(a1 + 72);
    *(a1 + 176) = 0;
    if (v9)
    {
      goto LABEL_17;
    }

    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      v11 = Memory_Typed;
      phOsalNfc_SetMemory();
      v12 = sub_297E780F0(a1, (a1 + 72), v11, 1);
      if (v12)
      {
        a3 = v12;
LABEL_15:
        phOsalNfc_FreeMemory();
        goto LABEL_10;
      }

      *(v11 + 8) = 1;
      *(v11 + 12) = 0x400000002;
      *(v11 + 20) = 128;
      *(v11 + 24) = 511;
      *(v11 + 26) = 0;
      *(v11 + 28) = 128;
      *(v11 + 32) = 0;
      *(a1 + 4552) = v11;
      a3 = sub_297E6E69C(a1);
      sub_297E934F4(a1, v11);
      if (a3)
      {
        goto LABEL_10;
      }

      *v11 = 1;
      v13 = sub_297E70080(a1);
      if (v13)
      {
        a3 = v13;
        if (v13 != 255)
        {
          goto LABEL_10;
        }

        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Dummy Read request for data message failed!");
        goto LABEL_15;
      }

      if (!*(a1 + 768) && *v11 != 1)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "HCE activation failed in case of HCE + Exp mode !");
        phOsalNfc_FreeMemory();
        goto LABEL_17;
      }

      sub_297E78980(a1, 40);
    }

    a3 = 0;
    goto LABEL_10;
  }

  v6 = "Received Erroneous Notification(phNciNfc_PrepareHceNciHandle_ExpMode)\n";
LABEL_9:
  sub_297E4E0B0(2, a1, 3, 1u, v6);
LABEL_10:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PrepareHceNciHandle_ExpMode");
  return a3;
}

uint64_t sub_297E7938C(uint64_t a1, int a2)
{
  memset(v7, 0, sizeof(v7));
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ReleaseHceNciHandle_ExpMode");
  if (a1 && *(a1 + 72))
  {
    v8 = 0;
    sub_297F08EEC(a1, 0);
    v4 = sub_297E77BBC(a1, (a1 + 72), 0, &v8, 1);
    if (!v4)
    {
      sub_297E76D74(a1, v8);
    }

    sub_297E5B6B4(a1);
    sub_297F00E88(a1 + 936);
    if (a2 != 1)
    {
      v5 = *(a1 + 192);
      if (v5)
      {
        v7[0] = 0x200000003;
        v5(*(a1 + 184), 7, v7, 146);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ReleaseHceNciHandle_ExpMode");
  return v4;
}

uint64_t sub_297E79498(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetReDiscSetCfgErrStatus");
  v4 = 255;
  if (a1 && a2)
  {
    v4 = 0;
    *a2 = *(a1 + 6641);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetReDiscSetCfgErrStatus");
  return v4;
}

uint64_t sub_297E7951C(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  sub_297E687D8(2, a2, a1, 4, 4u, "phLibNfc_WaitLibSeqHdlrTimerCb");
  sub_297E4E1B4(2, a2, 4, 5u, "phLibNfc_WaitLibSeqHdlrTimerCb");
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
      v6 = *(a2 + 9784);
      v7 = *(a2 + 2944);
      if (v7 && v7 != 0xFFFFFFFFFFFFLL)
      {
        phOsalNfc_Timer_Stop();
        phOsalNfc_Timer_Delete();
        *(a2 + 2944) = 0;
      }

      sub_297E4E0B0(1, a2 + 9792, 4, 4u, "phLibNfc_WaitLibSeqHdlrTimerCb: Sync Handler timer call back invoked");
      v8 = *(a2 + 2952);
      if (v8)
      {
        *(a2 + 2930) = 1;
        *(a2 + 2952) = v8 - 1;
      }

      v9 = *(a2 + 2976);
      v10 = v9 + 1;
      *(a2 + 2976) = v9 + 1;
      sub_297E5588C(a2, 0, *(a2 + 2968));
      sub_297E4F0E8(v6, &v12);
      if (v10 != 8 && v12)
      {
        *(v12 + 2930) = 0;
      }
    }
  }

  return sub_297E4DFAC(2, a2, 4, 5u, "phLibNfc_WaitLibSeqHdlrTimerCb");
}

uint64_t sub_297E79690(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ForceNextSeq");
  if (a1)
  {
    *(a1 + 2954) = a2 == 1;
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_ForceNextSeq FAILED, pLibContext is NULL");
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ForceNextSeq");
}

uint64_t sub_297E79734(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SkipSequenceSeq");
  v6 = 0;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 2960) == a2)
    {
      v8 = *(a1 + 2952) + a3;
      if (v8 <= *(a1 + 2953))
      {
        *(a1 + 2952) = v8;
        v6 = 1;
        goto LABEL_9;
      }

      v7 = "Value to increment is invalid";
    }

    else
    {
      v7 = "Sequence mismatch, can not increment the current sequence";
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v7);
    v6 = 0;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SkipSequenceSeq");
  return v6;
}

uint64_t sub_297E79810(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RepeatSequenceSeq");
  v6 = 0;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 2960) == a2)
    {
      v8 = *(a1 + 2952);
      v9 = v8 >= a3;
      v10 = v8 - a3;
      if (v9)
      {
        *(a1 + 2952) = v10;
        v6 = 1;
        goto LABEL_9;
      }

      v7 = "Value to decrement is invalid";
    }

    else
    {
      v7 = "Sequence mismatch, can not decrement the current sequence";
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v7);
    v6 = 0;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RepeatSequenceSeq");
  return v6;
}

uint64_t sub_297E798E4(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendSwpTestCmd");
  v2 = 1;
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 62;
    *&v5 = a1 + 3312;
    DWORD2(v5) = 1;
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendSwpTestCmd");
  return v2;
}

uint64_t sub_297E799B8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SwpTestCompleteSequence");
  if (a1)
  {
    if (a2)
    {
      sub_297E5B994(a1, a2, 0);
    }

    else
    {
      *(a1 + 7020) = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Waiting for Test Swp notification...");
    }
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SwpTestCompleteSequence");
  return a2;
}

uint64_t sub_297E79A60(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendPrbsTestCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 48;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 2u, "phNciNfc_SendPrbsTestCmd: Invalid input parameter");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendPrbsTestCmd");
  return v2;
}

uint64_t sub_297E79B58(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PrbsTestCompleteSequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
    }

    sub_297E5B994(a1, a2, 0);
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PrbsTestCompleteSequence");
  return a2;
}

uint64_t sub_297E79BE8(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetRfCalDataCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v5 = 0xF00000001;
    DWORD2(v5) = 43;
    v2 = *(a1 + 3320);
    *&v6 = *v2;
    DWORD2(v6) = *(v2 + 8);
    v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetRfCalDataCmd");
  return v3;
}

uint64_t sub_297E79CC8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetRfCalDataRsp");
  if (!a1 || (v2 = *(a1 + 3800)) == 0)
  {
    v3 = 1;
    goto LABEL_11;
  }

  if (!*(a1 + 3808))
  {
LABEL_10:
    v3 = 255;
    goto LABEL_11;
  }

  if (*v2 == 242)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Rf Cal data response signature error");
    v3 = 130;
    goto LABEL_11;
  }

  if (*v2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Rf Cal data response failed!");
    goto LABEL_10;
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Rf Cal data response success");
  v3 = 0;
LABEL_11:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetRfCalDataRsp");
  return v3;
}

uint64_t sub_297E79DBC(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetRfCalDataCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 42;
    *&v5 = 0;
    DWORD2(v5) = 0;
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetRfCalDataCmd");
  return v2;
}

uint64_t sub_297E79E90(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetRfCalDataRsp");
  if (!a1 || (v2 = *(a1 + 3800)) == 0)
  {
    v4 = 1;
    goto LABEL_12;
  }

  v3 = *(a1 + 3808);
  if (!v3)
  {
LABEL_11:
    v4 = 255;
    goto LABEL_12;
  }

  if (*v2 == 242)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Rf Cal data response signature error");
    v4 = 130;
    goto LABEL_12;
  }

  if (*v2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Rf Cal data response failed!");
    goto LABEL_11;
  }

  if ((v3 - 1) <= *(*(a1 + 3320) + 8))
  {
    phOsalNfc_MemCopy();
    *(*(a1 + 3320) + 8) = *(a1 + 3808) - 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Rf Cal data response success");
    v4 = 0;
  }

  else
  {
    v4 = 3;
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Rf Cal data response user passed buffer not sufficient");
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetRfCalDataRsp");
  return v4;
}

uint64_t sub_297E79FEC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetRfCalDataCompleteSequence");
  if (a1)
  {
    sub_297E5B994(a1, a2, *(a1 + 3320));
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetRfCalDataCompleteSequence");
  return a2;
}

uint64_t sub_297E7A068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SwpTestNtfCb");
  if (a1 && a2)
  {
    if (*(a1 + 7020) == 1)
    {
      v6 = *(a1 + 6664);
      if (v6 && v6 != 0xFFFFFFFFFFFFLL)
      {
        phOsalNfc_Timer_Stop();
        *(a1 + 6512) = 0;
        sub_297E687D8(1, a1 + 6524, *(a1 + 6664), 3, 4u, "phNciNfc_SwpTestNtfCb");
        phOsalNfc_Timer_Delete();
        *(a1 + 6664) = 0xFFFFFFFFFFFFLL;
      }

      if (a3)
      {
        v7 = "phNciNfc_SwpTestNtfCb:Swp self test ntf: Reception failed";
LABEL_19:
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, v7);
        goto LABEL_20;
      }

      if (*(a2 + 16) != 2)
      {
        v7 = "phNciNfc_SwpTestNtfCb:Swp self test ntf: Invalid length of payload";
        goto LABEL_19;
      }

      v9 = *(a2 + 8);
      if (*v9)
      {
        v10 = "phNciNfc_SwpTestNtfCb:Swp self test failed!";
        v11 = a1 + 6524;
LABEL_17:
        sub_297E4E0B0(1, v11, 3, 4u, v10);
LABEL_20:
        a3 = 255;
LABEL_21:
        *(a1 + 7020) = 0;
        sub_297E5B994(a1, a3, 0);
        goto LABEL_22;
      }

      if (*(a1 + 3312) == 1)
      {
        v14 = "phNciNfc_SwpTestNtfCb:Swp2 self test success";
        v15 = a1 + 6524;
LABEL_40:
        sub_297E4E0B0(1, v15, 3, 4u, v14);
        a3 = 0;
        goto LABEL_21;
      }

      if (*(a1 + 3312))
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_SwpTestNtfCb:Swp self test failed!");
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_SwpTestNtfCb:Swp1 self test ntf: Context is corrupt!!");
        a3 = 254;
        goto LABEL_21;
      }

      v13 = v9[1];
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_SwpTestNtfCb:Swp self test success");
          v14 = "phNciNfc_SwpTestNtfCb:Swp1 power mode: PMUVCC = 3.3V";
          goto LABEL_39;
        }

        if (v13 == 3)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_SwpTestNtfCb:Swp self test success");
          v14 = "phNciNfc_SwpTestNtfCb:Swp1 power mode: PMUVCC undetermined";
          goto LABEL_39;
        }

        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_SwpTestNtfCb: Swp self test failed!");
        v10 = "phNciNfc_SwpTestNtfCb:Swp1 self test ntf: Invalid PMUVCC power mode!!";
      }

      else
      {
        if (v13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_SwpTestNtfCb:Swp self test success");
          v14 = "phNciNfc_SwpTestNtfCb:Swp1 power mode: PMUVCC = 1.8V";
LABEL_39:
          v15 = a1 + 6524;
          goto LABEL_40;
        }

        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_SwpTestNtfCb:Swp self test failed!");
        v10 = "phNciNfc_SwpTestNtfCb:Swp power mode: No PMUVCC";
      }

      v11 = a1 + 6524;
      goto LABEL_17;
    }

    if (!a3)
    {
      if (*(a2 + 8))
      {
        v8 = *(a1 + 520);
        if (v8)
        {
          v16 = *(a2 + 8);
          LODWORD(v17) = *(a2 + 16);
          a3 = 71;
          v8(*(a1 + 512), 34, &v16, 71);
        }

        else
        {
          a3 = 71;
        }
      }

      else
      {
        a3 = 0;
      }
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 3, 1u, "phNciNfc_SwpTestNtfCb: Invalid input parameters");
  }

LABEL_22:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SwpTestNtfCb");
  return a3;
}

uint64_t sub_297E7A3CC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlSetCfgSignedComplete");
  if (!a1)
  {
    v8 = 255;
    goto LABEL_22;
  }

  v4 = 119;
  if (a2 == 143 || a2 == 130)
  {
LABEL_21:
    v8 = sub_297E4F450(*(a1 + 3000), v4, a2, 0, 0);
    goto LABEL_22;
  }

  if (a2)
  {
    v9 = *(a1 + 3196) == 2;
    v10 = a2 == 147;
    if (v10 && v9)
    {
      v4 = 118;
    }

    else
    {
      v4 = 119;
    }

    if (v10 && v9)
    {
      a2 = 0;
    }

    else
    {
      a2 = 255;
    }

    goto LABEL_21;
  }

  if (*(a1 + 3560) >= *(a1 + 3556))
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "All Rf configs are set");
    a2 = 0;
LABEL_20:
    v4 = 118;
    goto LABEL_21;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Re-Initialize the sequence to perform set signed config");
  *(a1 + 2960) = gphLibNfc_IoctlSetPropConfigSigned;
  *(a1 + 2952) = 0;
  *(a1 + 2954) = 0;
  v5 = gphLibNfc_IoctlSetPropConfigSigned[0];
  if (gphLibNfc_IoctlSetPropConfigSigned[0])
  {
    v5 = 0;
    v6 = off_2A1A90A18;
    do
    {
      ++v5;
      v7 = *v6;
      v6 += 2;
    }

    while (v7);
  }

  *(a1 + 2953) = v5;
  if (sub_297E5588C(a1, 0, 0) != 13)
  {
    a2 = 255;
    goto LABEL_20;
  }

  v8 = 13;
LABEL_22:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlSetCfgSignedComplete");
  return v8;
}

uint64_t sub_297E7A548(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(v12, 0, 255);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlSetRfCfgCmd");
  if (a1)
  {
    v2 = 0;
    v3 = *(a1 + 3568);
    v4 = v3 - 27;
    if (v3 >= 0x1C)
    {
      v5 = 27;
    }

    else
    {
      v4 = 0;
      v5 = *(a1 + 3568);
    }

    *(a1 + 3568) = v4;
    LOBYTE(v12[0]) = v5;
    v6 = *(a1 + 3576);
    v7 = 1;
    do
    {
      v8 = *(v6 + 1) + 2;
      phOsalNfc_MemCopy();
      v6 = *(a1 + 3576) + v8;
      *(a1 + 3576) = v6;
      v9 = v8 + v7;
      if (v9 >= 0x100)
      {
        LOBYTE(v9) = 0;
      }

      v7 = v9;
      ++v2;
    }

    while (v5 > v2);
    v10 = sub_297E5DD98(*(a1 + 3088), v12, v9, sub_297E5BA84, a1);
  }

  else
  {
    v10 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_IoctlSetRfCfgCmd, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlSetRfCfgCmd");
  return v10;
}

uint64_t sub_297E7A6E8(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlSetRfCfgComplete");
  if (a1)
  {
    if (a2)
    {
      if (a2 != 147 || *(a1 + 3196) != 2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_IoctlSetRfCfgComplete: Failed");
        if (a2 == 143)
        {
          v4 = 143;
        }

        else
        {
          v4 = 255;
        }

        v5 = 119;
        goto LABEL_21;
      }

LABEL_20:
      v4 = 0;
      v5 = 118;
LABEL_21:
      v6 = sub_297E4F450(*(a1 + 3000), v5, v4, 0, 0);
      goto LABEL_22;
    }

    if (!*(a1 + 3568))
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "All Rf configs are set");
      goto LABEL_20;
    }

    *(a1 + 2960) = gphLibNfc_IoctlSetRfConfig;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v7 = gphLibNfc_IoctlSetRfConfig[0];
    if (gphLibNfc_IoctlSetRfConfig[0])
    {
      v7 = 0;
      v8 = off_2A1A90988;
      do
      {
        ++v7;
        v9 = *v8;
        v8 += 2;
      }

      while (v9);
    }

    *(a1 + 2953) = v7;
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Re-Initialize the sequence to perform set config");
    v10 = sub_297E5588C(a1, 0, 0);
    v6 = v10;
    if (v10 != 13)
    {
      if (v10 == 143)
      {
        v4 = 143;
      }

      else
      {
        v4 = 255;
      }

      v5 = 118;
      goto LABEL_21;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
    v6 = 255;
  }

LABEL_22:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlSetRfCfgComplete");
  return v6;
}

uint64_t sub_297E7A898(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_DnldGetFwVersion");
  if (!a1)
  {
    v5 = "phLibNfc_DnldGetFwVersion: Invalid LIBNFC context!!";
    v6 = 2;
    v7 = 0;
LABEL_8:
    sub_297E4E0B0(v6, v7, 4, 1u, v5);
    v4 = 255;
    goto LABEL_9;
  }

  sub_297E67F6C(*(a1 + 3000), &v9);
  sub_297E5D114(*(a1 + 3000), &v10);
  v2 = v10;
  if (!v10 || (v3 = v9) == 0)
  {
    v5 = "phLibNfc_DnldGetFwVersion: Invalid IOCTL context!!";
    v7 = a1 + 9792;
    v6 = 1;
    goto LABEL_8;
  }

  *(v10 + 752) = v10 + 471;
  *(v2 + 760) = 250;
  *(v2 + 728) = 241;
  *(v2 + 736) = 0;
  *(v2 + 744) = 0;
  *(v2 + 768) = 0;
  v4 = sub_297F0FD90(*(v3 + 48), v2 + 728, sub_297E5BA84, a1);
  if (v4 == 13)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "GetVersion Request submitted successfully");
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_DnldGetFwVersion: Request Failed!!");
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DnldGetFwVersion");
  return v4;
}

uint64_t sub_297E7A9F8(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v44 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_DnldGetFwVersionApiCb");
  if (a1 && !a2 && a3)
  {
    sub_297E5D114(*(a1 + 3000), &v44);
    if (v44)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_DnldGetFwVersionApiCb - Request Successful");
      if (*(v44 + 64) && *a3)
      {
        phOsalNfc_SetMemory();
        v6 = *a3;
        v7 = **a3;
        v8 = v44;
        *(v44 + 116) = v7;
        v9 = *(v8 + 64);
        *v9 = v7;
        v9[1] = *(v6 + 1);
        v10 = *(v6 + 2);
        v9[2] = v10;
        *(v8 + 118) = v10;
        v11 = sub_297E7F0C8(*(v8 + 8), v7, v10);
        v12 = v11;
        v15 = (v11 & 0xB) == 2 || v11 == 4 || (v11 & 0xD) == 5 || v11 == 3;
        v16 = *(a3 + 2);
        if (v15 && v16 == 7)
        {
          v20 = 0;
          v18 = v11 & 6;
        }

        else
        {
          v18 = v11 & 0xE;
          v19 = v18 == 8 || v11 == 10;
          if (!v19 || v16 != 15)
          {
            if (v11 && v16 == 9)
            {
              v20 = 0;
              v25 = 1;
              v26 = 7;
LABEL_36:
              v27 = *a3;
              v28 = &(*a3)[v26];
              v29 = *v28;
              v30 = v44;
              v31 = *(v44 + 64);
              *(v31 + 4) = v29;
              v32 = v28[1];
              *(v31 + 3) = v32;
              *(v30 + 832) = v29 | (v32 << 8);
              v33 = v18 == 8 || v12 == 10;
              if (!v33 || !v25)
              {
                goto LABEL_54;
              }

              v34 = v26;
              v35 = v28[2];
              *(v31 + 8) = v35;
              v36 = v35 | (v28[3] << 8);
              *(v31 + 8) = v36;
              v37 = v36 | (v28[4] << 16);
              *(v31 + 8) = v37;
              *(v31 + 8) = v37 | (v28[5] << 24);
              LODWORD(v37) = v28[6];
              *(v31 + 16) = v37;
              v38 = v26 | 8;
              v39 = v37 | (v28[7] << 8);
              *(v31 + 16) = v39;
              if (v12 == 9)
              {
                v40 = 16816;
              }

              else
              {
                if (v12 == 8)
                {
                  if (v39 != 1)
                  {
LABEL_45:
                    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_DnldGetFwVersionApiCb - Invalid Chip Version!!");
                    v27 = *a3;
                    v31 = *(v44 + 64);
                    v20 = 255;
LABEL_53:
                    v41 = *(v27 + v38);
                    *(v31 + 18) = v41;
                    v42 = (v27 + v34);
                    *(v31 + 18) = v41 | (v42[9] << 8);
                    v43 = v42[10];
                    *(v31 + 20) = v43;
                    *(v31 + 20) = v43 | (v42[11] << 8);
LABEL_54:
                    *(v31 + 5) = 4100;
                    goto LABEL_32;
                  }

LABEL_52:
                  v20 = 0;
                  goto LABEL_53;
                }

                v40 = 16800;
              }

              if (v39 != v40)
              {
                goto LABEL_45;
              }

              goto LABEL_52;
            }

            sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_DnldGetFwVersionApiCb - Incorrect Response!!/Unknown Platform");
            v25 = 0;
            v20 = 255;
LABEL_35:
            v26 = 3;
            goto LABEL_36;
          }

          v20 = 0;
        }

        v25 = 1;
        goto LABEL_35;
      }

      v21 = "phLibNfc_DnldGetFwVersionApiCb - Response Failed!!";
    }

    else
    {
      v21 = "phLibNfc_DnldGetFwVersionApiCb - Invalid IOCTL Context!!";
    }

    v23 = a1 + 9792;
    v22 = 1;
  }

  else
  {
    v21 = "phLibNfc_DnldGetFwVersionApiCb - Request Failed!!";
    v22 = 2;
    v23 = a1;
  }

  sub_297E4E0B0(v22, v23, 4, 1u, v21);
  v20 = 255;
LABEL_32:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DnldGetFwVersionApiCb");
  return v20;
}

uint64_t sub_297E7AD14(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 4096);
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetFwVersionComplete");
  if (a1)
  {
    v9 = *(a1 + 3000);
    sub_297E5D114(v9, &v10);
    if (v4[1984] == 1 || v4[1987] == 1 || v4[1986] == 1)
    {
      v5 = 206;
      if (!a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = v4[1982];
      if (v8 == 1)
      {
        v5 = 205;
      }

      else
      {
        v5 = 193;
      }

      if (!a2)
      {
        if (v8 == 1)
        {
          v5 = 205;
        }

        else
        {
          v5 = 192;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    if (!a2)
    {
      v5 = 192;
LABEL_11:
      sub_297E4E0B0(0, &v9, 4, 4u, "GetFwVersion SUCCESS!");
      goto LABEL_12;
    }

    v5 = 193;
  }

  sub_297E4E0B0(0, &v9, 4, 1u, "phLibNfc_GetFwVersionComplete: Get Fw Version FAILED!");
LABEL_12:
  if (v10 && a1 && *(v10 + 91) == 1 && !v4[1982] && !v4[1985] && !v4[1986] && !v4[1983])
  {
    *(v10 + 91) = 0;
    phOsalNfc_FreeMemory();
    sub_297E9F3BC(v9, 0);
  }

  v6 = sub_297EE0FE8(v9, v5, a2, 0, 0);
  sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_GetFwVersionComplete");
  return v6;
}

uint64_t sub_297E7AEB0(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v21 = 0;
  v20 = 0;
  v19 = 8;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetDumpDnldGetFwVersionCb");
  if (!a1 || a2 || !a3)
  {
    v11 = "phLibNfc_GetDumpDnldGetFwVersionCb: Request Failed!!";
    v12 = 2;
    v13 = a1;
LABEL_33:
    sub_297E4E0B0(v12, v13, 4, 1u, v11);
    v16 = 255;
    goto LABEL_34;
  }

  sub_297E5F164(*(a1 + 3000), &v19);
  sub_297E5D114(*(a1 + 3000), &v20);
  v6 = v20;
  if (!v20)
  {
    v11 = "phLibNfc_GetDumpDnldGetFwVersionCb: Invalid IOCTL context!!";
    goto LABEL_32;
  }

  v7 = *a3;
  if (*a3)
  {
    v8 = *v7;
    *(v20 + 116) = v8;
    v9 = v7[2];
    *(v6 + 118) = v9;
    v10 = sub_297E7F0C8(*(v6 + 8), v8, v9);
  }

  else
  {
    v10 = 0;
  }

  v14 = v10 & 0xE;
  if (((v10 - 2) < 4 || v14 == 6) && *(a3 + 2) == 7)
  {
    v15 = 7;
    goto LABEL_19;
  }

  if (v10 != 10 && v14 != 8)
  {
    if (v10)
    {
      v15 = *(a3 + 2);
LABEL_24:
      switch(v15)
      {
        case 7:
LABEL_27:
          v16 = 0;
          *(a1 + 2994) = 0;
          *(a1 + 2985) = 0;
          goto LABEL_34;
        case 15:
          v17 = *a3;
          if (*a3)
          {
            v16 = 0;
            *(a1 + 2988) = 0;
            *(a1 + 2985) = 0;
            *(a1 + 2992) = 1;
            *(v20 + 118) = v17[2];
            goto LABEL_34;
          }

          break;
        case 9:
          goto LABEL_27;
      }

      v11 = "phLibNfc_GetDumpDnldGetFwVersionCb: Incorrect Response!!";
      goto LABEL_32;
    }

    v11 = "phLibNfc_GetDumpDnldGetFwVersionCb: Platform NOT supported";
LABEL_32:
    v13 = a1 + 9792;
    v12 = 1;
    goto LABEL_33;
  }

  v15 = *(a3 + 2);
  if (v15 != 15)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (!*a3)
  {
    goto LABEL_24;
  }

  *(a1 + 2985) = 1;
  *(a1 + 2990) = 0;
  *(a1 + 2986) = 0;
  if ((v10 - 3) < 3 || v14 == 6)
  {
    *(a1 + 2986) = 1;
    if ((v19 & 0xFFFFFFFD) == 4)
    {
      *(a1 + 2987) = 1;
      if (*(v20 + 118) != 3)
      {
        *(v20 + 118) = 1;
      }

      if (v10 > 5)
      {
        if (v10 == 6)
        {
          *(a1 + 2990) = 1;
        }

        else if (v10 == 7)
        {
          *(a1 + 2991) = 1;
        }
      }

      else if (v10 == 4)
      {
        *(a1 + 2988) = 1;
      }

      else if (v10 == 5)
      {
        *(a1 + 2989) = 1;
      }
    }

    goto LABEL_47;
  }

  if (v10 != 2)
  {
LABEL_47:
    if (v10 == 10 || v14 == 8)
    {
      *(a1 + 2992) = 1;
      if (v10 == 9)
      {
        *(a1 + 2993) = 1;
      }

      else if (v10 == 10)
      {
        *(a1 + 2994) = 1;
      }

      *(a1 + 2985) = 0;
      *(a1 + 2987) = 0;
      phOsalNfc_MemCopy();
    }
  }

  if (*(v20 + 112) == 1)
  {
    v16 = 0;
    if (v10 <= 3 && *(v20 + 118) != 1)
    {
      v16 = phTmlNfc_ConfigHsuBaudRate();
      if (v16)
      {
        sub_297E50EBC(1, a1 + 9792, 4, 1u, "phLibNfc_GetDumpDnldGetFwVersionCb : Config Hsu Baud Rate failed Status ");
      }
    }
  }

  else
  {
    v16 = 58;
  }

LABEL_34:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetDumpDnldGetFwVersionCb");
  return v16;
}

uint64_t phLibNfc_GetMemoryDumpCmd(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetMemoryDumpCmd");
  if (a1)
  {
    v4 = *(a1 + 3000);
    if (v4)
    {
      sub_297E5D114(*(a1 + 3000), &v24);
      if (!v24)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetMemoryDumpCmd: Invalid IOCTL context!!");
LABEL_49:
        a2 = 255;
        goto LABEL_50;
      }

      v5 = sub_297E7F0C8(*(v24 + 8), *(v24 + 116), *(v24 + 118));
      v6 = *(v24 + 118) == 1 || (v5 - 6) > 0xFFFFFFFD;
      if (v6 || *(a1 + 2992) == 1 || (v5 - 8) > 0xFFFFFFFD)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_GetMemoryDumpCmd : skip the baud rate update");
        if (a2)
        {
          goto LABEL_15;
        }
      }

      else
      {
        a2 = phTmlNfc_ConfigHsuBaudRate();
        if (a2)
        {
LABEL_15:
          sub_297E50EBC(1, a1 + 9792, 4, 1u, "phLibNfc_GetMemoryDumpCmd : Config Hsu Baud Rate failed Status ");
          if (a2 == 13)
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

        sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_GetMemoryDumpCmd : Success Config Hsu Baud Rate = ");
      }

      sub_297E67F6C(v4, &v23);
      v7 = v24;
      *(v24 + 89) = 0;
      v25 = 0;
      sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ComputeMemDumpAddr");
      sub_297E9F244(*(v7 + 8), &v25);
      v8 = v25;
      if (v25)
      {
        if (*(a1 + 2985) != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
        {
          v11 = *(v7 + 112);
          if (v11 == 2)
          {
            *(v7 + 144) = 0x20FFFF00209000;
            v10 = 1;
            v12 = 2134016;
            v13 = 2162688;
          }

          else if (v11 == 1)
          {
            v12 = 2101444;
            *(v7 + 144) = 0x201FBF002010C4;
            v13 = 2105280;
            v10 = 1;
          }

          else
          {
            sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ComputeMemDumpAddr : Invalid memory Type");
            v12 = 0;
            v10 = 0;
            *(v7 + 144) = 0;
            v8 = v25;
            v13 = *(v7 + 148) + 1;
          }

          *(v8 + 8508) = v12;
          v16 = v13 - v12;
          goto LABEL_39;
        }

        if (*(v7 + 112) == 1)
        {
          if (*(a1 + 2986) == 1)
          {
            v9 = 2287615;
          }

          else if (*(a1 + 2992) == 1)
          {
            if (*(a1 + 2994) == 1)
            {
              v9 = 2154495;
            }

            else
            {
              v9 = 2351103;
            }
          }

          else
          {
            v9 = 2288639;
          }

          *(v7 + 148) = v9;
          v10 = 1;
          sub_297E50EBC(1, a1 + 9792, 4, 4u, "dwUsrAreaEndAddr:");
          v14 = *(v7 + 148);
          v15 = ((v14 - 0x200000) >> 1) + 0x200000;
          *(v7 + 144) = v15;
          *(v25 + 8508) = v15;
          v16 = v14 - ((v14 - 0x200000) >> 1) - 0x1FFFFF;
LABEL_39:
          *(v7 + 152) = v16;
          goto LABEL_40;
        }
      }

      else
      {
        sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_ComputeMemDumpAddr: Invalid Context");
      }

      v10 = 0;
LABEL_40:
      sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ComputeMemDumpAddr");
      if (v10 && v23)
      {
        v17 = *(v23 + 48);
        if (v17)
        {
          *(v17 + 120) = *(v24 + 148);
        }

        Memory_Typed = phOsalNfc_GetMemory_Typed();
        if (Memory_Typed)
        {
          phOsalNfc_SetMemory();
          v19 = v24;
          *(v24 + 128) = Memory_Typed;
          v20 = *(v19 + 152);
          *(v19 + 136) = v20;
          *(v19 + 752) = Memory_Typed;
          *(v19 + 760) = v20;
          v21 = v23;
          *(v23 + 56) = 1;
          *(v19 + 728) = 162;
          *(v19 + 732) = *(v19 + 144);
          *(v19 + 736) = 0;
          *(v19 + 744) = 0;
          *(v19 + 768) = 0;
          if (sub_297F0FD90(*(v21 + 48), v19 + 728, sub_297E5BA84, a1) == 13)
          {
            sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_Read Request submitted successfully");
            a2 = 13;
            goto LABEL_50;
          }

          sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phDnldNfc_Read Request Failed!!");
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetMemoryDumpCmd: MEMORY DUMP Address computation FAILED");
      }

LABEL_48:
      phOsalNfc_FreeMemory();
      *(v24 + 128) = 0;
      goto LABEL_49;
    }
  }

LABEL_50:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetMemoryDumpCmd");
  return a2;
}

uint64_t phLibNfc_GetMemoryDumpRsp(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetMemoryDumpRsp");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_GetMemoryDumpRsp - Request Failed!!");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetMemoryDumpRsp");
  return a2;
}

uint64_t phLibNfc_GetMemoryDumpSeqComplete(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetMemoryDumpSeqComplete");
  if (!v3)
  {
    v4 = "phLibNfc_GetMemoryDumpSeqComplete: Invalid Context";
    v5 = 2;
    v6 = 0;
LABEL_7:
    sub_297E4E0B0(v5, v6, 4, 1u, v4);
    a2 = 255;
    goto LABEL_28;
  }

  sub_297E5D114(*(v3 + 3000), &v15);
  if (!v15)
  {
    v4 = "phLibNfc_GetMemoryDumpSeqComplete: Invalid IOCTL Context";
    v6 = v3 + 9792;
    v5 = 1;
    goto LABEL_7;
  }

  sub_297E9F244(*(v15 + 8), &v16);
  if (a2)
  {
    sub_297E4E0B0(1, v3 + 9792, 4, 1u, "phLibNfc_GetMemoryDumpSeqComplete: failed!");
LABEL_16:
    if (*(v3 + 6080) == 1 || *(v3 + 6083) == 1 || *(v3 + 6082) == 1)
    {
      v8 = *(v15 + 8);
      v9 = 206;
    }

    else
    {
      v8 = *(v15 + 8);
      if (*(v3 + 6078) == 1)
      {
        v9 = 205;
      }

      else
      {
        v9 = 193;
      }
    }

    sub_297EE0FE8(v8, v9, a2, 0, 0);
    goto LABEL_21;
  }

  if (*(v15 + 128))
  {
    v7 = v16 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    sub_297E4E0B0(1, v3 + 9792, 4, 1u, "phLibNfc_GetMemoryDumpSeqComplete: failed!");
    if (*(v15 + 128))
    {
      a2 = 0;
    }

    else
    {
      a2 = 255;
    }

    goto LABEL_16;
  }

  sub_297E4E0B0(1, v3 + 9792, 4, 4u, "phLibNfc_GetMemoryDumpSeqComplete: SUCCESS!");
  v17 = v15 + 128;
  if ((*(v15 + 112) - 1) > 1)
  {
    v18 = 0;
  }

  else
  {
    v12 = *(v15 + 148);
    LODWORD(v18) = *(v16 + 8508);
    HIDWORD(v18) = v12;
    *(v15 + 136) = v12 - v18 + 1;
    sub_297E50EBC(1, v3 + 9792, 4, 4u, "phLibNfc_GetMemoryDumpSeqComplete:MEMORY DUMP LENGTH");
    sub_297E50EBC(1, v3 + 9792, 4, 4u, "phLibNfc_GetMemoryDumpSeqComplete:MEMORY DUMP Start Address");
    sub_297E50EBC(1, v3 + 9792, 4, 4u, "phLibNfc_GetMemoryDumpSeqComplete:MEMORY DUMP End Address");
  }

  if (*(v3 + 6080) == 1 || *(v3 + 6083) == 1 || *(v3 + 6082) == 1)
  {
    v13 = *(v15 + 8);
    v14 = 206;
  }

  else
  {
    v13 = *(v15 + 8);
    if (*(v3 + 6078) == 1)
    {
      v14 = 205;
    }

    else
    {
      v14 = 192;
    }
  }

  sub_297EE0FE8(v13, v14, 0, &v17, 0);
  a2 = 0;
LABEL_21:
  v10 = v15;
  *(v15 + 112) = 0;
  if (*(v10 + 128))
  {
    phOsalNfc_FreeMemory();
    *(v15 + 128) = 0;
  }

  if (!*(v3 + 6078) && !*(v3 + 6081) && !*(v3 + 6082) && !*(v3 + 6079))
  {
    sub_297EA9F80(v3);
    sub_297E9F3BC(*(v15 + 8), 0);
    sub_297E7EB8C(*(v15 + 8));
    v3 = 0;
  }

LABEL_28:
  sub_297E4DFAC(2, v3, 4, 5u, "phLibNfc_GetMemoryDumpSeqComplete");
  return a2;
}

uint64_t sub_297E7BA98(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlGetRfCfgCmd");
  if (!a1)
  {
    v3 = "Invalid parameter, Libnfc Context is Invalid";
    v2 = 1;
    v5 = 2;
    v4 = 0;
    goto LABEL_5;
  }

  v2 = sub_297F067C4(*(a1 + 3088), *(a1 + 3576), *(a1 + 3568), sub_297E5BA84, a1);
  if (v2 != 13)
  {
    v3 = "phLibNfc_IoctlGetRfCfgCmd failed!";
    v4 = a1 + 9792;
    v5 = 1;
LABEL_5:
    sub_297E4E0B0(v5, v4, 4, 1u, v3);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlGetRfCfgCmd");
  return v2;
}

uint64_t sub_297E7BB60(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v32 = 0;
  memset(v33, 0, 255);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlGetRfCfgProc");
  if (!a1 || !a3)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_IoctlGetRfCfgProc: failed");
    v6 = 255;
    goto LABEL_11;
  }

  sub_297E5D114(*(a1 + 3000), &v32);
  v6 = 255;
  if (!a2)
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = v32;
      if (v32)
      {
        v9 = a3[1];
        if (v9 > 4)
        {
          if (v9 != 5 && v9 != 9)
          {
            goto LABEL_11;
          }

LABEL_14:
          if (*(a1 + 2984) == 1)
          {
            v11 = 0;
          }

          else
          {
            if (*(a1 + 3196) == 2)
            {
              v12 = *(a1 + 2985) != 1;
              v11 = 1;
              goto LABEL_24;
            }

            v11 = 1;
          }

          v12 = 1;
LABEL_24:
          sub_297E50EBC(1, a1 + 9792, 4, 2u, "Unsupported tag id count ");
          v6 = 147;
          if (!*(a1 + 3568))
          {
            goto LABEL_11;
          }

          v14 = (*(a1 + 3568) - 1);
          if (*(a1 + 3568) == 1)
          {
            goto LABEL_11;
          }

          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = *(a1 + 3576) + 1;
          v20 = v7 - 2;
          while (1)
          {
            v21 = (v19 + v18);
            v22 = *v21;
            if (v7 < 3)
            {
              v23 = 0;
            }

            else
            {
              v23 = 0;
              v24 = 0;
              do
              {
                while (1)
                {
                  v25 = a3[v24 + 3];
                  if ((v22 & 0xFE) == 0xA0 && v22 == v25)
                  {
                    break;
                  }

                  if (v22 == v25)
                  {
                    v26 = 2;
                  }

                  else
                  {
                    v26 = 1;
                  }

                  v24 += v26;
                  if (v24 >= v20)
                  {
                    goto LABEL_43;
                  }
                }

                v27 = v21[1];
                v28 = a3[v24 + 4];
                if (v27 == v28)
                {
                  ++v23;
                }

                v24 += 2;
              }

              while (v20 > v24 && v27 != v28);
              if (v27 == v28)
              {
                goto LABEL_49;
              }
            }

LABEL_43:
            if (v22 == 160 || (v22 == 161 ? (v29 = (v12 & v11) == 0) : (v29 = 1), !v29))
            {
              *(v33 + v16) = v22;
              ++v23;
              v30 = v16 + 1;
              v16 += 2;
              *(v33 + v30) = *(v19 + v15 + v23);
              ++v17;
            }

LABEL_49:
            v18 += v23 + 1;
            v15 = v18;
            if (v14 <= v18)
            {
              if (v17)
              {
                phOsalNfc_SetMemory();
                v31 = v32;
                *(v32 + 216) = v16 + 1;
                *(v31 + 217) = v17;
                phOsalNfc_MemCopy();
              }

              v6 = 147;
              goto LABEL_11;
            }
          }
        }

        if (a3[1])
        {
          if (v9 != 1)
          {
            goto LABEL_11;
          }

          goto LABEL_14;
        }

        v13 = v7 - 2;
        if (v7 <= 1)
        {
          v13 = 0;
        }

        *(a1 + 3568) = v13;
        if (*(*(v8 + 80) + 8) >= v13)
        {
          if (*(a1 + 3593) == 1)
          {
            **(a1 + 3584) = **(a1 + 3576);
            phOsalNfc_MemCopy();
            v6 = 0;
            ++*(a1 + 3568);
          }

          else
          {
            phOsalNfc_MemCopy();
            v6 = 0;
          }
        }

        else
        {
          *(a1 + 3568) = 0;
          v6 = 3;
        }
      }
    }
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlGetRfCfgProc");
  return v6;
}

uint64_t sub_297E7BF20(uint64_t a1, int a2)
{
  v18 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlGetRfCfgComplete");
  if (!a1)
  {
    v7 = "IoctlGetRfCfgComplete,Libnfc Context is Invalid";
    v9 = 2;
    v8 = 0;
    goto LABEL_9;
  }

  sub_297E5D114(*(a1 + 3000), &v18);
  v4 = v18;
  if (!v18 || (v5 = *(v18 + 80)) == 0)
  {
    v7 = "IoctlGetRfCfgComplete,output buffer is Invalid";
    v8 = a1 + 9792;
    v9 = 1;
LABEL_9:
    sub_297E4E0B0(v9, v8, 4, 1u, v7);
    v10 = 255;
    goto LABEL_31;
  }

  if (a2 != 147)
  {
    if (a2)
    {
      if (*v5)
      {
        **v5 = 0;
        *(v5 + 8) = 1;
      }

      if (*(a1 + 3196) == 2)
      {
        v6 = 0;
        *(a1 + 3592) = 0;
      }

      else if (a2 == 143)
      {
        v6 = 143;
      }

      else
      {
        v6 = 255;
      }
    }

    else
    {
      v6 = 0;
      *(v5 + 8) = *(a1 + 3568);
      *(a1 + 3593) = 0;
    }

LABEL_24:
    if (*(a1 + 3592) == 1 && v6 == 0)
    {
      v12 = 18;
    }

    else
    {
      v12 = v6;
    }

    v10 = sub_297E4F450(*(a1 + 3000), 118, v12, v5, 0);
    *(a1 + 3592) = 0;
    phOsalNfc_SetMemory();
    goto LABEL_31;
  }

  if (!*(v18 + 216) || *(v18 + 217) == **(a1 + 3576))
  {
    if (*v5)
    {
      **v5 = 0;
      *(v5 + 8) = 1;
    }

    if (*(a1 + 3196) == 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = 255;
    }

    goto LABEL_24;
  }

  *(a1 + 3592) = 1;
  *(a1 + 3584) = *v5;
  *(a1 + 3568) = *(v4 + 216);
  *(a1 + 3576) = v4 + 217;
  *(a1 + 2960) = gphLibNfc_IoctlGetRfConfig;
  *(a1 + 2952) = 0;
  *(a1 + 2954) = 0;
  v14 = gphLibNfc_IoctlGetRfConfig[0];
  if (gphLibNfc_IoctlGetRfConfig[0])
  {
    v14 = 0;
    v15 = &qword_2A1A90968;
    do
    {
      ++v14;
      v16 = *v15;
      v15 += 2;
    }

    while (v16);
  }

  *(a1 + 2953) = v14;
  v17 = sub_297E5588C(a1, 0, 0);
  if (v17 != 13)
  {
    if (*v5)
    {
      **v5 = 0;
      *(v5 + 8) = 1;
    }

    *(a1 + 3592) = 0;
    sub_297E4F450(*(a1 + 3000), 119, v17, v5, 0);
  }

  v10 = 147;
LABEL_31:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlGetRfCfgComplete");
  return v10;
}

uint64_t sub_297E7C17C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlGetSpmiGpioCmd");
  if (!a1)
  {
    v3 = "Invalid parameter, Libnfc Context is Invalid";
    v2 = 1;
    v5 = 2;
    v4 = 0;
    goto LABEL_5;
  }

  v2 = sub_297F067C4(*(a1 + 3088), *(a1 + 3576), *(a1 + 3568), sub_297E5BA84, a1);
  if (v2 != 13)
  {
    v3 = "phLibNfc_IoctlGetSpmiGpioCmd failed!";
    v4 = a1 + 9792;
    v5 = 1;
LABEL_5:
    sub_297E4E0B0(v5, v4, 4, 1u, v3);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlGetSpmiGpioCmd");
  return v2;
}

uint64_t sub_297E7C244(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlGetSpmiGpioProc");
  if (!a1 || !a3)
  {
    v9 = "phLibNfc_IoctlGetSpmiGpioProc, failed";
    v10 = 2;
    v11 = a1;
LABEL_12:
    sub_297E4E0B0(v10, v11, 4, 1u, v9);
    goto LABEL_13;
  }

  sub_297E5D114(*(a1 + 3000), &v13);
  if (!v13)
  {
    v9 = "phLibNfc_IoctlGetSpmiGpioProc: Invalid LIBNFC context!!";
LABEL_11:
    v11 = a1 + 9792;
    v10 = 1;
    goto LABEL_12;
  }

  if (!a2)
  {
    if (a3[1])
    {
LABEL_13:
      a2 = 255;
      goto LABEL_14;
    }

    if (*a3 == 7)
    {
      v6 = *(v13 + 160);
      if (v6)
      {
        a2 = 0;
        v7 = a3[6];
        *v6 = *v6 & 0xFFFE | v7 & 1;
        **(v13 + 160) = **(v13 + 160) & 0xFFFB | (2 * v7) & 4;
        **(v13 + 160) = **(v13 + 160) & 0xFFFD | (v7 >> 1) & 2;
        **(v13 + 160) = **(v13 + 160) & 0xFFF7 | v7 & 8;
        **(v13 + 160) = **(v13 + 160) & 0xFFEF | v7 & 0x10;
        **(v13 + 160) = **(v13 + 160) & 0xFFDF | v7 & 0x20;
        **(v13 + 160) = **(v13 + 160) & 0xFFBF | v7 & 0x40;
        **(v13 + 160) = **(v13 + 160) & 0xFF7F | v7 & 0x80;
        v8 = a3[7];
        **(v13 + 160) = **(v13 + 160) & 0xFEFF | ((v8 & 1) << 8);
        **(v13 + 160) = **(v13 + 160) & 0xFDFF | (((v8 >> 1) & 1) << 9);
        **(v13 + 160) = **(v13 + 160) & 0xFBFF | (((v8 >> 2) & 1) << 10);
        **(v13 + 160) = **(v13 + 160) & 0xF7FF | (((v8 >> 3) & 1) << 11);
        **(v13 + 160) = **(v13 + 160) & 0xEFFF | (((v8 >> 4) & 1) << 12);
        **(v13 + 160) = **(v13 + 160) & 0xDFFF | (((v8 >> 5) & 1) << 13);
        **(v13 + 160) = **(v13 + 160) & 0xBFFF | (((v8 >> 6) & 1) << 14);
        **(v13 + 160) = (v8 << 8) & 0x8000 | **(v13 + 160) & 0x7FFF;
        goto LABEL_14;
      }
    }

    v9 = "Expected Payload Mismatch";
    goto LABEL_11;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlGetSpmiGpioProc");
  return a2;
}

uint64_t sub_297E7C504(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlGetSpmiGpioComplete");
  if (!a1)
  {
    v6 = "phLibNfc_IoctlGetSpmiGpioComplete: Libnfc Context is Invalid";
    v7 = 2;
    v8 = 0;
LABEL_7:
    sub_297E4E0B0(v7, v8, 4, 1u, v6);
    v9 = 255;
    goto LABEL_10;
  }

  sub_297E5D114(*(a1 + 3000), &v11);
  v4 = v11;
  if (!v11)
  {
    v6 = "phLibNfc_IoctlGetSpmiGpioComplete: Invalid IOCTL context!!";
    v8 = a1 + 9792;
    v7 = 1;
    goto LABEL_7;
  }

  if (a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_IoctlGetSpmiGpioComplete: Failed");
    v5 = 119;
    v4 = v11;
  }

  else
  {
    v5 = 118;
  }

  v9 = sub_297E4F450(*(a1 + 3000), v5, a2, *(v4 + 80), 0);
LABEL_10:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlGetSpmiGpioComplete");
  return v9;
}

uint64_t sub_297E7C610(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlGetRfRegCmd");
  if (!a1)
  {
    v3 = "phLibNfc_IoctlGetRfRegCmd, Libnfc Context is Invalid";
    v2 = 1;
    v5 = 2;
    v4 = 0;
    goto LABEL_5;
  }

  v2 = sub_297F06968(*(a1 + 3088), *(a1 + 3576), *(a1 + 3568), sub_297E5BA84, a1);
  if (v2 != 13)
  {
    v3 = "phLibNfc_IoctlGetRfRegCmd: failed!";
    v4 = a1 + 9792;
    v5 = 1;
LABEL_5:
    sub_297E4E0B0(v5, v4, 4, 1u, v3);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlGetRfRegCmd");
  return v2;
}

uint64_t sub_297E7C6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlSetRfCalDataCmd");
  if (a1)
  {
    v5 = sub_297F09440(*(a1 + 3088), a3, sub_297E5BA84, a1);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_IoctlSetRfCalDataCmd : Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlSetRfCalDataCmd");
  return v5;
}

uint64_t sub_297E7C784(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlSetGetRfCalDataProc");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlSetGetRfCalDataProc");
  return a2;
}

uint64_t sub_297E7C7EC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlSetRfCalDataComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Set Rf calibration data signed failed");
      v4 = 119;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Set Rf calibration data signed passed");
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 3000), v4, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_IoctlSetRfCalDataComplete: Invalid LIBNFC context!!");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlSetRfCalDataComplete");
  return v5;
}

uint64_t sub_297E7C8D8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlGetRfCalDataCmd");
  if (a1)
  {
    v5 = sub_297F0957C(*(a1 + 3088), a3, sub_297E5BA84, a1);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_IoctlGetRfCalDataCmd : Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlGetRfCalDataCmd");
  return v5;
}

uint64_t sub_297E7C984(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlGetRfCalDataComplete");
  if (a1)
  {
    sub_297E5D114(*(a1 + 3000), &v9);
    if (v9)
    {
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Get Rf calibration data signed failed");
        v4 = 0;
      }

      else
      {
        v4 = *(v9 + 80);
        if (v4)
        {
          sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Get Rf calibration data signed passed");
          a2 = 0;
          v5 = 118;
          goto LABEL_11;
        }

        a2 = 255;
      }

      v5 = 119;
LABEL_11:
      sub_297E4F450(*(a1 + 3000), v5, a2, v4, 0);
      goto LABEL_12;
    }

    v7 = a1 + 9792;
    v6 = 1;
  }

  else
  {
    v6 = 2;
    v7 = 0;
  }

  sub_297E4E0B0(v6, v7, 4, 1u, "phLibNfc_IoctlGetRfCalDataComplete: Invalid LIBNFC context!!");
  a2 = 255;
LABEL_12:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlGetRfCalDataComplete");
  return a2;
}

uint64_t sub_297E7CAC8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlLoopbackCmd");
  if (a1)
  {
    v2 = sub_297F06F3C(*(a1 + 3088), *(a1 + 9768), a1 + 2760, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_IoctlLoopbackCmd: Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlLoopbackCmd");
  return v2;
}

uint64_t sub_297E7CB74(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlMgmt_Transceive_CB");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlMgmt_Transceive_CB");
  return a2;
}

uint64_t sub_297E7CBDC(uint64_t a1, int a2, uint64_t a3)
{
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlLoopbackComplete");
  if (!a1)
  {
    v9 = "phLibNfc_IoctlLoopbackComplete: Invalid LIBNFC context!!";
    v10 = 2;
    v11 = 0;
LABEL_15:
    sub_297E4E0B0(v10, v11, 4, 1u, v9);
    v7 = 255;
    goto LABEL_16;
  }

  sub_297E5D114(*(a1 + 3000), &v13);
  if (!v13)
  {
    v9 = "phLibNfc_IoctlLoopbackComplete: Invalid IOCTL context!!";
    v11 = a1 + 9792;
    v10 = 1;
    goto LABEL_15;
  }

  v6 = *(v13 + 80);
  if (!a2 && a3 && v6 && *a3)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Loop back transceive success - received data");
    phOsalNfc_MemCopy();
    v7 = 0;
    *(v6 + 8) = *(a3 + 8);
    v8 = 118;
  }

  else
  {
    if (a2 == 143)
    {
      v7 = 143;
    }

    else
    {
      v7 = 255;
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Loop back transceive failed!");
    v8 = 119;
  }

  sub_297E4F450(*(a1 + 3000), v8, v7, v6, 0);
LABEL_16:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlLoopbackComplete");
  return v7;
}

uint64_t sub_297E7CD4C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlSetSysCfgProc");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_IoctlSetRfCfgProc : Libnfc Context is Invalid");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlSetSysCfgProc");
  return a2;
}

uint64_t sub_297E7CDD0(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlSysCfgComplete");
  byte_2A18BD388 = 1;
  if (a1)
  {
    sub_297E5D114(*(a1 + 3000), &v7);
    if (v7)
    {
      *(v7 + 824) = 0;
    }

    sub_297E9F888(*(a1 + 3000), 0);
    if (a2 == 143 || a2 == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 255;
    }

    a2 = sub_297E4F450(*(a1 + 3000), 118, v5, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlSysCfgComplete");
  return a2;
}

uint64_t sub_297E7CE98(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  sub_297E4E1B4(0, &v6, 4, 5u, "phLibNfc_Ioctl_DisableDtaMode");
  v1 = sub_297E4F050(v6, &v5);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v5 == 0;
  }

  if (v2)
  {
    v3 = v1;
    sub_297E4E0B0(0, &v6, 4, 1u, "Ioctl_DisableDtaMode: LIBNFC Not Initialized");
  }

  else
  {
    v3 = sub_297E4F450(v6, 95, 0, 0, 0);
  }

  sub_297E4DFAC(0, &v6, 4, 5u, "phLibNfc_Ioctl_DisableDtaMode");
  if (v3)
  {
    sub_297E5AE60(v6, 95);
    sub_297E96818(v6, v3);
  }

  return v3;
}

uint64_t sub_297E7CF74(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  sub_297E4E1B4(0, &v6, 4, 5u, "phLibNfc_Ioctl_EnableDtaMode");
  v1 = sub_297E4F050(v6, &v5);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v5 == 0;
  }

  if (v2)
  {
    v3 = v1;
    sub_297E4E0B0(0, &v6, 4, 1u, "Ioctl_EnableDtaMode: LIBNFC Not Initialized");
  }

  else
  {
    v3 = sub_297E4F450(v6, 94, 0, 0, 0);
  }

  sub_297E4DFAC(0, &v6, 4, 5u, "phLibNfc_Ioctl_EnableDtaMode");
  if (v3)
  {
    sub_297E5AE60(v6, 94);
    sub_297E96818(v6, v3);
  }

  return v3;
}

uint64_t sub_297E7D050(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v12 = a1;
  v10 = 0;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_Ioctl_PropGetRfRegs");
  sub_297E5D114(v12, &v10);
  v5 = sub_297E4F050(v12, &v11);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v11 == 0;
  }

  if (v6)
  {
    v7 = v5;
    sub_297E4E0B0(0, &v12, 4, 1u, "Ioctl_PropGetRfRegs: LIBNFC Not Initialized");
    if (v7 == 13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v10)
    {
      v7 = 1;
      v8 = "Ioctl_PropGetRfRegs: Invalid input parameters";
      if (a2 && a3 && *a2 && *a3 && *(a2 + 8) >= 2u)
      {
        if (*(v11 + 2994) == 1)
        {
          v7 = 51;
          v8 = "Ioctl_PropGetRfRegs: Feature not supported";
        }

        else
        {
          v7 = sub_297E4F450(v12, 93, 0, a2, a3);
          if (v7 == 13)
          {
            goto LABEL_19;
          }

          *(v11 + 3576) = 0u;
          *(v10 + 80) = 0;
          v8 = "phLibNfc_Ioctl_PropGetRfRegs Failed!!!";
        }
      }
    }

    else
    {
      v7 = 255;
      v8 = "Ioctl_PropGetRfRegs: Invalid IOCTL context";
    }

    sub_297E4E0B0(0, &v12, 4, 1u, v8);
  }

  sub_297E5AE60(v12, 93);
  sub_297E96818(v12, v7);
LABEL_19:
  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Ioctl_PropGetRfRegs");
  return v7;
}

uint64_t sub_297E7D1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_Ioctl_GetSpmiGpio");
  v6 = sub_297E4F050(v12, &v11);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v11 == 0;
  }

  if (v7)
  {
    v8 = v6;
    sub_297E4E0B0(0, &v12, 4, 1u, "phLibNfc_Ioctl_GetSpmiGpio: LIBNFC Not Initialized");
    if (v8 == 13)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!a3 || !*a3)
  {
    v8 = 1;
    v9 = "phLibNfc_Ioctl_GetSpmiGpio: Invalid Input Parameter!";
    goto LABEL_15;
  }

  v8 = 1;
  v9 = "phLibNfc_Ioctl_GetSpmiGpio: Invalid Input Parameter!";
  if (!a4 || *(a3 + 8) < 4u)
  {
    goto LABEL_15;
  }

  v8 = sub_297E4F450(v12, 104, 0, a3, 0);
  if (v8 != 13)
  {
    *(v11 + 3576) = 0u;
    v9 = "phLibNfc_Ioctl_GetSpmiGpio Failed!!!";
LABEL_15:
    sub_297E4E0B0(0, &v12, 4, 1u, v9);
LABEL_16:
    sub_297E5AE60(v12, 104);
    sub_297E96818(v12, v8);
  }

LABEL_17:
  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Ioctl_GetSpmiGpio");
  return v8;
}

uint64_t sub_297E7D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = a1;
  v10 = 0;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_Ioctl_PropGetRfConfig");
  sub_297E5D114(v12, &v10);
  v5 = sub_297E4F050(v12, &v11);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v11 == 0;
  }

  if (v6)
  {
    v7 = v5;
    sub_297E4E0B0(0, &v12, 4, 1u, "Ioctl_PropGetRfConfig: LIBNFC Not Initialized");
    if (v7 == 13)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    v7 = 255;
    v8 = "Ioctl_PropGetRfConfig: INVALID IOCTL context";
    goto LABEL_18;
  }

  v7 = 1;
  v8 = "Ioctl_PropGetRfConfig: Invalid input parameters";
  if (!a2 || !a3 || !*a2 || !*a3 || *(a2 + 8) < 2u || !*(a3 + 8))
  {
    goto LABEL_18;
  }

  v7 = sub_297E4F450(v12, 92, 0, a2, a3);
  if (v7 != 13)
  {
    *(v11 + 3576) = 0u;
    *(v10 + 80) = 0;
    v8 = "Ioctl_PropGetRfConfig Failed!!!";
LABEL_18:
    sub_297E4E0B0(0, &v12, 4, 1u, v8);
LABEL_19:
    sub_297E5AE60(v12, 92);
    sub_297E96818(v12, v7);
  }

LABEL_20:
  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Ioctl_PropGetRfConfig");
  return v7;
}

uint64_t sub_297E7D4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = a1;
  v10 = 0;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_Ioctl_GetDnldIntgInfo");
  sub_297E67EB0(v12, &v10);
  v5 = sub_297E4F050(v12, &v11);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v10 == 0;
  }

  if (v6)
  {
    v7 = 147;
    v8 = "This API will only be handled only in the Libnfc uninitialized state";
  }

  else
  {
    if (a3 && *a3 && *(a3 + 8) >= 0x30u)
    {
      v7 = sub_297E4F450(v12, 184, v5, a2, 0);
      if (v7 == 13)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v7 = 1;
    v8 = "phLibNfc_Ioctl_GetDnldIntgInfo: Invalid input parameters";
  }

  sub_297E4E0B0(0, &v12, 4, 1u, v8);
LABEL_11:
  sub_297E5AE60(v12, 184);
  sub_297E96818(v12, v7);
LABEL_12:
  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Ioctl_GetDnldIntgInfo");
  return v7;
}

uint64_t sub_297E7D5F8(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(0, &v5, 4, 5u, "phLibNfc_Ioctl_SetSystemConfigs");
  if (a2 && *a2 && *(a2 + 8) > 3u)
  {
    v3 = sub_297E4F450(v5, 105, 0, a2, 0);
    if (v3 == 13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(0, &v5, 4, 1u, "Ioctl_SetSpmiSystemConfigs: Invalid input parameters");
  }

  sub_297E5AE60(v5, 105);
  sub_297E96818(v5, v3);
LABEL_6:
  sub_297E4DFAC(0, &v5, 4, 5u, "phLibNfc_Ioctl_SetSystemConfigs");
  return v3;
}

uint64_t sub_297E7D6D8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_Ioctl_SetRfConfig");
  v3 = sub_297E4F050(v8, &v7);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v7 == 0;
  }

  if (v4)
  {
    v5 = v3;
    sub_297E4E0B0(0, &v8, 4, 1u, "Ioctl_SetRfConfig: LIBNFC Not Initialized");
    goto LABEL_7;
  }

  if (a2 && *a2 && *(a2 + 8) > 2u)
  {
    v5 = sub_297E4F450(v8, 90, 0, a2, 0);
LABEL_7:
    if (v5 == 13)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v5 = 1;
  sub_297E4E0B0(0, &v8, 4, 1u, "Ioctl_SetRfConfig: Invalid input parameters");
LABEL_13:
  sub_297E5AE60(v8, 90);
  sub_297E96818(v8, v5);
LABEL_14:
  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_Ioctl_SetRfConfig");
  return v5;
}

uint64_t sub_297E7D7F8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v19 = 0;
  v20 = a1;
  v18 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = &unk_2A18BDDC0 + 112 * v3;
    if (*v6 == a1)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v7 = *(v6 + 2);
  if (v7 > 1)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v8 = *(&unk_2A18BDDC0 + 14 * v7 + 10);
  if (v8)
  {
    v9 = v8 + 120;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:
  sub_297E4E1B4(0, &v20, 4, 5u, "phLibNfc_Ioctl_NfccTimerCfg");
  sub_297E4F0E8(v20, &v18);
  sub_297E5D114(v20, &v19);
  if (!v19 || !v18)
  {
    sub_297E4E0B0(0, &v20, 4, 1u, "phLibNfc_Ioctl_NfccTimerCfg: Invalid IOCTL/LIBNFC context !");
    if (!v9)
    {
      v12 = 255;
      goto LABEL_26;
    }

    *(v9 + 36) = 112;
    v11 = v20;
    v12 = 255;
    v13 = 255;
    goto LABEL_24;
  }

  if (!a2 || !*a2 || (v10 = *(a2 + 8), v10 >= 3) && *(v19 + 96) != 242)
  {
    v14 = "phLibNfc_Ioctl_NfccTimerCfg: Invalid Input Parameter!";
    goto LABEL_22;
  }

  if (v18[2994] == 1)
  {
LABEL_17:
    sub_297E4E0B0(0, &v20, 4, 1u, "phLibNfc_Ioctl_NfccTimerCfg: Feature not supported!");
    if (!v9)
    {
      v12 = 51;
      goto LABEL_26;
    }

    *(v9 + 36) = 112;
    v11 = v20;
    v12 = 51;
    v13 = 51;
    goto LABEL_24;
  }

  v16 = *(v19 + 96);
  if (v16 <= 228)
  {
    if (v16 != 220)
    {
      if (v16 == 221)
      {
        v17 = 98;
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    v17 = 96;
LABEL_46:
    v12 = sub_297E4F450(v20, v17, 0, a2, 0);
    if (v12 == 13)
    {
      goto LABEL_26;
    }

    goto LABEL_47;
  }

  if (v16 == 229)
  {
    v17 = 97;
    goto LABEL_46;
  }

  if (v16 == 242)
  {
    if (v18[2986] != 1 && v18[2987] != 1 && v18[2992] != 1 || v18[2990] == 1 || v18[2991] == 1 || v18[2987] == 1 && v18[3136] == 2)
    {
      goto LABEL_17;
    }

    v17 = 106;
    if ((v10 & 0xFFFFFFFE) != 2)
    {
      v12 = 1;
LABEL_47:
      sub_297E5AE60(v20, v17);
      v11 = v20;
      v13 = v12;
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_43:
  v14 = "phLibNfc_Ioctl_NfccTimerCfg: Invalid IOCTL code!";
LABEL_22:
  v12 = 1;
  sub_297E4E0B0(0, &v20, 4, 1u, v14);
  if (v9)
  {
    *(v9 + 36) = 112;
    v11 = v20;
    v13 = 1;
LABEL_24:
    sub_297E96818(v11, v13);
  }

LABEL_26:
  sub_297E4DFAC(0, &v20, 4, 5u, "phLibNfc_Ioctl_NfccTimerCfg");
  return v12;
}

uint64_t sub_297E7DACC(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  v5 = 0;
  sub_297E4E1B4(0, &v7, 4, 5u, "phLibNfc_Ioctl_SpmiVgpioDbgLogCfg");
  sub_297E4D930(0, &v7, 4, 87, "phLibNfc_Ioctl_SpmiVgpioDbgLogCfg");
  sub_297E4F0E8(v7, &v5);
  sub_297E5D114(v7, &v6);
  v1 = 255;
  v2 = "phLibNfc_Ioctl_SpmiVgpioDbgLogCfg: Invalid IOCTL/LIBNFC context !";
  if (v6 && v5)
  {
    if (*(v5 + 2992) == 1)
    {
      v1 = sub_297E4F450(v7, 82, 0, 0, 0);
      v3 = v6;
      v6[2] = 0;
      *v3 = 0;
      if (!v1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v1 = 51;
    v2 = "phLibNfc_Ioctl_SpmiVgpioDbgLogCfg: Feature Not supported!";
  }

  sub_297E4E0B0(0, &v7, 4, 1u, v2);
LABEL_8:
  sub_297E5AE60(v7, 82);
  sub_297E96818(v7, v1);
LABEL_9:
  sub_297E4D930(0, &v7, 4, 87, "phLibNfc_Ioctl_SpmiVgpioDbgLogCfg");
  sub_297E4DFAC(0, &v7, 4, 5u, "phLibNfc_Ioctl_SpmiVgpioDbgLogCfg");
  return v1;
}

uint64_t sub_297E7DC24(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_Ioctl_PrbsTest");
  v3 = sub_297E4F050(v8, &v7);
  if (!a2 || !*a2 || !*(a2 + 8))
  {
    v4 = 1;
    v5 = "phLibNfc_Ioctl_PrbsTest: Invalid Input Parameter!";
LABEL_9:
    sub_297E4E0B0(0, &v8, 4, 1u, v5);
    goto LABEL_10;
  }

  v4 = 49;
  v5 = "phLibNfc_Ioctl_PrbsTest: LIBNFC Not Initialized";
  if (!v7 || v3)
  {
    goto LABEL_9;
  }

  if (*(v7 + 2994) == 1)
  {
    v4 = 51;
  }

  else
  {
    v4 = sub_297E4F450(v8, 89, 0, a2, 0);
    if (v4 == 13)
    {
      goto LABEL_11;
    }
  }

LABEL_10:
  sub_297E5AE60(v8, 89);
  sub_297E96818(v8, v4);
LABEL_11:
  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_Ioctl_PrbsTest");
  return v4;
}

uint64_t sub_297E7DD38(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  sub_297E4E1B4(0, &v6, 4, 5u, "phLibNfc_Ioctl_SWP2Test");
  v1 = sub_297E4F050(v6, &v5);
  if (v5)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    sub_297E4E0B0(0, &v6, 4, 1u, "Ioctl_SWP2Test: LIBNFC Not Initialized");
    v3 = 49;
LABEL_7:
    sub_297E5AE60(v6, 88);
    sub_297E96818(v6, v3);
    goto LABEL_8;
  }

  v3 = sub_297E4F450(v6, 88, 0, 0, 0);
  if (v3 != 13)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_297E4DFAC(0, &v6, 4, 5u, "phLibNfc_Ioctl_SWP2Test");
  return v3;
}

uint64_t sub_297E7DE18(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  sub_297E4E1B4(0, &v6, 4, 5u, "phLibNfc_Ioctl_SWP1Test");
  v1 = sub_297E4F050(v6, &v5);
  if (v5)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    sub_297E4E0B0(0, &v6, 4, 1u, "Ioctl_SWP1Test: LIBNFC Not Initialized");
    v3 = 49;
LABEL_7:
    sub_297E5AE60(v6, 87);
    sub_297E96818(v6, v3);
    goto LABEL_8;
  }

  v3 = sub_297E4F450(v6, 87, 0, 0, 0);
  if (v3 != 13)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_297E4DFAC(0, &v6, 4, 5u, "phLibNfc_Ioctl_SWP1Test");
  return v3;
}

uint64_t sub_297E7DEF8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_Ioctl_SetSpmiGpio");
  sub_297E5D114(v8, &v7);
  if (v7)
  {
    if (a2 && v8 && *a2 && *(a2 + 8))
    {
      v3 = sub_297E4F450(v8, 81, 0, &v8, *a2);
      v4 = v7;
      v7[2] = 0;
      *v4 = 0;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_297E4E0B0(0, &v8, 4, 4u, "phLibNfc_Ioctl_SetSpmiGpio: Invalid driver handle");
      v5 = v7;
      v7[2] = 0;
      *v5 = 0;
      v3 = 1;
    }
  }

  else
  {
    sub_297E4E0B0(0, &v8, 4, 1u, "phLibNfc_Ioctl_SetSpmiGpio: Invalid IOCTL context");
    v3 = 255;
  }

  sub_297E5AE60(v8, 81);
  sub_297E96818(v8, v3);
LABEL_11:
  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_Ioctl_SetSpmiGpio");
  return v3;
}

uint64_t sub_297E7E020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4, 5u, "phLibNfc_Ioctl_GetSpmiErrorRegs");
  sub_297E5D114(v9, &v8);
  if (v8)
  {
    if (a3 && *a3 && *(a3 + 8) > 5u)
    {
      v4 = sub_297E4F450(v9, 83, 0, &v9, *a3);
      v7 = v8;
      v8[2] = 0;
      *v7 = 0;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v4 = 1;
      sub_297E4E0B0(0, &v9, 4, 1u, "phLibNfc_Ioctl_GetSpmiErrorRegs: Invalid input parameters");
      v5 = v8;
      v8[2] = 0;
      *v5 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(0, &v9, 4, 1u, "phLibNfc_Ioctl_GetSpmiErrorRegs: Invalid IOCTL context");
    v4 = 255;
  }

  sub_297E5AE60(v9, 83);
  sub_297E96818(v9, v4);
LABEL_8:
  sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_Ioctl_GetSpmiErrorRegs");
  return v4;
}

uint64_t sub_297E7E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_Ioctl_ClearSpmiErrorRegs");
  sub_297E5D114(v11, &v10);
  if (v10)
  {
    if (v11)
    {
      v6 = sub_297E4F450(v11, 84, 0, &v11, a5);
      v7 = v10;
      v10[2] = 0;
      *v7 = 0;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(0, &v11, 4, 1u, "phLibNfc_Ioctl_ClearSpmiErrorRegs: Invalid input parameters");
      v8 = v10;
      v10[2] = 0;
      *v8 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(0, &v11, 4, 1u, "phLibNfc_Ioctl_ClearSpmiErrorRegs: Invalid IOCTL context");
    v6 = 255;
  }

  sub_297E5AE60(v11, 84);
  sub_297E96818(v11, v6);
LABEL_8:
  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_Ioctl_ClearSpmiErrorRegs");
  return v6;
}

uint64_t sub_297E7E25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4, 5u, "phLibNfc_Ioctl_GetSpmiConfigRegs");
  sub_297E5D114(v9, &v8);
  if (v8)
  {
    if (a3 && *a3 && *(a3 + 8) > 0xDu)
    {
      v4 = sub_297E4F450(v9, 85, 0, &v9, *a3);
      v7 = v8;
      v8[2] = 0;
      *v7 = 0;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v4 = 1;
      sub_297E4E0B0(0, &v9, 4, 1u, "phLibNfc_Ioctl_GetSpmiConfigRegs: Invalid input parameters");
      v5 = v8;
      v8[2] = 0;
      *v5 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(0, &v9, 4, 1u, "phLibNfc_Ioctl_GetSpmiConfigRegs: Invalid IOCTL context");
    v4 = 255;
  }

  sub_297E5AE60(v9, 85);
  sub_297E96818(v9, v4);
LABEL_8:
  sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_Ioctl_GetSpmiConfigRegs");
  return v4;
}

uint64_t sub_297E7E384(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_Ioctl_SetSpmiConfigRegs");
  sub_297E5D114(v8, &v7);
  if (v7)
  {
    if (a2 && *a2 && *(a2 + 8) > 0xDu)
    {
      v3 = sub_297E4F450(v8, 86, 0, &v8, *a2);
      v6 = v7;
      v7[2] = 0;
      *v6 = 0;
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v3 = 1;
      sub_297E4E0B0(0, &v8, 4, 1u, "phLibNfc_Ioctl_SetSpmiConfigRegs: Invalid input parameters");
      v4 = v7;
      v7[2] = 0;
      *v4 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(0, &v8, 4, 1u, "phLibNfc_Ioctl_SetSpmiConfigRegs: Invalid IOCTL context");
    v3 = 255;
  }

  sub_297E5AE60(v8, 86);
  sub_297E96818(v8, v3);
LABEL_8:
  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_Ioctl_SetSpmiConfigRegs");
  return v3;
}

uint64_t sub_297E7E4AC(uint64_t a1)
{
  v5 = a1;
  sub_297E4E1B4(0, &v5, 4, 5u, "phLibNfc_Ioctl_VenReset");
  if (!v5)
  {
    sub_297E4E0B0(0, &v5, 4, 4u, "phLibNfc_Ioctl_VenReset: Invalid driver handle");
    v3 = 1;
    goto LABEL_15;
  }

  if (sub_297EE1404(v5) == 3 && sub_297E56FC8(v5) == 1 || sub_297EE1404(v5) == 12 && !sub_297EE1BCC(v5))
  {
    v1 = v5;
    v2 = 4;
  }

  else
  {
    if (sub_297EE1BCC(v5) != 180 && sub_297EE1BCC(v5) != 181 && sub_297EE1BCC(v5) != 182 && sub_297EE1BCC(v5) != 184 && sub_297EE1BCC(v5) != 183)
    {
      v3 = 255;
      goto LABEL_15;
    }

    v1 = v5;
    v2 = 178;
  }

  v3 = sub_297E4F450(v1, v2, 0, &v5, 0);
  if (v3)
  {
LABEL_15:
    sub_297E5AE60(v5, 178);
    sub_297E96818(v5, v3);
  }

  sub_297E4DFAC(0, &v5, 4, 5u, "phLibNfc_Ioctl_VenReset");
  return v3;
}

uint64_t sub_297E7E610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  v9 = 0;
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_Ioctl_DnldGetDieID");
  sub_297E67EB0(v11, &v9);
  v4 = sub_297E4F050(v11, &v10);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v9 == 0;
  }

  if (v5)
  {
    v6 = 147;
    v7 = "This API will only be handled only in the Libnfc uninitialized state";
  }

  else
  {
    if (a3 && *a3 && *(a3 + 8) >= 0x10u)
    {
      v6 = sub_297E4F450(v11, 182, v4, a3, 0);
      if (v6 == 13)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v6 = 1;
    v7 = "phLibNfc_Ioctl_DnldGetDieID: Invalid parameter";
  }

  sub_297E4E0B0(0, &v11, 4, 1u, v7);
LABEL_11:
  sub_297E5AE60(v11, 182);
  sub_297E96818(v11, v6);
LABEL_12:
  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_Ioctl_DnldGetDieID");
  return v6;
}

uint64_t sub_297E7E72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4, 5u, "phLibNfc_Ioctl_LoopbackTransceive");
  sub_297E4F0E8(v10, &v9);
  v5 = 1;
  v6 = "Ioctl_LoopbackTransceive: Invalid input parameters";
  if (a2)
  {
    if (a3)
    {
      if (*a3)
      {
        if (*(a3 + 8))
        {
          v7 = *(a2 + 8);
          if (v7 <= 0xFF && v7 && *a2)
          {
            if (v9)
            {
              v5 = sub_297E4F450(v10, 80, 0, a2, a3);
              if (v5 == 13)
              {
                goto LABEL_8;
              }

              goto LABEL_7;
            }

            v5 = 49;
            v6 = "Ioctl_LoopbackTransceive: LIBNFC Not Initialized";
          }
        }
      }
    }
  }

  sub_297E4E0B0(0, &v10, 4, 1u, v6);
LABEL_7:
  sub_297E5AE60(v10, 80);
  sub_297E96818(v10, v5);
LABEL_8:
  sub_297E4DFAC(0, &v10, 4, 5u, "phLibNfc_Ioctl_LoopbackTransceive");
  return v5;
}

uint64_t sub_297E7E854(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_Ioctl_ConfigDebugMode");
  v3 = sub_297E4F050(v8, &v7);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v7 == 0;
  }

  if (v4)
  {
    v5 = v3;
    sub_297E4E0B0(0, &v8, 4, 1u, "Ioctl_ConfigDebugMode: LIBNFC Not Initialized");
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else if (a2 && *a2 && *(a2 + 8))
  {
    v5 = sub_297E4F450(v8, 107, 0, a2, 0);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4, 1u, "Ioctl_ConfigDebugMode: Invalid input parameters");
  }

  sub_297E5AE60(v8, 107);
  sub_297E96818(v8, v5);
LABEL_15:
  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_Ioctl_ConfigDebugMode");
  return v5;
}

uint64_t sub_297E7E970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_UpdateFirmware");
  sub_297E67EB0(v13, &v11);
  v6 = sub_297E4F050(v13, &v12);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v11 == 0;
  }

  if (v7)
  {
    v8 = 147;
    v9 = "This API will only be handled only in the Libnfc uninitialized state";
  }

  else
  {
    if (a4)
    {
      v8 = sub_297E4F450(v13, 180, v6, a2, 0);
      if (v8 == 13)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v8 = 1;
    v9 = "NULL callback function passed";
  }

  sub_297E4E0B0(0, &v13, 4, 1u, v9);
LABEL_11:
  sub_297E5AE60(v13, 180);
  sub_297E96818(v13, v8);
LABEL_12:
  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_UpdateFirmware");
  return v8;
}

uint64_t sub_297E7EA7C(uint64_t a1, _BYTE *a2, int a3)
{
  LODWORD(v3) = a3;
  sub_297E4E1B4(3, a1, 4, 5u, "phLibNfc_GetFwVersionCb");
  if (a1)
  {
    if (*(a1 + 32))
    {
      if (v3 == 9)
      {
        v3 = 255;
      }

      else
      {
        v3 = v3;
      }

      sub_297E4D930(0, a1 + 8, 4, 12, "phLibNfc_GetFwVersionCb");
      (*(a1 + 32))(*(a1 + 8), *a1, *(a1 + 64), v3);
      *(a1 + 32) = 0;
    }

    if (*a1)
    {
      *a1 = 0;
    }

    if (*(a1 + 64))
    {
      *(a1 + 64) = 0;
    }

    if (!a2 || !a2[6078] && !a2[6081] && !a2[6082] && !a2[6079])
    {
      sub_297E7EB8C(*(a1 + 8));
    }
  }

  return sub_297E4DFAC(3, a1, 4, 5u, "phLibNfc_GetFwVersionCb");
}

uint64_t sub_297E7EB8C(uint64_t a1)
{
  v14 = a1;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_IoctlClearAbortDnldCtx");
  if (!v14)
  {
    v6 = "phLibNfc_IoctlClearAbortDnldCtx: Invalid Driver Handle!!";
LABEL_27:
    sub_297E4E0B0(0, &v14, 4, 1u, v6);
    return sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_IoctlClearAbortDnldCtx");
  }

  sub_297E67F6C(v14, &v12);
  sub_297E5D114(v14, &v11);
  sub_297E4F0E8(v14, &v13);
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v14)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      v5 = 255;
      goto LABEL_8;
    }
  }

  v5 = *(v4 + 2);
LABEL_8:
  if (v12)
  {
    v7 = *(v12 + 48);
    if (v7)
    {
      if (sub_297EBDFC0(*(v7 + 8496)))
      {
        sub_297E4E0B0(0, &v14, 4, 1u, "Failed to perform phNciNfc_ReleaseNciHandle!!");
      }

      v8 = v12;
      *(v12 + 32) = 0;
      *(v7 + 8496) = 0;
      if (sub_297F0E16C(v8))
      {
        sub_297E4E0B0(0, &v14, 4, 1u, "Failed to perform phDnldNfc_CoreDeInit!!");
      }
    }
  }

  if (v11)
  {
    *(v11 + 116) = 0;
  }

  else
  {
    sub_297E4E0B0(0, &v14, 4, 1u, "Failed to retrieve Ioctl Context!!");
  }

  sub_297ED0CC8(v12);
  sub_297E67EB0(v14, &v10);
  if (v10)
  {
    sub_297F12CB0(v10);
  }

  if (v13)
  {
    *(v13 + 3088) = 0;
  }

  if (!v11)
  {
    v6 = "phLibNfc_IoctlClearAbortDnldCtx: Invalid IOCTL context!!";
    goto LABEL_27;
  }

  phTmlNfc_ReadAbort();
  phTmlNfc_FlushTxRxBuffers();
  if (sub_297E56AFC(v14) == 1)
  {
    phTmlNfc_WriteAbort();
    sub_297E5A3A8(v14, 0);
  }

  if (*(v11 + 192) == 1)
  {
    sub_297EA76A4(v5, v14);
  }

  else
  {
    phOsalNfc_SetMemory();
    phTmlNfc_IoCtl();
  }

  return sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_IoctlClearAbortDnldCtx");
}

uint64_t sub_297E7EDD4(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IoctlRfConfig");
  v8 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if ((a4 - 5) <= 2)
        {
          v8 = sub_297E5DAA0(*(a1 + 9784), a2, a3, &v13, 2);
          if (!v8)
          {
            if (v13)
            {
              *(a1 + 3568) = v13;
              *(a1 + 3576) = a2;
              *(a1 + 2960) = gphLibNfc_IoctlSetPropRfConfig;
              *(a1 + 2952) = 0;
              *(a1 + 2954) = 0;
              v9 = gphLibNfc_IoctlSetPropRfConfig[0];
              if (gphLibNfc_IoctlSetPropRfConfig[0])
              {
                v9 = 0;
                v10 = off_2A1A90938;
                do
                {
                  ++v9;
                  v11 = *v10;
                  v10 += 2;
                }

                while (v11);
              }

              *(a1 + 2953) = v9;
              v8 = sub_297E5588C(a1, 0, 0);
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IoctlRfConfig");
  return v8;
}

uint64_t sub_297E7EEF0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SwpTest_CB");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SwpTest_CB:Swp Self test failed");
      v4 = 119;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_SwpTest_CB:Swp Self test passed");
      v4 = 118;
    }

    sub_297E4F450(*(a1 + 3000), v4, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SwpTest_CB: Invalid LIBNFC context!!");
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SwpTest_CB");
}

uint64_t sub_297E7EFDC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PrbsTest_CB");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SwpTest_CB: Prbs test failed");
      v4 = 119;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_SwpTest_CB: Prbs test passed");
      v4 = 118;
    }

    sub_297E4F450(*(a1 + 3000), v4, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SwpTest_CB: Invalid LIBNFC context!!");
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PrbsTest_CB");
}

uint64_t sub_297E7F0C8(uint64_t a1, int a2, int a3)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_GetPlatformInfo");
  if (a2 <= 176)
  {
    if ((a2 - 162) < 3)
    {
      v5 = 2;
      goto LABEL_25;
    }

    if (a2 == 66)
    {
      v5 = 1;
      goto LABEL_25;
    }

    if (a2 == 96)
    {
      v5 = 10;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a2 > 208)
  {
    if ((a2 - 209) <= 2)
    {
      v5 = 9;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if ((a2 - 177) < 2)
  {
    if (a3 == 4)
    {
      v6 = 5;
    }

    else
    {
      v6 = 3;
    }

    if (a3 == 3)
    {
      v5 = 4;
    }

    else
    {
      v5 = v6;
    }
  }

  else
  {
    if (a2 != 186)
    {
      if (a2 == 208)
      {
        v5 = 8;
        goto LABEL_25;
      }

LABEL_24:
      sub_297E4E0B0(0, &v8, 4, 1u, "phLibNfc_GetPlatformInfo:Unknown platform");
      v5 = 0;
      goto LABEL_25;
    }

    if (a3 == 18)
    {
      v5 = 7;
    }

    else
    {
      v5 = 6;
    }
  }

LABEL_25:
  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_GetPlatformInfo");
  return v5;
}

uint64_t sub_297E7F200(uint64_t a1)
{
  v8 = 0;
  v9 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phDnldNfc_DnldGetSessnState");
  if (!a1)
  {
    v5 = 2;
    v6 = 0;
LABEL_8:
    sub_297E4E0B0(v5, v6, 4, 1u, "phDnldNfc_DnldGetSessnState: Invalid LIBNFC context!!");
    v4 = 255;
    goto LABEL_9;
  }

  sub_297E67F6C(*(a1 + 3000), &v8);
  sub_297E5D114(*(a1 + 3000), &v9);
  v2 = v9;
  if (!v9 || (v3 = v8) == 0)
  {
    v6 = a1 + 9792;
    v5 = 1;
    goto LABEL_8;
  }

  if (*(v9 + 88) == 1)
  {
    v4 = 0;
  }

  else
  {
    *(v9 + 752) = v9 + 471;
    *(v2 + 760) = 250;
    *(v2 + 728) = 242;
    *(v2 + 736) = 0;
    *(v2 + 744) = 0;
    *(v2 + 768) = 0;
    v4 = sub_297F0FD90(*(v3 + 48), v2 + 728, sub_297E5BA84, a1);
    if (v4 == 13)
    {
      sub_297E4E0B0(0, v9 + 8, 4, 4u, "GetSessionState Request submitted successfully");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phDnldNfc_DnldGetSessnState: Request Failed!!");
    }
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4, 5u, "phDnldNfc_DnldGetSessnState");
  return v4;
}

uint64_t sub_297E7F378(uint64_t *a1, int a2, _DWORD *a3)
{
  v16 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phDnldNfc_DnldGetSessnStateCb");
  if (!a1)
  {
    v9 = "phDnldNfc_DnldGetSessnStateCb - Invalid libnfc context!!";
    v10 = 2;
    v11 = 0;
LABEL_19:
    sub_297E4E0B0(v10, v11, 4, 1u, v9);
LABEL_20:
    v12 = 255;
    goto LABEL_21;
  }

  sub_297E5D114(a1[375], &v16);
  if (!v16)
  {
    v9 = "phDnldNfc_DnldGetSessnStateCb - Invalid IOCTL context!!";
    v11 = a1 + 1224;
LABEL_18:
    v10 = 1;
    goto LABEL_19;
  }

  if (a2 || !a3)
  {
    v9 = "phDnldNfc_DnldGetSessnStateCb - Request Failed!!";
LABEL_17:
    v11 = a1 + 1224;
    goto LABEL_18;
  }

  sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phDnldNfc_DnldGetSessnStateCb - Request Successful");
  if (a3[2] != 3 || !*a3)
  {
    sub_297E4E0B0(1, (a1 + 1224), 4, 1u, "phDnldNfc_DnldGetSessnStateCb: Session State Rsp Buff Invalid...");
    goto LABEL_23;
  }

  sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phDnldNfc_DnldGetSessnStateCb - Valid Session State Resp Buff!!...");
  if (*(*a3 + 2) != 17 && *(*a3 + 2))
  {
    v9 = "NFCC not in Operational State..Fw Upgrade not allowed!!";
    goto LABEL_17;
  }

  v6 = **a3;
  v7 = v16;
  v8 = *(v16 + 92);
  if (v6 == 2)
  {
    if (v8 == 1)
    {
      if (*(v16 + 836))
      {
        v14 = "Get session state received locked during Degraded FW update!!";
      }

      else
      {
        v14 = "Get session state received locked during FW update!!";
      }

      if (*(v16 + 836))
      {
        v12 = 141;
      }

      else
      {
        v12 = 156;
      }

      sub_297E4E0B0(1, (a1 + 1224), 4, 1u, v14);
      *(v16 + 836) = 0;
    }

    else if (a1[763])
    {
      sub_297E4E0B0(1, (a1 + 1224), 4, 1u, "Get session state received locked during Init!!");
      v12 = 136;
    }

    else
    {
      sub_297E4E0B0(1, (a1 + 1224), 4, 1u, "Get session state received locked!!");
      v12 = 0;
      *(v16 + 102) = 156;
    }
  }

  else
  {
    if (v6 == 1)
    {
      if (v8 == 1 && *(v16 + 836) == 1)
      {
        *(v16 + 836) = 0;
        sub_297E79810(a1, a1[370], 2u);
LABEL_23:
        v12 = 0;
        goto LABEL_21;
      }

      sub_297E4E0B0(1, (a1 + 1224), 4, 2u, "phDnldNfc_DnldGetSessnStateCb:Previous Fw Upgrade Session still Open..");
      v15 = v16;
      *(v16 + 89) = 1;
      if (*(v15 + 92) != 1)
      {
        goto LABEL_23;
      }

      sub_297E4E0B0(1, (a1 + 1224), 4, 2u, "Session still Open after Previous Fw Upgrade attempt!!");
      goto LABEL_20;
    }

    if (v8 == 1 && *(v16 + 836) == 1)
    {
      *(v16 + 836) = 0;
      sub_297E79810(a1, a1[370], 2u);
      v7 = v16;
    }

    v12 = 0;
    *(v7 + 89) = 0;
  }

LABEL_21:
  sub_297E4DFAC(2, a1, 4, 5u, "phDnldNfc_DnldGetSessnStateCb");
  return v12;
}

uint64_t sub_297E7F66C(uint64_t a1, int a2, _DWORD *a3)
{
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phDnldNfc_DnldPrevSessnStateCb");
  if (!a1)
  {
    v8 = "phDnldNfc_DnldPrevSessnStateCb - Invalid libnfc context!!";
    v9 = 2;
    v10 = 0;
LABEL_19:
    sub_297E4E0B0(v9, v10, 4, 1u, v8);
LABEL_20:
    v7 = 255;
    goto LABEL_21;
  }

  sub_297E5D114(*(a1 + 3000), &v13);
  if (!v13)
  {
    v8 = "phDnldNfc_DnldPrevSessnStateCb - Invalid IOCTL context!!";
    v10 = a1 + 9792;
LABEL_18:
    v9 = 1;
    goto LABEL_19;
  }

  if (a2 || !a3)
  {
    v8 = "phDnldNfc_DnldPrevSessnStateCb - Request Failed!!";
LABEL_17:
    v10 = a1 + 9792;
    goto LABEL_18;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldPrevSessnStateCb - Request Successful");
  if (a3[2] != 3 || !*a3)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phDnldNfc_DnldPrevSessnStateCb: Session State Rsp Buff Invalid...");
    goto LABEL_23;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldPrevSessnStateCb - Valid Session State Resp Buff!!...");
  if (*(*a3 + 2) != 17 && *(*a3 + 2))
  {
    v8 = "NFCC not in Operational State..Fw Upgrade not allowed!!";
    goto LABEL_17;
  }

  if (!**a3)
  {
    v7 = 0;
    *(v13 + 89) = 0;
    goto LABEL_21;
  }

  if (**a3 != 2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 2u, "phDnldNfc_DnldPrevSessnStateCb: Previous Fw Upgrade Session still Open..");
    v12 = v13;
    *(v13 + 89) = 257;
    if (*(v12 + 92) == 1)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "phDnldNfc_DnldPrevSessnStateCb: Session still Open after previous Fw Upgrade attempt!!");
      goto LABEL_20;
    }

LABEL_23:
    v7 = 0;
    goto LABEL_21;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Session still Locked..");
  v6 = v13;
  *(v13 + 90) = 2;
  if (*(a1 + 6078) == 1 || *(a1 + 6081) == 1)
  {
    v7 = 156;
  }

  else
  {
    v7 = 0;
    *(v6 + 836) = 1;
  }

LABEL_21:
  sub_297E4DFAC(2, a1, 4, 5u, "phDnldNfc_DnldPrevSessnStateCb");
  return v7;
}

uint64_t sub_297E7F8B0(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phDnldNfc_DnldGetVersion");
  if (!a1)
  {
    v5 = "phDnldNfc_DnldGetVersion - Invalid libnfc context!!";
    v6 = 2;
    v7 = 0;
LABEL_8:
    sub_297E4E0B0(v6, v7, 4, 1u, v5);
    v4 = 255;
    goto LABEL_9;
  }

  sub_297E67F6C(*(a1 + 3000), &v9);
  sub_297E5D114(*(a1 + 3000), &v10);
  v2 = v10;
  if (!v10 || (v3 = v9) == 0)
  {
    v5 = "phDnldNfc_DnldGetVersion - Invalid IOCTL context!!";
    v7 = a1 + 9792;
    v6 = 1;
    goto LABEL_8;
  }

  if (*(v10 + 88) == 1)
  {
    v4 = 0;
  }

  else
  {
    *(v10 + 752) = v10 + 471;
    *(v2 + 760) = 250;
    *(v2 + 728) = 241;
    *(v2 + 736) = 0;
    *(v2 + 744) = 0;
    *(v2 + 768) = 0;
    v4 = sub_297F0FD90(*(v3 + 48), v2 + 728, sub_297E5BA84, a1);
    if (v4 == 13)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "GetVersion Request submitted successfully");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phDnldNfc_DnldGetVersion: Request Failed!!");
    }
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4, 5u, "phDnldNfc_DnldGetVersion");
  return v4;
}

uint64_t sub_297E7FA24(uint64_t a1, int a2, char **a3)
{
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 8;
  sub_297E4E1B4(2, a1, 4, 5u, "phDnldNfc_DnldGetVersionCb");
  if (!a1)
  {
    v18 = "phDnldNfc_DnldGetVersionCb - Invalid libnfc context!!";
    v20 = 2;
    v19 = 0;
LABEL_22:
    sub_297E4E0B0(v20, v19, 4, 1u, v18);
    v21 = 255;
    goto LABEL_23;
  }

  sub_297E5F164(*(a1 + 3000), &v38);
  sub_297E67F6C(*(a1 + 3000), &v39);
  sub_297E5D114(*(a1 + 3000), &v40);
  if (!v40 || !v39 || (v6 = v39[6]) == 0)
  {
    v18 = "phDnldNfc_DnldGetVersionCb - Invalid IOCTL context!!";
    v19 = a1 + 9792;
LABEL_21:
    v20 = 1;
    goto LABEL_22;
  }

  if (a2 || !a3)
  {
    v18 = "phDnldNfc_DnldGetVersionCb - Request Failed!!";
LABEL_20:
    v19 = a1 + 9792;
    goto LABEL_21;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldGetVersionCb - Request Successful");
  v7 = *a3;
  if (!*a3)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phDnldNfc_DnldGetVersionCb: Version Rsp Buff Invalid...\n");
    v21 = 0;
    goto LABEL_23;
  }

  v8 = *v7;
  v9 = v40;
  *(v40 + 116) = v8;
  v10 = sub_297E7F0C8(*(v9 + 8), v8, v7[2]);
  *(v6 + 2120) = v10;
  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldGetVersionCb - Valid Version Resp Buff!!...\n");
  v11 = **a3;
  v12 = (*a3)[1];
  v13 = (*a3)[2];
  if (!*(v40 + 92))
  {
    v27 = sub_297ED0D50(v39, *(v40 + 184), v10);
    if (v27)
    {
      v21 = v27;
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SM_IoctlFwDnldTrans: Firmware Library Load Failed!!");
      goto LABEL_23;
    }
  }

  phOsalNfc_MemCopy();
  HIWORD(v42) = *(v40 + 832);
  v14 = *(v40 + 834);
  phOsalNfc_MemCopy();
  sub_297E50EBC(1, a1 + 9792, 4, 4u, "bNewVer[0]");
  sub_297E50EBC(1, a1 + 9792, 4, 4u, "bNewVer[1]");
  sub_297E50EBC(1, a1 + 9792, 4, 4u, "bCurrVer[0]");
  sub_297E50EBC(1, a1 + 9792, 4, 4u, "bCurrVer[1]");
  v15 = v10 == 10 || (v10 & 0xE) == 8;
  v16 = !v15;
  if (v15)
  {
    v17 = *(*a3 + 5);
  }

  else
  {
    v17 = 0;
  }

  if ((v12 - 1) >= 3)
  {
    v26 = "ROM Version Check Failed";
    goto LABEL_32;
  }

  if (!v10)
  {
    v18 = "Platform Not Supported";
    goto LABEL_20;
  }

  v23 = v40;
  v24 = *(v40 + 836);
  v25 = *(v40 + 92);
  if (v24 | v25)
  {
    if (v25 != 1)
    {
      if (*(v40 + 92))
      {
        goto LABEL_59;
      }

      goto LABEL_39;
    }

    if (v42 == v41 && BYTE1(v42) == HIBYTE(v41))
    {
      goto LABEL_59;
    }

    v18 = "Version Not Updated After Download!!\n";
    goto LABEL_20;
  }

  if (BYTE1(v42) < HIBYTE(v41))
  {
    v26 = "phDnldNfc_DnldGetVersionCb: Version Check Failed - Major Version Number Mismatch\n";
LABEL_32:
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v26);
    v21 = 58;
    goto LABEL_23;
  }

LABEL_39:
  if (v42 == v41 && BYTE1(v42) == HIBYTE(v41) && *(v40 + 89) != 1)
  {
    *(v40 + 117) = v12;
    *(v23 + 116) = v11;
    if (v13 != 3 && (v38 & 0xFFFFFFFD) == 4 && v10 == 3)
    {
      v30 = 1;
    }

    else
    {
      v30 = v13;
    }

    *(v23 + 118) = v30;
    if (*(v23 + 96) != 2556 && v24 != 1 && v17 == *(v23 + 828))
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Version Already UpToDate!!\n");
      v21 = 0;
      *(v40 + 168) = 1;
      goto LABEL_23;
    }

    if (v24 == 1)
    {
      v31 = v16;
    }

    else
    {
      v31 = 1;
    }

    if ((v31 & 1) == 0)
    {
      if (*(a1 + 6079) == 1 || *(a1 + 6082) == 1)
      {
        *(v23 + 836) = 0;
        v21 = 156;
        goto LABEL_88;
      }

      if (*(v23 + 200))
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Perform Degraded Fw update\n");
        sub_297E54734(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldGetVersionCb : DnldGenNtfCb");
        (*(v40 + 200))(*(v40 + 8), *(v40 + 208), 140, 0);
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Starting degraded host has not registered for download notification.");
      }
    }

    v21 = 0;
LABEL_88:
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Forcing FW update even if the version is same !!\n");
    *(v40 + 168) = 0;
    goto LABEL_23;
  }

LABEL_59:
  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Version Check Successful\n");
  if (*(v40 + 92) == 1)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Updating Fw & Mw Versions..");
    v21 = 0;
    v32 = v40;
    *(v40 + 104) = v14;
    *(v32 + 106) = HIWORD(v42);
  }

  else
  {
    if (*(v40 + 836) == 1)
    {
      v33 = v16;
    }

    else
    {
      v33 = 1;
    }

    if ((v33 & 1) == 0)
    {
      if (*(a1 + 6079) == 1 || *(a1 + 6082) == 1)
      {
        *(v40 + 836) = 0;
        v21 = 156;
        goto LABEL_69;
      }

      if (*(v40 + 200))
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Perform Degraded Fw update\n");
        sub_297E54734(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldGetVersionCb : DnldGenNtfCb");
        (*(v40 + 200))(*(v40 + 8), *(v40 + 208), 140, 0);
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Starting degraded host has not registered for download notification.");
      }
    }

    v21 = 0;
  }

LABEL_69:
  v34 = v40;
  *(v40 + 117) = v12;
  *(v34 + 116) = v11;
  if (v13 != 3 && (v38 & 0xFFFFFFFD) == 4 && v10 == 3)
  {
    v37 = 1;
  }

  else
  {
    v37 = v13;
  }

  *(v34 + 118) = v37;
LABEL_23:
  sub_297E4DFAC(2, a1, 4, 5u, "phDnldNfc_DnldGetVersionCb");
  return v21;
}

uint64_t sub_297E8009C(uint64_t a1)
{
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phDnldNfc_DnldWrite");
  if (!a1)
  {
    v8 = "phDnldNfc_DnldWrite - Invalid libnfc context!!";
    v10 = 2;
    v9 = 0;
    goto LABEL_13;
  }

  sub_297E67F6C(*(a1 + 3000), &v12);
  sub_297E5D114(*(a1 + 3000), &v13);
  if (!v13 || !v12 || !v12[6])
  {
    v8 = "phDnldNfc_DnldWrite - Invalid IOCTL/DNLD/DNLDCORE context!!";
    v9 = a1 + 9792;
    v10 = 1;
LABEL_13:
    sub_297E4E0B0(v10, v9, 4, 1u, v8);
    v5 = 255;
    goto LABEL_14;
  }

  if (*(v13 + 88) == 1 && !*(v13 + 89))
  {
    v5 = 0;
    goto LABEL_14;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldWrite - Trigger Download write Packets..");
  v3 = v12;
  v2 = v13;
  *(v13 + 92) = 1;
  v4 = *v3;
  v5 = 255;
  v6 = "Download Image Primitives extraction failed!!";
  if (!*v3)
  {
    goto LABEL_16;
  }

  v7 = *(v3 + 2);
  if (!v7)
  {
    goto LABEL_16;
  }

  *(v2 + 752) = 0;
  *(v2 + 760) = 0;
  *(v2 + 728) = 192;
  *(v2 + 736) = v4;
  *(v2 + 744) = v7;
  *(v2 + 768) = *(v2 + 836);
  *(v2 + 732) = *(v2 + 844);
  v5 = sub_297F0FD90(v3[6], v2 + 728, sub_297E5BA84, a1);
  if (v5 != 13)
  {
    v6 = "Write Request Failed!!";
LABEL_16:
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v6);
    *(v13 + 108) = -1010588251;
    goto LABEL_14;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Write Request submitted successfully");
LABEL_14:
  sub_297E4DFAC(2, a1, 4, 5u, "phDnldNfc_DnldWrite");
  return v5;
}

uint64_t sub_297E80280(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phDnldNfc_DnldWriteCb");
  if (!a1)
  {
    v5 = "phDnldNfc_DnldWriteCb: Invalid LIBNFC context!!";
    v6 = 2;
    v7 = 0;
LABEL_12:
    sub_297E4E0B0(v6, v7, 4, 1u, v5);
    goto LABEL_13;
  }

  sub_297E5D114(*(a1 + 3000), &v11);
  v4 = v11;
  if (!v11)
  {
    v5 = "phDnldNfc_DnldWriteCb: Invalid IOCTL context!!";
    v7 = a1 + 9792;
LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  if (!a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldWriteCb - Request Successful");
    v9 = v11;
    if (*(v11 + 92) == 1)
    {
      *(v11 + 108) = -1515863101;
    }

    if (*(v9 + 100) == 1)
    {
      *(v9 + 100) = 0;
    }

    if (*(v9 + 836) != 1)
    {
      a2 = 0;
      goto LABEL_13;
    }

    phOsalNfc_SetMemory();
    if (*(v11 + 192) == 1)
    {
      a2 = phTmlNfc_IoCtl();
      if (a2)
      {
LABEL_25:
        v5 = "phDnldNfc_DnldWriteCb [Degraded Fw Update] - NFCC Reset Failed";
        v7 = a1 + 9792;
        goto LABEL_11;
      }

      v10 = sub_297EA76A4(*(a1 + 9792), *(v11 + 8));
    }

    else
    {
      v10 = phTmlNfc_IoCtl();
    }

    a2 = v10;
    if (!v10)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "phDnldNfc_DnldWriteCb [Degraded Fw Update] - NFCC Reset Successful");
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  if (*(v11 + 92) == 1)
  {
    *(v11 + 108) = -1010588251;
  }

  if (a2 == 21)
  {
    *(v4 + 88) = 1;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phDnldNfc_DnldWriteCb - Request Failed!!");
  a2 = 255;
LABEL_13:
  sub_297E4DFAC(2, a1, 4, 5u, "phDnldNfc_DnldWriteCb");
  return a2;
}

uint64_t sub_297E80488(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phDnldNfc_DnldChkIntegrity");
  if (!a1)
  {
    v5 = "phDnldNfc_DnldChkIntegrity: Invalid LIBNFC context!!";
    v6 = 2;
    v7 = 0;
LABEL_9:
    sub_297E4E0B0(v6, v7, 4, 1u, v5);
    goto LABEL_10;
  }

  sub_297E67F6C(*(a1 + 3000), &v14);
  sub_297E5D114(*(a1 + 3000), &v15);
  v4 = v15;
  if (!v15 || !v14)
  {
    v5 = "phDnldNfc_DnldChkIntegrity: Invalid IOCTL/DNLD context!!";
LABEL_8:
    v7 = a1 + 9792;
    v6 = 1;
    goto LABEL_9;
  }

  if (*(v15 + 88) != 1)
  {
    v9 = *(v15 + 96);
    if (*(v15 + 89) == 1)
    {
      if (v9 != 241)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phDnldNfc_DnldChkIntegrity: Previous Upload session is open..Cannot issue Check Integrity Cmd!!");
        goto LABEL_5;
      }
    }

    else if (v9 != 241)
    {
      v10 = *(v15 + 116);
      goto LABEL_17;
    }

    v10 = **(v15 + 64);
    *(v15 + 116) = v10;
LABEL_17:
    v11 = sub_297E7F0C8(*(v4 + 8), v10, *(v4 + 118));
    v12 = 3;
    phOsalNfc_SetMemory();
    if (v11 <= 1)
    {
      *(v15 + 168) = 0;
      phOsalNfc_MemCopy();
      phOsalNfc_MemCopy();
      v12 = 7;
    }

    v13 = v15;
    *(v15 + 752) = v15 + 471;
    *(v13 + 760) = 250;
    *(v13 + 728) = 224;
    *(v13 + 736) = v13 + 216;
    *(v13 + 744) = v12;
    *(v13 + 768) = 0;
    a2 = sub_297F0FD90(*(v14 + 48), v13 + 728, sub_297E5BA84, a1);
    if (a2 == 13)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "CheckIntegrity Request submitted successfully");
      goto LABEL_10;
    }

    v5 = "phDnldNfc_DnldChkIntegrity: Check Integrity Request Failed!!";
    goto LABEL_8;
  }

LABEL_5:
  a2 = 0;
LABEL_10:
  sub_297E4DFAC(2, a1, 4, 5u, "phDnldNfc_DnldChkIntegrity");
  return a2;
}

uint64_t sub_297E806E4(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v21 = 0;
  v20 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phDnldNfc_DnldChkIntegrityCb");
  if (!a1)
  {
    v13 = "phDnldNfc_DnldChkIntegrityCb: Invalid LIBNFC context!!";
    v14 = 2;
    v15 = 0;
LABEL_17:
    sub_297E4E0B0(v14, v15, 4, 1u, v13);
    v12 = 255;
    goto LABEL_18;
  }

  sub_297E5D114(*(a1 + 3000), &v21);
  if (!v21)
  {
    v13 = "phDnldNfc_DnldChkIntegrityCb: Invalid IOCTL context!!";
    v15 = a1 + 9792;
LABEL_16:
    v14 = 1;
    goto LABEL_17;
  }

  if (a2 || !a3)
  {
    v13 = "phDnldNfc_DnldChkIntegrityCb - Request Failed!!";
    v15 = a1 + 9792;
    goto LABEL_16;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldChkIntegrityCb - Request Successful");
  v6 = sub_297E7F0C8(*(v21 + 8), *(v21 + 116), *(v21 + 118));
  if (v6 <= 1)
  {
    v7 = 31;
  }

  else
  {
    v7 = 135;
  }

  if (v7 == *(a3 + 2) && *a3)
  {
    v8 = v6;
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldChkIntegrityCb - Valid Resp Buff!!...\n");
    v9 = **a3;
    if (v8 < 2)
    {
      v20 = **a3;
      if (*(v21 + 832) - 252 >= 3)
      {
        v12 = sub_297E81984(*(a1 + 3000), v9);
      }

      else
      {
        v12 = 0;
      }

      LOBYTE(v9) = 0;
      LOBYTE(v10) = 0;
    }

    else
    {
      v10 = (*a3)[1];
      phOsalNfc_MemCopy();
      v11 = *(v21 + 832);
      if ((v11 - 252) >= 3)
      {
        if (v8 == 2)
        {
          v17 = *(a1 + 3000);
          if ((v11 - 161) > 0x1E)
          {
            v18 = sub_297E815DC(v17, v9, v10, 0);
          }

          else
          {
            v18 = phLibNfc_Verify_3_0_CrcStatus_NewLayout(v17, v9, v10, 0);
          }
        }

        else
        {
          v18 = sub_297E80990(v21, v9, v10, 0, v8);
        }

        v12 = v18;
      }

      else
      {
        v12 = 0;
      }
    }

    v19 = v21;
    if (*(v21 + 96) == 241)
    {
      *(v21 + 95) = v9;
      *(v19 + 169) = v10;
      *(v19 + 172) = v20;
      *(v19 + 176) = v12;
      v12 = 0;
    }

    phOsalNfc_MemCopy();
    if (v12 == 255)
    {
      *(v21 + 168) = 1;
    }
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phDnldNfc_DnldChkIntegrityCb: Rsp Buff Invalid...\n");
    v12 = 0;
  }

LABEL_18:
  sub_297E4DFAC(2, a1, 4, 5u, "phDnldNfc_DnldChkIntegrityCb");
  return v12;
}

uint64_t sub_297E80990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  sub_297E4E1B4(3, a1, 4, 5u, "phLibNfc_Verify_4_0_B0_ProcChkIntgRsp");
  if (a1)
  {
    if ((v8 & 0xFE) == 8 && a5 == 3 || (v10 = a5 - 8, (v8 & 0xFE) == 2) && v10 <= 2)
    {
      if (v8 != 2)
      {
        if (v8 == 9)
        {
          if (*(a1 + 94) >= 3u)
          {
            goto LABEL_10;
          }

          goto LABEL_25;
        }

        if (v8 != 8)
        {
          goto LABEL_25;
        }
      }

      if (*(a1 + 94) > 1u)
      {
LABEL_10:
        sub_297E4E0B0(0, a1 + 8, 4, 1u, "phLibNfc_Verify_4_0_B0_ProcChkIntgRsp - Failure to recover Customer/Trim area...\n");
        LOWORD(v11) = 255;
LABEL_26:
        sub_297E96818(*(a1 + 8), 34);
        goto LABEL_27;
      }

LABEL_25:
      *(a1 + 95) = v8;
      LOWORD(v11) = 84;
      goto LABEL_26;
    }

    if (v10 < 2)
    {
      v12 = *(a1 + 832);
      if ((v12 - 75) >= 0x35 && (v12 - 228) > 0x16)
      {
        v33 = *(a1 + 8);
        sub_297E4E1B4(0, &v33, 4, 5u, "phLibNfc_Verify_5_0_CrcStatus");
        if ((v7 + v8) > 0x20)
        {
          LOWORD(v11) = 255;
        }

        else
        {
          if (v7)
          {
            v13 = 0;
            v11 = 0;
            v14 = 1;
            do
            {
              if ((v14 & v6) == 0)
              {
                v15 = "AT Config Area Crc is NOT OK!!";
                if (v13 <= 3)
                {
                  v15 = off_29EE86820[v13];
                }

                sub_297E4E0B0(0, &v33, 4, 1u, v15);
                v11 = 255;
              }

              v14 *= 2;
              ++v13;
            }

            while (v7 != v13);
          }

          else
          {
            v11 = 0;
          }

          if (v8)
          {
            v23 = 1;
            v24 = 0x80000000;
            do
            {
              if ((v24 & v6) == 0)
              {
                switch(v23)
                {
                  case 1:
                    v25 = "Protected Area Crc is NOT OK!!";
                    goto LABEL_76;
                  case 2:
                    v25 = "Anti-tearing protected Area Crc is NOT OK!!";
                    goto LABEL_76;
                  case 3:
                    v26 = "Customer Area Crc is NOT OK!!";
                    goto LABEL_67;
                  case 4:
                    v26 = "NDEF Area Crc is NOT OK!!";
LABEL_67:
                    sub_297E4E0B0(0, &v33, 4, 4u, v26);
                    break;
                  case 5:
                    v25 = "Mirrored User Flash Area Crc is NOT OK!!";
                    goto LABEL_76;
                  case 6:
                    v25 = "Mirrored User Area Protected Crc is NOT OK!!";
                    goto LABEL_76;
                  case 7:
                    v25 = "Mirrored User Area Crc is NOT OK!!";
                    goto LABEL_76;
                  case 8:
                    v25 = "Log Area Crc is NOT OK!!";
                    goto LABEL_76;
                  case 9:
                    v25 = "Rom Area Crc is NOT OK!!";
                    goto LABEL_76;
                  case 10:
                    v25 = "User Area Crc is NOT OK!!";
                    goto LABEL_76;
                  case 11:
                    v25 = "User Area Protected Crc is NOT OK!!";
                    goto LABEL_76;
                  case 12:
                    v25 = "Routing Table Area Crc is NOT OK!!";
                    goto LABEL_76;
                  case 13:
                    v25 = "HLM debug logging Area Crc is NOT OK!!";
                    goto LABEL_76;
                  case 14:
                    v25 = "RF User Area Crc is NOT OK!!";
                    goto LABEL_76;
                  default:
                    v25 = "End Marker Area Crc is NOT OK!!";
LABEL_76:
                    sub_297E4E0B0(0, &v33, 4, 1u, v25);
                    v11 = 255;
                    break;
                }
              }

              v24 >>= 1;
              ++v23;
            }

            while (v23 - v8 != 1);
          }

          if (!v11)
          {
            goto LABEL_80;
          }
        }

        sub_297E96818(v33, 34);
LABEL_80:
        v27 = "phLibNfc_Verify_5_0_CrcStatus";
LABEL_112:
        sub_297E4DFAC(0, &v33, 4, 5u, v27);
        goto LABEL_27;
      }

      v18 = phLibNfc_Verify_5_0_CrcStatus_NewLayout(*(a1 + 8), v8, v7, v6);
LABEL_54:
      LOWORD(v11) = v18;
      goto LABEL_27;
    }

    if (a5 == 10)
    {
      v17 = *(a1 + 832);
      if (v17 - 27 >= 0x25)
      {
        if (v17 - 187 >= 0x25)
        {
          v18 = phLibNfc_Verify_5_1_CrcStatus(*(a1 + 8), v8, v7, v6);
          goto LABEL_54;
        }

        if (v17 >= 0xBC)
        {
          goto LABEL_31;
        }
      }

      else if (v17 - 28 < 0x24)
      {
LABEL_31:
        v18 = phLibNfc_Verify_5_1_CrcStatus_NewHlmLayout(*(a1 + 8), v8, v7, v6);
        goto LABEL_54;
      }

      v18 = phLibNfc_Verify_5_1_CrcStatus_NewLayout(*(a1 + 8), v8, v7, v6);
      goto LABEL_54;
    }

    v19 = *(a1 + 116);
    if ((v19 - 177) > 1)
    {
      if (v19 != 186 || (*(a1 + 832) & 0xE0) != 0xA0)
      {
LABEL_42:
        v33 = *(a1 + 8);
        sub_297E4E1B4(0, &v33, 4, 5u, "phLibNfc_Verify_4_0_CrcStatus");
        if ((v7 + v8) > 0x20)
        {
          LOWORD(v11) = 255;
        }

        else
        {
          if (v7)
          {
            v20 = 0;
            v11 = 0;
            v21 = 1;
            do
            {
              if ((v21 & v6) == 0)
              {
                v22 = "Function Table Area Crc is NOT OK!!";
                if (v20 <= 2)
                {
                  v22 = off_29EE86808[v20];
                }

                sub_297E4E0B0(0, &v33, 4, 1u, v22);
                v11 = 255;
              }

              v21 *= 2;
              ++v20;
            }

            while (v7 != v20);
          }

          else
          {
            v11 = 0;
          }

          if (v8)
          {
            v28 = -v8;
            v29 = 1;
            v30 = 0x80000000;
            do
            {
              if ((v30 & v6) == 0)
              {
                switch(v29)
                {
                  case 1:
                    v31 = "Anti-tearing protected Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 2:
                    v31 = "Anti-tearing RSAKEY Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 3:
                    v31 = "Protected Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 4:
                    v31 = "RSAKEY Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 5:
                    v31 = "ROM Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 6:
                    v31 = "NDEF/LOGGING Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 7:
                    v31 = "Mirrored User Area Protected Crc is NOT OK!!";
                    goto LABEL_104;
                  case 8:
                    v31 = "Mirrored User Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 9:
                    v32 = "Trim Area Crc is NOT OK!!";
                    goto LABEL_108;
                  case 10:
                    v32 = "Customer Area Crc is NOT OK!!";
                    goto LABEL_108;
                  case 11:
                    v31 = "User Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 12:
                    v31 = "RF User Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 13:
                    v32 = "New Banned Area Crc is NOT OK!!";
LABEL_108:
                    sub_297E4E0B0(0, &v33, 4, 4u, v32);
                    break;
                  case 14:
                    v31 = "User Area Protected Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 15:
                    v31 = "Anti-tearing User Area Protected Crc is NOT OK!!";
                    goto LABEL_104;
                  case 16:
                    v31 = "Anti-tearing Mirrored User Area Protected Crc is NOT OK!!";
                    goto LABEL_104;
                  case 17:
                    v31 = "Routing Table Area Crc is NOT OK!!";
                    goto LABEL_104;
                  case 18:
                    v31 = "HLM debug logging Area Crc is NOT OK!!";
                    goto LABEL_104;
                  default:
                    v31 = "End Marker Area Crc is NOT OK!!";
LABEL_104:
                    sub_297E4E0B0(0, &v33, 4, 1u, v31);
                    v11 = 255;
                    break;
                }
              }

              v30 >>= 1;
              ++v29;
            }

            while (v28 + v29 != 1);
          }

          if (!v11)
          {
            goto LABEL_111;
          }
        }

        sub_297E96818(v33, 34);
LABEL_111:
        v27 = "phLibNfc_Verify_4_0_CrcStatus";
        goto LABEL_112;
      }
    }

    else if (*(a1 + 832) - 161 >= 0x1F)
    {
      goto LABEL_42;
    }

    v18 = phLibNfc_Verify_4_0_CrcStatus_NewLayout(*(a1 + 8), v8, v7, v6);
    goto LABEL_54;
  }

  sub_297E4E0B0(3, 0, 4, 1u, "phLibNfc_Verify_4_0_B0_ProcChkIntgRsp: Invalid IOCTL context!!");
  LOWORD(v11) = 255;
LABEL_27:
  sub_297E4DFAC(3, a1, 4, 5u, "phLibNfc_Verify_4_0_B0_ProcChkIntgRsp");
  return v11;
}

uint64_t phLibNfc_Verify_3_0_CrcStatus_NewLayout(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_Verify_3_0_CrcStatus_NewLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_40:
    sub_297E96818(v16, 34);
    goto LABEL_41;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "Function Table Area Crc is NOT OK!!";
      if (v7 <= 2)
      {
        v10 = off_29EE86808[v7];
      }

      sub_297E4E0B0(0, &v16, 4, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        switch(v11)
        {
          case 1:
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
            goto LABEL_37;
          case 2:
            v13 = "Anti-tearing RSAKEY Area Crc is NOT OK!!";
            goto LABEL_37;
          case 3:
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_37;
          case 4:
            v13 = "RSAKEY Area Crc is NOT OK!!";
            goto LABEL_37;
          case 5:
            v13 = "ROM Area Crc is NOT OK!!";
            goto LABEL_37;
          case 6:
            v13 = "RAM AO Only Area Crc is NOT OK!!";
            goto LABEL_37;
          case 7:
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 8:
            v13 = "Mirrored User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 9:
            v14 = "Trim Area Crc is NOT OK!!";
            goto LABEL_35;
          case 10:
            v14 = "Customer Area Crc is NOT OK!!";
            goto LABEL_35;
          case 11:
            v13 = "NDEF/LOGGING Area Crc is NOT OK!!";
            goto LABEL_37;
          case 12:
            v13 = "User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 13:
            v13 = "RF User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 14:
            v14 = "New Banned Area Crc is NOT OK!!";
LABEL_35:
            sub_297E4E0B0(0, &v16, 4, 4u, v14);
            break;
          case 15:
            v13 = "User Area Protected Area Crc is NOT OK!!";
            goto LABEL_37;
          case 16:
            v13 = "Anti-tearing User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 17:
            v13 = "Anti-tearing Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 18:
            v13 = "Routing Table Area Crc is NOT OK!!";
            goto LABEL_37;
          case 19:
            v13 = "HLM debug logging Area Crc is NOT OK!!";
            goto LABEL_37;
          default:
            v13 = "End Marker Area Crc is NOT OK!!";
LABEL_37:
            sub_297E4E0B0(0, &v16, 4, 1u, v13);
            v8 = 255;
            break;
        }
      }

      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_39:
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_41:
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Verify_3_0_CrcStatus_NewLayout");
  return v8;
}

uint64_t sub_297E815DC(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_Verify_3_0_CrcStatus");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_40:
    sub_297E96818(v16, 34);
    goto LABEL_41;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "Function Table Area Crc is NOT OK!!";
      if (v7 <= 2)
      {
        v10 = off_29EE86808[v7];
      }

      sub_297E4E0B0(0, &v16, 4, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        switch(v11)
        {
          case 1:
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
            goto LABEL_34;
          case 2:
            v13 = "Anti-tearing RSAKEY Area Crc is NOT OK!!";
            goto LABEL_34;
          case 3:
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_34;
          case 4:
            v13 = "RSAKEY Area Crc is NOT OK!!";
            goto LABEL_34;
          case 5:
            v13 = "ROM Area Crc is NOT OK!!";
            goto LABEL_34;
          case 6:
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_34;
          case 7:
            v13 = "Mirrored User Area Crc is NOT OK!!";
            goto LABEL_34;
          case 8:
            v14 = "Trim Area Crc is NOT OK!!";
            goto LABEL_38;
          case 9:
            v14 = "Customer Area Crc is NOT OK!!";
            goto LABEL_38;
          case 10:
            v13 = "NDEF/LOGGING Area Crc is NOT OK!!";
            goto LABEL_34;
          case 11:
            v13 = "User Area Crc is NOT OK!!";
            goto LABEL_34;
          case 12:
            v13 = "RF User Area Crc is NOT OK!!";
            goto LABEL_34;
          case 13:
            v14 = "New Banned Area Crc is NOT OK!!";
LABEL_38:
            sub_297E4E0B0(0, &v16, 4, 4u, v14);
            break;
          case 14:
            v13 = "User Area Protected Area Crc is NOT OK!!";
            goto LABEL_34;
          case 15:
            v13 = "Anti-tearing User Area Protected Crc is NOT OK!!";
            goto LABEL_34;
          case 16:
            v13 = "Anti-tearing Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_34;
          case 17:
            v13 = "Routing Table Area Crc is NOT OK!!";
            goto LABEL_34;
          case 18:
            v13 = "HLM debug logging Area Crc is NOT OK!!";
            goto LABEL_34;
          default:
            v13 = "End Marker Area Crc is NOT OK!!";
LABEL_34:
            sub_297E4E0B0(0, &v16, 4, 1u, v13);
            v8 = 255;
            break;
        }
      }

      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_39:
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_41:
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Verify_3_0_CrcStatus");
  return v8;
}

uint64_t sub_297E81984(uint64_t a1, int a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4, 5u, "phLibNfc_VerifyCrcStatus");
  v3 = 0;
  v4 = 0;
  v5 = 1;
  while (1)
  {
    if ((v5 & a2) != 0)
    {
      goto LABEL_17;
    }

    if (v4 > 2)
    {
      break;
    }

    if (!v4)
    {
      v6 = "User Data Crc is NOT OK!!";
      goto LABEL_16;
    }

    if (v4 != 1)
    {
      if (v4 != 2)
      {
        goto LABEL_20;
      }

      v6 = "Protected Data Crc is NOT OK!!";
      goto LABEL_16;
    }

    sub_297E4E0B0(0, &v9, 4, 4u, "Trim Data Crc is NOT OK!!");
LABEL_17:
    v5 = 2 * v5;
    if (v4++ >= 6)
    {
      goto LABEL_19;
    }
  }

  switch(v4)
  {
    case 3:
      v6 = "Patch Code Crc is NOT OK!!";
      goto LABEL_16;
    case 4:
      v6 = "Function Code Crc is NOT OK!!";
      goto LABEL_16;
    case 5:
      v6 = "Patch Table Crc is NOT OK!!";
LABEL_16:
      sub_297E4E0B0(0, &v9, 4, 1u, v6);
      v3 = 255;
      goto LABEL_17;
  }

LABEL_20:
  sub_297E4E0B0(0, &v9, 4, 1u, "Function Table Crc is NOT OK!!");
  v3 = 255;
LABEL_19:
  sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_VerifyCrcStatus");
  return v3;
}

uint64_t sub_297E81B54(uint64_t a1, int a2, unsigned __int8 **a3)
{
  v24 = 0;
  v23 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phDnldNfc_DnldFlashIntegrityCb");
  if (a1)
  {
    sub_297E5D114(*(a1 + 3000), &v24);
    if (v24)
    {
      if (a2 || !a3)
      {
        v14 = "phDnldNfc_DnldFlashIntegrityCb - Request Failed!!";
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldFlashIntegrityCb - Request Successful");
        v6 = sub_297E7F0C8(*(v24 + 8), *(v24 + 116), *(v24 + 118));
        if (v6 <= 1)
        {
          v7 = 31;
        }

        else
        {
          v7 = 135;
        }

        if (v7 == *(a3 + 2) && *a3)
        {
          v8 = v6;
          sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phDnldNfc_DnldFlashIntegrityCb - Valid Resp Buff!!...\n");
          v9 = *a3;
          v10 = **a3;
          if (v8 < 2)
          {
            v23 = v10;
            if (*(v24 + 832) - 252 >= 3)
            {
              v13 = sub_297E83D84(*(a1 + 3000), v10);
            }

            else
            {
              v13 = 0;
            }

            LOBYTE(v11) = 4;
            LOBYTE(v10) = 2;
            goto LABEL_29;
          }

          v11 = *(v9 + 1);
          phOsalNfc_MemCopy();
          v12 = *(v24 + 832);
          if (v12 - 252 < 3)
          {
            v13 = 0;
LABEL_29:
            v17 = 0;
            v20 = v24;
            *(v24 + 95) = v10;
            *(v20 + 169) = v11;
            *(v20 + 172) = v23;
            *(v20 + 176) = v13;
            goto LABEL_20;
          }

          if (v8 - 3 <= 4)
          {
            v19 = *(v24 + 116);
            if ((v19 - 177) > 1)
            {
              if ((v12 & 0xE0) != 0xA0 || v19 != 186)
              {
                goto LABEL_41;
              }
            }

            else if (v12 - 161 >= 0x1F)
            {
LABEL_41:
              v13 = sub_297E8228C(*(a1 + 3000), v10, v11, 0);
              goto LABEL_29;
            }

            v13 = phLibNfc_FlashIntg_Verify_4_0_CrcStatus_NewLayout(*(a1 + 3000), v10, v11, 0);
            goto LABEL_29;
          }

          if (v8 != 10 && (v8 & 0xE) != 8)
          {
            v21 = *(a1 + 3000);
            if (v12 - 161 > 0x1E)
            {
              v13 = sub_297E839E0(v21, v10, v11, 0);
            }

            else
            {
              v13 = phLibNfc_FlashIntg_Verify_3_0_CrcStatus_NewLayout(v21, v10, v11, 0);
            }

            goto LABEL_29;
          }

          if (v8 != 10)
          {
            v22 = *(a1 + 3000);
            if (v12 - 75 < 0x35 || v12 - 228 <= 0x16)
            {
              v13 = phLibNfc_FlashIntg_Verify_5_0_CrcStatus_NewLayout(v22, v10, v11, 0);
            }

            else
            {
              v13 = sub_297E832EC(v22, v10, v11, 0);
            }

            goto LABEL_29;
          }

          if (v12 - 27 >= 0x25)
          {
            if (v12 - 187 >= 0x25)
            {
              v13 = phLibNfc_FlashIntg_Verify_5_1_CrcStatus(*(a1 + 3000), v10, v11, 0);
              goto LABEL_29;
            }

            if (v12 >= 0xBCu)
            {
              goto LABEL_37;
            }
          }

          else if (v12 - 28 < 0x24)
          {
LABEL_37:
            v13 = phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewHlmLayout(*(a1 + 3000), v10, v11, 0);
            goto LABEL_29;
          }

          v13 = phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewLayout(*(a1 + 3000), v10, v11, 0);
          goto LABEL_29;
        }

        v14 = "phDnldNfc_DnldFlashIntegrityCb: Rsp Buff Invalid...\n";
      }

      v16 = a1 + 9792;
    }

    else
    {
      v14 = "phDnldNfc_DnldChkIntegrityCb: Invalid IOCTL context!!";
      v16 = a1 + 9792;
    }

    v15 = 1;
  }

  else
  {
    v14 = "phDnldNfc_DnldChkIntegrityCb: Invalid LIBNFC context!!";
    v15 = 2;
    v16 = 0;
  }

  sub_297E4E0B0(v15, v16, 4, 1u, v14);
  v17 = 255;
LABEL_20:
  sub_297E4DFAC(2, a1, 4, 5u, "phDnldNfc_DnldFlashIntegrityCb");
  return v17;
}

uint64_t phLibNfc_FlashIntg_Verify_4_0_CrcStatus_NewLayout(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_FlashIntg_Verify_4_0_CrcStatus_NewLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_40:
    sub_297E96818(v16, 34);
    goto LABEL_41;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_39;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "Function Table Area Crc is NOT OK!!";
      if (v7 <= 2)
      {
        v10 = off_29EE86808[v7];
      }

      sub_297E4E0B0(0, &v16, 4, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        switch(v11)
        {
          case 1:
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
            goto LABEL_28;
          case 2:
            v13 = "Anti-tearing RSAKEY Area Crc is NOT OK!!";
            goto LABEL_28;
          case 3:
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_28;
          case 4:
            v13 = "RSAKEY Area Crc is NOT OK!!";
LABEL_28:
            sub_297E4E0B0(0, &v16, 4, 1u, v13);
            v8 = 255;
            break;
          case 5:
            v14 = "ROM Area Crc is NOT OK!!";
            goto LABEL_37;
          case 6:
            v14 = "NDEF/LOGGING Area Crc is NOT OK!!";
            goto LABEL_37;
          case 7:
            v14 = "RAM AO Only Area Crc is NOT OK!!";
            goto LABEL_37;
          case 8:
            v14 = "Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 9:
            v14 = "Mirrored User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 10:
            v14 = "Trim Area Crc is NOT OK!!";
            goto LABEL_37;
          case 11:
            v14 = "Customer Area Crc is NOT OK!!";
            goto LABEL_37;
          case 12:
            v14 = "User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 13:
            v14 = "RF User Area Crc is NOT OK!!";
            goto LABEL_37;
          case 14:
            v14 = "New Banned Area Crc is NOT OK!!";
            goto LABEL_37;
          case 15:
            v14 = "User Area Protected Area Crc is NOT OK!!";
            goto LABEL_37;
          case 16:
            v14 = "Anti-tearing User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 17:
            v14 = "Anti-tearing Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_37;
          case 18:
            v14 = "Routing Table Area Crc is NOT OK!!";
            goto LABEL_37;
          case 19:
            v14 = "HLM debug logging Area Crc is NOT OK!!";
            goto LABEL_37;
          default:
            v14 = "End Marker Area Crc is NOT OK!!";
LABEL_37:
            sub_297E4E0B0(0, &v16, 4, 4u, v14);
            break;
        }
      }

      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_39:
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_41:
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_FlashIntg_Verify_4_0_CrcStatus_NewLayout");
  return v8;
}

uint64_t sub_297E8228C(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_FlashIntg_Verify_4_0_CrcStatus");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_39:
    sub_297E96818(v16, 34);
    goto LABEL_40;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_38;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "Function Table Area Crc is NOT OK!!";
      if (v7 <= 2)
      {
        v10 = off_29EE86808[v7];
      }

      sub_297E4E0B0(0, &v16, 4, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        switch(v11)
        {
          case 1:
            v13 = "Anti-tearing protected Area Crc is NOT OK!!";
            goto LABEL_28;
          case 2:
            v13 = "Anti-tearing RSAKEY Area Crc is NOT OK!!";
            goto LABEL_28;
          case 3:
            v13 = "Protected Area Crc is NOT OK!!";
            goto LABEL_28;
          case 4:
            v13 = "RSAKEY Area Crc is NOT OK!!";
LABEL_28:
            sub_297E4E0B0(0, &v16, 4, 1u, v13);
            v8 = 255;
            break;
          case 5:
            v14 = "ROM Area Crc is NOT OK!!";
            goto LABEL_36;
          case 6:
            v14 = "NDEF/LOGGING Area Crc is NOT OK!!";
            goto LABEL_36;
          case 7:
            v14 = "Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_36;
          case 8:
            v14 = "Mirrored User Area Crc is NOT OK!!";
            goto LABEL_36;
          case 9:
            v14 = "Trim Area Crc is NOT OK!!";
            goto LABEL_36;
          case 10:
            v14 = "Customer Area Crc is NOT OK!!";
            goto LABEL_36;
          case 11:
            v14 = "User Area Crc is NOT OK!!";
            goto LABEL_36;
          case 12:
            v14 = "RF User Area Crc is NOT OK!!";
            goto LABEL_36;
          case 13:
            v14 = "New Banned Area Crc is NOT OK!!";
            goto LABEL_36;
          case 14:
            v14 = "User Area Protected Area Crc is NOT OK!!";
            goto LABEL_36;
          case 15:
            v14 = "Anti-tearing User Area Protected Crc is NOT OK!!";
            goto LABEL_36;
          case 16:
            v14 = "Anti-tearing Mirrored User Area Protected Crc is NOT OK!!";
            goto LABEL_36;
          case 17:
            v14 = "Routing Table Area Crc is NOT OK!!";
            goto LABEL_36;
          case 18:
            v14 = "HLM debug logging Area Crc is NOT OK!!";
            goto LABEL_36;
          default:
            v14 = "End Marker Area Crc is NOT OK!!";
LABEL_36:
            sub_297E4E0B0(0, &v16, 4, 4u, v14);
            break;
        }
      }

      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_38:
  if (v8)
  {
    goto LABEL_39;
  }

LABEL_40:
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_FlashIntg_Verify_4_0_CrcStatus");
  return v8;
}

uint64_t phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewHlmLayout(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewHlmLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_45:
    sub_297E96818(v16, 34);
    goto LABEL_46;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_44;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v16, 4, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        if (v11 > 6)
        {
          if (v11 <= 9)
          {
            if (v11 == 7)
            {
              v13 = "Mirrored User Area Crc is NOT OK!!";
            }

            else if (v11 == 8)
            {
              v13 = "Log Area Crc is NOT OK!!";
            }

            else
            {
              v13 = "Rom Area Crc is NOT OK!!";
            }

            goto LABEL_42;
          }

          switch(v11)
          {
            case 10:
              v13 = "User Area Crc is NOT OK!!";
              goto LABEL_42;
            case 11:
              v13 = "User Area Protected Crc is NOT OK!!";
              goto LABEL_42;
            case 12:
              v13 = "HLM debug logging Area Crc is NOT OK!!";
              goto LABEL_42;
          }

LABEL_41:
          v13 = "End Marker Area Crc is NOT OK!!";
          goto LABEL_42;
        }

        if (v11 > 3)
        {
          if (v11 == 4)
          {
            v13 = "RAM AO Only Area Crc is NOT OK!!";
          }

          else if (v11 == 5)
          {
            v13 = "Mirrored User Flash Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
          }

          goto LABEL_42;
        }

        switch(v11)
        {
          case 1:
            v14 = "Protected Area Crc is NOT OK!!";
            break;
          case 2:
            v14 = "Anti-tearing protected Area Crc is NOT OK!!";
            break;
          case 3:
            v13 = "Customer Area Crc is NOT OK!!";
LABEL_42:
            sub_297E4E0B0(0, &v16, 4, 4u, v13);
            goto LABEL_43;
          default:
            goto LABEL_41;
        }

        sub_297E4E0B0(0, &v16, 4, 1u, v14);
        v8 = 255;
      }

LABEL_43:
      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_44:
  if (v8)
  {
    goto LABEL_45;
  }

LABEL_46:
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewHlmLayout");
  return v8;
}

uint64_t phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewLayout(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewLayout");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_43:
    sub_297E96818(v16, 34);
    goto LABEL_44;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_42;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v16, 4, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        if (v11 > 5)
        {
          if (v11 > 8)
          {
            switch(v11)
            {
              case 9:
                v13 = "Rom Area Crc is NOT OK!!";
                break;
              case 10:
                v13 = "User Area Crc is NOT OK!!";
                break;
              case 11:
                v13 = "User Area Protected Crc is NOT OK!!";
                break;
              default:
LABEL_39:
                v13 = "End Marker Area Crc is NOT OK!!";
                break;
            }
          }

          else if (v11 == 6)
          {
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
          }

          else if (v11 == 7)
          {
            v13 = "Mirrored User Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Log Area Crc is NOT OK!!";
          }

LABEL_40:
          sub_297E4E0B0(0, &v16, 4, 4u, v13);
          goto LABEL_41;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            v13 = "Customer Area Crc is NOT OK!!";
          }

          else if (v11 == 4)
          {
            v13 = "RAM AO Only Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Mirrored User Flash Area Crc is NOT OK!!";
          }

          goto LABEL_40;
        }

        if (v11 == 1)
        {
          v14 = "Protected Area Crc is NOT OK!!";
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_39;
          }

          v14 = "Anti-tearing protected Area Crc is NOT OK!!";
        }

        sub_297E4E0B0(0, &v16, 4, 1u, v14);
        v8 = 255;
      }

LABEL_41:
      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_42:
  if (v8)
  {
    goto LABEL_43;
  }

LABEL_44:
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus_NewLayout");
  return v8;
}

uint64_t phLibNfc_FlashIntg_Verify_5_1_CrcStatus(uint64_t a1, int a2, int a3, int a4)
{
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus");
  if ((a3 + a2) > 0x20)
  {
    LOWORD(v8) = 255;
LABEL_41:
    sub_297E96818(v16, 34);
    goto LABEL_42;
  }

  if (!a3)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  do
  {
    if ((v9 & a4) == 0)
    {
      v10 = "AT Config Area Crc is NOT OK!!";
      if (v7 <= 3)
      {
        v10 = off_29EE86820[v7];
      }

      sub_297E4E0B0(0, &v16, 4, 1u, v10);
      v8 = 255;
    }

    v9 *= 2;
    ++v7;
  }

  while (a3 != v7);
  if (a2)
  {
LABEL_13:
    v11 = 1;
    v12 = 0x80000000;
    do
    {
      if ((v12 & a4) == 0)
      {
        if (v11 > 5)
        {
          if (v11 <= 7)
          {
            if (v11 == 6)
            {
              v13 = "Mirrored User Area Crc is NOT OK!!";
            }

            else
            {
              v13 = "Log Area Crc is NOT OK!!";
            }
          }

          else
          {
            switch(v11)
            {
              case 8:
                v13 = "Rom Area Crc is NOT OK!!";
                break;
              case 9:
                v13 = "User Area Crc is NOT OK!!";
                break;
              case 10:
                v13 = "User Area Protected Crc is NOT OK!!";
                break;
              default:
LABEL_37:
                v13 = "End Marker Area Crc is NOT OK!!";
                break;
            }
          }

LABEL_38:
          sub_297E4E0B0(0, &v16, 4, 4u, v13);
          goto LABEL_39;
        }

        if (v11 > 2)
        {
          if (v11 == 3)
          {
            v13 = "Customer Area Crc is NOT OK!!";
          }

          else if (v11 == 4)
          {
            v13 = "Mirrored User Flash Area Crc is NOT OK!!";
          }

          else
          {
            v13 = "Mirrored User Area Protected Crc is NOT OK!!";
          }

          goto LABEL_38;
        }

        if (v11 == 1)
        {
          v14 = "Protected Area Crc is NOT OK!!";
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_37;
          }

          v14 = "Anti-tearing protected Area Crc is NOT OK!!";
        }

        sub_297E4E0B0(0, &v16, 4, 1u, v14);
        v8 = 255;
      }

LABEL_39:
      v12 >>= 1;
      ++v11;
      --a2;
    }

    while (a2);
  }

LABEL_40:
  if (v8)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_FlashIntg_Verify_5_1_CrcStatus");
  return v8;
}