unsigned __int8 *sub_13592D0(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  v3 = *(a1 + 40);
  if ((v3 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v6 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    result = sub_16E4E44(*(a1 + 64));
    if ((v3 & 8) == 0)
    {
LABEL_6:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v7 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  result = sub_16E5B70(*(a1 + 72));
  if ((v3 & 0x10) != 0)
  {
LABEL_7:
    result = sub_1869C8C(*(a1 + 80));
  }

LABEL_8:
  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 80) = 0;
  *(v4 + 32) = 0;
  if (v5)
  {

    return sub_1957EA8(v4);
  }

  return result;
}

uint64_t sub_13593CC(uint64_t a1)
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

uint64_t sub_13593F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_17545D4(v4);
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
      result = sub_1758FF4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      result = sub_136A728(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      result = sub_1421590(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      result = sub_136E618(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 160) + 8);
    do
    {
      v19 = *v18++;
      result = sub_136D0E4(v19);
      --v17;
    }

    while (v17);
    *(v1 + 152) = 0;
  }

  v20 = *(v1 + 16);
  if ((v20 & 0x1F) == 0)
  {
    goto LABEL_32;
  }

  if ((v20 & 1) == 0)
  {
    if ((v20 & 2) == 0)
    {
      goto LABEL_28;
    }

LABEL_42:
    v24 = *(v1 + 176) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v24 + 23) < 0)
    {
      **v24 = 0;
      *(v24 + 8) = 0;
      if ((v20 & 4) != 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v24 = 0;
      *(v24 + 23) = 0;
      if ((v20 & 4) != 0)
      {
        goto LABEL_46;
      }
    }

LABEL_29:
    if ((v20 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_50;
  }

  v23 = *(v1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v23 + 23) < 0)
  {
    **v23 = 0;
    *(v23 + 8) = 0;
    if ((v20 & 2) != 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    *v23 = 0;
    *(v23 + 23) = 0;
    if ((v20 & 2) != 0)
    {
      goto LABEL_42;
    }
  }

LABEL_28:
  if ((v20 & 4) == 0)
  {
    goto LABEL_29;
  }

LABEL_46:
  v25 = *(v1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v25 + 23) < 0)
  {
    **v25 = 0;
    *(v25 + 8) = 0;
    if ((v20 & 8) != 0)
    {
      goto LABEL_50;
    }

LABEL_30:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  *v25 = 0;
  *(v25 + 23) = 0;
  if ((v20 & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_50:
  result = sub_136B92C(*(v1 + 192));
  if ((v20 & 0x10) != 0)
  {
LABEL_31:
    result = sub_136B92C(*(v1 + 200));
  }

LABEL_32:
  if ((v20 & 0xE0) != 0)
  {
    *(v1 + 208) = 0;
    *(v1 + 216) = 0;
  }

  v22 = *(v1 + 8);
  v21 = v1 + 8;
  *(v21 + 216) = 0;
  *(v21 + 8) = 0;
  if (v22)
  {

    return sub_1957EA8(v21);
  }

  return result;
}

uint64_t sub_1359614(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v5 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_22;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  *v4 = 0;
  *(v4 + 23) = 0;
  if ((v1 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v7 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v7)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1359700(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_17DB104(*(result + 24));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_1957EA8(v2);
  }

  return result;
}

uint64_t sub_135975C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 18) = 0;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1359778(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v81 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v81, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v81 + 1);
    v8 = **v81;
    if (**v81 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v81, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v81 + 2);
      }
    }

    *v81 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_120;
        }

        v11 = v7 - 1;
        while (1)
        {
          v12 = v11 + 1;
          *v81 = v11 + 1;
          v13 = *(a1 + 40);
          if (v13 && (v14 = *(a1 + 32), v14 < *v13))
          {
            *(a1 + 32) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            v16 = sub_1379EAC(*(a1 + 24));
            v15 = sub_19593CC(a1 + 24, v16);
            v12 = *v81;
          }

          v11 = sub_2200470(a3, v15, v12);
          *v81 = v11;
          if (!v11)
          {
            goto LABEL_138;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_128;
          }
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 2u;
        v52 = *(a1 + 128);
        if (!v52)
        {
          v53 = *(a1 + 8);
          v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
          if (v53)
          {
            v54 = *v54;
          }

          v52 = sub_137A034(v54);
          *(a1 + 128) = v52;
          v7 = *v81;
        }

        v26 = sub_2200500(a3, v52, v7);
        goto LABEL_127;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 4u;
        v39 = *(a1 + 136);
        if (!v39)
        {
          v40 = *(a1 + 8);
          v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          if (v40)
          {
            v41 = *v41;
          }

          v39 = sub_1379F3C(v41);
          *(a1 + 136) = v39;
          v7 = *v81;
        }

        v26 = sub_2200590(a3, v39, v7);
        goto LABEL_127;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 8u;
        v45 = *(a1 + 144);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          sub_137A0E4(v47);
          v45 = v48;
          *(a1 + 144) = v48;
          v7 = *v81;
        }

        v26 = sub_2200620(a3, v45, v7);
        goto LABEL_127;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x10u;
        v27 = *(a1 + 152);
        if (!v27)
        {
          v28 = *(a1 + 8);
          v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
          if (v28)
          {
            v29 = *v29;
          }

          v27 = sub_1379E50(v29);
          *(a1 + 152) = v27;
          v7 = *v81;
        }

        v26 = sub_22006B0(a3, v27, v7);
        goto LABEL_127;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 1u;
        v55 = *(a1 + 8);
        v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
        if (v55)
        {
          v56 = *v56;
        }

        v57 = sub_194DB04((a1 + 120), v56);
        v26 = sub_1958890(v57, *v81, a3);
        goto LABEL_127;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_120;
        }

        v61 = v7 - 1;
        while (1)
        {
          v62 = (v61 + 1);
          *v81 = v61 + 1;
          v63 = *(a1 + 64);
          if (v63 && (v64 = *(a1 + 56), v64 < *v63))
          {
            *(a1 + 56) = v64 + 1;
            v65 = *&v63[2 * v64 + 2];
          }

          else
          {
            v66 = *(a1 + 48);
            if (!v66)
            {
              operator new();
            }

            *v68 = v67;
            v68[1] = sub_195A650;
            *v67 = 0;
            v67[1] = 0;
            v67[2] = 0;
            v65 = sub_19593CC(a1 + 48, v67);
            v62 = *v81;
          }

          v61 = sub_1958890(v65, v62, a3);
          *v81 = v61;
          if (!v61)
          {
            goto LABEL_138;
          }

          if (*a3 <= v61 || *v61 != 58)
          {
            goto LABEL_128;
          }
        }

      case 8u:
        if (v8 != 66)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x20u;
        v49 = *(a1 + 160);
        if (!v49)
        {
          v50 = *(a1 + 8);
          v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
          if (v50)
          {
            v51 = *v51;
          }

          v49 = sub_137A6D8(v51);
          *(a1 + 160) = v49;
          v7 = *v81;
        }

        v26 = sub_2200740(a3, v49, v7);
        goto LABEL_127;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x40u;
        v72 = *(a1 + 168);
        if (!v72)
        {
          v73 = *(a1 + 8);
          v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL);
          if (v73)
          {
            v74 = *v74;
          }

          sub_137A440(v74);
          v72 = v75;
          *(a1 + 168) = v75;
          v7 = *v81;
        }

        v26 = sub_22007D0(a3, v72, v7);
        goto LABEL_127;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_120;
        }

        v33 = v7 - 1;
        while (1)
        {
          v34 = v33 + 1;
          *v81 = v33 + 1;
          v35 = *(a1 + 88);
          if (v35 && (v36 = *(a1 + 80), v36 < *v35))
          {
            *(a1 + 80) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            sub_137949C(*(a1 + 72));
            v37 = sub_19593CC(a1 + 72, v38);
            v34 = *v81;
          }

          v33 = sub_2200860(a3, v37, v34);
          *v81 = v33;
          if (!v33)
          {
            goto LABEL_138;
          }

          if (*a3 <= v33 || *v33 != 82)
          {
            goto LABEL_128;
          }
        }

      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x80u;
        v69 = *(a1 + 176);
        if (!v69)
        {
          v70 = *(a1 + 8);
          v71 = (v70 & 0xFFFFFFFFFFFFFFFCLL);
          if (v70)
          {
            v71 = *v71;
          }

          v69 = sub_137967C(v71);
          *(a1 + 176) = v69;
          v7 = *v81;
        }

        v26 = sub_22008F0(a3, v69, v7);
        goto LABEL_127;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x100u;
        v23 = *(a1 + 184);
        if (!v23)
        {
          v24 = *(a1 + 8);
          v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
          if (v24)
          {
            v25 = *v25;
          }

          v23 = sub_1379704(v25);
          *(a1 + 184) = v23;
          v7 = *v81;
        }

        v26 = sub_2200980(a3, v23, v7);
        goto LABEL_127;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_120;
        }

        v31 = v7 + 1;
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          *v81 = sub_19587DC(v7, v30);
          if (!*v81)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v31 = v7 + 2;
LABEL_44:
          *v81 = v31;
        }

        if (v30 > 3)
        {
          sub_13B6734();
        }

        else
        {
          *(a1 + 16) |= 0x400u;
          *(a1 + 200) = v30;
        }

        goto LABEL_128;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_120;
        }

        v5 |= 0x800u;
        v59 = v7 + 1;
        v58 = *v7;
        if ((v58 & 0x8000000000000000) == 0)
        {
          goto LABEL_95;
        }

        v60 = *v59;
        v58 = (v60 << 7) + v58 - 128;
        if (v60 < 0)
        {
          v79 = sub_19587DC(v7, v58);
          *v81 = v79;
          *(a1 + 204) = v80 != 0;
          if (!v79)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v59 = v7 + 2;
LABEL_95:
          *v81 = v59;
          *(a1 + 204) = v58 != 0;
        }

        goto LABEL_128;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_120;
        }

        v17 = v7 - 1;
        while (1)
        {
          v18 = v17 + 1;
          *v81 = v17 + 1;
          v19 = *(a1 + 112);
          if (v19 && (v20 = *(a1 + 104), v20 < *v19))
          {
            *(a1 + 104) = v20 + 1;
            v21 = *&v19[2 * v20 + 2];
          }

          else
          {
            v22 = sub_1379FB8(*(a1 + 96));
            v21 = sub_19593CC(a1 + 96, v22);
            v18 = *v81;
          }

          v17 = sub_2200A10(a3, v21, v18);
          *v81 = v17;
          if (!v17)
          {
            goto LABEL_138;
          }

          if (*a3 <= v17 || *v17 != 122)
          {
            goto LABEL_128;
          }
        }

      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x200u;
        v42 = *(a1 + 192);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_13798CC(v44);
          *(a1 + 192) = v42;
          v7 = *v81;
        }

        v26 = sub_2200AA0(a3, v42, v7);
        goto LABEL_127;
      default:
