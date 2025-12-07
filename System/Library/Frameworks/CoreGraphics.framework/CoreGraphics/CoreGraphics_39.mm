uint64_t RGB555_image(uint64_t *a1, unsigned __int8 *a2, float *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v42, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = a3[2] >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v25, v42) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *a3;
  *(&v25 + 1) = __PAIR64__(*v6, *a3);
  if (v10 == 67449668)
  {
    if (!v36 && (~DWORD1(v26) & 0xC3) == 0 && a3[2] >= 1.0 && !*(a3 + 3))
    {
      if ((BYTE4(v26) & 4) != 0)
      {
        *(a2 + 8) = *(a3 + 4);
      }

      RGB555_mark(a1);
      return 1;
    }

    *&v25 = rgb555_sample_RGB555;
    goto LABEL_46;
  }

  v11 = SAMPLEINDEX(v10);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 > 0xB)
  {
    goto LABEL_28;
  }

  if (v11 > 6)
  {
    switch(v11)
    {
      case 7u:
        v12 = 0;
        v13 = 32;
        break;
      case 9u:
        v12 = 0;
        v13 = 40;
        break;
      case 8u:
        v12 = 0;
        v13 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v11 == 2)
  {
    if (!*(a2 + 12))
    {
      v12 = 0;
      v13 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v13 = 255;
    v12 = 1;
    goto LABEL_29;
  }

  if (v11 != 5)
  {
    if (v11 == 6)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v12 = 0;
  v13 = 24;
LABEL_29:
  *&v25 = rgb555_image_sample[v11 + 1];
  if (v25)
  {
    if (!*(a3 + 5) || (v14 = *a3, (HIWORD(*a3) & 0x3Fu) <= (*(v6 + 2) & 0x3Fu)))
    {
      DWORD2(v25) = 67449684;
      goto LABEL_45;
    }
  }

  else
  {
    v14 = *a3;
  }

  if ((HIWORD(v14) & 0x3F) > 8u)
  {
    if ((v14 & 0x3F0000) >> 16 > 0x10)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v15 = RGB8_image_sample;
    *&v25 = *&RGB8_image_sample[2 * v11 + 2];
    if (v25)
    {
      goto LABEL_43;
    }
  }

  v15 = RGB16_image_sample;
  *&v25 = *&RGB16_image_sample[2 * v11 + 2];
  if (!v25)
  {
LABEL_40:
    v15 = RGBF_image_sample;
    *&v25 = *&RGBF_image_sample[2 * v11 + 2];
    if (v25)
    {
      v16 = 16;
      goto LABEL_42;
    }

    return 0xFFFFFFFFLL;
  }

  v16 = 8;
LABEL_42:
  LODWORD(v26) = v16;
LABEL_43:
  DWORD2(v25) = *v15;
  if (*(a3 + 5))
  {
    *(&v35 + 1) = pixel_dither_noise;
  }

LABEL_45:
  if ((v12 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v26) & 7) != 3 || a2[2] != 5 && a2[2] || v11 > 0xB)
  {
    goto LABEL_46;
  }

  HIDWORD(v18) = v13;
  LODWORD(v18) = v13;
  v17 = v18 >> 3;
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      *(&v25 + 2) = *a3;
      v19 = RGB555_image_mark_RGB24;
      goto LABEL_74;
    }

    if (v17 == 4)
    {
      *(&v25 + 2) = *a3;
      v19 = RGB555_image_mark_rgb32;
      goto LABEL_74;
    }

    if (v17 != 5)
    {
      goto LABEL_46;
    }

    *(&v25 + 2) = *a3;
    v20 = RGB555_image_mark_rgb32;
LABEL_72:
    v21 = v20;
    v22 = a2;
    v23 = v8;
    v24 = 8;
LABEL_75:
    rgb555_image_mark_image(v22, &v25, v23, v24, v21);
    return 1;
  }

  switch(v17)
  {
    case 0:
      *(&v25 + 2) = *a3;
      v19 = RGB555_image_mark_RGB32;
      goto LABEL_74;
    case 1:
      *(&v25 + 2) = *a3;
      v20 = RGB555_image_mark_RGB32;
      goto LABEL_72;
    case 2:
      *(&v25 + 2) = *a3;
      v19 = RGB555_image_mark_W8;
LABEL_74:
      v21 = v19;
      v22 = a2;
      v23 = v8;
      v24 = 0;
      goto LABEL_75;
  }

LABEL_46:
  RGB555_image_mark(a2, &v25, v8);
  return 1;
}

uint64_t RGB555_mark(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v834 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(v2 + 96);
  v6 = *(v2 + 48);
  v7 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v5 == 0) + 4 * (v6 == 0));
  if (v7 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(v2 + 4);
  v10 = v9 - 1;
  if (v9 < 1)
  {
    return 0;
  }

  v11 = *(v2 + 8);
  v12 = (v11 - 1);
  if (v11 < 1)
  {
    return 0;
  }

  v13 = *(v2 + 136);
  v739 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v5 == 0) + 4 * (v6 == 0));
  v736 = v2;
  if ((v4 & 0xFF0000) == 0x50000 || !v13)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      v833[0] = *(v2 + 4);
      v823[0] = v11;
      if (v5)
      {
        v15 = *v5;
      }

      else
      {
        v15 = 255;
      }

      v28 = **(v2 + 88);
      v29 = __rev16(v28);
      v30 = *(v2 + 12);
      v31 = *(v2 + 16);
      v32 = *(v2 + 28) >> 1;
      if (v6)
      {
        v814 = *(v2 + 32);
        v812 = (v6 + v814 * v31 + v30);
        v783 = 1;
      }

      else
      {
        v812 = 0;
        v814 = 0;
        v783 = 0;
      }

      v40 = ~v15;
      v41 = *(v2 + 40) + 2 * v31 * v32 + 2 * v30;
      v775 = *(v2 + 28) >> 1;
      v785 = v41;
      if (v13)
      {
        shape_enum_clip_alloc(v1, v2, v13, 1, 1, 1, *(v2 + 104), *(v2 + 108), v9, v11);
        v43 = v42;
        v44 = v812;
        __b = v814;
        if (v42)
        {
          goto LABEL_1255;
        }

        return 1;
      }

      v816 = 0;
      if (v6)
      {
        v45 = v9;
      }

      else
      {
        v45 = 0;
      }

      v44 = v812;
      __b = v814 - v45;
      v46 = v41;
      v47 = v9;
LABEL_928:
      v819 = v32 - v47;
      v767 = v9;
      switch(v7)
      {
        case 0:
          v583 = v819 + v9;
          v584 = v823[0];
          v585 = v823[0] - 1;
          v586 = &v46[2 * ((v583 * v585) & (v583 >> 63))];
          if (v583 < 0)
          {
            v583 = -v583;
          }

          v587 = v9;
          CGBlt_fillBytes(2 * v9, v823[0], 0, v586, 2 * v583);
          if (!v6)
          {
            goto LABEL_1241;
          }

          v588 = __b + v587;
          v44 += (v588 * v585) & (v588 >> 63);
          if (v588 >= 0)
          {
            v589 = __b + v587;
          }

          else
          {
            v589 = -v588;
          }

          v590 = v587;
          v591 = v584;
          v592 = 0;
          goto LABEL_1076;
        case 1:
          v643 = v9;
          v644 = v819 + v9;
          if (v644 < 0)
          {
            v46 += 2 * v644 * (v823[0] - 1);
            v644 = -v644;
          }

          v645 = 0;
          v646 = *(v736 + 88);
          if (v646)
          {
            v645 = *v646;
          }

          v647 = v823[0];
          v648 = v46;
          v649 = v9;
          CGBlt_fillBytes(2 * v9, v823[0], v645, v648, 2 * v644);
          if (v6)
          {
            v591 = v647;
            v650 = *(v736 + 96);
            if (!v650)
            {
              v650 = &PIXELALPHAPLANARCONSTANT_18034;
            }

            v44 += ((__b + v643) * (v647 - 1)) & ((__b + v643) >> 63);
            if (__b + v643 >= 0)
            {
              v589 = __b + v643;
            }

            else
            {
              v589 = -(__b + v643);
            }

            v592 = *v650;
            v590 = v649;
LABEL_1076:
            __b = v589;
            CGBlt_fillBytes(v590, v591, v592, v44, v589);
          }

          goto LABEL_1241;
        case 2:
          v624 = 4 * v783;
          if (v6)
          {
            do
            {
              v625 = v833[0];
              if (v833[0] >= 4)
              {
                v626 = (v833[0] >> 2) + 1;
                do
                {
                  v627 = PDAplusDAM(v29, v15, bswap32(*v46) >> 16, *v44, ~v15);
                  *v46 = bswap32(v627) >> 16;
                  *v44 = HIBYTE(v627);
                  v628 = PDAplusDAM(v29, v15, bswap32(*(v46 + 1)) >> 16, v44[1], ~v15);
                  *(v46 + 1) = bswap32(v628) >> 16;
                  v44[1] = HIBYTE(v628);
                  v629 = PDAplusDAM(v29, v15, bswap32(*(v46 + 2)) >> 16, v44[2], ~v15);
                  *(v46 + 2) = bswap32(v629) >> 16;
                  v44[2] = HIBYTE(v629);
                  v630 = PDAplusDAM(v29, v15, bswap32(*(v46 + 3)) >> 16, v44[3], ~v15);
                  *(v46 + 3) = bswap32(v630) >> 16;
                  v44[3] = HIBYTE(v630);
                  v46 += 8;
                  v44 += v624;
                  --v626;
                }

                while (v626 > 1);
                v625 = v833[0] & 3;
              }

              if (v625 >= 1)
              {
                v631 = v625 + 1;
                do
                {
                  v632 = PDAplusDAM(v29, v15, bswap32(*v46) >> 16, *v44, ~v15);
                  *v46 = bswap32(v632) >> 16;
                  v46 += 2;
                  *v44 = HIBYTE(v632);
                  v44 += v783;
                  --v631;
                }

                while (v631 > 1);
              }

              v46 += 2 * v819;
              v44 += __b;
              --v823[0];
            }

            while (v823[0]);
            goto LABEL_1252;
          }

          v704 = v823[0];
          v774 = v9 & 3;
          v772 = (v9 >> 2) + 1;
          do
          {
            v782 = v704;
            if (v9 < 4)
            {
              v706 = v9;
            }

            else
            {
              v705 = v772;
              do
              {
                *v46 = __rev16(PDplusDM(v29, bswap32(*v46) >> 16, ~v15));
                *(v46 + 1) = __rev16(PDplusDM(v29, bswap32(*(v46 + 1)) >> 16, ~v15));
                *(v46 + 2) = __rev16(PDplusDM(v29, bswap32(*(v46 + 2)) >> 16, ~v15));
                *(v46 + 3) = __rev16(PDplusDM(v29, bswap32(*(v46 + 3)) >> 16, ~v15));
                v46 += 8;
                v44 += v624;
                --v705;
              }

              while (v705 > 1);
              v706 = v774;
              LODWORD(v9) = v767;
            }

            if (v706 >= 1)
            {
              v707 = v706 + 1;
              do
              {
                *v46 = __rev16(PDplusDM(v29, bswap32(*v46) >> 16, ~v15));
                v46 += 2;
                --v707;
              }

              while (v707 > 1);
              v44 += v706 * v783;
              v32 = v775;
              LODWORD(v9) = v767;
            }

            v46 += 2 * v819;
            v44 += __b;
            v704 = v782 - 1;
          }

          while (v782 != 1);
          v823[0] = 0;
LABEL_1241:
          v7 = v739;
          goto LABEL_1253;
        case 3:
          v593 = v32;
          do
          {
            v637 = v833[0];
            do
            {
              v638 = *v44;
              if (v638 > 7)
              {
                if (v638 < 0xF8)
                {
                  v640 = PDAM(v29, v15, v638);
                  *v46 = bswap32(v640) >> 16;
                  v639 = HIBYTE(v640);
                }

                else
                {
                  *v46 = v28;
                  LOBYTE(v639) = v15;
                }
              }

              else
              {
                LOBYTE(v639) = 0;
                *v46 = 0;
              }

              *v44 = v639;
              v46 += 2;
              v44 += v783;
              --v637;
            }

            while (v637);
            v46 += 2 * v819;
            v44 += __b;
            --v823[0];
          }

          while (v823[0]);
          goto LABEL_1218;
        case 4:
          v593 = v32;
          do
          {
            v608 = v833[0];
            do
            {
              v609 = *v44;
              if (v609 < 0xF8)
              {
                if (v609 > 7)
                {
                  v611 = PDAM(v29, v15, ~v609);
                  *v46 = bswap32(v611) >> 16;
                  v610 = HIBYTE(v611);
                }

                else
                {
                  *v46 = v28;
                  LOBYTE(v610) = v15;
                }
              }

              else
              {
                LOBYTE(v610) = 0;
                *v46 = 0;
              }

              *v44 = v610;
              v46 += 2;
              v44 += v783;
              --v608;
            }

            while (v608);
            v46 += 2 * v819;
            v44 += __b;
            --v823[0];
          }

          while (v823[0]);
          goto LABEL_1218;
        case 5:
          v593 = v32;
          do
          {
            v659 = v833[0];
            do
            {
              v660 = PDAMplusDAM(v29, v15, *v44, bswap32(*v46) >> 16, *v44, ~v15);
              *v46 = bswap32(v660) >> 16;
              v46 += 2;
              *v44 = HIBYTE(v660);
              v44 += v783;
              --v659;
            }

            while (v659);
            v46 += 2 * v819;
            v44 += __b;
            --v823[0];
          }

          while (v823[0]);
          goto LABEL_1218;
        case 6:
          v593 = v32;
          while (1)
          {
            v669 = v833[0];
            do
            {
              v670 = *v44;
              if (v670 > 7)
              {
                if (v670 > 0xF7)
                {
                  goto LABEL_1141;
                }

                v672 = PDAplusDAM(bswap32(*v46) >> 16, v670, v29, v15, ~v670);
                *v46 = bswap32(v672) >> 16;
                v671 = HIBYTE(v672);
              }

              else
              {
                *v46 = v28;
                LOBYTE(v671) = v15;
              }

              *v44 = v671;
LABEL_1141:
              v46 += 2;
              v44 += v783;
              --v669;
            }

            while (v669);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 7:
          if (v6)
          {
            do
            {
              v641 = v833[0];
              do
              {
                v642 = PDAM(bswap32(*v46) >> 16, *v44, v15);
                *v46 = bswap32(v642) >> 16;
                v46 += 2;
                *v44 = HIBYTE(v642);
                v44 += v783;
                --v641;
              }

              while (v641);
              v46 += 2 * v819;
              v44 += __b;
              --v823[0];
            }

            while (v823[0]);
            goto LABEL_1252;
          }

          v708 = v823[0];
          v709 = v783 + v783 * (v9 - 1);
          do
          {
            v710 = v9;
            do
            {
              *v46 = __rev16(PDM(bswap32(*v46) >> 16, v15));
              v46 += 2;
              --v710;
            }

            while (v710);
            v46 += 2 * v819;
            v44 += v709 + __b;
            --v708;
            LODWORD(v9) = v767;
          }

          while (v708);
          goto LABEL_1251;
        case 8:
          if (v6)
          {
            do
            {
              v679 = v833[0];
              do
              {
                v680 = PDAM(bswap32(*v46) >> 16, *v44, v40);
                *v46 = bswap32(v680) >> 16;
                v46 += 2;
                *v44 = HIBYTE(v680);
                v44 += v783;
                --v679;
              }

              while (v679);
              v46 += 2 * v819;
              v44 += __b;
              --v823[0];
            }

            while (v823[0]);
            goto LABEL_1252;
          }

          v711 = v823[0];
          v712 = v783 + v783 * (v9 - 1);
          do
          {
            v713 = v9;
            do
            {
              *v46 = __rev16(PDM(bswap32(*v46) >> 16, v40));
              v46 += 2;
              --v713;
            }

            while (v713);
            v46 += 2 * v819;
            v44 += v712 + __b;
            --v711;
            LODWORD(v9) = v767;
          }

          while (v711);
          goto LABEL_1251;
        case 9:
          v593 = v32;
          do
          {
            v614 = v833[0];
            do
            {
              v615 = PDAMplusDAM(v29, v15, *v44 ^ 0xFFu, bswap32(*v46) >> 16, *v44, v15);
              *v46 = bswap32(v615) >> 16;
              v46 += 2;
              *v44 = HIBYTE(v615);
              v44 += v783;
              --v614;
            }

            while (v614);
            v46 += 2 * v819;
            v44 += __b;
            --v823[0];
          }

          while (v823[0]);
          goto LABEL_1218;
        case 10:
          v593 = v32;
          do
          {
            v677 = v833[0];
            do
            {
              v678 = PDAMplusDAM(v29, v15, *v44 ^ 0xFFu, bswap32(*v46) >> 16, *v44, ~v15);
              *v46 = bswap32(v678) >> 16;
              v46 += 2;
              *v44 = HIBYTE(v678);
              v44 += v783;
              --v677;
            }

            while (v677);
            v46 += 2 * v819;
            v44 += __b;
            --v823[0];
          }

          while (v823[0]);
          goto LABEL_1218;
        case 11:
          if (v6)
          {
            do
            {
              v606 = v833[0];
              do
              {
                v607 = PDAplusdDA(bswap32(*v46) >> 16, *v44, v29, v15);
                *v46 = bswap32(v607) >> 16;
                v46 += 2;
                *v44 = HIBYTE(v607);
                v44 += v783;
                --v606;
              }

              while (v606);
              v46 += 2 * v819;
              v44 += __b;
              --v823[0];
            }

            while (v823[0]);
          }

          else
          {
            v697 = v823[0];
            v698 = v783 + v783 * (v9 - 1);
            do
            {
              v699 = v9;
              do
              {
                *v46 = __rev16(PDplusdDA(bswap32(*v46) >> 16, v29, v15));
                v46 += 2;
                --v699;
              }

              while (v699);
              v46 += 2 * v819;
              v44 += v698 + __b;
              --v697;
              LODWORD(v9) = v767;
            }

            while (v697);
LABEL_1251:
            v823[0] = 0;
          }

LABEL_1252:
          v7 = v739;
          v32 = v775;
          goto LABEL_1253;
        case 12:
          if (v6)
          {
            v593 = v32;
            do
            {
              v612 = v833[0];
              do
              {
                v613 = PDApluslDA(bswap32(*v46) >> 16, *v44, v29, v15);
                *v46 = bswap32(v613) >> 16;
                v46 += 2;
                *v44 = HIBYTE(v613);
                v44 += v783;
                --v612;
              }

              while (v612);
              v46 += 2 * v819;
              v44 += __b;
              --v823[0];
            }

            while (v823[0]);
            goto LABEL_1218;
          }

          v700 = v823[0];
          do
          {
            v701 = v9;
            do
            {
              v702 = bswap32(*v46);
              v703 = (((HIWORD(v702) << 15) | HIWORD(v702)) & 0x1F07C1F) + ((v29 | (v29 << 15)) & 0x1F07C1F);
              *v46 = __rev16((((15 * ((v703 >> 5) & 0x100401)) | v703 | (30 * ((v703 >> 5) & 0x100401))) >> 15) & 0x3E0 | ((15 * ((v703 >> 5) & 0x100401)) | v703 | (30 * ((v703 >> 5) & 0x100401))) & 0x7C1F);
              v46 += 2;
              --v701;
            }

            while (v701);
            v46 += 2 * v819;
            v44 += v783 + v783 * (v9 - 1) + __b;
            --v700;
          }

          while (v700);
          v823[0] = 0;
          goto LABEL_1253;
        case 13:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v665 = v833[0];
            do
            {
              if (v6)
              {
                v666 = *v44;
                if (v666 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v667) = v15;
                  goto LABEL_1130;
                }
              }

              else
              {
                v666 = 255;
              }

              v668 = PDAmultiplyPDA(bswap32(*v46) >> 16, v666, v29, v15);
              *v46 = bswap32(v668) >> 16;
              if (!v6)
              {
                goto LABEL_1131;
              }

              v667 = HIBYTE(v668);
LABEL_1130:
              *v44 = v667;
LABEL_1131:
              v46 += 2;
              v44 += v783;
              --v665;
            }

            while (v665);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 14:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v602 = v833[0];
            do
            {
              if (v6)
              {
                v603 = *v44;
                if (v603 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v604) = v15;
                  goto LABEL_971;
                }
              }

              else
              {
                v603 = 255;
              }

              v605 = PDAscreenPDA(bswap32(*v46) >> 16, v603, v29, v15);
              *v46 = bswap32(v605) >> 16;
              if (!v6)
              {
                goto LABEL_972;
              }

              v604 = HIBYTE(v605);
LABEL_971:
              *v44 = v604;
LABEL_972:
              v46 += 2;
              v44 += v783;
              --v602;
            }

            while (v602);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 15:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v633 = v833[0];
            do
            {
              if (v6)
              {
                v634 = *v44;
                if (v634 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v635) = v15;
                  goto LABEL_1046;
                }
              }

              else
              {
                v634 = 255;
              }

              v636 = PDAoverlayPDA(bswap32(*v46) >> 16, v634, v29, v15);
              *v46 = bswap32(v636) >> 16;
              if (!v6)
              {
                goto LABEL_1047;
              }

              v635 = HIBYTE(v636);
LABEL_1046:
              *v44 = v635;
LABEL_1047:
              v46 += 2;
              v44 += v783;
              --v633;
            }

            while (v633);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 16:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v598 = v833[0];
            do
            {
              if (v6)
              {
                v599 = *v44;
                if (v599 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v600) = v15;
                  goto LABEL_958;
                }
              }

              else
              {
                v599 = 255;
              }

              v601 = PDAdarkenPDA(bswap32(*v46) >> 16, v599, v29, v15);
              *v46 = bswap32(v601) >> 16;
              if (!v6)
              {
                goto LABEL_959;
              }

              v600 = HIBYTE(v601);
LABEL_958:
              *v44 = v600;
LABEL_959:
              v46 += 2;
              v44 += v783;
              --v598;
            }

            while (v598);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 17:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v651 = v833[0];
            do
            {
              if (v6)
              {
                v652 = *v44;
                if (v652 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v653) = v15;
                  goto LABEL_1086;
                }
              }

              else
              {
                v652 = 255;
              }

              v654 = PDAlightenPDA(bswap32(*v46) >> 16, v652, v29, v15);
              *v46 = bswap32(v654) >> 16;
              if (!v6)
              {
                goto LABEL_1087;
              }

              v653 = HIBYTE(v654);
LABEL_1086:
              *v44 = v653;
LABEL_1087:
              v46 += 2;
              v44 += v783;
              --v651;
            }

            while (v651);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 18:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v673 = v833[0];
            do
            {
              if (v6)
              {
                v674 = *v44;
                if (v674 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v675) = v15;
                  goto LABEL_1153;
                }
              }

              else
              {
                v674 = 255;
              }

              v676 = PDAcolordodgePDA(bswap32(*v46) >> 16, v674, v29, v15);
              *v46 = bswap32(v676) >> 16;
              if (!v6)
              {
                goto LABEL_1154;
              }

              v675 = HIBYTE(v676);
LABEL_1153:
              *v44 = v675;
LABEL_1154:
              v46 += 2;
              v44 += v783;
              --v673;
            }

            while (v673);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 19:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v685 = v833[0];
            do
            {
              if (v6)
              {
                v686 = *v44;
                if (v686 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v687) = v15;
                  goto LABEL_1189;
                }
              }

              else
              {
                v686 = 255;
              }

              v688 = PDAcolorburnPDA(bswap32(*v46) >> 16, v686, v29, v15);
              *v46 = bswap32(v688) >> 16;
              if (!v6)
              {
                goto LABEL_1190;
              }

              v687 = HIBYTE(v688);
LABEL_1189:
              *v44 = v687;
LABEL_1190:
              v46 += 2;
              v44 += v783;
              --v685;
            }

            while (v685);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 20:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v655 = v833[0];
            do
            {
              if (v6)
              {
                v656 = *v44;
                if (v656 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v657) = v15;
                  goto LABEL_1099;
                }
              }

              else
              {
                v656 = 255;
              }

              v658 = PDAsoftlightPDA(bswap32(*v46) >> 16, v656, v29, v15);
              *v46 = bswap32(v658) >> 16;
              if (!v6)
              {
                goto LABEL_1100;
              }

              v657 = HIBYTE(v658);
LABEL_1099:
              *v44 = v657;
LABEL_1100:
              v46 += 2;
              v44 += v783;
              --v655;
            }

            while (v655);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 21:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v661 = v833[0];
            do
            {
              if (v6)
              {
                v662 = *v44;
                if (v662 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v663) = v15;
                  goto LABEL_1117;
                }
              }

              else
              {
                v662 = 255;
              }

              v664 = PDAhardlightPDA(bswap32(*v46) >> 16, v662, v29, v15);
              *v46 = bswap32(v664) >> 16;
              if (!v6)
              {
                goto LABEL_1118;
              }

              v663 = HIBYTE(v664);
LABEL_1117:
              *v44 = v663;
LABEL_1118:
              v46 += 2;
              v44 += v783;
              --v661;
            }

            while (v661);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 22:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v681 = v833[0];
            do
            {
              if (v6)
              {
                v682 = *v44;
                if (v682 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v683) = v15;
                  goto LABEL_1176;
                }
              }

              else
              {
                v682 = 255;
              }

              v684 = PDAdifferencePDA(bswap32(*v46) >> 16, v682, v29, v15);
              *v46 = bswap32(v684) >> 16;
              if (!v6)
              {
                goto LABEL_1177;
              }

              v683 = HIBYTE(v684);
LABEL_1176:
              *v44 = v683;
LABEL_1177:
              v46 += 2;
              v44 += v783;
              --v681;
            }

            while (v681);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 23:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v689 = v833[0];
            do
            {
              if (v6)
              {
                v690 = *v44;
                if (v690 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v691) = v15;
                  goto LABEL_1202;
                }
              }

              else
              {
                v690 = 255;
              }

              v692 = PDAexclusionPDA(bswap32(*v46) >> 16, v690, v29, v15);
              *v46 = bswap32(v692) >> 16;
              if (!v6)
              {
                goto LABEL_1203;
              }

              v691 = HIBYTE(v692);
