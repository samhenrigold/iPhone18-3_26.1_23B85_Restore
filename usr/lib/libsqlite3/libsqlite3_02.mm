void *sub_1818A3B68(void *result, int a2, void *a3, uint64_t a4)
{
  if (a2 <= -12)
  {
    if (a2 <= -15)
    {
      if (a2 != -17)
      {
        if (a2 == -16)
        {
          if (a3)
          {
            if (!result[103])
            {
              v13 = *(a3 + 11) - 1;
              *(a3 + 11) = v13;
              if (!v13)
              {

                return sub_18194E094(result, a3, a3, a4);
              }
            }
          }
        }

        else if (a2 == -15)
        {

          return sub_18193A000(result, a3);
        }

        return result;
      }

      v15 = a3[1];
      if (v15)
      {
        v16 = result;
        v17 = a3;
        sub_181929C84(result, v15);
        result = v16;
        a3 = v17;
      }

      goto LABEL_52;
    }

    goto LABEL_13;
  }

  if (a2 > -9)
  {
    if (a2 == -8)
    {
      if (!a3)
      {
        return result;
      }

      if (result[103])
      {
        return result;
      }

      if ((*a3)-- != 1)
      {
        return result;
      }

      result = a3[2];
      goto LABEL_14;
    }

    if (a2 == -7)
    {
      if ((*(a3 + 4) & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_14;
    }

    if (a2 != -6)
    {
      return result;
    }

LABEL_13:
    if (!a3)
    {
      return result;
    }

LABEL_14:

    return sub_181939EC8(result, a3);
  }

  if (a2 == -11)
  {
    if (result[103])
    {
      return result;
    }

    v4 = *a3;
    v5 = *(a3 + 6) - 1;
    *(a3 + 6) = v5;
    if (v5)
    {
      return result;
    }

    v6 = a3[2];
    v7 = v4;
    if (v6)
    {
      v8 = a3;
      (*(*v6 + 32))(v6);
      a3 = v8;
      v7 = *v8;
    }

    v9 = a3[1];
    v10 = *(v9 + 16) - 1;
    *(v9 + 16) = v10;
    if (!v10)
    {
      v11 = a3;
      v12 = *(v9 + 32);
      if (v12)
      {
        v12(*(v9 + 24));
      }

      sub_181929C84(v7, v9);
      a3 = v11;
    }

    result = v4;
    goto LABEL_52;
  }

  if (a2 != -10)
  {
    return result;
  }

  if (!result[103])
  {
    if (!a3)
    {
      return result;
    }

    if ((*(a3 + 10) & 0x9000) != 0 || *(a3 + 8))
    {
      v18 = a3;
      sub_18193CA00(a3);
      a3 = v18;
    }

    result = a3[3];
LABEL_52:

    return sub_181929C84(result, a3);
  }

  return sub_18193A050(result, a3);
}

uint64_t sub_1818A3DC0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 17) || !*(a1 + 16) || a2 && *(a1 + 16) == 1)
  {
    return sub_181932F08(a1, a2, a3);
  }

  v4 = *(a1 + 8);
  if (a3)
  {
    *a3 = bswap32(*(*(v4[3] + 80) + 40));
  }

  if (a2 && (v5 = *v4, v6 = *(*a1 + 796), *(v5 + 128) < v6) && *(v5 + 10))
  {
    return sub_181935F24(v5, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1818A3E30(uint64_t *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = a1[43];
  if (v2)
  {
LABEL_2:
    v49 = 0;
    if ((*(v2 + 60) & 0x80000000) == 0)
    {
      if (*(v2 + 64))
      {
        if (!*(v2 + 63))
        {
          (*(**(v2 + 8) + 112))(*(v2 + 8), 0, 1, 9);
        }

        *(v2 + 64) = 0;
        *(v2 + 124) = 0;
        *(v2 + 67) = 0;
      }

      if (!*(v2 + 63))
      {
        (*(**(v2 + 8) + 112))(*(v2 + 8), (*(v2 + 60) + 3), 1, 5);
      }

      *(v2 + 60) = -1;
      v2 = a1[43];
    }

    v50 = 0;
    v3 = *(v2 + 144);
    if (v3)
    {
      v9 = *v3 != *(v2 + 72) || v3[1] != *(v2 + 80) || v3[2] != *(v2 + 88) || v3[3] != *(v2 + 96) || v3[4] != *(v2 + 104) || v3[5] != *(v2 + 112);
      v10 = *(v2 + 160);
      if (v10)
      {
        v11 = *(v10 + 788);
        if (v11)
        {
          LODWORD(v51) = v11;
          v12 = *(v2 + 8);
          if (*v12)
          {
            (*(*v12 + 80))(v12, 34, &v51);
          }
        }
      }

      if (*(v2 + 63))
      {
        v13 = 0;
      }

      else
      {
        v13 = (*(**(v2 + 8) + 112))(*(v2 + 8), 1, 1, 6);
      }

      LODWORD(v51) = 0;
      v17 = *(v2 + 8);
      if (*v17)
      {
        v18 = v13;
        (*(*v17 + 80))(*(v2 + 8), 34, &v51);
        v13 = v18;
      }

      if (v13)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v9 = 0;
    }

    do
    {
      v13 = sub_1818A4DD0(v2, &v49, 0, &v50);
    }

    while (v13 == -1);
    if (!v3 || v13)
    {
      if (!v3 || *(v2 + 63))
      {
        goto LABEL_87;
      }
    }

    else if (*v3 == *(v2 + 72) && v3[1] == *(v2 + 80) && v3[2] == *(v2 + 88) && v3[3] == *(v2 + 96) && v3[4] == *(v2 + 104) && v3[5] == *(v2 + 112))
    {
      v13 = 0;
      if (*(v2 + 63))
      {
        goto LABEL_87;
      }
    }

    else if (v3[4] == *(v2 + 104) && *(v3 + 4) >= *(**(v2 + 48) + 128))
    {
      v13 = 0;
      v30 = *v3;
      v31 = *(v3 + 2);
      *(v2 + 88) = *(v3 + 1);
      *(v2 + 104) = v31;
      *(v2 + 72) = v30;
      v49 = v9;
      *(v2 + 120) = 1;
      if (*(v2 + 63))
      {
        goto LABEL_87;
      }
    }

    else
    {
      *(v2 + 120) = 1;
      if ((*(v2 + 60) & 0x80000000) == 0)
      {
        if (*(v2 + 64))
        {
          if (!*(v2 + 63))
          {
            (*(**(v2 + 8) + 112))(*(v2 + 8), 0, 1, 9);
          }

          *(v2 + 64) = 0;
          *(v2 + 124) = 0;
          *(v2 + 67) = 0;
        }

        if (!*(v2 + 63))
        {
          (*(**(v2 + 8) + 112))(*(v2 + 8), (*(v2 + 60) + 3), 1, 5);
        }

        *(v2 + 60) = -1;
        v13 = 769;
        if (!*(v2 + 63))
        {
          goto LABEL_86;
        }

LABEL_87:
        if (v13 | v49)
        {
LABEL_88:
          v26 = v13;
          sub_181934D80(a1);
          if (*(a1 + 27))
          {
            (*(*a1[9] + 144))(a1[9], 0, 0);
          }

          v16 = v26;
          goto LABEL_92;
        }

LABEL_91:
        v16 = 0;
        goto LABEL_92;
      }

      v13 = 769;
      if (*(v2 + 63))
      {
        goto LABEL_87;
      }
    }

LABEL_86:
    v24 = *(v2 + 8);
    v25 = v13;
    (*(*v24 + 112))(v24, 1, 1, 5);
    v13 = v25;
    goto LABEL_87;
  }

  if (*(a1 + 21))
  {
    goto LABEL_91;
  }

  while (1)
  {
    v14 = *(a1 + 22);
    if (v14 != 5 && v14 != 0)
    {
      if (v14 <= 1)
      {
        goto LABEL_115;
      }

      goto LABEL_147;
    }

    if (*(a1 + 17))
    {
      goto LABEL_47;
    }

    v16 = (*(*a1[9] + 56))(a1[9], 1);
    if (v16 != 5)
    {
      break;
    }

    if (!(a1[29])(a1[30]))
    {
      v16 = 5;
      goto LABEL_94;
    }
  }

  if (v16)
  {
    goto LABEL_93;
  }

  v14 = *(a1 + 22);
LABEL_47:
  if (v14 == 5)
  {
    goto LABEL_147;
  }

  *(a1 + 22) = 1;
LABEL_115:
  v32 = *a1;
  v50 = 1;
  v33 = *a1[10];
  if (!v33)
  {
    v16 = (*(v32 + 56))(v32, a1[28], 0, &v50);
    if (v16 || v50 == 0)
    {
      if (v16)
      {
        goto LABEL_94;
      }

      goto LABEL_192;
    }
  }

  v49 = 0;
  v16 = (*(*a1[9] + 72))(a1[9], &v49);
  if (!(v16 | v49))
  {
    v36 = a1[43];
    if (!v36 || *(v36 + 60) < 0 || (LODWORD(v36) = *(v36 + 92), !v36))
    {
      v16 = a1[9];
      v36 = *v16;
      if (!*v16)
      {
        goto LABEL_134;
      }

      v51 = 0;
      v16 = (*(v36 + 48))();
      if (v16)
      {
        goto LABEL_94;
      }

      v36 = (v51 + a1[25] - 1) / a1[25];
    }

    if (v36 > *(a1 + 47))
    {
      *(a1 + 47) = v36;
LABEL_138:
      if (!v33)
      {
        LODWORD(v51) = *(a1 + 45) & 0x1700000 | 0x801;
        v16 = (*(v32 + 40))(v32, a1[28], a1[10]);
        if (v16 == 14)
        {
          goto LABEL_147;
        }

        if (v16)
        {
          goto LABEL_124;
        }
      }

      LOBYTE(v51) = 0;
      LODWORD(v16) = (*(*a1[10] + 16))(a1[10], &v51, 1, 0);
      if (v16 == 522)
      {
        v16 = 0;
      }

      else
      {
        v16 = v16;
      }

      if (!v33)
      {
        v38 = a1[10];
        if (*v38)
        {
          v39 = v16;
          (*(*v38 + 8))(a1[10]);
          v16 = v39;
          *v38 = 0;
        }
      }

      v35 = v51 == 0;
      if (!v16)
      {
        goto LABEL_146;
      }

      goto LABEL_94;
    }

LABEL_134:
    if (v33)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36 == 0;
    }

    if (!v37)
    {
      goto LABEL_138;
    }

    if (off_1EA831A10)
    {
      v16 = off_1EA831A10(v16);
    }

    v40 = *(a1 + 22);
    if (v40 > 5 || ((1 << v40) & 0x23) == 0)
    {
      goto LABEL_160;
    }

    if (*(a1 + 17))
    {
      if (v40 != 5)
      {
LABEL_159:
        *(a1 + 22) = 2;
      }
    }

    else
    {
      v16 = (*(*a1[9] + 56))(a1[9], 2);
      if (v16)
      {
LABEL_177:
        if (off_1EA831A18)
        {
          off_1EA831A18(v16);
        }

        goto LABEL_192;
      }

      if (*(a1 + 22) != 5)
      {
        goto LABEL_159;
      }
    }

LABEL_160:
    v41 = *(v32 + 48);
    if (v41)
    {
      v16 = v41(v32, a1[28], 0);
    }

    if (!*(a1 + 8))
    {
      v16 = sub_181933E64(a1, 1);
    }

    goto LABEL_177;
  }

LABEL_124:
  v35 = 1;
  if (v16)
  {
    goto LABEL_94;
  }

LABEL_146:
  if (v35)
  {
    goto LABEL_192;
  }

LABEL_147:
  if (*(a1 + 18))
  {
    v16 = 776;
    goto LABEL_94;
  }

  v16 = sub_181933DD4(a1, 4);
  if (v16)
  {
    goto LABEL_94;
  }

  if (*a1[10])
  {
    goto LABEL_151;
  }

  if (*(a1 + 9) == 2)
  {
    v16 = 0;
  }

  else
  {
    v42 = *a1;
    LODWORD(v51) = 0;
    v16 = (*(v42 + 56))(v42, a1[28], 0, &v51);
    v43 = a1[10];
    if (v16)
    {
      v44 = 1;
    }

    else
    {
      v44 = v51 == 0;
    }

    if (!v44)
    {
      v50 = 0;
      v16 = (*(v42 + 40))(v42, a1[28], v43, *(a1 + 45) & 0x1700000 | 0x802u, &v50);
      if (!v16)
      {
        if (v50)
        {
          v45 = sub_18192ACCC(71502);
          v46 = a1[10];
          if (*v46)
          {
            (*(*v46 + 8))(a1[10]);
            *v46 = 0;
          }

          v16 = v45;
        }

        else
        {
          v16 = 0;
        }
      }

      v43 = a1[10];
    }

    if (*v43)
    {
LABEL_151:
      v16 = sub_18193B858(a1);
      if (v16)
      {
LABEL_189:
        if (v16 == 13 || v16 == 10)
        {
          *(a1 + 12) = v16;
          *(a1 + 21) = 6;
          a1[36] = sub_181933ECC;
        }

        goto LABEL_94;
      }

      v16 = sub_1818F84EC(a1, *(a1 + 16) == 0);
      *(a1 + 21) = 0;
      goto LABEL_188;
    }
  }

  if (!*(a1 + 8))
  {
    v47 = v16;
    sub_181933E64(a1, 1);
    v16 = v47;
  }

LABEL_188:
  if (v16)
  {
    goto LABEL_189;
  }

LABEL_192:
  if (!*(a1 + 16) && *(a1 + 28))
  {
    v16 = (*(*a1[9] + 16))(a1[9], &v51, 16, 24);
    if (v16)
    {
      if (v16 != 522)
      {
        goto LABEL_93;
      }

      v51 = 0;
      v52 = 0;
    }

    if (a1[17] != v51 || a1[18] != v52)
    {
      sub_181934D80(a1);
      if (*(a1 + 27))
      {
        (*(*a1[9] + 144))(a1[9], 0, 0);
      }
    }
  }

  v16 = sub_181A1D90C(a1);
  v2 = a1[43];
  if (v2)
  {
    goto LABEL_2;
  }

LABEL_92:
  if (!*(a1 + 16) && !*(a1 + 21) && !v16)
  {
    v29 = a1[43];
    if (v29)
    {
      if ((*(v29 + 60) & 0x80000000) == 0)
      {
        LODWORD(v29) = *(v29 + 92);
        if (v29)
        {
          goto LABEL_103;
        }
      }
    }

    v29 = *a1[9];
    if (!v29)
    {
LABEL_105:
      *(a1 + 8) = v29;
      goto LABEL_106;
    }

    v51 = 0;
    v16 = (*(v29 + 48))();
    if (!v16)
    {
      v29 = (v51 + a1[25] - 1) / a1[25];
LABEL_103:
      if (v29 > *(a1 + 47))
      {
        *(a1 + 47) = v29;
      }

      goto LABEL_105;
    }

LABEL_94:
    v27 = v16;
    sub_1818CD8F0(a1);
    return v27;
  }

LABEL_93:
  if (v16)
  {
    goto LABEL_94;
  }

LABEL_106:
  result = 0;
  *(a1 + 21) = 1;
  *(a1 + 28) = 1;
  return result;
}

uint64_t sub_1818A4708(uint64_t a1, signed int a2)
{
  v4 = *(a1 + 28);
  if (v4 >= a2)
  {
    return 0;
  }

  v27 = v2;
  v28 = v3;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v7 = *(a1 + 16);
  v8 = v7[2];
  if (v8)
  {
    xmmword_1ED452F18(*&v8);
    v4 = *(a1 + 28);
  }

  v9 = v7[4].u8[0];
  if (v4 != v9)
  {
    result = 5;
    if (a2 > 1 || v9 > 2)
    {
      goto LABEL_50;
    }

    goto LABEL_12;
  }

  if (a2 == 1)
  {
LABEL_12:
    if (v9 - 1 <= 1)
    {
      result = 0;
      *(a1 + 28) = 1;
      v7[3] = vadd_s32(v7[3], 0x100000001);
      goto LABEL_50;
    }

    v10 = 1;
    v25 = 1;
    HIWORD(v26) = 0;
    v11 = 1;
    goto LABEL_15;
  }

  v25 = 1;
  HIWORD(v26) = 0;
  if (a2 != 4)
  {
    goto LABEL_29;
  }

  if (v4 != 2)
  {
    goto LABEL_22;
  }

  v10 = 0;
  v11 = 3;
LABEL_15:
  WORD2(v26) = v11;
  v24 = dword_1EA8315A8;
  if (sub_18192B4C8(a1, &v24))
  {
    v13 = *__error();
    result = 5;
    if (v13 > 0x3C)
    {
      goto LABEL_39;
    }

    if (((1 << v13) & 0x1000000800012010) == 0)
    {
      if (v13 != 1)
      {
LABEL_39:
        if (v13 != 77)
        {
          result = 3850;
          *(a1 + 32) = v13;
        }

        goto LABEL_50;
      }

      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (a2 != 4)
  {
    if (!v10)
    {
      goto LABEL_29;
    }

LABEL_25:
    v24 = dword_1EA8315A8 + 2;
    v25 = 510;
    v14 = sub_18192B4C8(a1, &v24);
    if (v14)
    {
      v15 = *__error();
      if (v15 > 0x3C)
      {
        goto LABEL_55;
      }

      if (((1 << v15) & 0x1000000800012010) != 0)
      {
LABEL_28:
        v16 = 5;
        goto LABEL_42;
      }

      if (v15 == 1)
      {
        v16 = 3;
      }

      else
      {
LABEL_55:
        if (v15 == 77)
        {
          goto LABEL_28;
        }

        v16 = 3850;
      }
    }

    else
    {
      v16 = 0;
      LODWORD(v15) = 0;
    }

LABEL_42:
    v24 = dword_1EA8315A8;
    v25 = 1;
    WORD2(v26) = 2;
    v20 = sub_18192B4C8(a1, &v24);
    if (!v14 && v20)
    {
      v21 = *__error();
      result = 2058;
      *(a1 + 32) = v21;
      goto LABEL_50;
    }

    if (v16)
    {
      result = v16;
      if (v16 != 5)
      {
        *(a1 + 32) = v15;
      }

      goto LABEL_50;
    }

    v22 = v7[3].i32[1] + 1;
    v7[3].i32[0] = 1;
    v7[3].i32[1] = v22;
    goto LABEL_49;
  }

  *(a1 + 28) = 3;
  v7[4].i8[0] = 3;
  if (v10)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v7[3].i32[0] > 1)
  {
    result = 5;
    goto LABEL_50;
  }

LABEL_29:
  WORD2(v26) = 3;
  if (a2 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = dword_1EA8315A8 + v17;
  v19 = 510;
  if (a2 == 2)
  {
    v19 = 1;
  }

  v24 = v18;
  v25 = v19;
  if (!sub_18192B4C8(a1, &v24))
  {
LABEL_49:
    result = 0;
    *(a1 + 28) = a2;
    v7[4].i8[0] = a2;
    goto LABEL_50;
  }

  v13 = *__error();
  result = 5;
  if (v13 > 0x3C)
  {
    goto LABEL_39;
  }

  if (((1 << v13) & 0x1000000800012010) == 0)
  {
    if (v13 != 1)
    {
      goto LABEL_39;
    }

LABEL_38:
    result = 3;
    *(a1 + 32) = v13;
  }

LABEL_50:
  if (v7[2])
  {
    v23 = result;
    xmmword_1ED452F28(*&v7[2]);
    return v23;
  }

  return result;
}

uint64_t sub_1818A4A50(uint64_t a1, uint64_t a2, int a3, _BOOL4 *a4)
{
  if (a3)
  {
    v5 = off_1EE341AF8(a2, 6) == 0;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    memset(v8, 0, sizeof(v8));
    if (off_1EE341B28(a2, v8))
    {
      v5 = 0;
    }

    else
    {
      v5 = (WORD2(v8[0]) & 0xF000) != 0x8000 || v9 > 0;
    }
  }

  *a4 = v5;
  return 0;
}

uint64_t sub_1818A4AF0(uint64_t a1, void *a2)
{
  if (*(a1 + 168) || (v9 = 0u, v10 = 0u, v8 = 0u, memset(v7, 0, sizeof(v7)), (v3 = *(a1 + 64)) != 0) && *(*v3 + 168))
  {
    sqlite3_log(27, "denying fileSize on invalidated fd %d", *(a1 + 24));
    return 6922;
  }

  else
  {
    result = off_1EE341B40(*(a1 + 24), v7);
    if (result)
    {
      *(a1 + 32) = *__error();
      return 1802;
    }

    else
    {
      v6 = v8;
      *(a1 + 152) = v8;
      if (v6 == 1)
      {
        v6 = 0;
      }

      *a2 = v6;
    }
  }

  return result;
}

uint64_t sub_1818A4BB0(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 16) || *(a1 + 344))
  {
    result = 0;
    *a2 = 1;
  }

  else if (*(a1 + 17))
  {
    return 14;
  }

  else if (*(a1 + 8) || (v6 = **(a1 + 72), *v6 >= 2) && *(v6 + 104))
  {
    v3 = *(a1 + 80);
    if (*v3)
    {
      v4 = a1;
      (*(*v3 + 8))(*(a1 + 80), a2);
      a1 = v4;
      *v3 = 0;
    }

    v5 = a1;
    result = sub_1819339AC(a1);
    if (!result)
    {
      *(v5 + 9) = 5;
      *(v5 + 21) = 0;
    }
  }

  else
  {
    return 14;
  }

  return result;
}

uint64_t sub_1818A4C68(const char *a1, _DWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  sqlite3_snprintf(1024, __s, "%s", a1);
  v3 = strlen(__s);
  if (v3 < 1)
  {
LABEL_4:
    if (__s[0] != 47)
    {
      __s[0] = 46;
    }

    v5 = &__s[1];
  }

  else
  {
    while (1)
    {
      v4 = v3;
      if (__s[v3] == 47)
      {
        break;
      }

      --v3;
      if (v4 < 2)
      {
        goto LABEL_4;
      }
    }

    v5 = &__s[v3];
  }

  *v5 = 0;
  v6 = sub_18192ACE0(__s, 0, 0, 0, 0);
  result = 0;
  *a2 = v6;
  if (v6 < 0)
  {
    v8 = sub_18192ACCC(46124);
    v9 = *__error();
    memset(__strerrbuf, 0, sizeof(__strerrbuf));
    strerror_r(v9, __strerrbuf, 0x4FuLL);
    sqlite3_log(v8, "os_unix.c:%d: (%d) %s(%s) - %s", 46124, v9, "openDirectory", __s, __strerrbuf);
    return v8;
  }

  return result;
}

uint64_t sub_1818A4DD0(uint64_t a1, _DWORD *a2, int a3, int *a4)
{
  v106[4] = *MEMORY[0x1E69E9840];
  v7 = *a4;
  v8 = *a4 + 1;
  *a4 = v8;
  if (v7 < 5)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }

LABEL_11:
    LODWORD(v14) = 0;
    v15 = (**(a1 + 48) + 96);
    goto LABEL_12;
  }

  v9 = v8 & 0x6FFFFFFF;
  if (v9 >= 0x65)
  {
    v106[0] = -1;
    sqlite3_file_control(*(a1 + 160), 0, 103, v106);
    v35 = HIDWORD(v106[0]);
    if (qword_1ED456C38 != -1)
    {
      sub_181A1E95C();
    }

    v36 = qword_1ED456C08;
    if (os_log_type_enabled(qword_1ED456C08, OS_LOG_TYPE_ERROR))
    {
      sub_181A1ED14(a1, v35, v36);
      v37 = getprogname();
      if (!v37)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v37 = getprogname();
      if (!v37)
      {
        goto LABEL_64;
      }
    }

    v38 = v37;
    if (!strcmp(v37, "testfixture") || !strcmp(v38, "sqlite3") || !strcmp(v38, "xctest"))
    {
      return 15;
    }

LABEL_64:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_181A1EDAC();
    }

    return 15;
  }

  v10 = 39 * (v9 - 9) * (v9 - 9);
  if (v7 <= 8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = (v11 + 998) / 0x3E8u;
  if (!a3)
  {
    LODWORD(v106[0]) = (v11 + 998) / 0x3E8u;
    v50 = *(a1 + 8);
    if (*v50)
    {
      (*(*v50 + 80))(v50, 34, v106);
    }
  }

  (*(*a1 + 112))();
  *a4 &= ~0x10000000u;
  if (a3)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (*(a1 + 70))
  {
    v14 = 0;
    goto LABEL_77;
  }

  v39 = sub_1818A5900(a1, a2);
  if (v39 != 5)
  {
    v14 = v39;
    if (v39 != 773)
    {
      goto LABEL_77;
    }

    *a4 |= 0x10000000u;
  }

  v40 = *(a1 + 160);
  if (v40)
  {
    v41 = *(v40 + 788);
    if (v41)
    {
      LODWORD(v106[0]) = v41;
      v42 = *(a1 + 8);
      if (*v42)
      {
        (*(*v42 + 80))(v42, 34, v106);
      }
    }
  }

  if (!**(a1 + 48) || *(a1 + 63))
  {
    goto LABEL_76;
  }

  v54 = (*(**(a1 + 8) + 112))(*(a1 + 8), 2, 1, 6);
  if (v54)
  {
    if (v54 == 5)
    {
      v14 = 261;
    }

    else
    {
      v14 = v54;
    }
  }

  else
  {
    if (*(a1 + 63))
    {
LABEL_76:
      v14 = 0xFFFFFFFFLL;
      goto LABEL_77;
    }

    (*(**(a1 + 8) + 112))(*(a1 + 8), 2, 1, 5);
    v14 = 0xFFFFFFFFLL;
  }

LABEL_77:
  LODWORD(v106[0]) = 0;
  v43 = *(a1 + 8);
  if (*v43)
  {
    (*(*v43 + 80))(v43, 34, v106);
  }

  if (v14)
  {
    return v14;
  }

  if (!*(a1 + 70))
  {
    v15 = (**(a1 + 48) + 96);
    v52 = *v15;
    if (*v15 != *(a1 + 88))
    {
LABEL_94:
      LODWORD(v14) = 0;
      goto LABEL_12;
    }

    if (*(a1 + 152))
    {
      if (v52)
      {
        goto LABEL_94;
      }
    }

    else
    {
      if (v52)
      {
        v55 = *(a1 + 144) == 0;
      }

      else
      {
        v55 = 1;
      }

      if (!v55)
      {
        goto LABEL_94;
      }
    }

    v56 = *(a1 + 63);
    if (*(a1 + 63))
    {
      v14 = 0;
    }

    else
    {
      v14 = (*(**(a1 + 8) + 112))(*(a1 + 8), 3, 1, 6);
      v56 = *(a1 + 63);
    }

    if (v56 != 2)
    {
      (*(**(a1 + 8) + 120))(*(a1 + 8));
    }

    if (v14 != 5)
    {
      if (v14)
      {
        return v14;
      }

      v58 = **(a1 + 48);
      v59 = *v58;
      v60 = v58[1];
      v61 = v58[2];
      v62 = v58[3];
      v64 = v58[4];
      v63 = v58[5];
      if (v59 == *(a1 + 72) && v60 == *(a1 + 80) && v61 == *(a1 + 88) && v62 == *(a1 + 96) && v64 == *(a1 + 104) && v63 == *(a1 + 112))
      {
        v14 = 0;
        *(a1 + 60) = 0;
        return v14;
      }

      if (*(a1 + 63))
      {
        return 0xFFFFFFFFLL;
      }

      v70 = *(**(a1 + 8) + 112);
      goto LABEL_237;
    }

LABEL_12:
    v16 = *(a1 + 88);
    v17 = *(a1 + 144);
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18 < v16)
      {
        v16 = v18;
      }
    }

    v19 = v15 + 1;
    v20 = v15[2];
    v21 = v20 <= v16;
    if (v20 > v16)
    {
      v20 = 0;
    }

    v22 = v15[3];
    if (v20 <= v22 && v22 <= v16)
    {
      v20 = v15[3];
      v21 = 2;
    }

    v25 = v15[4];
    if (v20 <= v25 && v25 <= v16)
    {
      v20 = v15[4];
      v21 = 3;
    }

    v28 = v15[5];
    v30 = v20 > v28 || v28 > v16;
    if (v30)
    {
      v31 = v20;
    }

    else
    {
      v31 = v15[5];
    }

    if (v30)
    {
      v32 = v21;
    }

    else
    {
      v32 = 4;
    }

    if ((*(a1 + 66) & 2) == 0)
    {
      if (v31 >= v16 && v32 != 0)
      {
LABEL_199:
        LODWORD(v106[0]) = v12;
        v87 = *(a1 + 8);
        if (*v87)
        {
          (*(*v87 + 80))(v87, 34, v106);
          v87 = *(a1 + 8);
        }

        if (*(a1 + 63))
        {
          v88 = 0;
        }

        else
        {
          v88 = (*(*v87 + 112))(v87, v32 + 3, 1, 6);
          v87 = *(a1 + 8);
        }

        LODWORD(v106[0]) = 0;
        if (*v87)
        {
          (*(*v87 + 80))(v87, 34, v106);
        }

        if (v88)
        {
          if (v88 == 773)
          {
            *a4 |= 0x10000000u;
          }

          if (v88 == 5)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return v88;
          }
        }

        *(a1 + 120) = *v15 + 1;
        if (*(a1 + 63) != 2)
        {
          (*(**(a1 + 8) + 120))(*(a1 + 8));
        }

        if (v19[v32] == v31)
        {
          v89 = **(a1 + 48);
          v90 = *v89;
          v91 = v89[1];
          v92 = v89[2];
          v93 = v89[3];
          v95 = v89[4];
          v94 = v89[5];
          v96 = v90 == *(a1 + 72) && v91 == *(a1 + 80);
          v97 = v96 && v92 == *(a1 + 88);
          v98 = v97 && v93 == *(a1 + 96);
          v99 = v98 && v95 == *(a1 + 104);
          if (v99 && v94 == *(a1 + 112))
          {
            v14 = 0;
            *(a1 + 60) = v32;
            return v14;
          }
        }

        if (*(a1 + 63))
        {
          return 0xFFFFFFFFLL;
        }

        v70 = *(**(a1 + 8) + 112);
LABEL_237:
        v70();
        return 0xFFFFFFFFLL;
      }

      if (*(a1 + 63))
      {
        v34 = 4;
LABEL_53:
        v32 = 1;
LABEL_54:
        v19[v32] = v16;
        if (!*(a1 + 63))
        {
          (*(**(a1 + 8) + 112))(*(a1 + 8), v34, 1, 9);
        }

        v31 = v16;
        goto LABEL_199;
      }

      v34 = 4;
      v51 = (*(**(a1 + 8) + 112))(*(a1 + 8), 4, 1, 10);
      if (v51 != 5)
      {
        v14 = v51;
        if (v51)
        {
          return v14;
        }

        goto LABEL_53;
      }

      if (*(a1 + 63))
      {
        v34 = 5;
        v32 = 2;
        goto LABEL_54;
      }

      v34 = 5;
      v57 = (*(**(a1 + 8) + 112))(*(a1 + 8), 5, 1, 10);
      if (!v57)
      {
        v32 = 2;
        goto LABEL_54;
      }

      v14 = v57;
      if (v57 != 5)
      {
        return v14;
      }

      if (*(a1 + 63))
      {
        v34 = 6;
        v32 = 3;
        goto LABEL_54;
      }

      v34 = 6;
      v71 = (*(**(a1 + 8) + 112))(*(a1 + 8), 6, 1, 10);
      if (!v71)
      {
        v32 = 3;
        goto LABEL_54;
      }

      v14 = v71;
      if (v71 != 5)
      {
        return v14;
      }

      if (*(a1 + 63))
      {
        v34 = 7;
        v32 = 4;
        goto LABEL_54;
      }

      v34 = 7;
      v86 = (*(**(a1 + 8) + 112))(*(a1 + 8), 7, 1, 10);
      if (!v86)
      {
        v32 = 4;
        goto LABEL_54;
      }

      v14 = v86;
      if (v86 != 5)
      {
        return v14;
      }
    }

    if (!v32)
    {
      if (v14 == 5)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1288;
      }
    }

    goto LABEL_199;
  }

  v104 = 0;
  v105 = 0;
  v44 = *(a1 + 8);
  if (!*(a1 + 63))
  {
    v53 = (*(*v44 + 112))(v44, 3, 1, 6);
    if (v53)
    {
      if (v53 == 5)
      {
        v14 = 0xFFFFFFFFLL;
      }

      else
      {
        v14 = v53;
      }

      goto LABEL_172;
    }

    v44 = *(a1 + 8);
  }

  *(a1 + 60) = 0;
  v45 = (*(*v44 + 104))(v44, 0, 0x8000, 0, &v104);
  if (v45 == 8)
  {
    goto LABEL_129;
  }

  v14 = v45;
  if (v45 != 1288)
  {
    goto LABEL_171;
  }

  v46 = **(a1 + 48);
  v48 = v46[1];
  v47 = v46[2];
  *(a1 + 72) = *v46;
  *(a1 + 88) = v48;
  *(a1 + 104) = v47;
  v49 = (*(**(a1 + 16) + 48))(*(a1 + 16), &v105);
  if (!v49)
  {
    if (v105 <= 31)
    {
      *a2 = 1;
      if (*(a1 + 88))
      {
        v14 = 0xFFFFFFFFLL;
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        return v14;
      }

      goto LABEL_172;
    }

    v49 = (*(**(a1 + 16) + 16))(*(a1 + 16), v106, 32, 0);
    if (!v49)
    {
      if (*(a1 + 104) != v106[2])
      {
LABEL_129:
        v14 = 0xFFFFFFFFLL;
        goto LABEL_172;
      }

      v72 = *(a1 + 56);
      if (sqlite3_initialize() || (v73 = v72 + 24, (v74 = sub_181902484(v73, 0x100004077774924)) == 0))
      {
        v14 = 7;
        goto LABEL_172;
      }

      v75 = v74;
      v76 = *(a1 + 96);
      v77 = *(a1 + 88) * (*(a1 + 56) + 24) + 32;
      if ((v77 + v73) <= v105)
      {
        while (1)
        {
          v102 = 0;
          v83 = (*(**(a1 + 16) + 16))(*(a1 + 16), v75, v73, v77);
          if (v83)
          {
            v14 = v83;
            goto LABEL_165;
          }

          if (!sub_18193835C(a1, v103, &v102, &v75[3], v75, v84, v85))
          {
            goto LABEL_164;
          }

          if (v102)
          {
            break;
          }

          v77 += v73;
          if ((v73 + v77) > v105)
          {
            goto LABEL_164;
          }
        }

        v14 = 0xFFFFFFFFLL;
      }

      else
      {
LABEL_164:
        v14 = 0;
      }

LABEL_165:
      *(a1 + 96) = v76;
      v78 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_170;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v75);
      --qword_1ED456A90;
      off_1ED452EB0(v75);
      v75 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v78 = &xmmword_1ED452F28;
LABEL_170:
        (*v78)(v75);
      }