LABEL_120:
        if (v8)
        {
          v76 = (v8 & 7) == 4;
        }

        else
        {
          v76 = 1;
        }

        if (!v76)
        {
          v77 = *(a1 + 8);
          if (v77)
          {
            v78 = (v77 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v78 = sub_11F1920((a1 + 8));
            v7 = *v81;
          }

          v26 = sub_1952690(v8, v78, v7, a3);
LABEL_127:
          *v81 = v26;
          if (!v26)
          {
            goto LABEL_138;
          }

LABEL_128:
          if (sub_195ADC0(a3, v81, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_138:
          *v81 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v81;
    }
  }
}

char *sub_1359F80(uint64_t a1, char *__dst, unint64_t *a3)
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

      __dst = sub_1365E70(v8, v10, a3);
    }
  }

  v11 = *(a1 + 16);
  if ((v11 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v17 = *(a1 + 128);
    *__dst = 18;
    v18 = *(v17 + 20);
    __dst[1] = v18;
    if (v18 > 0x7F)
    {
      v19 = sub_19575D0(v18, __dst + 1);
    }

    else
    {
      v19 = __dst + 2;
    }

    __dst = sub_136730C(v17, v19, a3);
    if ((v11 & 4) == 0)
    {
LABEL_11:
      if ((v11 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_60;
    }
  }

  else if ((v11 & 4) == 0)
  {
    goto LABEL_11;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v23 = *(a1 + 136);
  *__dst = 26;
  v24 = *(v23 + 20);
  __dst[1] = v24;
  if (v24 > 0x7F)
  {
    v25 = sub_19575D0(v24, __dst + 1);
  }

  else
  {
    v25 = __dst + 2;
  }

  __dst = sub_136659C(v23, v25, a3);
  if ((v11 & 8) == 0)
  {
LABEL_12:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_72;
  }

LABEL_60:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v35 = *(a1 + 144);
  *__dst = 34;
  v36 = *(v35 + 20);
  __dst[1] = v36;
  if (v36 > 0x7F)
  {
    v37 = sub_19575D0(v36, __dst + 1);
  }

  else
  {
    v37 = __dst + 2;
  }

  __dst = sub_1367DB0(v35, v37, a3);
  if ((v11 & 0x10) == 0)
  {
LABEL_13:
    if ((v11 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_72:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v41 = *(a1 + 152);
  *__dst = 42;
  v42 = *(v41 + 44);
  __dst[1] = v42;
  if (v42 > 0x7F)
  {
    v43 = sub_19575D0(v42, __dst + 1);
  }

  else
  {
    v43 = __dst + 2;
  }

  __dst = sub_1365584(v41, v43, a3);
  if (v11)
  {
LABEL_14:
    __dst = sub_128AEEC(a3, 6, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

LABEL_15:
  v12 = *(a1 + 56);
  if (v12 >= 1)
  {
    v13 = 8;
    do
    {
      __dst = sub_1355F54(a3, 7, *(*(a1 + 64) + v13), __dst);
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  if ((v11 & 0x20) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v14 = *(a1 + 160);
    *__dst = 66;
    v15 = *(v14 + 20);
    __dst[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, __dst + 1);
    }

    else
    {
      v16 = __dst + 2;
    }

    __dst = sub_136F000(v14, v16, a3);
  }

  if ((v11 & 0x40) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v20 = *(a1 + 168);
    *__dst = 74;
    v21 = *(v20 + 20);
    __dst[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, __dst + 1);
    }

    else
    {
      v22 = __dst + 2;
    }

    __dst = sub_136C1A4(v20, v22, a3);
  }

  v26 = *(a1 + 80);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v28 = *(*(a1 + 88) + 8 * j + 8);
      *__dst = 82;
      v29 = *(v28 + 20);
      __dst[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, __dst + 1);
      }

      else
      {
        v30 = __dst + 2;
      }

      __dst = sub_1358990(v28, v30, a3);
    }
  }

  if ((v11 & 0x80) == 0)
  {
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_52;
    }

LABEL_66:
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v38 = *(a1 + 184);
    *__dst = 98;
    v39 = *(v38 + 20);
    __dst[1] = v39;
    if (v39 > 0x7F)
    {
      v40 = sub_19575D0(v39, __dst + 1);
    }

    else
    {
      v40 = __dst + 2;
    }

    __dst = sub_135CB04(v38, v40, a3);
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_78;
  }

  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v32 = *(a1 + 176);
  *__dst = 90;
  v33 = *(v32 + 20);
  __dst[1] = v33;
  if (v33 > 0x7F)
  {
    v34 = sub_19575D0(v33, __dst + 1);
  }

  else
  {
    v34 = __dst + 2;
  }

  __dst = sub_135C61C(v32, v34, a3);
  if ((v11 & 0x100) != 0)
  {
    goto LABEL_66;
  }

LABEL_52:
  if ((v11 & 0x400) == 0)
  {
LABEL_53:
    v31 = __dst;
    goto LABEL_88;
  }

LABEL_78:
  if (*a3 <= __dst)
  {
    __dst = sub_225EB68(a3, __dst);
  }

  v44 = *(a1 + 200);
  *__dst = 104;
  __dst[1] = v44;
  if (v44 > 0x7F)
  {
    __dst[1] = v44 | 0x80;
    v45 = v44 >> 7;
    __dst[2] = v44 >> 7;
    v31 = __dst + 3;
    if (v44 >= 0x4000)
    {
      LOBYTE(v46) = __dst[2];
      do
      {
        *(v31 - 1) = v46 | 0x80;
        v46 = v45 >> 7;
        *v31++ = v45 >> 7;
        v47 = v45 >> 14;
        v45 >>= 7;
      }

      while (v47);
    }
  }

  else
  {
    v31 = __dst + 2;
  }

LABEL_88:
  if ((v11 & 0x800) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v48 = *(a1 + 204);
    *v31 = 112;
    v31[1] = v48;
    v31 += 2;
  }

  v49 = *(a1 + 104);
  if (v49)
  {
    for (k = 0; k != v49; ++k)
    {
      if (*a3 <= v31)
      {
        v31 = sub_225EB68(a3, v31);
      }

      v51 = *(*(a1 + 112) + 8 * k + 8);
      *v31 = 122;
      v52 = *(v51 + 20);
      v31[1] = v52;
      if (v52 > 0x7F)
      {
        v53 = sub_19575D0(v52, v31 + 1);
      }

      else
      {
        v53 = v31 + 2;
      }

      v31 = sub_1366B4C(v51, v53, a3);
    }
  }

  if ((v11 & 0x200) != 0)
  {
    if (*a3 <= v31)
    {
      v31 = sub_225EB68(a3, v31);
    }

    v54 = *(a1 + 192);
    *v31 = 386;
    v55 = *(v54 + 20);
    v31[2] = v55;
    if (v55 > 0x7F)
    {
      v56 = sub_19575D0(v55, v31 + 2);
    }

    else
    {
      v56 = v31 + 3;
    }

    v31 = sub_1360D94(v54, v56, a3);
  }

  v57 = *(a1 + 8);
  if ((v57 & 1) == 0)
  {
    return v31;
  }

  v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
  v60 = *(v59 + 31);
  if (v60 < 0)
  {
    v61 = *(v59 + 8);
    v60 = *(v59 + 16);
  }

  else
  {
    v61 = (v59 + 8);
  }

  if ((*a3 - v31) >= v60)
  {
    v62 = v60;
    memcpy(v31, v61, v60);
    v31 += v62;
    return v31;
  }

  return sub_1957130(a3, v61, v60, v31);
}

uint64_t sub_135A67C(uint64_t a1)
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
      v7 = sub_1366040(v6);
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
  if (v8 >= 1)
  {
    v10 = (*(a1 + 64) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(a1 + 80);
  v15 = v9 + v14;
  v16 = *(a1 + 88);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = sub_1358B84(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 104);
  v22 = v15 + v21;
  v23 = *(a1 + 112);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = sub_1366CE4(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

  if (v28)
  {
    v35 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v36 = *(v35 + 23);
    v37 = *(v35 + 8);
    if ((v36 & 0x80u) == 0)
    {
      v37 = v36;
    }

    v22 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 2) == 0)
    {
LABEL_29:
      if ((v28 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_51;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_29;
  }

  v38 = sub_136761C(*(a1 + 128));
  v22 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 4) == 0)
  {
LABEL_30:
    if ((v28 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_52;
  }

LABEL_51:
  v39 = sub_1366718(*(a1 + 136));
  v22 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 8) == 0)
  {
LABEL_31:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_53;
  }

LABEL_52:
  v40 = sub_1368138(*(a1 + 144));
  v22 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x10) == 0)
  {
LABEL_32:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_54:
    v42 = sub_136F238(*(a1 + 160));
    v22 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 0x40) == 0)
    {
LABEL_34:
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_55;
  }

LABEL_53:
  v41 = sub_1365818(*(a1 + 152));
  v22 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_33:
  if ((v28 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_55:
  v43 = sub_136C8BC(*(a1 + 168));
  v22 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x80) != 0)
  {
LABEL_35:
    v29 = sub_135C754(*(a1 + 176));
    v22 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_36:
  if ((v28 & 0xF00) == 0)
  {
    goto LABEL_45;
  }

  if ((v28 & 0x100) == 0)
  {
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_39;
    }

LABEL_58:
    v45 = sub_1360EF0(*(a1 + 192));
    v22 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v28 & 0x400) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

  v44 = sub_135CC10(*(a1 + 184));
  v22 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x200) != 0)
  {
    goto LABEL_58;
  }

LABEL_39:
  if ((v28 & 0x400) != 0)
  {
LABEL_40:
    v30 = *(a1 + 200);
    v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v30 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 11;
    }

    v22 += v32;
  }

LABEL_44:
  v22 += (v28 >> 10) & 2;
LABEL_45:
  v33 = *(a1 + 8);
  if (v33)
  {
    v46 = v33 & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *((v33 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v47 < 0)
    {
      v47 = *(v46 + 16);
    }

    v22 += v47;
  }

  *(a1 + 20) = v22;
  return v22;
}

void sub_135AA90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B4424((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 0x3F) != 0)
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
          goto LABEL_8;
        }

        goto LABEL_23;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a2 + 56);
    *(a1 + 16) |= 2u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v9 & 4) == 0)
    {
LABEL_8:
      if ((v9 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_23:
    *(a1 + 16) |= 4u;
    v17 = *(a1 + 64);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      sub_16F58FC(v19);
      *(a1 + 64) = v17;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = &off_277E650;
    }

    sub_16E645C(v17, v20);
    if ((v9 & 8) == 0)
    {
LABEL_9:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(a1 + 16) |= 8u;
    v21 = *(a1 + 72);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_16F5828(v23);
      *(a1 + 72) = v21;
    }

    if (*(a2 + 72))
    {
      v24 = *(a2 + 72);
    }

    else
    {
      v24 = &off_277E5E8;
    }

    sub_16E527C(v21, v24);
    if ((v9 & 0x10) == 0)
    {
LABEL_10:
      if ((v9 & 0x20) == 0)
      {
LABEL_12:
        *(a1 + 16) |= v9;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_12;
    }

LABEL_39:
    *(a1 + 80) = *(a2 + 80);
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135AC94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0x7F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_26;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 16) |= 2u;
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = *(a1 + 8);
      v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
      if (v10)
      {
        v11 = *v11;
      }

      sub_1551D64(v11);
      *(a1 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = &off_27769A8;
    }

    sub_1542CDC(v9, v12);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_34;
    }

LABEL_26:
    *(a1 + 16) |= 4u;
    v13 = *(a1 + 40);
    if (!v13)
    {
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_155218C(v15);
      *(a1 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v16 = *(a2 + 40);
    }

    else
    {
      v16 = &off_2776D50;
    }

    sub_14D3AD8(v13, v16);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(a1 + 16) |= 8u;
    v17 = *(a1 + 48);
    if (!v17)
    {
      v18 = *(a1 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_1906254(v19);
      *(a1 + 48) = v17;
    }

    if (*(a2 + 48))
    {
      v20 = *(a2 + 48);
    }

    else
    {
      v20 = &off_278AFA0;
    }

    sub_18FBB2C(v17, v20);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(a1 + 16) |= 0x10u;
    v21 = *(a1 + 56);
    if (!v21)
    {
      v22 = *(a1 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_190630C(v23);
      *(a1 + 56) = v21;
    }

    if (*(a2 + 56))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = &off_278B0B0;
    }

    sub_18FED20(v21, v24);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
LABEL_10:
        *(a1 + 16) |= v4;
        goto LABEL_11;
      }

LABEL_9:
      *(a1 + 68) = *(a2 + 68);
      goto LABEL_10;
    }

LABEL_50:
    *(a1 + 64) = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135AEA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 0x3F) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 48), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
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

    v9 = *(a2 + 56);
    *(a1 + 40) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 56), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
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
    *(a1 + 40) |= 4u;
    v12 = *(a1 + 64);
    if (!v12)
    {
      v13 = *(a1 + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        v14 = *v14;
      }

      v12 = sub_16F5828(v14);
      *(a1 + 64) = v12;
    }

    if (*(a2 + 64))
    {
      v15 = *(a2 + 64);
    }

    else
    {
      v15 = &off_277E5E8;
    }

    sub_16E527C(v12, v15);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(a1 + 40) |= 8u;
    v16 = *(a1 + 72);
    if (!v16)
    {
      v17 = *(a1 + 8);
      v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
      if (v17)
      {
        v18 = *v18;
      }

      sub_16F58FC(v18);
      *(a1 + 72) = v16;
    }

    if (*(a2 + 72))
    {
      v19 = *(a2 + 72);
    }

    else
    {
      v19 = &off_277E650;
    }

    sub_16E645C(v16, v19);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        *(a1 + 40) |= v4;
        goto LABEL_10;
      }

LABEL_8:
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_9;
    }