LABEL_1202:
              *v44 = v691;
LABEL_1203:
              v46 += 2;
              v44 += v783;
              --v689;
            }

            while (v689);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 24:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v620 = v833[0];
            do
            {
              if (v6)
              {
                v621 = *v44;
                if (v621 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v622) = v15;
                  goto LABEL_1023;
                }
              }

              else
              {
                v621 = 255;
              }

              v623 = PDAhuePDA(bswap32(*v46) >> 16, v621, v29, v15);
              *v46 = bswap32(v623) >> 16;
              if (!v6)
              {
                goto LABEL_1024;
              }

              v622 = HIBYTE(v623);
LABEL_1023:
              *v44 = v622;
LABEL_1024:
              v46 += 2;
              v44 += v783;
              --v620;
            }

            while (v620);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 25:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v616 = v833[0];
            do
            {
              if (v6)
              {
                v617 = *v44;
                if (v617 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v618) = v15;
                  goto LABEL_1010;
                }
              }

              else
              {
                v617 = 255;
              }

              v619 = PDAsaturationPDA(bswap32(*v46) >> 16, v617, v29, v15);
              *v46 = bswap32(v619) >> 16;
              if (!v6)
              {
                goto LABEL_1011;
              }

              v618 = HIBYTE(v619);
LABEL_1010:
              *v44 = v618;
LABEL_1011:
              v46 += 2;
              v44 += v783;
              --v616;
            }

            while (v616);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
              goto LABEL_1218;
            }
          }

        case 26:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          while (1)
          {
            v693 = v833[0];
            do
            {
              if (v6)
              {
                v694 = *v44;
                if (v694 <= 7)
                {
                  *v46 = v28;
                  LOBYTE(v695) = v15;
                  goto LABEL_1215;
                }
              }

              else
              {
                v694 = 255;
              }

              v696 = PDAluminosityPDA(v29, v15, bswap32(*v46) >> 16, v694);
              *v46 = bswap32(v696) >> 16;
              if (!v6)
              {
                goto LABEL_1216;
              }

              v695 = HIBYTE(v696);
LABEL_1215:
              *v44 = v695;
LABEL_1216:
              v46 += 2;
              v44 += v783;
              --v693;
            }

            while (v693);
            v46 += 2 * v819;
            v44 += __b;
            if (!--v823[0])
            {
LABEL_1218:
              v7 = v739;
              v32 = v593;
LABEL_1253:
              v43 = v816;
              if (!v816)
              {
                return 1;
              }

              v822 = 0;
LABEL_1255:
              if (!shape_enum_clip_next(v43, &v822 + 1, &v822, v833, v823))
              {
                goto LABEL_1261;
              }

              v816 = v43;
              v46 = (v785 + 2 * v32 * v822 + 2 * SHIDWORD(v822));
              v47 = v833[0];
              if (v6)
              {
                v44 = &v812[v814 * v822 + SHIDWORD(v822)];
              }

              v714 = __b;
              if (v6)
              {
                v714 = (v814 - v833[0]);
              }

              __b = v714;
              LODWORD(v9) = v833[0];
              goto LABEL_928;
            }
          }

        case 27:
          if (v15 < 8)
          {
            goto LABEL_1253;
          }

          v593 = v32;
          break;
        default:
          goto LABEL_1253;
      }