LABEL_171:
      if (!v14)
      {
        return v14;
      }

      goto LABEL_172;
    }
  }

  v14 = v49;
LABEL_172:
  if (*(a1 + 40) >= 1)
  {
    for (i = 0; i < *(a1 + 40); ++i)
    {
      v80 = *(*(a1 + 48) + 8 * i);
      if (v80)
      {
        v81 = &off_1ED452EB0;
        if (dword_1ED452E80)
        {
          if (xmmword_1ED456AF0)
          {
            xmmword_1ED452F18(xmmword_1ED456AF0);
          }

          qword_1ED456A48[0] -= xmmword_1ED452EC0(v80);
          --qword_1ED456A90;
          off_1ED452EB0(v80);
          v80 = xmmword_1ED456AF0;
          if (!xmmword_1ED456AF0)
          {
            goto LABEL_175;
          }

          v81 = &xmmword_1ED452F28;
        }

        (*v81)(v80);
      }

LABEL_175:
      *(*(a1 + 48) + 8 * i) = 0;
    }
  }

  *(a1 + 70) = 0;
  if ((*(a1 + 60) & 0x80000000) == 0)
  {
    v82 = *(a1 + 63);
    if (*(a1 + 64))
    {
      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 9);
        v82 = *(a1 + 63);
      }

      *(a1 + 64) = 0;
      *(a1 + 124) = 0;
      *(a1 + 67) = 0;
    }

    if (!v82)
    {
      (*(**(a1 + 8) + 112))(*(a1 + 8), (*(a1 + 60) + 3), 1, 5);
    }

    *(a1 + 60) = -1;
  }

  *a2 = 1;
  return v14;
}

uint64_t sub_1818A5900(uint64_t a1, _DWORD *a2)
{
  v118 = *MEMORY[0x1E69E9840];
  v103 = 0;
  if (*(a1 + 40) >= 1)
  {
    v103 = **(a1 + 48);
    if (v103)
    {
      v4 = 0;
      goto LABEL_8;
    }
  }

  v5 = sub_1819346F0(a1, 0, &v103);
  v4 = v5;
  if (v5)
  {
    if (v5 != 1288)
    {
      return v4;
    }

    *(a1 + 70) = 1;
    *(a1 + 63) = 2;
    *a2 = 1;
  }

  if (v103)
  {
LABEL_8:
    v6 = sub_1818A72FC(a1, a2);
    if (!v6)
    {
      goto LABEL_42;
    }

    v7 = v6;
    v4 = v6;
    if (v6 == 6922)
    {
      goto LABEL_45;
    }

    if (*(a1 + 70))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 = 1;
  if (*(a1 + 70))
  {
    goto LABEL_14;
  }

LABEL_13:
  if ((*(a1 + 66) & 2) != 0)
  {
    if (!*(a1 + 63))
    {
      v12 = (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 6);
      if (v12)
      {
        goto LABEL_44;
      }

      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 5);
        v4 = 264;
        if (*(a1 + 70))
        {
          goto LABEL_46;
        }

        return v4;
      }
    }

    v4 = 264;
    if (*(a1 + 70))
    {
      goto LABEL_46;
    }

    return v4;
  }

LABEL_14:
  v8 = *(a1 + 64);
  if (*(a1 + 64))
  {
    goto LABEL_17;
  }

  if (!*(a1 + 63))
  {
    v12 = (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 10);
    if (v12)
    {
LABEL_44:
      v4 = v12;
      goto LABEL_45;
    }
  }

  *(a1 + 64) = 2;
LABEL_17:
  if (*(a1 + 40) < 1 || (v103 = **(a1 + 48)) == 0)
  {
    v4 = sub_1819346F0(a1, 0, &v103);
    if (v4)
    {
LABEL_33:
      if (!v8)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }
  }

  if (!sub_1818A72FC(a1, a2))
  {
    v4 = 0;
    v7 = 0;
    goto LABEL_33;
  }

  v109[0] = 0;
  v9 = *(a1 + 8);
  if (*v9)
  {
    (*(*v9 + 80))(v9, 34, v109);
    v9 = *(a1 + 8);
  }

  v108 = 0;
  v107 = 0;
  if (*v9)
  {
    (*(*v9 + 80))(v9, 34, &v107);
  }

  v10 = *(a1 + 65);
  if (!*(a1 + 63))
  {
    v4 = (*(**(a1 + 8) + 112))(*(a1 + 8), (v10 + 1), (2 - v10), 10);
    if (v4)
    {
      goto LABEL_38;
    }
  }

  *(a1 + 72) = 0u;
  v11 = (a1 + 72);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v4 = (*(**(a1 + 16) + 48))(*(a1 + 16), &v108);
  if (v4)
  {
    goto LABEL_27;
  }

  if (v108 < 33)
  {
    goto LABEL_78;
  }

  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16), v109, 32, 0);
  if (v4)
  {
    goto LABEL_27;
  }

  if (((LOBYTE(v109[0]) << 24) | (BYTE1(v109[0]) << 16) | (BYTE2(v109[0]) << 8) | HIBYTE(v109[0]) & 0xFE) != 0x377F0682 || (v17 = v110 << 24, v100 = v111, v18 = v17 | (v111 << 16), v19 = v113, v98 = v112, v20 = v18 | v113 | (v112 << 8), (v20 & (v20 - 1)) != 0) || v20 - 65537 < 0xFFFF01FF || (v21 = HIBYTE(v109[0]) & 1, *(a1 + 85) = v21, *(a1 + 56) = v20, *(a1 + 136) = bswap32(v114), *(a1 + 104) = v115, sub_181937F98(v21 ^ 1u, v109, 24, 0, (a1 + 96)), *(a1 + 96) != bswap32(v116)) || *(a1 + 100) != bswap32(v117))
  {
LABEL_78:
    v22 = 0;
    v23 = 0;
    goto LABEL_79;
  }

  if (bswap32(v109[1]) != 3007000)
  {
    v4 = sub_18192ACCC(75604);
    goto LABEL_27;
  }

  if (sqlite3_initialize() || (v93 = v19, v95 = v17, v91 = v20 + 24, (v97 = sub_181902484(v91 + 0x8000, 0x1000040BDFB0063)) == 0))
  {
    v4 = 7;
    goto LABEL_27;
  }

  v22 = 0;
  v46 = 0;
  v23 = 0;
  v85 = &v97[3] + v20;
  v47 = (v108 - 32) / v91;
  v82 = ((v47 + 4096) + 0xFFFFFFFF021) >> 12;
  v87 = v47;
  v88 = &v97[3];
  v81 = (v98 << 8) | HIWORD(v18);
  v48 = v97 + (v95 | (v100 << 16) | (v98 << 8) | v93);
  v83 = v48 + 24;
  v84 = (v48 + 32792);
  v49 = v95 + (v100 << 16) + (v98 << 8) + v93;
  v86 = (v49 + 24);
  v50 = &v97[3] + v49;
  v51 = 0;
  v90 = v50;
  do
  {
    v94 = v51;
    v96 = v46;
    v52 = v51 + 4062;
    if (v52 >= v87)
    {
      v52 = v87;
    }

    v92 = v52;
    v106 = 0;
    v53 = (v46 << 12) | 0xFDEu;
    if (v87 < v53)
    {
      v53 = v87;
    }

    v99 = v53;
    if (*(a1 + 40) > v46 && (v54 = *(a1 + 48), v55 = *(v54 + 8 * v46), (v106 = v55) != 0))
    {
      v4 = 0;
    }

    else
    {
      v4 = sub_1819346F0(a1, v46, &v106);
      v55 = v106;
      if (!v106)
      {
        break;
      }

      v54 = *(a1 + 48);
      LODWORD(v46) = v96;
      v50 = v90;
    }

    if (v46)
    {
      v56 = ((v46 << 12) - 33);
    }

    else
    {
      v56 = 1;
    }

    *(v54 + 8 * v46) = v85;
    if (v56 <= v99)
    {
      v101 = v56;
      v105 = 0;
      v104 = 0;
      v58 = (*(**(a1 + 16) + 16))(*(a1 + 16), v97, v91, (v56 - 1) * v91 + 32);
      if (v58)
      {
        v4 = v58;
        v57 = 0;
        v50 = v90;
        LODWORD(v46) = v96;
      }

      else
      {
        v80 = v55;
        if (sub_18193835C(a1, &v105, &v104, v88, v97, v59, v60))
        {
          v89 = 0;
          v61 = v101;
          v62 = v86 * v101 + 32;
          while (1)
          {
            v102 = v61;
            v63 = sub_1818A758C(a1, v61, v105);
            if (v63)
            {
LABEL_139:
              v4 = v63;
              goto LABEL_140;
            }

            v64 = v104;
            if (v104)
            {
              *(a1 + 88) = v102;
              *(a1 + 92) = v64;
              *(a1 + 86) = v81;
              v22 = *(a1 + 96);
              v23 = *(a1 + 100);
            }

            v89 = v102 >= v99;
            if (v92 == v102)
            {
              break;
            }

            v105 = 0;
            v104 = 0;
            v63 = (*(**(a1 + 16) + 16))(*(a1 + 16), v97, v91, v62);
            if (v63)
            {
              goto LABEL_139;
            }

            v67 = sub_18193835C(a1, &v105, &v104, v88, v97, v65, v66);
            v62 += v86;
            v61 = v102 + 1;
            if (!v67)
            {
              v4 = 0;
LABEL_140:
              v50 = v90;
              v57 = v89;
              goto LABEL_141;
            }
          }

          v4 = 0;
          LODWORD(v46) = v96;
          v50 = v90;
          v57 = v102 >= v99;
          v55 = v80;
        }

        else
        {
          v57 = 0;
          v4 = 0;
          v50 = v90;
LABEL_141:
          v55 = v80;
          LODWORD(v46) = v96;
        }
      }
    }

    else
    {
      v57 = 1;
    }

    *(*(a1 + 48) + 8 * v46) = v55;
    v68 = 34;
    if (v46)
    {
      v68 = 0;
    }

    v69 = 4 * v68;
    v70 = (v55 + 4 * v68);
    if (v70 >= v84 || &v83[4 * v68] >= v55 + 0x8000)
    {
      v72 = 0x2000 - v68;
      v73 = (0x2000 - v68) & 0x3FFC;
      v68 += v73;
      v74 = &v50[v69];
      v75 = v73;
      while (1)
      {
        v76 = *v74;
        v77 = vmovn_s32(vmvnq_s8(vceqq_s32(*v70, *v74)));
        if (v77.i8[0])
        {
          v70->i32[0] = v76.i32[0];
          if ((v77.i8[2] & 1) == 0)
          {
            goto LABEL_153;
          }
        }

        else if ((v77.i8[2] & 1) == 0)
        {
LABEL_153:
          if (v77.i8[4])
          {
            goto LABEL_154;
          }

          goto LABEL_158;
        }

        v70->i32[1] = v76.i32[1];
        if (v77.i8[4])
        {
LABEL_154:
          v70->i32[2] = v76.i32[2];
          if (v77.i8[6])
          {
            goto LABEL_159;
          }

          goto LABEL_150;
        }

LABEL_158:
        if (v77.i8[6])
        {
LABEL_159:
          v70->i32[3] = v76.i32[3];
        }

LABEL_150:
        ++v70;
        ++v74;
        v75 -= 4;
        if (!v75)
        {
          if (v72 == v73)
          {
            goto LABEL_161;
          }

          break;
        }
      }
    }

    v78 = 4 * v68;
    do
    {
      v79 = *&v50[v78];
      if (*(v55 + v78) != v79)
      {
        *(v55 + v78) = v79;
      }

      v78 += 4;
    }

    while (v78 != 0x8000);
LABEL_161:
    if (!v57)
    {
      break;
    }

    v46 = (v46 + 1);
    v51 = v94 + 4096;
  }

  while (v46 <= v82);
  sqlite3_free(v97);
  if (!v4)
  {
LABEL_79:
    *(a1 + 96) = v22;
    *(a1 + 100) = v23;
    v24 = **(a1 + 48);
    *(a1 + 84) = 1;
    v25 = *(a1 + 76);
    v26 = *(a1 + 88);
    v27 = v25 + *(a1 + 84);
    v28 = v25 + *(a1 + 80);
    *(a1 + 72) = 3007000;
    v28 += 6014000;
    v29 = v27 + 3007000 + v28;
    v30 = v26 + v28 + v29;
    v31 = *(a1 + 92) + v29 + v30;
    v32 = v30 + v22 + v31;
    v33 = v31 + v23 + v32;
    v34 = v32 + *(a1 + 104) + v33;
    v35 = v33 + *(a1 + 108) + v34;
    *(a1 + 112) = v34;
    *(a1 + 116) = v35;
    v36 = *v11;
    v37 = *(a1 + 104);
    v24[4] = *(a1 + 88);
    v24[5] = v37;
    v24[3] = v36;
    if (*(a1 + 63) != 2)
    {
      (*(**(a1 + 8) + 120))(*(a1 + 8));
    }

    v38 = *v11;
    v39 = *(a1 + 104);
    v24[1] = *(a1 + 88);
    v24[2] = v39;
    *v24 = v38;
    v40 = **(a1 + 48);
    v40[24] = 0;
    v40[32] = *(a1 + 88);
    v40[25] = 0;
    if (*(a1 + 63))
    {
LABEL_82:
      v41 = *(a1 + 88);
      if (!v41)
      {
        v41 = -1;
      }

      v40[26] = v41;
      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 4, 1, 9);
        goto LABEL_89;
      }

LABEL_90:
      v40[27] = -1;
      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 5, 1, 9);
        goto LABEL_92;
      }

LABEL_93:
      v40[28] = -1;
      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 6, 1, 9);
        goto LABEL_95;
      }

LABEL_96:
      v40[29] = -1;
      if (!*(a1 + 63))
      {
        (*(**(a1 + 8) + 112))(*(a1 + 8), 7, 1, 9);
      }

      v4 = 0;
LABEL_99:
      if (*(a1 + 92))
      {
        sqlite3_log(283, "recovered %d frames from WAL file %s", *(a1 + 88), *(a1 + 128));
      }
    }

    else
    {
      v42 = (*(**(a1 + 8) + 112))(*(a1 + 8), 4, 1, 10);
      if (v42 == 5)
      {
LABEL_89:
        if (*(a1 + 63))
        {
          goto LABEL_90;
        }

        v43 = (*(**(a1 + 8) + 112))(*(a1 + 8), 5, 1, 10);
        if (v43 == 5)
        {
LABEL_92:
          if (*(a1 + 63))
          {
            goto LABEL_93;
          }

          v44 = (*(**(a1 + 8) + 112))(*(a1 + 8), 6, 1, 10);
          if (v44 == 5)
          {
LABEL_95:
            if (*(a1 + 63))
            {
              goto LABEL_96;
            }

            v45 = (*(**(a1 + 8) + 112))(*(a1 + 8), 7, 1, 10);
            v4 = v45;
            if (v45 == 5)
            {
              goto LABEL_99;
            }

            if (!v45)
            {
              goto LABEL_96;
            }
          }

          else
          {
            v4 = v44;
            if (!v44)
            {
              goto LABEL_93;
            }
          }
        }

        else
        {
          v4 = v43;
          if (!v43)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        v4 = v42;
        if (!v42)
        {
          goto LABEL_82;
        }
      }
    }
  }

LABEL_27:
  if (!*(a1 + 63))
  {
    (*(**(a1 + 8) + 112))(*(a1 + 8), (v10 + 1), (2 - v10), 9);
  }

LABEL_38:
  v7 = 1;
  *a2 = 1;
  if (!v8)
  {
LABEL_39:
    *(a1 + 64) = 0;
    if (!*(a1 + 63))
    {
      (*(**(a1 + 8) + 112))(*(a1 + 8), 0, 1, 9);
    }
  }

LABEL_41:
  if (!v7)
  {
LABEL_42:
    if (*(a1 + 72) != 3007000)
    {
      v12 = sub_18192ACCC(76897);
      goto LABEL_44;
    }
  }

LABEL_45:
  if (*(a1 + 70))
  {
LABEL_46:
    if (v4)
    {
      if (*(a1 + 40) >= 1)
      {
        for (i = 0; i < *(a1 + 40); ++i)
        {
          v14 = *(*(a1 + 48) + 8 * i);
          if (v14)
          {
            v15 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48[0] -= xmmword_1ED452EC0(v14);
              --qword_1ED456A90;
              off_1ED452EB0(v14);
              v14 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_50;
              }

              v15 = &xmmword_1ED452F28;
            }

            (*v15)(v14);
          }

LABEL_50:
          *(*(a1 + 48) + 8 * i) = 0;
        }
      }

      if (*(a1 + 63) != 2)
      {
        (*(**(a1 + 8) + 128))(*(a1 + 8), 0);
      }

      *(a1 + 70) = 0;
      if (v4 == 522)
      {
        v4 = 0xFFFFFFFFLL;
      }

      else
      {
        v4 = v4;
      }
    }

    *(a1 + 63) = 0;
  }

  return v4;
}