LABEL_36:
    *(a1 + 40) |= 0x10u;
    v20 = *(a1 + 80);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_18FF354(v22);
      *(a1 + 80) = v20;
    }

    if (*(a2 + 80))
    {
      v23 = *(a2 + 80);
    }

    else
    {
      v23 = &off_2787BC0;
    }

    sub_186A25C(v20, v23);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  sub_225EA0C(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135B098(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B3FEC((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_13B4078((a1 + 48), v11, (v10 + 8), v9, **(a1 + 64) - *(a1 + 56), v12);
    v13 = *(a1 + 56) + v9;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_13B45A8((a1 + 72), v17, (v16 + 8), v15, **(a1 + 88) - *(a1 + 80));
    v18 = *(a1 + 80) + v15;
    *(a1 + 80) = v18;
    v19 = *(a1 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_13B4634((a1 + 96), v22, (v21 + 8), v20, **(a1 + 112) - *(a1 + 104), v23);
    v24 = *(a1 + 104) + v20;
    *(a1 + 104) = v24;
    v25 = *(a1 + 112);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 128);
  if (v26)
  {
    v27 = *(a2 + 136);
    v28 = sub_19592E8(a1 + 120, *(a2 + 128));
    sub_13B46C0((a1 + 120), v28, (v27 + 8), v26, **(a1 + 136) - *(a1 + 128));
    v29 = *(a1 + 128) + v26;
    *(a1 + 128) = v29;
    v30 = *(a1 + 136);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 152);
  if (v31)
  {
    v32 = *(a2 + 160);
    v33 = sub_19592E8(a1 + 144, *(a2 + 152));
    sub_13B474C((a1 + 144), v33, (v32 + 8), v31, **(a1 + 160) - *(a1 + 152));
    v34 = *(a1 + 152) + v31;
    *(a1 + 152) = v34;
    v35 = *(a1 + 160);
    if (*v35 < v34)
    {
      *v35 = v34;
    }
  }

  v36 = *(a2 + 16);
  if (v36)
  {
    if (v36)
    {
      v37 = *(a2 + 168);
      *(a1 + 16) |= 1u;
      v38 = *(a1 + 8);
      v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      if (v38)
      {
        v39 = *v39;
      }

      sub_194EA1C((a1 + 168), (v37 & 0xFFFFFFFFFFFFFFFELL), v39);
      if ((v36 & 2) == 0)
      {
LABEL_22:
        if ((v36 & 4) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }
    }

    else if ((v36 & 2) == 0)
    {
      goto LABEL_22;
    }

    v40 = *(a2 + 176);
    *(a1 + 16) |= 2u;
    v41 = *(a1 + 8);
    v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL);
    if (v41)
    {
      v42 = *v42;
    }

    sub_194EA1C((a1 + 176), (v40 & 0xFFFFFFFFFFFFFFFELL), v42);
    if ((v36 & 4) == 0)
    {
LABEL_33:
      if ((v36 & 8) != 0)
      {
        *(a1 + 16) |= 8u;
        v48 = *(a1 + 192);
        if (!v48)
        {
          v49 = *(a1 + 8);
          v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v50 = *v50;
          }

          v48 = sub_137A5B0(v50);
          *(a1 + 192) = v48;
        }

        if (*(a2 + 192))
        {
          v51 = *(a2 + 192);
        }

        else
        {
          v51 = &off_276CB50;
        }

        sub_136CCE8(v48, v51);
        if ((v36 & 0x10) == 0)
        {
LABEL_35:
          if ((v36 & 0x20) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_62;
        }
      }

      else if ((v36 & 0x10) == 0)
      {
        goto LABEL_35;
      }

      *(a1 + 16) |= 0x10u;
      v52 = *(a1 + 200);
      if (!v52)
      {
        v53 = *(a1 + 8);
        v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL);
        if (v53)
        {
          v54 = *v54;
        }

        v52 = sub_137A5B0(v54);
        *(a1 + 200) = v52;
      }

      if (*(a2 + 200))
      {
        v55 = *(a2 + 200);
      }

      else
      {
        v55 = &off_276CB50;
      }

      sub_136CCE8(v52, v55);
      if ((v36 & 0x20) == 0)
      {
LABEL_36:
        if ((v36 & 0x40) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_63;
      }

LABEL_62:
      *(a1 + 208) = *(a2 + 208);
      if ((v36 & 0x40) == 0)
      {
LABEL_37:
        if ((v36 & 0x80) == 0)
        {
LABEL_39:
          *(a1 + 16) |= v36;
          goto LABEL_40;
        }

LABEL_38:
        *(a1 + 216) = *(a2 + 216);
        goto LABEL_39;
      }

LABEL_63:
      *(a1 + 212) = *(a2 + 212);
      if ((v36 & 0x80) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

LABEL_30:
    v43 = *(a2 + 184);
    *(a1 + 16) |= 4u;
    v44 = *(a1 + 8);
    v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
    if (v44)
    {
      v45 = *v45;
    }

    sub_194EA1C((a1 + 184), (v43 & 0xFFFFFFFFFFFFFFFELL), v45);
    goto LABEL_33;
  }

LABEL_40:
  if ((v36 & 0x100) != 0)
  {
    v46 = *(a2 + 224);
    *(a1 + 16) |= 0x100u;
    *(a1 + 224) = v46;
  }

  v47 = *(a2 + 8);
  if (v47)
  {

    sub_1957EF4((a1 + 8), (v47 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135B4C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_19;
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

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_13:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) != 0)
  {
LABEL_16:
    v14 = *(a2 + 48);
    *(a1 + 16) |= 8u;
    v15 = *(a1 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    sub_194EA1C((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  }

LABEL_19:
  v17 = *(a2 + 8);
  if (v17)
  {

    sub_1957EF4((a1 + 8), (v17 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_135B60C(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = *(a2 + 24);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    data = result[1].__r_.__value_.__l.__data_;
    if (!data)
    {
      v6 = *(v3 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      sub_1868ECC(v7);
      *(v3 + 24) = data;
      v4 = *(a2 + 24);
    }

    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = &off_2787A70;
    }

    result = sub_17DBC2C(data, v8);
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    return sub_1957EF4((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_135B6B4(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 7) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    result[1].__r_.__value_.__s.__data_[1] = *(a2 + 25);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result[1].__r_.__value_.__s.__data_[2] = *(a2 + 26);
  }

LABEL_6:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_7:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_135B718(uint64_t a1)
{
  result = sub_13677FC(a1 + 24);
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 4) != 0)
    {
      result = sub_16E6614(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = sub_16E5370(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_135B770(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_16E5370(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = sub_16E5370(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_135B7BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_1543A14(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_14D3EC8(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_18FCAE4(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_18FF13C(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_135B830(uint64_t a1)
{
  result = sub_195228C(a1 + 16);
  if (result)
  {
    v3 = *(a1 + 40);
    if ((v3 & 4) != 0)
    {
      result = sub_16E5370(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 8) != 0)
    {
      result = sub_16E6614(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 40);
    }

    if ((v3 & 0x10) == 0)
    {
      return 1;
    }

    result = sub_186A390(*(a1 + 80));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_135B89C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_17574A8(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_175C21C(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_136CED0(a1 + 72);
  if (result)
  {
    v9 = *(a1 + 104);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = sub_14230C4(*(*(a1 + 112) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 152);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = sub_136DBF4(*(*(a1 + 160) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(a1 + 16);
    if ((v15 & 8) != 0)
    {
      result = sub_136CF2C(*(a1 + 192));
      if (!result)
      {
        return result;
      }

      v15 = *(a1 + 16);
    }

    if ((v15 & 0x10) == 0)
    {
      return 1;
    }

    result = sub_136CF2C(*(a1 + 200));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_135B9A8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_14;
    }
  }

  else if (v4)
  {
    goto LABEL_14;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (a1 != &off_276C498)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_18FA778(v6);
      operator delete();
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      sub_18FDA18(v7);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_14:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_135BAB0(uint64_t a1)
{
  sub_135B9A8(a1);

  operator delete();
}

uint64_t sub_135BAE8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  result = sub_18FA7B4(*(result + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_18FDA54(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_135BBC8(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v28 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v28, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v28 + 1);
    v7 = **v28;
    if (**v28 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v28, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v28 + 2);
      }
    }

    *v28 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 1u;
          v22 = *(a1 + 8);
          v17 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
          if (v22)
          {
            v17 = *v17;
          }

          v18 = (a1 + 24);
          goto LABEL_35;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 2u;
        v16 = *(a1 + 8);
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        v18 = (a1 + 32);
LABEL_35:
        v23 = sub_194DB04(v18, v17);
        v15 = sub_1958890(v23, *v28, a3);
        goto LABEL_43;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 4u;
        v19 = *(a1 + 40);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          v19 = sub_1906254(v21);
          *(a1 + 40) = v19;
          v6 = *v28;
        }

        v15 = sub_21F3AD0(a3, v19, v6);
        goto LABEL_43;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 8u;
      v12 = *(a1 + 48);
      if (!v12)
      {
        v13 = *(a1 + 8);
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
        if (v13)
        {
          v14 = *v14;
        }

        v12 = sub_190630C(v14);
        *(a1 + 48) = v12;
        v6 = *v28;
      }

      v15 = sub_21F3B60(a3, v12, v6);
      goto LABEL_43;
    }

    if (v7)
    {
      v24 = (v7 & 7) == 4;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v28;
      }

LABEL_49:
      *v28 = 0;
      return *v28;
    }

    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v26 = sub_11F1920((a1 + 8));
      v6 = *v28;
    }

    v15 = sub_1952690(v7, v26, v6, a3);
LABEL_43:
    *v28 = v15;
    if (!v15)
    {
      goto LABEL_49;
    }
  }

  return *v28;
}

char *sub_135BE00(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v9 = *(a1 + 40);
    *v4 = 10;
    v10 = *(v9 + 44);
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v11 = sub_19575D0(v10, v4 + 1);
    }

    else
    {
      v11 = v4 + 2;
    }

    v4 = sub_18FB10C(v9, v11, a3);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v12 = *(a1 + 48);
  *v4 = 18;
  v13 = *(v12 + 44);
  v4[1] = v13;
  if (v13 > 0x7F)
  {
    v14 = sub_19575D0(v13, v4 + 1);
  }

  else
  {
    v14 = v4 + 2;
  }

  v4 = sub_18FE368(v12, v14, a3);
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_20:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v4) >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return sub_1957130(a3, v17, v16, v4);
}

uint64_t sub_135BFCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = sub_18FB7A4(*(a1 + 40));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_14:
    v10 = sub_18FE97C(*(a1 + 48));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v11 = *(a1 + 8);
  if (v11)
  {
    v14 = v11 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v11 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v3 += v15;
  }

  *(a1 + 20) = v3;
  return v3;
}

void sub_135C12C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_29;
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

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

LABEL_13:
  *(a1 + 16) |= 4u;
  v11 = *(a1 + 40);
  if (!v11)
  {
    v12 = *(a1 + 8);
    v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
    if (v12)
    {
      v13 = *v13;
    }

    v11 = sub_1906254(v13);
    *(a1 + 40) = v11;
  }

  if (*(a2 + 40))
  {
    v14 = *(a2 + 40);
  }

  else
  {
    v14 = &off_278AFA0;
  }

  sub_18FBB2C(v11, v14);
  if ((v4 & 8) != 0)
  {
LABEL_21:
    *(a1 + 16) |= 8u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      v16 = *(a1 + 8);
      v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
      if (v16)
      {
        v17 = *v17;
      }

      v15 = sub_190630C(v17);
      *(a1 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v18 = *(a2 + 48);
    }

    else
    {
      v18 = &off_278B0B0;
    }

    sub_18FED20(v15, v18);
  }

LABEL_29:
  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4((a1 + 8), (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_135C2A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_18FCAE4(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = sub_18FF13C(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_135C304(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
    goto LABEL_13;
  }

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_13:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_135C3E4(uint64_t a1)
{
  sub_135C304(a1);

  operator delete();
}

uint64_t sub_135C41C(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v24 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v24, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v24 + 1);
    v7 = **v24;
    if (**v24 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v24, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v24 + 2);
      }
    }

    *v24 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 4u;
          v17 = *(a1 + 8);
          v13 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v13 = *v13;
          }

          v14 = (a1 + 40);
          goto LABEL_31;
        }
      }

      else if (v10 == 4 && v7 == 34)
      {
        *(a1 + 16) |= 8u;
        v15 = *(a1 + 8);
        v13 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v13 = *v13;
        }

        v14 = (a1 + 48);
        goto LABEL_31;
      }
    }

    else if (v10 == 1)
    {
      if (v7 == 10)
      {
        *(a1 + 16) |= 1u;
        v16 = *(a1 + 8);
        v13 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v13 = *v13;
        }

        v14 = (a1 + 24);
        goto LABEL_31;
      }
    }

    else if (v10 == 2 && v7 == 18)
    {
      *(a1 + 16) |= 2u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = (a1 + 32);
LABEL_31:
      v18 = sub_194DB04(v14, v13);
      v19 = sub_1958890(v18, *v24, a3);
      goto LABEL_32;
    }

    if (v7)
    {
      v20 = (v7 & 7) == 4;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return *v24;
      }

LABEL_45:
      *v24 = 0;
      return *v24;
    }

    v21 = *(a1 + 8);
    if (v21)
    {
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v22 = sub_11F1920((a1 + 8));
      v6 = *v24;
    }

    v19 = sub_1952690(v7, v22, v6, a3);
LABEL_32:
    *v24 = v19;
    if (!v19)
    {
      goto LABEL_45;
    }
  }

  return *v24;
}

char *sub_135C61C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_128AEEC(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  v4 = sub_128AEEC(a3, 3, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) != 0)
  {
LABEL_5:
    v4 = sub_128AEEC(a3, 4, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if ((*a3 - v4) >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1957130(a3, v11, v10, v4);
}

uint64_t sub_135C754(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_17;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v14 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 8) != 0)
  {
LABEL_14:
    v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v2 += v18;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_135C8D0(uint64_t a1)
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
  if (a1 != &off_276C508)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_186702C(v6);
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

void sub_135C988(uint64_t a1)
{
  sub_135C8D0(a1);

  operator delete();
}

char *sub_135C9C0(uint64_t a1, char *a2, int32x2_t *a3)
{
  v19 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v19, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v19 + 1;
    v7 = *v19;
    if (*v19 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v19, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v19 + 2;
      }
    }

    v19 = v6;
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        sub_1868ECC(v16);
        v14 = v17;
        *(a1 + 24) = v17;
        v6 = v19;
      }

      v13 = sub_2200B30(a3, v14, v6);
    }

    else
    {
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v19;
        }

        return 0;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v12 = sub_11F1920((a1 + 8));
        v6 = v19;
      }

      v13 = sub_1952690(v7, v12, v6, a3);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

char *sub_135CB04(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 24);
    *v4 = 10;
    v7 = *(v6 + 20);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, v4 + 1);
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = sub_186732C(v6, v8, a3);
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 31);
  if (v12 < 0)
  {
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
  }

  else
  {
    v13 = (v11 + 8);
  }

  if ((*a3 - v4) >= v12)
  {
    v14 = v12;
    memcpy(v4, v13, v12);
    v4 += v14;
    return v4;
  }

  return sub_1957130(a3, v13, v12, v4);
}

uint64_t sub_135CC10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_1867668(*(a1 + 24));
    result = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    result = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    result += v6;
  }

  *(a1 + 20) = result;
  return result;
}

double sub_135CCA8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *a1 = off_26D7510;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = &qword_278E990;
  *(a1 + 176) = &qword_278E990;
  *(a1 + 184) = &qword_278E990;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 332) = -1;
  *(a1 + 192) = 0u;
  *(a1 + 316) = 0u;
  return result;
}

void *sub_135CD34(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_135CE00(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_13B3708(a1 + 18);
  sub_13B3684(a1 + 15);
  sub_13B3600(a1 + 12);
  sub_13B357C(a1 + 9);
  sub_13B34F8(a1 + 6);
  sub_13B3474(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_135CE00(uint64_t a1)
{
  v3 = *(a1 + 168);
  v2 = (a1 + 168);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 176) != &qword_278E990)
  {
    sub_194E89C((a1 + 176));
  }

  result = (a1 + 184);
  if (*(a1 + 184) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276C528)
  {
    v5 = *(a1 + 192);
    if (v5)
    {
      sub_16EE080(v5);
      operator delete();
    }

    v6 = *(a1 + 200);
    if (v6)
    {
      sub_152BA98(v6);
      operator delete();
    }

    v7 = *(a1 + 208);
    if (v7)
    {
      sub_13650D4(v7);
      operator delete();
    }

    v8 = *(a1 + 216);
    if (v8)
    {
      sub_136B798(v8);
      operator delete();
    }

    v9 = *(a1 + 224);
    if (v9)
    {
      sub_18385C8(v9);
      operator delete();
    }

    v10 = *(a1 + 232);
    if (v10)
    {
      sub_1363998(v10);
      operator delete();
    }

    v11 = *(a1 + 240);
    if (v11)
    {
      sub_186702C(v11);
      operator delete();
    }

    v12 = *(a1 + 248);
    if (v12)
    {
      sub_135B9A8(v12);
      operator delete();
    }

    v13 = *(a1 + 256);
    if (v13)
    {
      sub_13F1BFC(v13);
      operator delete();
    }

    v14 = *(a1 + 264);
    if (v14)
    {
      sub_1361FEC(v14);
      operator delete();
    }

    v15 = *(a1 + 272);
    if (v15)
    {
      sub_1552968(v15);
      operator delete();
    }

    v16 = *(a1 + 280);
    if (v16)
    {
      sub_13774E8(v16);
      operator delete();
    }

    v17 = *(a1 + 288);
    if (v17)
    {
      sub_1360F5C(v17);
      operator delete();
    }

    result = *(a1 + 296);
    if (result)
    {
      sub_135FBC0(result);

      operator delete();
    }
  }

  return result;
}

void sub_135D04C(void *a1)
{
  sub_135CD34(a1);

  operator delete();
}

uint64_t sub_135D084(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  v5 = *(a1 + 8);
  result = a1 + 8;
  *(result + 32) = 0;
  *(result + 8) = 0;
  if (v5)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_135D104(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1361C1C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_135D1EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_1376DEC(*(result + 24));
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_135D254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 0xFE) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 45) = 0;
  }

  if ((v1 & 0x300) != 0)
  {
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v4)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_135D2B8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v4 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6 = *(result + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v8 = *(result + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v10 = *(result + 80) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
      }

      goto LABEL_42;
    }

    v3 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v5 = *(result + 40) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v7 = *(result + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v9 = *(result + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = sub_17A82BC(*(result + 88));
    }

    if ((v2 & 0x200) != 0)
    {
      result = sub_16E48B0(*(v1 + 96));
    }
  }

  if ((v2 & 0x3C00) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

uint64_t sub_135D4DC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v122 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v122, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v122 + 1);
    v8 = **v122;
    if (**v122 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v122, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v122 + 2);
      }
    }

    *v122 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 8u;
        v11 = *(a1 + 192);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v11 = sub_16F5F38(v13);
          *(a1 + 192) = v11;
          v7 = *v122;
        }

        v14 = sub_21F4CD0(a3, v11, v7);
        goto LABEL_195;
      case 2u:
        if (v8 != 16)
        {
          goto LABEL_188;
        }

        v57 = v7 + 1;
        v58 = *v7;
        if ((v58 & 0x8000000000000000) == 0)
        {
          goto LABEL_93;
        }

        v59 = *v57;
        v60 = (v59 << 7) + v58;
        v58 = (v60 - 128);
        if (v59 < 0)
        {
          *v122 = sub_19587DC(v7, (v60 - 128));
          if (!*v122)
          {
            goto LABEL_214;
          }

          v58 = v117;
        }

        else
        {
          v57 = v7 + 2;
LABEL_93:
          *v122 = v57;
        }

        if ((v58 + 1) > 0xA)
        {
          v120 = *(a1 + 8);
          if (v120)
          {
            v121 = ((v120 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v121 = sub_11F1920((a1 + 8));
          }

          sub_19586BC(2, v58, v121);
        }

        else
        {
          *(a1 + 16) |= 0x200000u;
          *(a1 + 332) = v58;
        }

        goto LABEL_196;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x10u;
        v45 = *(a1 + 200);
        if (!v45)
        {
          v46 = *(a1 + 8);
          v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
          if (v46)
          {
            v47 = *v47;
          }

          v45 = sub_1550F20(v47);
          *(a1 + 200) = v45;
          v7 = *v122;
        }

        v14 = sub_2200BC0(a3, v45, v7);
        goto LABEL_195;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x20u;
        v51 = *(a1 + 208);
        if (!v51)
        {
          v52 = *(a1 + 8);
          v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL);
          if (v52)
          {
            v53 = *v53;
          }

          v51 = sub_1379E50(v53);
          *(a1 + 208) = v51;
          v7 = *v122;
        }

        v14 = sub_22006B0(a3, v51, v7);
        goto LABEL_195;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x40u;
        v29 = *(a1 + 216);
        if (!v29)
        {
          v30 = *(a1 + 8);
          v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
          if (v30)
          {
            v31 = *v31;
          }

          sub_137A440(v31);
          v29 = v32;
          *(a1 + 216) = v32;
          v7 = *v122;
        }

        v14 = sub_22007D0(a3, v29, v7);
        goto LABEL_195;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_188;
        }

        v67 = v7 - 1;
        while (1)
        {
          v68 = v67 + 1;
          *v122 = v67 + 1;
          v69 = *(a1 + 40);
          if (v69 && (v70 = *(a1 + 32), v70 < *v69))
          {
            *(a1 + 32) = v70 + 1;
            v71 = *&v69[2 * v70 + 2];
          }

          else
          {
            v72 = sub_137A1F0(*(a1 + 24));
            v71 = sub_19593CC(a1 + 24, v72);
            v68 = *v122;
          }

          v67 = sub_2200C50(a3, v71, v68);
          *v122 = v67;
          if (!v67)
          {
            goto LABEL_214;
          }

          if (*a3 <= v67 || *v67 != 50)
          {
            goto LABEL_196;
          }
        }

      case 7u:
        if (v8 != 58)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 1u;
        v85 = *(a1 + 8);
        v27 = (v85 & 0xFFFFFFFFFFFFFFFCLL);
        if (v85)
        {
          v27 = *v27;
        }

        v28 = (a1 + 168);
        goto LABEL_146;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x80u;
        v54 = *(a1 + 224);
        if (!v54)
        {
          v55 = *(a1 + 8);
          v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL);
          if (v55)
          {
            v56 = *v56;
          }

          v54 = sub_18648BC(v56);
          *(a1 + 224) = v54;
          v7 = *v122;
        }

        v14 = sub_2200230(a3, v54, v7);
        goto LABEL_195;
      case 9u:
        if (v8 != 74)
        {
          goto LABEL_188;
        }

        v91 = v7 - 1;
        while (1)
        {
          v92 = v91 + 1;
          *v122 = v91 + 1;
          v93 = *(a1 + 64);
          if (v93 && (v94 = *(a1 + 56), v94 < *v93))
          {
            *(a1 + 56) = v94 + 1;
            v95 = *&v93[2 * v94 + 2];
          }

          else
          {
            v96 = sub_175D31C(*(a1 + 48));
            v95 = sub_19593CC(a1 + 48, v96);
            v92 = *v122;
          }

          sub_21F46A0(a3, v95, v92);
          *v122 = v91;
          if (!v91)
          {
            goto LABEL_214;
          }

          if (*a3 <= v91 || *v91 != 74)
          {
            goto LABEL_196;
          }
        }

      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_188;
        }

        v33 = v7 - 1;
        while (1)
        {
          v34 = v33 + 1;
          *v122 = v33 + 1;
          v35 = *(a1 + 88);
          if (v35 && (v36 = *(a1 + 80), v36 < *v35))
          {
            *(a1 + 80) = v36 + 1;
            v37 = *&v35[2 * v36 + 2];
          }

          else
          {
            v38 = sub_175D3D4(*(a1 + 72));
            v37 = sub_19593CC(a1 + 72, v38);
            v34 = *v122;
          }

          v33 = sub_2200CE0(a3, v37, v34);
          *v122 = v33;
          if (!v33)
          {
            goto LABEL_214;
          }

          if (*a3 <= v33 || *v33 != 82)
          {
            goto LABEL_196;
          }
        }

      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_188;
        }

        v5 |= 0x20000u;
        v89 = v7 + 1;
        v88 = *v7;
        if ((v88 & 0x8000000000000000) == 0)
        {
          goto LABEL_151;
        }

        v90 = *v89;
        v88 = (v90 << 7) + v88 - 128;
        if (v90 < 0)
        {
          v118 = sub_19587DC(v7, v88);
          *v122 = v118;
          *(a1 + 304) = v119;
          if (!v118)
          {
            goto LABEL_214;
          }
        }

        else
        {
          v89 = v7 + 2;
LABEL_151:
          *v122 = v89;
          *(a1 + 304) = v88;
        }

        goto LABEL_196;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 2u;
        v26 = *(a1 + 8);
        v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
        if (v26)
        {
          v27 = *v27;
        }

        v28 = (a1 + 176);
        goto LABEL_146;
      case 0xDu:
        if (v8 != 105)
        {
          goto LABEL_188;
        }

        v5 |= 0x40000u;
        *(a1 + 312) = *v7;
        *v122 = v7 + 8;
        goto LABEL_196;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_188;
        }

        v79 = v7 - 1;
        while (1)
        {
          v80 = v79 + 1;
          *v122 = v79 + 1;
          v81 = *(a1 + 112);
          if (v81 && (v82 = *(a1 + 104), v82 < *v81))
          {
            *(a1 + 104) = v82 + 1;
            v83 = *&v81[2 * v82 + 2];
          }

          else
          {
            v84 = sub_1379CD4(*(a1 + 96));
            v83 = sub_19593CC(a1 + 96, v84);
            v80 = *v122;
          }

          v79 = sub_2200D70(a3, v83, v80);
          *v122 = v79;
          if (!v79)
          {
            goto LABEL_214;
          }

          if (*a3 <= v79 || *v79 != 114)
          {
            goto LABEL_196;
          }
        }

      case 0xFu:
        if (v8 != 120)
        {
          goto LABEL_188;
        }

        v5 |= 0x80000u;
        v24 = v7 + 1;
        v23 = *v7;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if (v25 < 0)
        {
          v115 = sub_19587DC(v7, v23);
          *v122 = v115;
          *(a1 + 320) = v116;
          if (!v115)
          {
            goto LABEL_214;
          }
        }

        else
        {
          v24 = v7 + 2;
LABEL_30:
          *v122 = v24;
          *(a1 + 320) = v23;
        }

        goto LABEL_196;
      case 0x10u:
        if (v8 != 130)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x100u;
        v48 = *(a1 + 232);
        if (!v48)
        {
          v49 = *(a1 + 8);
          v50 = (v49 & 0xFFFFFFFFFFFFFFFCLL);
          if (v49)
          {
            v50 = *v50;
          }

          v48 = sub_1379C4C(v50);
          *(a1 + 232) = v48;
          v7 = *v122;
        }

        v14 = sub_2200E00(a3, v48, v7);
        goto LABEL_195;
      case 0x11u:
        if (v8 != 138)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x200u;
        v19 = *(a1 + 240);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          sub_1868ECC(v21);
          v19 = v22;
          *(a1 + 240) = v22;
          v7 = *v122;
        }

        v14 = sub_2200B30(a3, v19, v7);
        goto LABEL_195;
      case 0x12u:
        if (v8 != 146)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x400u;
        v61 = *(a1 + 248);
        if (!v61)
        {
          v62 = *(a1 + 8);
          v63 = (v62 & 0xFFFFFFFFFFFFFFFCLL);
          if (v62)
          {
            v63 = *v63;
          }

          v61 = sub_13795F4(v63);
          *(a1 + 248) = v61;
          v7 = *v122;
        }

        v14 = sub_2200E90(a3, v61, v7);
        goto LABEL_195;
      case 0x13u:
        if (v8 != 154)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 4u;
        v86 = *(a1 + 8);
        v27 = (v86 & 0xFFFFFFFFFFFFFFFCLL);
        if (v86)
        {
          v27 = *v27;
        }

        v28 = (a1 + 184);