LABEL_938:
      v594 = v833[0];
      while (1)
      {
        if (v6)
        {
          v595 = *v44;
          if (v595 <= 7)
          {
            *v46 = v28;
            LOBYTE(v596) = v15;
LABEL_945:
            *v44 = v596;
            goto LABEL_946;
          }
        }

        else
        {
          v595 = 255;
        }

        v597 = PDAluminosityPDA(bswap32(*v46) >> 16, v595, v29, v15);
        *v46 = bswap32(v597) >> 16;
        if (v6)
        {
          v596 = HIBYTE(v597);
          goto LABEL_945;
        }

LABEL_946:
        v46 += 2;
        v44 += v783;
        if (!--v594)
        {
          v46 += 2 * v819;
          v44 += __b;
          if (!--v823[0])
          {
            goto LABEL_1218;
          }

          goto LABEL_938;
        }
      }
    }

    v833[0] = *(v2 + 4);
    v823[0] = v11;
    v16 = *(v2 + 88);
    v17 = *(v2 + 12);
    v18 = *(v2 + 16);
    v19 = *(v2 + 28) >> 1;
    if (v6)
    {
      v734 = *(v2 + 32);
      v735 = (v6 + v734 * v18 + v17);
      v20 = 0xFFFFFFFFLL;
    }

    else
    {
      v734 = 0;
      v735 = 0;
      v20 = 0;
    }

    v733 = *(v2 + 40) + 2 * v18 * v19 + 2 * v17;
    v34 = *(v2 + 104);
    v33 = *(v2 + 108);
    v35 = *(v2 + 56);
    v36 = BYTE1(v4);
    v715 = v35;
    v716 = *(v2 + 60);
    if (v36 == 3)
    {
      v48 = v9;
      v49 = v20;
      v1 = RGB555_colorlookup(3, v16, v5);
      v16 = v1;
      if (v5)
      {
        v50 = 0;
        v5 = (v1 + 512);
        LODWORD(v39) = 1;
        v51 = 16;
        v38 = 16;
        LODWORD(v742) = 16;
        LOBYTE(v20) = v49;
        v52 = 16;
      }

      else
      {
        LODWORD(v39) = 0;
        v51 = 16;
        v50 = 1;
        v38 = 16;
        LODWORD(v742) = 16;
        LOBYTE(v20) = v49;
        v52 = 0;
      }

      v9 = v48;
    }

    else
    {
      if (v36 == 1)
      {
        v37 = *(v2 + 60);
        v742 = *(v2 + 76) >> 1;
        if (v5)
        {
          v38 = *(v2 + 80);
          v5 += v38 * v37 + v35;
          LODWORD(v39) = -1;
        }

        else
        {
          v38 = 0;
          LODWORD(v39) = 0;
        }

        v16 += v37 * v742 + v35;
        if (v742 == v19)
        {
          v59 = (v733 - v16) >> 1;
          if (v59 >= 1)
          {
            if (v59 <= v9)
            {
              v733 += 2 * v10;
              v735 += v20 & v10;
              v5 += v39 & v10;
              v62 = 0xFFFFFFFFLL;
              v742 = *(v2 + 28) >> 1;
              v16 += v10;
              goto LABEL_52;
            }

            v60 = v19 * v12;
            v61 = &v16[v19 * v12];
            if (v733 <= &v61[v9 - 1])
            {
              v19 = -v19;
              v72 = &v735[v734 * v12];
              v734 = -v734;
              v735 = v72;
              v20 &= 1u;
              v5 += v38 * v12;
              v38 = -v38;
              LODWORD(v39) = v39 & 1;
              v62 = 1;
              v16 = v61;
              v742 = v19;
              v733 += 2 * v60;
              goto LABEL_52;
            }
          }
        }

        v20 &= 1u;
        LODWORD(v39) = v39 & 1;
        v62 = 1;
LABEL_52:
        if (v13)
        {
          v813 = v20;
          v815 = v39;
          v741 = v16;
          v781 = 0;
          v786 = -1;
          v771 = 0;
          v773 = v742;
          v52 = v38;
LABEL_60:
          shape_enum_clip_alloc(v1, v2, v13, v62, v19, 1, v34, v33, v9, v11);
          v43 = v65;
          v784 = v5;
          v66 = v5;
          __ba = v735;
          v768 = v734;
          if (!v65)
          {
            return 1;
          }

          while (2)
          {
            if (!shape_enum_clip_next(v43, &v822 + 1, &v822, v833, v823))
            {
LABEL_1261:
              v58 = v43;
LABEL_1262:
              free(v58);
              return 1;
            }

            v740 = v43;
            if (v771)
            {
              v818 = (v733 + 2 * v19 * v822 + 2 * SHIDWORD(v822));
              v67 = (v822 + *(v736 + 60)) % v38;
              v63 = v833[0];
              v16 = v741;
              v68 = (HIDWORD(v822) + *(v736 + 56)) % v742;
              v73 = &v741[v773 * v67];
              v74 = &v73[v68];
              v64 = &v73[v742];
              v20 = v813;
              v75 = __ba;
              if (v813)
              {
                v75 = &v735[v734 * v822 + SHIDWORD(v822)];
              }

              __ba = v75;
              v76 = v768;
              if (v813)
              {
                v76 = v734 - v833[0];
              }

              v768 = v76;
              if (v815)
              {
                LODWORD(v39) = v815;
              }

              else
              {
                LODWORD(v39) = 0;
              }

              v77 = v784;
              if (v815)
              {
                v77 = &v5[v52 * v67 + v68];
              }

              v781 = v74;
              v784 = v77;
              if (v815)
              {
                v66 = &v5[v52 * v67 + v68];
              }

              v745 = v833[0];
              v817 = v74;
LABEL_88:
              v715 = v68;
              v716 = v67;
            }

            else
            {
              v78 = SHIDWORD(v822) * v62;
              v745 = v833[0];
              v818 = (v733 + 2 * v19 * v822 + 2 * v78);
              v63 = v833[0] * v62;
              v16 = v741;
              v817 = &v741[v822 * v742 + v78];
              v773 = v742 - v833[0] * v62;
              v20 = v813;
              v79 = __ba;
              if (v813)
              {
                v79 = &v735[v734 * v822 + v78];
              }

              __ba = v79;
              v80 = v768;
              if (v813)
              {
                v80 = v734 - v833[0] * v62;
              }

              v768 = v80;
              if (v815)
              {
                LODWORD(v39) = v815;
              }

              else
              {
                LODWORD(v39) = 0;
              }

              v771 = 0;
              if (v815)
              {
                v66 = &v5[v822 * v38 + v78];
                v52 = v38 - v63;
              }

              v64 = v786;
            }

LABEL_99:
            v813 = v20;
            v815 = v39;
            v741 = v16;
            v769 = v52;
            v770 = v19 - v63;
            v743 = v62;
            v744 = v38;
            v737 = v5;
            v738 = v19;
            switch(v7)
            {
              case 0:
                v786 = v64;
                v81 = v770 - v745;
                v82 = &v818[-2 * v745 + 2];
                if (v62 >= 0)
                {
                  v82 = v818;
                  v81 = v770 + v745;
                }

                v83 = v823[0];
                v84 = v823[0] - 1;
                v85 = (v82 + 2 * ((v81 * v84) & (v81 >> 63)));
                if (v81 < 0)
                {
                  v81 = -v81;
                }

                v86 = v20;
                CGBlt_fillBytes(2 * v745, v823[0], 0, v85, 2 * v81);
                if (v86)
                {
                  v87 = v768 - v745;
                  v88 = &__ba[-v745 + 1];
                  if (v62 >= 0)
                  {
                    v88 = __ba;
                    v87 = v768 + v745;
                  }

                  v89 = (v87 * v84) & (v87 >> 63);
                  if (v87 >= 0)
                  {
                    v90 = v87;
                  }

                  else
                  {
                    v90 = -v87;
                  }

                  __ba = &v88[v89];
                  v768 = v90;
                  CGBlt_fillBytes(v745, v83, 0, &v88[v89], v90);
                }

                goto LABEL_783;
              case 1:
                v274 = *(v736 + 1);
                if ((v274 - 2) >= 2)
                {
                  if (v274 != 1)
                  {
                    goto LABEL_747;
                  }

                  v786 = v64;
                  v466 = v19;
                  v467 = v773 - v745;
                  v468 = 2 * v745 - 2;
                  v469 = (v817 - v468);
                  v470 = v770 - v745;
                  v471 = &v818[-v468];
                  if (v62 >= 0)
                  {
                    v469 = v817;
                    v471 = v818;
                    v467 = v773 + v745;
                    v470 = v770 + v745;
                  }

                  v472 = v823[0];
                  v473 = v823[0] - 1;
                  v474 = &v469[(v467 * v473) & (v467 >> 63)];
                  if (v467 >= 0)
                  {
                    v475 = v467;
                  }

                  else
                  {
                    v475 = -v467;
                  }

                  if (v470 >= 0)
                  {
                    LODWORD(v476) = v470;
                  }

                  else
                  {
                    v476 = -v470;
                  }

                  v773 = v475;
                  CGBlt_copyBytes(2 * v745, v823[0], v474, &v471[2 * ((v470 * v473) & (v470 >> 63))], 2 * v475, 2 * v476);
                  if (v813)
                  {
                    if (v815)
                    {
                      v477 = v52 - v745;
                      v478 = &v66[-v745 + 1];
                      v479 = v768 - v745;
                      v480 = &__ba[-v745 + 1];
                      if (v62 >= 0)
                      {
                        v478 = v66;
                        v480 = __ba;
                        v477 = v52 + v745;
                        v479 = v768 + v745;
                      }

                      v481 = (v477 * v473) & (v477 >> 63);
                      if (v477 >= 0)
                      {
                        v52 = v477;
                      }

                      else
                      {
                        v52 = -v477;
                      }

                      v482 = (v479 * v473) & (v479 >> 63);
                      if (v479 >= 0)
                      {
                        v483 = v479;
                      }

                      else
                      {
                        v483 = -v479;
                      }

                      v66 = &v478[v481];
                      __ba = &v480[v482];
                      v768 = v483;
                      CGBlt_copyBytes(v745, v472, &v478[v481], &v480[v482], v52, v483);
                      v19 = v466;
                      v38 = v744;
                      goto LABEL_843;
                    }

                    v579 = v768 - v745;
                    v580 = &__ba[-v745 + 1];
                    if (v62 >= 0)
                    {
                      v580 = __ba;
                      v579 = v768 + v745;
                    }

                    v581 = (v579 * v473) & (v579 >> 63);
                    if (v579 >= 0)
                    {
                      v582 = v579;
                    }

                    else
                    {
                      v582 = -v579;
                    }

                    __ba = &v580[v581];
                    v768 = v582;
                    CGBlt_fillBytes(v745, v472, -1, &v580[v581], v582);
                  }

                  v19 = v466;
LABEL_784:
                  v38 = v744;
LABEL_843:
                  v43 = v740;
                  if (!v740)
                  {
                    return 1;
                  }
                }

                else
                {
                  if (v745 < 16 || (2 * v742) > 0x40 || (v3.i32[0] = 2 * v742, v275 = vcnt_s8(v3), v275.i16[0] = vaddlv_u8(v275), v275.i32[0] > 1u))
                  {
LABEL_747:
                    if (v20)
                    {
                      v484 = 2 * v62;
                      if (v39)
                      {
                        do
                        {
                          v485 = v833[0];
                          do
                          {
                            *v818 = *v817;
                            *__ba = *v66;
                            __ba += v20;
                            v486 = &v817[v62];
                            if (v486 >= v64)
                            {
                              v487 = -v742;
                            }

                            else
                            {
                              v487 = 0;
                            }

                            v66 += v39 + v487;
                            v817 = &v486[v487];
                            v818 += v484;
                            --v485;
                          }

                          while (v485);
                          if (v771)
                          {
                            v488 = &v781[v773];
                            if (v488 >= v771)
                            {
                              v489 = -(v52 * v38);
                            }

                            else
                            {
                              v489 = 0;
                            }

                            v66 = &v784[v52 + v489];
                            if (v488 >= v771)
                            {
                              v490 = -(v773 * v38);
                            }

                            else
                            {
                              v490 = 0;
                            }

                            v64 += 2 * v490 + 2 * v773;
                            v781 = &v488[v490];
                            v784 += v52 + v489;
                            v817 = v781;
                          }

                          else
                          {
                            v817 += v773;
                            v66 += v52;
                          }

                          v818 += 2 * v770;
                          __ba += v768;
                          --v823[0];
                        }

                        while (v823[0]);
                      }

                      else
                      {
                        do
                        {
                          v573 = v833[0];
                          do
                          {
                            *v818 = *v817;
                            *__ba = -1;
                            __ba += v20;
                            v574 = &v817[v62];
                            if (v574 >= v64)
                            {
                              v575 = -v742;
                            }

                            else
                            {
                              v575 = 0;
                            }

                            v66 += v575;
                            v817 = &v574[v575];
                            v818 += v484;
                            --v573;
                          }

                          while (v573);
                          if (v771)
                          {
                            v576 = &v781[v773];
                            if (v576 >= v771)
                            {
                              v577 = -(v52 * v38);
                            }

                            else
                            {
                              v577 = 0;
                            }

                            v66 = &v784[v52 + v577];
                            if (v576 >= v771)
                            {
                              v578 = -(v773 * v38);
                            }

                            else
                            {
                              v578 = 0;
                            }

                            v64 += 2 * v578 + 2 * v773;
                            v781 = &v576[v578];
                            v784 += v52 + v577;
                            v817 = v781;
                          }

                          else
                          {
                            v817 += v773;
                            v66 += v52;
                          }

                          v818 += 2 * v770;
                          __ba += v768;
                          --v823[0];
                        }

                        while (v823[0]);
                      }

LABEL_918:
                      v786 = v64;
                    }

                    else
                    {
                      v565 = v823[0];
                      v566 = (v823[0] - 1) + 1;
                      do
                      {
                        v567 = v745;
                        do
                        {
                          *v818 = *v817;
                          v568 = &v817[v62];
                          if (v568 >= v64)
                          {
                            v569 = -v742;
                          }

                          else
                          {
                            v569 = 0;
                          }

                          v66 += v39 + v569;
                          v817 = &v568[v569];
                          v818 += 2 * v62;
                          --v567;
                        }

                        while (v567);
                        if (v771)
                        {
                          v570 = &v781[v773];
                          if (v570 >= v771)
                          {
                            v571 = -(v52 * v38);
                          }

                          else
                          {
                            v571 = 0;
                          }

                          v66 = &v784[v52 + v571];
                          if (v570 >= v771)
                          {
                            v572 = -(v773 * v38);
                          }

                          else
                          {
                            v572 = 0;
                          }

                          v64 += 2 * v572 + 2 * v773;
                          v781 = &v570[v572];
                          v784 += v52 + v571;
                          v817 = v781;
                        }

                        else
                        {
                          v817 += v773;
                          v66 += v52;
                        }

                        v818 += 2 * v770;
                        --v565;
                      }

                      while (v565);
                      v786 = v64;
                      v514 = &__ba[v768 * v566];
LABEL_902:
                      __ba = v514;
                      v823[0] = 0;
                    }

                    goto LABEL_843;
                  }

                  v786 = v64;
                  v276 = v823[0];
                  CGSFillDRAM64(v818, 2 * (v745 + v770), 2 * v745, v823[0], v16, 2 * v773, 2 * v742, v38, 2 * v715, v716);
                  if (!v813)
                  {
                    goto LABEL_843;
                  }

                  v43 = v740;
                  if (v815)
                  {
                    CGSFillDRAM64(__ba, v745 + v768, v745, v276, v5, v52, v742, v38, v715, v716);
                    if (!v740)
                    {
                      return 1;
                    }
                  }

                  else
                  {
                    CGBlt_fillBytes(v745, v276, -1, __ba, v745 + v768);
                    if (!v740)
                    {
                      return 1;
                    }
                  }
                }

                v822 = 0;
                continue;
              case 2:
                v217 = v62;
                v720 = -(v52 * v38);
                v727 = -(v773 * v38);
                v218 = 2 * v62;
                v795 = v62;
                v778 = v218;
                if (v20)
                {
                  v219 = v20;
                  v220 = v39;
                  while (1)
                  {
                    v221 = v833[0];
                    do
                    {
                      v222 = *v66;
                      if (v222 < 0xF8)
                      {
                        if (v222 < 8)
                        {
                          goto LABEL_327;
                        }

                        v224 = v64;
                        v225 = PDAplusDAM(bswap32(*v817) >> 16, v222, bswap32(*v818) >> 16, *__ba, v222 ^ 0xFF);
                        v218 = v778;
                        v217 = v795;
                        v64 = v224;
                        *v818 = bswap32(v225) >> 16;
                        v223 = HIBYTE(v225);
                      }

                      else
                      {
                        *v818 = *v817;
                        LOBYTE(v223) = *v66;
                      }

                      *__ba = v223;
LABEL_327:
                      __ba += v219;
                      v226 = &v817[v217];
                      if (v226 >= v64)
                      {
                        v227 = -v742;
                      }

                      else
                      {
                        v227 = 0;
                      }

                      v66 += v220 + v227;
                      v817 = &v226[v227];
                      v818 += v218;
                      --v221;
                    }

                    while (v221);
                    if (v771)
                    {
                      v228 = &v781[v773];
                      v52 = v769;
                      v229 = v720;
                      if (v228 < v771)
                      {
                        v229 = 0;
                      }

                      v66 = &v784[v769 + v229];
                      v230 = v727;
                      if (v228 < v771)
                      {
                        v230 = 0;
                      }

                      v64 += 2 * v230 + 2 * v773;
                      v781 = &v228[v230];
                      v784 += v769 + v229;
                      v817 = v781;
                    }

                    else
                    {
                      v817 += v773;
                      v52 = v769;
                      v66 += v769;
                    }

                    v818 += 2 * v770;
                    __ba += v768;
                    if (!--v823[0])
                    {
LABEL_840:
                      v786 = v64;
LABEL_841:
                      v19 = v738;
                      v7 = v739;
                      v5 = v737;
                      v38 = v744;
LABEL_842:
                      v62 = v743;
                      goto LABEL_843;
                    }
                  }
                }

                v515 = v39;
                v516 = v823[0];
                v718 = (v823[0] - 1) + 1;
LABEL_803:
                v517 = v745;
                while (1)
                {
                  v518 = *v66;
                  if (v518 >= 0xF8)
                  {
                    break;
                  }

                  if (v518 >= 8)
                  {
                    v520 = v64;
                    v521 = PDplusDM(bswap32(*v817) >> 16, bswap32(*v818) >> 16, v518 ^ 0xFF);
                    v218 = v778;
                    v217 = v795;
                    v64 = v520;
                    v519 = __rev16(v521);
                    goto LABEL_808;
                  }

LABEL_809:
                  v522 = &v817[v217];
                  if (v522 >= v64)
                  {
                    v523 = -v742;
                  }

                  else
                  {
                    v523 = 0;
                  }

                  v66 += v515 + v523;
                  v817 = &v522[v523];
                  v818 += v218;
                  if (!--v517)
                  {
                    if (v771)
                    {
                      v524 = &v781[v773];
                      v52 = v769;
                      v525 = v720;
                      if (v524 < v771)
                      {
                        v525 = 0;
                      }

                      v66 = &v784[v769 + v525];
                      v526 = v727;
                      if (v524 < v771)
                      {
                        v526 = 0;
                      }

                      v64 += 2 * v526 + 2 * v773;
                      v781 = &v524[v526];
                      v784 += v769 + v525;
                      v817 = v781;
                    }

                    else
                    {
                      v817 += v773;
                      v52 = v769;
                      v66 += v769;
                    }

                    v818 += 2 * v770;
                    v823[0] = --v516;
                    if (!v516)
                    {
                      v786 = v64;
                      __ba += v768 * v718;
                      goto LABEL_841;
                    }

                    goto LABEL_803;
                  }
                }

                v519 = *v817;
LABEL_808:
                *v818 = v519;
                goto LABEL_809;
              case 3:
                v62 = v62;
                v245 = v20;
                v717 = -(v52 * v38);
                v721 = -(v773 * v38);
                v246 = 2 * v62;
                v797 = v246;
                if (v39)
                {
                  v247 = v39;
                  v779 = v20;
                  do
                  {
                    v248 = v833[0];
                    do
                    {
                      v249 = *__ba;
                      if (v249 > 7)
                      {
                        v250 = *v817;
                        if (v249 < 0xF8)
                        {
                          v251 = v62;
                          v252 = v64;
                          v253 = PDAM(__rev16(v250), *v66, v249);
                          v246 = v797;
                          v64 = v252;
                          v62 = v251;
                          v245 = v779;
                          *v818 = bswap32(v253) >> 16;
                          v250 = HIBYTE(v253);
                        }

                        else
                        {
                          *v818 = v250;
                          LOBYTE(v250) = *v66;
                        }
                      }

                      else
                      {
                        LOBYTE(v250) = 0;
                        *v818 = 0;
                      }

                      *__ba = v250;
                      __ba += v245;
                      v254 = &v817[v62];
                      if (v254 >= v64)
                      {
                        v255 = -v742;
                      }

                      else
                      {
                        v255 = 0;
                      }

                      v66 += v247 + v255;
                      v817 = &v254[v255];
                      v818 += v246;
                      --v248;
                    }

                    while (v248);
                    if (v771)
                    {
                      v256 = &v781[v773];
                      v52 = v769;
                      v257 = v717;
                      if (v256 < v771)
                      {
                        v257 = 0;
                      }

                      v66 = &v784[v769 + v257];
                      v258 = -(v773 * v38);
                      if (v256 < v771)
                      {
                        v258 = 0;
                      }

                      v64 += 2 * v258 + 2 * v773;
                      v781 = &v256[v258];
                      v784 += v769 + v257;
                      v817 = v781;
                    }

                    else
                    {
                      v817 += v773;
                      v52 = v769;
                      v66 += v769;
                    }

                    v818 += 2 * v770;
                    __ba += v768;
                    --v823[0];
                  }

                  while (v823[0]);
                }

                else
                {
                  v527 = v823[0];
                  do
                  {
                    v732 = v527;
                    v528 = v745;
                    do
                    {
                      v529 = *__ba;
                      if (v529 >= 8)
                      {
                        v530 = *v817;
                        if (v529 <= 0xF7)
                        {
                          v531 = v64;
                          v532 = PDM(__rev16(v530), v529);
                          v246 = 2 * v62;
                          v64 = v531;
                          LOWORD(v530) = __rev16(v532);
                        }
                      }

                      else
                      {
                        LOWORD(v530) = 0;
                      }

                      *v818 = v530;
                      __ba += v245;
                      v533 = &v817[v62];
                      if (v533 >= v64)
                      {
                        v534 = -v742;
                      }

                      else
                      {
                        v534 = 0;
                      }

                      v66 += v534;
                      v817 = &v533[v534];
                      v818 += v246;
                      --v528;
                    }

                    while (v528);
                    if (v771)
                    {
                      v535 = &v781[v773];
                      v52 = v769;
                      v536 = v717;
                      if (v535 < v771)
                      {
                        v536 = 0;
                      }

                      v66 = &v784[v769 + v536];
                      v537 = v721;
                      if (v535 < v771)
                      {
                        v537 = 0;
                      }

                      v64 += 2 * v537 + 2 * v773;
                      v781 = &v535[v537];
                      v784 += v769 + v536;
                      v817 = v781;
                    }

                    else
                    {
                      v817 += v773;
                      v52 = v769;
                      v66 += v769;
                    }

                    v818 += 2 * v770;
                    __ba += v768;
                    v527 = v732 - 1;
                    v823[0] = v732 - 1;
                  }

                  while (v732 != 1);
                }

                goto LABEL_840;
              case 4:
                v145 = v62;
                v146 = v62;
                v147 = v20;
                v148 = v39;
                v749 = -(v52 * v38);
                v149 = 2 * v145;
                do
                {
                  v150 = v833[0];
                  v791 = v64;
                  do
                  {
                    v151 = *__ba;
                    if (v151 < 0xF8)
                    {
                      if (v151 > 7)
                      {
                        if (v39)
                        {
                          v153 = *v66;
                        }

                        else
                        {
                          v153 = -1;
                        }

                        v154 = PDAM(bswap32(*v817) >> 16, v153, ~v151);
                        *v818 = bswap32(v154) >> 16;
                        v152 = HIBYTE(v154);
                        LODWORD(v39) = v815;
                        v64 = v791;
                      }

                      else if (v39)
                      {
                        LOBYTE(v152) = *v66;
                      }

                      else
                      {
                        LOBYTE(v152) = -1;
                      }
                    }

                    else
                    {
                      LOBYTE(v152) = 0;
                      *v818 = 0;
                    }

                    *__ba = v152;
                    __ba += v147;
                    v155 = &v817[v146];
                    if (v155 >= v64)
                    {
                      v156 = -v742;
                    }

                    else
                    {
                      v156 = 0;
                    }

                    v66 += v148 + v156;
                    v817 = &v155[v156];
                    v818 += v149;
                    --v150;
                  }

                  while (v150);
                  if (v771)
                  {
                    v157 = &v781[v773];
                    v52 = v769;
                    v158 = v749;
                    if (v157 < v771)
                    {
                      v158 = 0;
                    }

                    v66 = &v784[v769 + v158];
                    v159 = -(v773 * v38);
                    if (v157 < v771)
                    {
                      v159 = 0;
                    }

                    v64 += 2 * v159 + 2 * v773;
                    v781 = &v157[v159];
                    v784 += v769 + v158;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  --v823[0];
                }

                while (v823[0]);
                goto LABEL_840;
              case 5:
                v305 = v62;
                v306 = v62;
                v307 = v20;
                v39 = v39;
                v757 = -(v773 * v38);
                v729 = -(v52 * v38);
                v308 = 2 * v305;
                do
                {
                  v309 = v833[0];
                  do
                  {
                    v801 = v66;
                    v310 = *v66;
                    v311 = v64;
                    v312 = v306;
                    v313 = v39;
                    v314 = v308;
                    v315 = PDAMplusDAM(bswap32(*v817) >> 16, v310, *__ba, bswap32(*v818) >> 16, *__ba, v310 ^ 0xFFu);
                    v308 = v314;
                    v39 = v313;
                    v306 = v312;
                    v64 = v311;
                    *v818 = bswap32(v315) >> 16;
                    *__ba = HIBYTE(v315);
                    v316 = &__ba[v307];
                    v317 = &v817[v312];
                    if (v317 >= v311)
                    {
                      v318 = -v742;
                    }

                    else
                    {
                      v318 = 0;
                    }

                    v66 = &v801[v313 + v318];
                    v817 = &v317[v318];
                    v818 += v308;
                    __ba += v307;
                    --v309;
                  }

                  while (v309);
                  if (v771)
                  {
                    v319 = &v781[v773];
                    v320 = v729;
                    if (v319 < v771)
                    {
                      v320 = 0;
                    }

                    v66 = &v784[v769 + v320];
                    v321 = v757;
                    if (v319 < v771)
                    {
                      v321 = 0;
                    }

                    v64 = v311 + 2 * v321 + 2 * v773;
                    v781 = &v319[v321];
                    v784 += v769 + v320;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba = &v316[v768];
                  --v823[0];
                }

                while (v823[0]);
                goto LABEL_600;
              case 6:
                v350 = v62;
                v351 = v62;
                v352 = v20;
                v353 = v39;
                v760 = -(v52 * v38);
                v354 = 2 * v350;
                while (1)
                {
                  v355 = v833[0];
                  v804 = v64;
                  do
                  {
                    v356 = *__ba;
                    if (v356 > 7)
                    {
                      if (v356 > 0xF7)
                      {
                        goto LABEL_547;
                      }

                      if (v39)
                      {
                        v358 = *v66;
                      }

                      else
                      {
                        v358 = -1;
                      }

                      v359 = PDAplusDAM(bswap32(*v818) >> 16, v356, bswap32(*v817) >> 16, v358, ~v356);
                      *v818 = bswap32(v359) >> 16;
                      v357 = HIBYTE(v359);
                      LODWORD(v39) = v815;
                      v64 = v804;
                    }

                    else
                    {
                      *v818 = *v817;
                      if (v39)
                      {
                        LOBYTE(v357) = *v66;
                      }

                      else
                      {
                        LOBYTE(v357) = -1;
                      }
                    }

                    *__ba = v357;
LABEL_547:
                    __ba += v352;
                    v360 = &v817[v351];
                    if (v360 >= v64)
                    {
                      v361 = -v742;
                    }

                    else
                    {
                      v361 = 0;
                    }

                    v66 += v353 + v361;
                    v817 = &v360[v361];
                    v818 += v354;
                    --v355;
                  }

                  while (v355);
                  if (v771)
                  {
                    v362 = &v781[v773];
                    v52 = v769;
                    v363 = v760;
                    if (v362 < v771)
                    {
                      v363 = 0;
                    }

                    v66 = &v784[v769 + v363];
                    v364 = -(v773 * v38);
                    if (v362 < v771)
                    {
                      v364 = 0;
                    }

                    v64 += 2 * v364 + 2 * v773;
                    v781 = &v362[v364];
                    v784 += v769 + v363;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 7:
                v259 = v62;
                v722 = -(v52 * v38);
                v728 = -(v773 * v38);
                v798 = v62;
                if (v20)
                {
                  v260 = v20;
                  v261 = v39;
                  v262 = 2 * v259;
                  v263 = -v742;
                  while (1)
                  {
                    v264 = v833[0];
                    do
                    {
                      v265 = *v66;
                      if (v265 > 7)
                      {
                        if (v265 > 0xF7)
                        {
                          goto LABEL_395;
                        }

                        v267 = v64;
                        v268 = PDAM(bswap32(*v818) >> 16, *__ba, v265);
                        v263 = -v742;
                        v259 = v798;
                        v64 = v267;
                        *v818 = bswap32(v268) >> 16;
                        v266 = HIBYTE(v268);
                      }

                      else
                      {
                        LOBYTE(v266) = 0;
                        *v818 = 0;
                      }

                      *__ba = v266;
LABEL_395:
                      __ba += v260;
                      v269 = &v817[v259];
                      if (v269 >= v64)
                      {
                        v270 = v263;
                      }

                      else
                      {
                        v270 = 0;
                      }

                      v66 += v261 + v270;
                      v817 = &v269[v270];
                      v818 += v262;
                      --v264;
                    }

                    while (v264);
                    if (v771)
                    {
                      v271 = &v781[v773];
                      v52 = v769;
                      v272 = v722;
                      if (v271 < v771)
                      {
                        v272 = 0;
                      }

                      v66 = &v784[v769 + v272];
                      v273 = -(v773 * v38);
                      if (v271 < v771)
                      {
                        v273 = 0;
                      }

                      v64 += 2 * v273 + 2 * v773;
                      v781 = &v271[v273];
                      v784 += v769 + v272;
                      v817 = v781;
                    }

                    else
                    {
                      v817 += v773;
                      v52 = v769;
                      v66 += v769;
                    }

                    v818 += 2 * v770;
                    __ba += v768;
                    if (!--v823[0])
                    {
                      goto LABEL_840;
                    }
                  }
                }

                v538 = v39;
                v539 = v823[0];
                v540 = (v823[0] - 1) + 1;
                v541 = 2 * v62;
LABEL_846:
                v542 = v745;
                while (1)
                {
                  v543 = *v66;
                  if (v543 < 8)
                  {
                    break;
                  }

                  if (v543 <= 0xF7)
                  {
                    v545 = v64;
                    v546 = PDM(bswap32(*v818) >> 16, v543);
                    v259 = v798;
                    v64 = v545;
                    v544 = __rev16(v546);
                    goto LABEL_851;
                  }

LABEL_852:
                  v547 = &v817[v259];
                  if (v547 >= v64)
                  {
                    v548 = -v742;
                  }

                  else
                  {
                    v548 = 0;
                  }

                  v66 += v538 + v548;
                  v817 = &v547[v548];
                  v818 += v541;
                  if (!--v542)
                  {
                    if (v771)
                    {
                      v549 = &v781[v773];
                      v550 = v722;
                      if (v549 < v771)
                      {
                        v550 = 0;
                      }

                      v66 = &v784[v52 + v550];
                      v551 = v728;
                      if (v549 < v771)
                      {
                        v551 = 0;
                      }

                      v64 += 2 * v551 + 2 * v773;
                      v781 = &v549[v551];
                      v784 += v52 + v550;
                      v817 = v781;
                    }

                    else
                    {
                      v817 += v773;
                      v66 += v52;
                    }

                    v38 = v744;
                    v818 += 2 * v770;
                    v823[0] = --v539;
                    if (!v539)
                    {
                      v786 = v64;
                      __ba += v768 * v540;
                      v7 = v739;
                      v5 = v737;
LABEL_601:
                      v52 = v769;
                      goto LABEL_842;
                    }

                    goto LABEL_846;
                  }
                }

                v544 = 0;
LABEL_851:
                *v818 = v544;
                goto LABEL_852;
              case 8:
                v396 = v62;
                v723 = -(v52 * v38);
                v731 = -(v773 * v38);
                if (v20)
                {
                  v397 = v20;
                  v398 = v39;
                  v399 = 2 * v62;
                  v807 = v396;
                  while (1)
                  {
                    v400 = v833[0];
                    do
                    {
                      v401 = *v66;
                      if (v401 < 0xF8)
                      {
                        if (v401 < 8)
                        {
                          goto LABEL_610;
                        }

                        v403 = v64;
                        v404 = PDAM(bswap32(*v818) >> 16, *__ba, ~v401);
                        v64 = v403;
                        v396 = v807;
                        *v818 = bswap32(v404) >> 16;
                        v402 = HIBYTE(v404);
                      }

                      else
                      {
                        LOBYTE(v402) = 0;
                        *v818 = 0;
                      }

                      *__ba = v402;
LABEL_610:
                      __ba += v397;
                      v405 = &v817[v396];
                      if (v405 >= v64)
                      {
                        v406 = -v742;
                      }

                      else
                      {
                        v406 = 0;
                      }

                      v66 += v398 + v406;
                      v817 = &v405[v406];
                      v818 += v399;
                      --v400;
                    }

                    while (v400);
                    if (v771)
                    {
                      v407 = &v781[v773];
                      v52 = v769;
                      v408 = v723;
                      if (v407 < v771)
                      {
                        v408 = 0;
                      }

                      v66 = &v784[v769 + v408];
                      v409 = v731;
                      if (v407 < v771)
                      {
                        v409 = 0;
                      }

                      v64 += 2 * v409 + 2 * v773;
                      v781 = &v407[v409];
                      v784 += v769 + v408;
                      v817 = v781;
                    }

                    else
                    {
                      v817 += v773;
                      v52 = v769;
                      v66 += v769;
                    }

                    v818 += 2 * v770;
                    __ba += v768;
                    if (!--v823[0])
                    {
                      goto LABEL_840;
                    }
                  }
                }

                v552 = v39;
                v553 = v823[0];
                v554 = (v823[0] - 1) + 1;
LABEL_866:
                v780 = v553;
                v555 = v745;
                while (1)
                {
                  v556 = *v66;
                  if (v556 > 0xF7)
                  {
                    break;
                  }

                  if (v556 >= 8)
                  {
                    v558 = v64;
                    v559 = PDM(bswap32(*v818) >> 16, ~v556);
                    v64 = v558;
                    v557 = __rev16(v559);
                    goto LABEL_871;
                  }

LABEL_872:
                  v560 = &v817[v62];
                  if (v560 >= v64)
                  {
                    v561 = -v742;
                  }

                  else
                  {
                    v561 = 0;
                  }

                  v66 += v552 + v561;
                  v817 = &v560[v561];
                  v818 += 2 * v62;
                  if (!--v555)
                  {
                    if (v771)
                    {
                      v562 = &v781[v773];
                      v52 = v769;
                      v563 = v723;
                      if (v562 < v771)
                      {
                        v563 = 0;
                      }

                      v66 = &v784[v769 + v563];
                      v564 = v731;
                      if (v562 < v771)
                      {
                        v564 = 0;
                      }

                      v64 += 2 * v564 + 2 * v773;
                      v781 = &v562[v564];
                      v784 += v769 + v563;
                      v817 = v781;
                    }

                    else
                    {
                      v817 += v773;
                      v52 = v769;
                      v66 += v769;
                    }

                    v818 += 2 * v770;
                    v553 = v780 - 1;
                    v823[0] = v780 - 1;
                    if (v780 == 1)
                    {
                      v786 = v64;
                      __ba += v768 * v554;
                      goto LABEL_841;
                    }

                    goto LABEL_866;
                  }
                }

                v557 = 0;
LABEL_871:
                *v818 = v557;
                goto LABEL_872;
              case 9:
                v173 = v62;
                v174 = v62;
                v175 = v20;
                v39 = v39;
                v751 = -(v773 * v38);
                v726 = -(v52 * v38);
                v176 = 2 * v173;
                do
                {
                  v177 = v833[0];
                  do
                  {
                    v178 = v64;
                    v179 = v174;
                    v180 = v39;
                    v181 = v176;
                    v182 = PDAMplusDAM(bswap32(*v817) >> 16, *v66, *__ba ^ 0xFFu, bswap32(*v818) >> 16, *__ba, *v66);
                    v176 = v181;
                    v39 = v180;
                    v174 = v179;
                    v64 = v178;
                    *v818 = bswap32(v182) >> 16;
                    *__ba = HIBYTE(v182);
                    v183 = &__ba[v175];
                    v184 = &v817[v179];
                    if (v184 >= v178)
                    {
                      v185 = -v742;
                    }

                    else
                    {
                      v185 = 0;
                    }

                    v66 += v180 + v185;
                    v817 = &v184[v185];
                    v818 += v181;
                    __ba += v175;
                    --v177;
                  }

                  while (v177);
                  if (v771)
                  {
                    v186 = &v781[v773];
                    v187 = v726;
                    if (v186 < v771)
                    {
                      v187 = 0;
                    }

                    v66 = &v784[v769 + v187];
                    v188 = v751;
                    if (v186 < v771)
                    {
                      v188 = 0;
                    }

                    v64 = v178 + 2 * v188 + 2 * v773;
                    v781 = &v186[v188];
                    v784 += v769 + v187;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba = &v183[v768];
                  --v823[0];
                }

                while (v823[0]);
                goto LABEL_600;
              case 10:
                v379 = v62;
                v380 = v62;
                v381 = v20;
                v39 = v39;
                v762 = -(v773 * v38);
                v730 = -(v52 * v38);
                v382 = 2 * v379;
                do
                {
                  v383 = v833[0];
                  do
                  {
                    v806 = v66;
                    v384 = *v66;
                    v385 = v64;
                    v386 = v380;
                    v387 = v39;
                    v388 = v382;
                    v389 = PDAMplusDAM(bswap32(*v817) >> 16, v384, *__ba ^ 0xFFu, bswap32(*v818) >> 16, *__ba, v384 ^ 0xFFu);
                    v382 = v388;
                    v39 = v387;
                    v380 = v386;
                    v64 = v385;
                    *v818 = bswap32(v389) >> 16;
                    *__ba = HIBYTE(v389);
                    v390 = &__ba[v381];
                    v391 = &v817[v386];
                    if (v391 >= v385)
                    {
                      v392 = -v742;
                    }

                    else
                    {
                      v392 = 0;
                    }

                    v66 = &v806[v387 + v392];
                    v817 = &v391[v392];
                    v818 += v382;
                    __ba += v381;
                    --v383;
                  }

                  while (v383);
                  if (v771)
                  {
                    v393 = &v781[v773];
                    v394 = v730;
                    if (v393 < v771)
                    {
                      v394 = 0;
                    }

                    v66 = &v784[v769 + v394];
                    v395 = v762;
                    if (v393 < v771)
                    {
                      v395 = 0;
                    }

                    v64 = v385 + 2 * v395 + 2 * v773;
                    v781 = &v393[v395];
                    v784 += v769 + v394;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba = &v390[v768];
                  --v823[0];
                }

                while (v823[0]);
LABEL_600:
                v786 = v64;
                v19 = v738;
                v7 = v739;
                v38 = v744;
                goto LABEL_601;
              case 11:
                v719 = -(v52 * v38);
                v724 = -(v773 * v38);
                v790 = v62;
                v776 = 2 * v62;
                if (v20)
                {
                  v133 = v20;
                  v134 = v39;
                  do
                  {
                    v135 = v833[0];
                    v136 = v64;
                    do
                    {
                      if (v39)
                      {
                        v137 = *v66;
                      }

                      else
                      {
                        v137 = 255;
                      }

                      v138 = PDAplusdDA(bswap32(*v818) >> 16, *__ba, bswap32(*v817) >> 16, v137);
                      *v818 = bswap32(v138) >> 16;
                      *__ba = HIBYTE(v138);
                      v139 = &__ba[v133];
                      v140 = &v817[v790];
                      if (v140 >= v136)
                      {
                        v141 = -v742;
                      }

                      else
                      {
                        v141 = 0;
                      }

                      v66 += v134 + v141;
                      v817 = &v140[v141];
                      v818 += v776;
                      __ba += v133;
                      --v135;
                      LODWORD(v39) = v815;
                    }

                    while (v135);
                    v64 = v136;
                    if (v771)
                    {
                      v142 = &v781[v773];
                      v52 = v769;
                      v143 = v719;
                      if (v142 < v771)
                      {
                        v143 = 0;
                      }

                      v66 = &v784[v769 + v143];
                      v144 = v724;
                      if (v142 < v771)
                      {
                        v144 = 0;
                      }

                      v64 = v136 + 2 * v144 + 2 * v773;
                      v781 = &v142[v144];
                      v784 += v769 + v143;
                      v817 = v781;
                    }

                    else
                    {
                      v817 += v773;
                      v52 = v769;
                      v66 += v769;
                    }

                    v818 += 2 * v770;
                    __ba = &v139[v768];
                    --v823[0];
                  }

                  while (v823[0]);
                  goto LABEL_840;
                }

                v491 = v39;
                v492 = v823[0];
                v493 = (v823[0] - 1) + 1;
                do
                {
                  v494 = v745;
                  v495 = v64;
                  do
                  {
                    if (v39)
                    {
                      v496 = *v66;
                    }

                    else
                    {
                      v496 = 255;
                    }

                    *v818 = __rev16(PDplusdDA(bswap32(*v818) >> 16, bswap32(*v817) >> 16, v496));
                    v497 = &v817[v790];
                    if (v497 >= v495)
                    {
                      v498 = -v742;
                    }

                    else
                    {
                      v498 = 0;
                    }

                    v66 += v491 + v498;
                    v499 = &v497[v498];
                    v817 = v499;
                    v818 += v776;
                    --v494;
                    LODWORD(v39) = v815;
                  }

                  while (v494);
                  v64 = v495;
                  if (v771)
                  {
                    v500 = &v781[v773];
                    v501 = v719;
                    if (v500 < v771)
                    {
                      v501 = 0;
                    }

                    v66 = &v784[v52 + v501];
                    v502 = v724;
                    if (v500 < v771)
                    {
                      v502 = 0;
                    }

                    v64 = v495 + 2 * v502 + 2 * v773;
                    v781 = &v500[v502];
                    v784 += v52 + v501;
                    v817 = v781;
                  }

                  else
                  {
                    v817 = &v499[v773];
                    v66 += v52;
                  }

                  v62 = v743;
                  v818 += 2 * v770;
                  v823[0] = --v492;
                }

                while (v492);
                v786 = v64;
                __ba += v768 * v493;
                v7 = v739;
                v5 = v737;
LABEL_783:
                v19 = v738;
                goto LABEL_784;
              case 12:
                if (!v20)
                {
                  v503 = v823[0];
                  v504 = (v823[0] - 1) + 1;
                  do
                  {
                    v505 = v745;
                    do
                    {
                      v506 = bswap32(*v818);
                      v507 = bswap32(*v817);
                      v508 = (((HIWORD(v507) << 15) | HIWORD(v507)) & 0x1F07C1F) + (((HIWORD(v506) << 15) | HIWORD(v506)) & 0x1F07C1F);
                      *v818 = __rev16((((15 * ((v508 >> 5) & 0x100401)) | v508 | (30 * ((v508 >> 5) & 0x100401))) >> 15) & 0x3E0 | ((15 * ((v508 >> 5) & 0x100401)) | v508 | (30 * ((v508 >> 5) & 0x100401))) & 0x7C1F);
                      v509 = &v817[v62];
                      if (v509 >= v64)
                      {
                        v510 = -v742;
                      }

                      else
                      {
                        v510 = 0;
                      }

                      v66 += v39 + v510;
                      v817 = &v509[v510];
                      v818 += 2 * v62;
                      --v505;
                    }

                    while (v505);
                    if (v771)
                    {
                      v511 = &v781[v773];
                      if (v511 >= v771)
                      {
                        v512 = -(v52 * v38);
                      }

                      else
                      {
                        v512 = 0;
                      }

                      v66 = &v784[v52 + v512];
                      if (v511 >= v771)
                      {
                        v513 = -(v773 * v38);
                      }

                      else
                      {
                        v513 = 0;
                      }

                      v64 += 2 * v513 + 2 * v773;
                      v781 = &v511[v513];
                      v784 += v52 + v512;
                      v817 = v781;
                    }

                    else
                    {
                      v817 += v773;
                      v66 += v52;
                    }

                    v818 += 2 * v770;
                    --v503;
                  }

                  while (v503);
                  v786 = v64;
                  v514 = &__ba[v768 * v504];
                  goto LABEL_902;
                }

                v792 = v62;
                v777 = v20;
                v160 = v38;
                v161 = v39;
                v750 = -(v773 * v160);
                v725 = -(v52 * v160);
                v162 = 2 * v62;
                do
                {
                  v163 = v833[0];
                  v164 = v64;
                  do
                  {
                    if (v39)
                    {
                      v165 = *v66;
                    }

                    else
                    {
                      v165 = 255;
                    }

                    v166 = PDApluslDA(bswap32(*v818) >> 16, *__ba, bswap32(*v817) >> 16, v165);
                    *v818 = bswap32(v166) >> 16;
                    *__ba = HIBYTE(v166);
                    v167 = &__ba[v777];
                    v168 = &v817[v792];
                    if (v168 >= v164)
                    {
                      v169 = -v742;
                    }

                    else
                    {
                      v169 = 0;
                    }

                    v66 += v161 + v169;
                    v817 = &v168[v169];
                    v818 += v162;
                    __ba += v777;
                    --v163;
                    LODWORD(v39) = v815;
                  }

                  while (v163);
                  v64 = v164;
                  if (v771)
                  {
                    v170 = &v781[v773];
                    v52 = v769;
                    v171 = v725;
                    if (v170 < v771)
                    {
                      v171 = 0;
                    }

                    v66 = &v784[v769 + v171];
                    v172 = v750;
                    if (v170 < v771)
                    {
                      v172 = 0;
                    }

                    v64 = v164 + 2 * v172 + 2 * v773;
                    v781 = &v170[v172];
                    v784 += v769 + v171;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba = &v167[v768];
                  --v823[0];
                }

                while (v823[0]);
                goto LABEL_840;
              case 13:
                v336 = v62;
                v803 = v62;
                v337 = v20;
                v338 = v39;
                v759 = -(v52 * v38);
                v339 = 2 * v336;
                while (1)
                {
                  v340 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v341 = 255;
LABEL_515:
                      v342 = v64;
                      if (v20)
                      {
                        v343 = *__ba;
                        if (v343 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_521:
                          *__ba = v341;
                          goto LABEL_522;
                        }
                      }

                      else
                      {
                        v343 = 255;
                      }

                      v344 = PDAmultiplyPDA(bswap32(*v818) >> 16, v343, bswap32(*v817) >> 16, v341);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v344) >> 16;
                      v64 = v342;
                      if (!v813)
                      {
                        goto LABEL_522;
                      }

                      v341 = HIBYTE(v344);
                      goto LABEL_521;
                    }

                    v341 = *v66;
                    if (v341 >= 8)
                    {
                      goto LABEL_515;
                    }

LABEL_522:
                    __ba += v337;
                    v345 = &v817[v803];
                    if (v345 >= v64)
                    {
                      v346 = -v742;
                    }

                    else
                    {
                      v346 = 0;
                    }

                    v66 += v338 + v346;
                    v817 = &v345[v346];
                    v818 += v339;
                    --v340;
                  }

                  while (v340);
                  if (v771)
                  {
                    v347 = &v781[v773];
                    v52 = v769;
                    v348 = v759;
                    if (v347 < v771)
                    {
                      v348 = 0;
                    }

                    v66 = &v784[v769 + v348];
                    v349 = -(v773 * v38);
                    if (v347 < v771)
                    {
                      v349 = 0;
                    }

                    v64 += 2 * v349 + 2 * v773;
                    v781 = &v347[v349];
                    v784 += v769 + v348;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 14:
                v119 = v62;
                v789 = v62;
                v120 = v20;
                v121 = v39;
                v748 = -(v52 * v38);
                v122 = 2 * v119;
                while (1)
                {
                  v123 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v124 = 255;
LABEL_169:
                      v125 = v64;
                      if (v20)
                      {
                        v126 = *__ba;
                        if (v126 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_175:
                          *__ba = v124;
                          goto LABEL_176;
                        }
                      }

                      else
                      {
                        v126 = 255;
                      }

                      v127 = PDAscreenPDA(bswap32(*v818) >> 16, v126, bswap32(*v817) >> 16, v124);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v127) >> 16;
                      v64 = v125;
                      if (!v813)
                      {
                        goto LABEL_176;
                      }

                      v124 = HIBYTE(v127);
                      goto LABEL_175;
                    }

                    v124 = *v66;
                    if (v124 >= 8)
                    {
                      goto LABEL_169;
                    }

LABEL_176:
                    __ba += v120;
                    v128 = &v817[v789];
                    if (v128 >= v64)
                    {
                      v129 = -v742;
                    }

                    else
                    {
                      v129 = 0;
                    }

                    v66 += v121 + v129;
                    v817 = &v128[v129];
                    v818 += v122;
                    --v123;
                  }

                  while (v123);
                  if (v771)
                  {
                    v130 = &v781[v773];
                    v52 = v769;
                    v131 = v748;
                    if (v130 < v771)
                    {
                      v131 = 0;
                    }

                    v66 = &v784[v769 + v131];
                    v132 = -(v773 * v38);
                    if (v130 < v771)
                    {
                      v132 = 0;
                    }

                    v64 += 2 * v132 + 2 * v773;
                    v781 = &v130[v132];
                    v784 += v769 + v131;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 15:
                v231 = v62;
                v796 = v62;
                v232 = v20;
                v233 = v39;
                v754 = -(v52 * v38);
                v234 = 2 * v231;
                while (1)
                {
                  v235 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v236 = 255;
LABEL_346:
                      v237 = v64;
                      if (v20)
                      {
                        v238 = *__ba;
                        if (v238 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_352:
                          *__ba = v236;
                          goto LABEL_353;
                        }
                      }

                      else
                      {
                        v238 = 255;
                      }

                      v239 = PDAoverlayPDA(bswap32(*v818) >> 16, v238, bswap32(*v817) >> 16, v236);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v239) >> 16;
                      v64 = v237;
                      if (!v813)
                      {
                        goto LABEL_353;
                      }

                      v236 = HIBYTE(v239);
                      goto LABEL_352;
                    }

                    v236 = *v66;
                    if (v236 >= 8)
                    {
                      goto LABEL_346;
                    }

LABEL_353:
                    __ba += v232;
                    v240 = &v817[v796];
                    if (v240 >= v64)
                    {
                      v241 = -v742;
                    }

                    else
                    {
                      v241 = 0;
                    }

                    v66 += v233 + v241;
                    v817 = &v240[v241];
                    v818 += v234;
                    --v235;
                  }

                  while (v235);
                  if (v771)
                  {
                    v242 = &v781[v773];
                    v52 = v769;
                    v243 = v754;
                    if (v242 < v771)
                    {
                      v243 = 0;
                    }

                    v66 = &v784[v769 + v243];
                    v244 = -(v773 * v38);
                    if (v242 < v771)
                    {
                      v244 = 0;
                    }

                    v64 += 2 * v244 + 2 * v773;
                    v781 = &v242[v244];
                    v784 += v769 + v243;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 16:
                v105 = v62;
                v788 = v62;
                v106 = v20;
                v107 = v39;
                v747 = -(v52 * v38);
                v108 = 2 * v105;
                while (1)
                {
                  v109 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v110 = 255;
LABEL_143:
                      v111 = v64;
                      if (v20)
                      {
                        v112 = *__ba;
                        if (v112 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_149:
                          *__ba = v110;
                          goto LABEL_150;
                        }
                      }

                      else
                      {
                        v112 = 255;
                      }

                      v113 = PDAdarkenPDA(bswap32(*v818) >> 16, v112, bswap32(*v817) >> 16, v110);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v113) >> 16;
                      v64 = v111;
                      if (!v813)
                      {
                        goto LABEL_150;
                      }

                      v110 = HIBYTE(v113);
                      goto LABEL_149;
                    }

                    v110 = *v66;
                    if (v110 >= 8)
                    {
                      goto LABEL_143;
                    }

LABEL_150:
                    __ba += v106;
                    v114 = &v817[v788];
                    if (v114 >= v64)
                    {
                      v115 = -v742;
                    }

                    else
                    {
                      v115 = 0;
                    }

                    v66 += v107 + v115;
                    v817 = &v114[v115];
                    v818 += v108;
                    --v109;
                  }

                  while (v109);
                  if (v771)
                  {
                    v116 = &v781[v773];
                    v52 = v769;
                    v117 = v747;
                    if (v116 < v771)
                    {
                      v117 = 0;
                    }

                    v66 = &v784[v769 + v117];
                    v118 = -(v773 * v38);
                    if (v116 < v771)
                    {
                      v118 = 0;
                    }

                    v64 += 2 * v118 + 2 * v773;
                    v781 = &v116[v118];
                    v784 += v769 + v117;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 17:
                v277 = v62;
                v799 = v62;
                v278 = v20;
                v279 = v39;
                v755 = -(v52 * v38);
                v280 = 2 * v277;
                while (1)
                {
                  v281 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v282 = 255;
LABEL_422:
                      v283 = v64;
                      if (v20)
                      {
                        v284 = *__ba;
                        if (v284 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_428:
                          *__ba = v282;
                          goto LABEL_429;
                        }
                      }

                      else
                      {
                        v284 = 255;
                      }

                      v285 = PDAlightenPDA(bswap32(*v818) >> 16, v284, bswap32(*v817) >> 16, v282);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v285) >> 16;
                      v64 = v283;
                      if (!v813)
                      {
                        goto LABEL_429;
                      }

                      v282 = HIBYTE(v285);
                      goto LABEL_428;
                    }

                    v282 = *v66;
                    if (v282 >= 8)
                    {
                      goto LABEL_422;
                    }

LABEL_429:
                    __ba += v278;
                    v286 = &v817[v799];
                    if (v286 >= v64)
                    {
                      v287 = -v742;
                    }

                    else
                    {
                      v287 = 0;
                    }

                    v66 += v279 + v287;
                    v817 = &v286[v287];
                    v818 += v280;
                    --v281;
                  }

                  while (v281);
                  if (v771)
                  {
                    v288 = &v781[v773];
                    v52 = v769;
                    v289 = v755;
                    if (v288 < v771)
                    {
                      v289 = 0;
                    }

                    v66 = &v784[v769 + v289];
                    v290 = -(v773 * v38);
                    if (v288 < v771)
                    {
                      v290 = 0;
                    }

                    v64 += 2 * v290 + 2 * v773;
                    v781 = &v288[v290];
                    v784 += v769 + v289;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 18:
                v365 = v62;
                v805 = v62;
                v366 = v20;
                v367 = v39;
                v761 = -(v52 * v38);
                v368 = 2 * v365;
                while (1)
                {
                  v369 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v370 = 255;
LABEL_566:
                      v371 = v64;
                      if (v20)
                      {
                        v372 = *__ba;
                        if (v372 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_572:
                          *__ba = v370;
                          goto LABEL_573;
                        }
                      }

                      else
                      {
                        v372 = 255;
                      }

                      v373 = PDAcolordodgePDA(bswap32(*v818) >> 16, v372, bswap32(*v817) >> 16, v370);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v373) >> 16;
                      v64 = v371;
                      if (!v813)
                      {
                        goto LABEL_573;
                      }

                      v370 = HIBYTE(v373);
                      goto LABEL_572;
                    }

                    v370 = *v66;
                    if (v370 >= 8)
                    {
                      goto LABEL_566;
                    }

LABEL_573:
                    __ba += v366;
                    v374 = &v817[v805];
                    if (v374 >= v64)
                    {
                      v375 = -v742;
                    }

                    else
                    {
                      v375 = 0;
                    }

                    v66 += v367 + v375;
                    v817 = &v374[v375];
                    v818 += v368;
                    --v369;
                  }

                  while (v369);
                  if (v771)
                  {
                    v376 = &v781[v773];
                    v52 = v769;
                    v377 = v761;
                    if (v376 < v771)
                    {
                      v377 = 0;
                    }

                    v66 = &v784[v769 + v377];
                    v378 = -(v773 * v38);
                    if (v376 < v771)
                    {
                      v378 = 0;
                    }

                    v64 += 2 * v378 + 2 * v773;
                    v781 = &v376[v378];
                    v784 += v769 + v377;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 19:
                v424 = v62;
                v809 = v62;
                v425 = v20;
                v426 = v39;
                v764 = -(v52 * v38);
                v427 = 2 * v424;
                while (1)
                {
                  v428 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v429 = 255;
LABEL_655:
                      v430 = v64;
                      if (v20)
                      {
                        v431 = *__ba;
                        if (v431 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_661:
                          *__ba = v429;
                          goto LABEL_662;
                        }
                      }

                      else
                      {
                        v431 = 255;
                      }

                      v432 = PDAcolorburnPDA(bswap32(*v818) >> 16, v431, bswap32(*v817) >> 16, v429);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v432) >> 16;
                      v64 = v430;
                      if (!v813)
                      {
                        goto LABEL_662;
                      }

                      v429 = HIBYTE(v432);
                      goto LABEL_661;
                    }

                    v429 = *v66;
                    if (v429 >= 8)
                    {
                      goto LABEL_655;
                    }

LABEL_662:
                    __ba += v425;
                    v433 = &v817[v809];
                    if (v433 >= v64)
                    {
                      v434 = -v742;
                    }

                    else
                    {
                      v434 = 0;
                    }

                    v66 += v426 + v434;
                    v817 = &v433[v434];
                    v818 += v427;
                    --v428;
                  }

                  while (v428);
                  if (v771)
                  {
                    v435 = &v781[v773];
                    v52 = v769;
                    v436 = v764;
                    if (v435 < v771)
                    {
                      v436 = 0;
                    }

                    v66 = &v784[v769 + v436];
                    v437 = -(v773 * v38);
                    if (v435 < v771)
                    {
                      v437 = 0;
                    }

                    v64 += 2 * v437 + 2 * v773;
                    v781 = &v435[v437];
                    v784 += v769 + v436;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 20:
                v291 = v62;
                v800 = v62;
                v292 = v20;
                v293 = v39;
                v756 = -(v52 * v38);
                v294 = 2 * v291;
                while (1)
                {
                  v295 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v296 = 255;
LABEL_448:
                      v297 = v64;
                      if (v20)
                      {
                        v298 = *__ba;
                        if (v298 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_454:
                          *__ba = v296;
                          goto LABEL_455;
                        }
                      }

                      else
                      {
                        v298 = 255;
                      }

                      v299 = PDAsoftlightPDA(bswap32(*v818) >> 16, v298, bswap32(*v817) >> 16, v296);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v299) >> 16;
                      v64 = v297;
                      if (!v813)
                      {
                        goto LABEL_455;
                      }

                      v296 = HIBYTE(v299);
                      goto LABEL_454;
                    }

                    v296 = *v66;
                    if (v296 >= 8)
                    {
                      goto LABEL_448;
                    }

LABEL_455:
                    __ba += v292;
                    v300 = &v817[v800];
                    if (v300 >= v64)
                    {
                      v301 = -v742;
                    }

                    else
                    {
                      v301 = 0;
                    }

                    v66 += v293 + v301;
                    v817 = &v300[v301];
                    v818 += v294;
                    --v295;
                  }

                  while (v295);
                  if (v771)
                  {
                    v302 = &v781[v773];
                    v52 = v769;
                    v303 = v756;
                    if (v302 < v771)
                    {
                      v303 = 0;
                    }

                    v66 = &v784[v769 + v303];
                    v304 = -(v773 * v38);
                    if (v302 < v771)
                    {
                      v304 = 0;
                    }

                    v64 += 2 * v304 + 2 * v773;
                    v781 = &v302[v304];
                    v784 += v769 + v303;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 21:
                v322 = v62;
                v802 = v62;
                v323 = v20;
                v324 = v39;
                v758 = -(v52 * v38);
                v325 = 2 * v322;
                while (1)
                {
                  v326 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v327 = 255;
LABEL_489:
                      v328 = v64;
                      if (v20)
                      {
                        v329 = *__ba;
                        if (v329 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_495:
                          *__ba = v327;
                          goto LABEL_496;
                        }
                      }

                      else
                      {
                        v329 = 255;
                      }

                      v330 = PDAhardlightPDA(bswap32(*v818) >> 16, v329, bswap32(*v817) >> 16, v327);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v330) >> 16;
                      v64 = v328;
                      if (!v813)
                      {
                        goto LABEL_496;
                      }

                      v327 = HIBYTE(v330);
                      goto LABEL_495;
                    }

                    v327 = *v66;
                    if (v327 >= 8)
                    {
                      goto LABEL_489;
                    }

LABEL_496:
                    __ba += v323;
                    v331 = &v817[v802];
                    if (v331 >= v64)
                    {
                      v332 = -v742;
                    }

                    else
                    {
                      v332 = 0;
                    }

                    v66 += v324 + v332;
                    v817 = &v331[v332];
                    v818 += v325;
                    --v326;
                  }

                  while (v326);
                  if (v771)
                  {
                    v333 = &v781[v773];
                    v52 = v769;
                    v334 = v758;
                    if (v333 < v771)
                    {
                      v334 = 0;
                    }

                    v66 = &v784[v769 + v334];
                    v335 = -(v773 * v38);
                    if (v333 < v771)
                    {
                      v335 = 0;
                    }

                    v64 += 2 * v335 + 2 * v773;
                    v781 = &v333[v335];
                    v784 += v769 + v334;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 22:
                v410 = v62;
                v808 = v62;
                v411 = v20;
                v412 = v39;
                v763 = -(v52 * v38);
                v413 = 2 * v410;
                while (1)
                {
                  v414 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v415 = 255;
LABEL_629:
                      v416 = v64;
                      if (v20)
                      {
                        v417 = *__ba;
                        if (v417 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_635:
                          *__ba = v415;
                          goto LABEL_636;
                        }
                      }

                      else
                      {
                        v417 = 255;
                      }

                      v418 = PDAdifferencePDA(bswap32(*v818) >> 16, v417, bswap32(*v817) >> 16, v415);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v418) >> 16;
                      v64 = v416;
                      if (!v813)
                      {
                        goto LABEL_636;
                      }

                      v415 = HIBYTE(v418);
                      goto LABEL_635;
                    }

                    v415 = *v66;
                    if (v415 >= 8)
                    {
                      goto LABEL_629;
                    }

LABEL_636:
                    __ba += v411;
                    v419 = &v817[v808];
                    if (v419 >= v64)
                    {
                      v420 = -v742;
                    }

                    else
                    {
                      v420 = 0;
                    }

                    v66 += v412 + v420;
                    v817 = &v419[v420];
                    v818 += v413;
                    --v414;
                  }

                  while (v414);
                  if (v771)
                  {
                    v421 = &v781[v773];
                    v52 = v769;
                    v422 = v763;
                    if (v421 < v771)
                    {
                      v422 = 0;
                    }

                    v66 = &v784[v769 + v422];
                    v423 = -(v773 * v38);
                    if (v421 < v771)
                    {
                      v423 = 0;
                    }

                    v64 += 2 * v423 + 2 * v773;
                    v781 = &v421[v423];
                    v784 += v769 + v422;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 23:
                v438 = v62;
                v810 = v62;
                v439 = v20;
                v440 = v39;
                v765 = -(v52 * v38);
                v441 = 2 * v438;
                while (1)
                {
                  v442 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v443 = 255;
LABEL_681:
                      v444 = v64;
                      if (v20)
                      {
                        v445 = *__ba;
                        if (v445 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_687:
                          *__ba = v443;
                          goto LABEL_688;
                        }
                      }

                      else
                      {
                        v445 = 255;
                      }

                      v446 = PDAexclusionPDA(bswap32(*v818) >> 16, v445, bswap32(*v817) >> 16, v443);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v446) >> 16;
                      v64 = v444;
                      if (!v813)
                      {
                        goto LABEL_688;
                      }

                      v443 = HIBYTE(v446);
                      goto LABEL_687;
                    }

                    v443 = *v66;
                    if (v443 >= 8)
                    {
                      goto LABEL_681;
                    }

LABEL_688:
                    __ba += v439;
                    v447 = &v817[v810];
                    if (v447 >= v64)
                    {
                      v448 = -v742;
                    }

                    else
                    {
                      v448 = 0;
                    }

                    v66 += v440 + v448;
                    v817 = &v447[v448];
                    v818 += v441;
                    --v442;
                  }

                  while (v442);
                  if (v771)
                  {
                    v449 = &v781[v773];
                    v52 = v769;
                    v450 = v765;
                    if (v449 < v771)
                    {
                      v450 = 0;
                    }

                    v66 = &v784[v769 + v450];
                    v451 = -(v773 * v38);
                    if (v449 < v771)
                    {
                      v451 = 0;
                    }

                    v64 += 2 * v451 + 2 * v773;
                    v781 = &v449[v451];
                    v784 += v769 + v450;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 24:
                v203 = v62;
                v794 = v62;
                v204 = v20;
                v205 = v39;
                v753 = -(v52 * v38);
                v206 = 2 * v203;
                while (1)
                {
                  v207 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v208 = 255;
LABEL_299:
                      v209 = v64;
                      if (v20)
                      {
                        v210 = *__ba;
                        if (v210 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_305:
                          *__ba = v208;
                          goto LABEL_306;
                        }
                      }

                      else
                      {
                        v210 = 255;
                      }

                      v211 = PDAhuePDA(bswap32(*v818) >> 16, v210, bswap32(*v817) >> 16, v208);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v211) >> 16;
                      v64 = v209;
                      if (!v813)
                      {
                        goto LABEL_306;
                      }

                      v208 = HIBYTE(v211);
                      goto LABEL_305;
                    }

                    v208 = *v66;
                    if (v208 >= 8)
                    {
                      goto LABEL_299;
                    }