uint64_t sub_1818A6540(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v116 = *MEMORY[0x1E69E9840];
  v10 = off_1EE341D20();
  if (v10 < 0x8000)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 >> 15;
  }

  if (*(a1 + 168))
  {
    goto LABEL_5;
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    if (*(*v13 + 168))
    {
LABEL_5:
      sqlite3_log(27, "denying shm read from invalidated fd %d", *(a1 + 24));
      return 6922;
    }

    goto LABEL_9;
  }

  if (sqlite3_initialize())
  {
    return 7;
  }

  v21 = sub_181902484(24, 0x1020040684C9801);
  if (!v21)
  {
    return 7;
  }

  v22 = v21;
  *v21 = 0;
  v21[1] = 0;
  v21[2] = 0;
  v23 = &unk_1ED456000;
  if (qword_1ED456B10)
  {
    xmmword_1ED452F18(qword_1ED456B10);
  }

  v24 = *(a1 + 16);
  v25 = *(v24 + 56);
  if (v25)
  {
    result = 0;
    goto LABEL_27;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  v30 = *(a1 + 56);
  if (off_1EE341B40(*(a1 + 24), &v102))
  {
    *(a1 + 32) = *__error();
    v28 = 1802;
    goto LABEL_89;
  }

  if (*a1 == &unk_1EEF8FD48)
  {
    v54 = *(a1 + 40);
    v55 = *(v54 + 16);
    if (!v55 || (v56 = *v55, *v56 < 2) || !*(v56 + 104) || (v30 = *(v54 + 24)) == 0)
    {
      v28 = sub_18192ACCC(48218);
      goto LABEL_89;
    }
  }

  v53 = strlen(v30);
  if (sqlite3_initialize() || (v97 = v53, v100 = v53, (v58 = sub_181902484(v53 + 182, 0x10B0040278A46C8)) == 0))
  {
LABEL_83:
    v28 = 7;
    goto LABEL_89;
  }

  v25 = v58;
  bzero(v58, v97 + 182);
  *(v25 + 16) = v25 + 176;
  v59 = v100 + 6;
  v101 = (v25 + 176);
  sqlite3_snprintf(v59, (v25 + 176), "%s-shm", v30);
  *(v25 + 24) = -1;
  v60 = *(a1 + 16);
  *(v60 + 56) = v25;
  *v25 = v60;
  if (word_1ED452E84)
  {
    v61 = sqlite3_initialize();
    if (v61)
    {
      *(v25 + 8) = 0;
      goto LABEL_83;
    }

    v68 = qword_1ED452F08(v61);
    *(v25 + 8) = v68;
    if (!v68)
    {
      goto LABEL_83;
    }

    v98 = (v25 + 64);
    v69 = sqlite3_initialize();
    if (v69)
    {
      v70 = 0;
LABEL_114:
      v98[v70] = 0;
      goto LABEL_83;
    }

    v71 = qword_1ED452F08(v69);
    *v98 = v71;
    if (!v71)
    {
      goto LABEL_83;
    }

    v72 = sqlite3_initialize();
    if (v72)
    {
      v70 = 1;
      goto LABEL_114;
    }

    v73 = qword_1ED452F08(v72);
    *(v25 + 72) = v73;
    if (!v73)
    {
      goto LABEL_83;
    }

    v74 = sqlite3_initialize();
    if (v74)
    {
      v70 = 2;
      goto LABEL_114;
    }

    v75 = qword_1ED452F08(v74);
    *(v25 + 80) = v75;
    if (!v75)
    {
      goto LABEL_83;
    }

    v76 = sqlite3_initialize();
    if (v76)
    {
      v70 = 3;
      goto LABEL_114;
    }

    v77 = qword_1ED452F08(v76);
    *(v25 + 88) = v77;
    if (!v77)
    {
      goto LABEL_83;
    }

    v78 = sqlite3_initialize();
    if (v78)
    {
      v70 = 4;
      goto LABEL_114;
    }

    v79 = qword_1ED452F08(v78);
    *(v25 + 96) = v79;
    if (!v79)
    {
      goto LABEL_83;
    }

    v80 = sqlite3_initialize();
    if (v80)
    {
      v70 = 5;
      goto LABEL_114;
    }

    v81 = qword_1ED452F08(v80);
    *(v25 + 104) = v81;
    if (!v81)
    {
      goto LABEL_83;
    }

    v82 = sqlite3_initialize();
    if (v82)
    {
      v70 = 6;
      goto LABEL_114;
    }

    v83 = qword_1ED452F08(v82);
    *(v25 + 112) = v83;
    if (!v83)
    {
      goto LABEL_83;
    }

    v84 = sqlite3_initialize();
    if (v84)
    {
      v70 = 7;
      goto LABEL_114;
    }

    v85 = qword_1ED452F08(v84);
    *(v25 + 120) = v85;
    if (!v85)
    {
      goto LABEL_83;
    }
  }

  if (*(v24 + 33))
  {
    result = 0;
    v23 = &unk_1ED456000;
    goto LABEL_27;
  }

  v86 = *(a1 + 120) & 0x20000100;
  v87 = dword_181A27B00[(*(a1 + 124) >> 20) & 7];
  if (off_1EE341AF8(v101, 6) && (*__error() == 1 || *__error() == 13))
  {
    *(v25 + 24) = -1;
  }

  else
  {
    if (sqlite3_uri_BOOLean(*(a1 + 56), "readonly_shm", 0))
    {
      v88 = *(v25 + 24);
    }

    else
    {
      v88 = sub_18192ACE0(v101, v86 | 0x202u, WORD2(v102) & 0x1FF, v87, 1);
      *(v25 + 24) = v88;
    }

    if ((v88 & 0x80000000) == 0)
    {
      goto LABEL_150;
    }
  }

  v88 = sub_18192ACE0(v101, v86, WORD2(v102) & 0x1FF, v87, 1);
  *(v25 + 24) = v88;
  if ((v88 & 0x80000000) != 0)
  {
    if (*__error() == 1)
    {
      v91 = *__error();
      v28 = 23;
      v92 = 23;
      v93 = (v25 + 176);
      v94 = 48293;
    }

    else
    {
      v95 = sub_18192ACCC(48295);
      v91 = *__error();
      v28 = v95;
      v92 = v95;
      v93 = v101;
      v94 = 48295;
    }

    sub_18192AC04(v92, "open", v93, v91, v94);
    goto LABEL_89;
  }

  *(v25 + 34) = 1;
LABEL_150:
  if ((*(a1 + 30) & 2) == 0)
  {
    v89 = sub_18192F8BC(v88, *(a1 + 124) & 0x700000, 1);
    v28 = v89;
    if (v89 == 10)
    {
      *(a1 + 32) = *__error();
    }

    else if (!v89)
    {
      v88 = *(v25 + 24);
      goto LABEL_154;
    }

    off_1EE341AE0(*(v25 + 24));
    goto LABEL_89;
  }

LABEL_154:
  sub_18192F808(v88, v103, DWORD1(v103));
  v90 = sub_18192FB78(a1, v25);
  v28 = v90;
  if (v90 == 1288 || !v90)
  {
    sub_18192E440(*(v25 + 24), (v25 + 160), 8);
    result = v28;
    v23 = &unk_1ED456000;
LABEL_27:
    *v22 = v25;
    ++*(v25 + 48);
    *(a1 + 64) = v22;
    v26 = v23[354];
    if (v26)
    {
      v27 = result;
      xmmword_1ED452F28(v26);
      result = v27;
    }

    if (!*(v25 + 8))
    {
      v22[1] = *(v25 + 56);
      *(v25 + 56) = v22;
      if (result)
      {
        return result;
      }

      goto LABEL_37;
    }

    v28 = result;
    xmmword_1ED452F18(*(v25 + 8));
    v29 = *(v25 + 8);
    v22[1] = *(v25 + 56);
    *(v25 + 56) = v22;
    if (v29)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

LABEL_89:
  sub_18192FD04(a1);
  v57 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_94:
    (*v57)(v22);
    goto LABEL_95;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48[0] -= xmmword_1ED452EC0(v22);
  --qword_1ED456A90;
  off_1ED452EB0(v22);
  v22 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v57 = &xmmword_1ED452F28;
    goto LABEL_94;
  }

LABEL_95:
  v29 = qword_1ED456B10;
  if (qword_1ED456B10)
  {
LABEL_31:
    xmmword_1ED452F28(v29);
  }

LABEL_32:
  result = v28;
  if (v28)
  {
    return result;
  }

LABEL_37:
  v13 = *(a1 + 64);
LABEL_9:
  v14 = *v13;
  v15 = *(*v13 + 8);
  if (v15)
  {
    xmmword_1ED452F18(v15);
  }

  if (*(v14 + 35))
  {
    LODWORD(result) = sub_18192FB78(a1, v14);
    if (result)
    {
      goto LABEL_56;
    }

    *(v14 + 35) = 0;
  }

  v16 = (v11 + a2) / v11 * v11;
  if (v16 <= *(v14 + 32))
  {
    goto LABEL_55;
  }

  v17 = *(v14 + 16);
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v102 = 0u;
  *(v14 + 28) = a3;
  v18 = *(v14 + 24);
  if ((v18 & 0x80000000) != 0)
  {
    goto LABEL_50;
  }

  if (off_1EE341B40(v18, &v102))
  {
    v19 = *__error();
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    *__strerrbuf = 0u;
    strerror_r(v19, __strerrbuf, 0x4FuLL);
    v20 = &byte_181A2878D;
    if (v17)
    {
      v20 = v17;
    }

    sqlite3_log(4874, "os_unix.c:%d: (%d) %s(%s) - %s", 48440, v19, "unixShmMap-stat", v20, __strerrbuf);
    LODWORD(result) = 4874;
    goto LABEL_56;
  }

  v31 = v16 * a3;
  v32 = v108;
  if (v108 >= v31)
  {
    goto LABEL_50;
  }

  if (!a4)
  {
LABEL_55:
    LODWORD(result) = 0;
    goto LABEL_56;
  }

  if (v108 < 0)
  {
    v32 = v108 + 4095;
  }

  v33 = (v31 + (v31 < 0 ? 0xFFF : 0)) >> 12;
  v34 = (v32 >> 12);
  if (v34 < v33)
  {
    v96 = v33;
    do
    {
      v35 = *(v14 + 24);
      v99 = v34;
      v36 = (v34 << 12) | 0xFFFLL;
      while (1)
      {
        v37 = off_1EE341BE8(v35, &byte_181A2878D, 1uLL, v36);
        if ((v37 & 0x80000000) == 0)
        {
          break;
        }

        if (*__error() != 4)
        {
          if (*__error() == 28)
          {
            v62 = 13;
          }

          else
          {
            v62 = 4874;
          }

          goto LABEL_104;
        }
      }

      if (v37 != 1)
      {
        v62 = 4874;
LABEL_104:
        v63 = *__error();
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        *__strerrbuf = 0u;
        strerror_r(v63, __strerrbuf, 0x4FuLL);
        v64 = &byte_181A2878D;
        if (v17)
        {
          v64 = v17;
        }

        sqlite3_log(v62, "os_unix.c:%d: (%d) %s(%s) - %s", 48468, v63, "unixShmMap-write", v64, __strerrbuf);
        LODWORD(result) = v62;
        goto LABEL_56;
      }

      v34 = v99 + 1;
    }

    while ((v99 + 1) < v96);
  }

LABEL_50:
  v38 = *(v14 + 40);
  if (sqlite3_initialize() || (v39 = sub_18190287C(v38, (8 * v16) & ~((8 * v16) >> 31), 0x10040436913F5)) == 0)
  {
    LODWORD(result) = 3082;
    goto LABEL_56;
  }

  *(v14 + 40) = v39;
  if (v16 <= *(v14 + 32))
  {
    goto LABEL_55;
  }

  v40 = v11 * a3;
  v41 = a3;
  while ((*(v14 + 24) & 0x80000000) != 0)
  {
    if (sqlite3_initialize() || (v48 = sub_181902484(v40, 3620296983)) == 0)
    {
      LODWORD(result) = 7;
      goto LABEL_56;
    }

    v49 = v48;
    bzero(v48, v40);
    v47 = v49;
LABEL_77:
    v50 = *(v14 + 32);
    if (v11 >= 1)
    {
      v51 = 8 * v50;
      v52 = v11;
      do
      {
        *(*(v14 + 40) + v51) = v47;
        v51 += 8;
        v47 += v41;
        --v52;
      }

      while (v52);
    }

    LODWORD(result) = 0;
    v45 = v50 + v11;
    *(v14 + 32) = v45;
    if (v16 <= v45)
    {
      goto LABEL_56;
    }
  }

  if (*(v14 + 34))
  {
    v46 = 1;
  }

  else
  {
    v46 = 3;
  }

  v47 = off_1EE341CD8(0, v40, v46, 1);
  if (v47 != -1)
  {
    goto LABEL_77;
  }

  v65 = *(v14 + 16);
  v66 = *__error();
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  *__strerrbuf = 0u;
  strerror_r(v66, __strerrbuf, 0x4FuLL);
  v67 = &byte_181A2878D;
  if (v65)
  {
    v67 = v65;
  }

  sqlite3_log(5386, "os_unix.c:%d: (%d) %s(%s) - %s", 48495, v66, "mmap", v67, __strerrbuf);
  LODWORD(result) = 5386;
LABEL_56:
  if (*(v14 + 32) <= a2)
  {
    v42 = 0;
  }

  else
  {
    v42 = *(*(v14 + 40) + 8 * a2);
  }

  *a5 = v42;
  if (result)
  {
    v43 = 1;
  }

  else
  {
    v43 = *(v14 + 34) == 0;
  }

  if (v43)
  {
    result = result;
  }

  else
  {
    result = 8;
  }

  if (*(v14 + 8))
  {
    v44 = result;
    xmmword_1ED452F28(*(v14 + 8));
    return v44;
  }

  return result;
}

uint64_t sub_1818A6FE4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    return 5130;
  }

  v5 = *v4;
  if (!*v4)
  {
    return 5130;
  }

  v7 = a3;
  v8 = a2;
  v10 = a3 + a2;
  v11 = (1 << (a3 + a2)) + (-1 << a2);
  if (((a4 & 1) == 0 || (v11 & (*(v4 + 9) | *(v4 + 10))) == 0) && a4 != 10 && (a4 != 6 || (v11 & *(v4 + 9)) != 0))
  {
    return 0;
  }

  LODWORD(v14) = a2;
  if (a3 < 1)
  {
LABEL_21:
    v18 = v5 + 128;
    if (a4)
    {
      if ((a4 & 4) != 0)
      {
        v23 = *(v18 + 4 * v8);
        if (v23 >= 2)
        {
          v12 = 0;
          *(v18 + 4 * v8) = v23 - 1;
          *(v4 + 9) &= ~v11;
          if (v14 <= v8)
          {
            return v12;
          }

          goto LABEL_50;
        }
      }

      v12 = sub_1819300A8(a1);
      if (!v12)
      {
        bzero((v18 + 4 * v8), 4 * v7);
        *(v4 + 9) &= ~v11;
        *(v4 + 10) &= ~v11;
        if (v14 <= v8)
        {
          return v12;
        }

        goto LABEL_50;
      }

      goto LABEL_49;
    }

    if ((a4 & 4) == 0)
    {
      if (v7 >= 1)
      {
        v19 = v8;
        while (!*(v18 + 4 * v19))
        {
          if (++v19 >= v10)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_48;
      }

LABEL_27:
      v20 = v10;
      v21 = sub_1819300A8(a1);
      if (!v21)
      {
        *(v4 + 10) |= v11;
        if (v7 >= 1)
        {
          if (v20 <= v8 + 1)
          {
            v22 = v8 + 1;
          }

          else
          {
            v22 = v20;
          }

          memset((v5 + 4 * v8 + 128), 255, 4 * (v22 + ~v8) + 4);
        }

        v12 = 0;
        if (v14 <= v8)
        {
          return v12;
        }

LABEL_50:
        v25 = v14;
        do
        {
          v26 = *(v5 + 56 + 8 * v25);
          if (v26)
          {
            xmmword_1ED452F28(v26);
          }

          --v25;
        }

        while (v25 > v8);
        return v12;
      }

LABEL_55:
      v12 = v21;
      if (v14 > v8)
      {
        goto LABEL_50;
      }

      return v12;
    }

    v24 = *(v18 + 4 * v8);
    if (v24 < 0)
    {
LABEL_48:
      v12 = 5;
LABEL_49:
      if (v14 <= v8)
      {
        return v12;
      }

      goto LABEL_50;
    }

    if (!v24)
    {
      v21 = sub_1819300A8(a1);
      if (v21)
      {
        goto LABEL_55;
      }

      v24 = *(v18 + 4 * v8);
    }

    v12 = 0;
    *(v4 + 9) |= v11;
    *(v18 + 4 * v8) = v24 + 1;
    if (v14 <= v8)
    {
      return v12;
    }

    goto LABEL_50;
  }

  v14 = a2;
  v27 = a3 + a2;
  v15 = v10;
  while (1)
  {
    v16 = *(v5 + 64 + 8 * v14);
    if (a4 != 10)
    {
      if (v16)
      {
        xmmword_1ED452F18(v16);
      }

      goto LABEL_13;
    }

    if (v16)
    {
      v17 = (*(&xmmword_1ED452F18 + 1))();
      if (v17)
      {
        break;
      }
    }

LABEL_13:
    if (++v14 >= v15)
    {
      v8 = a2;
      v10 = v27;
      goto LABEL_21;
    }
  }

  v12 = v17;
  v8 = a2;
  if (v14 > a2)
  {
    goto LABEL_50;
  }

  return v12;
}

uint64_t sub_1818A72FC(uint64_t a1, _DWORD *a2)
{
  v2 = **(a1 + 48);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    if (*v3)
    {
      if (*(*v3 + 16) == sub_181893698 && *(v3 + 128) <= 3u)
      {
        if (*(v3 + 168))
        {
          goto LABEL_39;
        }

        v20 = *(v3 + 64);
        if (v20)
        {
          if (*(*v20 + 168))
          {
            goto LABEL_39;
          }
        }
      }
    }
  }

  v22 = *v2;
  v23 = v2[1];
  v24 = v2[2];
  if (*(a1 + 63) != 2)
  {
    v4 = a1;
    v5 = a2;
    (*(*v3 + 120))(v3);
    a2 = v5;
    a1 = v4;
    v3 = *(v4 + 8);
  }

  if (v3 && *v3 && *(*v3 + 16) == sub_181893698 && *(v3 + 128) <= 3u && (*(v3 + 168) || (v21 = *(v3 + 64)) != 0 && *(*v21 + 168)))
  {
LABEL_39:
    sqlite3_log(27, "denying shm read from invalidated fd %d", *(v3 + 24));
    return 6922;
  }

  else
  {
    v6 = 1;
    if (!(v22 ^ *(v2 + 6) | *(&v22 + 1) ^ *(v2 + 7) | v23 ^ *(v2 + 8) | *(&v23 + 1) ^ *(v2 + 9) | v24 ^ *(v2 + 10) | *(&v24 + 1) ^ *(v2 + 11)))
    {
      if (BYTE12(v22))
      {
        v7 = v22 + DWORD2(v22) + DWORD1(v22) + v22;
        v8 = HIDWORD(v22) + DWORD1(v22) + v22 + v7;
        v9 = v7 + v23 + v8;
        v10 = DWORD1(v23) + v8 + v9;
        v11 = v9 + DWORD2(v23) + v10;
        v12 = HIDWORD(v23) + v10 + v11;
        v13 = v11 + v24 + v12;
        v6 = 1;
        if (__PAIR64__(DWORD1(v24) + v12 + v13, v13) == *(&v24 + 1))
        {
          v17 = *(a1 + 72) == v22 && *(a1 + 80) == *(&v22 + 1) && *(a1 + 88) == v23 && *(a1 + 96) == *(&v23 + 1) && *(a1 + 104) == v24;
          v6 = 0;
          if (!v17 || *(a1 + 112) != *(&v24 + 1))
          {
            *a2 = 1;
            *(a1 + 72) = v22;
            *(a1 + 88) = v23;
            *(a1 + 104) = v24;
            *(a1 + 56) = (*(a1 + 86) | (*(a1 + 86) << 16)) & 0x1FE00;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1818A758C(uint64_t a1, int a2, int a3)
{
  v28 = 0;
  v29 = 0;
  v6 = ((a2 + 4096) + 0xFFFFFFFF021) >> 12;
  if (*(a1 + 40) > v6 && (v7 = *(*(a1 + 48) + 8 * v6), (v28 = v7) != 0))
  {
    result = 0;
  }

  else
  {
    result = sub_1819346F0(a1, ((a2 + 4096) + 0xFFFFFFFF021) >> 12, &v28);
    v7 = v28;
    if (!v28)
    {
      if (result <= 1)
      {
        return 1;
      }

      else
      {
        return result;
      }
    }
  }

  v9 = 136;
  if (v6)
  {
    v9 = 0;
    v10 = (v6 << 12) - 34;
  }

  else
  {
    v10 = 0;
  }

  LODWORD(v29) = v10;
  if (!result)
  {
    v11 = v7 + v9;
    v12 = a2 - v10;
    if (a2 - v10 == 1)
    {
      bzero((v7 + v9), 0x8000 - v9);
    }

    v13 = v7 + 0x4000;
    v14 = v11 + 4 * v12;
    if (*(v14 - 4))
    {
      v15 = *(a1 + 88);
      if (v15)
      {
        v30 = 0;
        v31[0] = 0;
        v31[1] = 0;
        v16 = ((v15 + 4096) + 0xFFFFFFFF021) >> 12;
        if (*(a1 + 40) > v16 && (v17 = *(*(a1 + 48) + 8 * v16), (v31[0] = v17) != 0))
        {
          v18 = 0;
        }

        else
        {
          v18 = sub_1819346F0(a1, v16, v31);
          v17 = v31[0];
          if (!v31[0])
          {
            goto LABEL_31;
          }
        }

        if (v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = 136;
        }

        if (!v18)
        {
          v20 = 0;
          v21 = v17 + 0x4000;
          v22 = v17 + v19;
          v23 = (v16 << 12) - 34;
          if (!v16)
          {
            v23 = 0;
          }

          v24 = *(a1 + 88) - v23;
          do
          {
            if (v24 < *(v21 + v20))
            {
              *(v21 + v20) = 0;
            }

            v20 += 2;
          }

          while (v20 != 0x4000);
          bzero((v22 + 4 * v24), v21 - (v22 + 4 * v24));
        }
      }
    }

LABEL_31:
    v25 = (383 * a3) & 0x1FFF;
    if (*(v13 + 2 * v25))
    {
      v26 = ~a2 + v10;
      while (!__CFADD__(v26++, 1))
      {
        v25 = (v25 + 1) & 0x1FFF;
        if (!*(v13 + 2 * v25))
        {
          goto LABEL_35;
        }
      }

      return sub_18190EDA8(75467);
    }

    else
    {
LABEL_35:
      result = 0;
      *(v14 - 4) = a3;
      *(v13 + 2 * v25) = v12;
    }
  }

  return result;
}

__n128 sub_1818A77D8(uint64_t a1)
{
  *(a1 + 72) = 3007000;
  v1 = a1 + 72;
  *(a1 + 84) = 1;
  v2 = *(a1 + 76);
  v3 = v2 + *(a1 + 84);
  v4 = **(a1 + 48);
  v5 = v2 + *(a1 + 80) + 6014000;
  v6 = v3 + 3007000 + v5;
  v7 = v5 + *(a1 + 88) + v6;
  v8 = *(a1 + 92) + v6 + v7;
  v9 = v7 + *(a1 + 96) + v8;
  v10 = *(a1 + 100) + v8 + v9;
  v11 = v9 + *(a1 + 104) + v10;
  v12 = *(a1 + 108);
  *(a1 + 112) = v11;
  *(a1 + 116) = v12 + v10 + v11;
  v13 = *(a1 + 72);
  v14 = *(a1 + 104);
  *(v4 + 64) = *(a1 + 88);
  *(v4 + 80) = v14;
  *(v4 + 48) = v13;
  if (*(a1 + 63) != 2)
  {
    (*(**(a1 + 8) + 120))(*(a1 + 8));
  }

  result = *v1;
  v16 = *(v1 + 32);
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 32) = v16;
  *v4 = result;
  return result;
}

void sqlite3_log(int iErrCode, const char *zFormat, ...)
{
  va_start(va, zFormat);
  v3 = MEMORY[0x1EEE9AC00](*&iErrCode, zFormat);
  v20 = *MEMORY[0x1E69E9840];
  if (off_1ED453010 || (dword_1ED45305C & 1) != 0)
  {
    v10 = 0;
    v15 = 0;
    v11 = &v16;
    v12 = 5120;
    v13 = 0;
    v14 = 0;
    sqlite3_str_vappendf(&v10, v2, va);
    if (v11)
    {
      *(v11 + HIDWORD(v13)) = 0;
      if (v13)
      {
        if ((v14 & 0x400) == 0)
        {
          sub_18192A12C(&v10);
        }
      }
    }

    if (off_1ED453010)
    {
      (off_1ED453010)(qword_1ED453018, v3, &v16);
    }

    if (dword_1ED45305C)
    {
      if (qword_1ED456C38 != -1)
      {
        sub_181A1E95C();
      }

      if (v16 != 0x2068637573206F6ELL || *(&v16 + 7) != 0x203A656C62617420)
      {
        v5 = v16 == 0x6E656D6574617473 && *(&v16 + 1) == 0x7374726F62612074;
        if (!v5 || v17 != 544497952)
        {
          v7 = qword_1ED456C08;
          v8 = OS_LOG_TYPE_ERROR;
          switch(v3)
          {
            case 0:
            case 17:
            case 19:
            case 27:
            case 100:
            case 101:
              return;
            case 1:
            case 2:
            case 7:
            case 10:
            case 11:
            case 13:
            case 15:
            case 21:
            case 26:
              goto LABEL_24;
            case 14:
              v7 = qword_1ED456C10;
              goto LABEL_24;
            default:
              v8 = OS_LOG_TYPE_DEFAULT;
LABEL_24:
              if (os_log_type_enabled(v7, v8))
              {
                if ((dword_1ED45305C & 0x20) != 0)
                {
                  v9 = qword_1ED456C08;
                  if (os_log_type_enabled(qword_1ED456C08, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315138;
                    v19 = &v16;
                    _os_log_impl(&dword_18188D000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
                  }
                }

                if (os_log_type_enabled(v7, v8))
                {
                  *buf = 136315138;
                  v19 = &v16;
                  _os_log_impl(&dword_18188D000, v7, v8, "%s", buf, 0xCu);
                }
              }

              break;
          }
        }
      }
    }
  }
}

uint64_t sub_1818A7CF0(int a1, int a2)
{
  result = sub_181902484(192, 0x10A00403F9A86B3);
  if (result)
  {
    *(result + 160) = 0u;
    *(result + 176) = 0u;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    if (a2 <= 16)
    {
      v5 = 16;
    }

    else
    {
      v5 = a2;
    }

    v6 = (v5 + 7) & 0xFFFFFFF8;
    *result = a1;
    *(result + 4) = v6;
    v7 = v6 + a1;
    if (v7 <= 0x20000)
    {
      v8 = 0x20000;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*MEMORY[0x1E69E9AA0] + v8) & ~*MEMORY[0x1E69E9AA0];
    *(result + 8) = v9;
    v10 = v9 / v7;
    *(result + 124) = v10;
    if (v10 <= 10)
    {
      LODWORD(v10) = 10;
    }

    *(result + 16) = v10;
  }

  return result;
}

uint64_t sub_1818A7DA8(uint64_t a1, int a2)
{
  if (a2 >= 0x3FFFFFFF)
  {
    v2 = 0x3FFFFFFF;
  }

  else
  {
    v2 = a2;
  }

  if (v2 <= *(a1 + 16))
  {
    v2 = *(a1 + 16);
  }

  v3 = *(a1 + 124);
  v4 = (v2 - 1) / v3 + 1;
  v5 = v3 * v4;
  v6 = v5 << 31 >> 31;
  if (v6 != v5 || v6 < 0)
  {
    do
    {
      do
      {
        v4 /= 2;
        v7 = v3 * v4;
        v5 = v7 << 31 >> 31;
      }

      while (v5 != v7);
    }

    while (v5 < 0);
  }

  *(a1 + 128) = v4;
  *(a1 + 20) = v5;
  return sub_1819A811C(a1);
}

uint64_t sub_1818A7E0C(int *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v52[4] = *MEMORY[0x1E69E9840];
  v51 = 0;
  if (a3 == 1 && off_1EA831A10)
  {
    off_1EA831A10(a1);
  }

  v6 = sub_1819A9100(a1, v4, &v51);
  v7 = v6;
  if (!a3 || v6)
  {
    goto LABEL_82;
  }

  if ((*(a1 + 8) || *(a1 + 10) || *(a1 + 12) || *(a1 + 14)) && a1[7] >= a1[5])
  {
    v8 = a1[12];
    v9 = *&a1[4 * ((v8 - 1) & 3) + 16];
    if (!v9)
    {
      do
      {
        v10 = v8++ & 3;
        v9 = *&a1[4 * v10 + 16];
      }

      while (!v9);
      a1[12] = v8;
    }

    v6 = sub_1819A9100(a1, *(v9 - 24), 0);
    if (v6)
    {
      v7 = v6;
      v11 = a1[8];
      if (v11)
      {
        v12 = *(a1 + 5);
        if (v12)
        {
          v13 = (v12 + 8 * (*(v6 + 16) % v11));
          v14 = *v13;
          if (*v13 == v6)
          {
LABEL_21:
            *v13 = *(v6 + 24);
          }

          else
          {
            while (v14)
            {
              v15 = v14;
              v14 = *(v14 + 24);
              if (v14 == v6)
              {
                v13 = (v15 + 24);
                goto LABEL_21;
              }
            }
          }

          *(v6 + 24) = 0;
          --a1[7];
        }
      }

      goto LABEL_59;
    }
  }

  if (a3 != 2 && a1[7] >= a1[5])
  {
    v7 = 0;
    goto LABEL_59;
  }

  v6 = sub_1819352D4(64);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_59;
  }

  v16 = 0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v52[0] = a1 + 42;
  v52[1] = a1 + 34;
  v50 = a1 + 34;
  v52[2] = a1 + 38;
  v52[3] = 0;
  do
  {
    v19 = v52[v16];
    if (v19)
    {
      v18 = *v19;
      if (*v19 && *(v18 + 34) + *(v18 + 33) < a1[31])
      {
        goto LABEL_56;
      }

      goto LABEL_30;
    }

    v6 = sub_181902484(40, 0x10A2040E3317920);
    v18 = v6;
    if (!v6)
    {
      goto LABEL_30;
    }

    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    v20 = 8 * a1[31];
    v21 = sub_181902484(v20, 0x2004093837F09);
    if (v21)
    {
      v22 = v21;
      bzero(v21, v20);
      *(v18 + 16) = v22;
      v6 = vm_allocate(*MEMORY[0x1E69E9A60], (v18 + 24), *(a1 + 1), 1040187395);
      if (!v6)
      {
        *(v18 + 32) = 2;
        v25 = *v50;
        if (*v50)
        {
          *(v25 + 8) = v18;
          *v18 = v25;
        }

        else
        {
          *(a1 + 18) = v18;
        }

        *(a1 + 17) = v18;
        ++a1[33];
        goto LABEL_30;
      }

      v23 = *(v18 + 16);
      if (!v23)
      {
        goto LABEL_46;
      }

      v24 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_44;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] -= xmmword_1ED452EC0(v23);
      --qword_1ED456A90;
      off_1ED452EB0(v23);
      v23 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v24 = &xmmword_1ED452F28;
LABEL_44:
        (*v24)(v23);
      }
    }

    else
    {
      *(v18 + 16) = 0;
    }

LABEL_46:
    v17 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_29;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48[0] -= xmmword_1ED452EC0(v18);
    --qword_1ED456A90;
    v6 = off_1ED452EB0(v18);
    v18 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v17 = &xmmword_1ED452F28;
LABEL_29:
      v6 = (*v17)(v18);
      v18 = 0;
    }

LABEL_30:
    ++v16;
  }

  while (v16 != 4);
  if (!v18)
  {
    goto LABEL_57;
  }

LABEL_56:
  v6 = sub_1818A84DC(a1, v18, 0, 0);
  if (!v6)
  {
    v41 = *(v18 + 16);
    v42 = -1;
    do
    {
      v43 = *v41++;
      ++v42;
    }

    while (v43);
    *(v41 - 1) = v7;
    v44 = *a1;
    v45 = a1[1];
    v46 = v45 + v44;
    v47 = *(v18 + 24) + (v45 + v44) * v42;
    *v7 = v47;
    *(v7 + 8) = v47 + v44;
    *(v7 + 56) = v18;
    if (dword_1ED452E80)
    {
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48[0] += v46;
      if (qword_1ED456A48[0] > qword_1ED456A98)
      {
        qword_1ED456A98 = qword_1ED456A48[0];
      }

      v48 = qword_1ED456A90;
      v49 = ++qword_1ED456A90;
      if (v48 >= qword_1ED456AE0)
      {
        qword_1ED456AE0 = v49;
      }

      v6 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F28(xmmword_1ED456AF0);
      }
    }
  }

LABEL_57:
  if (!*v7)
  {
    v6 = sub_181935120(v7);
    v7 = 0;
  }

LABEL_59:
  v26 = a1[8];
  if (a1[7] >= v26)
  {
    v27 = 2 * v26;
    v28 = v27 <= 0x100 ? 256 : v27;
    v6 = sub_181902484(8 * v28, 0x2004093837F09);
    if (v6)
    {
      v29 = v6;
      bzero(v6, 8 * v28);
      v30 = a1[8];
      if (v30)
      {
        for (i = 0; i != v30; ++i)
        {
          v32 = *(*(a1 + 5) + 8 * i);
          if (v32)
          {
            do
            {
              v33 = *(v32 + 16) % v28;
              v34 = *(v32 + 24);
              *(v32 + 24) = *(v29 + 8 * v33);
              *(v29 + 8 * v33) = v32;
              v32 = v34;
            }

            while (v34);
          }
        }
      }

      v35 = *(a1 + 5);
      if (v35)
      {
        v36 = &off_1ED452EB0;
        if (!dword_1ED452E80)
        {
          goto LABEL_76;
        }

        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48[0] -= xmmword_1ED452EC0(v35);
        --qword_1ED456A90;
        v6 = off_1ED452EB0(v35);
        v35 = xmmword_1ED456AF0;
        if (xmmword_1ED456AF0)
        {
          v36 = &xmmword_1ED452F28;
LABEL_76:
          v6 = (*v36)(v35);
        }
      }

      *(a1 + 5) = v29;
      a1[8] = v28;
    }
  }

  if (v7)
  {
    v37 = a1[8];
    if (v37)
    {
      if (*(a1 + 5))
      {
        v38 = v4 % v37;
        ++a1[7];
        *(v7 + 16) = v4;
        *(v7 + 33) = 4;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        bzero(*v7, *a1);
        bzero(*(v7 + 8), a1[1]);
        v39 = *(a1 + 5);
        *(v7 + 24) = *(v39 + 8 * v38);
        *(v39 + 8 * v38) = v7;
      }
    }
  }

LABEL_82:
  if (a3 == 1 && off_1EA831A18)
  {
    off_1EA831A18(v6);
  }

  if (a1[30] < v4)
  {
    a1[30] = v4;
  }

  if (v7)
  {
    *(v7 + 32) = *(v7 + 32) & 0xFE | v51 & 1;
  }

  return v7;
}

uint64_t sub_1818A84DC(uint64_t a1, uint64_t *a2, int a3, _DWORD *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v8 = *(a2 + 33);
  if (!v8)
  {
    if (*(a2 + 32) == 1)
    {
      v52 = 0;
      result = MEMORY[0x1865D8700](*MEMORY[0x1E69E9A60], a2[3], 0, &v52);
      if (result)
      {
        return result;
      }

      if (*(a1 + 184))
      {
        *(a1 + 184) = 0;
        goto LABEL_141;
      }

      if (v52 == 2)
      {
LABEL_141:
        bzero(a2[3], *(a1 + 8));
        if (*(a2 + 34))
        {
          v50 = *(a1 + 124);
          if (v50 >= 1)
          {
            for (i = 0; i < v50; ++i)
            {
              v53 = *(a2[2] + 8 * i);
              if (v53)
              {
                sub_1819A8D0C(a1, &v53);
                v50 = *(a1 + 124);
              }
            }
          }
        }

        if (a4)
        {
          *a4 = 14;
        }

        v10 = *(a2 + 33);
        if (a3 != 1)
        {
          *(a2 + 33) = ++v10;
        }

        goto LABEL_11;
      }

      v8 = *(a2 + 33);
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = v8 + 1;
  *(a2 + 33) = v10;
  if (a3 == 1)
  {
    --*(a2 + 34);
  }

LABEL_11:
  if (v10 == 1)
  {
    v16 = *(a2 + 32);
    if (v16 == 2)
    {
      v41 = *a2;
      if (!*a2 && *(a1 + 144) != a2)
      {
        goto LABEL_75;
      }

      v18 = a2 + 1;
      v42 = a2[1];
      if (v42)
      {
        *v42 = v41;
        v41 = *a2;
      }

      if (v41)
      {
        *(v41 + 8) = v42;
      }

      if (*(a1 + 136) == a2)
      {
        *(a1 + 136) = v41;
      }

      v20 = (a1 + 144);
      if (*(a1 + 144) != a2)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v16 != 1)
      {
        if (!*(a2 + 32))
        {
          v17 = *a2;
          if (*a2 || *(a1 + 176) == a2)
          {
            v18 = a2 + 1;
            v19 = a2[1];
            if (v19)
            {
              *v19 = v17;
              v17 = *a2;
            }

            if (v17)
            {
              *(v17 + 8) = v19;
            }

            if (*(a1 + 168) == a2)
            {
              *(a1 + 168) = v17;
            }

            v20 = (a1 + 176);
            if (*(a1 + 176) != a2)
            {
              goto LABEL_74;
            }

            goto LABEL_73;
          }
        }

LABEL_75:
        v37 = (a1 + 168);
        if (*(a2 + 34) + 1 < *(a1 + 124))
        {
          v38 = *v37;
          if (!*v37)
          {
LABEL_121:
            *(a1 + 176) = a2;
            goto LABEL_126;
          }

LABEL_77:
          *(v38 + 8) = a2;
          *a2 = v38;
LABEL_126:
          result = 0;
          *v37 = a2;
          *(a2 + 32) = 0;
          return result;
        }

LABEL_122:
        v49 = *(a1 + 176);
        v48 = (a1 + 176);
        v47 = v49;
        if (v49)
        {
          *v47 = a2;
          a2[1] = v47;
        }

        else
        {
          *v37 = a2;
        }

        v37 = v48;
        goto LABEL_126;
      }

      v35 = *a2;
      if (!*a2 && *(a1 + 160) != a2)
      {
        goto LABEL_75;
      }

      v18 = a2 + 1;
      v36 = a2[1];
      if (v36)
      {
        *v36 = v35;
        v35 = *a2;
      }

      if (v35)
      {
        *(v35 + 8) = v36;
      }

      if (*(a1 + 152) == a2)
      {
        *(a1 + 152) = v35;
      }

      v20 = (a1 + 160);
      if (*(a1 + 160) != a2)
      {
        goto LABEL_74;
      }
    }

LABEL_73:
    *v20 = *v18;
LABEL_74:
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_75;
  }

  if (v10)
  {
    v21 = *(a2 + 34) + v10;
    if (v21 != *(a1 + 124))
    {
      return 0;
    }

    v22 = *(a2 + 32);
    if (v22 == 2)
    {
      v45 = *a2;
      if (!*a2 && *(a1 + 144) != a2)
      {
        goto LABEL_119;
      }

      v24 = a2 + 1;
      v46 = a2[1];
      if (v46)
      {
        *v46 = v45;
        v45 = *a2;
      }

      if (v45)
      {
        *(v45 + 8) = v46;
      }

      if (*(a1 + 136) == a2)
      {
        *(a1 + 136) = v45;
      }

      v26 = (a1 + 144);
      v27 = *(a1 + 144);
    }

    else if (v22 == 1)
    {
      v43 = *a2;
      if (!*a2 && *(a1 + 160) != a2)
      {
        goto LABEL_119;
      }

      v24 = a2 + 1;
      v44 = a2[1];
      if (v44)
      {
        *v44 = v43;
        v43 = *a2;
      }

      if (v43)
      {
        *(v43 + 8) = v44;
      }

      if (*(a1 + 152) == a2)
      {
        *(a1 + 152) = v43;
      }

      v26 = (a1 + 160);
      v27 = *(a1 + 160);
    }

    else
    {
      if (*(a2 + 32))
      {
        goto LABEL_119;
      }

      v23 = *a2;
      if (!*a2 && *(a1 + 176) != a2)
      {
        goto LABEL_119;
      }

      v24 = a2 + 1;
      v25 = a2[1];
      if (v25)
      {
        *v25 = v23;
        v23 = *a2;
      }

      if (v23)
      {
        *(v23 + 8) = v25;
      }

      if (*(a1 + 168) == a2)
      {
        *(a1 + 168) = v23;
      }

      v26 = (a1 + 176);
      v27 = *(a1 + 176);
    }

    if (v27 == a2)
    {
      *v26 = *v24;
    }

    *a2 = 0;
    a2[1] = 0;
LABEL_119:
    v37 = (a1 + 168);
    if (v21 < *(a1 + 124))
    {
      v38 = *v37;
      if (!*v37)
      {
        goto LABEL_121;
      }

      goto LABEL_77;
    }

    goto LABEL_122;
  }

  v11 = *(a2 + 32);
  if (v11 == 2)
  {
    v39 = *a2;
    if (!*a2 && *(a1 + 144) != a2)
    {
      goto LABEL_60;
    }

    v13 = a2 + 1;
    v40 = a2[1];
    if (v40)
    {
      *v40 = v39;
      v39 = *a2;
    }

    if (v39)
    {
      *(v39 + 8) = v40;
    }

    if (*(a1 + 136) == a2)
    {
      *(a1 + 136) = v39;
    }

    v15 = (a1 + 144);
    if (*(a1 + 144) != a2)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (v11 == 1)
  {
    v28 = *a2;
    if (!*a2 && *(a1 + 160) != a2)
    {
      goto LABEL_60;
    }

    v13 = a2 + 1;
    v29 = a2[1];
    if (v29)
    {
      *v29 = v28;
      v28 = *a2;
    }

    if (v28)
    {
      *(v28 + 8) = v29;
    }

    if (*(a1 + 152) == a2)
    {
      *(a1 + 152) = v28;
    }

    v15 = (a1 + 160);
    if (*(a1 + 160) != a2)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (*(a2 + 32))
  {
    goto LABEL_60;
  }

  v12 = *a2;
  if (!*a2 && *(a1 + 176) != a2)
  {
    goto LABEL_60;
  }

  v13 = a2 + 1;
  v14 = a2[1];
  if (v14)
  {
    *v14 = v12;
    v12 = *a2;
  }

  if (v12)
  {
    *(v12 + 8) = v14;
  }

  if (*(a1 + 168) == a2)
  {
    *(a1 + 168) = v12;
  }

  v15 = (a1 + 176);
  if (*(a1 + 176) == a2)
  {
LABEL_58:
    *v15 = *v13;
  }

LABEL_59:
  *a2 = 0;
  a2[1] = 0;
LABEL_60:
  v30 = (a1 + 136);
  if (*(a2 + 34) >= *(a1 + 124))
  {
    v34 = *(a1 + 144);
    v33 = (a1 + 144);
    v32 = v34;
    if (v34)
    {
      *v32 = a2;
      a2[1] = v32;
    }

    else
    {
      *v30 = a2;
    }

    v30 = v33;
  }

  else
  {
    v31 = *v30;
    if (*v30)
    {
      *(v31 + 8) = a2;
      *a2 = v31;
    }

    else
    {
      *(a1 + 144) = a2;
    }
  }

  result = 0;
  *v30 = a2;
  *(a2 + 32) = 2;
  return result;
}

__n128 sub_1818A8A8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v11 = 0;
  v3 = *(v2 + 344);
  if (!v3)
  {
    goto LABEL_8;
  }

  if (sub_18193452C(v3, *(a1 + 48), &v11))
  {
    return result;
  }

  if (v11)
  {
    v5 = *(v2 + 344);
    v6 = *(v2 + 200);
    v7 = (*(v5 + 86) | (*(v5 + 86) << 16)) & 0x1FE00;
    if (v7 >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(**(v5 + 16) + 16))(*(v5 + 16), *(a1 + 8), v8, (v7 | 0x18u) * (v11 - 1) + 56);
  }

  else
  {
LABEL_8:
    v9 = (*(**(v2 + 72) + 16))(*(v2 + 72), *(a1 + 8), *(v2 + 200), *(v2 + 200) * (*(a1 + 48) - 1));
    if (v9 == 522)
    {
      v9 = 0;
    }
  }

  if (*(a1 + 48) == 1)
  {
    if (!v9)
    {
      result = *(*(a1 + 8) + 24);
      *(v2 + 136) = result;
      v10 = *(v2 + 296);
      if (v10)
      {
        goto LABEL_14;
      }

      return result;
    }

    *(v2 + 136) = -1;
    *(v2 + 144) = -1;
  }

  v10 = *(v2 + 296);
  if (v10)
  {
LABEL_14:
    v10(*(v2 + 320), *(a1 + 8), *(a1 + 48), 3);
  }

  return result;
}

_BYTE *sub_1818A8BAC(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v13 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v11 = 0x10000000000;
  v3 = *(a1 + 136);
  v8 = &v12;
  v9 = 512;
  v10 = v3;
  sqlite3_str_vappendf(&v7, a2, va);
  if (v8 && (v8[v11] = 0, v10) && (v11 & 0x40000000000) == 0)
  {
    result = sub_18192A12C(&v7);
  }

  else
  {
    result = v8;
  }

  if (BYTE4(v11) == 7 && !*(a1 + 103) && !*(a1 + 104))
  {
    *(a1 + 103) = 1;
    if (*(a1 + 220) >= 1)
    {
      *(a1 + 424) = 1;
    }

    ++*(a1 + 432);
    *(a1 + 436) = 0;
    if (*(a1 + 344))
    {
      v5 = result;
      sub_181910730(*(a1 + 344), "out of memory", va);
      result = v5;
      for (i = *(a1 + 344); ; ++*(i + 52))
      {
        *(i + 24) = 7;
        i = *(i + 216);
        if (!i)
        {
          break;
        }
      }
    }
  }

  return result;
}

void *sub_1818A8CF0(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = a2;
  v22 = 0;
  if (!a3 || a2 == 156 && *a3 && (v7 = a1, v8 = sub_181949B34(*a3, &v22), a1 = v7, v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a3 + 8) + 1;
  }

  result = sub_181929E8C(a1, v9 + 80, 0x1032040B79D87BDLL);
  if (result)
  {
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *result = 0u;
    *result = v6;
    *(result + 26) = -1;
    if (a3)
    {
      if (!v9)
      {
        v14 = v22;
        if (v22)
        {
          v15 = 276826112;
        }

        else
        {
          v15 = 545261568;
        }

        *(result + 1) |= v15;
        *(result + 2) = v14;
        goto LABEL_29;
      }

      v11 = result + 10;
      result[1] = result + 10;
      v12 = *(a3 + 8);
      if (v12)
      {
        v13 = result;
        memcpy(result + 10, *a3, v12);
        result = v13;
        v11[*(a3 + 8)] = 0;
        if (!a4)
        {
          goto LABEL_29;
        }

LABEL_18:
        v16 = *v11;
        if (byte_181A204C8[*v11] < 0)
        {
          v17 = 0;
          if (v16 == 34)
          {
            v18 = 67108992;
          }

          else
          {
            v18 = 0x4000000;
          }

          *(result + 1) |= v18;
          if (v16 == 91)
          {
            v16 = 93;
          }

          for (i = 1; ; ++i)
          {
            v20 = i;
            v21 = v11[i];
            if (v21 == v16)
            {
              ++i;
              LOBYTE(v21) = v16;
              if (v11[v20 + 1] != v16)
              {
                break;
              }
            }

            v11[v17++] = v21;
          }

          v11[v17] = 0;
        }

        goto LABEL_29;
      }

      *v11 = 0;
      if (a4)
      {
        goto LABEL_18;
      }
    }

LABEL_29:
    *(result + 10) = 1;
  }

  return result;
}

void *sub_1818A8EA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      *(a2 + 24) = a4;
      *(a2 + 4) |= *(a4 + 4) & 0x400208;
      v5 = *(a4 + 40) + 1;
      *(a2 + 40) = v5;
      if (!a3)
      {
        return result;
      }
    }

    else
    {
      v5 = 1;
      *(a2 + 40) = 1;
      if (!a3)
      {
        return result;
      }
    }

    *(a2 + 16) = a3;
    *(a2 + 4) |= *(a3 + 4) & 0x400208;
    v8 = *(a3 + 40);
    if (v8 >= v5)
    {
      *(a2 + 40) = v8 + 1;
    }
  }

  else
  {
    if (a3)
    {
      v6 = result;
      v7 = a4;
      sub_1819439E0(result, a3);
      result = v6;
      a4 = v7;
    }

    if (a4)
    {

      return sub_1819439E0(result, a4);
    }
  }

  return result;
}