LABEL_146:
        v87 = sub_194DB04(v28, v27);
        v14 = sub_1958890(v87, *v122, a3);
        goto LABEL_195;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_188;
        }

        v100 = v7 + 1;
        v101 = *v7;
        if (v101 < 0)
        {
          v101 = (*v100 << 7) + v101 - 128;
          if (*v100 < 0)
          {
            v100 = sub_19587DC(v7, v101);
          }

          else
          {
            v100 = v7 + 2;
          }
        }

        v5 |= 0x100000u;
        *v122 = v100;
        *(a1 + 328) = -(v101 & 1) ^ (v101 >> 1);
        if (!v100)
        {
          goto LABEL_214;
        }

        goto LABEL_196;
      case 0x15u:
        if (v8 != 170)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x800u;
        v64 = *(a1 + 256);
        if (!v64)
        {
          v65 = *(a1 + 8);
          v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
          if (v65)
          {
            v66 = *v66;
          }

          v64 = sub_13F6354(v66);
          *(a1 + 256) = v64;
          v7 = *v122;
        }

        v14 = sub_2200F20(a3, v64, v7);
        goto LABEL_195;
      case 0x16u:
        if (v8 != 178)
        {
          goto LABEL_188;
        }

        v73 = v7 - 2;
        while (1)
        {
          v74 = v73 + 2;
          *v122 = v73 + 2;
          v75 = *(a1 + 136);
          if (v75 && (v76 = *(a1 + 128), v76 < *v75))
          {
            *(a1 + 128) = v76 + 1;
            v77 = *&v75[2 * v76 + 2];
          }

          else
          {
            v78 = sub_1379BA4(*(a1 + 120));
            v77 = sub_19593CC(a1 + 120, v78);
            v74 = *v122;
          }

          v73 = sub_2200FB0(a3, v77, v74);
          *v122 = v73;
          if (!v73)
          {
            goto LABEL_214;
          }

          if (*a3 <= v73 || *v73 != 434)
          {
            goto LABEL_196;
          }
        }

      case 0x17u:
        if (v8 != 186)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x1000u;
        v97 = *(a1 + 264);
        if (!v97)
        {
          v98 = *(a1 + 8);
          v99 = (v98 & 0xFFFFFFFFFFFFFFFCLL);
          if (v98)
          {
            v99 = *v99;
          }

          v97 = sub_1379A5C(v99);
          *(a1 + 264) = v97;
          v7 = *v122;
        }

        v14 = sub_2201040(a3, v97, v7);
        goto LABEL_195;
      case 0x18u:
        if (v8 != 194)
        {
          goto LABEL_188;
        }

        v102 = v7 - 2;
        while (1)
        {
          v103 = v102 + 2;
          *v122 = v102 + 2;
          v104 = *(a1 + 160);
          if (v104 && (v105 = *(a1 + 152), v105 < *v104))
          {
            *(a1 + 152) = v105 + 1;
            v106 = *&v104[2 * v105 + 2];
          }

          else
          {
            v107 = sub_13795F4(*(a1 + 144));
            v106 = sub_19593CC(a1 + 144, v107);
            v103 = *v122;
          }

          v102 = sub_2200E90(a3, v106, v103);
          *v122 = v102;
          if (!v102)
          {
            goto LABEL_214;
          }

          if (*a3 <= v102 || *v102 != 450)
          {
            goto LABEL_196;
          }
        }

      case 0x19u:
        if (v8 != 202)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x2000u;
        v42 = *(a1 + 272);
        if (!v42)
        {
          v43 = *(a1 + 8);
          v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
          if (v43)
          {
            v44 = *v44;
          }

          v42 = sub_1552C7C(v44);
          *(a1 + 272) = v42;
          v7 = *v122;
        }

        v14 = sub_22010D0(a3, v42, v7);
        goto LABEL_195;
      case 0x1Au:
        if (v8 != 210)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x4000u;
        v39 = *(a1 + 280);
        if (!v39)
        {
          v40 = *(a1 + 8);
          v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
          if (v40)
          {
            v41 = *v41;
          }

          v39 = sub_137AE34(v41);
          *(a1 + 280) = v39;
          v7 = *v122;
        }

        v14 = sub_2201160(a3, v39, v7);
        goto LABEL_195;
      case 0x1Bu:
        if (v8 != 218)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x8000u;
        v108 = *(a1 + 288);
        if (!v108)
        {
          v109 = *(a1 + 8);
          v110 = (v109 & 0xFFFFFFFFFFFFFFFCLL);
          if (v109)
          {
            v110 = *v110;
          }

          sub_1379948(v110);
          v108 = v111;
          *(a1 + 288) = v111;
          v7 = *v122;
        }

        v14 = sub_22011F0(a3, v108, v7);
        goto LABEL_195;
      case 0x1Cu:
        if (v8 != 226)
        {
          goto LABEL_188;
        }

        *(a1 + 16) |= 0x10000u;
        v15 = *(a1 + 296);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          sub_1379840(v17);
          v15 = v18;
          *(a1 + 296) = v18;
          v7 = *v122;
        }

        v14 = sub_2201280(a3, v15, v7);
        goto LABEL_195;
      default:
LABEL_188:
        if (v8)
        {
          v112 = (v8 & 7) == 4;
        }

        else
        {
          v112 = 1;
        }

        if (!v112)
        {
          v113 = *(a1 + 8);
          if (v113)
          {
            v114 = (v113 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v114 = sub_11F1920((a1 + 8));
            v7 = *v122;
          }

          v14 = sub_1952690(v8, v114, v7, a3);
LABEL_195:
          *v122 = v14;
          if (!v14)
          {
            goto LABEL_214;
          }

LABEL_196:
          if (sub_195ADC0(a3, v122, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_214:
          *v122 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v122;
    }
  }
}

char *sub_135E0C8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v6 = *(a1 + 192);
    *__dst = 10;
    v7 = *(v6 + 20);
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, __dst + 1);
    }

    else
    {
      v8 = __dst + 2;
    }

    __dst = sub_16EE2C4(v6, v8, a3);
  }

  if ((v5 & 0x200000) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v10 = *(a1 + 332);
    *__dst = 16;
    __dst[1] = v10;
    if (v10 > 0x7F)
    {
      __dst[1] = v10 | 0x80;
      v11 = v10 >> 7;
      __dst[2] = v10 >> 7;
      v9 = __dst + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = __dst[2];
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
      v9 = __dst + 2;
    }
  }

  else
  {
    v9 = __dst;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v14 = *(a1 + 200);
    *v9 = 26;
    v15 = *(v14 + 44);
    v9[1] = v15;
    if (v15 > 0x7F)
    {
      v16 = sub_19575D0(v15, v9 + 1);
    }

    else
    {
      v16 = v9 + 2;
    }

    v9 = sub_152C800(v14, v16, a3);
    if ((v5 & 0x20) == 0)
    {
LABEL_19:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_19;
  }

  if (*a3 <= v9)
  {
    v9 = sub_225EB68(a3, v9);
  }

  v17 = *(a1 + 208);
  *v9 = 34;
  v18 = *(v17 + 44);
  v9[1] = v18;
  if (v18 > 0x7F)
  {
    v19 = sub_19575D0(v18, v9 + 1);
  }

  else
  {
    v19 = v9 + 2;
  }

  v9 = sub_1365584(v17, v19, a3);
  if ((v5 & 0x40) != 0)
  {
LABEL_33:
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v20 = *(a1 + 216);
    *v9 = 42;
    v21 = *(v20 + 20);
    v9[1] = v21;
    if (v21 > 0x7F)
    {
      v22 = sub_19575D0(v21, v9 + 1);
    }

    else
    {
      v22 = v9 + 2;
    }

    v9 = sub_136C1A4(v20, v22, a3);
  }

LABEL_39:
  v23 = *(a1 + 32);
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v25 = *(*(a1 + 40) + 8 * i + 8);
      *v9 = 50;
      v26 = *(v25 + 20);
      v9[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, v9 + 1);
      }

      else
      {
        v27 = v9 + 2;
      }

      v9 = sub_1368D38(v25, v27, a3);
    }
  }

  if (v5)
  {
    v9 = sub_128AEEC(a3, 7, (*(a1 + 168) & 0xFFFFFFFFFFFFFFFELL), v9);
  }

  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v28 = *(a1 + 224);
    *v9 = 66;
    v29 = *(v28 + 44);
    v9[1] = v29;
    if (v29 > 0x7F)
    {
      v30 = sub_19575D0(v29, v9 + 1);
    }

    else
    {
      v30 = v9 + 2;
    }

    v9 = sub_1838E28(v28, v30, a3);
  }

  v31 = *(a1 + 56);
  if (v31)
  {
    for (j = 0; j != v31; ++j)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v33 = *(*(a1 + 64) + 8 * j + 8);
      *v9 = 74;
      v34 = *(v33 + 48);
      v9[1] = v34;
      if (v34 > 0x7F)
      {
        v35 = sub_19575D0(v34, v9 + 1);
      }

      else
      {
        v35 = v9 + 2;
      }

      v9 = sub_1754B50(v33, v35, a3);
    }
  }

  v36 = *(a1 + 80);
  if (v36)
  {
    for (k = 0; k != v36; ++k)
    {
      if (*a3 <= v9)
      {
        v9 = sub_225EB68(a3, v9);
      }

      v38 = *(*(a1 + 88) + 8 * k + 8);
      *v9 = 82;
      v39 = *(v38 + 44);
      v9[1] = v39;
      if (v39 > 0x7F)
      {
        v40 = sub_19575D0(v39, v9 + 1);
      }

      else
      {
        v40 = v9 + 2;
      }

      v9 = sub_1759614(v38, v40, a3);
    }
  }

  if ((v5 & 0x20000) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v42 = *(a1 + 304);
    *v9 = 88;
    v9[1] = v42;
    if (v42 > 0x7F)
    {
      v9[1] = v42 | 0x80;
      v43 = v42 >> 7;
      v9[2] = v42 >> 7;
      v41 = v9 + 3;
      if (v42 >= 0x4000)
      {
        LOBYTE(v44) = v9[2];
        do
        {
          *(v41 - 1) = v44 | 0x80;
          v44 = v43 >> 7;
          *v41++ = v43 >> 7;
          v45 = v43 >> 14;
          v43 >>= 7;
        }

        while (v45);
      }
    }

    else
    {
      v41 = v9 + 2;
    }
  }

  else
  {
    v41 = v9;
  }

  if ((v5 & 2) != 0)
  {
    v41 = sub_128AEEC(a3, 12, (*(a1 + 176) & 0xFFFFFFFFFFFFFFFELL), v41);
  }

  if ((v5 & 0x40000) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v46 = *(a1 + 312);
    *v41 = 105;
    *(v41 + 1) = v46;
    v41 += 9;
  }

  v47 = *(a1 + 104);
  if (v47)
  {
    for (m = 0; m != v47; ++m)
    {
      if (*a3 <= v41)
      {
        v41 = sub_225EB68(a3, v41);
      }

      v49 = *(*(a1 + 112) + 8 * m + 8);
      *v41 = 114;
      v50 = *(v49 + 20);
      v41[1] = v50;
      if (v50 > 0x7F)
      {
        v51 = sub_19575D0(v50, v41 + 1);
      }

      else
      {
        v51 = v41 + 2;
      }

      v41 = sub_136433C(v49, v51, a3);
    }
  }

  if ((v5 & 0x80000) != 0)
  {
    if (*a3 <= v41)
    {
      v41 = sub_225EB68(a3, v41);
    }

    v53 = *(a1 + 320);
    *v41 = 120;
    v41[1] = v53;
    if (v53 > 0x7F)
    {
      v41[1] = v53 | 0x80;
      v54 = v53 >> 7;
      v41[2] = v53 >> 7;
      v52 = v41 + 3;
      if (v53 >= 0x4000)
      {
        LOBYTE(v41) = v41[2];
        do
        {
          *(v52 - 1) = v41 | 0x80;
          v41 = (v54 >> 7);
          *v52++ = v54 >> 7;
          v55 = v54 >> 14;
          v54 >>= 7;
        }

        while (v55);
      }
    }

    else
    {
      v52 = v41 + 2;
    }
  }

  else
  {
    v52 = v41;
  }

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v52)
    {
      v52 = sub_225EB68(a3, v52);
    }

    v57 = *(a1 + 232);
    *v52 = 386;
    v58 = *(v57 + 20);
    v52[2] = v58;
    if (v58 > 0x7F)
    {
      v59 = sub_19575D0(v58, v52 + 2);
    }

    else
    {
      v59 = v52 + 3;
    }

    v52 = sub_1363C90(v57, v59, a3);
    if ((v5 & 0x200) == 0)
    {
LABEL_106:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_122;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_106;
  }

  if (*a3 <= v52)
  {
    v52 = sub_225EB68(a3, v52);
  }

  v60 = *(a1 + 240);
  *v52 = 394;
  v61 = *(v60 + 20);
  v52[2] = v61;
  if (v61 > 0x7F)
  {
    v62 = sub_19575D0(v61, v52 + 2);
  }

  else
  {
    v62 = v52 + 3;
  }

  v52 = sub_186732C(v60, v62, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_107:
    if ((v5 & 4) == 0)
    {
      goto LABEL_108;
    }

LABEL_128:
    v52 = sub_128AEEC(a3, 19, (*(a1 + 184) & 0xFFFFFFFFFFFFFFFELL), v52);
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_129;
  }