LABEL_306:
                    __ba += v204;
                    v212 = &v817[v794];
                    if (v212 >= v64)
                    {
                      v213 = -v742;
                    }

                    else
                    {
                      v213 = 0;
                    }

                    v66 += v205 + v213;
                    v817 = &v212[v213];
                    v818 += v206;
                    --v207;
                  }

                  while (v207);
                  if (v771)
                  {
                    v214 = &v781[v773];
                    v52 = v769;
                    v215 = v753;
                    if (v214 < v771)
                    {
                      v215 = 0;
                    }

                    v66 = &v784[v769 + v215];
                    v216 = -(v773 * v38);
                    if (v214 < v771)
                    {
                      v216 = 0;
                    }

                    v64 += 2 * v216 + 2 * v773;
                    v781 = &v214[v216];
                    v784 += v769 + v215;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 25:
                v189 = v62;
                v793 = v62;
                v190 = v20;
                v191 = v39;
                v752 = -(v52 * v38);
                v192 = 2 * v189;
                while (1)
                {
                  v193 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v194 = 255;
LABEL_273:
                      v195 = v64;
                      if (v20)
                      {
                        v196 = *__ba;
                        if (v196 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_279:
                          *__ba = v194;
                          goto LABEL_280;
                        }
                      }

                      else
                      {
                        v196 = 255;
                      }

                      v197 = PDAsaturationPDA(bswap32(*v818) >> 16, v196, bswap32(*v817) >> 16, v194);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v197) >> 16;
                      v64 = v195;
                      if (!v813)
                      {
                        goto LABEL_280;
                      }

                      v194 = HIBYTE(v197);
                      goto LABEL_279;
                    }

                    v194 = *v66;
                    if (v194 >= 8)
                    {
                      goto LABEL_273;
                    }

LABEL_280:
                    __ba += v190;
                    v198 = &v817[v793];
                    if (v198 >= v64)
                    {
                      v199 = -v742;
                    }

                    else
                    {
                      v199 = 0;
                    }

                    v66 += v191 + v199;
                    v817 = &v198[v199];
                    v818 += v192;
                    --v193;
                  }

                  while (v193);
                  if (v771)
                  {
                    v200 = &v781[v773];
                    v52 = v769;
                    v201 = v752;
                    if (v200 < v771)
                    {
                      v201 = 0;
                    }

                    v66 = &v784[v769 + v201];
                    v202 = -(v773 * v38);
                    if (v200 < v771)
                    {
                      v202 = 0;
                    }

                    v64 += 2 * v202 + 2 * v773;
                    v781 = &v200[v202];
                    v784 += v769 + v201;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 26:
                v452 = v62;
                v811 = v62;
                v453 = v20;
                v454 = v39;
                v766 = -(v52 * v38);
                v455 = 2 * v452;
                while (1)
                {
                  v456 = v833[0];
                  do
                  {
                    if (!v39)
                    {
                      v457 = 255;
LABEL_707:
                      v458 = v64;
                      if (v20)
                      {
                        v459 = *__ba;
                        if (v459 <= 7)
                        {
                          *v818 = *v817;
                          LODWORD(v39) = v815;
LABEL_713:
                          *__ba = v457;
                          goto LABEL_714;
                        }
                      }

                      else
                      {
                        v459 = 255;
                      }

                      v460 = PDAluminosityPDA(bswap32(*v817) >> 16, v457, bswap32(*v818) >> 16, v459);
                      LODWORD(v20) = v813;
                      LODWORD(v39) = v815;
                      *v818 = bswap32(v460) >> 16;
                      v64 = v458;
                      if (!v813)
                      {
                        goto LABEL_714;
                      }

                      v457 = HIBYTE(v460);
                      goto LABEL_713;
                    }

                    v457 = *v66;
                    if (v457 >= 8)
                    {
                      goto LABEL_707;
                    }

LABEL_714:
                    __ba += v453;
                    v461 = &v817[v811];
                    if (v461 >= v64)
                    {
                      v462 = -v742;
                    }

                    else
                    {
                      v462 = 0;
                    }

                    v66 += v454 + v462;
                    v817 = &v461[v462];
                    v818 += v455;
                    --v456;
                  }

                  while (v456);
                  if (v771)
                  {
                    v463 = &v781[v773];
                    v52 = v769;
                    v464 = v766;
                    if (v463 < v771)
                    {
                      v464 = 0;
                    }

                    v66 = &v784[v769 + v464];
                    v465 = -(v773 * v38);
                    if (v463 < v771)
                    {
                      v465 = 0;
                    }

                    v64 += 2 * v465 + 2 * v773;
                    v781 = &v463[v465];
                    v784 += v769 + v464;
                    v817 = v781;
                  }

                  else
                  {
                    v817 += v773;
                    v52 = v769;
                    v66 += v769;
                  }

                  v818 += 2 * v770;
                  __ba += v768;
                  if (!--v823[0])
                  {
                    goto LABEL_840;
                  }
                }

              case 27:
                v91 = v62;
                v787 = v62;
                v92 = v20;
                v93 = v39;
                v746 = -(v52 * v38);
                v94 = 2 * v91;
                break;
              default:
                goto LABEL_918;
            }

            break;
          }

LABEL_112:
          v95 = v833[0];
          while (1)
          {
            if (v39)
            {
              v96 = *v66;
              if (v96 < 8)
              {
                goto LABEL_124;
              }
            }

            else
            {
              v96 = 255;
            }

            v97 = v64;
            if (v20)
            {
              v98 = *__ba;
              if (v98 <= 7)
              {
                *v818 = *v817;
                LODWORD(v39) = v815;
LABEL_123:
                *__ba = v96;
                goto LABEL_124;
              }
            }

            else
            {
              v98 = 255;
            }

            v99 = PDAluminosityPDA(bswap32(*v818) >> 16, v98, bswap32(*v817) >> 16, v96);
            LODWORD(v20) = v813;
            LODWORD(v39) = v815;
            *v818 = bswap32(v99) >> 16;
            v64 = v97;
            if (v813)
            {
              v96 = HIBYTE(v99);
              goto LABEL_123;
            }

LABEL_124:
            __ba += v92;
            v100 = &v817[v787];
            if (v100 >= v64)
            {
              v101 = -v742;
            }

            else
            {
              v101 = 0;
            }

            v66 += v93 + v101;
            v817 = &v100[v101];
            v818 += v94;
            if (!--v95)
            {
              if (v771)
              {
                v102 = &v781[v773];
                v52 = v769;
                v103 = v746;
                if (v102 < v771)
                {
                  v103 = 0;
                }

                v66 = &v784[v769 + v103];
                v104 = -(v773 * v38);
                if (v102 < v771)
                {
                  v104 = 0;
                }

                v64 += 2 * v104 + 2 * v773;
                v781 = &v102[v104];
                v784 += v769 + v103;
                v817 = v781;
              }

              else
              {
                v817 += v773;
                v52 = v769;
                v66 += v769;
              }

              v818 += 2 * v770;
              __ba += v768;
              if (!--v823[0])
              {
                goto LABEL_840;
              }

              goto LABEL_112;
            }
          }
        }

        v63 = v62 * v9;
        v768 = v734 - v20 * v9;
        v64 = -1;
        v52 = v38;
        v51 = v742;
        goto LABEL_71;
      }

      v38 = *(v2 + 68);
      LODWORD(v742) = *(v2 + 64);
      v51 = *(v2 + 76) >> 1;
      if (v5)
      {
        v50 = 0;
        v52 = *(v2 + 80);
        LODWORD(v39) = 1;
      }

      else
      {
        v52 = 0;
        LODWORD(v39) = 0;
        v50 = 1;
      }
    }

    v771 = &v16[v51 * v38];
    v20 &= 1u;
    if (v13)
    {
      v773 = v51;
      v813 = v20;
      v815 = v39;
      v62 = 1;
      v781 = v16;
      v741 = v16;
      v786 = v16;
      goto LABEL_60;
    }

    v768 = v734 - (v20 * v9);
    if (v16)
    {
      v67 = v716 % v38;
      v68 = v715 % v742;
      v773 = v51;
      v69 = &v16[v51 * (v716 % v38)];
      v64 = &v69[v742];
      v740 = 0;
      v70 = (v50 & 1) == 0;
      v62 = 1;
      if (v50)
      {
        v71 = v5;
      }

      else
      {
        LODWORD(v39) = 1;
        v71 = &v5[v52 * v67 + v68];
      }

      v781 = &v69[v68];
      v784 = v71;
      if (v70)
      {
        v66 = &v5[v52 * v67 + v68];
      }

      else
      {
        v66 = v5;
      }

      __ba = v735;
      v817 = &v69[v68];
      v818 = v733;
      v745 = v9;
      v63 = v9;
      goto LABEL_88;
    }

    v64 = 0;
    v62 = 1;
    v63 = v9;