int *sub_1818A8F6C(uint64_t *a1, int *a2, unsigned __int8 *a3)
{
  if (!a2)
  {
    return sub_18197FD9C(*a1, a3);
  }

  v3 = *a2;
  if (a2[1] <= *a2)
  {
    return sub_18197FE14(*a1, a2, a3);
  }

  *a2 = v3 + 1;
  v4 = &a2[6 * v3];
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = a3;
  return a2;
}

int *sub_1818A8FB4(uint64_t *a1, int *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a4;
  v12 = *a1;
  if (!a2 && a7)
  {
    if (*a7)
    {
      v13 = "ON";
LABEL_7:
      sub_181910730(a1, "a JOIN clause is required before %s", v13);
      goto LABEL_18;
    }

    if (a7[1])
    {
      v13 = "USING";
      goto LABEL_7;
    }
  }

  result = sub_1818A930C(a1, a2, a3, a4);
  if (result)
  {
    v17 = &result[18 * *result - 16];
    v18 = *(a1 + 302);
    v19 = result;
    if (v18 >= 2)
    {
      v20 = *v17;
      if (*v17)
      {
        if (!v10 || !*v10)
        {
          v10 = a3;
        }

        if (v18 != 3)
        {
          v21 = *a1 ? sub_181929E8C(*a1, 0x20uLL, 0x10F00409A20EBA4) : sub_181902484(32, 0x10F00409A20EBA4);
          v26 = v21;
          result = v19;
          if (v26)
          {
            *v26 = 0u;
            *(v26 + 1) = 0u;
            *v26 = v20;
            *(v26 + 1) = *v10;
            v26[3] = a1[51];
            a1[51] = v26;
          }
        }
      }
    }

    v27 = *(a5 + 8);
    if (v27)
    {
      v28 = *a5;
      if (v28)
      {
        v29 = sub_181929E8C(v12, v27 + 1, 1565185748);
        v30 = v29;
        if (v29 && (memcpy(v29, v28, v27), v30[v27] = 0, v31 = *v30, byte_181A204C8[*v30] < 0))
        {
          v32 = 0;
          if (v31 == 91)
          {
            v31 = 93;
          }

          v33 = 1;
          result = v19;
          while (1)
          {
            v34 = v33;
            v35 = v30[v33];
            if (v35 == v31)
            {
              ++v33;
              LOBYTE(v35) = v31;
              if (v30[v34 + 1] != v31)
              {
                break;
              }
            }

            v30[v32++] = v35;
            ++v33;
          }

          v30[v32] = 0;
        }

        else
        {
          result = v19;
        }
      }

      else
      {
        v30 = 0;
      }

      *(v17 + 1) = v30;
    }

    if (a6)
    {
      v36 = *(v17 + 27);
      if (v36)
      {
        *(v17 + 8) = 0;
        *(v17 + 27) = v36 & 0xFE;
      }

      else
      {
        v37 = *(v17 + 8);
        if (v37)
        {
          sub_181929C84(*a1, v37);
          *(v17 + 8) = 0;
        }
      }

      v38 = sub_181929E8C(*a1, 0x18uLL, 0x10200405AF6BDC9);
      *(v17 + 8) = v38;
      if (!v38)
      {
        sub_1818BB408(*a1, a6, 1, v39);
        result = v19;
        if (a7)
        {
LABEL_56:
          if (a7[1])
          {
            *(v17 + 25) |= 0x800u;
            *(v17 + 7) = a7[1];
          }

          else
          {
            *(v17 + 7) = *a7;
          }

          return result;
        }

LABEL_59:
        *(v17 + 7) = 0;
        return result;
      }

      *(v17 + 25) |= 4u;
      v38[1] = 0;
      v38[2] = 0;
      *v38 = a6;
      result = v19;
      if ((*(a6 + 5) & 8) != 0)
      {
        *(v17 + 25) |= 0x4000u;
      }
    }

    if (a7)
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  if (a7)
  {
LABEL_18:
    if (*a7)
    {
      sub_1819439E0(v12, *a7);
    }

    else
    {
      v22 = a7[1];
      if (v22)
      {
        v23 = *v22;
        if (*v22 >= 1)
        {
          v24 = 0;
          do
          {
            v25 = v22[v24 + 1];
            if (v25)
            {
              sub_181929C84(v12, v25);
              v23 = *v22;
            }

            ++v24;
          }

          while (v24 < v23);
        }

        sub_181939EC8(v12, v22);
      }
    }
  }

  if (a6)
  {
    sub_1818BB408(v12, a6, 1, v14);
  }

  return 0;
}

int *sub_1818A930C(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (a2)
  {
    result = sub_1818A95FC(a1, a2, 1, *a2);
    if (!result)
    {
      sub_1818BB5B0(v6, a2, v9, v10);
      return 0;
    }

    v11 = *result - 1;
  }

  else
  {
    result = sub_181929E8C(*a1, 0x50uLL, 0x103204056E3F560);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    *result = 0x100000001;
    *(result + 6) = 0u;
    *(result + 2) = 0u;
    *(result + 10) = 0u;
    *(result + 14) = 0u;
    *(result + 9) = 0;
    result[9] = -1;
  }

  v12 = &result[18 * v11];
  if (!a4 || (v13 = *a4) == 0)
  {
    if (a3 && (v27 = *a3) != 0)
    {
      v28 = result;
      v29 = *(a3 + 8);
      v30 = sub_181929E8C(v6, v29 + 1, 1565185748);
      v31 = v30;
      if (v30 && (memcpy(v30, v27, v29), v31[v29] = 0, byte_181A204C8[*v31] < 0))
      {
        v32 = 0;
        if (*v31 == 91)
        {
          v33 = 93;
        }

        else
        {
          v33 = *v31;
        }

        v34 = 1;
        result = v28;
        while (1)
        {
          v35 = v34;
          v36 = v31[v34];
          if (v36 == v33)
          {
            ++v34;
            LOBYTE(v36) = v33;
            if (v31[v35 + 1] != v33)
            {
              break;
            }
          }

          v31[v32++] = v36;
          ++v34;
        }

        v31[v32] = 0;
      }

      else
      {
        result = v28;
      }
    }

    else
    {
      v31 = 0;
    }

    *(v12 + 1) = v31;
LABEL_31:
    *(v12 + 9) = 0;
    return result;
  }

  v14 = result;
  v15 = *(a4 + 8);
  v16 = sub_181929E8C(v6, v15 + 1, 1565185748);
  v17 = v16;
  if (v16)
  {
    memcpy(v16, v13, v15);
    v17[v15] = 0;
    if (byte_181A204C8[*v17] < 0)
    {
      v18 = 0;
      if (*v17 == 91)
      {
        v19 = 93;
      }

      else
      {
        v19 = *v17;
      }

      for (i = 1; ; ++i)
      {
        v21 = i;
        v22 = v17[i];
        if (v22 == v19)
        {
          ++i;
          LOBYTE(v22) = v19;
          if (v17[v21 + 1] != v19)
          {
            break;
          }
        }

        v17[v18++] = v22;
      }

      v17[v18] = 0;
    }
  }

  *(v12 + 1) = v17;
  result = v14;
  if (!a3)
  {
    goto LABEL_31;
  }

  v23 = *a3;
  if (!*a3)
  {
    goto LABEL_31;
  }

  v24 = *(a3 + 8);
  v25 = sub_181929E8C(v6, v24 + 1, 1565185748);
  v26 = v25;
  if (v25 && (memcpy(v25, v23, v24), v26[v24] = 0, byte_181A204C8[*v26] < 0))
  {
    v37 = 0;
    if (*v26 == 91)
    {
      v38 = 93;
    }

    else
    {
      v38 = *v26;
    }

    v39 = 1;
    result = v14;
    while (1)
    {
      v40 = v39;
      v41 = v26[v39];
      if (v41 == v38)
      {
        ++v39;
        LOBYTE(v41) = v38;
        if (v26[v40 + 1] != v38)
        {
          break;
        }
      }

      v26[v37++] = v41;
      ++v39;
    }

    v26[v37] = 0;
    *(v12 + 9) = v26;
  }

  else
  {
    result = v14;
    *(v12 + 9) = v26;
  }

  return result;
}

int *sub_1818A95FC(uint64_t *a1, int *a2, int a3, int a4)
{
  v6 = a2;
  v7 = *a2;
  v8 = *a2 + a3;
  if (v8 <= a2[1])
  {
    goto LABEL_16;
  }

  if (v8 >= 200)
  {
    sub_181910730(a1, "too many FROM clause terms, max: %d", 200);
    return 0;
  }

  v9 = *a1;
  if (2 * v7 + a3 >= 200)
  {
    v10 = 200;
  }

  else
  {
    v10 = 2 * v7 + a3;
  }

  v11 = 72 * v10 + 8;
  if (*(v9 + 512) <= a2)
  {
    goto LABEL_13;
  }

  if (*(v9 + 496) > a2)
  {
    if (*(v9 + 504) <= a2 && v11 <= *(v9 + 438))
    {
      goto LABEL_15;
    }

LABEL_13:
    v12 = sub_181929F38(v9, a2, v11, 0x103204056E3F560);
    v6 = v12;
    if (!v12)
    {
      return v6;
    }

    v7 = *v12;
    goto LABEL_15;
  }

  if (v11 >= 0x81)
  {
    goto LABEL_13;
  }

LABEL_15:
  v6[1] = v10;
LABEL_16:
  if (v7 <= a4)
  {
    v15 = a4;
    v14 = a3;
  }

  else
  {
    v13 = v7;
    v14 = a3;
    v15 = a4;
    v16 = 72 * v7 - 64;
    v17 = 72 * (v13 + a3) - 64;
    do
    {
      --v13;
      v18 = v6 + v17;
      *v18 = *(v6 + v16);
      v19 = *(v6 + v16 + 16);
      v20 = *(v6 + v16 + 32);
      v21 = *(v6 + v16 + 48);
      *(v18 + 8) = *(v6 + v16 + 64);
      *(v18 + 2) = v20;
      *(v18 + 3) = v21;
      *(v18 + 1) = v19;
      v16 -= 72;
      v17 -= 72;
    }

    while (v13 > a4);
    v7 = *v6;
  }

  *v6 = v7 + a3;
  bzero(&v6[18 * v15 + 2], 72 * v14);
  if (a3 >= 1)
  {
    v22 = a4 + a3;
    if (v15 + 1 > v22)
    {
      v23 = v15 + 1;
    }

    else
    {
      v23 = a4 + a3;
    }

    v24 = v23 - v15;
    if ((v23 - v15) < 2)
    {
      v25 = v15;
LABEL_30:
      v28 = 72 * v25 + 36;
      do
      {
        *(v6 + v28) = -1;
        ++v25;
        v28 += 72;
      }

      while (v25 < v22);
      return v6;
    }

    v25 = v15 + (v24 & 0xFFFFFFFFFFFFFFFELL);
    v26 = &v6[18 * v15 + 27];
    v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v26 - 18) = -1;
      *v26 = -1;
      v26 += 36;
      v27 -= 2;
    }

    while (v27);
    if (v24 != (v24 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_30;
    }
  }

  return v6;
}

_OWORD *sub_1818A9824(uint64_t *a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  memset(v26, 0, sizeof(v26));
  v15 = sub_181929E8C(*a1, 0x80uLL, 0x102004058EEC421);
  v17 = v15;
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v26;
  }

  if (!a2)
  {
    v19 = sub_181929E8C(*a1, 0x51uLL, 0x1032040B79D87BDLL);
    if (v19)
    {
      *(v19 + 2) = 0u;
      *(v19 + 3) = 0u;
      *(v19 + 4) = 0u;
      *v19 = 0u;
      *(v19 + 1) = 0u;
      *v19 = -76;
      *(v19 + 26) = -1;
      *(v19 + 80) = 0;
      v19[1] = v19 + 10;
      *(v19 + 10) = 1;
    }

    a2 = sub_18197FD9C(*a1, v19);
  }

  if (v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v26;
  }

  *(v20 + 4) = a2;
  *v18 = -117;
  *(v20 + 1) = 0;
  *(v20 + 1) = a8;
  v21 = *(a1 + 31) + 1;
  *(a1 + 31) = v21;
  *(v20 + 4) = v21;
  *(v20 + 20) = -1;
  *(v20 + 1) = 0;
  if (!a3)
  {
    if (*a1)
    {
      a3 = sub_181929E8C(*a1, 0x50uLL, 0x103204056E3F560);
      if (!a3)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    a3 = sub_181902484(80, 0x103204056E3F560);
    if (a3)
    {
LABEL_14:
      a3[3] = 0u;
      a3[4] = 0u;
      a3[1] = 0u;
      a3[2] = 0u;
      *a3 = 0u;
    }
  }

LABEL_15:
  if (v17)
  {
    v22 = v17;
  }

  else
  {
    v22 = v26;
  }

  *(v22 + 5) = a3;
  *(v22 + 6) = a4;
  *(v22 + 7) = a5;
  *(v22 + 8) = a6;
  *(v22 + 9) = a7;
  v22[5] = 0u;
  *(v22 + 12) = a9;
  *(v22 + 104) = 0u;
  *(v22 + 15) = 0;
  if (*(*a1 + 103))
  {
    sub_1818BB408(*a1, v18, v18 != v26, v16);
    return 0;
  }

  return v17;
}