LABEL_122:
  if (*a3 <= v52)
  {
    v52 = sub_225EB68(a3, v52);
  }

  v63 = *(a1 + 248);
  *v52 = 402;
  v64 = *(v63 + 20);
  v52[2] = v64;
  if (v64 > 0x7F)
  {
    v65 = sub_19575D0(v64, v52 + 2);
  }

  else
  {
    v65 = v52 + 3;
  }

  v52 = sub_135BE00(v63, v65, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_128;
  }

LABEL_108:
  if ((v5 & 0x100000) == 0)
  {
LABEL_109:
    v56 = v52;
    goto LABEL_136;
  }

LABEL_129:
  if (*a3 <= v52)
  {
    v52 = sub_225EB68(a3, v52);
  }

  v66 = *(a1 + 328);
  *v52 = 416;
  v67 = (2 * v66) ^ (v66 >> 31);
  v52[2] = (2 * v66) ^ (v66 >> 31);
  if (v67 > 0x7F)
  {
    v52[2] = v67 | 0x80;
    v68 = v67 >> 7;
    v52[3] = v67 >> 7;
    v56 = v52 + 4;
    if (v67 >= 0x4000)
    {
      LOBYTE(v69) = v52[3];
      do
      {
        *(v56 - 1) = v69 | 0x80;
        v69 = v68 >> 7;
        *v56++ = v68 >> 7;
        v70 = v68 >> 14;
        v68 >>= 7;
      }

      while (v70);
    }
  }

  else
  {
    v56 = v52 + 3;
  }

LABEL_136:
  if ((v5 & 0x800) != 0)
  {
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v71 = *(a1 + 256);
    *v56 = 426;
    v72 = *(v71 + 44);
    v56[2] = v72;
    if (v72 > 0x7F)
    {
      v73 = sub_19575D0(v72, v56 + 2);
    }

    else
    {
      v73 = v56 + 3;
    }

    v56 = sub_13F23D0(v71, v73, a3);
  }

  v74 = *(a1 + 128);
  if (v74)
  {
    for (n = 0; n != v74; ++n)
    {
      if (*a3 <= v56)
      {
        v56 = sub_225EB68(a3, v56);
      }

      v76 = *(*(a1 + 136) + 8 * n + 8);
      *v56 = 434;
      v77 = *(v76 + 20);
      v56[2] = v77;
      if (v77 > 0x7F)
      {
        v78 = sub_19575D0(v77, v56 + 2);
      }

      else
      {
        v78 = v56 + 3;
      }

      v56 = sub_136340C(v76, v78, a3);
    }
  }

  if ((v5 & 0x1000) != 0)
  {
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v79 = *(a1 + 264);
    *v56 = 442;
    v80 = *(v79 + 20);
    v56[2] = v80;
    if (v80 > 0x7F)
    {
      v81 = sub_19575D0(v80, v56 + 2);
    }

    else
    {
      v81 = v56 + 3;
    }

    v56 = sub_13622FC(v79, v81, a3);
  }

  v82 = *(a1 + 152);
  if (v82)
  {
    for (ii = 0; ii != v82; ++ii)
    {
      if (*a3 <= v56)
      {
        v56 = sub_225EB68(a3, v56);
      }

      v84 = *(*(a1 + 160) + 8 * ii + 8);
      *v56 = 450;
      v85 = *(v84 + 20);
      v56[2] = v85;
      if (v85 > 0x7F)
      {
        v86 = sub_19575D0(v85, v56 + 2);
      }

      else
      {
        v86 = v56 + 3;
      }

      v56 = sub_135BE00(v84, v86, a3);
    }
  }

  if ((v5 & 0x2000) != 0)
  {
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v87 = *(a1 + 272);
    *v56 = 458;
    v88 = *(v87 + 20);
    v56[2] = v88;
    if (v88 > 0x7F)
    {
      v89 = sub_19575D0(v88, v56 + 2);
    }

    else
    {
      v89 = v56 + 3;
    }

    v56 = sub_1552B20(v87, v89, a3);
    if ((v5 & 0x4000) == 0)
    {
LABEL_168:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_169;
      }

      goto LABEL_183;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_168;
  }

  if (*a3 <= v56)
  {
    v56 = sub_225EB68(a3, v56);
  }

  v90 = *(a1 + 280);
  *v56 = 466;
  v91 = *(v90 + 20);
  v56[2] = v91;
  if (v91 > 0x7F)
  {
    v92 = sub_19575D0(v91, v56 + 2);
  }

  else
  {
    v92 = v56 + 3;
  }

  v56 = sub_1377820(v90, v92, a3);
  if ((v5 & 0x8000) == 0)
  {
LABEL_169:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_189;
  }

LABEL_183:
  if (*a3 <= v56)
  {
    v56 = sub_225EB68(a3, v56);
  }

  v93 = *(a1 + 288);
  *v56 = 474;
  v94 = *(v93 + 20);
  v56[2] = v94;
  if (v94 > 0x7F)
  {
    v95 = sub_19575D0(v94, v56 + 2);
  }

  else
  {
    v95 = v56 + 3;
  }

  v56 = sub_13615B0(v93, v95, a3);
  if ((v5 & 0x10000) != 0)
  {
LABEL_189:
    if (*a3 <= v56)
    {
      v56 = sub_225EB68(a3, v56);
    }

    v96 = *(a1 + 296);
    *v56 = 482;
    v97 = *(v96 + 20);
    v56[2] = v97;
    if (v97 > 0x7F)
    {
      v98 = sub_19575D0(v97, v56 + 2);
    }

    else
    {
      v98 = v56 + 3;
    }

    v56 = sub_13602DC(v96, v98, a3);
  }

LABEL_195:
  v99 = *(a1 + 8);
  if ((v99 & 1) == 0)
  {
    return v56;
  }

  v101 = v99 & 0xFFFFFFFFFFFFFFFCLL;
  v102 = *(v101 + 31);
  if (v102 < 0)
  {
    v103 = *(v101 + 8);
    v102 = *(v101 + 16);
  }

  else
  {
    v103 = (v101 + 8);
  }

  if ((*a3 - v56) >= v102)
  {
    v104 = v102;
    memcpy(v56, v103, v102);
    v56 += v104;
    return v56;
  }

  return sub_1957130(a3, v103, v102, v56);
}

uint64_t sub_135ECF4(uint64_t a1)
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
      v7 = sub_1368F84(v6);
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
      v14 = sub_1755E4C(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = sub_175A8F4(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + v22;
  v24 = *(a1 + 112);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = sub_13644B8(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 128);
  v30 = v23 + 2 * v29;
  v31 = *(a1 + 136);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = sub_1363638(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 152);
  v37 = v30 + 2 * v36;
  v38 = *(a1 + 160);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = sub_135BFCC(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 16);
  if (!v43)
  {
    goto LABEL_49;
  }

  if (v43)
  {
    v52 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    v53 = *(v52 + 23);
    v54 = *(v52 + 8);
    if ((v53 & 0x80u) == 0)
    {
      v54 = v53;
    }

    v37 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v43 & 2) == 0)
    {
LABEL_42:
      if ((v43 & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_81;
    }
  }

  else if ((v43 & 2) == 0)
  {
    goto LABEL_42;
  }

  v55 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v56 = *(v55 + 23);
  v57 = *(v55 + 8);
  if ((v56 & 0x80u) == 0)
  {
    v57 = v56;
  }

  v37 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 4) == 0)
  {
LABEL_43:
    if ((v43 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_84;
  }

LABEL_81:
  v58 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v59 = *(v58 + 23);
  v60 = *(v58 + 8);
  if ((v59 & 0x80u) == 0)
  {
    v60 = v59;
  }

  v37 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v43 & 8) == 0)
  {
LABEL_44:
    if ((v43 & 0x10) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_85;
  }

LABEL_84:
  v61 = sub_16EE474(*(a1 + 192));
  v37 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 0x10) == 0)
  {
LABEL_45:
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_46;
    }

LABEL_86:
    v63 = sub_1365818(*(a1 + 208));
    v37 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v43 & 0x40) == 0)
    {
LABEL_47:
      if ((v43 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    goto LABEL_87;
  }

LABEL_85:
  v62 = sub_152D208(*(a1 + 200));
  v37 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 0x20) != 0)
  {
    goto LABEL_86;
  }

LABEL_46:
  if ((v43 & 0x40) == 0)
  {
    goto LABEL_47;
  }