LABEL_71:
    v740 = 0;
    v781 = 0;
    v784 = v5;
    v771 = 0;
    v773 = v51 - v63;
    v745 = v9;
    v52 -= v39 * v9;
    v66 = v5;
    __ba = v735;
    v817 = v16;
    v818 = v733;
    goto LABEL_99;
  }

  v14 = *(v2 + 128);
  if ((v14 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      RGB555_mark_constmask(v2, v7);
    }

    else
    {
      RGB555_mark_pixelmask(v2, v7);
    }

    return 1;
  }

  v21 = *(v2 + 112);
  v22 = *(v2 + 116);
  v23 = (v21 + 15) & 0xFFFFFFF0;
  v24 = v23 * v22;
  if (v24 <= 4096)
  {
    v26 = v833;
    v27 = v2;
    goto LABEL_39;
  }

  v25 = malloc_type_malloc(v24, 0x97CEE3C3uLL);
  if (v25)
  {
    v26 = v25;
    v27 = v736;
    v13 = *(v736 + 136);
    v14 = *(v736 + 128);
LABEL_39:
    CGSConvertBitsToMask(v13, *(v27 + 124), v26, v23, v21, v22, v14);
    v53 = *(v27 + 112);
    v829 = *(v27 + 96);
    v830 = v53;
    v54 = *(v27 + 144);
    v831 = *(v27 + 128);
    v832 = v54;
    v55 = *(v27 + 48);
    v825 = *(v27 + 32);
    v826 = v55;
    v56 = *(v27 + 80);
    v827 = *(v27 + 64);
    v828 = v56;
    v57 = *(v27 + 16);
    *v823 = *v27;
    v824 = v57;
    HIDWORD(v830) = (v21 + 15) & 0xFFFFFFF0;
    *(&v831 + 1) = v26;
    if (BYTE1(v823[0]) << 8 == 1024)
    {
      RGB555_mark_constmask(v823, v739);
    }

    else
    {
      RGB555_mark_pixelmask(v823, v739);
    }

    if (v26 == v833)
    {
      return 1;
    }

    v58 = v26;
    goto LABEL_1262;
  }

  return 1;
}