uint64_t sub_1818A9A10(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v732 = 0;
  v731 = 0;
  v729 = 0;
  v6 = *a1;
  v7 = sub_1818E7DFC(a1);
  if (!a2 || *(a1 + 13))
  {
    return 1;
  }

  v9 = *a1;
  v10 = *(*a1 + 528);
  v721 = v7;
  if (!v10 || *(v9 + 197) || *(a1 + 302))
  {
    goto LABEL_8;
  }

  v20 = v10(*(v9 + 536), 21, 0, 0, 0, a1[46]);
  if (v20 == 1)
  {
    v21 = 23;
    sub_181910730(a1, "not authorized");
LABEL_40:
    *(a1 + 6) = v21;
    return 1;
  }

  if ((v20 & 0xFFFFFFFD) != 0)
  {
    v21 = 1;
    sub_181910730(a1, "authorizer malfunction");
    goto LABEL_40;
  }

  if (v20)
  {
    return 1;
  }

LABEL_8:
  if (*a3 <= 6u)
  {
    v11 = *(a2 + 9);
    if (v11)
    {
      sub_18195B158(a1, sub_181964684, v11);
      *(a2 + 9) = 0;
    }

    *(a2 + 1) = *(a2 + 1) & 0xFFBFFFFE | 0x400000;
  }

  memset(v730, 0, 56);
  sub_18195FBC4(a1, a2, 0);
  if (*(a1 + 13))
  {
    goto LABEL_13;
  }

  v18 = *(a2 + 1);
  if ((v18 & 0x800000) != 0)
  {
    v19 = *(a2 + 5);
    if (sub_181964690((v19 + 2), v19))
    {
      sub_181910730(a1, "target object/alias may not appear in FROM clause: %s");
      goto LABEL_13;
    }

    *(a2 + 1) = v18 & 0xFF7FFFFF;
  }

  if (*a3 == 9)
  {
    sub_18196478C(a1, a2, v12, v13);
  }

  v710 = a3;
  if (!*(a2 + 14) || *(a2 + 10) || (a2[6] & 0x10) != 0 || *(a1 + 302) > 1u)
  {
    goto LABEL_133;
  }

  v22 = sub_1818E7DFC(a1);
  v711 = *(a2 + 5);
  v23 = *a1;
  v692 = *(a2 + 7);
  v698 = *(a2 + 6);
  v685 = *(a2 + 8);
  v24 = *(a2 + 14);
  v25 = *(a2 + 1);
  if (*a1)
  {
    v26 = sub_181929E8C(v23, 0x78uLL, 0x10B2040A26A9E65);
    if (!v26)
    {
      v27 = v23[43];
      if (v27)
      {
        *(v27 + 24) = 7;
        ++*(v27 + 52);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v26 = sub_181902484(120, 0x10B2040A26A9E65);
    if (!v26)
    {
      goto LABEL_13;
    }
  }

  v28 = v26;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 112) = 0;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  *(v26 + 64) = 0u;
  v735 = 0uLL;
  *&v733 = a1;
  *(&v733 + 1) = sub_181968B20;
  *&v734 = sub_181961BBC;
  *(&v734 + 1) = 0;
  sub_1818AEE70(&v733, a2);
  v29 = *(a2 + 1);
  if ((v29 & 8) == 0)
  {
    *(&v733 + 1) = sub_18196887C;
    *&v734 = 0;
    sub_181959CE8(&v733, *(a2 + 9));
    v29 = *(a2 + 1);
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  v678 = (a2 + 40);
  *(a2 + 1) = v29 & 0xFFEFFFF7 | 0x100000;
  v30 = sub_1819688D4(a1, 0, *(v24 + 16), 1);
  v31 = sub_1819688D4(a1, v30, *(v24 + 24), 1);
  if (v31)
  {
    v32 = *(a2 + 9);
    if (v32)
    {
      v33 = *v31;
      if (*v32 <= *v31)
      {
        *v31 = *v32;
        v34 = v31;
        if (!sub_181959974(v31, v32, 0xFFFFFFFFLL))
        {
          v35 = *(a2 + 9);
          if (v35)
          {
            sub_18194E5B8(v23, v35);
          }

          *(a2 + 9) = 0;
        }

        v31 = v34;
        *v34 = v33;
      }
    }
  }

  v36 = *(a1 + 14);
  *(v24 + 88) = v36;
  *(a1 + 14) = v36 + 4;
  v37 = *(a2 + 4);
  *&v728[8] = 0;
  *&v728[16] = 0;
  *(&v737 + 1) = v28;
  v738 = 0;
  *&v736 = v24;
  *(&v736 + 1) = v711;
  *&v737 = 0;
  *&v727 = a1;
  *(&v727 + 1) = sub_181968C50;
  *v728 = sub_181968E90;
  *&v728[24] = &v736;
  v704 = v23;
  v672 = v31;
  if (!v37 || (v38 = *v37, *v37 < 1))
  {
    v41 = 0;
    goto LABEL_67;
  }

  for (i = (v37 + 2); !*i; i += 3)
  {
    if (v38 < 2)
    {
      goto LABEL_65;
    }

LABEL_58:
    --v38;
  }

  if (sub_181959BA0(&v727, *i))
  {
    v40 = 1;
  }

  else
  {
    v40 = v38 <= 1;
  }

  if (!v40)
  {
    goto LABEL_58;
  }

LABEL_65:
  v41 = v737;
  v23 = v704;
LABEL_67:
  v42 = *(a2 + 9);
  *&v728[8] = 0;
  *&v728[16] = 0;
  *(&v737 + 1) = v28;
  v738 = 0;
  *&v736 = v24;
  *(&v736 + 1) = v711;
  *&v737 = v41;
  *&v727 = a1;
  *(&v727 + 1) = sub_181968C50;
  *v728 = sub_181968E90;
  *&v728[24] = &v736;
  if (!v42)
  {
    goto LABEL_79;
  }

  v43 = *v42;
  if (*v42 < 1)
  {
    goto LABEL_79;
  }

  v44 = (v42 + 2);
  while (2)
  {
    if (!*v44)
    {
      if (v43 < 2)
      {
        break;
      }

      goto LABEL_71;
    }

    if (sub_181959BA0(&v727, *v44))
    {
      v45 = 1;
    }

    else
    {
      v45 = v43 <= 1;
    }

    if (!v45)
    {
LABEL_71:
      --v43;
      v44 += 3;
      continue;
    }

    break;
  }

  v41 = v737;
LABEL_79:
  v669 = v25;
  if (v41)
  {
    v46 = *v41;
  }

  else
  {
    v46 = 0;
  }

  *(v24 + 120) = v46;
  v47 = sub_1819688D4(a1, v41, *(v24 + 16), 0);
  v48 = sub_1819688D4(a1, v47, *(v24 + 24), 0);
  v49 = v24;
  while (2)
  {
    while (2)
    {
      v51 = *(*(v49 + 112) + 32);
      if ((*(*(v49 + 80) + 6) & 0x10) == 0)
      {
        if (v48)
        {
          v52 = *v48;
        }

        else
        {
          v52 = 0;
        }

        *(v49 + 124) = v52;
        v48 = sub_1819688D4(a1, v48, v51, 0);
        goto LABEL_105;
      }

      *&v728[8] = 0;
      *&v728[16] = 0;
      *(&v737 + 1) = v28;
      v738 = 0;
      *&v736 = v24;
      *(&v736 + 1) = v711;
      *&v737 = v48;
      *&v727 = a1;
      *(&v727 + 1) = sub_181968C50;
      *v728 = sub_181968E90;
      *&v728[24] = &v736;
      if (!v51)
      {
        goto LABEL_99;
      }

      v53 = *v51;
      if (*v51 < 1)
      {
        goto LABEL_99;
      }

      v54 = (v51 + 2);
      while (2)
      {
        if (!*v54)
        {
          if (v53 < 2)
          {
            break;
          }

          goto LABEL_91;
        }

        if (sub_181959BA0(&v727, *v54))
        {
          v55 = 1;
        }

        else
        {
          v55 = v53 <= 1;
        }

        if (!v55)
        {
LABEL_91:
          --v53;
          v54 += 3;
          continue;
        }

        break;
      }

      v48 = v737;
LABEL_99:
      v23 = v704;
      if (v48)
      {
        v56 = *v48;
      }

      else
      {
        v56 = 0;
      }

      *(v49 + 124) = v56;
      *(v49 + 140) = 1;
LABEL_105:
      v57 = *(v49 + 72);
      if (v57)
      {
        v58 = sub_1818C7FEC(v23, v57, 0, 0);
        if (v48)
        {
          v59 = *v48;
          if (v48[1] > *v48)
          {
            *v48 = v59 + 1;
            v60 = &v48[6 * v59];
            *(v60 + 2) = 0;
            *(v60 + 3) = 0;
            *(v60 + 1) = v58;
            goto LABEL_112;
          }

          v61 = sub_18197FE14(*a1, v48, v58);
        }

        else
        {
          v61 = sub_18197FD9C(*a1, v58);
        }

        v48 = v61;
      }

LABEL_112:
      v62 = *(a1 + 15);
      v63 = v62 + 1;
      *(v49 + 92) = v62 + 1;
      v62 += 2;
      *(a1 + 15) = v62;
      *(v49 + 96) = v62;
      v64 = *(v22 + 144);
      if (*(v22 + 148) > v64)
      {
        *(v22 + 144) = v64 + 1;
        v50 = *(v22 + 136) + 40 * v64;
        *v50 = 75;
        *(v50 + 8) = v63;
        *(v50 + 12) = 0;
        *(v50 + 28) = 0;
        *(v50 + 20) = 0;
        *(v50 + 36) = 0;
        v49 = *(v49 + 64);
        if (!v49)
        {
          goto LABEL_114;
        }

        continue;
      }

      break;
    }

    sub_18194C8AC(v22, 75, 0, v63, 0);
    v49 = *(v49 + 64);
    if (v49)
    {
      continue;
    }

    break;
  }

LABEL_114:
  if (!v48)
  {
    v65 = sub_181950A08(v23, 156, "0");
    v48 = sub_18197FD9C(*a1, v65);
  }

  v66 = sub_1818A9824(a1, v48, v711, v698, v692, v685, v672, 0, 0);
  v67 = sub_181929E8C(*a1, 0x50uLL, 0x103204056E3F560);
  if (!v67)
  {
    *v678 = 0;
    a3 = v710;
    v72 = 1;
    if (!v66)
    {
      goto LABEL_131;
    }

    v73 = v704;
    goto LABEL_128;
  }

  v69 = v67;
  *v67 = 0x100000001;
  *(v67 + 3) = 0u;
  *(v67 + 1) = 0u;
  *(v67 + 5) = 0u;
  *(v67 + 7) = 0u;
  v67[9] = 0;
  *(v67 + 9) = -1;
  v67[1] = 0;
  *v678 = v67;
  v70 = *(v67 + 35);
  a3 = v710;
  if (v70)
  {
    v67[9] = 0;
    *(v67 + 35) = v70 & 0xFE;
  }

  else
  {
    v71 = v67[9];
    if (v71)
    {
      sub_181929C84(*a1, v71);
      v69[9] = 0;
    }
  }

  v74 = sub_181929E8C(*a1, 0x18uLL, 0x10200405AF6BDC9);
  v69[9] = v74;
  if (!v74)
  {
    if (!v66)
    {
LABEL_129:
      v72 = 1;
      goto LABEL_131;
    }

    v73 = *a1;
    v72 = 1;
LABEL_128:
    sub_1818BB408(v73, v66, 1, v68);
    goto LABEL_131;
  }

  *(v69 + 33) |= 4u;
  v74[1] = 0;
  v74[2] = 0;
  *v74 = v66;
  *(*v678 + 33) |= 0x10u;
  sub_1818EC1FC(a1, *v678);
  *(v66 + 1) |= 0x8000040u;
  v75 = sub_18195E03C(a1, v66, 64);
  *(v66 + 1) |= v669 & 8;
  if (v75)
  {
    v76 = *v75;
    v77 = *(v75 + 16);
    v78 = *(v75 + 48);
    *(v28 + 32) = *(v75 + 32);
    *(v28 + 48) = v78;
    *v28 = v76;
    *(v28 + 16) = v77;
    v79 = *(v75 + 64);
    v80 = *(v75 + 80);
    v81 = *(v75 + 96);
    *(v28 + 112) = *(v75 + 112);
    *(v28 + 80) = v80;
    *(v28 + 96) = v81;
    *(v28 + 64) = v79;
    *(v28 + 48) |= 0x4000u;
    *(*v678 + 3) = v28;
    v735 = 0u;
    *&v733 = 0;
    *(&v733 + 1) = sub_181968AD0;
    *&v734 = sub_181968AFC;
    *(&v734 + 1) = sub_181968B10;
    v28 = v75;
    sub_1818AEE70(&v733, v66);
    goto LABEL_129;
  }

  v72 = 0;
LABEL_131:
  v82 = *(v704 + 103);
  sub_18195B158(a1, sub_1818BB760, v28);
  result = 1;
  if (!v72 || v82)
  {
    goto LABEL_14;
  }

LABEL_133:
  v83 = *(a2 + 9);
  v84 = *(a2 + 5);
  v85 = *(a2 + 1);
  v86 = 0uLL;
  memset(v730 + 8, 0, 48);
  *&v730[0] = v83;
  v712 = a2 + 72;
  v87 = *(a2 + 10);
  if (v87)
  {
LABEL_134:
    v88 = *a1;
    v89 = *(a3 + 1);
    v736 = *a3;
    v737 = v89;
    v738 = *(a3 + 4);
    v90 = sub_1818E7DFC(a1);
    v91 = v90;
    v92 = v736;
    if (v736 == 12)
    {
      v93 = DWORD1(v736);
      v94 = **(a2 + 4);
      v95 = *(v90 + 144);
      if (*(v90 + 148) <= v95)
      {
        sub_18194C8AC(v90, 117, SDWORD1(v736), v94, 0);
      }

      else
      {
        *(v90 + 144) = v95 + 1;
        v96 = *(v90 + 136) + 40 * v95;
        *v96 = 117;
        *(v96 + 4) = v93;
        *(v96 + 8) = v94;
        *(v96 + 12) = 0;
        *(v96 + 28) = 0;
        *(v96 + 20) = 0;
        *(v96 + 36) = 0;
      }

      v92 = 14;
      LOBYTE(v736) = 14;
    }

    v98 = *(a2 + 1);
    if ((v98 & 0x400) != 0)
    {
      v99 = *(a2 + 12);
      if (!*(a2 + 14))
      {
        v100 = 1;
        v101 = a2;
        while (1)
        {
          v102 = *(v101 + 10);
          if (!v102)
          {
            break;
          }

          v100 += v99 == 0;
          v101 = *(v101 + 10);
          if (*(v102 + 112))
          {
            goto LABEL_145;
          }
        }

        v271 = "S";
        if (v100 == 1)
        {
          v271 = &byte_181A2878D;
        }

        sub_18195AD8C(a1, 0, "SCAN %d CONSTANT ROW%s", v100, v271);
        while (1)
        {
          sub_1818B6C58(a1, v101, 0xFFFFFFFFLL, 0, 0, &v736, 1, 1);
          if (v99)
          {
            break;
          }

          *(v101 + 1) = v100;
          v101 = *(v101 + 11);
          if (!v101)
          {
            result = 0;
            goto LABEL_790;
          }
        }

        v101 = 0;
        result = 0;
        goto LABEL_790;
      }
    }

LABEL_145:
    if ((v98 & 0x2000) != 0)
    {
      v103 = a2;
      while ((v103[5] & 0x20) != 0)
      {
        v103 = *(v103 + 10);
        if (!v103)
        {
          goto LABEL_149;
        }
      }

      v126 = *(a2 + 5);
      v127 = **(a2 + 4);
      v128 = a1[2];
      v727 = 0u;
      memset(v728, 0, 24);
      if (*(a2 + 14))
      {
        sub_181910730(a1, "cannot use window functions in recursive queries");
        goto LABEL_739;
      }

      v272 = *a1;
      v273 = *(*a1 + 528);
      if (!v273 || *(v272 + 197) || *(a1 + 302))
      {
LABEL_448:
        v274 = (*(a1 + 18) - 1);
        *(a1 + 18) = v274;
        *(a2 + 1) = 320;
        sub_1818B4A80(a1, a2, v274);
        v700 = *(a2 + 12);
        v707 = v88;
        v275 = *(a2 + 2);
        v276 = *(a2 + 3);
        *(a2 + 12) = 0;
        *(a2 + 1) = 0;
        v277 = *v126;
        v676 = v276;
        if (v277 < 1)
        {
LABEL_452:
          v279 = 0;
        }

        else
        {
          v278 = (v126 + 9);
          while ((*(v278 - 3) & 0x80) == 0)
          {
            v278 += 18;
            if (!--v277)
            {
              goto LABEL_452;
            }
          }

          v279 = *v278;
        }

        v396 = *(a2 + 9);
        v397 = *(a1 + 14);
        v398 = (v397 + 1);
        *(a1 + 14) = v398;
        v695 = v274;
        if (*a2 == 135)
        {
          if (v396)
          {
            v399 = 6;
          }

          else
          {
            v399 = 5;
          }

          *(a1 + 14) = v397 + 2;
        }

        else
        {
          v398 = 0;
          if (v396)
          {
            v399 = 7;
          }

          else
          {
            v399 = 8;
          }
        }

        LOBYTE(v727) = v399;
        *&v728[8] = 0;
        DWORD1(v727) = v397;
        *(&v727 + 1) = 0;
        *v728 = 0;
        v400 = (*(a1 + 15) + 1);
        *(a1 + 15) = v400;
        v401 = *(v128 + 144);
        v683 = v275;
        v689 = v279;
        if (*(v128 + 148) <= v401)
        {
          sub_18194C8AC(v128, 121, v279, v400, v127);
        }

        else
        {
          *(v128 + 144) = v401 + 1;
          v402 = *(v128 + 136) + 40 * v401;
          *v402 = 121;
          *(v402 + 4) = v279;
          *(v402 + 8) = v400;
          *(v402 + 12) = v127;
          *(v402 + 24) = 0;
          *(v402 + 32) = 0;
          *(v402 + 16) = 0;
        }

        if (v396)
        {
          v403 = sub_1819694BC(a1, a2);
          v404 = sub_1818A2964(v128, 117, v397, (*v396 + 2), 0);
          sub_1818B49F8(v128, v404, v403, 4294967288);
          *&v728[16] = v396;
        }

        else
        {
          sub_1818A2964(v128, 117, v397, v127, 0);
        }

        v723 = v396;
        if (v398)
        {
          *(a2 + 5) = sub_1818A2964(v128, 117, v398, 0, 0);
          v405 = *(a2 + 1) | 0x20;
          *(a2 + 1) = v405;
        }

        else
        {
          v405 = *(a2 + 1);
        }

        *v712 = 0;
        v406 = a2;
        do
        {
          if ((v405 & 8) != 0)
          {
            sub_181910730(a1, "recursive aggregate queries not supported");
            goto LABEL_736;
          }

          v407 = v406;
          *v406 = -120;
          v406 = *(v406 + 10);
          v405 = *(v406 + 1);
        }

        while ((v405 & 0x2000) != 0);
        *(v406 + 11) = 0;
        sub_18195AD8C(a1, 1, "SETUP");
        v408 = sub_1818A9A10(a1, v406, &v727);
        *(v406 + 11) = a2;
        if (!v408)
        {
          v409 = sub_1818A2964(v128, 36, v397, v695, 0);
          sub_1818A2964(v128, 136, v689, 0, 0);
          if (v723)
          {
            v410 = (*v723 + 1);
            v411 = v128;
            v412 = 94;
            v413 = v397;
            v414 = v400;
          }

          else
          {
            v411 = v128;
            v412 = 134;
            v413 = v397;
            v410 = v400;
            v414 = 0;
          }

          sub_1818A2964(v411, v412, v413, v410, v414);
          sub_1818A2964(v128, 130, v397, 0, 0);
          v440 = *(a1 + 18) - 1;
          *(a1 + 18) = v440;
          sub_181969748(v128, v676, v440);
          sub_1818B6C58(a1, a2, v689, 0, 0, &v736, v440, v695);
          if (v683)
          {
            sub_1818A2964(v128, 61, v683, v695, 0);
          }

          sub_181958CD8(v128, v440);
          *(v407 + 10) = 0;
          sub_18195AD8C(a1, 1, "RECURSIVE STEP");
          sub_1818A9A10(a1, a2, &v727);
          *(v407 + 10) = v406;
          sub_1818A2964(v128, 9, 0, v409, 0);
          sub_181958CD8(v128, v695);
        }

LABEL_736:
        if (*v712)
        {
          sub_18194E5B8(*a1, *v712);
        }

        *(a2 + 9) = v723;
        v88 = v707;
        *(a2 + 12) = v700;
        goto LABEL_739;
      }

      v434 = v273(*(v272 + 536), 33, 0, 0, 0, a1[46]);
      if (v434 == 1)
      {
        v435 = 23;
        sub_181910730(a1, "not authorized");
LABEL_742:
        *(a1 + 6) = v435;
        goto LABEL_739;
      }

      if ((v434 & 0xFFFFFFFD) != 0)
      {
        v435 = 1;
        sub_181910730(a1, "authorizer malfunction");
        goto LABEL_742;
      }

      if (!v434)
      {
        goto LABEL_448;
      }

LABEL_739:
      v101 = 0;
      result = 0;
LABEL_755:
      if (*(a1 + 13) || (a2[4] & 0x20) == 0)
      {
        goto LABEL_790;
      }

      v717 = v101;
      v726 = result;
      v445 = **(a2 + 4);
      v446 = v445 + 1;
      v447 = v88;
      v448 = 9 * (v445 + 1);
      v449 = sub_181929E8C(v447, v448 + 32, 0x2004093837F09);
      if (v449)
      {
        v450 = v449;
        v451 = v449 + 4;
        v449[3] = &v449[v446 + 4];
        *(v449 + 3) = v445;
        *(v449 + 4) = v446;
        *(v449 + 4) = *(v447 + 100);
        v452 = v447;
        v449[2] = v447;
        *v449 = 1;
        bzero(v449 + 4, v448);
        v453 = a2;
        result = v726;
        a3 = v710;
        v101 = v717;
        if (v445 > 0)
        {
          v454 = 0;
          do
          {
            v455 = sub_1818E450C(a1, a2, v454);
            v451[v454] = v455;
            if (!v455)
            {
              v451[v454] = *(v452 + 16);
            }

            ++v454;
          }

          while (v445 != v454);
          v453 = a2;
          result = v726;
        }

        do
        {
          v456 = *(v453 + 5);
          if ((v456 & 0x80000000) == 0)
          {
            v457 = *v91;
            if (*(*v91 + 103))
            {
              dword_1EA831A60 = v445;
              v458 = (*v450)++;
              if (!*(v457 + 824))
              {
                *v450 = v458;
                if (!v458)
                {
                  sub_181939EC8(*(v450 + 2), v450);
                  result = v726;
                }
              }
            }

            else
            {
              v459 = *(v91 + 136) + 40 * v456;
              *(v459 + 8) = v445;
              ++*v450;
              if (*(v459 + 1))
              {
                sub_18194CB90(v91, v459, v450, 4294967288);
                result = v726;
              }

              else
              {
                *(v459 + 16) = v450;
                *(v459 + 1) = -8;
              }
            }

            *(v453 + 5) = -1;
            v460 = *(v453 + 6);
            if ((v460 & 0x80000000) == 0)
            {
              v461 = *v91;
              if (*(*v91 + 103))
              {
                dword_1EA831A60 = v445;
                v462 = (*v450)++;
                if (!*(v461 + 824))
                {
                  *v450 = v462;
                  if (!v462)
                  {
                    sub_181939EC8(*(v450 + 2), v450);
                    result = v726;
                  }
                }
              }

              else
              {
                v463 = *(v91 + 136) + 40 * v460;
                *(v463 + 8) = v445;
                ++*v450;
                if (*(v463 + 1))
                {
                  sub_18194CB90(v91, v463, v450, 4294967288);
                  result = v726;
                }

                else
                {
                  *(v463 + 16) = v450;
                  *(v463 + 1) = -8;
                }
              }

              *(v453 + 6) = -1;
            }
          }

          v453 = *(v453 + 10);
        }

        while (v453);
        v171 = (*v450)-- == 1;
        if (v171)
        {
          sub_181939EC8(*(v450 + 2), v450);
          result = v726;
        }
      }

      else
      {
        if (*(v447 + 103))
        {
          goto LABEL_786;
        }

        a3 = v710;
        if (*(v447 + 104))
        {
          goto LABEL_789;
        }

        *(v447 + 103) = 1;
        if (*(v447 + 220) >= 1)
        {
          *(v447 + 424) = 1;
        }

        ++*(v447 + 432);
        *(v447 + 436) = 0;
        v465 = *(v447 + 344);
        if (!v465)
        {
LABEL_789:
          result = 7;
          v101 = v717;
          goto LABEL_790;
        }

        sub_181910730(v465, "out of memory");
        v466 = *(v447 + 344);
        *(v466 + 24) = 7;
        v467 = *(v466 + 216);
        if (!v467)
        {
LABEL_786:
          result = 7;
        }

        else
        {
          result = 7;
          do
          {
            ++*(v467 + 52);
            *(v467 + 24) = 7;
            v467 = *(v467 + 216);
          }

          while (v467);
        }

        a3 = v710;
        v101 = v717;
      }

LABEL_790:
      *(a3 + 4) = v737;
      *(a3 + 1) = *(&v736 + 1);
      if (v101)
      {
        v464 = result;
        sub_18195B158(a1, sub_1819694AC, v101);
        result = v464;
      }

LABEL_792:
      if (!*(a2 + 11))
      {
        goto LABEL_16;
      }

      return result;
    }

LABEL_149:
    v104 = *v712;
    if (*v712)
    {
      v727 = 0u;
      memset(v728, 0, 24);
      *&v735 = 0;
      v733 = 0u;
      v734 = 0u;
      v105 = *a1;
      v106 = a1[2];
      v107 = *(a1 + 18);
      v662 = v107 - 2;
      *(a1 + 18) = v107 - 2;
      v693 = *a2;
      v108 = *v104;
      if (v693 == 136 || *(v105 + 103))
      {
LABEL_152:
        v109 = (v108 + 1);
        v110 = sub_181929E8C(v105, 4 * v109, 0x100004052888210);
        __s = v110;
        if (v110)
        {
          *v110 = v108;
          if (v108 >= 1)
          {
            if (v109 < 0x11 || ((v111 = (v110 + 4), v110 + 4 < &v104[6 * v109 - 4] - 2) ? (v112 = v104 + 7 >= v110 + v109) : (v112 = 1), !v112))
            {
              v114 = 1;
              v115 = (v104 + 2);
              goto LABEL_179;
            }

            v113 = (v109 - 1) & 0xFFFFFFFFFFFFFFF8;
            v114 = v113 | 1;
            v115 = &v104[6 * v113 + 2];
            v116 = (v104 + 25);
            v117.i64[0] = -1;
            v117.i64[1] = -1;
            v118 = v113;
            do
            {
              v119.i16[0] = v116[12];
              v119.i16[1] = v116[24];
              v119.i16[2] = v116[36];
              v119.i16[3] = v116[48];
              v120.i16[0] = *(v116 - 36);
              v120.i16[1] = *(v116 - 24);
              v120.i16[2] = *(v116 - 12);
              v120.i16[3] = *v116;
              *v111 = vaddw_u16(v117, v120);
              v111[1] = vaddw_u16(v117, v119);
              v111 += 2;
              v116 += 96;
              v118 -= 8;
            }

            while (v118);
            if (v109 - 1 != v113)
            {
LABEL_179:
              v130 = v109 - v114;
              v131 = v110 + v114;
              v132 = (v115 + 20);
              do
              {
                v133 = *v132;
                v132 += 12;
                *v131++ = v133 - 1;
                --v130;
              }

              while (v130);
            }
          }

          v653 = sub_1819694BC(a1, a2);
        }

        else
        {
          v653 = 0;
        }

        v722 = v107 - 1;
        v134 = v693;
        v673 = v105;
        v659 = v108;
        if (v693 == 136)
        {
          v135 = 0;
          v136 = 0;
LABEL_476:
          v681 = v136;
          if ((*(v105 + 98) & 0x20) != 0)
          {
            goto LABEL_482;
          }

          v289 = *(a2 + 10);
          if (!v289)
          {
            goto LABEL_482;
          }

          v290 = 1;
          v291 = a2;
          do
          {
            if (*v291 != v134)
            {
              break;
            }

            v291 = v289;
            ++v290;
            v289 = *(v289 + 80);
          }

          while (v289);
          if (v290 >= 4)
          {
            v298 = 2;
            v292 = a2;
            do
            {
              v292 = *(v292 + 10);
              v298 += 2;
            }

            while (v298 < v290);
            v688 = 1;
          }

          else
          {
LABEL_482:
            v688 = 1;
            v292 = a2;
          }
        }

        else
        {
          v713 = v107;
          v137 = **(a2 + 4);
          v138 = *(a1 + 15);
          v139 = v138 + 1;
          v140 = v137 + 1;
          *(a1 + 15) = v138 + v137 + 1;
          v141 = *(v106 + 36);
          if (*(v106 + 37) <= v141)
          {
            sub_18194C8AC(v106, 71, 0, v139, 0);
          }

          else
          {
            *(v106 + 36) = v141 + 1;
            v142 = &v106[17][5 * v141];
            *v142 = 71;
            *(v142 + 8) = v139;
            *(v142 + 12) = 0;
            *(v142 + 28) = 0;
            *(v142 + 20) = 0;
            *(v142 + 36) = 0;
          }

          v681 = v139;
          v268 = 9 * v140;
          v269 = sub_181929E8C(v105, v268 + 32, 0x2004093837F09);
          v135 = v269;
          if (v269)
          {
            *(v269 + 3) = &v269[8 * v140 + 32];
            *(v269 + 3) = v137;
            *(v269 + 4) = v140;
            v269[4] = *(v105 + 100);
            *(v269 + 2) = v105;
            *v269 = 1;
            bzero(v269 + 32, v268);
            v107 = v713;
            if (v137 > 0)
            {
              for (j = 0; j != v137; ++j)
              {
                *&v135[8 * j + 32] = sub_1818E450C(a1, a2, j);
                *(*(v135 + 3) + j) = 0;
              }
            }
          }

          else
          {
            v107 = v713;
            if (!*(v105 + 103) && !*(v105 + 104))
            {
              *(v105 + 103) = 1;
              if (*(v105 + 220) >= 1)
              {
                *(v105 + 424) = 1;
              }

              ++*(v105 + 432);
              *(v105 + 436) = 0;
              v432 = *(v105 + 344);
              if (v432)
              {
                sub_181910730(v432, "out of memory");
                for (k = *(v105 + 344); ; ++*(k + 52))
                {
                  *(k + 24) = 7;
                  k = *(k + 216);
                  if (!k)
                  {
                    break;
                  }
                }
              }
            }
          }

          v134 = v693;
          if ((v693 - 135) <= 1)
          {
            v136 = v139;
            goto LABEL_476;
          }

          v688 = 0;
          v292 = a2;
        }

        v299 = *(v292 + 10);
        *(v292 + 10) = 0;
        *(v299 + 88) = 0;
        *(v299 + 72) = sub_1818C83A0(*a1, v104, 0);
        sub_181961BC4(a1, a2, *(a2 + 9), "ORDER");
        v701 = v299;
        sub_181961BC4(a1, v299, *(v299 + 72), "ORDER");
        sub_1818B4A80(a1, a2, v722);
        v300 = 0;
        if (v134 == 136)
        {
          v301 = *(a2 + 2);
          v302 = 0;
          if (v301)
          {
            v303 = *(a1 + 15);
            v300 = v303 + 1;
            v302 = v303 + 2;
            *(a1 + 15) = v303 + 2;
            v304 = *(a2 + 3);
            if (v304)
            {
              v305 = v304 + 1;
            }

            else
            {
              v305 = v301;
            }

            v306 = *(v106 + 36);
            if (*(v106 + 37) <= v306)
            {
              sub_18194C8AC(v106, 80, v305, v300, 0);
            }

            else
            {
              *(v106 + 36) = v306 + 1;
              v307 = &v106[17][5 * v306];
              *v307 = 80;
              *(v307 + 4) = v305;
              *(v307 + 8) = v300;
              *(v307 + 12) = 0;
              *(v307 + 28) = 0;
              *(v307 + 20) = 0;
              *(v307 + 36) = 0;
            }

            v308 = *(v106 + 36);
            if (*(v106 + 37) <= v308)
            {
              sub_18194C8AC(v106, 80, v300, v302, 0);
            }

            else
            {
              *(v106 + 36) = v308 + 1;
              v309 = &v106[17][5 * v308];
              *v309 = 80;
              *(v309 + 4) = v300;
              *(v309 + 8) = v302;
              *(v309 + 12) = 0;
              *(v309 + 28) = 0;
              *(v309 + 20) = 0;
              *(v309 + 36) = 0;
            }
          }
        }

        else
        {
          v302 = 0;
        }

        v666 = v302;
        v310 = *(a2 + 12);
        if (v310)
        {
          sub_1819439E0(v673, v310);
        }

        *(a2 + 12) = 0;
        v311 = *(a1 + 15);
        v670 = v311 + 4;
        *(a1 + 15) = v311 + 4;
        LOBYTE(v727) = 13;
        v716 = v311 + 1;
        DWORD1(v727) = v311 + 1;
        *&v728[8] = 0;
        *(&v727 + 1) = 0;
        *v728 = 0;
        LOBYTE(v733) = 13;
        v708 = v311 + 2;
        DWORD1(v733) = v311 + 2;
        *(&v734 + 1) = 0;
        *(&v733 + 1) = 0;
        LODWORD(v734) = 0;
        if ((*a2 + 120) > 2u)
        {
          v312 = "UNION";
        }

        else
        {
          v312 = off_1E6A284D0[(*a2 + 120)];
        }

        sub_18195AD8C(a1, 1, "MERGE (%s)", v312);
        v313 = *(v106 + 36);
        v314 = v313 + 1;
        if (*(v106 + 37) <= v313)
        {
          v313 = sub_18194C8AC(v106, 11, v716, 0, v314);
        }

        else
        {
          *(v106 + 36) = v314;
          v315 = &v106[17][5 * v313];
          *v315 = 11;
          *(v315 + 4) = v716;
          *(v315 + 12) = v314;
          *(v315 + 24) = 0;
          *(v315 + 32) = 0;
          *(v315 + 16) = 0;
        }

        *(v701 + 8) = v300;
        sub_18195AD8C(a1, 1, "LEFT");
        sub_1818A9A10(a1, v701, &v727);
        v316 = *(v106 + 36);
        if (*(v106 + 37) <= v316)
        {
          sub_18194C8AC(v106, 68, v716, 0, 0);
        }

        else
        {
          *(v106 + 36) = v316 + 1;
          v317 = &v106[17][5 * v316];
          *v317 = 68;
          *(v317 + 4) = v716;
          *(v317 + 8) = 0u;
          *(v317 + 24) = 0u;
        }

        v318 = v106[3];
        *(v318 + 31) = 0;
        *(v318 + 11) = 0;
        v319 = *(v106 + 36);
        if (*(*v106 + 103))
        {
          v320 = &byte_1EA831A58;
        }

        else
        {
          v320 = &v106[17][5 * v313];
        }

        v321 = v662;
        v322 = v681;
        v323 = v311 + 3;
        *(v320 + 2) = v319;
        v324 = v319 + 1;
        if (*(v106 + 37) <= v319)
        {
          v651 = sub_18194C8AC(v106, 11, v708, 0, v324);
        }

        else
        {
          *(v106 + 36) = v324;
          v651 = v319;
          v325 = &v106[17][5 * v319];
          *v325 = 11;
          *(v325 + 4) = v708;
          *(v325 + 12) = v324;
          *(v325 + 24) = 0;
          *(v325 + 32) = 0;
          *(v325 + 16) = 0;
        }

        v326 = *(a2 + 1);
        *(a2 + 1) = v666;
        sub_18195AD8C(a1, 1, "RIGHT");
        sub_1818A9A10(a1, a2, &v733);
        *(a2 + 1) = v326;
        v327 = *(v106 + 36);
        if (*(v106 + 37) <= v327)
        {
          sub_18194C8AC(v106, 68, v708, 0, 0);
        }

        else
        {
          *(v106 + 36) = v327 + 1;
          v328 = &v106[17][5 * v327];
          *v328 = 68;
          *(v328 + 4) = v708;
          *(v328 + 8) = 0u;
          *(v328 + 24) = 0u;
        }

        v329 = v106[3];
        *(v329 + 31) = 0;
        *(v329 + 11) = 0;
        v682 = sub_1819697A4(a1, a2, &v727, v710, v323, v681, v135, v722);
        v667 = 0;
        if (v688)
        {
          v667 = sub_1819697A4(a1, a2, &v733, v710, v670, v322, v135, v722);
        }

        if (v135)
        {
          v171 = (*v135)-- == 1;
          if (v171)
          {
            sub_181939EC8(*(v135 + 2), v135);
          }
        }

        if ((v693 - 137) >= 2)
        {
          v331 = *(v106 + 36);
          if (*(v106 + 37) <= v331)
          {
            v331 = sub_18194C8AC(v106, 10, v670, v667, 0);
          }

          else
          {
            *(v106 + 36) = v331 + 1;
            v334 = &v106[17][5 * v331];
            *v334 = 10;
            *(v334 + 4) = v670;
            *(v334 + 8) = v667;
            *(v334 + 12) = 0;
            *(v334 + 28) = 0;
            *(v334 + 20) = 0;
            *(v334 + 36) = 0;
          }

          v330 = *(v106 + 36);
          if (*(v106 + 37) <= v330)
          {
            v330 = sub_18194C8AC(v106, 12, v708, v722, 0);
          }

          else
          {
            *(v106 + 36) = v330 + 1;
            v335 = &v106[17][5 * v330];
            *v335 = 12;
            *(v335 + 4) = v708;
            *(v335 + 8) = v722;
            *(v335 + 12) = 0;
            *(v335 + 28) = 0;
            *(v335 + 20) = 0;
            *(v335 + 36) = 0;
          }

          v336 = *(v106 + 36);
          if (*(v106 + 37) <= v336)
          {
            sub_18194C8AC(v106, 9, 0, v331, 0);
          }

          else
          {
            *(v106 + 36) = v336 + 1;
            v337 = &v106[17][5 * v336];
            *v337 = 9;
            *(v337 + 8) = v331;
            *(v337 + 12) = 0;
            *(v337 + 28) = 0;
            *(v337 + 20) = 0;
            *(v337 + 36) = 0;
          }

          v338 = *(a2 + 1);
          v339 = *(v701 + 2);
          if (v338 >= v339)
          {
            v340 = *(a2 + 1);
            if (v339 + 49 >= v338)
            {
              if (v339 + 31 >= v338)
              {
                v340 = v338 + byte_181A245A6[v338 - v339];
              }

              else
              {
                v340 = v338 + 1;
              }
            }
          }

          else
          {
            v340 = *(v701 + 2);
            if (v338 + 49 >= v339)
            {
              if (v338 + 31 >= v339)
              {
                v340 = v339 + byte_181A245A6[v339 - v338];
              }

              else
              {
                v340 = v339 + 1;
              }
            }
          }

          *(a2 + 1) = v340;
        }

        else
        {
          v330 = v722;
          v331 = v722;
          if (v693 == 138)
          {
            v332 = *(v701 + 2);
            if (*(a2 + 1) > v332)
            {
              *(a2 + 1) = v332;
            }

            v331 = v722;
            v333 = v722;
            goto LABEL_582;
          }
        }

        v333 = *(v106 + 36);
        if (*(v106 + 37) <= v333)
        {
          v333 = sub_18194C8AC(v106, 10, v323, v682, 0);
        }

        else
        {
          *(v106 + 36) = v333 + 1;
          v350 = &v106[17][5 * v333];
          *v350 = 10;
          *(v350 + 4) = v323;
          *(v350 + 8) = v682;
          *(v350 + 12) = 0;
          *(v350 + 28) = 0;
          *(v350 + 20) = 0;
          *(v350 + 36) = 0;
        }

        v351 = *(v106 + 36);
        if (*(v106 + 37) <= v351)
        {
          sub_18194C8AC(v106, 12, v716, v722, 0);
        }

        else
        {
          *(v106 + 36) = v351 + 1;
          v352 = &v106[17][5 * v351];
          *v352 = 12;
          *(v352 + 4) = v716;
          *(v352 + 8) = v722;
          *(v352 + 12) = 0;
          *(v352 + 28) = 0;
          *(v352 + 20) = 0;
          *(v352 + 36) = 0;
        }

        v353 = *(v106 + 36);
        if (*(v106 + 37) <= v353)
        {
          sub_18194C8AC(v106, 9, 0, v333, 0);
        }

        else
        {
          *(v106 + 36) = v353 + 1;
          v354 = &v106[17][5 * v353];
          *v354 = 9;
          *(v354 + 8) = v333;
          *(v354 + 12) = 0;
          *(v354 + 28) = 0;
          *(v354 + 20) = 0;
          *(v354 + 36) = 0;
        }

        v722 = v330;
LABEL_582:
        v355 = *(v106 + 36);
        if (*(v106 + 37) <= v355)
        {
          v355 = sub_18194C8AC(v106, 10, v323, v682, 0);
        }

        else
        {
          *(v106 + 36) = v355 + 1;
          v356 = &v106[17][5 * v355];
          *v356 = 10;
          *(v356 + 4) = v323;
          *(v356 + 8) = v682;
          *(v356 + 12) = 0;
          *(v356 + 28) = 0;
          *(v356 + 20) = 0;
          *(v356 + 36) = 0;
        }

        v357 = *(v106 + 36);
        if (*(v106 + 37) <= v357)
        {
          sub_18194C8AC(v106, 12, v716, v331, 0);
        }

        else
        {
          *(v106 + 36) = v357 + 1;
          v358 = &v106[17][5 * v357];
          *v358 = 12;
          *(v358 + 4) = v716;
          *(v358 + 8) = v331;
          *(v358 + 12) = 0;
          *(v358 + 28) = 0;
          *(v358 + 20) = 0;
          *(v358 + 36) = 0;
        }

        v359 = *(v106 + 36);
        if (*(v106 + 37) <= v359)
        {
          sub_18194C8AC(v106, 9, 0, v662, 0);
        }

        else
        {
          *(v106 + 36) = v359 + 1;
          v360 = &v106[17][5 * v359];
          *v360 = 9;
          *(v360 + 8) = v662;
          *(v360 + 12) = 0;
          *(v360 + 28) = 0;
          *(v360 + 20) = 0;
          *(v360 + 36) = 0;
        }

        if (v693 == 136)
        {
          v361 = v355;
        }

        else if (v693 == 138)
        {
          v361 = v355 + 1;
        }

        else
        {
          v362 = *(v106 + 36);
          if (*(v106 + 37) <= v362)
          {
            v362 = sub_18194C8AC(v106, 12, v716, v331, 0);
          }

          else
          {
            *(v106 + 36) = v362 + 1;
            v363 = &v106[17][5 * v362];
            *v363 = 12;
            *(v363 + 4) = v716;
            *(v363 + 8) = v331;
            *(v363 + 12) = 0;
            *(v363 + 28) = 0;
            *(v363 + 20) = 0;
            *(v363 + 36) = 0;
          }

          v364 = *(v106 + 36);
          if (*(v106 + 37) <= v364)
          {
            sub_18194C8AC(v106, 9, 0, v662, 0);
          }

          else
          {
            *(v106 + 36) = v364 + 1;
            v365 = &v106[17][5 * v364];
            *v365 = 9;
            *(v365 + 8) = v662;
            *(v365 + 12) = 0;
            *(v365 + 28) = 0;
            *(v365 + 20) = 0;
            *(v365 + 36) = 0;
          }

          v361 = v355;
          v355 = v362;
          v321 = v662;
        }

        v366 = *(v106 + 36);
        if (v688)
        {
          if (*(v106 + 37) <= v366)
          {
            sub_18194C8AC(v106, 10, v670, v667, 0);
          }

          else
          {
            *(v106 + 36) = v366 + 1;
            v367 = &v106[17][5 * v366];
            *v367 = 10;
            *(v367 + 4) = v670;
            *(v367 + 8) = v667;
            *(v367 + 12) = 0;
            *(v367 + 28) = 0;
            *(v367 + 20) = 0;
            *(v367 + 36) = 0;
          }
        }

        v368 = *(v106 + 36);
        if (*(v106 + 37) <= v368)
        {
          sub_18194C8AC(v106, 12, v708, v333, 0);
        }

        else
        {
          *(v106 + 36) = v368 + 1;
          v369 = &v106[17][5 * v368];
          *v369 = 12;
          *(v369 + 4) = v708;
          *(v369 + 8) = v333;
          *(v369 + 12) = 0;
          *(v369 + 28) = 0;
          *(v369 + 20) = 0;
          *(v369 + 36) = 0;
        }

        v370 = *(v106 + 36);
        if (*(v106 + 37) <= v370)
        {
          sub_18194C8AC(v106, 9, 0, v321, 0);
        }

        else
        {
          *(v106 + 36) = v370 + 1;
          v371 = &v106[17][5 * v370];
          *v371 = 9;
          *(v371 + 8) = v321;
          *(v371 + 12) = 0;
          *(v371 + 28) = 0;
          *(v371 + 20) = 0;
          *(v371 + 36) = 0;
        }

        v372 = *(v106 + 36);
        if (*(*v106 + 103))
        {
          v373 = &byte_1EA831A58;
        }

        else
        {
          v373 = &v106[17][5 * v651];
        }

        *(v373 + 2) = v372;
        if (*(v106 + 37) <= v372)
        {
          sub_18194C8AC(v106, 12, v716, v722, 0);
        }

        else
        {
          *(v106 + 36) = v372 + 1;
          v374 = &v106[17][5 * v372];
          *v374 = 12;
          *(v374 + 4) = v716;
          *(v374 + 8) = v722;
          *(v374 + 12) = 0;
          *(v374 + 28) = 0;
          *(v374 + 20) = 0;
          *(v374 + 36) = 0;
        }

        v375 = *(v106 + 36);
        if (*(v106 + 37) <= v375)
        {
          sub_18194C8AC(v106, 12, v708, v333, 0);
        }

        else
        {
          *(v106 + 36) = v375 + 1;
          v376 = &v106[17][5 * v375];
          *v376 = 12;
          *(v376 + 4) = v708;
          *(v376 + 8) = v333;
          *(v376 + 12) = 0;
          *(v376 + 28) = 0;
          *(v376 + 20) = 0;
          *(v376 + 36) = 0;
        }

        v377 = v106[3];
        v378 = 1 - v107;
        if (*(v377 + 18) + *(v377 + 19) < 0)
        {
          sub_18195CB84(v106[3], v106, v378);
          v379 = *(v106 + 36);
        }

        else
        {
          v379 = *(v106 + 36);
          *(v377[10] + 4 * v378) = v379;
        }

        if (*(v106 + 37) <= v379)
        {
          v379 = sub_18194C8AC(v106, 89, 0, 0, 0);
        }

        else
        {
          *(v106 + 36) = v379 + 1;
          v380 = &v106[17][5 * v379];
          *v380 = 89;
          *(v380 + 1) = 0u;
          *(v380 + 17) = 0u;
          *(v380 + 32) = 0;
        }

        if (*(*v106 + 103))
        {
          if (__s)
          {
            sub_181939EC8(*v106, __s);
          }
        }

        else
        {
          if (v379 < 0)
          {
            v379 = *(v106 + 36) - 1;
          }

          v381 = &v106[17][5 * v379];
          if (*(v381 + 1))
          {
            sub_18194CB90(v106, v381, __s, 4294967282);
          }

          else if (__s)
          {
            *(v381 + 16) = __s;
            *(v381 + 1) = -14;
          }
        }

        v382 = HIDWORD(v727);
        v383 = HIDWORD(v733);
        v384 = *(v106 + 36);
        if (*(v106 + 37) <= v384)
        {
          v384 = sub_18194C8AC(v106, 90, SHIDWORD(v727), SHIDWORD(v733), v659);
        }

        else
        {
          *(v106 + 36) = v384 + 1;
          v385 = &v106[17][5 * v384];
          *v385 = 90;
          *(v385 + 4) = v382;
          *(v385 + 8) = v383;
          *(v385 + 12) = v659;
          *(v385 + 24) = 0;
          *(v385 + 32) = 0;
          *(v385 + 16) = 0;
        }

        if (*(*v106 + 103))
        {
          if (v653)
          {
            if (!(*v106)[103])
            {
              v171 = (*v653)-- == 1;
              if (v171)
              {
                sub_181939EC8(*(v653 + 2), v653);
              }
            }
          }
        }

        else
        {
          if (v384 < 0)
          {
            v384 = *(v106 + 36) - 1;
          }

          v386 = &v106[17][5 * v384];
          if (*(v386 + 1))
          {
            sub_18194CB90(v106, v386, v653, 4294967288);
          }

          else if (v653)
          {
            *(v386 + 16) = v653;
            *(v386 + 1) = -8;
          }
        }

        v387 = *(v106 + 36);
        if (v387 >= 1)
        {
          *(&v106[17][5 * v387 - 4] - 3) = 1;
        }

        if (*(v106 + 37) <= v387)
        {
          sub_18194C8AC(v106, 14, v361, v355, v366);
        }

        else
        {
          *(v106 + 36) = v387 + 1;
          v388 = &v106[17][5 * v387];
          *v388 = 14;
          *(v388 + 4) = v361;
          *(v388 + 8) = v355;
          *(v388 + 12) = v366;
          *(v388 + 24) = 0;
          *(v388 + 32) = 0;
          *(v388 + 16) = 0;
        }

        v389 = v106[3];
        v390 = -v107;
        if (*(v389 + 72) + *(v389 + 76) < 0)
        {
          sub_18195CB84(v389, v106, v390);
        }

        else
        {
          *(*(v389 + 80) + 4 * v390) = *(v106 + 36);
        }

        v391 = *(v292 + 10);
        if (v391)
        {
          sub_18195B158(a1, sub_1819694AC, v391);
        }

        *(v292 + 10) = v701;
        *(v701 + 88) = v292;
        v392 = *(v701 + 72);
        if (v392)
        {
          sub_18194E5B8(v673, v392);
        }

        *(v701 + 72) = 0;
        v393 = *(a1 + 78);
        if (v393)
        {
          v394 = a1[2];
          if (*(*v394 + 103))
          {
            v395 = &byte_1EA831A58;
          }

          else
          {
            v395 = (v394[17] + 40 * v393);
          }

          v393 = *(v395 + 2);
        }

        *(a1 + 78) = v393;
        result = *(a1 + 13) != 0;
        goto LABEL_792;
      }

      v280 = 1;
      while (2)
      {
        if (v280 > **(a2 + 4))
        {
          goto LABEL_152;
        }

        if (v108 < 1)
        {
          v283 = 0;
        }

        else
        {
          v283 = 0;
          v284 = (v104 + 7);
          while (1)
          {
            v285 = *v284;
            v284 += 12;
            if (v280 == v285)
            {
              break;
            }

            if (v108 == ++v283)
            {
              goto LABEL_465;
            }
          }
        }

        if (v283 == v108)
        {
LABEL_465:
          v739[0] = 0;
          v739[1] = 0;
          v286 = sub_1818A8CF0(v105, 156, v739, 0);
          if (!v286)
          {
            result = 7;
            goto LABEL_792;
          }

          *(v286 + 1) |= 0x800u;
          *(v286 + 2) = v280;
          if (v104)
          {
            v287 = *v104;
            if (v104[1] <= *v104)
            {
              v288 = sub_18197FE14(*a1, v104, v286);
              goto LABEL_470;
            }

            *v104 = v287 + 1;
            v281 = &v104[6 * v287 + 2];
            v281[1] = 0;
            v281[2] = 0;
            *v281 = v286;
            *v712 = v104;
LABEL_455:
            v282 = &v104[6 * v108++];
            *(v282 + 14) = v280;
          }

          else
          {
            v288 = sub_18197FD9C(*a1, v286);
LABEL_470:
            v104 = v288;
            *v712 = v288;
            if (v288)
            {
              goto LABEL_455;
            }
          }
        }

        ++v280;
        if (*(v105 + 103))
        {
          goto LABEL_152;
        }

        continue;
      }
    }

    if (!*(v87 + 80))
    {
      sub_18195AD8C(a1, 1, "COMPOUND QUERY");
      sub_18195AD8C(a1, 1, "LEFT-MOST SUBQUERY");
    }

    v121 = *a2;
    if (v121 == 135 || v121 == 137)
    {
      v727 = 0u;
      memset(v728, 0, 24);
      if (v92 == 1)
      {
        v129 = DWORD1(v736);
      }

      else
      {
        v129 = *(a1 + 14);
        *(a1 + 14) = v129 + 1;
        v293 = *(v91 + 144);
        if (*(v91 + 148) <= v293)
        {
          v293 = sub_18194C8AC(v91, 117, v129, 0, 0);
        }

        else
        {
          *(v91 + 144) = v293 + 1;
          v294 = *(v91 + 136) + 40 * v293;
          *v294 = 117;
          *(v294 + 4) = v129;
          *(v294 + 8) = 0uLL;
          *(v294 + 24) = 0uLL;
        }

        *(a2 + 5) = v293;
        v341 = a2;
        do
        {
          v342 = v341;
          v341 = *(v341 + 11);
        }

        while (v341);
        *(v342 + 1) |= 0x20u;
      }

      LOBYTE(v727) = 1;
      *&v728[8] = 0;
      DWORD1(v727) = v129;
      *(&v727 + 1) = 0;
      *v728 = 0;
      result = sub_1818A9A10(a1, v87, &v727);
      if (!result)
      {
        v343 = *a2;
        if (v343 == 137)
        {
          v344 = 2;
        }

        else
        {
          v344 = 1;
        }

        *(a2 + 10) = 0;
        v345 = *(a2 + 12);
        *(a2 + 12) = 0;
        LOBYTE(v727) = v344;
        v346 = v343 + 120;
        if (v346 > 2u)
        {
          v347 = "UNION";
        }

        else
        {
          v347 = off_1E6A284D0[v346];
        }

        sub_18195AD8C(a1, 1, "%s USING TEMP B-TREE", v347);
        v724 = sub_1818A9A10(a1, a2, &v727);
        v101 = *(a2 + 10);
        *(a2 + 9) = 0;
        *(a2 + 10) = v87;
        if (*a2 == 135)
        {
          *(a2 + 1) = sub_18196941C(*(a2 + 1), *(v87 + 2));
        }

        v415 = *(a2 + 12);
        if (v415)
        {
          sub_1819439E0(v88, v415);
        }

        *(a2 + 12) = v345;
        *(a2 + 1) = 0;
        if (v92 != 1 && !*(v88 + 103))
        {
          v416 = *(a1 + 18);
          v417 = (v416 - 1);
          v418 = v416 - 2;
          *(a1 + 18) = v416 - 2;
          sub_1818B4A80(a1, a2, v417);
          sub_1818A2964(v91, 36, v129, v417, 0);
          v419 = *(v91 + 144);
          sub_1818B6C58(a1, a2, v129, 0, 0, &v736, v418, v417);
          v420 = v418;
          a3 = v710;
          sub_181958CD8(v91, v420);
          sub_1818A2964(v91, 39, v129, v419, 0);
          sub_181958CD8(v91, v417);
          sub_1818A2964(v91, 122, v129, 0, 0);
        }

        result = v724;
        goto LABEL_748;
      }
    }

    else if (v121 == 136)
    {
      LODWORD(v727) = 0;
      *(v87 + 8) = *(a2 + 1);
      *(v87 + 96) = *(a2 + 12);
      result = sub_1818A9A10(a1, v87, &v736);
      *(v87 + 96) = 0;
      if (!result)
      {
        *(a2 + 10) = 0;
        v122 = *(v87 + 8);
        *(a2 + 1) = v122;
        if (v122)
        {
          v123 = sub_1818A2964(v91, 17, v122, 0, 0);
          v124 = *(a2 + 3);
          v125 = v88;
          if (v124)
          {
            sub_1818A2964(v91, 160, *(a2 + 2), (v124 + 1), v124);
          }
        }

        else
        {
          v125 = v88;
          v123 = 0;
        }

        sub_18195AD8C(a1, 1, "UNION ALL");
        v436 = sub_1818A9A10(a1, a2, &v736);
        v101 = *(a2 + 10);
        *(a2 + 10) = v87;
        *(a2 + 1) = sub_18196941C(*(a2 + 1), *(v87 + 2));
        v437 = *(a2 + 12);
        if (v437)
        {
          if (sub_18195A9F8(*(v437 + 16), &v727, a1))
          {
            if (v727 >= 1)
            {
              v438 = *(a2 + 1);
              v439 = sub_181919E10(v727);
              if (v438 > v439)
              {
                *(a2 + 1) = v439;
              }
            }
          }
        }

        result = v436;
        v88 = v125;
        if (v123)
        {
          if (*(*v91 + 103))
          {
            dword_1EA831A60 = *(v91 + 144);
          }

          else
          {
            *(*(v91 + 136) + 40 * v123 + 8) = *(v91 + 144);
          }
        }

LABEL_748:
        if (!*(a2 + 11))
        {
          v442 = *(a1 + 78);
          if (v442)
          {
            v443 = a1[2];
            if (*(*v443 + 103))
            {
              v444 = &byte_1EA831A58;
            }

            else
            {
              v444 = (v443[17] + 40 * v442);
            }

            v442 = *(v444 + 2);
          }

          *(a1 + 78) = v442;
        }

        goto LABEL_755;
      }
    }

    else
    {
      v727 = 0u;
      memset(v728, 0, 24);
      v295 = *(a1 + 14);
      *(a1 + 14) = v295 + 2;
      v296 = *(v91 + 144);
      if (*(v91 + 148) <= v296)
      {
        v296 = sub_18194C8AC(v91, 117, v295, 0, 0);
      }

      else
      {
        *(v91 + 144) = v296 + 1;
        v297 = *(v91 + 136) + 40 * v296;
        *v297 = 117;
        *(v297 + 4) = v295;
        *(v297 + 8) = 0uLL;
        *(v297 + 24) = 0uLL;
      }

      *(a2 + 5) = v296;
      v348 = a2;
      do
      {
        v349 = v348;
        v348 = *(v348 + 11);
      }

      while (v348);
      *(v349 + 1) |= 0x20u;
      LOBYTE(v727) = 1;
      *&v728[8] = 0;
      DWORD1(v727) = v295;
      *(&v727 + 1) = 0;
      *v728 = 0;
      result = sub_1818A9A10(a1, v87, &v727);
      if (!result)
      {
        *(a2 + 6) = sub_1818A2964(v91, 117, (v295 + 1), 0, 0);
        *(a2 + 10) = 0;
        v421 = *(a2 + 12);
        *(a2 + 12) = 0;
        DWORD1(v727) = v295 + 1;
        if ((*a2 + 120) > 2u)
        {
          v422 = "UNION";
        }

        else
        {
          v422 = off_1E6A284D0[(*a2 + 120)];
        }

        sub_18195AD8C(a1, 1, "%s USING TEMP B-TREE", v422);
        result = sub_1818A9A10(a1, a2, &v727);
        v101 = *(a2 + 10);
        *(a2 + 10) = v87;
        v423 = *(v87 + 2);
        if (*(a2 + 1) > v423)
        {
          *(a2 + 1) = v423;
        }

        v424 = *(a2 + 12);
        if (v424)
        {
          v425 = result;
          sub_1819439E0(v88, v424);
          result = v425;
        }

        *(a2 + 12) = v421;
        if (!result)
        {
          v426 = result;
          v427 = *(a1 + 18);
          v428 = (v427 - 1);
          v429 = (v427 - 2);
          *(a1 + 18) = v429;
          sub_1818B4A80(a1, a2, v428);
          sub_1818A2964(v91, 36, v295, v428, 0);
          if (*(a1 + 31))
          {
            v430 = *(a1 + 31) - 1;
            *(a1 + 31) = v430;
            v431 = *(a1 + v430 + 46);
          }

          else
          {
            v431 = (*(a1 + 15) + 1);
            *(a1 + 15) = v431;
          }

          v725 = sub_1818A2964(v91, 134, v295, v431, 0);
          sub_181910A18(v91, 28, (v295 + 1), v429, v431, 0);
          if (v431)
          {
            v441 = *(a1 + 31);
            if (v441 <= 7)
            {
              *(a1 + 31) = v441 + 1;
              *(a1 + v441 + 46) = v431;
            }
          }

          sub_1818B6C58(a1, a2, v295, 0, 0, &v736, v429, v428);
          sub_181958CD8(v91, v429);
          sub_1818A2964(v91, 39, v295, v725, 0);
          sub_181958CD8(v91, v428);
          sub_1818A2964(v91, 122, (v295 + 1), 0, 0);
          sub_1818A2964(v91, 122, v295, 0, 0);
          result = v426;
          a3 = v710;
        }

        goto LABEL_748;
      }
    }

    v101 = 0;
    goto LABEL_790;
  }

  v699 = v85;
  v97 = 0;
  while (2)
  {
    if (v97 >= *v84)
    {
      v224 = *(a2 + 6);
      if (v224 && *v224 == 44 && (*(v6 + 97) & 0x80) == 0)
      {
        sub_181964C00(a1, a2);
      }

      if ((*(v6 + 96) & 0x201) == 0 && sub_181964D08(a1, a2))
      {
        if (*(v6 + 103))
        {
          goto LABEL_13;
        }

        v84 = *(a2 + 5);
      }

      if (*v84 >= 1)
      {
        v225 = 0;
        v226 = (v84 + 2);
        v227 = 0uLL;
        do
        {
          v228 = &v226[18 * v225];
          *&v728[16] = 0;
          v727 = v227;
          *v728 = v227;
          if (!*(v228 + 4) && *v228)
          {
            if (*(v228 + 27))
            {
              v238 = *(v228 + 8);
              if (v238)
              {
                v239 = (*(*a1 + 32) + 24);
                v240 = 0xFFFFFFFF00000000;
                do
                {
                  v241 = *v239;
                  v239 += 4;
                  v240 += 0x100000000;
                }

                while (v241 != v238);
              }
            }

            v251 = *a1;
            v252 = *(*a1 + 528);
            if (v252)
            {
              if (!*(v251 + 197) && !*(a1 + 302))
              {
                v253 = v252(*(v251 + 536), 20);
                if (v253 == 1)
                {
                  v254 = 23;
                  sub_181910730(a1, "not authorized");
LABEL_423:
                  *(a1 + 6) = v254;
                  v227 = 0uLL;
                  goto LABEL_375;
                }

                v227 = 0uLL;
                if ((v253 & 0xFFFFFFFD) != 0)
                {
                  v254 = 1;
                  sub_181910730(a1, "authorizer malfunction");
                  goto LABEL_423;
                }
              }
            }
          }

LABEL_375:
          if ((*(v228 + 25) & 4) != 0)
          {
            v229 = *(v228 + 8);
            if (!*(v229 + 2))
            {
              v230 = *v229;
              LODWORD(v733) = 0;
              sub_1818CB0C0(a2, &v733);
              *(a1 + 77) += v733;
              v231 = *(v6 + 96);
              if ((v231 & 0x1000) == 0)
              {
                if ((*(v228 + 25) & 0x200) == 0 || (v232 = *(v228 + 6), *(v232 + 18)) && *v232 <= 1)
                {
                  sub_181964FA4(a1, v230, *(a2 + 6), v84, v225);
                  v231 = *(v6 + 96);
                }
              }

              if ((v231 & 0x4000000) == 0)
              {
                sub_181965288(&v226[18 * v225]);
              }

              v714 = v230;
              v706 = a1[46];
              a1[46] = *v228;
              if (sub_1819653E0(a1, v84, v225, *(a2 + 1)))
              {
                v233 = *(v721 + 144);
                v234 = (*(a1 + 15) + 1);
                *(a1 + 15) = v234;
                *(v229 + 3) = v234;
                sub_1818A2964(v721, 11, v234, 0, (v233 + 1));
                *(v229 + 2) = v233 + 1;
                v235 = *(v229 + 3);
                LOBYTE(v727) = 13;
                *&v728[8] = 0;
                DWORD1(v727) = v235;
                *(&v727 + 1) = 0;
                *v728 = 0;
                sub_18195AD8C(a1, 1, "CO-ROUTINE %!S", v228);
                sub_1818A9A10(a1, v230, &v727);
                *(*(v228 + 2) + 58) = *(v230 + 2);
                *(v228 + 25) |= 0x40u;
                *(v229 + 4) = HIDWORD(v727);
                sub_1818A2964(v721, 68, *(v229 + 3), 0, 0);
                v236 = *(v721 + 24);
                *(v236 + 31) = 0;
                *(v236 + 44) = 0;
                v237 = &byte_1EA831A58;
                if (!*(*v721 + 103))
                {
                  v237 = (*(v721 + 136) + 40 * v233);
                }

                *(v237 + 2) = *(v721 + 144);
                *(a1 + 31) = 0;
                *(a1 + 11) = 0;
                v226 = (v84 + 2);
              }

              else
              {
                if ((*(v228 + 25) & 0x200) != 0 && (v242 = *(v228 + 6), v243 = *(v242 + 4), v243 >= 1))
                {
                  sub_1818A2964(v721, 10, *(v242 + 8), v243, 0);
                  v244 = v228[7];
                  v245 = *(v242 + 12);
                  if (v244 != v245)
                  {
                    sub_1818A2964(v721, 114, v244, v245, 0);
                  }

                  v246 = *(v242 + 16);
                }

                else
                {
                  v247 = sub_18196556C(v84, &v226[18 * v225], 0, v225);
                  v248 = v247;
                  if (!v247)
                  {
                    v255 = *(a1 + 15) + 1;
                    *(a1 + 15) = v255;
                    *(v229 + 3) = v255;
                    v675 = sub_1818A2964(v721, 9, 0, 0, 0);
                    *(v229 + 2) = v675 + 1;
                    v256 = *(v228 + 25);
                    *(v228 + 25) = v256 | 0x20;
                    if ((v256 & 0x10) == 0)
                    {
                      LODWORD(v248) = sub_1818A2964(v721, 15, 0, 0, 0);
                    }

                    v257 = v228[7];
                    LOBYTE(v727) = 12;
                    *&v728[8] = 0;
                    DWORD1(v727) = v257;
                    *(&v727 + 1) = 0;
                    *v728 = 0;
                    v680 = sub_18195AD8C(a1, 1, "MATERIALIZE %!S", &v226[18 * v225]);
                    sub_1818A9A10(a1, v714, &v727);
                    *(*(v228 + 2) + 58) = *(v714 + 2);
                    if (v248)
                    {
                      v258 = &byte_1EA831A58;
                      if (!*(*v721 + 103))
                      {
                        v258 = (*(v721 + 136) + 40 * v248);
                      }

                      *(v258 + 2) = *(v721 + 144);
                    }

                    sub_1818A2964(v721, 67, *(v229 + 3), (v675 + 1), 0);
                    sub_18195B0C0(v721, v680, v680, -1);
                    v259 = &byte_1EA831A58;
                    if (!*(*v721 + 103))
                    {
                      v259 = (*(v721 + 136) + 40 * v675);
                    }

                    *(v259 + 2) = *(v721 + 144);
                    *(a1 + 31) = 0;
                    *(a1 + 11) = 0;
                    if ((*(v228 + 25) & 0x210) == 0x200)
                    {
                      v260 = *(v228 + 6);
                      *(v260 + 4) = v229[1];
                      *(v260 + 12) = v228[7];
                      *(v260 + 16) = *(v714 + 2);
                    }

                    goto LABEL_404;
                  }

                  v249 = *(v247 + 64);
                  v250 = v249[2];
                  if (v250)
                  {
                    sub_1818A2964(v721, 10, v249[3], v250, 0);
                  }

                  sub_1818A2964(v721, 114, v228[7], *(v248 + 28), 0);
                  v246 = *(*v249 + 2);
                }

                *(v714 + 2) = v246;
              }

LABEL_404:
              if (*(v6 + 103))
              {
                goto LABEL_13;
              }

              LODWORD(v733) = 0;
              sub_1818CB0C0(a2, &v733);
              *(a1 + 77) -= v733;
              a1[46] = v706;
              v227 = 0uLL;
            }
          }

          ++v225;
        }

        while (v225 < *v84);
      }

      v261 = *(a2 + 4);
      v262 = *(a2 + 7);
      v715 = *(a2 + 6);
      v263 = *(a2 + 8);
      v264 = *(a2 + 1);
      LOBYTE(v731) = v264 & 1;
      if ((v264 & 9) != 1 || sub_181959974(*&v730[0], v261, 0xFFFFFFFFLL) || (*(v6 + 96) & 4) != 0 || *(a2 + 14))
      {
LABEL_809:
        if (*&v730[0])
        {
          v473 = sub_181965648(a1, *&v730[0], 0, *v261);
          v474 = *(a1 + 14);
          *(a1 + 14) = v474 + 1;
          HIDWORD(v730[0]) = v474;
          v475 = sub_1818A2964(v721, 117, v474, (**&v730[0] + *v261 + 1), 0);
          sub_1818B49F8(v721, v475, v473, 4294967288);
        }

        else
        {
          v475 = -1;
        }

        v476 = v699;
        DWORD2(v730[1]) = v475;
        v477 = v721;
        if (*v710 != 12)
        {
          goto LABEL_830;
        }

        sub_1818A2964(v721, 117, *(v710 + 1), *v261, 0);
        v477 = v721;
        if ((a2[5] & 8) == 0)
        {
          goto LABEL_830;
        }

        v478 = *v261;
        if (v478 <= 1)
        {
          v479 = v263;
        }

        else
        {
          if ((*(&v261[6 * v478] + 1) & 0x40) != 0)
          {
LABEL_826:
            v478 = v478;
            v485 = v261 + 25;
            v486 = v261 + 25;
            do
            {
              v487 = *v486;
              v486 += 24;
              if ((v487 & 0x40) == 0)
              {
                **(v485 - 17) = 122;
              }

              v485 = v486;
              --v478;
            }

            while (v478);
LABEL_830:
            v488 = (*(a1 + 18) - 1);
            *(a1 + 18) = v488;
            if ((a2[5] & 0x40) == 0)
            {
              *(a2 + 1) = 320;
            }

            if (*(a2 + 12))
            {
              sub_1818B4A80(a1, a2, v488);
              v477 = v721;
            }

            if (!*(a2 + 2) && (DWORD2(v730[1]) & 0x80000000) == 0)
            {
              if (*(*v477 + 103))
              {
                v489 = &byte_1EA831A58;
              }

              else
              {
                v489 = (v477[17] + 40 * DWORD2(v730[1]));
              }

              *v489 = 119;
              BYTE4(v730[2]) |= 1u;
            }

            if (a2[4])
            {
              v491 = *(a1 + 14);
              *(a1 + 14) = v491 + 1;
              HIDWORD(v731) = v491;
              v492 = sub_181965648(a1, *(a2 + 4), 0, 0);
              LODWORD(v491) = sub_1818A2964(v721, 117, v491, 0, 0);
              sub_1818B49F8(v721, v491, v492, 4294967288);
              v732 = v491;
              v493 = *(v721 + 144);
              if (v493 >= 1)
              {
                *(*(v721 + 136) + 40 * v493 - 38) = 8;
              }

              v490 = 3;
              v476 = v699;
            }

            else
            {
              v490 = 0;
            }

            BYTE1(v731) = v490;
            if ((v476 & 8) == 0 && !v262)
            {
              v494 = *(a2 + 1) & 0x4000 | ((v731 != 0) << 8);
              v495 = *(a2 + 14);
              if (v495)
              {
                sub_1819657CC(a1, a2);
              }

              v496 = sub_1818B507C(a1, v84, v715, *&v730[0], *(a2 + 4), a2, v494, *(a2 + 1));
              if (!v496)
              {
                goto LABEL_13;
              }

              v499 = v496;
              v500 = *(v496 + 70);
              if (v500 < *(a2 + 1))
              {
                *(a2 + 1) = v500;
                if (*v710 - 5 <= 1)
                {
                  *(a2 + 1) = v500 - 30;
                }
              }

              if (v731 && *(v496 + 67))
              {
                BYTE1(v731) = *(v496 + 67);
              }

              if (*&v730[0])
              {
                v501 = *(v496 + 65) & ~(*(v496 + 65) >> 31);
                DWORD2(v730[0]) = v501;
                if ((*(v496 + 68) & 4) != 0)
                {
                  v528 = v496 + 120 * *(v496 + 64);
                  v529 = *(v528 + 792);
                  v502 = (v528 + 752);
                  if (v529)
                  {
                    v502 = (v496 + 48);
                  }
                }

                else
                {
                  v502 = (v496 + 48);
                }

                LODWORD(v730[2]) = *v502;
                if (**&v730[0] != v501)
                {
                  goto LABEL_897;
                }

                *&v730[0] = 0;
              }

              if ((DWORD2(v730[1]) & 0x80000000) == 0)
              {
                sub_1818B6C00(v721, SDWORD2(v730[1]), v497, v498);
              }

LABEL_897:
              if (!v495)
              {
                sub_1818B6C58(a1, a2, 0xFFFFFFFFLL, v730, &v731, v710, *(v499 + 48), *(v499 + 52));
                sub_1818B9E4C(v499);
LABEL_1084:
                if (BYTE1(v731) == 3)
                {
                  sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR %s", "DISTINCT");
                }

                if (*&v730[0])
                {
                  sub_1818E4EE4(a1, a2, v730, *v261, v710);
                }

                sub_181958CD8(v721, v488);
                result = *(a1 + 13) > 0;
                goto LABEL_14;
              }

              v530 = *(a1 + 18);
              v531 = v530 - 1;
              v532 = v530 - 2;
              v690 = v261;
              v533 = v488;
              v488 = (v530 - 3);
              *(a1 + 18) = v488;
              v534 = *(a1 + 15);
              v535 = (v534 + 1);
              *(a1 + 15) = v535;
              sub_181965E3C(a1, a2, v499, v534 + 1, v531);
              sub_1818A2964(v721, 9, 0, v488, 0);
              sub_181958CD8(v721, v531);
              LODWORD(v730[2]) = 0;
              sub_1818B6C58(a1, a2, 0xFFFFFFFFLL, v730, &v731, v710, v532, v488);
              sub_181958CD8(v721, v532);
              sub_1818A2964(v721, 67, v535, 0, 0);
              v536 = v721;
              v537 = v488;
              LODWORD(v488) = v533;
              v261 = v690;
LABEL_1083:
              sub_181958CD8(v536, v537);
              goto LABEL_1084;
            }

            memset(v728, 0, sizeof(v728));
            v727 = 0u;
            if (!v262)
            {
              *(a2 + 1) = 0;
              goto LABEL_885;
            }

            v503 = *(a2 + 4);
            v504 = *v503;
            if (v504 >= 1)
            {
              v505 = v503 + 2;
              if (v504 == 1)
              {
                v506 = v503 + 2;
                v507 = 1;
LABEL_867:
                v510 = v506 + 11;
                v511 = v507 + 1;
                do
                {
                  *v510 = 0;
                  v510 += 12;
                  --v511;
                }

                while (v511 > 1);
                goto LABEL_869;
              }

              v506 = &v505[6 * (v504 & 0x7FFFFFFE)];
              v507 = v504 - (v504 & 0x7FFFFFFE);
              v508 = v505 + 23;
              v509 = v504 & 0x7FFFFFFE;
              do
              {
                *(v508 - 12) = 0;
                *v508 = 0;
                v508 += 24;
                v509 -= 2;
              }

              while (v509);
              if ((v504 & 0x7FFFFFFE) != v504)
              {
                goto LABEL_867;
              }
            }

LABEL_869:
            v512 = *v262;
            if (v512 < 1)
            {
              goto LABEL_877;
            }

            if (v512 == 1)
            {
              v513 = (v262 + 2);
              v514 = *v262;
            }

            else
            {
              v513 = &v262[6 * (v512 & 0x7FFFFFFE) + 2];
              v514 = v512 - (v512 & 0x7FFFFFFE);
              v515 = v262 + 27;
              v516 = v512 & 0x7FFFFFFE;
              do
              {
                *(v515 - 12) = 0;
                *v515 = 0;
                v515 += 24;
                v516 -= 2;
              }

              while (v516);
              if ((v512 & 0x7FFFFFFE) == v512)
              {
LABEL_877:
                if (*(a2 + 1) >= 67)
                {
                  *(a2 + 1) = 66;
                }

                v519 = *&v730[0];
                if (*&v730[0])
                {
                  v520 = *v262;
                  if (v520 == **&v730[0])
                  {
                    if (v520 >= 1)
                    {
                      v521 = (*&v730[0] + 24);
                      v522 = v262 + 6;
                      do
                      {
                        v523 = *v521;
                        v521 += 24;
                        *v522 = v523 & 1;
                        v522 += 24;
                        --v520;
                      }

                      while (v520);
                    }

                    v524 = sub_181959974(v262, v519, 0xFFFFFFFFLL) != 0;
LABEL_886:
                    v696 = v524;
                    v525 = *(a1 + 18) - 1;
                    *(a1 + 18) = v525;
                    v526 = sub_18190C56C(v6, 0x40uLL, 0x1020040567C6545);
                    if (v526)
                    {
                      sub_18195B158(a1, sub_1819679DC, v526);
                    }

                    v709 = v526;
                    if (*(v6 + 103))
                    {
                      goto LABEL_13;
                    }

                    v526[15] = *(a2 + 4);
                    memset(&v728[8], 0, 32);
                    *&v727 = a1;
                    *(&v727 + 1) = v84;
                    *v728 = v526;
                    if (v262)
                    {
                      v527 = *v262;
                    }

                    else
                    {
                      v527 = 0;
                    }

                    v526[1] = v527;
                    *(v526 + 3) = v262;
                    sub_181967A38(&v727, v261);
                    sub_181967A38(&v727, *&v730[0]);
                    if (v263)
                    {
                      if (v262)
                      {
                        *&v735 = 0;
                        *&v733 = a1;
                        *(&v733 + 1) = sub_18197F7EC;
                        v734 = 0uLL;
                        *(&v735 + 1) = a2;
                        v538 = *(a2 + 8);
                        if (v538)
                        {
                          sub_181959BA0(&v733, v538);
                        }

                        v715 = *(a2 + 6);
                      }

                      *&v733 = 0;
                      *(&v733 + 1) = sub_1818EAE9C;
                      *&v734 = sub_181968AFC;
                      *&v735 = 0;
                      *(&v735 + 1) = &v727;
                      *(&v734 + 1) = sub_181968B10;
                      sub_181959BA0(&v733, v263);
                    }

                    v526[11] = v526[10];
                    if (*(a2 + 7) || *(a2 + 8) || v526[14] != 1)
                    {
                      v702 = 0;
                    }

                    else
                    {
                      v702 = sub_181967AF8(v6, **(v526 + 6), &v729);
                    }

                    sub_181967C9C(v526, &v727);
                    if (*(v6 + 103))
                    {
                      goto LABEL_13;
                    }

                    v684 = v525;
                    v668 = v263;
                    if (v262)
                    {
                      v649 = v488;
                      v691 = v261;
                      if (v526[14] != 1 || (v539 = *(v526 + 6), (v539[2] & 0x80000000) != 0))
                      {
                        v661 = 0;
                        v664 = 0;
                      }

                      else
                      {
                        v540 = *v539;
                        if (v540 && (*(v540 + 5) & 0x10) == 0 && (v541 = *(v540 + 32)) != 0)
                        {
                          v542 = *(v541 + 8);
                          if (v542)
                          {
                            v543 = sub_1818C7FEC(v6, v542, 0, 0);
                          }

                          else
                          {
                            v543 = 0;
                          }

                          v634 = sub_1818C83A0(v6, v262, 0);
                          v661 = sub_1818A8F6C(a1, v634, v543);
                          if (v661)
                          {
                            v635 = 1280;
                          }

                          else
                          {
                            v635 = 0;
                          }

                          v664 = v635;
                        }

                        else
                        {
                          v661 = 0;
                          v664 = 0;
                        }
                      }

                      v550 = *(a1 + 14);
                      *(a1 + 14) = v550 + 1;
                      v526[2] = v550;
                      v551 = sub_181965648(a1, v262, 0, v526[10]);
                      v644 = sub_1818A2964(v721, 119, v526[2], v526[1], 0);
                      v648 = v551;
                      sub_1818B49F8(v721, v644, v551, 4294967288);
                      v552 = *(a1 + 15);
                      v553 = *(a1 + 18);
                      v554 = (v552 + 4);
                      *(a1 + 15) = v554;
                      v647 = v553;
                      v555 = (v553 - 2);
                      *(a1 + 18) = v555;
                      v556 = (v552 + 5);
                      v557 = *v262 + v554;
                      *(a1 + 15) = v557;
                      v646 = v557;
                      *(a1 + 15) = *v262 + v557;
                      v677 = v552;
                      sub_1818A2964(v721, 71, 0, (v552 + 2), 0);
                      v671 = v556;
                      sub_1818A2964(v721, 75, 0, v556, *v262 + v554);
                      __sb = v554;
                      v655 = v555;
                      sub_1818A2964(v721, 10, v554, v555, 0);
                      if (v731 == 2)
                      {
                        v558 = 128;
                      }

                      else
                      {
                        v558 = 64;
                      }

                      if (v696)
                      {
                        v559 = 0;
                      }

                      else
                      {
                        v559 = 512;
                      }

                      v560 = sub_1818B507C(a1, v84, v715, v262, v661, a2, v559 | v558 | v664, 0);
                      if (!v560)
                      {
                        if (v661)
                        {
                          sub_18194E5B8(v6, v661);
                        }

                        goto LABEL_13;
                      }

                      v563 = v560;
                      if (a1[12])
                      {
                        sub_181967E7C(a2, v526, &v727);
                      }

                      v564 = *(a1 + 15);
                      v526[4] = v564 + 1;
                      *(a1 + 15) = v526[10] + v564 + v526[14];
                      v652 = *(v563 + 67);
                      v718 = *(v563 + 65) & ~(*(v563 + 65) >> 31);
                      v703 = *v262;
                      v645 = v563;
                      if (*v262 == v718)
                      {
                        v565 = 0;
                        v642 = 0;
                      }

                      else
                      {
                        v566 = "GROUP BY";
                        if (v731 && (a2[4] & 1) == 0)
                        {
                          v566 = "DISTINCT";
                        }

                        v641 = sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR %s", v566);
                        v567 = *v262;
                        v568 = v526[10];
                        v569 = *v262;
                        if (v568 >= 1)
                        {
                          v570 = (*(v526 + 4) + 24);
                          v571 = *v262;
                          LODWORD(v569) = *v262;
                          do
                          {
                            v572 = *v570;
                            v570 += 8;
                            v573 = v572 < v571;
                            if (v572 < v571)
                            {
                              v569 = v569;
                            }

                            else
                            {
                              v569 = (v569 + 1);
                            }

                            if (!v573)
                            {
                              ++v571;
                            }

                            --v568;
                          }

                          while (v568);
                        }

                        v574 = sub_18195883C(a1, v569);
                        sub_1819588AC(a1, v262, v574, 0, 0);
                        *v526 = 1;
                        v575 = v526[10];
                        if (v575 >= 1)
                        {
                          v576 = 0;
                          for (m = 0; m < v575; ++m)
                          {
                            v578 = *(v526 + 4) + v576;
                            if (*(v578 + 24) >= v567)
                            {
                              sub_181956EF4(a1, *(v578 + 8), (v567 + v574));
                              ++v567;
                              v575 = v526[10];
                            }

                            v576 += 32;
                          }
                        }

                        *v526 = 0;
                        if (*(a1 + 31))
                        {
                          v579 = *(a1 + 31) - 1;
                          *(a1 + 31) = v579;
                          v580 = *(a1 + v579 + 46);
                        }

                        else
                        {
                          v580 = (*(a1 + 15) + 1);
                          *(a1 + 15) = v580;
                        }

                        if ((*(*v721 + 49) & 4) != 0)
                        {
                          v595 = *(v721 + 144);
                          v596 = *(v721 + 392);
                          v597 = 56 * v596;
                          v598 = v596 + 1;
                          do
                          {
                            if (--v598 < 1)
                            {
                              goto LABEL_1000;
                            }

                            v599 = v597 - 56;
                            v600 = *(v721 + 400);
                            v601 = *(v600 + v597 - 56);
                            v597 -= 56;
                          }

                          while (v601 != v641);
                          if (v595 >= 1)
                          {
                            *(v600 + v599 + 32) = v595;
                          }
                        }

LABEL_1000:
                        sub_1818A2964(v721, 97, v574, v569, v580);
                        sub_1818A2964(v721, 139, *(v709 + 8), v580, 0);
                        sub_18195B0C0(v721, v641, *(v721 + 144) - 2, -1);
                        if (v580)
                        {
                          v602 = *(a1 + 31);
                          if (v602 <= 7)
                          {
                            *(a1 + 31) = v602 + 1;
                            *(a1 + v602 + 46) = v580;
                          }
                        }

                        if (v569 == 1)
                        {
                          if (v574)
                          {
                            v603 = *(a1 + 31);
                            if (v603 <= 7)
                            {
                              *(a1 + 31) = v603 + 1;
                              *(a1 + v603 + 46) = v574;
                            }
                          }
                        }

                        else if (*(a1 + 11) < v569)
                        {
                          *(a1 + 11) = v569;
                          *(a1 + 12) = v574;
                        }

                        sub_1818B9E4C(v645);
                        v604 = *(a1 + 14);
                        *(a1 + 14) = v604 + 1;
                        v565 = v604;
                        *(v709 + 12) = v604;
                        if (*(a1 + 31))
                        {
                          v605 = *(a1 + 31) - 1;
                          *(a1 + 31) = v605;
                          v642 = *(a1 + v605 + 46);
                        }

                        else
                        {
                          v642 = *(a1 + 15) + 1;
                          *(a1 + 15) = v642;
                        }

                        if ((*(*v721 + 49) & 4) != 0)
                        {
                          v606 = *(v721 + 144);
                          v607 = *(v721 + 392);
                          v608 = 56 * v607;
                          v609 = v607 + 1;
                          do
                          {
                            if (--v609 < 1)
                            {
                              goto LABEL_1018;
                            }

                            v610 = v608 - 56;
                            v611 = *(v721 + 400);
                            v612 = *(v611 + v608 - 56);
                            v608 -= 56;
                          }

                          while (v612 != v641);
                          if (v606 >= 1)
                          {
                            *(v611 + v610 + 28) = v606;
                          }
                        }

LABEL_1018:
                        sub_1818A2964(v721, 121, v565, v642, v569);
                        v526 = v709;
                        sub_1818A2964(v721, 34, *(v709 + 8), v684, 0);
                        *(v709 + 1) = 1;
                        sub_18195B0C0(v721, v641, -1, v565);
                        sub_18195B0C0(v721, v641, -1, *(v709 + 8));
                      }

                      if (a1[12])
                      {
                        sub_181967F64(v526);
                      }

                      if (!v696 && (*(v6 + 96) & 4) == 0)
                      {
                        if (v703 == v718 && (*(v645 + 68) & 8) == 0)
                        {
                          v613 = v721;
                          v614 = *(v721 + 144);
LABEL_1029:
                          v697 = v647 - 1;
                          v615 = (v646 + 1);
                          v616 = *v262;
                          v643 = v614;
                          if (v616 >= 1)
                          {
                            for (n = 0; n < v616; ++n)
                            {
                              v618 = &v262[6 * n + 2];
                              v619 = *(v618 + 20);
                              if (v703 == v718)
                              {
                                *v709 = 1;
                                sub_181956EF4(a1, *v618, (v615 + n));
                              }

                              else
                              {
                                sub_1818A2964(v613, 94, v565, n, (v615 + n));
                              }

                              v613 = v721;
                              if (v619)
                              {
                                for (ii = *(*(a2 + 4) + 24 * (v619 - 1) + 8); ; ii = *(v621 + 2))
                                {
                                  v621 = sub_1819575A0(ii);
                                  v613 = v721;
                                  if (!v621)
                                  {
                                    goto LABEL_1031;
                                  }

                                  v622 = *v621;
                                  if (v622 != 179)
                                  {
                                    break;
                                  }
                                }

                                if (v622 != 170 && v622 != 176)
                                {
                                  sub_181958F90(ii, v671 + n);
                                  v613 = v721;
                                }
                              }

LABEL_1031:
                              v616 = *v262;
                            }
                          }

                          LODWORD(v488) = v649;
                          v261 = v691;
                          if (v648)
                          {
                            ++*v648;
                          }

                          v623 = sub_1818A2964(v721, 90, v671, v615, v616);
                          sub_1818B49F8(v721, v623, v648, 4294967288);
                          v624 = *(v721 + 144);
                          sub_1818A2964(v721, 14, (v624 + 1), 0, (v624 + 1));
                          sub_1818A2964(v721, 10, (v677 + 3), v697, 0);
                          sub_1818A2964(a1[2], 79, v615, v671, *v262);
                          sub_1818A2964(v721, 50, (v677 + 2), v684, 0);
                          sub_1818A2964(v721, 10, __sb, v655, 0);
                          if (*(*v721 + 103))
                          {
                            v625 = &byte_1EA831A58;
                          }

                          else
                          {
                            v625 = (*(v721 + 136) + 40 * v624);
                          }

                          *(v625 + 2) = *(v721 + 144);
                          sub_1818EB5A0(a1, (v677 + 1), v709, v652);
                          sub_1818A2964(v721, 71, 1, (v677 + 1), 0);
                          if (v703 == v718)
                          {
                            sub_1818B9E4C(v645);
                            sub_1818B6C00(v721, v644, v626, v627);
                          }

                          else
                          {
                            sub_1818A2964(v721, 37, *(v709 + 8), v643, 0);
                          }

                          if (v661)
                          {
                            sub_18194E5B8(v6, v661);
                          }

                          sub_1818A2964(v721, 10, (v677 + 3), v697, 0);
                          v628 = v684;
                          sub_1818A2964(v721, 9, 0, v684, 0);
                          v720 = *(v721 + 144);
                          sub_1818A2964(v721, 71, 1, (v677 + 2), 0);
                          sub_1818A2964(v721, 67, (v677 + 3), 0, 0);
                          sub_181958CD8(v721, v697);
                          v629 = *(v721 + 144);
                          sub_1818A2964(v721, 50, (v677 + 1), (v629 + 2), 0);
                          sub_1818A2964(v721, 67, (v677 + 3), 0, 0);
                          sub_181967FF4(a1, v709);
                          sub_1818DD640(a1, v668, (v629 + 1), 16);
                          sub_1818B6C58(a1, a2, 0xFFFFFFFFLL, v730, &v731, v710, v629 + 1, v720);
                          sub_1818A2964(v721, 67, (v677 + 3), 0, 0);
                          sub_181958CD8(v721, v655);
                          sub_1818EB1E8(a1, v709);
                          sub_1818A2964(v721, 71, 0, (v677 + 1), 0);
                          sub_1818A2964(v721, 67, __sb, 0, 0);
                          if (v664 && v652)
                          {
                            sub_181968590(a1, v652, *(*(v709 + 48) + 16), *(*(v709 + 48) + 20));
                          }

                          goto LABEL_1082;
                        }

                        *&v730[0] = 0;
                        sub_1818B6C00(v721, SDWORD2(v730[1]), v561, v562);
                        v526 = v709;
                      }

                      v613 = v721;
                      v614 = *(v721 + 144);
                      if (v703 != v718)
                      {
                        sub_1818A2964(v721, 133, v526[2], v642, v565);
                        v613 = v721;
                      }

                      goto LABEL_1029;
                    }

                    v544 = sub_1819686A8(a2, v526);
                    if (v544)
                    {
                      v545 = v544;
                      v546 = *(v544 + 96);
                      if (v546)
                      {
                        v547 = (*(*a1 + 32) + 24);
                        LODWORD(v548) = -1;
                        do
                        {
                          v549 = *v547;
                          v547 += 4;
                          v548 = (v548 + 1);
                        }

                        while (v549 != v546);
                      }

                      else
                      {
                        v548 = 4294934528;
                      }

                      v584 = *(a1 + 14);
                      *(a1 + 14) = v584 + 1;
                      v585 = *(v544 + 40);
                      if (a1[19])
                      {
                        v586 = a1[19];
                      }

                      else
                      {
                        v586 = a1;
                      }

                      v587 = *(v586 + 29);
                      v588 = *(v545 + 40);
                      if ((v587 & (1 << v548)) == 0)
                      {
                        *(v586 + 29) = v587 | (1 << v548);
                        v588 = v585;
                        if (v548 == 1)
                        {
                          sub_1819108F4(v586);
                          v588 = *(v545 + 40);
                        }
                      }

                      sub_181957014(a1, v548, v588, 0, *v545);
                      if ((*(v545 + 48) & 0x80) != 0)
                      {
                        for (jj = *(v545 + 16); jj; jj = *(jj + 40))
                        {
                          if ((*(jj + 99) & 3) == 2)
                          {
                            break;
                          }
                        }
                      }

                      else
                      {
                        jj = 0;
                      }

                      if ((*(*(a2 + 5) + 33) & 1) == 0)
                      {
                        for (kk = *(v545 + 16); kk; kk = *(kk + 40))
                        {
                          if ((*(kk + 99) & 4) == 0)
                          {
                            v592 = *(kk + 92);
                            if (v592 < *(v545 + 60) && !*(kk + 72) && (!jj || v592 < *(jj + 92)))
                            {
                              jj = kk;
                            }
                          }
                        }
                      }

                      if (jj)
                      {
                        v719 = *(jj + 88);
                        v591 = sub_1819572CC(a1, jj);
                        sub_181910A18(v721, 102, v584, v719, v548, 1);
                        if (v591)
                        {
                          sub_1818B49F8(v721, -1, v591, 4294967288);
                        }
                      }

                      else
                      {
                        sub_181910A18(v721, 102, v584, v585, v548, 1);
                      }

                      v593 = *(a1 + 15);
                      *(v709 + 16) = v593 + 1;
                      v594 = *(v709 + 40);
                      *(a1 + 15) = v594 + v593 + *(v709 + 56);
                      sub_1818A2964(v721, 98, v584, (v594 + v593 + 1), 0);
                      sub_1818A2964(v721, 122, v584, 0, 0);
                      sub_181968744(a1, v545, jj);
LABEL_1081:
                      *&v730[0] = 0;
                      v628 = v684;
                      sub_1818DD640(a1, v668, v684, 16);
                      sub_1818B6C58(a1, a2, 0xFFFFFFFFLL, 0, 0, v710, v628, v628);
LABEL_1082:
                      v536 = v721;
                      v537 = v628;
                      goto LABEL_1083;
                    }

                    v581 = v526[14];
                    if (v526[11])
                    {
                      if (v581 < 1)
                      {
                        LODWORD(v582) = 0;
                      }

                      else
                      {
                        v582 = 0;
                        v583 = *(v526 + 6) + 8;
                        while ((*(*(v583 - 8) + 7) & 1) != 0 || (*(*v583 + 4) & 0x20) == 0)
                        {
                          ++v582;
                          v583 += 32;
                          if (v581 == v582)
                          {
                            goto LABEL_1063;
                          }
                        }
                      }

                      if (v582 == v581)
                      {
LABEL_1063:
                        v631 = (*(a1 + 15) + 1);
                        *(a1 + 15) = v631;
                        sub_1818A2964(v721, 71, 0, v631, 0);
                        v632 = 0;
                        v633 = 0;
                        LODWORD(v581) = v526[14];
LABEL_1072:
                        v636 = *(a1 + 15);
                        v526[4] = v636 + 1;
                        *(a1 + 15) = v636 + v581 + v526[10];
                        sub_1818EB1E8(a1, v526);
                        v637 = sub_1818B507C(a1, v84, v715, v729, v632, a2, v633 | v702, 0);
                        if (!v637)
                        {
                          goto LABEL_13;
                        }

                        v638 = v637;
                        v639 = *(v637 + 67);
                        sub_1818EB5A0(a1, v631, v709, v639);
                        if (v639)
                        {
                          v640 = *(v709 + 48);
                          if (v640)
                          {
                            sub_181968590(a1, v639, *(v640 + 16), *(v640 + 20));
                          }
                        }

                        if (v631)
                        {
                          sub_1818A2964(v721, 71, 1, v631, 0);
                        }

                        if (v702)
                        {
                          sub_1819687D4(v721, v638);
                        }

                        sub_1818B9E4C(v638);
                        sub_181967FF4(a1, v709);
                        goto LABEL_1081;
                      }
                    }

                    else if (v581 == 1)
                    {
                      v630 = *(v526 + 6);
                      if ((v630[4] & 0x80000000) != 0)
                      {
                        v631 = 0;
                        v632 = 0;
                        v633 = 0;
                      }

                      else
                      {
                        v631 = 0;
                        v632 = *(*v630 + 32);
                        if (v632)
                        {
                          v633 = 1280;
                        }

                        else
                        {
                          v633 = 0;
                        }
                      }

                      LODWORD(v581) = 1;
                      goto LABEL_1072;
                    }

                    v631 = 0;
                    v632 = 0;
                    v633 = 0;
                    goto LABEL_1072;
                  }
                }

LABEL_885:
                v524 = 1;
                goto LABEL_886;
              }
            }

            v517 = (v513 + 22);
            v518 = v514 + 1;
            do
            {
              *v517 = 0;
              v517 += 12;
              --v518;
            }

            while (v518 > 1);
            goto LABEL_877;
          }

          v479 = v263;
          v480 = 24 * v478 - 16;
          v481 = v478 + 1;
          do
          {
            v482 = v261 + v480;
            v483 = *(v261 + v480);
            if (v483)
            {
              sub_1819439E0(v6, v483);
              v477 = v721;
            }

            v484 = *(v482 + 1);
            if (v484)
            {
              sub_181929C84(v6, v484);
              v477 = v721;
            }

            LODWORD(v478) = *v261 - 1;
            *v261 = v478;
            if (--v481 <= 2)
            {
              break;
            }

            v480 -= 24;
          }

          while ((*(v482 - 7) & 0x40) == 0);
        }

        v263 = v479;
        v476 = v699;
        if (v478 < 1)
        {
          goto LABEL_830;
        }

        goto LABEL_826;
      }

      *(a2 + 1) &= ~1u;
      v265 = sub_1818C83A0(v6, v261, 0);
      v262 = v265;
      *(a2 + 7) = v265;
      if (v265)
      {
        v266 = *v265;
        if (v266 >= 1)
        {
          if (v266 == 1)
          {
            v267 = 0;
          }

          else
          {
            v468 = 0;
            v267 = v266 & 0x7FFFFFFE;
            v469 = v265 + 13;
            do
            {
              *(v469 - 12) = v468 | 1;
              *v469 = v468 + 2;
              v469 += 24;
              v468 += 2;
            }

            while (v267 != v468);
            if (v267 == v266)
            {
              goto LABEL_808;
            }
          }

          v470 = &v265[6 * v267 + 7];
          v471 = v266 - v267;
          v472 = v267 + 1;
          do
          {
            *v470 = v472;
            v470 += 12;
            ++v472;
            --v471;
          }

          while (v471);
        }
      }

LABEL_808:
      *(a2 + 1) |= 8u;
      LOBYTE(v731) = 2;
      goto LABEL_809;
    }

    v143 = &v84[18 * v97];
    if ((*(v143 + 33) & 4) != 0)
    {
      v144 = **(v143 + 9);
    }

    else
    {
      v144 = 0;
    }

    v145 = *(v143 + 3);
    if ((v143[8] & 0x48) != 0)
    {
      v146 = sub_18195A790(*(a2 + 6), v143[9], v143[8] & 0x40);
      v86 = 0uLL;
      if (v146)
      {
        if ((*(v6 + 97) & 0x20) == 0)
        {
          v147 = *(v143 + 32);
          if ((v147 & 8) != 0)
          {
            if ((v143[8] & 0x10) != 0)
            {
              v147 &= ~8u;
              *(v143 + 32) = v147;
            }

            else
            {
              *(v143 + 32) = v147 & 0xC7;
              sub_181964B00(*(a2 + 6), v143[9], 0, 0);
              v86 = 0uLL;
              v147 = *(v143 + 32);
            }
          }

          if ((v147 & 0x40) != 0)
          {
            v148 = v97 + 1;
            v149 = *v84;
            if (v97 + 1 < *v84)
            {
              v150 = v148;
              v151 = &v84[18 * v148 + 8];
              do
              {
                v152 = *v151;
                if ((*v151 & 0x10) != 0)
                {
                  if ((*v151 & 8) != 0)
                  {
                    *v151 = v152 & 0xEF;
                  }

                  else
                  {
                    *v151 = v152 & 0xC7;
                    sub_181964B00(*(a2 + 6), *(v151 + 4), 1, 0);
                    v86 = 0uLL;
                    v149 = *v84;
                  }
                }

                ++v150;
                v151 += 72;
              }

              while (v150 < v149);
            }

            v153 = v149 + 1;
            v154 = &v84[18 * v149 - 10];
            a3 = v710;
            do
            {
              if (--v153 < 1)
              {
                break;
              }

              v155 = *v154;
              *v154 &= ~0x40u;
              v154 -= 18;
            }

            while ((v155 & 0x10) == 0);
          }
        }
      }
    }

    if (!v144)
    {
      goto LABEL_187;
    }

    if (**(v144 + 32) != *(v145 + 54))
    {
      sub_181910730(a1, "expected %d columns for '%s' but got %d");
      goto LABEL_13;
    }

    if ((*(v143 + 33) & 0x200) != 0 && !*(*(v143 + 7) + 18) || (v156 = *(v144 + 4), (v156 & 8) != 0))
    {
LABEL_187:
      v97 = (v97 + 1);
      v87 = *(a2 + 10);
      if (v87)
      {
        goto LABEL_134;
      }

      continue;
    }

    break;
  }

  v157 = *(v144 + 72);
  if (v157)
  {
    if ((*v712 || *v84 >= 2) && (v156 & 0x8002000) == 0 && !*(v144 + 96) && (a2[7] & 8) == 0 && (*(v6 + 98) & 4) == 0)
    {
      sub_18195B158(a1, sub_181964684, v157);
      v86 = 0uLL;
      *(v144 + 72) = 0;
      goto LABEL_225;
    }

    if (!v97 && (a2[6] & 4) != 0 && (*v84 == 1 || (v84[26] & 0x22) != 0))
    {
      LODWORD(v97) = 0;
      goto LABEL_187;
    }
  }

LABEL_225:
  v158 = *a1;
  v159 = *(*a1 + 96);
  if (v159)
  {
    goto LABEL_228;
  }

  v160 = a1[46];
  *v728 = v86;
  *&v728[16] = v86;
  v727 = v86;
  if (*(a2 + 14))
  {
    goto LABEL_228;
  }

  v161 = *(a2 + 5);
  v162 = &v161[18 * v97];
  v163 = **(v162 + 9);
  if (*(v163 + 112))
  {
    goto LABEL_228;
  }

  v164 = *(v163 + 40);
  v165 = *(v163 + 96);
  if (v165)
  {
    if (*(a2 + 12))
    {
      goto LABEL_228;
    }

    if (*(v165 + 24))
    {
      goto LABEL_228;
    }

    v166 = *(a2 + 1);
    if ((v166 & 0x100) != 0)
    {
      goto LABEL_228;
    }
  }

  else
  {
    v166 = *(a2 + 1);
  }

  if (!*v164)
  {
    goto LABEL_228;
  }

  v167 = *(v163 + 4);
  if ((v167 & 1) != 0 || v165 && ((v699 & 8) != 0 || *v161 > 1))
  {
    goto LABEL_228;
  }

  v168 = *v712;
  if (*v712)
  {
    if (*(v163 + 72))
    {
      goto LABEL_228;
    }
  }

  if ((v699 & 8) != 0 && *(v163 + 72))
  {
    goto LABEL_228;
  }

  if (v165)
  {
    if (*(a2 + 6) || *(v163 + 4) & 0x2000 | v166 & 1)
    {
      goto LABEL_228;
    }
  }

  else if ((v167 & 0x2000) != 0)
  {
    goto LABEL_228;
  }

  v660 = v162[9];
  v705 = *(a2 + 5);
  v694 = &v161[18 * v97];
  v169 = *(v162 + 32);
  v665 = v169 & 0x60;
  if ((v169 & 0x60) != 0)
  {
    v170 = v169 & 0x10 | v166 & 1;
    v171 = *v164 <= 1 && v170 == 0;
    a3 = v710;
    v86 = 0uLL;
    if (!v171)
    {
      goto LABEL_228;
    }

    v654 = 1;
  }

  else
  {
    v654 = 0;
  }

  a3 = v710;
  v86 = 0uLL;
  if (v97 >= 1 && (*(v164 + 32) & 0x40) != 0)
  {
    goto LABEL_228;
  }

  if (!*(v163 + 80))
  {
    goto LABEL_290;
  }

  a3 = v710;
  if ((v699 & 8) != 0 || *(v163 + 72) || v665 | v166 & 1)
  {
    goto LABEL_228;
  }

  v172 = **(v162 + 9);
  do
  {
    a3 = v710;
    v86 = 0uLL;
    if ((v172[4] & 9) != 0)
    {
      goto LABEL_228;
    }

    v173 = *(v172 + 10);
    if (v173)
    {
      if (*v172 != 136)
      {
        goto LABEL_228;
      }
    }

    v174 = *(v172 + 5);
    if (*v174 < 1 || *(v172 + 14) || v97 >= 1 && (*(v174 + 32) & 0x40) != 0)
    {
      goto LABEL_228;
    }

    v172 = *(v172 + 10);
  }

  while (v173);
  if (v168)
  {
    v175 = *v168;
    if (v175 >= 1)
    {
      v176 = (v168 + 7);
      do
      {
        v177 = *v176;
        v176 += 12;
        a3 = v710;
        v86 = 0uLL;
        if (!v177)
        {
          goto LABEL_228;
        }

        --v175;
      }

      while (v175);
    }
  }

  a3 = v710;
  if ((v166 & 0x2000) != 0)
  {
    goto LABEL_228;
  }

  v178 = sub_181968ED4(v163);
  v86 = 0uLL;
  if (v178)
  {
    goto LABEL_228;
  }

  if (*v705 < 2)
  {
    goto LABEL_290;
  }

  a3 = v710;
  if ((v159 & 0x800000) != 0 || *(a1 + 31) > 500)
  {
LABEL_228:
    if (*(v6 + 103))
    {
      goto LABEL_13;
    }

    v84 = *(a2 + 5);
    if (*a3 >= 9u)
    {
      *&v730[0] = *v712;
    }

    goto LABEL_187;
  }

  v686 = sub_18190C56C(v158, 4 * *(a1 + 14) + 4, 0x100004052888210);
  if (v686)
  {
    *v686 = *(a1 + 14);
  }

  else
  {
LABEL_290:
    v686 = 0;
  }

  a1[46] = *(v694 + 1);
  sub_18195CEF8(a1, 21, 0, 0, 0);
  v650 = 0;
  a1[46] = v160;
  if ((*(v694 + 33) & 4) != 0)
  {
    v179 = *(v694 + 9);
    v650 = *v179;
    sub_181929C84(v158, v179);
    *(v694 + 9) = 0;
    *(v694 + 33) &= ~4u;
  }

  v180 = *(v694 + 1);
  if (v180)
  {
    sub_181929C84(v158, v180);
  }

  v181 = *(v694 + 2);
  if (v181)
  {
    sub_181929C84(v158, v181);
  }

  v182 = v694;
  *(v694 + 1) = 0;
  *(v694 + 2) = 0;
  v183 = *(v163 + 80);
  if (v183)
  {
    v184 = *(a2 + 10);
    do
    {
      v186 = *(a2 + 9);
      v187 = *(a2 + 12);
      v188 = *(v182 + 3);
      *(v182 + 3) = 0;
      *(a2 + 12) = 0;
      *v712 = 0;
      *(a2 + 10) = 0;
      v185 = sub_1818CB220(v158, a2, 0);
      v182 = v694;
      *(a2 + 12) = v187;
      *(a2 + 9) = v186;
      *a2 = -120;
      *(v694 + 3) = v188;
      if (v185)
      {
        v189 = *(a1 + 31) + 1;
        *(a1 + 31) = v189;
        *(v185 + 16) = v189;
        if (v686 && !*(v158 + 103))
        {
          v190 = v185;
          sub_181968F78(a1, v185, v97, v686);
          v185 = v190;
        }

        *(v185 + 80) = v184;
        if (v184)
        {
          *(v184 + 88) = v185;
        }

        *(v185 + 88) = a2;
        v184 = v185;
        v182 = v694;
      }

      else
      {
        v185 = v184;
      }

      *(a2 + 10) = v185;
      v183 = *(v183 + 80);
    }

    while (v183);
  }

  if (v686)
  {
    sub_181929C84(v158, v686);
  }

  if (*(v158 + 103))
  {
    sub_181960508(a1, (v694 + 2), v650, 0);
    goto LABEL_364;
  }

  v191 = *(v694 + 3);
  if (v191)
  {
    if (*(v191 + 44) == 1)
    {
      if (a1[19])
      {
        v192 = a1[19];
      }

      else
      {
        v192 = a1;
      }

      sub_18195B158(v192, sub_181968FEC, v191);
    }

    else
    {
      --*(v191 + 44);
    }

    *(v694 + 3) = 0;
  }

  __sa = (72 * v97);
  v193 = a2;
  v194 = v650;
  while (2)
  {
    v195 = v705[18 * v97 + 8];
    v196 = v194[5];
    v674 = v194;
    v679 = *v196;
    v705 = *(v193 + 5);
    v687 = v193;
    if (v193 == a2)
    {
      v197 = *(v694 + 32);
    }

    else
    {
      v197 = 0;
    }

    v198 = v195 & 0x40;
    if (v679 < 2)
    {
      v663 = v196[9];
      if (v679 == 1)
      {
        goto LABEL_329;
      }

      v207 = 0;
    }

    else
    {
      v705 = sub_1818A95FC(a1, v705, v679 - 1, v97 + 1);
      if (!v705)
      {
        break;
      }

      *(v193 + 5) = v705;
      v663 = v196[9];
LABEL_329:
      v199 = v196 + 2;
      v200 = &__sa[v705 + 32];
      v201 = v679;
      v202 = 0uLL;
      do
      {
        if ((*(v200 + 1) & 0x800) != 0)
        {
          sub_181943C90(v158, *(v200 + 32));
          v202 = 0uLL;
        }

        v203 = (v200 - 24);
        v204 = *(v199 + 1);
        v205 = *(v199 + 2);
        v206 = *(v199 + 3);
        *(v200 + 40) = *(v199 + 8);
        *(v200 + 8) = v205;
        *(v200 + 24) = v206;
        v203[1] = v204;
        *v203 = *v199;
        *v200 |= v198;
        v200 += 72;
        *(v199 + 8) = 0;
        *(v199 + 2) = v202;
        *(v199 + 3) = v202;
        *v199 = v202;
        *(v199 + 1) = v202;
        v199 += 18;
        --v201;
      }

      while (v201);
      v207 = 1;
    }

    LOBYTE(v705[18 * v97 + 8]) = v197 | v198 | v705[18 * v97 + 8] & 0x40;
    v208 = v674;
    v209 = v674[9];
    if (v209 && (*(v687 + 6) & 0x40) == 0)
    {
      v210 = *v209;
      if (v210 >= 1)
      {
        if (v210 == 1)
        {
          v211 = 0;
          goto LABEL_343;
        }

        v211 = v210 & 0x7FFFFFFE;
        v212 = v209 + 13;
        v213 = v211;
        do
        {
          *(v212 - 12) = 0;
          *v212 = 0;
          v212 += 24;
          v213 -= 2;
        }

        while (v213);
        if (v211 != v210)
        {
LABEL_343:
          v214 = v210 - v211;
          v215 = &v209[6 * v211 + 7];
          do
          {
            *v215 = 0;
            v215 += 6;
            --v214;
          }

          while (v214);
        }
      }

      *(v687 + 72) = v209;
      v208 = v674;
      v674[9] = 0;
    }

    v216 = v208[6];
    v208[6] = 0;
    if (v665)
    {
      sub_181961AFC(v216, v663, 1);
    }

    if (v216)
    {
      v217 = *(v687 + 48);
      if (v217)
      {
        v216 = sub_18194F098(a1, 44, v216, v217);
      }

      *(v687 + 48) = v216;
    }

    if (!*(v158 + 103))
    {
      *&v735 = 0;
      *&v733 = a1;
      *(&v733 + 1) = __PAIR64__(v663, v660);
      v734 = v654;
      v218 = v674;
      *(&v734 + 1) = v674[4];
      do
      {
        v219 = v218;
        v218 = v218[10];
      }

      while (v218);
      *&v735 = v219[4];
      sub_181969010(&v733, v687, 0);
    }

    *(v687 + 4) |= *(v674 + 1) & 0x100;
    v220 = v674[12];
    if (v220)
    {
      *(v687 + 96) = v220;
      v674[12] = 0;
    }

    v221 = v679;
    if (v207)
    {
      v222 = &__sa[v705 + 8];
      do
      {
        sub_1819691D0(v687, v222);
        v222 += 72;
        --v221;
      }

      while (v221);
    }

    v193 = *(v687 + 80);
    v194 = v674[10];
    if (v193)
    {
      continue;
    }

    break;
  }

  memset(&v728[8], 0, 24);
  *&v727 = a1;
  *(&v727 + 1) = sub_181968B20;
  *v728 = sub_181961BBC;
  sub_1818AEE70(&v727, v650);
  if (v650)
  {
    sub_1818BB408(v158, v650, 1, v223);
  }

LABEL_364:
  if (!*(a1 + 13))
  {
    LODWORD(v97) = -1;
    a3 = v710;
    v86 = 0uLL;
    goto LABEL_228;
  }

LABEL_13:
  result = 1;
LABEL_14:
  if (v729)
  {
    v14 = result;
    sub_18194E5B8(v6, v729);
    result = v14;
  }

LABEL_16:
  v15 = *(a1 + 78);
  if (v15)
  {
    v16 = a1[2];
    if (*(*v16 + 103))
    {
      v17 = &byte_1EA831A58;
    }

    else
    {
      v17 = (v16[17] + 40 * v15);
    }

    v15 = *(v17 + 2);
  }

  *(a1 + 78) = v15;
  return result;
}