LABEL_87:
  v64 = sub_136C8BC(*(a1 + 216));
  v37 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v43 & 0x80) != 0)
  {
LABEL_48:
    v44 = sub_1839564(*(a1 + 224));
    v37 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_49:
  if ((v43 & 0xFF00) == 0)
  {
    goto LABEL_59;
  }

  if ((v43 & 0x100) != 0)
  {
    v65 = sub_1363DF8(*(a1 + 232));
    v37 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v43 & 0x200) == 0)
    {
LABEL_52:
      if ((v43 & 0x400) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_91;
    }
  }

  else if ((v43 & 0x200) == 0)
  {
    goto LABEL_52;
  }

  v66 = sub_1867668(*(a1 + 240));
  v37 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v43 & 0x400) == 0)
  {
LABEL_53:
    if ((v43 & 0x800) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_92;
  }

LABEL_91:
  v67 = sub_135BFCC(*(a1 + 248));
  v37 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v43 & 0x800) == 0)
  {
LABEL_54:
    if ((v43 & 0x1000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_93;
  }

LABEL_92:
  v68 = sub_13F28E4(*(a1 + 256));
  v37 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v43 & 0x1000) == 0)
  {
LABEL_55:
    if ((v43 & 0x2000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_94;
  }

LABEL_93:
  v69 = sub_1362480(*(a1 + 264));
  v37 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v43 & 0x2000) == 0)
  {
LABEL_56:
    if ((v43 & 0x4000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_95;
  }

LABEL_94:
  v70 = sub_1552BE8(*(a1 + 272));
  v37 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v43 & 0x4000) == 0)
  {
LABEL_57:
    if ((v43 & 0x8000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_95:
  v71 = sub_1377A34(*(a1 + 280));
  v37 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v43 & 0x8000) != 0)
  {
LABEL_58:
    v45 = sub_13619AC(*(a1 + 288));
    v37 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_59:
  if ((v43 & 0x3F0000) == 0)
  {
    goto LABEL_73;
  }

  if ((v43 & 0x10000) != 0)
  {
    v46 = sub_13606D4(*(a1 + 296));
    v37 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v43 & 0x20000) != 0)
  {
    v37 += ((9 * (__clz(*(a1 + 304) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  if ((v43 & 0x40000) != 0)
  {
    v37 += 9;
  }

  if ((v43 & 0x80000) == 0)
  {
    if ((v43 & 0x100000) == 0)
    {
      goto LABEL_68;
    }

LABEL_98:
    v37 += ((9 * (__clz((2 * *(a1 + 328)) ^ (*(a1 + 328) >> 31) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v43 & 0x200000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_69;
  }

  v37 += ((9 * (__clz(*(a1 + 320) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v43 & 0x100000) != 0)
  {
    goto LABEL_98;
  }

LABEL_68:
  if ((v43 & 0x200000) == 0)
  {
    goto LABEL_73;
  }

LABEL_69:
  v47 = *(a1 + 332);
  v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v47 >= 0)
  {
    v49 = v48;
  }

  else
  {
    v49 = 11;
  }

  v37 += v49;
LABEL_73:
  v50 = *(a1 + 8);
  if (v50)
  {
    v72 = v50 & 0xFFFFFFFFFFFFFFFCLL;
    v73 = *((v50 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v73 < 0)
    {
      v73 = *(v72 + 16);
    }

    v37 += v73;
  }

  *(a1 + 20) = v37;
  return v37;
}

void sub_135F3B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(a1 + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(a1 + 40) = *(a2 + 40);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(a2 + 32);
    *(a1 + 16) |= 2u;
    v10 = *(a1 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 32), (v9 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135F4B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_13B431C((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
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
      v13 = *(a2 + 56);
      *(a1 + 16) |= 2u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_194EA1C((a1 + 56), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
    }
  }

  v16 = *(a2 + 8);
  if (v16)
  {

    sub_1957EF4((a1 + 8), (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135F5E0(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    if (v4)
    {
      *(result + 16) |= 1u;
      v6 = *(result + 24);
      if (!v6)
      {
        v7 = *(result + 8);
        v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
        if (v7)
        {
          v8 = *v8;
        }

        v6 = sub_137ADAC(v8);
        *(result + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &off_276CEF0;
      }

      sub_1377348(v6, v9);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
LABEL_6:
          *(result + 16) |= v4;
          goto LABEL_7;
        }

LABEL_5:
        *(result + 36) = *(a2 + 36);
        goto LABEL_6;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(result + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((result + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135F6C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) |= 1u;
      v7 = *(a1 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      sub_194EA1C((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_26;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    *(a1 + 32) = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(a1 + 40) = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(a1 + 48) = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(a1 + 49) = *(a2 + 49);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(a1 + 50) = *(a2 + 50);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      *(a1 + 52) = *(a2 + 52);
      goto LABEL_11;
    }

LABEL_30:
    *(a1 + 51) = *(a2 + 51);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x300) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    if ((v4 & 0x200) != 0)
    {
      *(a1 + 64) = *(a2 + 64);
    }

    *(a1 + 16) |= v4;
  }

  v5 = *(a2 + 8);
  if (v5)
  {

    sub_1957EF4((a1 + 8), (v5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_135F814(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_35;
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

      goto LABEL_17;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  sub_194EA1C((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v10);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v11 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 8);
  v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
  if (v12)
  {
    v13 = *v13;
  }

  sub_194EA1C((a1 + 40), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_20:
  v14 = *(a2 + 48);
  *(a1 + 16) |= 8u;
  v15 = *(a1 + 8);
  v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
  if (v15)
  {
    v16 = *v16;
  }

  sub_194EA1C((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v16);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_23:
  v17 = *(a2 + 56);
  *(a1 + 16) |= 0x10u;
  v18 = *(a1 + 8);
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
  if (v18)
  {
    v19 = *v19;
  }

  sub_194EA1C((a1 + 56), (v17 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v4 & 0x20) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_26:
  v20 = *(a2 + 64);
  *(a1 + 16) |= 0x20u;
  v21 = *(a1 + 8);
  v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
  if (v21)
  {
    v22 = *v22;
  }

  sub_194EA1C((a1 + 64), (v20 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

LABEL_29:
  v23 = *(a2 + 72);
  *(a1 + 16) |= 0x40u;
  v24 = *(a1 + 8);
  v25 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
  if (v24)
  {
    v25 = *v25;
  }

  sub_194EA1C((a1 + 72), (v23 & 0xFFFFFFFFFFFFFFFELL), v25);
  if ((v4 & 0x80) != 0)
  {
LABEL_32:
    v26 = *(a2 + 80);
    *(a1 + 16) |= 0x80u;
    v27 = *(a1 + 8);
    v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
    if (v27)
    {
      v28 = *v28;
    }

    sub_194EA1C((a1 + 80), (v26 & 0xFFFFFFFFFFFFFFFELL), v28);
  }

LABEL_35:
  if ((v4 & 0x3F00) == 0)
  {
    goto LABEL_44;
  }

  if ((v4 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v30 = *(a1 + 88);
    if (!v30)
    {
      v31 = *(a1 + 8);
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v32 = *v32;
      }

      v30 = sub_191BA60(v32);
      *(a1 + 88) = v30;
    }

    if (*(a2 + 88))
    {
      v33 = *(a2 + 88);
    }

    else
    {
      v33 = &off_278B870;
    }

    sub_17A8DBC(v30, v33);
    if ((v4 & 0x200) == 0)
    {
LABEL_38:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_64;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  *(a1 + 16) |= 0x200u;
  v34 = *(a1 + 96);
  if (!v34)
  {
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v34 = sub_16F5BD8(v36);
    *(a1 + 96) = v34;
  }

  if (*(a2 + 96))
  {
    v37 = *(a2 + 96);
  }

  else
  {
    v37 = &off_277E738;
  }

  sub_16E4964(v34, v37);
  if ((v4 & 0x400) == 0)
  {
LABEL_39:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a1 + 104) = *(a2 + 104);
  if ((v4 & 0x800) == 0)
  {
LABEL_40:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

LABEL_66:
    *(a1 + 120) = *(a2 + 120);
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_65:
  *(a1 + 112) = *(a2 + 112);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_66;
  }

LABEL_41:
  if ((v4 & 0x2000) != 0)
  {
LABEL_42:
    *(a1 + 124) = *(a2 + 124);
  }

LABEL_43:
  *(a1 + 16) |= v4;
LABEL_44:
  v29 = *(a2 + 8);
  if (v29)
  {

    sub_1957EF4((a1 + 8), (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_135FB34(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_137748C(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_135FB64(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x100) != 0)
  {
    result = sub_17A8EF8(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) == 0)
  {
    return 1;
  }

  result = sub_16E4B4C(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_135FBC0(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_135FC44(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_135FC44(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  if (*(a1 + 32) != &qword_278E990)
  {
    sub_194E89C((a1 + 32));
  }

  if (*(a1 + 40) != &qword_278E990)
  {
    sub_194E89C((a1 + 40));
  }

  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C((a1 + 48));
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*(a1 + 64) != &qword_278E990)
  {
    sub_194E89C((a1 + 64));
  }

  if (*(a1 + 72) != &qword_278E990)
  {
    sub_194E89C((a1 + 72));
  }

  result = (a1 + 80);
  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_276C678)
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      sub_191742C(v5);
      operator delete();
    }

    result = *(a1 + 96);
    if (result)
    {
      sub_16E8374(result);

      operator delete();
    }
  }

  return result;
}

void sub_135FD74(void *a1)
{
  sub_135FBC0(a1);

  operator delete();
}

uint64_t sub_135FDAC(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v45 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v45, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v45 + 1);
    v8 = **v45;
    if (**v45 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v45, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v45 + 2);
      }
    }

    *v45 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 8)
        {
          goto LABEL_75;
        }

        v5 |= 0x400u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_12:
          *v45 = v12;
          *(a1 + 104) = v11;
          goto LABEL_65;
        }

        v43 = sub_19587DC(v7, v11);
        *v45 = v43;
        *(a1 + 104) = v44;
        if (v43)
        {
          goto LABEL_65;
        }

        goto LABEL_92;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_75;
        }

        *(a1 + 16) |= 0x100u;
        v25 = *(a1 + 88);
        if (!v25)
        {
          v26 = *(a1 + 8);
          v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
          if (v26)
          {
            v27 = *v27;
          }

          v25 = sub_191BA60(v27);
          *(a1 + 88) = v25;
          v7 = *v45;
        }

        v28 = sub_2201310(a3, v25, v7);
        goto LABEL_64;
      case 3u:
        if (v8 != 26)
        {
          goto LABEL_75;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 8);
        v15 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v15 = *v15;
        }

        v16 = (a1 + 24);
        goto LABEL_63;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_75;
        }

        *(a1 + 16) |= 2u;
        v23 = *(a1 + 8);
        v15 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v15 = *v15;
        }

        v16 = (a1 + 32);
        goto LABEL_63;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_75;
        }

        *(a1 + 16) |= 4u;
        v17 = *(a1 + 8);
        v15 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v15 = *v15;
        }

        v16 = (a1 + 40);
        goto LABEL_63;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_75;
        }

        *(a1 + 16) |= 8u;
        v29 = *(a1 + 8);
        v15 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
        if (v29)
        {
          v15 = *v15;
        }

        v16 = (a1 + 48);
        goto LABEL_63;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_75;
        }

        *(a1 + 16) |= 0x10u;
        v33 = *(a1 + 8);
        v15 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
        if (v33)
        {
          v15 = *v15;
        }

        v16 = (a1 + 56);
        goto LABEL_63;
      case 8u:
        if (v8 != 66)
        {
          goto LABEL_75;
        }

        *(a1 + 16) |= 0x20u;
        v24 = *(a1 + 8);
        v15 = (v24 & 0xFFFFFFFFFFFFFFFCLL);
        if (v24)
        {
          v15 = *v15;
        }

        v16 = (a1 + 64);
        goto LABEL_63;
      case 9u:
        if (v8 != 73)
        {
          goto LABEL_75;
        }

        v5 |= 0x800u;
        *(a1 + 112) = *v7;
        *v45 = v7 + 8;
        goto LABEL_65;
      case 0xAu:
        if (v8 != 82)
        {
          goto LABEL_75;
        }

        *(a1 + 16) |= 0x40u;
        v21 = *(a1 + 8);
        v15 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v15 = *v15;
        }

        v16 = (a1 + 72);
        goto LABEL_63;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_75;
        }

        *(a1 + 16) |= 0x200u;
        v35 = *(a1 + 96);
        if (!v35)
        {
          v36 = *(a1 + 8);
          v37 = (v36 & 0xFFFFFFFFFFFFFFFCLL);
          if (v36)
          {
            v37 = *v37;
          }

          v35 = sub_16F5BD8(v37);
          *(a1 + 96) = v35;
          v7 = *v45;
        }

        v28 = sub_21F7188(a3, v35, v7);
        goto LABEL_64;
      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_75;
        }

        *(a1 + 16) |= 0x80u;
        v14 = *(a1 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = (a1 + 80);
LABEL_63:
        v34 = sub_194DB04(v16, v15);
        v28 = sub_1958890(v34, *v45, a3);
        goto LABEL_64;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_75;
        }

        v5 |= 0x1000u;
        v19 = v7 + 1;
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if (v20 < 0)
        {
          v41 = sub_19587DC(v7, v18);
          *v45 = v41;
          *(a1 + 120) = v42 != 0;
          if (!v41)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v19 = v7 + 2;
LABEL_25:
          *v45 = v19;
          *(a1 + 120) = v18 != 0;
        }

        goto LABEL_65;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_75;
        }

        v31 = v7 + 1;
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_56;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          *v45 = sub_19587DC(v7, v30);
          if (!*v45)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v31 = v7 + 2;
LABEL_56:
          *v45 = v31;
        }

        if (v30 > 5)
        {
          sub_1313778();
        }

        else
        {
          *(a1 + 16) |= 0x2000u;
          *(a1 + 124) = v30;
        }

        goto LABEL_65;
      default:
LABEL_75:
        if (v8)
        {
          v38 = (v8 & 7) == 4;
        }

        else
        {
          v38 = 1;
        }

        if (!v38)
        {
          v39 = *(a1 + 8);
          if (v39)
          {
            v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v40 = sub_11F1920((a1 + 8));
            v7 = *v45;
          }

          v28 = sub_1952690(v8, v40, v7, a3);
LABEL_64:
          *v45 = v28;
          if (!v28)
          {
            goto LABEL_92;
          }

LABEL_65:
          if (sub_195ADC0(a3, v45, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_92:
          *v45 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v45;
    }
  }
}

char *sub_13602DC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x400) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 104);
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

  if ((v5 & 0x100) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 88);
    *v6 = 18;
    v13 = *(v12 + 44);
    v6[1] = v13;
    if (v13 > 0x7F)
    {
      v14 = sub_19575D0(v13, v6 + 1);
    }

    else
    {
      v14 = v6 + 2;
    }

    v6 = sub_1917694(v12, v14, a3);
    if ((v5 & 1) == 0)
    {
LABEL_12:
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = sub_128AEEC(a3, 3, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 2) == 0)
  {
LABEL_13:
    if ((v5 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v6 = sub_128AEEC(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 4) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v6 = sub_128AEEC(a3, 5, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 8) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v6 = sub_128AEEC(a3, 6, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v6 = sub_128AEEC(a3, 7, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 0x20) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  v6 = sub_128AEEC(a3, 8, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_36:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v15 = *(a1 + 112);
  *v6 = 73;
  *(v6 + 1) = v15;
  v6 += 9;
  if ((v5 & 0x40) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v6 = sub_128AEEC(a3, 10, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_40:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v16 = *(a1 + 96);
  *v6 = 90;
  v17 = *(v16 + 44);
  v6[1] = v17;
  if (v17 > 0x7F)
  {
    v18 = sub_19575D0(v17, v6 + 1);
  }

  else
  {
    v18 = v6 + 2;
  }

  v6 = sub_16E886C(v16, v18, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_21:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

LABEL_47:
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v19 = *(a1 + 120);
    *v6 = 104;
    v6[1] = v19;
    v6 += 2;
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_46:
  v6 = sub_128AEEC(a3, 12, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v6);
  if ((v5 & 0x1000) != 0)
  {
    goto LABEL_47;
  }

LABEL_22:
  if ((v5 & 0x2000) == 0)
  {
LABEL_23:
    v11 = v6;
    goto LABEL_57;
  }

LABEL_50:
  if (*a3 <= v6)
  {
    v6 = sub_225EB68(a3, v6);
  }

  v20 = *(a1 + 124);
  *v6 = 112;
  v6[1] = v20;
  if (v20 > 0x7F)
  {
    v6[1] = v20 | 0x80;
    v21 = v20 >> 7;
    v6[2] = v20 >> 7;
    v11 = v6 + 3;
    if (v20 >= 0x4000)
    {
      LOBYTE(v22) = v6[2];
      do
      {
        *(v11 - 1) = v22 | 0x80;
        v22 = v21 >> 7;
        *v11++ = v21 >> 7;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
    }
  }

  else
  {
    v11 = v6 + 2;
  }

LABEL_57:
  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v11;
  }

  v26 = v24 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = *(v26 + 31);
  if (v27 < 0)
  {
    v28 = *(v26 + 8);
    v27 = *(v26 + 16);
  }

  else
  {
    v28 = (v26 + 8);
  }

  if ((*a3 - v11) >= v27)
  {
    v29 = v27;
    memcpy(v11, v28, v27);
    v11 += v29;
    return v11;
  }

  return sub_1957130(a3, v28, v27, v11);
}

uint64_t sub_13606D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_21;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v19 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v22 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_41:
  v25 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_44:
  v28 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_47:
  v31 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v32 = *(v31 + 23);
  v33 = *(v31 + 8);
  if ((v32 & 0x80u) == 0)
  {
    v33 = v32;
  }

  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_21:
  if ((v2 & 0x3F00) == 0)
  {
    goto LABEL_33;
  }

  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_24;
    }

LABEL_52:
    v35 = sub_16E8DA4(*(a1 + 96));
    v3 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v34 = sub_1917844(*(a1 + 88));
  v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  if ((v2 & 0x400) != 0)
  {
LABEL_25:
    v3 += ((9 * (__clz(*(a1 + 104) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_26:
  v13 = v3 + 9;
  if ((v2 & 0x800) == 0)
  {
    v13 = v3;
  }

  v3 = v13 + ((v2 >> 11) & 2);
  if ((v2 & 0x2000) != 0)
  {
    v14 = *(a1 + 124);
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v14 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 11;
    }

    v3 += v16;
  }

LABEL_33:
  v17 = *(a1 + 8);
  if (v17)
  {
    v36 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v37 < 0)
    {
      v37 = *(v36 + 16);
    }

    v3 += v37;
  }

  *(a1 + 20) = v3;
  return v3;
}

void *sub_1360A70(void *a1)
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

void sub_1360AE4(void *a1)
{
  sub_1360A70(a1);

  operator delete();
}

char *sub_1360B1C(uint64_t a1, char *a2, int32x2_t *a3)
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
      v31 = v20;
      *(a1 + 26) = v19 != 0;
      goto LABEL_35;
    }

    v29 = sub_19587DC(v7, v19);
    v31 = v29;
    *(a1 + 26) = v30 != 0;
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
      v31 = v17;
      *(a1 + 25) = v16 != 0;
      goto LABEL_35;
    }

    v25 = sub_19587DC(v7, v16);
    v31 = v25;
    *(a1 + 25) = v26 != 0;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_34:
      v31 = v23;
      *(a1 + 24) = v22 != 0;
      goto LABEL_35;
    }

    v27 = sub_19587DC(v7, v22);
    v31 = v27;
    *(a1 + 24) = v28 != 0;
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

char *sub_1360D94(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v8 = *(a1 + 25);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_11:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v9 = *(a1 + 26);
    *v4 = 24;
    v4[1] = v9;
    v4 += 2;
  }

LABEL_14:
  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v4;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 31);
  if (v13 < 0)
  {
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
  }

  else
  {
    v14 = (v12 + 8);
  }

  if ((*a3 - v4) >= v13)
  {
    v15 = v13;
    memcpy(v4, v14, v13);
    v4 += v15;
    return v4;
  }

  return sub_1957130(a3, v14, v13, v4);
}

uint64_t sub_1360EF0(uint64_t a1)
{
  v1 = 2 * (*(a1 + 16) & 1) + (*(a1 + 16) & 2) + ((*(a1 + 16) >> 1) & 2u);
  if ((*(a1 + 16) & 7) == 0)
  {
    v1 = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v1 += v5;
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_1360F5C(uint64_t a1)
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

  v5 = (a1 + 24);
  if (*(a1 + 24) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_1360FFC(uint64_t a1)
{
  sub_1360F5C(a1);

  operator delete();
}

uint64_t sub_1361034(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v65 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v65, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v65 + 1);
    v8 = **v65;
    if (**v65 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v65, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v65 + 2);
      }
    }

    *v65 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 5)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_74;
        }

        v5 |= 2u;
        v27 = v7 + 1;
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_49;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = v7 + 2;
LABEL_49:
          *v65 = v27;
          *(a1 + 32) = v26;
          goto LABEL_82;
        }

        v52 = sub_19587DC(v7, v26);
        *v65 = v52;
        *(a1 + 32) = v53;
        if (!v52)
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (v11 != 2 || v8 != 16)
        {
          goto LABEL_74;
        }

        v5 |= 4u;
        v21 = v7 + 1;
        v20 = *v7;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = v7 + 2;
LABEL_37:
          *v65 = v21;
          *(a1 + 40) = v20;
          goto LABEL_82;
        }

        v48 = sub_19587DC(v7, v20);
        *v65 = v48;
        *(a1 + 40) = v49;
        if (!v48)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_74;
      }

      v5 |= 8u;
      v33 = v7 + 1;
      v32 = *v7;
      if ((v32 & 0x8000000000000000) == 0)
      {
        goto LABEL_59;
      }

      v34 = *v33;
      v32 = (v34 << 7) + v32 - 128;
      if ((v34 & 0x80000000) == 0)
      {
        v33 = v7 + 2;
LABEL_59:
        *v65 = v33;
        *(a1 + 48) = v32 != 0;
        goto LABEL_82;
      }

      v56 = sub_19587DC(v7, v32);
      *v65 = v56;
      *(a1 + 48) = v57 != 0;
      if (!v56)
      {
        goto LABEL_106;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_74;
      }

      v5 |= 0x10u;
      v40 = v7 + 1;
      v39 = *v7;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v41 = *v40;
      v39 = (v41 << 7) + v39 - 128;
      if ((v41 & 0x80000000) == 0)
      {
        v40 = v7 + 2;
LABEL_68:
        *v65 = v40;
        *(a1 + 49) = v39 != 0;
        goto LABEL_82;
      }

      v61 = sub_19587DC(v7, v39);
      *v65 = v61;
      *(a1 + 49) = v62 != 0;
      if (!v61)
      {
        goto LABEL_106;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_74;
      }

      v5 |= 0x20u;
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
        *v65 = v13;
        *(a1 + 50) = v12 != 0;
        goto LABEL_82;
      }

      v58 = sub_19587DC(v7, v12);
      *v65 = v58;
      *(a1 + 50) = v59 != 0;
      if (!v58)
      {
        goto LABEL_106;
      }
    }

LABEL_82:
    if (sub_195ADC0(a3, v65, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 7)
  {
    if (v11 == 6)
    {
      if (v8 != 48)
      {
        goto LABEL_74;
      }

      v5 |= 0x100u;
      v30 = v7 + 1;
      v29 = *v7;
      if ((v29 & 0x8000000000000000) == 0)
      {
        goto LABEL_54;
      }

      v31 = *v30;
      v29 = (v31 << 7) + v29 - 128;
      if ((v31 & 0x80000000) == 0)
      {
        v30 = v7 + 2;
LABEL_54:
        *v65 = v30;
        *(a1 + 56) = v29;
        goto LABEL_82;
      }

      v54 = sub_19587DC(v7, v29);
      *v65 = v54;
      *(a1 + 56) = v55;
      if (!v54)
      {
        goto LABEL_106;
      }
    }

    else
    {
      if (v11 != 7 || v8 != 56)
      {
        goto LABEL_74;
      }

      v5 |= 0x40u;
      v24 = v7 + 1;
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_44;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = v7 + 2;
LABEL_44:
        *v65 = v24;
        *(a1 + 51) = v23 != 0;
        goto LABEL_82;
      }

      v50 = sub_19587DC(v7, v23);
      *v65 = v50;
      *(a1 + 51) = v51 != 0;
      if (!v50)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_82;
  }

  if (v11 == 8)
  {
    if (v8 != 66)
    {
      goto LABEL_74;
    }

    *(a1 + 16) |= 1u;
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    v37 = sub_194DB04((a1 + 24), v36);
    v38 = sub_1958890(v37, *v65, a3);
LABEL_81:
    *v65 = v38;
    if (!v38)
    {
      goto LABEL_106;
    }

    goto LABEL_82;
  }

  if (v11 == 9)
  {
    if (v8 != 72)
    {
      goto LABEL_74;
    }

    v5 |= 0x80u;
    v43 = v7 + 1;
    v42 = *v7;
    if ((v42 & 0x8000000000000000) == 0)
    {
      goto LABEL_73;
    }

    v44 = *v43;
    v42 = (v44 << 7) + v42 - 128;
    if ((v44 & 0x80000000) == 0)
    {
      v43 = v7 + 2;
LABEL_73:
      *v65 = v43;
      *(a1 + 52) = v42 != 0;
      goto LABEL_82;
    }

    v63 = sub_19587DC(v7, v42);
    *v65 = v63;
    *(a1 + 52) = v64 != 0;
    if (!v63)
    {
      goto LABEL_106;
    }

    goto LABEL_82;
  }

  if (v11 == 10 && v8 == 80)
  {
    v15 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v17 = *v15;
    v18 = (v17 << 7) + v16;
    LODWORD(v16) = v18 - 128;
    if (v17 < 0)
    {
      *v65 = sub_19587DC(v7, (v18 - 128));
      if (!*v65)
      {
        goto LABEL_106;
      }

      LODWORD(v16) = v60;
    }

    else
    {
      v15 = v7 + 2;
LABEL_25:
      *v65 = v15;
    }

    if (sub_1393054(v16))
    {
      *(a1 + 16) |= 0x200u;
      *(a1 + 64) = v16;
    }

    else
    {
      sub_12E8488();
    }

    goto LABEL_82;
  }

LABEL_74:
  if (v8)
  {
    v45 = (v8 & 7) == 4;
  }

  else
  {
    v45 = 1;
  }

  if (!v45)
  {
    v46 = *(a1 + 8);
    if (v46)
    {
      v47 = (v46 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v47 = sub_11F1920((a1 + 8));
      v7 = *v65;
    }

    v38 = sub_1952690(v8, v47, v7, a3);
    goto LABEL_81;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_106:
  *v65 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v65;
}

char *sub_13615B0(uint64_t a1, char *__dst, unint64_t *a3)
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
    v11 += 2;
    if ((v5 & 0x10) == 0)
    {
LABEL_21:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_22;
      }

LABEL_30:
      if (*a3 <= v11)
      {
        v11 = sub_225EB68(a3, v11);
      }

      v18 = *(a1 + 50);
      *v11 = 40;
      v11[1] = v18;
      v11 += 2;
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_21;
  }

  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v17 = *(a1 + 49);
  *v11 = 32;
  v11[1] = v17;
  v11 += 2;
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_30;
  }

LABEL_22:
  if ((v5 & 0x100) == 0)
  {
LABEL_23:
    v15 = v11;
    goto LABEL_40;
  }

LABEL_33:
  if (*a3 <= v11)
  {
    v11 = sub_225EB68(a3, v11);
  }

  v19 = *(a1 + 56);
  *v11 = 48;
  v11[1] = v19;
  if (v19 > 0x7F)
  {
    v11[1] = v19 | 0x80;
    v20 = v19 >> 7;
    v11[2] = v19 >> 7;
    v15 = v11 + 3;
    if (v19 >= 0x4000)
    {
      LOBYTE(v21) = v11[2];
      do
      {
        *(v15 - 1) = v21 | 0x80;
        v21 = v20 >> 7;
        *v15++ = v20 >> 7;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
    }
  }

  else
  {
    v15 = v11 + 2;
  }

LABEL_40:
  if ((v5 & 0x40) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v24 = *(a1 + 51);
    *v15 = 56;
    v15[1] = v24;
    v15 += 2;
    if ((v5 & 1) == 0)
    {
LABEL_42:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_43;
      }

LABEL_49:
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v25 = *(a1 + 52);
      *v15 = 72;
      v15[1] = v25;
      v15 += 2;
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_42;
  }

  v15 = sub_128AEEC(a3, 8, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_49;
  }

LABEL_43:
  if ((v5 & 0x200) == 0)
  {
LABEL_44:
    v23 = v15;
    goto LABEL_59;
  }

LABEL_52:
  if (*a3 <= v15)
  {
    v15 = sub_225EB68(a3, v15);
  }

  v26 = *(a1 + 64);
  *v15 = 80;
  v15[1] = v26;
  if (v26 > 0x7F)
  {
    v15[1] = v26 | 0x80;
    v27 = v26 >> 7;
    v15[2] = v26 >> 7;
    v23 = v15 + 3;
    if (v26 >= 0x4000)
    {
      LOBYTE(v28) = v15[2];
      do
      {
        *(v23 - 1) = v28 | 0x80;
        v28 = v27 >> 7;
        *v23++ = v27 >> 7;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
    }
  }

  else
  {
    v23 = v15 + 2;
  }

LABEL_59:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return v23;
  }

  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = *(v32 + 31);
  if (v33 < 0)
  {
    v34 = *(v32 + 8);
    v33 = *(v32 + 16);
  }

  else
  {
    v34 = (v32 + 8);
  }

  if ((*a3 - v23) >= v33)
  {
    v35 = v33;
    memcpy(v23, v34, v33);
    v23 += v35;
    return v23;
  }

  return sub_1957130(a3, v34, v33, v23);
}