uint64_t RGB555_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v141 = result;
  if (*(result + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = 255;
  }

  v146 = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v131 = *(a2 + 5) - a5;
  }

  else
  {
    v131 = 0;
  }

  v10 = a2[1];
  v130 = *a2;
  v129 = *(a2 + 3) - a5;
  v145 = v9 != 0;
  v12 = *(a2 + 19);
  v11 = *(a2 + 20);
  v13 = *(a2 + 11);
  v126 = *(a2 + 13);
  v14 = *(a2 + 9) + v126 * a4;
  v124 = *(a2 + 6);
  v133 = *(a2 + 7);
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v17 = *(result + 168);
  v144 = v10;
  v127 = v13;
  v128 = v12;
  v125 = v17;
  if (*(result + 176))
  {
    v138 = 0;
    v18 = 0;
    v123 = *(a2 + 15);
    v121 = ~(-1 << v13);
    v122 = *(a2 + 17);
    v120 = v13 - 4;
    v119 = -v12;
    v19 = (v16 - 4);
    v142 = 32 - v10;
    v117 = v11 + 16 * a3 + 8;
    v118 = a5;
    while (1)
    {
      if (((v122 - v14) | (v14 - v123)) < 0)
      {
        v24 = 0;
        v139 = 0;
      }

      else
      {
        v20 = ((v14 & v121) >> v120) & 0xF;
        v21 = weights_21890[v20];
        v22 = (v20 - 7) >= 9;
        v23 = v119;
        if (!v22)
        {
          v23 = v12;
        }

        v139 = v23;
        v24 = v21 & 0xF;
      }

      if (v17)
      {
        v25 = v17 + 16 * v133;
        v138 = v25 + 16;
        v18 = (v25 + v124);
        v26 = (v133 + 1) & 0xF;
        if (v133 + 1 <= 0)
        {
          v26 = -(-(v133 + 1) & 0xF);
        }

        v133 = v26;
      }

      v27 = *(v141 + 32) + (v14 >> v13) * v12;
      v136 = a6;
      v134 = v14;
      if (v130 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v28 = v117;
        v29 = v118;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v19 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v19;
          }

          if (v33 < v15)
          {
            v33 = v15;
          }

          v34 = *v33;
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v46 = (v32 + v139);
            if (v19 < v32 + v139)
            {
              v46 = v19;
            }

            if (v46 < v15)
            {
              v46 = v15;
            }

            v47 = BLEND8_21892[v24];
            v44 = v34 - ((v47 & v34) >> v24);
            v45 = (v47 & *v46) >> v24;
            goto LABEL_49;
          }

LABEL_50:
          v48 = (v34 << v10) | (v34 >> v142);
          v49 = v48 | v146;
          if (v18)
          {
            v50 = *v18;
            if ((v18 + 1) < v138)
            {
              ++v18;
            }

            else
            {
              v18 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v49, v50);
            }

            else
            {
              result = DITHERRGBA32M(v49, v50, v6);
            }

            LOBYTE(v10) = v144;
          }

          else
          {
            v51 = (v48 >> 17) & 0x7C00 | (v48 >> 14) & 0x3E0 | (v48 >> 11) & 0xFFFFFF | ((v49 >> 3) << 27) | (v49 >> 5 << 24);
            v52 = ((v48 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v48 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v53 = (v49 & 0xFF00FF) * v6 + 65537 + ((((v49 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v54 = (v52 >> 17) & 0x7C00 | (v52 >> 11) & 0xFFFFFF | ((v53 >> 11) << 27) | ((v49 * v6 + 1 + ((v49 * v6) >> 8)) >> 13 << 24) | (32 * (v53 >> 27));
            if (v6 == 255)
            {
              result = v51;
            }

            else
            {
              result = v54;
            }

            v18 = 0;
          }

          *v8 = bswap32(result) >> 16;
          if (v9)
          {
            *v9 = BYTE3(result);
          }

          v28 += 2;
          ++v8;
          v9 += v145;
          if (!--v29)
          {
            goto LABEL_121;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v19 < v36)
        {
          v36 = v19;
        }

        if (v36 < v15)
        {
          v36 = v15;
        }

        v37 = *v36;
        if (v24)
        {
          v38 = (v32 + v139);
          if (v19 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v19;
          }

          if (v39 < v15)
          {
            v39 = v15;
          }

          v40 = *v39;
          v41 = (v38 + (v31 >> 4));
          if (v19 < v41)
          {
            v41 = v19;
          }

          if (v41 < v15)
          {
            v41 = v15;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((v42 & *v41) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_49:
        v34 = v44 + v45;
        goto LABEL_50;
      }

LABEL_121:
      v12 = v128;
      v8 += v129;
      v9 += v131;
      LOBYTE(v13) = v127;
      v14 = v134 + v126;
      a6 = v136 - 1;
      v17 = v125;
      if (v136 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_121;
    }

    v56 = v117;
    v55 = v118;
    while (1)
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      v59 = v27 + v57;
      if (v19 >= v27 + v57)
      {
        v60 = (v27 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v15)
      {
        v60 = v15;
      }

      v61 = *v60;
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v15)
        {
          v63 = v15;
        }

        v64 = *v63;
        if (v24)
        {
          v65 = (v59 + v139);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v15)
          {
            v66 = v15;
          }

          v67 = *v66;
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v15)
          {
            v68 = v15;
          }

          v69 = BLEND8_21892[v24];
          v61 = v61 - ((v69 & v61) >> v24) + ((v69 & v67) >> v24);
          v64 = v64 - ((v69 & v64) >> v24) + ((v69 & *v68) >> v24);
        }

        v70 = BLEND8_21892[*v56 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v24)
        {
          goto LABEL_97;
        }

        v73 = (v59 + v139);
        if (v19 < v59 + v139)
        {
          v73 = v19;
        }

        if (v73 < v15)
        {
          v73 = v15;
        }

        v74 = BLEND8_21892[v24];
        v71 = v61 - ((v74 & v61) >> v24);
        v72 = (v74 & *v73) >> v24;
      }

      v61 = v71 + v72;
LABEL_97:
      v75 = (v61 << v10) | (v61 >> v142);
      v76 = v75 | v146;
      if (v18)
      {
        v77 = *v18;
        if ((v18 + 1) < v138)
        {
          ++v18;
        }

        else
        {
          v18 -= 15;
        }

        if (v6 == 255)
        {
          result = DITHERRGBA32(v76, v77);
        }

        else
        {
          result = DITHERRGBA32M(v76, v77, v6);
        }

        LOBYTE(v10) = v144;
      }

      else
      {
        v78 = (v75 >> 17) & 0x7C00 | (v75 >> 14) & 0x3E0 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 3) << 27) | (v76 >> 5 << 24);
        v79 = ((v75 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v75 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v80 = (v76 & 0xFF00FF) * v6 + 65537 + ((((v76 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v81 = (v79 >> 17) & 0x7C00 | (v79 >> 11) & 0xFFFFFF | ((v80 >> 11) << 27) | ((v76 * v6 + 1 + ((v76 * v6) >> 8)) >> 13 << 24) | (32 * (v80 >> 27));
        if (v6 == 255)
        {
          result = v78;
        }

        else
        {
          result = v81;
        }

        v18 = 0;
      }

      v82 = result >> 27;
      if (v9)
      {
        if (result >> 27 == 31)
        {
          v83 = BYTE3(result);
          *v8 = bswap32(result) >> 16;
LABEL_116:
          *v9 = v83;
          goto LABEL_120;
        }

        if (v82)
        {
          result = PDAplusDAM(result, SBYTE3(result), bswap32(*v8) >> 16, *v9, BYTE3(result) ^ 0xFF);
          LOBYTE(v10) = v144;
          *v8 = bswap32(result) >> 16;
          v83 = BYTE3(result);
          goto LABEL_116;
        }
      }

      else
      {
        if (result >> 27 == 31)
        {
          v84 = bswap32(result) >> 16;
LABEL_119:
          *v8 = v84;
          goto LABEL_120;
        }

        if (v82)
        {
          result = PDplusDM(result, bswap32(*v8) >> 16, ~result >> 24);
          LOBYTE(v10) = v144;
          LOWORD(v84) = __rev16(result);
          goto LABEL_119;
        }
      }

LABEL_120:
      v56 += 2;
      ++v8;
      v9 += v145;
      if (!--v55)
      {
        goto LABEL_121;
      }
    }
  }

  v85 = 0;
  v86 = 0;
  v143 = (v11 + 16 * a3);
  v87 = v16 - 4;
  v88 = 32 - v10;
  v140 = a5;
  do
  {
    if (v17)
    {
      v89 = v17 + 16 * v133;
      v85 = v89 + 16;
      v86 = (v89 + v124);
      v90 = (v133 + 1) & 0xF;
      if (v133 + 1 <= 0)
      {
        v90 = -(-(v133 + 1) & 0xF);
      }

      v133 = v90;
    }

    v91 = *(v141 + 32) + (v14 >> v13) * v12;
    v137 = a6;
    v135 = v14;
    if (v130 != 1)
    {
      v103 = v143;
      v104 = v140;
      if (a5 < 1)
      {
        goto LABEL_180;
      }

      while (1)
      {
        v105 = *v103;
        v103 += 2;
        v106 = (v91 + v105);
        if (v87 < v91 + v105)
        {
          v106 = v87;
        }

        if (v106 < *(v141 + 32))
        {
          v106 = *(v141 + 32);
        }

        v107 = (*v106 << v10) | (*v106 >> v88);
        v108 = v107 | v146;
        if (v86)
        {
          v109 = *v86;
          if ((v86 + 1) < v85)
          {
            ++v86;
          }

          else
          {
            v86 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v108, v109);
          }

          else
          {
            result = DITHERRGBA32M(v108, v109, v6);
          }

          LOBYTE(v10) = v144;
        }

        else
        {
          v110 = (v107 >> 17) & 0x7C00 | (v107 >> 14) & 0x3E0 | (v107 >> 11) & 0xFFFFFF | ((v108 >> 3) << 27) | (v108 >> 5 << 24);
          v111 = ((v107 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v107 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v112 = (v108 & 0xFF00FF) * v6 + 65537 + ((((v108 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v113 = (v111 >> 17) & 0x7C00 | (v111 >> 11) & 0xFFFFFF | ((v112 >> 11) << 27) | ((v108 * v6 + 1 + ((v108 * v6) >> 8)) >> 13 << 24) | (32 * (v112 >> 27));
          if (v6 == 255)
          {
            result = v110;
          }

          else
          {
            result = v113;
          }

          v86 = 0;
        }

        v114 = result >> 27;
        if (v9)
        {
          if (result >> 27 == 31)
          {
            v115 = BYTE3(result);
            *v8 = bswap32(result) >> 16;
LABEL_175:
            *v9 = v115;
            goto LABEL_179;
          }

          if (v114)
          {
            result = PDAplusDAM(result, SBYTE3(result), bswap32(*v8) >> 16, *v9, BYTE3(result) ^ 0xFF);
            LOBYTE(v10) = v144;
            *v8 = bswap32(result) >> 16;
            v115 = BYTE3(result);
            goto LABEL_175;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            v116 = bswap32(result) >> 16;
LABEL_178:
            *v8 = v116;
            goto LABEL_179;
          }

          if (v114)
          {
            result = PDplusDM(result, bswap32(*v8) >> 16, ~result >> 24);
            LOBYTE(v10) = v144;
            LOWORD(v116) = __rev16(result);
            goto LABEL_178;
          }
        }

LABEL_179:
        ++v8;
        v9 += v145;
        if (!--v104)
        {
          goto LABEL_180;
        }
      }
    }

    if (a5 >= 1)
    {
      v92 = v143;
      v93 = v140;
      do
      {
        v94 = *v92;
        v92 += 2;
        v95 = (v91 + v94);
        if (v87 < v91 + v94)
        {
          v95 = v87;
        }

        if (v95 < *(v141 + 32))
        {
          v95 = *(v141 + 32);
        }

        v96 = (*v95 << v10) | (*v95 >> v88);
        v97 = v96 | v146;
        if (v86)
        {
          v98 = *v86;
          if ((v86 + 1) < v85)
          {
            ++v86;
          }

          else
          {
            v86 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v97, v98);
          }

          else
          {
            result = DITHERRGBA32M(v97, v98, v6);
          }

          LOBYTE(v10) = v144;
        }

        else
        {
          v99 = (v96 >> 17) & 0x7C00 | (v96 >> 14) & 0x3E0 | (v96 >> 11) & 0xFFFFFF | ((v97 >> 3) << 27) | (v97 >> 5 << 24);
          v100 = ((v96 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v96 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v101 = (v97 & 0xFF00FF) * v6 + 65537 + ((((v97 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v102 = (v100 >> 17) & 0x7C00 | (v100 >> 11) & 0xFFFFFF | ((v101 >> 11) << 27) | ((v97 * v6 + 1 + ((v97 * v6) >> 8)) >> 13 << 24) | (32 * (v101 >> 27));
          if (v6 == 255)
          {
            result = v99;
          }

          else
          {
            result = v102;
          }

          v86 = 0;
        }

        *v8 = bswap32(result) >> 16;
        if (v9)
        {
          *v9 = BYTE3(result);
        }

        ++v8;
        v9 += v145;
        --v93;
      }

      while (v93);
    }

LABEL_180:
    v12 = v128;
    v8 += v129;
    v9 += v131;
    LOBYTE(v13) = v127;
    v14 = v135 + v126;
    a6 = v137 - 1;
    v17 = v125;
  }

  while (v137 != 1);
  return result;
}

uint64_t RGB555_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v143 = result;
  if (*(result + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = 255;
  }

  v148 = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v133 = *(a2 + 5) - a5;
  }

  else
  {
    v133 = 0;
  }

  v10 = a2[1];
  v132 = *a2;
  v131 = *(a2 + 3) - a5;
  v147 = v9 != 0;
  v12 = *(a2 + 19);
  v11 = *(a2 + 20);
  v13 = *(a2 + 11);
  v128 = *(a2 + 13);
  v14 = *(a2 + 9) + v128 * a4;
  v126 = *(a2 + 6);
  v135 = *(a2 + 7);
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v17 = *(result + 168);
  v146 = v10;
  v129 = v13;
  v130 = v12;
  v127 = v17;
  if (*(result + 176))
  {
    v140 = 0;
    v18 = 0;
    v125 = *(a2 + 15);
    v123 = ~(-1 << v13);
    v124 = *(a2 + 17);
    v122 = v13 - 4;
    v121 = -v12;
    v19 = (v16 - 4);
    v144 = 32 - v10;
    v119 = v11 + 16 * a3 + 8;
    v120 = a5;
    while (1)
    {
      if (((v124 - v14) | (v14 - v125)) < 0)
      {
        v24 = 0;
        v141 = 0;
      }

      else
      {
        v20 = ((v14 & v123) >> v122) & 0xF;
        v21 = weights_21890[v20];
        v22 = (v20 - 7) >= 9;
        v23 = v121;
        if (!v22)
        {
          v23 = v12;
        }

        v141 = v23;
        v24 = v21 & 0xF;
      }

      if (v17)
      {
        v25 = v17 + 16 * v135;
        v140 = v25 + 16;
        v18 = (v25 + v126);
        v26 = (v135 + 1) & 0xF;
        if (v135 + 1 <= 0)
        {
          v26 = -(-(v135 + 1) & 0xF);
        }

        v135 = v26;
      }

      v27 = *(v143 + 32) + (v14 >> v13) * v12;
      v138 = a6;
      v136 = v14;
      if (v132 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v28 = v119;
        v29 = v120;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v19 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v19;
          }

          if (v33 < v15)
          {
            v33 = v15;
          }

          v34 = bswap32(*v33);
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v46 = (v32 + v141);
            if (v19 < v32 + v141)
            {
              v46 = v19;
            }

            if (v46 < v15)
            {
              v46 = v15;
            }

            v47 = BLEND8_21892[v24];
            v44 = v34 - ((v47 & v34) >> v24);
            v45 = (bswap32(*v46) & v47) >> v24;
            goto LABEL_49;
          }

LABEL_50:
          v48 = (v34 << v10) | (v34 >> v144);
          v49 = v48 | v148;
          if (v18)
          {
            v50 = *v18;
            if ((v18 + 1) < v140)
            {
              ++v18;
            }

            else
            {
              v18 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v49, v50);
            }

            else
            {
              result = DITHERRGBA32M(v49, v50, v6);
            }

            LOBYTE(v10) = v146;
          }

          else
          {
            v51 = (v48 >> 17) & 0x7C00 | (v48 >> 14) & 0x3E0 | (v48 >> 11) & 0xFFFFFF | ((v49 >> 3) << 27) | (v49 >> 5 << 24);
            v52 = ((v48 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v48 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v53 = (v49 & 0xFF00FF) * v6 + 65537 + ((((v49 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v54 = (v52 >> 17) & 0x7C00 | (v52 >> 11) & 0xFFFFFF | ((v53 >> 11) << 27) | ((v49 * v6 + 1 + ((v49 * v6) >> 8)) >> 13 << 24) | (32 * (v53 >> 27));
            if (v6 == 255)
            {
              result = v51;
            }

            else
            {
              result = v54;
            }

            v18 = 0;
          }

          *v8 = bswap32(result) >> 16;
          if (v9)
          {
            *v9 = BYTE3(result);
          }

          v28 += 2;
          ++v8;
          v9 += v147;
          if (!--v29)
          {
            goto LABEL_121;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v19 < v36)
        {
          v36 = v19;
        }

        if (v36 < v15)
        {
          v36 = v15;
        }

        v37 = bswap32(*v36);
        if (v24)
        {
          v38 = (v32 + v141);
          if (v19 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v19;
          }

          if (v39 < v15)
          {
            v39 = v15;
          }

          v40 = bswap32(*v39);
          v41 = (v38 + (v31 >> 4));
          if (v19 < v41)
          {
            v41 = v19;
          }

          if (v41 < v15)
          {
            v41 = v15;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((bswap32(*v41) & v42) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_49:
        v34 = v44 + v45;
        goto LABEL_50;
      }

LABEL_121:
      v12 = v130;
      v8 += v131;
      v9 += v133;
      LOBYTE(v13) = v129;
      v14 = v136 + v128;
      a6 = v138 - 1;
      v17 = v127;
      if (v138 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_121;
    }

    v56 = v119;
    v55 = v120;
    while (1)
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      v59 = v27 + v57;
      if (v19 >= v27 + v57)
      {
        v60 = (v27 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v15)
      {
        v60 = v15;
      }

      v61 = bswap32(*v60);
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v15)
        {
          v63 = v15;
        }

        v64 = bswap32(*v63);
        if (v24)
        {
          v65 = (v59 + v141);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v15)
          {
            v66 = v15;
          }

          v67 = bswap32(*v66);
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v15)
          {
            v68 = v15;
          }

          v69 = BLEND8_21892[v24];
          v61 = v61 - ((v69 & v61) >> v24) + ((v69 & v67) >> v24);
          v64 = v64 - ((v69 & v64) >> v24) + ((bswap32(*v68) & v69) >> v24);
        }

        v70 = BLEND8_21892[*v56 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v24)
        {
          goto LABEL_97;
        }

        v73 = (v59 + v141);
        if (v19 < v59 + v141)
        {
          v73 = v19;
        }

        if (v73 < v15)
        {
          v73 = v15;
        }

        v74 = BLEND8_21892[v24];
        v71 = v61 - ((v74 & v61) >> v24);
        v72 = (bswap32(*v73) & v74) >> v24;
      }

      v61 = v71 + v72;
LABEL_97:
      v75 = (v61 << v10) | (v61 >> v144);
      v76 = v75 | v148;
      if (v18)
      {
        v77 = *v18;
        if ((v18 + 1) < v140)
        {
          ++v18;
        }

        else
        {
          v18 -= 15;
        }

        if (v6 == 255)
        {
          result = DITHERRGBA32(v76, v77);
        }

        else
        {
          result = DITHERRGBA32M(v76, v77, v6);
        }

        LOBYTE(v10) = v146;
      }

      else
      {
        v78 = (v75 >> 17) & 0x7C00 | (v75 >> 14) & 0x3E0 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 3) << 27) | (v76 >> 5 << 24);
        v79 = ((v75 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v75 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v80 = (v76 & 0xFF00FF) * v6 + 65537 + ((((v76 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v81 = (v79 >> 17) & 0x7C00 | (v79 >> 11) & 0xFFFFFF | ((v80 >> 11) << 27) | ((v76 * v6 + 1 + ((v76 * v6) >> 8)) >> 13 << 24) | (32 * (v80 >> 27));
        if (v6 == 255)
        {
          result = v78;
        }

        else
        {
          result = v81;
        }

        v18 = 0;
      }

      v82 = result >> 27;
      if (v9)
      {
        if (result >> 27 == 31)
        {
          v83 = BYTE3(result);
          *v8 = bswap32(result) >> 16;
LABEL_116:
          *v9 = v83;
          goto LABEL_120;
        }

        if (v82)
        {
          result = PDAplusDAM(result, SBYTE3(result), bswap32(*v8) >> 16, *v9, BYTE3(result) ^ 0xFF);
          LOBYTE(v10) = v146;
          *v8 = bswap32(result) >> 16;
          v83 = BYTE3(result);
          goto LABEL_116;
        }
      }

      else
      {
        if (result >> 27 == 31)
        {
          v84 = bswap32(result) >> 16;
LABEL_119:
          *v8 = v84;
          goto LABEL_120;
        }

        if (v82)
        {
          result = PDplusDM(result, bswap32(*v8) >> 16, ~result >> 24);
          LOBYTE(v10) = v146;
          LOWORD(v84) = __rev16(result);
          goto LABEL_119;
        }
      }

LABEL_120:
      v56 += 2;
      ++v8;
      v9 += v147;
      if (!--v55)
      {
        goto LABEL_121;
      }
    }
  }

  v85 = 0;
  v86 = 0;
  v145 = (v11 + 16 * a3);
  v87 = (v16 - 4);
  v88 = 32 - v10;
  v142 = a5;
  do
  {
    if (v17)
    {
      v89 = v17 + 16 * v135;
      v85 = v89 + 16;
      v86 = (v89 + v126);
      v90 = (v135 + 1) & 0xF;
      if (v135 + 1 <= 0)
      {
        v90 = -(-(v135 + 1) & 0xF);
      }

      v135 = v90;
    }

    v91 = *(v143 + 32) + (v14 >> v13) * v12;
    v139 = a6;
    v137 = v14;
    if (v132 != 1)
    {
      v104 = v145;
      v105 = v142;
      if (a5 < 1)
      {
        goto LABEL_180;
      }

      while (1)
      {
        v106 = *v104;
        v104 += 2;
        v107 = (v91 + v106);
        if (v87 < v91 + v106)
        {
          v107 = v87;
        }

        if (v107 < *(v143 + 32))
        {
          v107 = *(v143 + 32);
        }

        v108 = bswap32(*v107);
        v109 = (v108 << v10) | (v108 >> v88);
        v110 = v109 | v148;
        if (v86)
        {
          v111 = *v86;
          if ((v86 + 1) < v85)
          {
            ++v86;
          }

          else
          {
            v86 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v110, v111);
          }

          else
          {
            result = DITHERRGBA32M(v110, v111, v6);
          }

          LOBYTE(v10) = v146;
        }

        else
        {
          v112 = (v109 >> 17) & 0x7C00 | (v109 >> 14) & 0x3E0 | (v109 >> 11) & 0xFFFFFF | ((v110 >> 3) << 27) | (v110 >> 5 << 24);
          v113 = ((v109 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v109 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v114 = (v110 & 0xFF00FF) * v6 + 65537 + ((((v110 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v115 = (v113 >> 17) & 0x7C00 | (v113 >> 11) & 0xFFFFFF | ((v114 >> 11) << 27) | ((v110 * v6 + 1 + ((v110 * v6) >> 8)) >> 13 << 24) | (32 * (v114 >> 27));
          if (v6 == 255)
          {
            result = v112;
          }

          else
          {
            result = v115;
          }

          v86 = 0;
        }

        v116 = result >> 27;
        if (v9)
        {
          if (result >> 27 == 31)
          {
            v117 = BYTE3(result);
            *v8 = bswap32(result) >> 16;
LABEL_175:
            *v9 = v117;
            goto LABEL_179;
          }

          if (v116)
          {
            result = PDAplusDAM(result, SBYTE3(result), bswap32(*v8) >> 16, *v9, BYTE3(result) ^ 0xFF);
            LOBYTE(v10) = v146;
            *v8 = bswap32(result) >> 16;
            v117 = BYTE3(result);
            goto LABEL_175;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            v118 = bswap32(result) >> 16;
LABEL_178:
            *v8 = v118;
            goto LABEL_179;
          }

          if (v116)
          {
            result = PDplusDM(result, bswap32(*v8) >> 16, ~result >> 24);
            LOBYTE(v10) = v146;
            LOWORD(v118) = __rev16(result);
            goto LABEL_178;
          }
        }

LABEL_179:
        ++v8;
        v9 += v147;
        if (!--v105)
        {
          goto LABEL_180;
        }
      }
    }

    if (a5 >= 1)
    {
      v92 = v145;
      v93 = v142;
      do
      {
        v94 = *v92;
        v92 += 2;
        v95 = (v91 + v94);
        if (v87 < v91 + v94)
        {
          v95 = v87;
        }

        if (v95 < *(v143 + 32))
        {
          v95 = *(v143 + 32);
        }

        v96 = bswap32(*v95);
        v97 = (v96 << v10) | (v96 >> v88);
        v98 = v97 | v148;
        if (v86)
        {
          v99 = *v86;
          if ((v86 + 1) < v85)
          {
            ++v86;
          }

          else
          {
            v86 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v98, v99);
          }

          else
          {
            result = DITHERRGBA32M(v98, v99, v6);
          }

          LOBYTE(v10) = v146;
        }

        else
        {
          v100 = (v97 >> 17) & 0x7C00 | (v97 >> 14) & 0x3E0 | (v97 >> 11) & 0xFFFFFF | ((v98 >> 3) << 27) | (v98 >> 5 << 24);
          v101 = ((v97 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v97 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v102 = (v98 & 0xFF00FF) * v6 + 65537 + ((((v98 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v103 = (v101 >> 17) & 0x7C00 | (v101 >> 11) & 0xFFFFFF | ((v102 >> 11) << 27) | ((v98 * v6 + 1 + ((v98 * v6) >> 8)) >> 13 << 24) | (32 * (v102 >> 27));
          if (v6 == 255)
          {
            result = v100;
          }

          else
          {
            result = v103;
          }

          v86 = 0;
        }

        *v8 = bswap32(result) >> 16;
        if (v9)
        {
          *v9 = BYTE3(result);
        }

        ++v8;
        v9 += v147;
        --v93;
      }

      while (v93);
    }

LABEL_180:
    v12 = v130;
    v8 += v131;
    v9 += v133;
    LOBYTE(v13) = v129;
    v14 = v137 + v128;
    a6 = v139 - 1;
    v17 = v127;
  }

  while (v139 != 1);
  return result;
}

uint64_t RGB555_image_mark_RGB24(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v141 = result;
  v6 = *(a2 + 8);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v132 = *(a2 + 5) - a5;
  }

  else
  {
    v132 = 0;
  }

  v131 = *a2;
  v130 = *(a2 + 3) - a5;
  v142 = v8 != 0;
  v10 = *(a2 + 19);
  v9 = *(a2 + 20);
  v11 = *(a2 + 11);
  v127 = *(a2 + 13);
  v12 = *(a2 + 9) + v127 * a4;
  v124 = *(a2 + 6);
  v135 = *(a2 + 7);
  v13 = *(result + 32);
  v14 = &v13[(*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3)];
  v15 = *(result + 168);
  v125 = a5;
  v126 = v15;
  v128 = v11;
  v129 = v10;
  if (*(result + 176))
  {
    v138 = 0;
    v16 = 0;
    v123 = *(a2 + 15);
    v121 = ~(-1 << v11);
    v122 = *(a2 + 17);
    v120 = v11 - 4;
    v17 = v14 - 3;
    v118 = v9 + 16 * a3 + 8;
    v119 = -v10;
    while ((((v122 - v12) | (v12 - v123)) & 0x8000000000000000) == 0)
    {
      v18 = ((v12 & v121) >> v120) & 0xF;
      v19 = weights_21890[v18];
      v20 = (v18 - 7) >= 9;
      v21 = v119;
      if (!v20)
      {
        v21 = v10;
      }

      v139 = v21;
      v22 = v19 & 0xF;
      if (v15)
      {
        goto LABEL_10;
      }

LABEL_13:
      v25 = *(v141 + 32) + (v12 >> v11) * v10;
      v136 = a6;
      v134 = v12;
      if (v131 != 1)
      {
        if (a5 < 1)
        {
          goto LABEL_114;
        }

        v52 = v118;
        v53 = v125;
        while (2)
        {
          v54 = *(v52 - 1);
          v55 = *v52;
          v56 = v25 + v54;
          if (v17 >= v25 + v54)
          {
            v57 = (v25 + v54);
          }

          else
          {
            v57 = v17;
          }

          if (v57 < v13)
          {
            v57 = v13;
          }

          v58 = (*v57 << 24) | (v57[1] << 16) | (v57[2] << 8);
          v59 = v55 & 0xF;
          if ((v55 & 0xF) != 0)
          {
            v60 = (v56 + (v55 >> 4));
            if (v17 < v60)
            {
              v60 = v17;
            }

            if (v60 < v13)
            {
              v60 = v13;
            }

            v61 = (*v60 << 24) | (v60[1] << 16) | (v60[2] << 8);
            if (v22)
            {
              v62 = (v56 + v139);
              if (v17 >= v62)
              {
                v63 = v62;
              }

              else
              {
                v63 = v17;
              }

              if (v63 < v13)
              {
                v63 = v13;
              }

              v64 = (*v63 << 24) | (v63[1] << 16) | (v63[2] << 8);
              v65 = &v62[v55 >> 4];
              if (v17 < v65)
              {
                v65 = v17;
              }

              if (v65 < v13)
              {
                v65 = v13;
              }

              v66 = BLEND8_21892[v22];
              v58 = v58 - ((v66 & v58) >> v22) + ((v66 & v64) >> v22);
              v61 = v61 - ((v66 & v61) >> v22) + ((((*v65 << 24) | (v65[1] << 16) | (v65[2] << 8)) & v66) >> v22);
            }

            v67 = BLEND8_21892[*v52 & 0xF];
            v68 = v58 - ((v67 & v58) >> v59);
            v69 = (v67 & v61) >> v59;
            goto LABEL_90;
          }

          if (v22)
          {
            v70 = (v56 + v139);
            if (v17 < v56 + v139)
            {
              v70 = v17;
            }

            if (v70 < v13)
            {
              v70 = v13;
            }

            v71 = BLEND8_21892[v22];
            v68 = v58 - ((v71 & v58) >> v22);
            v69 = (((*v70 << 24) | (v70[1] << 16) | (v70[2] << 8)) & v71) >> v22;
LABEL_90:
            v58 = v68 + v69;
          }

          v72 = v58 | 0xFF;
          if (v16)
          {
            v73 = *v16;
            if ((v16 + 1) < v138)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v72, v73);
            }

            else
            {
              result = DITHERRGBA32M(v72, v73, v6);
            }
          }

          else
          {
            v74 = (v58 >> 17) & 0x7C00 | (v58 >> 14) & 0x3E0 | (v58 >> 11) | 0xFF000000;
            v75 = ((v58 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v58 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v76 = (v72 & 0xFF00FF) * v6 + 65537 + ((((v72 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v77 = (v75 >> 17) & 0x7C00 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 11) << 27) | ((v72 * v6 + 1 + ((v72 * v6) >> 8)) >> 13 << 24) | (32 * (v76 >> 27));
            if (v6 == 255)
            {
              result = v74;
            }

            else
            {
              result = v77;
            }

            v16 = 0;
          }

          v78 = result >> 27;
          if (v8)
          {
            if (result >> 27 == 31)
            {
              v79 = BYTE3(result);
              *v7 = bswap32(result) >> 16;
              goto LABEL_109;
            }

            if (v78)
            {
              result = PDAplusDAM(result, SBYTE3(result), bswap32(*v7) >> 16, *v8, BYTE3(result) ^ 0xFF);
              *v7 = bswap32(result) >> 16;
              v79 = BYTE3(result);
LABEL_109:
              *v8 = v79;
            }
          }

          else
          {
            if (result >> 27 == 31)
            {
              v80 = bswap32(result) >> 16;
            }

            else
            {
              if (!v78)
              {
                goto LABEL_113;
              }

              result = PDplusDM(result, bswap32(*v7) >> 16, ~result >> 24);
              LOWORD(v80) = __rev16(result);
            }

            *v7 = v80;
          }

LABEL_113:
          v52 += 2;
          ++v7;
          v8 += v142;
          if (!--v53)
          {
            goto LABEL_114;
          }

          continue;
        }
      }

      if (a5 >= 1)
      {
        v26 = v118;
        v27 = v125;
        while (1)
        {
          v28 = *(v26 - 1);
          v29 = *v26;
          v30 = v25 + v28;
          if (v17 >= v25 + v28)
          {
            v31 = (v25 + v28);
          }

          else
          {
            v31 = v17;
          }

          if (v31 < v13)
          {
            v31 = v13;
          }

          v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
          v33 = v29 & 0xF;
          if ((v29 & 0xF) != 0)
          {
            break;
          }

          if (v22)
          {
            v44 = (v30 + v139);
            if (v17 < v30 + v139)
            {
              v44 = v17;
            }

            if (v44 < v13)
            {
              v44 = v13;
            }

            v45 = BLEND8_21892[v22];
            v42 = v32 - ((v45 & v32) >> v22);
            v43 = (((*v44 << 24) | (v44[1] << 16) | (v44[2] << 8)) & v45) >> v22;
            goto LABEL_44;
          }

LABEL_45:
          v46 = v32 | 0xFF;
          if (v16)
          {
            v47 = *v16;
            if ((v16 + 1) < v138)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v46, v47);
            }

            else
            {
              result = DITHERRGBA32M(v46, v47, v6);
            }
          }

          else
          {
            v48 = (v32 >> 17) & 0x7C00 | (v32 >> 14) & 0x3E0 | (v32 >> 11) | 0xFF000000;
            v49 = ((v32 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v32 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v50 = (v46 & 0xFF00FF) * v6 + 65537 + ((((v46 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v51 = (v49 >> 17) & 0x7C00 | (v49 >> 11) & 0xFFFFFF | ((v50 >> 11) << 27) | ((v46 * v6 + 1 + ((v46 * v6) >> 8)) >> 13 << 24) | (32 * (v50 >> 27));
            if (v6 == 255)
            {
              result = v48;
            }

            else
            {
              result = v51;
            }

            v16 = 0;
          }

          *v7 = bswap32(result) >> 16;
          if (v8)
          {
            *v8 = BYTE3(result);
          }

          v26 += 2;
          ++v7;
          v8 += v142;
          if (!--v27)
          {
            goto LABEL_114;
          }
        }

        v34 = (v30 + (v29 >> 4));
        if (v17 < v34)
        {
          v34 = v17;
        }

        if (v34 < v13)
        {
          v34 = v13;
        }

        v35 = (*v34 << 24) | (v34[1] << 16) | (v34[2] << 8);
        if (v22)
        {
          v36 = (v30 + v139);
          if (v17 >= v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = v17;
          }

          if (v37 < v13)
          {
            v37 = v13;
          }

          v38 = (*v37 << 24) | (v37[1] << 16) | (v37[2] << 8);
          v39 = &v36[v29 >> 4];
          if (v17 < v39)
          {
            v39 = v17;
          }

          if (v39 < v13)
          {
            v39 = v13;
          }

          v40 = BLEND8_21892[v22];
          v32 = v32 - ((v40 & v32) >> v22) + ((v40 & v38) >> v22);
          v35 = v35 - ((v40 & v35) >> v22) + ((((*v39 << 24) | (v39[1] << 16) | (v39[2] << 8)) & v40) >> v22);
        }

        v41 = BLEND8_21892[*v26 & 0xF];
        v42 = v32 - ((v41 & v32) >> v33);
        v43 = (v41 & v35) >> v33;
LABEL_44:
        v32 = v42 + v43;
        goto LABEL_45;
      }

LABEL_114:
      v10 = v129;
      v7 += v130;
      v8 += v132;
      LOBYTE(v11) = v128;
      v12 = v134 + v127;
      a6 = v136 - 1;
      v15 = v126;
      if (v136 == 1)
      {
        return result;
      }
    }

    v22 = 0;
    v139 = 0;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_10:
    v23 = v15 + 16 * v135;
    v138 = v23 + 16;
    v16 = (v23 + v124);
    v24 = (v135 + 1) & 0xF;
    if (v135 + 1 <= 0)
    {
      v24 = -(-(v135 + 1) & 0xF);
    }

    v135 = v24;
    goto LABEL_13;
  }

  v81 = 0;
  v82 = 0;
  v83 = v14 - 3;
  v140 = (v9 + 16 * a3);
  do
  {
    if (v15)
    {
      v84 = v15 + 16 * v135;
      v81 = v84 + 16;
      v82 = (v84 + v124);
      v85 = (v135 + 1) & 0xF;
      if (v135 + 1 <= 0)
      {
        v85 = -(-(v135 + 1) & 0xF);
      }

      v135 = v85;
    }

    v86 = *(v141 + 32) + (v12 >> v11) * v10;
    v137 = a6;
    if (v131 != 1)
    {
      v101 = v140;
      v102 = v125;
      if (a5 < 1)
      {
        goto LABEL_173;
      }

      while (1)
      {
        v103 = *v101;
        v101 += 2;
        v104 = (v86 + v103);
        if (v83 < v86 + v103)
        {
          v104 = v83;
        }

        if (v104 < *(v141 + 32))
        {
          v104 = *(v141 + 32);
        }

        v105 = *v104;
        v106 = v104[1];
        v107 = v104[2];
        v108 = (v105 << 24) | (v106 << 16) | (v107 << 8);
        v109 = v108 | 0xFF;
        if (v82)
        {
          v110 = *v82;
          if ((v82 + 1) < v81)
          {
            ++v82;
          }

          else
          {
            v82 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v109, v110);
          }

          else
          {
            result = DITHERRGBA32M(v109, v110, v6);
          }
        }

        else
        {
          v111 = (4 * v106) & 0x3E0 | (v105 >> 3 << 10) | (v107 >> 3) | 0xFF000000;
          v112 = ((v108 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v108 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v113 = (v109 & 0xFF00FF) * v6 + 65537 + ((((v109 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v114 = (v112 >> 17) & 0x7C00 | (v112 >> 11) & 0xFFFFFF | ((v113 >> 11) << 27) | ((v109 * v6 + 1 + ((v109 * v6) >> 8)) >> 13 << 24) | (32 * (v113 >> 27));
          if (v6 == 255)
          {
            result = v111;
          }

          else
          {
            result = v114;
          }

          v82 = 0;
        }

        v115 = result >> 27;
        if (v8)
        {
          if (result >> 27 == 31)
          {
            v116 = BYTE3(result);
            *v7 = bswap32(result) >> 16;
LABEL_168:
            *v8 = v116;
            goto LABEL_172;
          }

          if (v115)
          {
            result = PDAplusDAM(result, SBYTE3(result), bswap32(*v7) >> 16, *v8, BYTE3(result) ^ 0xFF);
            *v7 = bswap32(result) >> 16;
            v116 = BYTE3(result);
            goto LABEL_168;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            v117 = bswap32(result) >> 16;
LABEL_171:
            *v7 = v117;
            goto LABEL_172;
          }

          if (v115)
          {
            result = PDplusDM(result, bswap32(*v7) >> 16, ~result >> 24);
            LOWORD(v117) = __rev16(result);
            goto LABEL_171;
          }
        }

LABEL_172:
        ++v7;
        v8 += v142;
        if (!--v102)
        {
          goto LABEL_173;
        }
      }
    }

    if (a5 >= 1)
    {
      v87 = v140;
      v88 = v125;
      do
      {
        v89 = *v87;
        v87 += 2;
        v90 = (v86 + v89);
        if (v83 < v86 + v89)
        {
          v90 = v83;
        }

        if (v90 < *(v141 + 32))
        {
          v90 = *(v141 + 32);
        }

        v91 = *v90;
        v92 = v90[1];
        v93 = v90[2];
        v94 = (v91 << 24) | (v92 << 16) | (v93 << 8);
        v95 = v94 | 0xFF;
        if (v82)
        {
          v96 = *v82;
          if ((v82 + 1) < v81)
          {
            ++v82;
          }

          else
          {
            v82 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v95, v96);
          }

          else
          {
            result = DITHERRGBA32M(v95, v96, v6);
          }
        }

        else
        {
          v97 = (4 * v92) & 0x3E0 | (v91 >> 3 << 10) | (v93 >> 3) | 0xFF000000;
          v98 = ((v94 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v94 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v99 = (v95 & 0xFF00FF) * v6 + 65537 + ((((v95 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v100 = (v98 >> 17) & 0x7C00 | (v98 >> 11) & 0xFFFFFF | ((v99 >> 11) << 27) | ((v95 * v6 + 1 + ((v95 * v6) >> 8)) >> 13 << 24) | (32 * (v99 >> 27));
          if (v6 == 255)
          {
            result = v97;
          }

          else
          {
            result = v100;
          }

          v82 = 0;
        }

        *v7 = bswap32(result) >> 16;
        if (v8)
        {
          *v8 = BYTE3(result);
        }

        ++v7;
        v8 += v142;
        --v88;
      }

      while (v88);
    }

LABEL_173:
    v10 = v129;
    v7 += v130;
    v8 += v132;
    LOBYTE(v11) = v128;
    v12 += v127;
    a6 = v137 - 1;
    v15 = v126;
  }

  while (v137 != 1);
  return result;
}

uint64_t RGB555_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v131 = *(a2 + 5) - a5;
  }

  else
  {
    v131 = 0;
  }

  v130 = *a2;
  v129 = *(a2 + 3) - a5;
  v141 = v8 != 0;
  v10 = *(a2 + 19);
  v9 = *(a2 + 20);
  v11 = *(a2 + 11);
  v126 = *(a2 + 13);
  v12 = *(a2 + 9) + v126 * a4;
  v123 = *(a2 + 6);
  v134 = *(a2 + 7);
  v13 = *(a1 + 32);
  v14 = &v13[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  result = *(a1 + 168);
  v124 = a5;
  v125 = *(a1 + 168);
  v127 = v11;
  v128 = v10;
  if (*(a1 + 176))
  {
    v138 = 0;
    v16 = 0;
    v122 = *(a2 + 15);
    v121 = *(a2 + 17);
    v120 = ~(-1 << v11);
    v118 = -v10;
    v119 = v11 - 4;
    v17 = v14 - 4;
    v18 = vdup_n_s32(v6);
    v117 = v9 + 16 * a3 + 8;
    v19.i64[1] = 0x7000000F8000000;
    while ((((v121 - v12) | (v12 - v122)) & 0x8000000000000000) == 0)
    {
      v20 = ((v12 & v120) >> v119) & 0xF;
      v21 = weights_21890[v20];
      v22 = (v20 - 7) >= 9;
      v23 = v118;
      if (!v22)
      {
        v23 = v10;
      }

      v139 = v23;
      v24 = v21 & 0xF;
      if (result)
      {
        goto LABEL_10;
      }

LABEL_13:
      v27 = *(a1 + 32) + (v12 >> v11) * v10;
      v135 = a6;
      v133 = v12;
      if (v130 != 1)
      {
        if (a5 < 1)
        {
          goto LABEL_113;
        }

        v53 = v117;
        v54 = v124;
        while (2)
        {
          v55 = *(v53 - 1);
          v56 = *v53;
          v57 = v27 + v55;
          if (v17 >= v27 + v55)
          {
            v58 = (v27 + v55);
          }

          else
          {
            v58 = v17;
          }

          if (v58 < v13)
          {
            v58 = v13;
          }

          v59 = *v58;
          v60 = v56 & 0xF;
          if ((v56 & 0xF) != 0)
          {
            v61 = (v57 + (v56 >> 4));
            if (v17 < v61)
            {
              v61 = v17;
            }

            if (v61 < v13)
            {
              v61 = v13;
            }

            v62 = *v61;
            if (v24)
            {
              v63 = (v57 + v139);
              if (v17 >= v63)
              {
                v64 = v63;
              }

              else
              {
                v64 = v17;
              }

              if (v64 < v13)
              {
                v64 = v13;
              }

              v65 = *v64;
              v66 = &v63[v56 >> 4];
              if (v17 < v66)
              {
                v66 = v17;
              }

              if (v66 < v13)
              {
                v66 = v13;
              }

              v67 = BLEND8_21892[v24];
              v59 = v59 - ((v67 & v59) >> v24) + ((v67 & v65) >> v24);
              v62 = v62 - ((v67 & v62) >> v24) + ((v67 & *v66) >> v24);
            }

            v68 = BLEND8_21892[*v53 & 0xF];
            v59 -= (v68 & v59) >> v60;
            v69 = (v68 & v62) >> v60;
            goto LABEL_89;
          }

          if (v24)
          {
            v70 = (v57 + v139);
            if (v17 < v57 + v139)
            {
              v70 = v17;
            }

            if (v70 < v13)
            {
              v70 = v13;
            }

            v71 = BLEND8_21892[v24];
            v59 -= (v71 & v59) >> v24;
            v69 = (v71 & *v70) >> v24;
LABEL_89:
            LOBYTE(v59) = v59 + v69;
          }

          if (v16)
          {
            v72 = *v16;
            if ((v16 + 1) < v138)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            v73 = (16843008 * v59) | 0xFF;
            if (v6 == 255)
            {
              v74 = DITHERRGBA32(v73, v72);
            }

            else
            {
              v74 = DITHERRGBA32M(v73, v72, v6);
            }
          }

          else
          {
            v16 = 0;
            if (v6 == 255)
            {
              v74 = (v59 >> 3) & 0xFFFF801F | (32 * (v59 >> 3)) & 0x83FF | (v59 >> 3 << 10) | 0xFF000000;
            }

            else
            {
              *v19.i8 = vmul_s32(vorr_s8(vdup_n_s32(v59 << 16), (v59 | 0xFF00000000)), v18);
              *v19.i8 = vadd_s32(vadd_s32(*v19.i8, 0x1000100010001), (*&vshr_n_u32(*v19.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
              v75 = vzip1q_s32(v19, v19);
              v76.i64[0] = vshlq_u32(v75, xmmword_18439C930).u64[0];
              v76.i64[1] = vshlq_u32(v75, xmmword_18439C940).i64[1];
              v77 = vandq_s8(v76, xmmword_18439C950);
              *v77.i8 = vorr_s8(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
              v74 = v77.i32[0] | v77.i32[1] | (32 * (v19.i32[1] >> 27));
            }
          }

          v78 = v74 >> 27;
          if (v8)
          {
            if (v74 >> 27 == 31)
            {
              v79 = HIBYTE(v74);
              *v7 = bswap32(v74) >> 16;
              goto LABEL_106;
            }

            if (v78)
            {
              v81 = PDAplusDAM(v74, SHIBYTE(v74), bswap32(*v7) >> 16, *v8, HIBYTE(v74) ^ 0xFF);
              *v7 = bswap32(v81) >> 16;
              v79 = HIBYTE(v81);
LABEL_106:
              *v8 = v79;
            }
          }

          else
          {
            if (v74 >> 27 == 31)
            {
              v80 = bswap32(v74) >> 16;
            }

            else
            {
              if (!v78)
              {
                goto LABEL_110;
              }

              LOWORD(v80) = __rev16(PDplusDM(v74, bswap32(*v7) >> 16, ~v74 >> 24));
            }

            *v7 = v80;
          }

LABEL_110:
          v53 += 2;
          ++v7;
          v8 += v141;
          if (!--v54)
          {
            goto LABEL_113;
          }

          continue;
        }
      }

      if (a5 >= 1)
      {
        v28 = v117;
        v29 = v124;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v17 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v17;
          }

          if (v33 < v13)
          {
            v33 = v13;
          }

          v34 = *v33;
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v45 = (v32 + v139);
            if (v17 < v32 + v139)
            {
              v45 = v17;
            }

            if (v45 < v13)
            {
              v45 = v13;
            }

            v46 = BLEND8_21892[v24];
            v34 -= (v46 & v34) >> v24;
            v44 = (v46 & *v45) >> v24;
            goto LABEL_44;
          }

LABEL_45:
          if (v16)
          {
            v47 = *v16;
            if ((v16 + 1) < v138)
            {
              ++v16;
            }

            else
            {
              v16 -= 15;
            }

            v48 = (16843008 * v34) | 0xFF;
            if (v6 == 255)
            {
              v49 = DITHERRGBA32(v48, v47);
            }

            else
            {
              v49 = DITHERRGBA32M(v48, v47, v6);
            }
          }

          else
          {
            v16 = 0;
            if (v6 == 255)
            {
              v49 = (v34 >> 3) & 0xFFFF801F | (32 * (v34 >> 3)) & 0x83FF | (v34 >> 3 << 10) | 0xFF000000;
            }

            else
            {
              *v19.i8 = vmul_s32(vorr_s8(vdup_n_s32(v34 << 16), (v34 | 0xFF00000000)), v18);
              *v19.i8 = vadd_s32(vadd_s32(*v19.i8, 0x1000100010001), (*&vshr_n_u32(*v19.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
              v50 = vzip1q_s32(v19, v19);
              v51.i64[0] = vshlq_u32(v50, xmmword_18439C930).u64[0];
              v51.i64[1] = vshlq_u32(v50, xmmword_18439C940).i64[1];
              v52 = vandq_s8(v51, xmmword_18439C950);
              *v52.i8 = vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
              v49 = v52.i32[0] | v52.i32[1] | (32 * (v19.i32[1] >> 27));
            }
          }

          *v7 = bswap32(v49) >> 16;
          if (v8)
          {
            *v8 = HIBYTE(v49);
          }

          v28 += 2;
          ++v7;
          v8 += v141;
          if (!--v29)
          {
            goto LABEL_113;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v17 < v36)
        {
          v36 = v17;
        }

        if (v36 < v13)
        {
          v36 = v13;
        }

        v37 = *v36;
        if (v24)
        {
          v38 = (v32 + v139);
          if (v17 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v17;
          }

          if (v39 < v13)
          {
            v39 = v13;
          }

          v40 = *v39;
          v41 = &v38[v31 >> 4];
          if (v17 < v41)
          {
            v41 = v17;
          }

          if (v41 < v13)
          {
            v41 = v13;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((v42 & *v41) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v34 -= (v43 & v34) >> v35;
        v44 = (v43 & v37) >> v35;
LABEL_44:
        LOBYTE(v34) = v34 + v44;
        goto LABEL_45;
      }

LABEL_113:
      v10 = v128;
      v7 += v129;
      v8 += v131;
      LOBYTE(v11) = v127;
      v12 = v133 + v126;
      a6 = v135 - 1;
      result = v125;
      if (v135 == 1)
      {
        return result;
      }
    }

    v24 = 0;
    v139 = 0;
    if (!result)
    {
      goto LABEL_13;
    }

LABEL_10:
    v25 = result + 16 * v134;
    v138 = v25 + 16;
    v16 = (v25 + v123);
    v26 = (v134 + 1) & 0xF;
    if (v134 + 1 <= 0)
    {
      v26 = -(-(v134 + 1) & 0xF);
    }

    v134 = v26;
    goto LABEL_13;
  }

  v82 = 0;
  v83 = 0;
  v84 = vdup_n_s32(v6);
  v85 = v14 - 4;
  v137 = (v9 + 16 * a3);
  v86.i64[1] = 0x7000000F8000000;
  do
  {
    if (result)
    {
      v87 = result + 16 * v134;
      v82 = v87 + 16;
      v83 = (v87 + v123);
      v88 = (v134 + 1) & 0xF;
      if (v134 + 1 <= 0)
      {
        v88 = -(-(v134 + 1) & 0xF);
      }

      v134 = v88;
    }

    v89 = *(a1 + 32) + (v12 >> v11) * v10;
    v136 = a6;
    v90 = v12;
    if (v130 != 1)
    {
      v102 = v137;
      v103 = v124;
      if (a5 < 1)
      {
        goto LABEL_170;
      }

      while (1)
      {
        v104 = *v102;
        v102 += 2;
        v105 = (v89 + v104);
        if (v85 < v89 + v104)
        {
          v105 = v85;
        }

        if (v105 < *(a1 + 32))
        {
          v105 = *(a1 + 32);
        }

        v106 = *v105;
        if (v83)
        {
          v107 = *v83;
          if ((v83 + 1) < v82)
          {
            ++v83;
          }

          else
          {
            v83 -= 15;
          }

          v108 = (16843008 * v106) | 0xFF;
          if (v6 == 255)
          {
            v109 = DITHERRGBA32(v108, v107);
          }

          else
          {
            v109 = DITHERRGBA32M(v108, v107, v6);
          }
        }

        else
        {
          v83 = 0;
          if (v6 == 255)
          {
            v109 = (v106 >> 3) & 0xFFFF801F | (32 * (v106 >> 3)) & 0x83FF | (v106 >> 3 << 10) | 0xFF000000;
          }

          else
          {
            *v86.i8 = vmul_s32(vorr_s8(vdup_n_s32(v106 << 16), (v106 | 0xFF00000000)), v84);
            *v86.i8 = vadd_s32(vadd_s32(*v86.i8, 0x1000100010001), (*&vshr_n_u32(*v86.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
            v110 = vzip1q_s32(v86, v86);
            v111.i64[0] = vshlq_u32(v110, xmmword_18439C930).u64[0];
            v111.i64[1] = vshlq_u32(v110, xmmword_18439C940).i64[1];
            v112 = vandq_s8(v111, xmmword_18439C950);
            *v112.i8 = vorr_s8(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
            v109 = v112.i32[0] | v112.i32[1] | (32 * (v86.i32[1] >> 27));
          }
        }

        v113 = v109 >> 27;
        if (v8)
        {
          if (v109 >> 27 == 31)
          {
            v114 = HIBYTE(v109);
            *v7 = bswap32(v109) >> 16;
LABEL_165:
            *v8 = v114;
            goto LABEL_169;
          }

          if (v113)
          {
            v116 = PDAplusDAM(v109, SHIBYTE(v109), bswap32(*v7) >> 16, *v8, HIBYTE(v109) ^ 0xFF);
            *v7 = bswap32(v116) >> 16;
            v114 = HIBYTE(v116);
            goto LABEL_165;
          }
        }

        else
        {
          if (v109 >> 27 == 31)
          {
            v115 = bswap32(v109) >> 16;
LABEL_168:
            *v7 = v115;
            goto LABEL_169;
          }

          if (v113)
          {
            LOWORD(v115) = __rev16(PDplusDM(v109, bswap32(*v7) >> 16, ~v109 >> 24));
            goto LABEL_168;
          }
        }

LABEL_169:
        ++v7;
        v8 += v141;
        if (!--v103)
        {
          goto LABEL_170;
        }
      }
    }

    if (a5 >= 1)
    {
      v91 = v137;
      v92 = v124;
      do
      {
        v93 = *v91;
        v91 += 2;
        v94 = (v89 + v93);
        if (v85 < v89 + v93)
        {
          v94 = v85;
        }

        if (v94 < *(a1 + 32))
        {
          v94 = *(a1 + 32);
        }

        v95 = *v94;
        if (v83)
        {
          v96 = *v83;
          if ((v83 + 1) < v82)
          {
            ++v83;
          }

          else
          {
            v83 -= 15;
          }

          v97 = (16843008 * v95) | 0xFF;
          if (v6 == 255)
          {
            v98 = DITHERRGBA32(v97, v96);
          }

          else
          {
            v98 = DITHERRGBA32M(v97, v96, v6);
          }
        }

        else
        {
          v83 = 0;
          if (v6 == 255)
          {
            v98 = (v95 >> 3) & 0xFFFF801F | (32 * (v95 >> 3)) & 0x83FF | (v95 >> 3 << 10) | 0xFF000000;
          }

          else
          {
            *v86.i8 = vmul_s32(vorr_s8(vdup_n_s32(v95 << 16), (v95 | 0xFF00000000)), v84);
            *v86.i8 = vadd_s32(vadd_s32(*v86.i8, 0x1000100010001), (*&vshr_n_u32(*v86.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
            v99 = vzip1q_s32(v86, v86);
            v100.i64[0] = vshlq_u32(v99, xmmword_18439C930).u64[0];
            v100.i64[1] = vshlq_u32(v99, xmmword_18439C940).i64[1];
            v101 = vandq_s8(v100, xmmword_18439C950);
            *v101.i8 = vorr_s8(*v101.i8, *&vextq_s8(v101, v101, 8uLL));
            v98 = v101.i32[0] | v101.i32[1] | (32 * (v86.i32[1] >> 27));
          }
        }

        *v7 = bswap32(v98) >> 16;
        if (v8)
        {
          *v8 = HIBYTE(v98);
        }

        ++v7;
        v8 += v141;
        --v92;
      }

      while (v92);
    }

LABEL_170:
    v10 = v128;
    v7 += v129;
    v8 += v131;
    LOBYTE(v11) = v127;
    v12 = v90 + v126;
    a6 = v136 - 1;
    result = v125;
  }

  while (v136 != 1);
  return result;
}

uint64_t RGB555_colorlookup(int a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  if (a1 == 3)
  {
    v4 = *a2;
  }

  else
  {
    if (a3)
    {
      v5 = *a3 << 24;
    }

    else
    {
      v5 = 4278190080;
    }

    v4 = v5 | (bswap32(*a2) >> 16);
  }

  pthread_mutex_lock(&RGB555_cacheColorLock);
  v6 = RGB555_cacheColor;
  if (RGB555_cacheColor && *(RGB555_cacheColor + 16) == v4)
  {
    v7 = RGB555_cacheColor;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      if (!v6)
      {
        goto LABEL_15;
      }

      v7 = v6;
      v9 = v8;
      if (*(v6 + 2) == v4)
      {
        break;
      }

      v6 = *v6;
      v8 = v7;
      if (!*v7)
      {
        if (RGB555_cacheColorCount > 6)
        {
          *v9 = 0;
          v12 = *(v7 + 1);
        }

        else
        {
LABEL_15:
          v10 = RGB555_cacheColorBase;
          if (RGB555_cacheColorBase)
          {
            v11 = RGB555_cacheColorCount;
          }

          else
          {
            v10 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x1020040A1C41DBCuLL);
            v11 = 0;
            RGB555_cacheColorBase = v10;
          }

          v7 = &v10[24 * v11];
          v12 = &v10[1024 * v11 + 168];
          *(v7 + 1) = v12;
          RGB555_cacheColorCount = v11 + 1;
        }

        *v7 = RGB555_cacheColor;
        RGB555_cacheColor = v7;
        *(v7 + 2) = v4;
        if (a1 == 3)
        {
          v13 = 0;
          v15 = 244;
          v16 = 188;
          do
          {
            v17 = pixel_dither_noise[v13 + 1];
            v14 = HIDWORD(v4);
            *(v12 + 4 * v13) = ((((v16 + WORD1(v4)) >> 3) & 0x3E0 | ((((v16 + v14) >> 8) & 0x1F) << 10) & 0xFC00FFFF | ((((v15 + WORD1(v4)) >> 8) & 0x1F) << 21) | ((((v15 + v4) >> 8) & 0x1F) << 16)) << 8) & 0xFF00FFFF | (v16 + v4) & 0x1F00 | ((((v16 + WORD1(v4)) >> 3) & 0x3E0 | ((((v16 + v14) >> 8) & 0x1F) << 10) & 0x801FFFFF | ((((v15 + WORD1(v4)) >> 8) & 0x1F) << 21) & 0x83FFFFFF | ((((v15 + v14) >> 8) & 0x1F) << 26)) >> 8) & 0x7F007F;
            *(v12 + 2 * v13 + 512) = ((v16 + HIWORD(v4)) >> 5) & 0xF8 | ((v16 + HIWORD(v4)) >> 10) & 7 | ((v15 + HIWORD(v4)) >> 2) & 0x700 | ((((v15 + HIWORD(v4)) >> 8) & 0x1F) << 11);
            v15 = v17;
            v16 = v17 >> 8;
            ++v13;
          }

          while (v13 != 128);
        }

        else
        {
          v18 = 0;
          do
          {
            *(v12 + 4 * v18) = PDAM(v4, SBYTE3(v4), v18);
            ++v18;
          }

          while (v18 != 256);
        }

        goto LABEL_28;
      }
    }

    if (v8)
    {
      *v8 = *v6;
      *v6 = RGB555_cacheColor;
      RGB555_cacheColor = v6;
    }
  }

LABEL_28:
  pthread_mutex_unlock(&RGB555_cacheColorLock);
  return *(v7 + 1);
}

uint64_t RGB555_mark_constmask(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v223 = *(a1 + 4);
  v5 = *(a1 + 28);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 136);
  result = RGB555_colorlookup(4, *(a1 + 88), *(a1 + 96));
  v10 = result;
  v210 = *(result + 1020);
  v11 = *(a1 + 12);
  v12 = *(a1 + 16);
  if (v6)
  {
    v13 = *(a1 + 32);
    v14 = (v6 + v13 * v12 + v11);
    v15 = 1;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 0;
    if (!v8)
    {
      return result;
    }
  }

  v16 = v13 - v223;
  if (v6)
  {
    v13 -= v223;
  }

  v213 = v13;
  v17 = v5 >> 1;
  v18 = HIBYTE(v210);
  v19 = (v7 + 2 * v17 * v12 + 2 * v11);
  v20 = *(a1 + 124);
  v21 = v8 + *(a1 + 108) * v20 + *(a1 + 104);
  v22 = v20 - v223;
  v218 = v17 - v223;
  switch(a2)
  {
    case 0:
      if (v6)
      {
        while (1)
        {
          v23 = v223;
          do
          {
            v24 = *v21;
            if (v24 < 0xF8)
            {
              if (v24 < 8)
              {
                goto LABEL_15;
              }

              result = PDAM(bswap32(v19->u16[0]) >> 16, *v14, ~v24);
              v19->i16[0] = bswap32(result) >> 16;
              v25 = BYTE3(result);
            }

            else
            {
              LOBYTE(v25) = 0;
              v19->i16[0] = 0;
            }

            *v14 = v25;
LABEL_15:
            ++v21;
            v19 = (v19 + 2);
            v14 += v15;
            --v23;
          }

          while (v23);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          v14 += v213;
          if (!--v4)
          {
            return result;
          }
        }
      }

LABEL_274:
      v101 = v223;
      while (1)
      {
        v102 = *v21;
        if (v102 > 0xF7)
        {
          break;
        }

        if (v102 >= 8)
        {
          result = PDM(bswap32(v19->u16[0]) >> 16, ~v102);
          v103 = __rev16(result);
          goto LABEL_279;
        }

LABEL_280:
        ++v21;
        v19 = (v19 + 2);
        if (!--v101)
        {
          v21 += v22;
          v19 = (v19 + 2 * v218);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_274;
        }
      }

      v103 = 0;
LABEL_279:
      v19->i16[0] = v103;
      goto LABEL_280;
    case 1:
      v128 = v21 & 3;
      if (v6)
      {
        v129 = v128 + v223;
        if ((v21 & 3) != 0)
        {
          v130 = v21 & 0xFC;
        }

        else
        {
          v130 = v21;
        }

        if ((v21 & 3) != 0)
        {
          result = (-1 << (8 * v128));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v21 & 3) != 0)
        {
          v131 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v131 = v21;
        }

        if ((v21 & 3) != 0)
        {
          v132 = &v14[-(v21 & 3)];
        }

        else
        {
          v132 = v14;
        }

        if ((v21 & 3) != 0)
        {
          v19 = (v19 - 2 * (v21 & 3));
        }

        else
        {
          v129 = v223;
        }

        if (((v129 + v130) & 3) != 0)
        {
          v133 = 4 - ((v129 + v130) & 3);
          v128 += v133;
          v134 = 0xFFFFFFFF >> (8 * v133);
          if (v129 >= 4)
          {
            v135 = 0xFFFFFFFF >> (8 * v133);
          }

          else
          {
            v135 = 0;
          }

          v225 = v135;
          if (v129 >= 4)
          {
            v134 = -1;
          }

          result = v134 & result;
          v215 = result;
        }

        else
        {
          v215 = result;
          v225 = 0;
        }

        v209 = v22 - v128;
        v220 = v218 - v128;
        v207 = v129 >> 2;
        v180 = bswap32(v210) >> 16;
        v211 = v16 - v128;
        while (1)
        {
          v181 = *v131 & v215;
          v182 = v207;
          v183 = v225;
          if (!v181)
          {
            goto LABEL_461;
          }

LABEL_459:
          if (v181 == -1)
          {
            v19->i16[0] = v180;
            *v132 = v18;
            v19->i16[1] = v180;
            v132[1] = v18;
            v19->i16[2] = v180;
            v132[2] = v18;
LABEL_482:
            v19->i16[3] = v180;
            v132[3] = v18;
            goto LABEL_461;
          }

          while (1)
          {
            if (v181 < 0xF8u)
            {
              if (v181 < 8u)
              {
                goto LABEL_471;
              }

              result = PDAplusDAM(*(v10 + 4 * v181), HIBYTE(*(v10 + 4 * v181)), bswap32(v19->u16[0]) >> 16, *v132, ~v181);
              v19->i16[0] = bswap32(result) >> 16;
              v185 = BYTE3(result);
            }

            else
            {
              v19->i16[0] = v180;
              LOBYTE(v185) = v18;
            }

            *v132 = v185;
LABEL_471:
            if (BYTE1(v181) < 0xF8u)
            {
              if (BYTE1(v181) < 8u)
              {
                goto LABEL_476;
              }

              result = PDAplusDAM(*(v10 + 4 * BYTE1(v181)), HIBYTE(*(v10 + 4 * BYTE1(v181))), bswap32(v19->u16[1]) >> 16, v132[1], ~(v181 >> 8));
              v19->i16[1] = bswap32(result) >> 16;
              v186 = BYTE3(result);
            }

            else
            {
              v19->i16[1] = v180;
              LOBYTE(v186) = v18;
            }

            v132[1] = v186;
LABEL_476:
            if (BYTE2(v181) < 0xF8u)
            {
              if (BYTE2(v181) < 8u)
              {
                goto LABEL_481;
              }

              result = PDAplusDAM(*(v10 + 4 * BYTE2(v181)), HIBYTE(*(v10 + 4 * BYTE2(v181))), bswap32(v19->u16[2]) >> 16, v132[2], ~HIWORD(v181));
              v19->i16[2] = bswap32(result) >> 16;
              v187 = BYTE3(result);
            }

            else
            {
              v19->i16[2] = v180;
              LOBYTE(v187) = v18;
            }

            v132[2] = v187;
LABEL_481:
            if (v181 >> 27 == 31)
            {
              goto LABEL_482;
            }

            if (v181 >> 27)
            {
              result = PDAplusDAM(*(v10 + 4 * HIBYTE(v181)), HIBYTE(*(v10 + 4 * HIBYTE(v181))), bswap32(v19->u16[3]) >> 16, v132[3], ~v181 >> 24);
              v19->i16[3] = bswap32(result) >> 16;
              v132[3] = BYTE3(result);
            }

LABEL_461:
            while (1)
            {
              v184 = v182;
              ++v19;
              v132 += 4;
              --v182;
              ++v131;
              if (v184 < 2)
              {
                break;
              }

              v181 = *v131;
              if (*v131)
              {
                goto LABEL_459;
              }
            }

            if (!v183)
            {
              break;
            }

            v183 = 0;
            v181 = *v131 & v225;
          }

          v131 = (v131 + v209);
          v19 = (v19 + 2 * v220);
          v132 += v211;
          if (!--v4)
          {
            return result;
          }
        }
      }

      v157 = v128 + v223;
      if ((v21 & 3) != 0)
      {
        v158 = v21 & 0xFC;
      }

      else
      {
        v158 = v21;
      }

      if ((v21 & 3) != 0)
      {
        v159 = -1 << (8 * v128);
      }

      else
      {
        v159 = -1;
      }

      if ((v21 & 3) != 0)
      {
        v160 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v160 = v21;
      }

      if ((v21 & 3) != 0)
      {
        v161 = (v19 - 2 * (v21 & 3));
      }

      else
      {
        v161 = v19;
      }

      if ((v21 & 3) == 0)
      {
        v157 = v223;
      }

      if (((v157 + v158) & 3) != 0)
      {
        v162 = 4 - ((v157 + v158) & 3);
        v128 += v162;
        v163 = 0xFFFFFFFF >> (8 * v162);
        if (v157 >= 4)
        {
          v164 = 0xFFFFFFFF >> (8 * v162);
        }

        else
        {
          v164 = 0;
        }

        if (v157 >= 4)
        {
          v163 = -1;
        }

        v227 = v163 & v159;
      }

      else
      {
        v227 = v159;
        v164 = 0;
      }

      v217 = v22 - v128;
      v222 = v218 - v128;
      v212 = v157 >> 2;
      v196 = bswap32(*(result + 1020)) >> 16;
      v197 = vdup_n_s16(v196);
LABEL_510:
      v198 = *v160 & v227;
      v199 = v212;
      v200 = v164;
      if (!v198)
      {
        goto LABEL_513;
      }

LABEL_511:
      if (v198 == -1)
      {
        *v161 = v197;
        goto LABEL_513;
      }

      while (1)
      {
        v202 = v196;
        if (v198 <= 0xF7u)
        {
          if (v198 < 8u)
          {
            goto LABEL_522;
          }

          result = PDplusDM(*(v10 + 4 * v198), bswap32(v161->u16[0]) >> 16, ~v198);
          v202 = __rev16(result);
        }

        v161->i16[0] = v202;
LABEL_522:
        v203 = v196;
        if (BYTE1(v198) <= 0xF7u)
        {
          if (BYTE1(v198) < 8u)
          {
            goto LABEL_526;
          }

          result = PDplusDM(*(v10 + 4 * BYTE1(v198)), bswap32(v161->u16[1]) >> 16, ~(v198 >> 8));
          v203 = __rev16(result);
        }

        v161->i16[1] = v203;
LABEL_526:
        v204 = v196;
        if (BYTE2(v198) <= 0xF7u)
        {
          if (BYTE2(v198) < 8u)
          {
            goto LABEL_530;
          }

          result = PDplusDM(*(v10 + 4 * BYTE2(v198)), bswap32(v161->u16[2]) >> 16, ~HIWORD(v198));
          v204 = __rev16(result);
        }

        v161->i16[2] = v204;
LABEL_530:
        if (v198 >> 27 == 31)
        {
          v161->i16[3] = v196;
        }

        else if (v198 >> 27)
        {
          result = PDplusDM(*(v10 + 4 * HIBYTE(v198)), bswap32(v161->u16[3]) >> 16, ~v198 >> 24);
          v161->i16[3] = __rev16(result);
        }

LABEL_513:
        while (1)
        {
          v201 = v199;
          ++v161;
          --v199;
          ++v160;
          if (v201 < 2)
          {
            break;
          }

          v198 = *v160;
          if (*v160)
          {
            goto LABEL_511;
          }
        }

        if (!v200)
        {
          v160 = (v160 + v217);
          v161 = (v161 + 2 * v222);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_510;
        }

        v200 = 0;
        v198 = *v160 & v164;
      }

    case 2:
      v110 = v21 & 3;
      if (v6)
      {
        v111 = v110 + v223;
        v112 = v19 - (v21 & 3);
        if ((v21 & 3) != 0)
        {
          v113 = v21 & 0xFC;
        }

        else
        {
          v113 = v21;
        }

        if ((v21 & 3) != 0)
        {
          result = (-1 << (8 * v110));
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        if ((v21 & 3) != 0)
        {
          v114 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v114 = v21;
        }

        if ((v21 & 3) != 0)
        {
          v115 = &v14[-(v21 & 3)];
        }

        else
        {
          v115 = v14;
        }

        if (v110)
        {
          v19 = v112;
        }

        else
        {
          v111 = v223;
        }

        if (((v111 + v113) & 3) != 0)
        {
          v116 = 4 - ((v111 + v113) & 3);
          v110 += v116;
          v117 = 0xFFFFFFFF >> (8 * v116);
          if (v111 >= 4)
          {
            v118 = 0xFFFFFFFF >> (8 * v116);
          }

          else
          {
            v118 = 0;
          }

          v224 = v118;
          if (v111 >= 4)
          {
            v117 = -1;
          }

          result = v117 & result;
          v214 = result;
        }

        else
        {
          v214 = result;
          v224 = 0;
        }

        v208 = v22 - v110;
        v219 = v218 - v110;
        v206 = v111 >> 2;
        v205 = v16 - v110;
        while (1)
        {
          v165 = *v114 & v214;
          v166 = v206;
          v167 = v224;
          if (!v165)
          {
            goto LABEL_440;
          }

LABEL_438:
          if (v165 == -1)
          {
            break;
          }

          while (1)
          {
            if ((v165 & 0xF8) != 0)
            {
              v177 = HIBYTE(*(v10 + 4 * v165));
              result = PDAplusDAM(*(v10 + 4 * v165), v177, bswap32(v19->u16[0]) >> 16, *v115, v177 ^ 0xFFu);
              v19->i16[0] = bswap32(result) >> 16;
              *v115 = BYTE3(result);
            }

            if ((v165 & 0xF800) != 0)
            {
              v178 = HIBYTE(*(v10 + 4 * BYTE1(v165)));
              result = PDAplusDAM(*(v10 + 4 * BYTE1(v165)), v178, bswap32(v19->u16[1]) >> 16, v115[1], v178 ^ 0xFFu);
              v19->i16[1] = bswap32(result) >> 16;
              v115[1] = BYTE3(result);
            }

            if ((v165 & 0xF80000) != 0)
            {
              v179 = HIBYTE(*(v10 + 4 * BYTE2(v165)));
              result = PDAplusDAM(*(v10 + 4 * BYTE2(v165)), v179, bswap32(v19->u16[2]) >> 16, v115[2], v179 ^ 0xFFu);
              v19->i16[2] = bswap32(result) >> 16;
              v115[2] = BYTE3(result);
            }

            if (v165 >> 27)
            {
              v175 = HIBYTE(*(v10 + 4 * HIBYTE(v165)));
              v171 = bswap32(v19->u16[3]) >> 16;
              v172 = v115[3];
              v173 = *(v10 + 4 * HIBYTE(v165));
              v174 = v175 ^ 0xFF;
              goto LABEL_453;
            }

LABEL_440:
            while (1)
            {
              v176 = v166;
              ++v19;
              v115 += 4;
              --v166;
              ++v114;
              if (v176 < 2)
              {
                break;
              }

              v165 = *v114;
              if (*v114)
              {
                goto LABEL_438;
              }
            }

            if (!v167)
            {
              break;
            }

            v167 = 0;
            v165 = *v114 & v224;
          }

          v114 = (v114 + v208);
          v19 = (v19 + 2 * v219);
          v115 += v205;
          if (!--v4)
          {
            return result;
          }
        }

        v168 = PDAplusDAM(v210, SHIBYTE(v210), bswap32(v19->u16[0]) >> 16, *v115, ~HIBYTE(v210));
        v19->i16[0] = bswap32(v168) >> 16;
        *v115 = HIBYTE(v168);
        v169 = PDAplusDAM(v210, SHIBYTE(v210), bswap32(v19->u16[1]) >> 16, v115[1], ~HIBYTE(v210));
        v19->i16[1] = bswap32(v169) >> 16;
        v115[1] = HIBYTE(v169);
        v170 = PDAplusDAM(v210, SHIBYTE(v210), bswap32(v19->u16[2]) >> 16, v115[2], ~HIBYTE(v210));
        v19->i16[2] = bswap32(v170) >> 16;
        v115[2] = HIBYTE(v170);
        v171 = bswap32(v19->u16[3]) >> 16;
        v172 = v115[3];
        v173 = v210;
        v174 = ~HIBYTE(v210);
        LOBYTE(v175) = HIBYTE(v210);
LABEL_453:
        result = PDAplusDAM(v173, v175, v171, v172, v174);
        v19->i16[3] = bswap32(result) >> 16;
        v115[3] = BYTE3(result);
        goto LABEL_440;
      }

      v149 = v110 + v223;
      if ((v21 & 3) != 0)
      {
        v150 = v21 & 0xFC;
      }

      else
      {
        v150 = v21;
      }

      if ((v21 & 3) != 0)
      {
        v151 = -1 << (8 * v110);
      }

      else
      {
        v151 = -1;
      }

      if ((v21 & 3) != 0)
      {
        v152 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v152 = v21;
      }

      if ((v21 & 3) != 0)
      {
        v153 = v19 - (v21 & 3);
      }

      else
      {
        v153 = v19;
      }

      if ((v21 & 3) == 0)
      {
        v149 = v223;
      }

      if (((v149 + v150) & 3) != 0)
      {
        v154 = 4 - ((v149 + v150) & 3);
        v110 += v154;
        v155 = 0xFFFFFFFF >> (8 * v154);
        if (v149 >= 4)
        {
          v156 = 0xFFFFFFFF >> (8 * v154);
        }

        else
        {
          v156 = 0;
        }

        if (v149 >= 4)
        {
          v155 = -1;
        }

        v226 = v155 & v151;
      }

      else
      {
        v226 = v151;
        v156 = 0;
      }

      v188 = v149 >> 2;
      v216 = v22 - v110;
      v221 = v218 - v110;
      do
      {
        v189 = *v152 & v226;
        v190 = v188;
        v191 = v156;
        if (!v189)
        {
          goto LABEL_492;
        }

LABEL_490:
        if (v189 == -1)
        {
          *v153 = __rev16(PDplusDM(v210, bswap32(*v153) >> 16, ~HIBYTE(v210)));
          v153[1] = __rev16(PDplusDM(v210, bswap32(v153[1]) >> 16, ~HIBYTE(v210)));
          v153[2] = __rev16(PDplusDM(v210, bswap32(v153[2]) >> 16, ~HIBYTE(v210)));
          v192 = bswap32(v153[3]) >> 16;
          v193 = v210;
          v194 = ~HIBYTE(v210);
LABEL_505:
          result = PDplusDM(v193, v192, v194);
          v153[3] = __rev16(result);
          goto LABEL_492;
        }

        while (1)
        {
          if ((v189 & 0xF8) != 0)
          {
            result = PDplusDM(*(v10 + 4 * v189), bswap32(*v153) >> 16, ~*(v10 + 4 * v189) >> 24);
            *v153 = __rev16(result);
          }

          if ((v189 & 0xF800) != 0)
          {
            result = PDplusDM(*(v10 + 4 * BYTE1(v189)), bswap32(v153[1]) >> 16, ~*(v10 + 4 * BYTE1(v189)) >> 24);
            v153[1] = __rev16(result);
          }

          if ((v189 & 0xF80000) != 0)
          {
            result = PDplusDM(*(v10 + 4 * BYTE2(v189)), bswap32(v153[2]) >> 16, ~*(v10 + 4 * BYTE2(v189)) >> 24);
            v153[2] = __rev16(result);
          }

          if (v189 >> 27)
          {
            v192 = bswap32(v153[3]) >> 16;
            v194 = ~*(v10 + 4 * HIBYTE(v189)) >> 24;
            v193 = *(v10 + 4 * HIBYTE(v189));
            goto LABEL_505;
          }

LABEL_492:
          while (1)
          {
            v195 = v190;
            v153 += 4;
            --v190;
            ++v152;
            if (v195 < 2)
            {
              break;
            }

            v189 = *v152;
            if (*v152)
            {
              goto LABEL_490;
            }
          }

          if (!v191)
          {
            break;
          }

          v191 = 0;
          v189 = *v152 & v156;
        }

        v152 = (v152 + v216);
        v153 += v221;
        --v4;
      }

      while (v4);
      return result;
    case 3:
      while (1)
      {
        v55 = v223;
        do
        {
          v56 = *v21;
          if (v56 < 0xF8)
          {
            if (v56 < 8)
            {
              goto LABEL_123;
            }

            v57 = *v14;
            result = PDAplusDAM(*(v10 + 4 * ((v57 * v56 + ((v57 * v56) >> 8) + 1) >> 8)), HIBYTE(*(v10 + 4 * ((v57 * v56 + ((v57 * v56) >> 8) + 1) >> 8))), bswap32(v19->u16[0]) >> 16, v57, v56 ^ 0xFF);
          }

          else
          {
            result = *(v10 + 4 * *v14);
          }

          v19->i16[0] = bswap32(result) >> 16;
          *v14 = BYTE3(result);
LABEL_123:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v55;
        }

        while (v55);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 4:
      while (1)
      {
        v38 = v223;
        do
        {
          v39 = *v21;
          if (v39 < 0xF8)
          {
            if (v39 < 8)
            {
              goto LABEL_66;
            }

            v40 = *v14;
            result = PDAplusDAM(*(v10 + 4 * (((v40 ^ 0xFF) * v39 + (((v40 ^ 0xFF) * v39) >> 8) + 1) >> 8)), HIBYTE(*(v10 + 4 * (((v40 ^ 0xFF) * v39 + (((v40 ^ 0xFF) * v39) >> 8) + 1) >> 8))), bswap32(v19->u16[0]) >> 16, v40, v39 ^ 0xFF);
          }

          else
          {
            result = *(v10 + 4 * ~*v14);
          }

          v19->i16[0] = bswap32(result) >> 16;
          *v14 = BYTE3(result);
LABEL_66:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v38;
        }

        while (v38);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 5:
      do
      {
        v66 = v223;
        do
        {
          v67 = *v21;
          if (v67 >= 8)
          {
            result = PDAMplusDAM(*(v10 + 4 * v67), HIBYTE(*(v10 + 4 * v67)), *v14, bswap32(v19->u16[0]) >> 16, *v14, HIBYTE(*(v10 + 4 * v67)) ^ 0xFFu);
            v19->i16[0] = bswap32(result) >> 16;
            *v14 = BYTE3(result);
          }

          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v66;
        }

        while (v66);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        --v4;
      }

      while (v4);
      return result;
    case 6:
      while (1)
      {
        v76 = v223;
        do
        {
          v77 = *v21;
          if (v77 < 8)
          {
            goto LABEL_195;
          }

          v78 = *v14;
          if (v78 > 7)
          {
            if (v78 > 0xF7)
            {
              goto LABEL_195;
            }

            result = PDAplusDAM(bswap32(v19->u16[0]) >> 16, v78, *(v10 + 4 * v77), HIBYTE(*(v10 + 4 * v77)), ~v78);
          }

          else
          {
            result = *(v10 + 4 * v77);
          }

          v19->i16[0] = bswap32(result) >> 16;
          *v14 = BYTE3(result);
LABEL_195:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v76;
        }

        while (v76);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 7:
      if (v6)
      {
        while (1)
        {
          v119 = v223;
          do
          {
            v120 = *v21;
            if (v120 < 0xF8)
            {
              if (v120 < 8)
              {
                goto LABEL_333;
              }

              v121 = bswap32(v19->u16[0]) >> 16;
              v122 = *v14;
              v123 = ~v120 + ((v18 * v120 + ((v18 * v120) >> 8) + 1) >> 8);
            }

            else
            {
              v121 = bswap32(v19->u16[0]) >> 16;
              v122 = *v14;
              v123 = HIBYTE(v210);
            }

            result = PDAM(v121, v122, v123);
            v19->i16[0] = bswap32(result) >> 16;
            *v14 = BYTE3(result);
LABEL_333:
            ++v21;
            v19 = (v19 + 2);
            v14 += v15;
            --v119;
          }

          while (v119);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          v14 += v213;
          if (!--v4)
          {
            return result;
          }
        }
      }

LABEL_336:
      v124 = v223;
      while (1)
      {
        v125 = *v21;
        if (v125 >= 0xF8)
        {
          break;
        }

        if (v125 >= 8)
        {
          v126 = bswap32(v19->u16[0]) >> 16;
          v127 = ~v125 + ((v18 * v125 + ((v18 * v125) >> 8) + 1) >> 8);
          goto LABEL_341;
        }

LABEL_342:
        ++v21;
        v19 = (v19 + 2);
        if (!--v124)
        {
          v21 += v22;
          v19 = (v19 + 2 * v218);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_336;
        }
      }

      v126 = bswap32(v19->u16[0]) >> 16;
      v127 = HIBYTE(v210);
LABEL_341:
      result = PDM(v126, v127);
      v19->i16[0] = __rev16(result);
      goto LABEL_342;
    case 8:
      if (v6)
      {
        while (1)
        {
          v136 = v223;
          do
          {
            v137 = *v21;
            if (v137 < 0xF8)
            {
              if (v137 < 8)
              {
                goto LABEL_375;
              }

              v138 = bswap32(v19->u16[0]) >> 16;
              v139 = *v14;
              v140 = ~((v18 * v137 + ((v18 * v137) >> 8) + 1) >> 8);
            }

            else
            {
              v138 = bswap32(v19->u16[0]) >> 16;
              v139 = *v14;
              v140 = ~HIBYTE(v210);
            }

            result = PDAM(v138, v139, v140);
            v19->i16[0] = bswap32(result) >> 16;
            *v14 = BYTE3(result);
LABEL_375:
            ++v21;
            v19 = (v19 + 2);
            v14 += v15;
            --v136;
          }

          while (v136);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          v14 += v213;
          if (!--v4)
          {
            return result;
          }
        }
      }

LABEL_378:
      v141 = v223;
      while (1)
      {
        v142 = *v21;
        if (v142 >= 0xF8)
        {
          break;
        }

        if (v142 >= 8)
        {
          v143 = bswap32(v19->u16[0]) >> 16;
          v144 = ~((v18 * v142 + ((v18 * v142) >> 8) + 1) >> 8);
          goto LABEL_383;
        }

LABEL_384:
        ++v21;
        v19 = (v19 + 2);
        if (!--v141)
        {
          v21 += v22;
          v19 = (v19 + 2 * v218);
          if (!--v4)
          {
            return result;
          }

          goto LABEL_378;
        }
      }

      v143 = bswap32(v19->u16[0]) >> 16;
      v144 = ~HIBYTE(v210);
LABEL_383:
      result = PDM(v143, v144);
      v19->i16[0] = __rev16(result);
      goto LABEL_384;
    case 9:
      do
      {
        v41 = v223;
        do
        {
          v42 = *v21;
          if (v42 >= 8)
          {
            result = PDAMplusDAM(*(v10 + 4 * v42), HIBYTE(*(v10 + 4 * v42)), *v14 ^ 0xFFu, bswap32(v19->u16[0]) >> 16, *v14, (~v42 + HIBYTE(*(v10 + 4 * v42))));
            v19->i16[0] = bswap32(result) >> 16;
            *v14 = BYTE3(result);
          }

          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v41;
        }

        while (v41);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        --v4;
      }

      while (v4);
      return result;
    case 10:
      do
      {
        v83 = v223;
        do
        {
          v84 = *v21;
          if (v84 >= 8)
          {
            result = PDAMplusDAM(*(v10 + 4 * v84), HIBYTE(*(v10 + 4 * v84)), *v14 ^ 0xFFu, bswap32(v19->u16[0]) >> 16, *v14, HIBYTE(*(v10 + 4 * v84)) ^ 0xFFu);
            v19->i16[0] = bswap32(result) >> 16;
            *v14 = BYTE3(result);
          }

          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v83;
        }

        while (v83);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        --v4;
      }

      while (v4);
      return result;
    case 11:
      if (v6)
      {
        do
        {
          v104 = v223;
          do
          {
            v105 = *v21;
            if (v105 >= 8)
            {
              result = PDAplusdDA(bswap32(v19->u16[0]) >> 16, *v14, *(v10 + 4 * v105), HIBYTE(*(v10 + 4 * v105)));
              v19->i16[0] = bswap32(result) >> 16;
              *v14 = BYTE3(result);
            }

            ++v21;
            v19 = (v19 + 2);
            v14 += v15;
            --v104;
          }

          while (v104);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          v14 += v213;
          --v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v106 = v223;
          do
          {
            v107 = *v21;
            if (v107 >= 8)
            {
              result = PDplusdDA(bswap32(v19->u16[0]) >> 16, *(v10 + 4 * v107), HIBYTE(*(v10 + 4 * v107)));
              v19->i16[0] = __rev16(result);
            }

            ++v21;
            v19 = (v19 + 2);
            --v106;
          }

          while (v106);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          --v4;
        }

        while (v4);
      }

      return result;
    case 12:
      if (v6)
      {
        do
        {
          v108 = v223;
          do
          {
            v109 = *v21;
            if (v109 >= 8)
            {
              result = PDApluslDA(bswap32(v19->u16[0]) >> 16, *v14, *(v10 + 4 * v109), HIBYTE(*(v10 + 4 * v109)));
              v19->i16[0] = bswap32(result) >> 16;
              *v14 = BYTE3(result);
            }

            ++v21;
            v19 = (v19 + 2);
            v14 += v15;
            --v108;
          }

          while (v108);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          v14 += v213;
          --v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v145 = v223;
          do
          {
            v146 = *v21;
            if (v146 >= 8)
            {
              v147 = bswap32(v19->u16[0]);
              v148 = (((HIWORD(v147) << 15) | HIWORD(v147)) & 0x1F07C1F) + (*(result + 4 * v146) & 0x7C1F | (((*(result + 4 * v146) >> 5) & 0x1F) << 20));
              v19->i16[0] = __rev16((((30 * ((v148 >> 5) & 0x100401)) | (15 * ((v148 >> 5) & 0x100401)) | v148) >> 15) & 0x3E0 | ((30 * ((v148 >> 5) & 0x100401)) | (15 * ((v148 >> 5) & 0x100401)) | v148) & 0x7C1F);
            }

            ++v21;
            v19 = (v19 + 2);
            --v145;
          }

          while (v145);
          v21 += v22;
          v19 = (v19 + 2 * v218);
          --v4;
        }

        while (v4);
      }

      return result;
    case 13:
      while (1)
      {
        v72 = v223;
        do
        {
          v73 = *v21;
          if (v73 >= 8)
          {
            result = *(v10 + 4 * v73);
            if (result >> 27)
            {
              v74 = BYTE3(result);
              if (v6)
              {
                v75 = *v14;
                if (v75 < 8)
                {
                  goto LABEL_183;
                }
              }

              else
              {
                v75 = 255;
              }

              result = PDAmultiplyPDA(bswap32(v19->u16[0]) >> 16, v75, *(v10 + 4 * v73), v74);
              if (v6)
              {
                v74 = BYTE3(result);
LABEL_183:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v74;
                goto LABEL_185;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_185:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v72;
        }

        while (v72);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 14:
      while (1)
      {
        v34 = v223;
        do
        {
          v35 = *v21;
          if (v35 >= 8)
          {
            result = *(v10 + 4 * v35);
            if (result >> 27)
            {
              v36 = BYTE3(result);
              if (v6)
              {
                v37 = *v14;
                if (v37 < 8)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v37 = 255;
              }

              result = PDAscreenPDA(bswap32(v19->u16[0]) >> 16, v37, *(v10 + 4 * v35), v36);
              if (v6)
              {
                v36 = BYTE3(result);
LABEL_55:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v36;
                goto LABEL_57;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_57:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v34;
        }

        while (v34);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 15:
      while (1)
      {
        v51 = v223;
        do
        {
          v52 = *v21;
          if (v52 >= 8)
          {
            result = *(v10 + 4 * v52);
            if (result >> 27)
            {
              v53 = BYTE3(result);
              if (v6)
              {
                v54 = *v14;
                if (v54 < 8)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                v54 = 255;
              }

              result = PDAoverlayPDA(bswap32(v19->u16[0]) >> 16, v54, *(v10 + 4 * v52), v53);
              if (v6)
              {
                v53 = BYTE3(result);
LABEL_112:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v53;
                goto LABEL_114;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_114:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v51;
        }

        while (v51);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 16:
      while (1)
      {
        v30 = v223;
        do
        {
          v31 = *v21;
          if (v31 >= 8)
          {
            result = *(v10 + 4 * v31);
            if (result >> 27)
            {
              v32 = BYTE3(result);
              if (v6)
              {
                v33 = *v14;
                if (v33 < 8)
                {
                  goto LABEL_41;
                }
              }

              else
              {
                v33 = 255;
              }

              result = PDAdarkenPDA(bswap32(v19->u16[0]) >> 16, v33, *(v10 + 4 * v31), v32);
              if (v6)
              {
                v32 = BYTE3(result);
LABEL_41:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v32;
                goto LABEL_43;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_43:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v30;
        }

        while (v30);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 17:
      while (1)
      {
        v58 = v223;
        do
        {
          v59 = *v21;
          if (v59 >= 8)
          {
            result = *(v10 + 4 * v59);
            if (result >> 27)
            {
              v60 = BYTE3(result);
              if (v6)
              {
                v61 = *v14;
                if (v61 < 8)
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v61 = 255;
              }

              result = PDAlightenPDA(bswap32(v19->u16[0]) >> 16, v61, *(v10 + 4 * v59), v60);
              if (v6)
              {
                v60 = BYTE3(result);
LABEL_135:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v60;
                goto LABEL_137;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_137:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v58;
        }

        while (v58);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 18:
      while (1)
      {
        v79 = v223;
        do
        {
          v80 = *v21;
          if (v80 >= 8)
          {
            result = *(v10 + 4 * v80);
            if (result >> 27)
            {
              v81 = BYTE3(result);
              if (v6)
              {
                v82 = *v14;
                if (v82 < 8)
                {
                  goto LABEL_207;
                }
              }

              else
              {
                v82 = 255;
              }

              result = PDAcolordodgePDA(bswap32(v19->u16[0]) >> 16, v82, *(v10 + 4 * v80), v81);
              if (v6)
              {
                v81 = BYTE3(result);
LABEL_207:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v81;
                goto LABEL_209;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_209:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v79;
        }

        while (v79);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 19:
      while (1)
      {
        v89 = v223;
        do
        {
          v90 = *v21;
          if (v90 >= 8)
          {
            result = *(v10 + 4 * v90);
            if (result >> 27)
            {
              v91 = BYTE3(result);
              if (v6)
              {
                v92 = *v14;
                if (v92 < 8)
                {
                  goto LABEL_241;
                }
              }

              else
              {
                v92 = 255;
              }

              result = PDAcolorburnPDA(bswap32(v19->u16[0]) >> 16, v92, *(v10 + 4 * v90), v91);
              if (v6)
              {
                v91 = BYTE3(result);
LABEL_241:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v91;
                goto LABEL_243;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_243:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v89;
        }

        while (v89);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 20:
      while (1)
      {
        v62 = v223;
        do
        {
          v63 = *v21;
          if (v63 >= 8)
          {
            result = *(v10 + 4 * v63);
            if (result >> 27)
            {
              v64 = BYTE3(result);
              if (v6)
              {
                v65 = *v14;
                if (v65 < 8)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                v65 = 255;
              }

              result = PDAsoftlightPDA(bswap32(v19->u16[0]) >> 16, v65, *(v10 + 4 * v63), v64);
              if (v6)
              {
                v64 = BYTE3(result);
LABEL_149:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v64;
                goto LABEL_151;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_151:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v62;
        }

        while (v62);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 21:
      while (1)
      {
        v68 = v223;
        do
        {
          v69 = *v21;
          if (v69 >= 8)
          {
            result = *(v10 + 4 * v69);
            if (result >> 27)
            {
              v70 = BYTE3(result);
              if (v6)
              {
                v71 = *v14;
                if (v71 < 8)
                {
                  goto LABEL_169;
                }
              }

              else
              {
                v71 = 255;
              }

              result = PDAhardlightPDA(bswap32(v19->u16[0]) >> 16, v71, *(v10 + 4 * v69), v70);
              if (v6)
              {
                v70 = BYTE3(result);
LABEL_169:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v70;
                goto LABEL_171;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_171:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v68;
        }

        while (v68);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 22:
      while (1)
      {
        v85 = v223;
        do
        {
          v86 = *v21;
          if (v86 >= 8)
          {
            result = *(v10 + 4 * v86);
            if (result >> 27)
            {
              v87 = BYTE3(result);
              if (v6)
              {
                v88 = *v14;
                if (v88 < 8)
                {
                  goto LABEL_227;
                }
              }

              else
              {
                v88 = 255;
              }

              result = PDAdifferencePDA(bswap32(v19->u16[0]) >> 16, v88, *(v10 + 4 * v86), v87);
              if (v6)
              {
                v87 = BYTE3(result);
LABEL_227:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v87;
                goto LABEL_229;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_229:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v85;
        }

        while (v85);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 23:
      while (1)
      {
        v93 = v223;
        do
        {
          v94 = *v21;
          if (v94 >= 8)
          {
            result = *(v10 + 4 * v94);
            if (result >> 27)
            {
              v95 = BYTE3(result);
              if (v6)
              {
                v96 = *v14;
                if (v96 < 8)
                {
                  goto LABEL_255;
                }
              }

              else
              {
                v96 = 255;
              }

              result = PDAexclusionPDA(bswap32(v19->u16[0]) >> 16, v96, *(v10 + 4 * v94), v95);
              if (v6)
              {
                v95 = BYTE3(result);
LABEL_255:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v95;
                goto LABEL_257;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_257:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v93;
        }

        while (v93);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 24:
      while (1)
      {
        v47 = v223;
        do
        {
          v48 = *v21;
          if (v48 >= 8)
          {
            result = *(v10 + 4 * v48);
            if (result >> 27)
            {
              v49 = BYTE3(result);
              if (v6)
              {
                v50 = *v14;
                if (v50 < 8)
                {
                  goto LABEL_98;
                }
              }

              else
              {
                v50 = 255;
              }

              result = PDAhuePDA(bswap32(v19->u16[0]) >> 16, v50, *(v10 + 4 * v48), v49);
              if (v6)
              {
                v49 = BYTE3(result);
LABEL_98:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v49;
                goto LABEL_100;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_100:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v47;
        }

        while (v47);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 25:
      while (1)
      {
        v43 = v223;
        do
        {
          v44 = *v21;
          if (v44 >= 8)
          {
            result = *(v10 + 4 * v44);
            if (result >> 27)
            {
              v45 = BYTE3(result);
              if (v6)
              {
                v46 = *v14;
                if (v46 < 8)
                {
                  goto LABEL_84;
                }
              }

              else
              {
                v46 = 255;
              }

              result = PDAsaturationPDA(bswap32(v19->u16[0]) >> 16, v46, *(v10 + 4 * v44), v45);
              if (v6)
              {
                v45 = BYTE3(result);
LABEL_84:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v45;
                goto LABEL_86;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_86:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v43;
        }

        while (v43);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 26:
      while (1)
      {
        v97 = v223;
        do
        {
          v98 = *v21;
          if (v98 >= 8)
          {
            result = *(v10 + 4 * v98);
            if (result >> 27)
            {
              v99 = BYTE3(result);
              if (v6)
              {
                v100 = *v14;
                if (v100 < 8)
                {
                  goto LABEL_269;
                }
              }

              else
              {
                v100 = 255;
              }

              result = PDAluminosityPDA(*(v10 + 4 * v98), v99, bswap32(v19->u16[0]) >> 16, v100);
              if (v6)
              {
                v99 = BYTE3(result);
LABEL_269:
                v19->i16[0] = bswap32(result) >> 16;
                *v14 = v99;
                goto LABEL_271;
              }

              v19->i16[0] = bswap32(result) >> 16;
            }
          }

LABEL_271:
          ++v21;
          v19 = (v19 + 2);
          v14 += v15;
          --v97;
        }

        while (v97);
        v21 += v22;
        v19 = (v19 + 2 * v218);
        v14 += v213;
        if (!--v4)
        {
          return result;
        }
      }

    case 27:
      break;
    default:
      return result;
  }

LABEL_18:
  v26 = v223;
  while (1)
  {
    v27 = *v21;
    if (v27 < 8)
    {
      goto LABEL_29;
    }

    result = *(v10 + 4 * v27);
    if (!(result >> 27))
    {
      goto LABEL_29;
    }

    v28 = BYTE3(result);
    if (v6)
    {
      v29 = *v14;
      if (v29 < 8)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v29 = 255;
    }

    result = PDAluminosityPDA(bswap32(v19->u16[0]) >> 16, v29, *(v10 + 4 * v27), v28);
    if (!v6)
    {
      v19->i16[0] = bswap32(result) >> 16;
      goto LABEL_29;
    }

    v28 = BYTE3(result);
LABEL_27:
    v19->i16[0] = bswap32(result) >> 16;
    *v14 = v28;
LABEL_29:
    ++v21;
    v19 = (v19 + 2);
    v14 += v15;
    if (!--v26)
    {
      v21 += v22;
      v19 = (v19 + 2 * v218);
      v14 += v213;
      if (!--v4)
      {
        return result;
      }

      goto LABEL_18;
    }
  }
}