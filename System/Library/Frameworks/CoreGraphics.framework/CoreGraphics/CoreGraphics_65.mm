uint64_t W16_image(uint64_t *a1, unsigned __int8 *a2, float *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = *a1;
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
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(v40, 0, 512);
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

  if (_blt_image_initialize(a2, a3, &v23, v40) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *a3;
  *(&v23 + 1) = __PAIR64__(*v6, *a3);
  if (v10 == 68161796)
  {
    if (!v34 && (~DWORD1(v24) & 0xC3) == 0 && a3[2] >= 1.0 && !*(a3 + 3))
    {
      if ((BYTE4(v24) & 4) != 0)
      {
        *(a2 + 8) = *(a3 + 4);
      }

      W16_mark(a1);
      return 1;
    }

    *&v23 = w16_sample_W16;
    goto LABEL_37;
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
      case 7:
        v12 = 0;
        v13 = 32;
        break;
      case 9:
        v12 = 0;
        v13 = 40;
        break;
      case 8:
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
  *&v23 = *&W16_image_sample[2 * v11 + 2];
  if (v23)
  {
    v14 = 68161828;
    goto LABEL_36;
  }

  if ((HIWORD(*a3) & 0x3Fu) <= 8)
  {
    *&v23 = *&W8_image_sample[2 * v11 + 2];
    if (v23)
    {
      v14 = 34083076;
      goto LABEL_36;
    }
  }

  *&v23 = *&WF_image_sample[2 * v11 + 2];
  if (!v23)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v24) = 8;
  v14 = 136319269;
LABEL_36:
  DWORD2(v23) = v14;
  if ((v12 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v24) & 7) != 3 || a2[2] != 5 && a2[2] || v11 > 0xB)
  {
    goto LABEL_37;
  }

  HIDWORD(v16) = v13;
  LODWORD(v16) = v13;
  v15 = v16 >> 3;
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      *(&v23 + 2) = *a3;
      v17 = W16_image_mark_RGB24;
      goto LABEL_66;
    }

    if (v15 == 4)
    {
      *(&v23 + 2) = *a3;
      v17 = W16_image_mark_rgb32;
      goto LABEL_66;
    }

    if (v15 != 5)
    {
      goto LABEL_37;
    }

    *(&v23 + 2) = *a3;
    v18 = W16_image_mark_rgb32;
LABEL_64:
    v19 = v18;
    v20 = a2;
    v21 = v8;
    v22 = 8;
LABEL_67:
    w16_image_mark_image(v20, &v23, v21, v22, v19);
    return 1;
  }

  switch(v15)
  {
    case 0:
      *(&v23 + 2) = *a3;
      v17 = W16_image_mark_RGB32;
      goto LABEL_66;
    case 1:
      *(&v23 + 2) = *a3;
      v18 = W16_image_mark_RGB32;
      goto LABEL_64;
    case 2:
      *(&v23 + 2) = *a3;
      v17 = W16_image_mark_W8;
LABEL_66:
      v19 = v17;
      v20 = a2;
      v21 = v8;
      v22 = 0;
      goto LABEL_67;
  }

LABEL_37:
  W16_image_mark(a2, &v23, v8);
  return 1;
}

uint64_t W16_mark(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v795 = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 96);
  v5 = *(v2 + 48);
  v6 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v4 == 0) + 4 * (v5 == 0));
  if (v6 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v2;
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
  v735 = v2;
  if ((*v2 & 0xFF0000) == 0x50000 || !v13)
  {
    v15 = *v2 & 0xFF00;
    v737 = *(*(*v1 + 56) + 16 * *v2 + 8 * (v4 == 0) + 4 * (v5 == 0));
    if (v15 == 1024)
    {
      v794[0] = *(v2 + 4);
      v784[0] = v11;
      v16 = **(v2 + 88);
      v17 = bswap32(v16);
      if (v4)
      {
        v18 = bswap32(*v4) << 16;
      }

      else
      {
        v18 = -65536;
      }

      v31 = v18 | v17;
      v32 = *(v2 + 28) >> 1;
      v33 = *(v2 + 12);
      v34 = *(v2 + 16);
      if (v5)
      {
        v775 = *(v2 + 32) >> 1;
        v773 = v5 + 2 * v775 * v34 + 2 * v33;
        v766 = 1;
      }

      else
      {
        v773 = 0;
        v775 = 0;
        v766 = 0;
      }

      v38 = WORD1(v31);
      v747 = ~WORD1(v31);
      v39 = (*(v2 + 40) + 2 * v34 * v32 + 2 * v33);
      v769 = *(v2 + 28) >> 1;
      v771 = v39;
      v765 = **(v2 + 88);
      v762 = v18 | v17;
      if (v13)
      {
        shape_enum_clip_alloc(v1, v2, v13, 1, 1, 1, *(v2 + 104), *(v2 + 108), v9, v11);
        v41 = v40;
        v42 = v773;
        v782 = v775;
        if (v40)
        {
          goto LABEL_1363;
        }

        return 1;
      }

      v777 = 0;
      if (v5)
      {
        v43 = v9;
      }

      else
      {
        v43 = 0;
      }

      v42 = v773;
      v782 = v775 - v43;
      v44 = v9;
LABEL_990:
      v780 = v32 - v44;
      v32 = HIWORD(v16);
      switch(v6)
      {
        case 0:
          v545 = v31;
          v546 = v780 + v9;
          v547 = v9;
          v548 = v784[0];
          v549 = v784[0] - 1;
          v550 = v39 + 2 * ((v546 * v549) & (v546 >> 63));
          if (v546 < 0)
          {
            v546 = -v546;
          }

          CGBlt_fillBytes(2 * v547, v784[0], 0, v550, 2 * v546);
          if (v5)
          {
            v551 = v782 + v547;
            v42 += 2 * ((v551 * v549) & (v551 >> 63));
            if (v551 < 0)
            {
              v551 = -v551;
            }

            v782 = v551;
            CGBlt_fillBytes(2 * v547, v548, 0, v42, 2 * v551);
          }

          v6 = v737;
          v31 = v545;
          goto LABEL_1327;
        case 1:
          v634 = v9;
          v635 = v780 + v9;
          if (v635 < 0)
          {
            v39 = (v39 + 2 * v635 * (v784[0] - 1));
            v635 = -v635;
          }

          v636 = 0;
          v637 = *(v735 + 88);
          if (v637)
          {
            v636 = *v637;
          }

          v638 = 2 * v9;
          v639 = v784[0];
          CGBlt_fillBytes(v638, v784[0], v636, v39, 2 * v635);
          if (v5)
          {
            v640 = *(v735 + 96);
            if (!v640)
            {
              v640 = &PIXELALPHAPLANARCONSTANT_18034;
            }

            v641 = v782 + v634;
            v42 += 2 * (((v782 + v634) * (v639 - 1)) & ((v782 + v634) >> 63));
            if ((v782 + v634) < 0)
            {
              v641 = -v641;
            }

            v782 = v641;
            CGBlt_fillBytes(v638, v639, *v640, v42, 2 * v641);
          }

          v6 = v737;
          goto LABEL_1327;
        case 2:
          v601 = v784[0];
          v602 = v9 >> 2;
          v603 = 8 * v766;
          v604 = 2 * v766;
          if (v5)
          {
            v605 = v602 + 1;
            v32 = v769;
            do
            {
              if (v9 < 4)
              {
                v615 = v9;
              }

              else
              {
                v606 = v605;
                do
                {
                  v607 = bswap32(v39->u16[0]);
                  v608 = bswap32(*v42);
                  v39->i16[0] = bswap32(v17 + ((HIWORD(v607) * v747 + ((HIWORD(v607) * v747) >> 16) + 1) >> 16)) >> 16;
                  *v42 = bswap32(((HIWORD(v608) * v747 + ((HIWORD(v608) * v747) >> 16) + 1) >> 16) + WORD1(v31)) >> 16;
                  v609 = bswap32(v39->u16[1]);
                  v610 = bswap32(*(v42 + 1));
                  v39->i16[1] = bswap32(v17 + ((HIWORD(v609) * v747 + ((HIWORD(v609) * v747) >> 16) + 1) >> 16)) >> 16;
                  *(v42 + 1) = bswap32(((HIWORD(v610) * v747 + ((HIWORD(v610) * v747) >> 16) + 1) >> 16) + WORD1(v31)) >> 16;
                  v611 = bswap32(v39->u16[2]);
                  v612 = bswap32(*(v42 + 2));
                  v39->i16[2] = bswap32(v17 + ((HIWORD(v611) * v747 + ((HIWORD(v611) * v747) >> 16) + 1) >> 16)) >> 16;
                  *(v42 + 2) = bswap32(((HIWORD(v612) * v747 + ((HIWORD(v612) * v747) >> 16) + 1) >> 16) + WORD1(v31)) >> 16;
                  v613 = bswap32(v39->u16[3]);
                  v614 = bswap32(*(v42 + 3));
                  v39->i16[3] = bswap32(v17 + ((HIWORD(v613) * v747 + ((HIWORD(v613) * v747) >> 16) + 1) >> 16)) >> 16;
                  *(v42 + 3) = bswap32(((HIWORD(v614) * v747 + ((HIWORD(v614) * v747) >> 16) + 1) >> 16) + WORD1(v31)) >> 16;
                  ++v39;
                  --v606;
                  v42 += v603;
                }

                while (v606 > 1);
                v615 = v9 & 3;
              }

              if (v615 >= 1)
              {
                v616 = v615 + 1;
                do
                {
                  v617 = bswap32(v39->u16[0]);
                  v618 = bswap32(*v42);
                  v39->i16[0] = bswap32(v17 + ((HIWORD(v617) * v747 + ((HIWORD(v617) * v747) >> 16) + 1) >> 16)) >> 16;
                  v39 = (v39 + 2);
                  *v42 = bswap32(((HIWORD(v618) * v747 + ((HIWORD(v618) * v747) >> 16) + 1) >> 16) + WORD1(v31)) >> 16;
                  v42 += v604;
                  --v616;
                }

                while (v616 > 1);
              }

              v39 = (v39 + 2 * v780);
              v42 += 2 * v782;
              --v601;
            }

            while (v601);
          }

          else
          {
            v719 = vdup_n_s16(v17);
            v720 = v602 + 1;
            v721 = vdup_n_s16(v747);
            v722.i64[0] = 0x100000001;
            v722.i64[1] = 0x100000001;
            v32 = v769;
            do
            {
              if (v9 < 4)
              {
                v725 = v9;
              }

              else
              {
                v723 = v720;
                do
                {
                  v724 = vmull_u16(v721, vrev16_s8(*v39));
                  *v39++ = vrev16_s8(vadd_s16(v719, vaddhn_s32(vsraq_n_u32(v724, v724, 0x10uLL), v722)));
                  --v723;
                  v42 += v603;
                }

                while (v723 > 1);
                v725 = v9 & 3;
              }

              if (v725 >= 1)
              {
                v726 = v725 + 1;
                do
                {
                  v727 = bswap32(v39->u16[0]);
                  v39->i16[0] = bswap32(v17 + ((HIWORD(v727) * v747 + ((HIWORD(v727) * v747) >> 16) + 1) >> 16)) >> 16;
                  v39 = (v39 + 2);
                  v42 += v604;
                  --v726;
                }

                while (v726 > 1);
              }

              v39 = (v39 + 2 * v780);
              v42 += 2 * v782;
              --v601;
            }

            while (v601);
          }

          goto LABEL_1360;
        case 3:
          v624 = bswap32(v31);
          v625 = v784[0];
          do
          {
            v626 = v9;
            do
            {
              v627 = bswap32(*v42) >> 16;
              if (v627 == 0xFFFF)
              {
                v39->i16[0] = HIWORD(v16);
                LOWORD(v627) = v624;
              }

              else if (v627)
              {
                v628 = v627 ^ 0xFFFF;
                v39->i16[0] = bswap32(v17 - ((v17 * v628 + ((v17 * v628) >> 16) + 1) >> 16)) >> 16;
                v627 = bswap32(v38 - ((v38 * v628 + ((v38 * v628) >> 16) + 1) >> 16)) >> 16;
              }

              else
              {
                v39->i16[0] = 0;
              }

              *v42 = v627;
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v626;
            }

            while (v626);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            --v625;
          }

          while (v625);
          goto LABEL_1312;
        case 4:
          v577 = bswap32(v31);
          v578 = v784[0];
          do
          {
            v579 = v9;
            do
            {
              v580 = bswap32(*v42) >> 16;
              if (v580)
              {
                if (v580 != 0xFFFF)
                {
                  v39->i16[0] = bswap32(v17 - ((v17 * v580 + ((v17 * v580) >> 16) + 1) >> 16)) >> 16;
                  v581 = bswap32(v38 - ((v38 * v580 + ((v38 * v580) >> 16) + 1) >> 16)) >> 16;
                }

                else
                {
                  LOWORD(v581) = 0;
                  v39->i16[0] = 0;
                }
              }

              else
              {
                v39->i16[0] = HIWORD(v16);
                LOWORD(v581) = v577;
              }

              *v42 = v581;
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v579;
            }

            while (v579);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            --v578;
          }

          while (v578);
          goto LABEL_1312;
        case 5:
          v652 = v784[0];
          v32 = v769;
          do
          {
            v653 = v9;
            do
            {
              v654 = bswap32(*v42);
              v655 = bswap32(v39->u16[0]);
              v39->i16[0] = bswap32(v17 * HIWORD(v654) + HIWORD(v655) * v747 + ((v17 * HIWORD(v654) + HIWORD(v655) * v747) >> 16) + 1);
              v39 = (v39 + 2);
              *v42 = bswap32((v747 + HIWORD(v654)) * v38 + (((v747 + HIWORD(v654)) * v38) >> 16) + 1);
              v42 += 2 * v766;
              --v653;
            }

            while (v653);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            --v652;
          }

          while (v652);
          goto LABEL_1360;
        case 6:
          v666 = bswap32(v31);
          v667 = v784[0];
          do
          {
            v668 = v9;
            do
            {
              v669 = bswap32(*v42);
              if (HIWORD(v669) != 0xFFFF)
              {
                if (~HIWORD(v669) == 0xFFFF)
                {
                  v39->i16[0] = HIWORD(v16);
                  LOWORD(v670) = v666;
                }

                else
                {
                  v671 = HIWORD(v669);
                  v672 = ~HIWORD(v669);
                  v39->i16[0] = bswap32((bswap32(v39->u16[0]) >> 16) + ((v17 * v672 + ((v17 * v672) >> 16) + 1) >> 16)) >> 16;
                  v670 = bswap32(v671 + ((v38 * v672 + ((v38 * v672) >> 16) + 1) >> 16)) >> 16;
                }

                *v42 = v670;
              }

              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v668;
            }

            while (v668);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            --v667;
          }

          while (v667);
          goto LABEL_1312;
        case 7:
          v629 = v784[0];
          v630 = 2 * v766;
          if (v5)
          {
            v32 = v769;
            do
            {
              v631 = v9;
              do
              {
                v632 = bswap32(v39->u16[0]);
                v633 = bswap32(*v42);
                v39->i16[0] = bswap32(HIWORD(v632) - ((HIWORD(v632) * v747 + ((HIWORD(v632) * v747) >> 16) + 1) >> 16)) >> 16;
                v39 = (v39 + 2);
                *v42 = bswap32(HIWORD(v633) - ((HIWORD(v633) * v747 + ((HIWORD(v633) * v747) >> 16) + 1) >> 16)) >> 16;
                v42 += v630;
                --v631;
              }

              while (v631);
              v39 = (v39 + 2 * v780);
              v42 += 2 * v782;
              --v629;
            }

            while (v629);
          }

          else
          {
            v32 = v769;
            do
            {
              v728 = v9;
              do
              {
                v729 = bswap32(v39->u16[0]);
                v39->i16[0] = bswap32(HIWORD(v729) - ((HIWORD(v729) * v747 + ((HIWORD(v729) * v747) >> 16) + 1) >> 16)) >> 16;
                v39 = (v39 + 2);
                v42 += v630;
                --v728;
              }

              while (v728);
              v39 = (v39 + 2 * v780);
              v42 += 2 * v782;
              --v629;
            }

            while (v629);
          }

          goto LABEL_1360;
        case 8:
          v682 = v784[0];
          v683 = 2 * v766;
          if (v5)
          {
            v32 = v769;
            do
            {
              v684 = v9;
              do
              {
                v685 = bswap32(v39->u16[0]);
                v686 = bswap32(*v42);
                v39->i16[0] = bswap32(HIWORD(v685) - ((v38 * HIWORD(v685) + ((v38 * HIWORD(v685)) >> 16) + 1) >> 16)) >> 16;
                v39 = (v39 + 2);
                *v42 = bswap32(HIWORD(v686) - ((v38 * HIWORD(v686) + ((v38 * HIWORD(v686)) >> 16) + 1) >> 16)) >> 16;
                v42 += v683;
                --v684;
              }

              while (v684);
              v39 = (v39 + 2 * v780);
              v42 += 2 * v782;
              --v682;
            }

            while (v682);
          }

          else
          {
            v32 = v769;
            do
            {
              v730 = v9;
              do
              {
                v731 = bswap32(v39->u16[0]);
                v39->i16[0] = bswap32(HIWORD(v731) - ((v38 * HIWORD(v731) + ((v38 * HIWORD(v731)) >> 16) + 1) >> 16)) >> 16;
                v39 = (v39 + 2);
                v42 += v683;
                --v730;
              }

              while (v730);
              v39 = (v39 + 2 * v780);
              v42 += 2 * v782;
              --v682;
            }

            while (v682);
          }

          goto LABEL_1360;
        case 9:
          v587 = v784[0];
          v32 = v769;
          do
          {
            v588 = v9;
            do
            {
              v589 = bswap32(~*v42);
              v590 = bswap32(v39->u16[0]);
              v39->i16[0] = bswap32(v17 * HIWORD(v589) + v38 * HIWORD(v590) + ((v17 * HIWORD(v589) + v38 * HIWORD(v590)) >> 16) + 1);
              v39 = (v39 + 2);
              *v42 = bswap32((v38 + HIWORD(v589)) * v38 + (((v38 + HIWORD(v589)) * v38) >> 16) + 1);
              v42 += 2 * v766;
              --v588;
            }

            while (v588);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            --v587;
          }

          while (v587);
          goto LABEL_1360;
        case 10:
          v678 = v784[0];
          v32 = v769;
          do
          {
            v679 = v9;
            do
            {
              v680 = bswap32(~*v42);
              v681 = bswap32(v39->u16[0]);
              v39->i16[0] = bswap32(v17 * HIWORD(v680) + HIWORD(v681) * v747 + ((v17 * HIWORD(v680) + HIWORD(v681) * v747) >> 16) + 1);
              v39 = (v39 + 2);
              *v42 = bswap32((v747 + HIWORD(v680)) * v38 + (((v747 + HIWORD(v680)) * v38) >> 16) + 1);
              v42 += 2 * v766;
              --v679;
            }

            while (v679);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            --v678;
          }

          while (v678);
          goto LABEL_1360;
        case 11:
          if (v5)
          {
            v572 = v784[0];
            v32 = v769;
            do
            {
              v573 = v9;
              do
              {
                v574 = bswap32(*v42);
                v575 = v38 - (v17 + (bswap32(v39->u16[0]) >> 16)) + HIWORD(v574);
                v576 = v38 + HIWORD(v574);
                if (v575 >= 0xFFFF)
                {
                  v575 = 0xFFFF;
                }

                if (v576 >= 0xFFFF)
                {
                  v576 = 0xFFFF;
                }

                v39->i16[0] = bswap32(v576 - v575) >> 16;
                v39 = (v39 + 2);
                *v42 = bswap32(v576) >> 16;
                v42 += 2 * v766;
                --v573;
              }

              while (v573);
              v39 = (v39 + 2 * v780);
              v42 += 2 * v782;
              --v572;
            }

            while (v572);
          }

          else
          {
            v713 = v784[0];
            v32 = v769;
            do
            {
              v714 = v9;
              do
              {
                v715 = v38 - v17 + (bswap32(~v39->u16[0]) >> 16);
                if (v715 >= 0xFFFF)
                {
                  v715 = 0xFFFF;
                }

                v39->i16[0] = bswap32(~v715) >> 16;
                v39 = (v39 + 2);
                v42 += 2 * v766;
                --v714;
              }

              while (v714);
              v39 = (v39 + 2 * v780);
              v42 += 2 * v782;
              --v713;
            }

            while (v713);
          }

          goto LABEL_1360;
        case 12:
          if (v5)
          {
            v582 = v784[0];
            v32 = v769;
            do
            {
              v583 = v9;
              do
              {
                v584 = v17 + (bswap32(v39->u16[0]) >> 16);
                v585 = v38 + (bswap32(*v42) >> 16);
                if (v584 >= 0xFFFF)
                {
                  v584 = 0xFFFF;
                }

                v39->i16[0] = bswap32(v584) >> 16;
                v39 = (v39 + 2);
                if (v585 >= 0xFFFF)
                {
                  v586 = 0xFFFF;
                }

                else
                {
                  v586 = v585;
                }

                *v42 = bswap32(v586) >> 16;
                v42 += 2 * v766;
                --v583;
              }

              while (v583);
              v39 = (v39 + 2 * v780);
              v42 += 2 * v782;
              --v582;
            }

            while (v582);
          }

          else
          {
            v716 = v784[0];
            v32 = v769;
            do
            {
              v717 = v9;
              do
              {
                v718 = bswap32(v39->u16[0]);
                v39->i16[0] = bswap32((v718 >> 15) & 0xFFFE | ((v718 >> 16) >> 15)) >> 16;
                v39 = (v39 + 2);
                v42 += 2 * v766;
                --v717;
              }

              while (v717);
              v39 = (v39 + 2 * v780);
              v42 += 2 * v782;
              --v716;
            }

            while (v716);
          }

LABEL_1360:
          v784[0] = 0;
          goto LABEL_1361;
        case 13:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v661 = bswap32(v31);
          v662 = v784[0];
          while (1)
          {
            v663 = v9;
            do
            {
              if (!v5)
              {
                v664 = 0xFFFF;
LABEL_1217:
                v665 = bswap32(PDAmultiplyPDA_8993(bswap32(v39->u16[0]) >> 16, v664, v17, v38));
                v39->i16[0] = HIWORD(v665);
                if (!v5)
                {
                  goto LABEL_1221;
                }

                goto LABEL_1220;
              }

              if (*v42)
              {
                v664 = __rev16(*v42);
                goto LABEL_1217;
              }

              v39->i16[0] = v32;
              LOWORD(v665) = v661;
LABEL_1220:
              *v42 = v665;
LABEL_1221:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v663;
            }

            while (v663);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v662)
            {
              goto LABEL_1326;
            }
          }

        case 14:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v562 = bswap32(v31);
          v563 = v784[0];
          while (1)
          {
            v564 = v9;
            do
            {
              if (v5)
              {
                if (!*v42)
                {
                  v39->i16[0] = HIWORD(v16);
                  *v42 = v562;
                  goto LABEL_1043;
                }

                v565 = __rev16(*v42);
              }

              else
              {
                v565 = 0xFFFF;
              }

              v566 = bswap32(v39->u16[0]);
              v567 = (HIWORD(v566) ^ 0xFFFF) * v17 - HIWORD(v566) + (HIWORD(v566) << 16);
              if (v567 <= 0xFFFE8000)
              {
                v568 = v567 + 0x8000;
              }

              else
              {
                v568 = 4294868992;
              }

              v569 = v568 + (v568 >> 16);
              if (v5)
              {
                v570 = 0xFFFF * (v38 + v565) - v38 * v565;
                if (v570 <= 4294868992)
                {
                  v571 = v570 + 0x8000;
                }

                else
                {
                  v571 = 4294868992;
                }

                v39->i16[0] = bswap32(v569);
                *v42 = bswap32((v569 >> 16) | ((v571 >> 16) + v571));
              }

              else
              {
                v39->i16[0] = bswap32(v569);
              }

LABEL_1043:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v564;
            }

            while (v564);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v563)
            {
LABEL_1312:
              v784[0] = 0;
LABEL_1327:
              v32 = v769;
LABEL_1361:
              v39 = v771;
              v41 = v777;
              if (!v777)
              {
                return 1;
              }

              v783 = 0;
LABEL_1363:
              if (!shape_enum_clip_next(v41, &v783 + 1, &v783, v794, v784))
              {
                goto LABEL_1369;
              }

              v777 = v41;
              v39 = (v39 + 2 * v32 * v783 + 2 * SHIDWORD(v783));
              v44 = v794[0];
              if (v5)
              {
                v42 = (v773 + 2 * v775 * v783 + 2 * SHIDWORD(v783));
              }

              v732 = v782;
              if (v5)
              {
                v732 = v775 - v794[0];
              }

              v782 = v732;
              LODWORD(v9) = v794[0];
              goto LABEL_990;
            }
          }

        case 15:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v619 = bswap32(v31);
          v620 = v784[0];
          while (1)
          {
            v621 = v9;
            do
            {
              if (!v5)
              {
                v622 = 0xFFFF;
LABEL_1129:
                v623 = bswap32(PDAoverlayPDA_8994(bswap32(v39->u16[0]) >> 16, v622, v17, v38));
                v39->i16[0] = HIWORD(v623);
                if (!v5)
                {
                  goto LABEL_1133;
                }

                goto LABEL_1132;
              }

              if (*v42)
              {
                v622 = __rev16(*v42);
                goto LABEL_1129;
              }

              v39->i16[0] = v32;
              LOWORD(v623) = v619;
LABEL_1132:
              *v42 = v623;
LABEL_1133:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v621;
            }

            while (v621);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v620)
            {
              goto LABEL_1326;
            }
          }

        case 16:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v557 = bswap32(v31);
          v558 = v784[0];
          while (1)
          {
            v559 = v9;
            do
            {
              if (!v5)
              {
                v560 = 0xFFFF;
LABEL_1019:
                v561 = bswap32(PDAdarkenPDA_8996(bswap32(v39->u16[0]) >> 16, v560, v17, v38));
                v39->i16[0] = HIWORD(v561);
                if (!v5)
                {
                  goto LABEL_1023;
                }

                goto LABEL_1022;
              }

              if (*v42)
              {
                v560 = __rev16(*v42);
                goto LABEL_1019;
              }

              v39->i16[0] = v32;
              LOWORD(v561) = v557;
LABEL_1022:
              *v42 = v561;
LABEL_1023:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v559;
            }

            while (v559);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v558)
            {
              goto LABEL_1326;
            }
          }

        case 17:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v642 = bswap32(v31);
          v643 = v784[0];
          while (1)
          {
            v644 = v9;
            do
            {
              if (!v5)
              {
                v645 = 0xFFFF;
LABEL_1170:
                v646 = bswap32(PDAlightenPDA_8995(bswap32(v39->u16[0]) >> 16, v645, v17, v38));
                v39->i16[0] = HIWORD(v646);
                if (!v5)
                {
                  goto LABEL_1174;
                }

                goto LABEL_1173;
              }

              if (*v42)
              {
                v645 = __rev16(*v42);
                goto LABEL_1170;
              }

              v39->i16[0] = v32;
              LOWORD(v646) = v642;
LABEL_1173:
              *v42 = v646;
LABEL_1174:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v644;
            }

            while (v644);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v643)
            {
              goto LABEL_1326;
            }
          }

        case 18:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v673 = bswap32(v31);
          v674 = v784[0];
          while (1)
          {
            v675 = v9;
            do
            {
              if (!v5)
              {
                v676 = 0xFFFF;
LABEL_1241:
                v677 = bswap32(PDAcolordodgePDA_8997(bswap32(v39->u16[0]) >> 16, v676, v17, v38));
                v39->i16[0] = HIWORD(v677);
                if (!v5)
                {
                  goto LABEL_1245;
                }

                goto LABEL_1244;
              }

              if (*v42)
              {
                v676 = __rev16(*v42);
                goto LABEL_1241;
              }

              v39->i16[0] = v32;
              LOWORD(v677) = v673;
LABEL_1244:
              *v42 = v677;
LABEL_1245:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v675;
            }

            while (v675);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v674)
            {
LABEL_1326:
              v784[0] = 0;
              v6 = v737;
              v16 = v765;
              v31 = v762;
              goto LABEL_1327;
            }
          }

        case 19:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v692 = bswap32(v31);
          v693 = v784[0];
          while (1)
          {
            v694 = v9;
            do
            {
              if (!v5)
              {
                v695 = 0xFFFF;
LABEL_1280:
                v696 = bswap32(PDAcolorburnPDA_8998(bswap32(v39->u16[0]) >> 16, v695, v17, v38));
                v39->i16[0] = HIWORD(v696);
                if (!v5)
                {
                  goto LABEL_1284;
                }

                goto LABEL_1283;
              }

              if (*v42)
              {
                v695 = __rev16(*v42);
                goto LABEL_1280;
              }

              v39->i16[0] = v32;
              LOWORD(v696) = v692;
LABEL_1283:
              *v42 = v696;
LABEL_1284:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v694;
            }

            while (v694);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v693)
            {
              goto LABEL_1326;
            }
          }

        case 20:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v647 = bswap32(v31);
          v648 = v784[0];
          while (1)
          {
            v649 = v9;
            do
            {
              if (!v5)
              {
                v650 = 0xFFFF;
LABEL_1184:
                v651 = bswap32(PDAsoftlightPDA_9000(bswap32(v39->u16[0]) >> 16, v650, v17, v38));
                v39->i16[0] = HIWORD(v651);
                if (!v5)
                {
                  goto LABEL_1188;
                }

                goto LABEL_1187;
              }

              if (*v42)
              {
                v650 = __rev16(*v42);
                goto LABEL_1184;
              }

              v39->i16[0] = v32;
              LOWORD(v651) = v647;
LABEL_1187:
              *v42 = v651;
LABEL_1188:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v649;
            }

            while (v649);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v648)
            {
              goto LABEL_1326;
            }
          }

        case 21:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v656 = bswap32(v31);
          v657 = v784[0];
          while (1)
          {
            v658 = v9;
            do
            {
              if (!v5)
              {
                v659 = 0xFFFF;
LABEL_1203:
                v660 = bswap32(PDAhardlightPDA_8999(bswap32(v39->u16[0]) >> 16, v659, v17, v38));
                v39->i16[0] = HIWORD(v660);
                if (!v5)
                {
                  goto LABEL_1207;
                }

                goto LABEL_1206;
              }

              if (*v42)
              {
                v659 = __rev16(*v42);
                goto LABEL_1203;
              }

              v39->i16[0] = v32;
              LOWORD(v660) = v656;
LABEL_1206:
              *v42 = v660;
LABEL_1207:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v658;
            }

            while (v658);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v657)
            {
              goto LABEL_1326;
            }
          }

        case 22:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v687 = bswap32(v31);
          v688 = v784[0];
          while (1)
          {
            v689 = v9;
            do
            {
              if (!v5)
              {
                v690 = 0xFFFF;
LABEL_1266:
                v691 = bswap32(PDAdifferencePDA_9001(bswap32(v39->u16[0]) >> 16, v690, v17, v38));
                v39->i16[0] = HIWORD(v691);
                if (!v5)
                {
                  goto LABEL_1270;
                }

                goto LABEL_1269;
              }

              if (*v42)
              {
                v690 = __rev16(*v42);
                goto LABEL_1266;
              }

              v39->i16[0] = v32;
              LOWORD(v691) = v687;
LABEL_1269:
              *v42 = v691;
LABEL_1270:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v689;
            }

            while (v689);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v688)
            {
              goto LABEL_1326;
            }
          }

        case 23:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v697 = __rev16(v38);
          if (v17 >= WORD1(v31))
          {
            v698 = v38;
          }

          else
          {
            v698 = v17;
          }

          v699 = v784[0];
          while (1)
          {
            v700 = v9;
            do
            {
              if (v5)
              {
                if (!*v42)
                {
                  v39->i16[0] = HIWORD(v16);
                  *v42 = v697;
                  goto LABEL_1310;
                }

                v701 = __rev16(*v42);
              }

              else
              {
                v701 = 0xFFFF;
              }

              LODWORD(v702) = bswap32(v39->u16[0]) >> 16;
              if (v702 >= v701)
              {
                v702 = v701;
              }

              else
              {
                v702 = v702;
              }

              v703 = 0xFFFF * (v702 + v698) - (2 * v698) * v702;
              if (v703 <= 4294868992)
              {
                v704 = v703 + 0x8000;
              }

              else
              {
                v704 = 4294868992;
              }

              v705 = v704 + (v704 >> 16);
              if (v5)
              {
                v706 = 0xFFFF * (v38 + v701) - v38 * v701;
                if (v706 <= 4294868992)
                {
                  v707 = v706 + 0x8000;
                }

                else
                {
                  v707 = 4294868992;
                }

                v39->i16[0] = bswap32(v705);
                *v42 = bswap32((v705 >> 16) | ((v707 >> 16) + v707));
              }

              else
              {
                v39->i16[0] = bswap32(v705);
              }

LABEL_1310:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v700;
            }

            while (v700);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v699)
            {
              goto LABEL_1312;
            }
          }

        case 24:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v596 = bswap32(v31);
          v597 = v784[0];
          while (1)
          {
            v598 = v9;
            do
            {
              if (!v5)
              {
                v599 = 0xFFFF;
LABEL_1103:
                v600 = bswap32(PDAhuePDA_9002(bswap32(v39->u16[0]) >> 16, v599, v17, v38));
                v39->i16[0] = HIWORD(v600);
                if (!v5)
                {
                  goto LABEL_1107;
                }

                goto LABEL_1106;
              }

              if (*v42)
              {
                v599 = __rev16(*v42);
                goto LABEL_1103;
              }

              v39->i16[0] = v32;
              LOWORD(v600) = v596;
LABEL_1106:
              *v42 = v600;
LABEL_1107:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v598;
            }

            while (v598);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v597)
            {
              goto LABEL_1326;
            }
          }

        case 25:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v591 = bswap32(v31);
          v592 = v784[0];
          while (1)
          {
            v593 = v9;
            do
            {
              if (!v5)
              {
                v594 = 0xFFFF;
LABEL_1089:
                v595 = bswap32(PDAhuePDA_9002(bswap32(v39->u16[0]) >> 16, v594, v17, v38));
                v39->i16[0] = HIWORD(v595);
                if (!v5)
                {
                  goto LABEL_1093;
                }

                goto LABEL_1092;
              }

              if (*v42)
              {
                v594 = __rev16(*v42);
                goto LABEL_1089;
              }

              v39->i16[0] = v32;
              LOWORD(v595) = v591;
LABEL_1092:
              *v42 = v595;
LABEL_1093:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v593;
            }

            while (v593);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v592)
            {
              goto LABEL_1326;
            }
          }

        case 26:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v708 = bswap32(v31);
          v709 = v784[0];
          while (1)
          {
            v710 = v9;
            do
            {
              if (!v5)
              {
                v711 = 0xFFFF;
LABEL_1320:
                v712 = bswap32(PDAluminosityPDA_9004(v17, v38, bswap32(v39->u16[0]) >> 16, v711));
                v39->i16[0] = HIWORD(v712);
                if (!v5)
                {
                  goto LABEL_1324;
                }

                goto LABEL_1323;
              }

              if (*v42)
              {
                v711 = __rev16(*v42);
                goto LABEL_1320;
              }

              v39->i16[0] = v32;
              LOWORD(v712) = v708;
LABEL_1323:
              *v42 = v712;
LABEL_1324:
              v39 = (v39 + 2);
              v42 += 2 * v766;
              --v710;
            }

            while (v710);
            v39 = (v39 + 2 * v780);
            v42 += 2 * v782;
            if (!--v709)
            {
              goto LABEL_1326;
            }
          }

        case 27:
          if (v31 < 0x10000)
          {
            goto LABEL_1327;
          }

          v552 = bswap32(v31);
          v553 = v784[0];
          break;
        default:
          goto LABEL_1361;
      }

LABEL_1000:
      v554 = v9;
      while (1)
      {
        if (v5)
        {
          if (!*v42)
          {
            v39->i16[0] = v32;
            LOWORD(v556) = v552;
LABEL_1008:
            *v42 = v556;
            goto LABEL_1009;
          }

          v555 = __rev16(*v42);
        }

        else
        {
          v555 = 0xFFFF;
        }

        v556 = bswap32(PDAluminosityPDA_9004(bswap32(v39->u16[0]) >> 16, v555, v17, v38));
        v39->i16[0] = HIWORD(v556);
        if (v5)
        {
          goto LABEL_1008;
        }

LABEL_1009:
        v39 = (v39 + 2);
        v42 += 2 * v766;
        if (!--v554)
        {
          v39 = (v39 + 2 * v780);
          v42 += 2 * v782;
          if (!--v553)
          {
            goto LABEL_1326;
          }

          goto LABEL_1000;
        }
      }
    }

    v794[0] = *(v2 + 4);
    v784[0] = v11;
    v19 = *(v2 + 88);
    v20 = *(v2 + 12);
    v21 = *(v2 + 16);
    v22 = *(v2 + 28) >> 1;
    if (v5)
    {
      v740 = *(v2 + 32) >> 1;
      v741 = v5 + 2 * v740 * v21 + 2 * v20;
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v740 = 0;
      v741 = 0;
      v23 = 0;
    }

    v739 = *(v2 + 40) + 2 * v21 * v22 + 2 * v20;
    v35 = *(v2 + 56);
    v36 = *(v2 + 60);
    v764 = *(v2 + 76) >> 1;
    if (v15 == 256)
    {
      if (v4)
      {
        v767 = *(v2 + 80) >> 1;
        v4 = (v4 + 2 * v767 * v36 + 2 * v35);
        v781 = 0xFFFFFFFFLL;
      }

      else
      {
        v767 = 0;
        v781 = 0;
      }

      v19 += v36 * v764 + v35;
      if (v764 == v22)
      {
        v51 = (v739 - v19) >> 1;
        if (v51 >= 1)
        {
          if (v51 <= v9)
          {
            v739 += 2 * v10;
            v19 += v10;
            v741 += 2 * (v23 & v10);
            v53 = -1;
            v764 = *(v2 + 28) >> 1;
            v4 = (v4 + 2 * (v781 & v10));
            goto LABEL_49;
          }

          v52 = &v19[v22 * v12];
          if (v739 <= &v52[v9 - 1])
          {
            v739 += 2 * v22 * v12;
            v22 = -v22;
            v68 = v741 + 2 * v740 * v12;
            v740 = -v740;
            v741 = v68;
            v4 = (v4 + 2 * v767 * v12);
            v23 &= 1u;
            v764 = v22;
            v767 = -v767;
            v781 &= 1u;
            v53 = 1;
            v19 = v52;
            goto LABEL_49;
          }
        }
      }

      v23 &= 1u;
      v781 &= 1u;
      v53 = 1;
LABEL_49:
      v733 = *(v2 + 56);
      v734 = *(v2 + 60);
      if (v13)
      {
        v779 = v23;
        v772 = 0;
        v763 = 0;
        v54 = -1;
        v37 = v764;
        v743 = v767;
        goto LABEL_54;
      }

      v59 = v53 * v9;
      v776 = v740 - v23 * v9;
      v60 = -1;
      v61 = v767;
      v742 = v53;
      v743 = v767;
      v62 = v764;
      v37 = v764;
LABEL_62:
      v66 = v781;
      v744 = 0;
      v745 = v19;
      v770 = v4;
      v772 = 0;
      v763 = 0;
      v764 = v62 - v59;
      v767 = v61 - v781 * v9;
      v57 = v4;
      v58 = v741;
      v67 = v739;
      goto LABEL_66;
    }

    v37 = *(v2 + 64);
    v743 = *(v2 + 68);
    if (v4)
    {
      v767 = *(v2 + 80) >> 1;
      v781 = 1;
    }

    else
    {
      v767 = 0;
      v781 = 0;
    }

    v763 = &v19[v764 * v743];
    v23 &= 1u;
    if (v13)
    {
      v733 = *(v2 + 56);
      v734 = *(v2 + 60);
      v779 = v23;
      v53 = 1;
      v772 = *(v2 + 88);
      v54 = v772;
LABEL_54:
      v742 = v53;
      v746 = v22;
      shape_enum_clip_alloc(v1, v2, v13, v53, v22, 1, *(v2 + 104), *(v2 + 108), v9, v11);
      v41 = v55;
      v56 = v4;
      v57 = v4;
      v58 = v741;
      v776 = v740;
      if (!v55)
      {
        return 1;
      }

      goto LABEL_938;
    }

    v776 = v740 - (v23 * v9);
    if (!v19)
    {
      v733 = *(v2 + 56);
      v734 = *(v2 + 60);
      v60 = 0;
      v742 = 1;
      v59 = v9;
      v62 = *(v2 + 76) >> 1;
      v61 = v767;
      goto LABEL_62;
    }

    v63 = v36 % v743;
    v734 = v36 % v743;
    v745 = *(v2 + 88);
    v64 = &v19[v764 * v63];
    v65 = v35 % v37;
    v19 = &v64[v65];
    v60 = &v64[v37];
    v66 = v781;
    v733 = v65;
    v772 = v19;
    v744 = 0;
    if (v4)
    {
      v57 = v4 + 2 * v767 * v63 + 2 * v65;
      v742 = 1;
      v66 = 1;
      v770 = v57;
    }

    else
    {
      v770 = 0;
      v57 = 0;
      v742 = 1;
    }

    v58 = v741;
    v67 = v739;
    v59 = v9;
LABEL_66:
    v779 = v23;
    v781 = v66;
    v746 = v22;
    v774 = v22 - v59;
    v768 = v9;
    switch(v6)
    {
      case 0:
        v748 = v60;
        v69 = v774 - v9;
        v70 = &v67[-2 * v9 + 2];
        if (v742 >= 0)
        {
          v70 = v67;
          v69 = v774 + v9;
        }

        v71 = v784[0];
        v72 = v784[0] - 1;
        v73 = (v70 + 2 * ((v69 * v72) & (v69 >> 63)));
        if (v69 < 0)
        {
          v69 = -v69;
        }

        v74 = 2 * v9;
        CGBlt_fillBytes(2 * v9, v784[0], 0, v73, 2 * v69);
        if (!v23)
        {
          v6 = v737;
          goto LABEL_980;
        }

        if (v742 < 0)
        {
          v75 = v776 - v9;
          v58 = &v58[-2 * v9 + 2];
        }

        else
        {
          v75 = v776 + v9;
        }

        v41 = v744;
        v58 += 2 * ((v75 * v72) & (v75 >> 63));
        if (v75 < 0)
        {
          v75 = -v75;
        }

        v776 = v75;
        CGBlt_fillBytes(v74, v71, 0, v58, 2 * v75);
        v6 = v737;
        v19 = v745;
        goto LABEL_988;
      case 1:
        v252 = *(v8 + 1);
        if (v252 == 2)
        {
          if (v9 >= 16 && (2 * v37) <= 0x40)
          {
            v3.i32[0] = 2 * v37;
            v492 = vcnt_s8(v3);
            v492.i16[0] = vaddlv_u8(v492);
            if (v492.i32[0] <= 1u)
            {
              v748 = v60;
              v493 = v67;
              v494 = v784[0];
              CGSFillDRAM64(v493, 2 * (v9 + v774), 2 * v9, v784[0], v745, 2 * v764, 2 * v37, v743, 2 * v733, v734);
              if (v23)
              {
                if (v781)
                {
                  CGSFillDRAM64(v58, 2 * (v9 + v776), 2 * v9, v494, v4, 2 * v767, 2 * v37, v743, 2 * v733, v734);
                }

                else
                {
                  CGBlt_fillBytes(2 * v9, v494, -1, v58, 2 * (v9 + v776));
                }
              }

              goto LABEL_980;
            }
          }
        }

        else if (v252 == 1)
        {
          v748 = v60;
          if (v742 < 0)
          {
            v253 = v764 - v9;
            v530 = 2 * v9 - 2;
            v19 = (v19 - v530);
            v254 = v774 - v9;
            v67 -= v530;
          }

          else
          {
            v253 = v764 + v9;
            v254 = v774 + v9;
          }

          v531 = v784[0] - 1;
          v532 = &v19[(v253 * v531) & (v253 >> 63)];
          if (v253 >= 0)
          {
            v533 = v253;
          }

          else
          {
            v533 = -v253;
          }

          if (v254 >= 0)
          {
            LODWORD(v534) = v254;
          }

          else
          {
            v534 = -v254;
          }

          v764 = v533;
          v778 = v784[0];
          CGBlt_copyBytes(2 * v9, v784[0], v532, &v67[2 * ((v254 * v531) & (v254 >> 63))], 2 * v533, 2 * v534);
          if (v23)
          {
            v19 = v745;
            if (v781)
            {
              v535 = v767 - v9;
              v536 = 2 * v9 - 2;
              v537 = &v57[-v536];
              v538 = v776 - v9;
              v539 = &v58[-v536];
              if (v742 >= 0)
              {
                v537 = v57;
                v539 = v58;
                v535 = v767 + v9;
                v538 = v776 + v9;
              }

              v57 = &v537[2 * ((v535 * v531) & (v535 >> 63))];
              if (v535 >= 0)
              {
                v540 = v535;
              }

              else
              {
                v540 = -v535;
              }

              v58 = &v539[2 * ((v538 * v531) & (v538 >> 63))];
              if (v538 >= 0)
              {
                v541 = v538;
              }

              else
              {
                v541 = -v538;
              }

              v767 = v540;
              v776 = v541;
              CGBlt_copyBytes(2 * v9, v778, v57, v58, 2 * v540, 2 * v541);
            }

            else
            {
              v542 = v776 - v9;
              v543 = &v58[-2 * v9 + 2];
              if (v742 >= 0)
              {
                v543 = v58;
                v542 = v776 + v9;
              }

              v544 = (v542 * v531) & (v542 >> 63);
              v58 = (v543 + 2 * v544);
              if (v542 < 0)
              {
                v542 = -v542;
              }

              v776 = v542;
              CGBlt_fillBytes(2 * v9, v778, -1, (v543 + 2 * v544), 2 * v542);
            }

            v6 = v737;
LABEL_987:
            v41 = v744;
LABEL_988:
            v60 = v748;
            goto LABEL_745;
          }

          v6 = v737;
LABEL_980:
          v19 = v745;
          goto LABEL_987;
        }

        if (v23)
        {
          v495 = v23;
          if (v66)
          {
            v496 = v66;
            v497 = v784[0];
            v498 = 2 * v23;
            v56 = v770;
            v160 = v772;
            do
            {
              v499 = v9;
              do
              {
                *v67 = *v19;
                *v58 = *v57;
                v500 = &v19[v742];
                if (v500 >= v60)
                {
                  v501 = -v37;
                }

                else
                {
                  v501 = 0;
                }

                v57 += 2 * v496 + 2 * v501;
                v19 = &v500[v501];
                v58 += v498;
                v67 += 2 * v742;
                --v499;
              }

              while (v499);
              if (v763)
              {
                v502 = &v160[v764];
                if (v502 >= v763)
                {
                  v503 = -(v767 * v743);
                }

                else
                {
                  v503 = 0;
                }

                v56 = (v56 + 2 * v767 + 2 * v503);
                if (v502 >= v763)
                {
                  v504 = -(v764 * v743);
                }

                else
                {
                  v504 = 0;
                }

                v160 = &v502[v504];
                v60 += 2 * v504 + 2 * v764;
                v57 = v56;
                v19 = v160;
              }

              else
              {
                v19 += v764;
                v57 += 2 * v767;
              }

              v67 += 2 * v774;
              v58 += 2 * v776;
              --v497;
            }

            while (v497);
LABEL_897:
            v772 = v160;
LABEL_936:
            v784[0] = 0;
            v41 = v744;
            v19 = v745;
            if (!v744)
            {
              return 1;
            }

            goto LABEL_937;
          }

          v512 = v784[0];
          v56 = v770;
          v444 = v772;
          do
          {
            v513 = v9;
            do
            {
              *v67 = *v19;
              *v58 = -1;
              v514 = &v19[v742];
              if (v514 >= v60)
              {
                v515 = -v37;
              }

              else
              {
                v515 = 0;
              }

              v57 += 2 * v515;
              v19 = &v514[v515];
              v58 += 2 * v495;
              v67 += 2 * v742;
              --v513;
            }

            while (v513);
            if (v763)
            {
              v516 = &v444[v764];
              if (v516 >= v763)
              {
                v517 = -(v767 * v743);
              }

              else
              {
                v517 = 0;
              }

              v56 = (v56 + 2 * v767 + 2 * v517);
              if (v516 >= v763)
              {
                v518 = -(v764 * v743);
              }

              else
              {
                v518 = 0;
              }

              v444 = &v516[v518];
              v60 += 2 * v518 + 2 * v764;
              v57 = v56;
              v19 = v444;
            }

            else
            {
              v19 += v764;
              v57 += 2 * v767;
            }

            v67 += 2 * v774;
            v58 += 2 * v776;
            --v512;
          }

          while (v512);
        }

        else
        {
          v505 = v784[0];
          v56 = v770;
          v444 = v772;
          do
          {
            v506 = v9;
            do
            {
              *v67 = *v19;
              v507 = &v19[v742];
              if (v507 >= v60)
              {
                v508 = -v37;
              }

              else
              {
                v508 = 0;
              }

              v57 += 2 * v66 + 2 * v508;
              v19 = &v507[v508];
              v67 += 2 * v742;
              --v506;
            }

            while (v506);
            if (v763)
            {
              v509 = &v444[v764];
              if (v509 >= v763)
              {
                v510 = -(v767 * v743);
              }

              else
              {
                v510 = 0;
              }

              v56 = (v56 + 2 * v767 + 2 * v510);
              if (v509 >= v763)
              {
                v511 = -(v764 * v743);
              }

              else
              {
                v511 = 0;
              }

              v444 = &v509[v511];
              v60 += 2 * v511 + 2 * v764;
              v57 = v56;
              v19 = v444;
            }

            else
            {
              v19 += v764;
              v57 += 2 * v767;
            }

            v67 += 2 * v774;
            v58 += 2 * v776;
            --v505;
          }

          while (v505);
        }

LABEL_935:
        v772 = v444;
        goto LABEL_936;
      case 2:
        v198 = 2 * v742;
        if (v23)
        {
          v199 = v60;
          v200 = v784[0];
          do
          {
            v201 = v9;
            do
            {
              v202 = bswap32(*v57) >> 16;
              if (v202)
              {
                if (v202 == 0xFFFF)
                {
                  *v67 = *v19;
                  LOWORD(v203) = *v57;
                }

                else
                {
                  v204 = bswap32(*v67);
                  v205 = bswap32(*v58);
                  *v67 = bswap32((bswap32(*v19) >> 16) + ((HIWORD(v204) * (v202 ^ 0xFFFF) + ((HIWORD(v204) * (v202 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
                  v203 = bswap32(v202 + ((HIWORD(v205) * (v202 ^ 0xFFFF) + ((HIWORD(v205) * (v202 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
                }

                *v58 = v203;
              }

              v206 = &v19[v742];
              if (v206 >= v199)
              {
                v207 = -v37;
              }

              else
              {
                v207 = 0;
              }

              v57 += 2 * v66 + 2 * v207;
              v19 = &v206[v207];
              v58 += 2 * v23;
              v67 += v198;
              --v201;
            }

            while (v201);
            if (v763)
            {
              v208 = &v772[v764];
              if (v208 >= v763)
              {
                v209 = -(v767 * v743);
              }

              else
              {
                v209 = 0;
              }

              v57 = (v770 + 2 * v767 + 2 * v209);
              if (v208 >= v763)
              {
                v210 = -(v764 * v743);
              }

              else
              {
                v210 = 0;
              }

              v19 = &v208[v210];
              v199 += 2 * v210 + 2 * v764;
              v770 += 2 * v767 + 2 * v209;
              v772 = v19;
            }

            else
            {
              v19 += v764;
              v57 += 2 * v767;
            }

            v67 += 2 * v774;
            v58 += 2 * v776;
            --v200;
          }

          while (v200);
LABEL_556:
          v784[0] = 0;
          v41 = v744;
          v19 = v745;
          v60 = v199;
          goto LABEL_745;
        }

        v452 = v66;
        v453 = v784[0];
        v56 = v770;
        v160 = v772;
        do
        {
          v454 = v9;
          do
          {
            v455 = bswap32(*v57) >> 16;
            if (v455)
            {
              if (v455 == 0xFFFF)
              {
                LOWORD(v456) = *v19;
              }

              else
              {
                v457 = bswap32(*v67) >> 16;
                v456 = bswap32((bswap32(*v19) >> 16) + ((v457 * (v455 ^ 0xFFFF) + ((v457 * (v455 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
              }

              *v67 = v456;
            }

            v458 = &v19[v742];
            if (v458 >= v60)
            {
              v459 = -v37;
            }

            else
            {
              v459 = 0;
            }

            v57 += 2 * v452 + 2 * v459;
            v19 = &v458[v459];
            v67 += v198;
            --v454;
          }

          while (v454);
          if (v763)
          {
            v460 = &v160[v764];
            if (v460 >= v763)
            {
              v461 = -(v767 * v743);
            }

            else
            {
              v461 = 0;
            }

            v56 = (v56 + 2 * v767 + 2 * v461);
            if (v460 >= v763)
            {
              v462 = -(v764 * v743);
            }

            else
            {
              v462 = 0;
            }

            v160 = &v460[v462];
            v60 += 2 * v462 + 2 * v764;
            v57 = v56;
            v19 = v160;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          --v453;
        }

        while (v453);
        goto LABEL_897;
      case 3:
        v225 = 2 * v23;
        v226 = 2 * v742;
        if (v66)
        {
          v121 = v60;
          v227 = v66;
          v228 = v784[0];
          v56 = v770;
          v229 = v772;
          do
          {
            v230 = v9;
            do
            {
              v231 = bswap32(*v58) >> 16;
              if (v231 == 0xFFFF)
              {
                *v67 = *v19;
                LOWORD(v231) = *v57;
              }

              else if (v231)
              {
                v232 = bswap32(*v19) >> 16;
                v233 = bswap32(*v57) >> 16;
                v234 = v231 ^ 0xFFFF;
                *v67 = bswap32(v232 - ((v232 * v234 + ((v232 * v234) >> 16) + 1) >> 16)) >> 16;
                v231 = bswap32(v233 - ((v233 * v234 + ((v233 * v234) >> 16) + 1) >> 16)) >> 16;
              }

              else
              {
                *v67 = 0;
              }

              *v58 = v231;
              v235 = &v19[v742];
              if (v235 >= v121)
              {
                v236 = -v37;
              }

              else
              {
                v236 = 0;
              }

              v57 += 2 * v227 + 2 * v236;
              v19 = &v235[v236];
              v58 += v225;
              v67 += v226;
              --v230;
            }

            while (v230);
            if (v763)
            {
              v237 = &v229[v764];
              if (v237 >= v763)
              {
                v238 = -(v767 * v743);
              }

              else
              {
                v238 = 0;
              }

              v56 = (v56 + 2 * v767 + 2 * v238);
              if (v237 >= v763)
              {
                v239 = -(v764 * v743);
              }

              else
              {
                v239 = 0;
              }

              v229 = &v237[v239];
              v121 += 2 * v239 + 2 * v764;
              v57 = v56;
              v19 = v229;
            }

            else
            {
              v19 += v764;
              v57 += 2 * v767;
            }

            v67 += 2 * v774;
            v58 += 2 * v776;
            --v228;
          }

          while (v228);
          v772 = v229;
          goto LABEL_403;
        }

        v463 = v784[0];
        v56 = v770;
        v444 = v772;
        do
        {
          v464 = v9;
          do
          {
            v465 = bswap32(*v58) >> 16;
            if (v465)
            {
              if (v465 == 0xFFFF)
              {
                LOWORD(v465) = *v19;
              }

              else
              {
                v466 = bswap32(*v19) >> 16;
                v465 = bswap32(v466 - ((v466 * (v465 ^ 0xFFFF) + ((v466 * (v465 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
              }
            }

            *v67 = v465;
            v467 = &v19[v742];
            if (v467 >= v60)
            {
              v468 = -v37;
            }

            else
            {
              v468 = 0;
            }

            v57 += 2 * v468;
            v19 = &v467[v468];
            v58 += v225;
            v67 += v226;
            --v464;
          }

          while (v464);
          if (v763)
          {
            v469 = &v444[v764];
            if (v469 >= v763)
            {
              v470 = -(v767 * v743);
            }

            else
            {
              v470 = 0;
            }

            v56 = (v56 + 2 * v767 + 2 * v470);
            if (v469 >= v763)
            {
              v471 = -(v764 * v743);
            }

            else
            {
              v471 = 0;
            }

            v444 = &v469[v471];
            v60 += 2 * v471 + 2 * v764;
            v57 = v56;
            v19 = v444;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          --v463;
        }

        while (v463);
        goto LABEL_935;
      case 4:
        v134 = v784[0];
        v135 = 2 * v23;
        v56 = v770;
        do
        {
          v136 = v9;
          do
          {
            v137 = bswap32(*v58) >> 16;
            if (v137)
            {
              if (v137 != 0xFFFF)
              {
                if (v66)
                {
                  v139 = bswap32(*v57) >> 16;
                }

                else
                {
                  v139 = 0xFFFF;
                }

                v140 = bswap32(*v19) >> 16;
                *v67 = bswap32(v140 - ((v140 * v137 + ((v140 * v137) >> 16) + 1) >> 16)) >> 16;
                v138 = bswap32(v139 - ((v139 * v137 + ((v139 * v137) >> 16) + 1) >> 16)) >> 16;
              }

              else
              {
                LOWORD(v138) = 0;
                *v67 = 0;
              }
            }

            else
            {
              if (v66)
              {
                v138 = bswap32(*v57) >> 16;
              }

              else
              {
                v138 = 0xFFFF;
              }

              LOWORD(v138) = __rev16(v138);
            }

            *v58 = v138;
            v141 = &v19[v742];
            if (v141 >= v60)
            {
              v142 = -v37;
            }

            else
            {
              v142 = 0;
            }

            v57 += 2 * v66 + 2 * v142;
            v19 = &v141[v142];
            v58 += v135;
            v67 += 2 * v742;
            --v136;
          }

          while (v136);
          if (v763)
          {
            v143 = &v772[v764];
            if (v143 >= v763)
            {
              v144 = -(v767 * v743);
            }

            else
            {
              v144 = 0;
            }

            v56 = (v56 + 2 * v767 + 2 * v144);
            if (v143 >= v763)
            {
              v145 = -(v764 * v743);
            }

            else
            {
              v145 = 0;
            }

            v19 = &v143[v145];
            v60 += 2 * v145 + 2 * v764;
            v57 = v56;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          --v134;
        }

        while (v134);
        goto LABEL_936;
      case 5:
        v283 = v66;
        v284 = v784[0];
        v285 = 2 * v23;
        v56 = v770;
        v160 = v772;
        do
        {
          v286 = v9;
          do
          {
            v287 = bswap32(*v58);
            v288 = bswap32(*v57) >> 16;
            v289 = bswap32(*v67);
            v290 = (bswap32(*v19) >> 16) * HIWORD(v287);
            *v67 = bswap32(v290 + HIWORD(v289) * (v288 ^ 0xFFFF) + ((v290 + HIWORD(v289) * (v288 ^ 0xFFFF)) >> 16) + 1);
            *v58 = bswap32(((v288 ^ 0xFFFF) + HIWORD(v287)) * v288 + ((((v288 ^ 0xFFFF) + HIWORD(v287)) * v288) >> 16) + 1);
            v291 = &v19[v742];
            if (v291 >= v60)
            {
              v292 = -v37;
            }

            else
            {
              v292 = 0;
            }

            v57 += 2 * v283 + 2 * v292;
            v19 = &v291[v292];
            v58 += v285;
            v67 += 2 * v742;
            --v286;
          }

          while (v286);
          if (v763)
          {
            v293 = &v160[v764];
            if (v293 >= v763)
            {
              v294 = -(v767 * v743);
            }

            else
            {
              v294 = 0;
            }

            v56 = (v56 + 2 * v767 + 2 * v294);
            if (v293 >= v763)
            {
              v295 = -(v764 * v743);
            }

            else
            {
              v295 = 0;
            }

            v160 = &v293[v295];
            v60 += 2 * v295 + 2 * v764;
            v57 = v56;
            v19 = v160;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          --v284;
        }

        while (v284);
        goto LABEL_897;
      case 6:
        v199 = v60;
        v324 = v784[0];
        do
        {
          v325 = v9;
          do
          {
            v326 = bswap32(*v58);
            if (HIWORD(v326) != 0xFFFF)
            {
              if (~HIWORD(v326) == 0xFFFF)
              {
                *v67 = *v19;
                if (v66)
                {
                  v327 = bswap32(*v57) >> 16;
                }

                else
                {
                  v327 = 0xFFFF;
                }
              }

              else
              {
                if (v66)
                {
                  v328 = bswap32(*v57) >> 16;
                }

                else
                {
                  v328 = 0xFFFF;
                }

                v329 = HIWORD(v326);
                v330 = ~HIWORD(v326);
                v331 = (bswap32(*v19) >> 16) * v330;
                *v67 = bswap32((bswap32(*v67) >> 16) + ((v331 + HIWORD(v331) + 1) >> 16)) >> 16;
                v327 = v329 + ((v328 * v330 + ((v328 * v330) >> 16) + 1) >> 16);
              }

              *v58 = bswap32(v327) >> 16;
            }

            v332 = &v19[v742];
            if (v332 >= v199)
            {
              v333 = -v37;
            }

            else
            {
              v333 = 0;
            }

            v57 += 2 * v66 + 2 * v333;
            v19 = &v332[v333];
            v58 += 2 * v23;
            v67 += 2 * v742;
            --v325;
          }

          while (v325);
          if (v763)
          {
            v334 = &v772[v764];
            if (v334 >= v763)
            {
              v335 = -(v767 * v743);
            }

            else
            {
              v335 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v335);
            if (v334 >= v763)
            {
              v336 = -(v764 * v743);
            }

            else
            {
              v336 = 0;
            }

            v19 = &v334[v336];
            v199 += 2 * v336 + 2 * v764;
            v770 += 2 * v767 + 2 * v335;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          --v324;
        }

        while (v324);
        goto LABEL_556;
      case 7:
        if (v23)
        {
          v121 = v60;
          v240 = v784[0];
          v241 = 2 * v23;
          v56 = v770;
          do
          {
            v242 = v9;
            do
            {
              v243 = bswap32(*v57) >> 16;
              if (v243 != 0xFFFF)
              {
                if (v243)
                {
                  v244 = bswap32(*v67) >> 16;
                  v245 = bswap32(*v58) >> 16;
                  v246 = v243 ^ 0xFFFF;
                  *v67 = bswap32(v244 - ((v244 * v246 + ((v244 * v246) >> 16) + 1) >> 16)) >> 16;
                  v243 = bswap32(v245 - ((v245 * v246 + ((v245 * v246) >> 16) + 1) >> 16)) >> 16;
                }

                else
                {
                  *v67 = 0;
                }

                *v58 = v243;
              }

              v247 = &v19[v742];
              if (v247 >= v121)
              {
                v248 = -v37;
              }

              else
              {
                v248 = 0;
              }

              v57 += 2 * v66 + 2 * v248;
              v19 = &v247[v248];
              v58 += v241;
              v67 += 2 * v742;
              --v242;
            }

            while (v242);
            if (v763)
            {
              v249 = &v772[v764];
              if (v249 >= v763)
              {
                v250 = -(v767 * v743);
              }

              else
              {
                v250 = 0;
              }

              v56 = (v56 + 2 * v767 + 2 * v250);
              if (v249 >= v763)
              {
                v251 = -(v764 * v743);
              }

              else
              {
                v251 = 0;
              }

              v19 = &v249[v251];
              v121 += 2 * v251 + 2 * v764;
              v57 = v56;
              v772 = v19;
            }

            else
            {
              v19 += v764;
              v57 += 2 * v767;
            }

            v67 += 2 * v774;
            v58 += 2 * v776;
            --v240;
          }

          while (v240);
LABEL_403:
          v784[0] = 0;
          v41 = v744;
          v19 = v745;
          v60 = v121;
          if (!v744)
          {
            return 1;
          }

          goto LABEL_937;
        }

        v472 = v66;
        v473 = v784[0];
        v56 = v770;
        v160 = v772;
LABEL_830:
        v474 = v9;
        while (1)
        {
          v475 = bswap32(*v57) >> 16;
          if (!v475)
          {
            goto LABEL_834;
          }

          if (v475 != 0xFFFF)
          {
            break;
          }

LABEL_835:
          v477 = &v19[v742];
          if (v477 >= v60)
          {
            v478 = -v37;
          }

          else
          {
            v478 = 0;
          }

          v57 += 2 * v472 + 2 * v478;
          v19 = &v477[v478];
          v67 += 2 * v742;
          if (!--v474)
          {
            if (v763)
            {
              v479 = &v160[v764];
              if (v479 >= v763)
              {
                v480 = -(v767 * v743);
              }

              else
              {
                v480 = 0;
              }

              v56 = (v56 + 2 * v767 + 2 * v480);
              if (v479 >= v763)
              {
                v481 = -(v764 * v743);
              }

              else
              {
                v481 = 0;
              }

              v160 = &v479[v481];
              v60 += 2 * v481 + 2 * v764;
              v57 = v56;
              v19 = v160;
            }

            else
            {
              v19 += v764;
              v57 += 2 * v767;
            }

            v67 += 2 * v774;
            v58 += 2 * v776;
            if (!--v473)
            {
              goto LABEL_897;
            }

            goto LABEL_830;
          }
        }

        v476 = bswap32(*v67) >> 16;
        v475 = bswap32(v476 - ((v476 * (v475 ^ 0xFFFF) + ((v476 * (v475 ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
LABEL_834:
        *v67 = v475;
        goto LABEL_835;
      case 8:
        if (v23)
        {
          v363 = v784[0];
          v364 = 2 * v23;
          v56 = v770;
          do
          {
            v365 = v9;
            do
            {
              v366 = bswap32(*v57) >> 16;
              if (v366)
              {
                if (v366 != 0xFFFF)
                {
                  v368 = bswap32(*v67) >> 16;
                  v369 = bswap32(*v58) >> 16;
                  *v67 = bswap32(v368 - ((v368 * v366 + ((v368 * v366) >> 16) + 1) >> 16)) >> 16;
                  v367 = bswap32(v369 - ((v369 * v366 + ((v369 * v366) >> 16) + 1) >> 16)) >> 16;
                }

                else
                {
                  LOWORD(v367) = 0;
                  *v67 = 0;
                }

                *v58 = v367;
              }

              v370 = &v19[v742];
              if (v370 >= v60)
              {
                v371 = -v37;
              }

              else
              {
                v371 = 0;
              }

              v57 += 2 * v66 + 2 * v371;
              v19 = &v370[v371];
              v58 += v364;
              v67 += 2 * v742;
              --v365;
            }

            while (v365);
            if (v763)
            {
              v372 = &v772[v764];
              if (v372 >= v763)
              {
                v373 = -(v767 * v743);
              }

              else
              {
                v373 = 0;
              }

              v56 = (v56 + 2 * v767 + 2 * v373);
              if (v372 >= v763)
              {
                v374 = -(v764 * v743);
              }

              else
              {
                v374 = 0;
              }

              v19 = &v372[v374];
              v60 += 2 * v374 + 2 * v764;
              v57 = v56;
              v772 = v19;
            }

            else
            {
              v19 += v764;
              v57 += 2 * v767;
            }

            v67 += 2 * v774;
            v58 += 2 * v776;
            --v363;
          }

          while (v363);
          goto LABEL_936;
        }

        v482 = v784[0];
        v56 = v770;
LABEL_852:
        v483 = v9;
        while (1)
        {
          v484 = bswap32(*v57);
          if (HIWORD(v484) == 0xFFFF)
          {
            break;
          }

          if (~HIWORD(v484) != 0xFFFF)
          {
            v485 = bswap32(*v67) >> 16;
            v486 = bswap32(v485 - ((v485 * HIWORD(v484) + ((v485 * HIWORD(v484)) >> 16) + 1) >> 16)) >> 16;
LABEL_857:
            *v67 = v486;
          }

          v487 = &v19[v742];
          if (v487 >= v60)
          {
            v488 = -v37;
          }

          else
          {
            v488 = 0;
          }

          v57 += 2 * v66 + 2 * v488;
          v19 = &v487[v488];
          v67 += 2 * v742;
          if (!--v483)
          {
            if (v763)
            {
              v489 = &v772[v764];
              if (v489 >= v763)
              {
                v490 = -(v767 * v743);
              }

              else
              {
                v490 = 0;
              }

              v56 = (v56 + 2 * v767 + 2 * v490);
              if (v489 >= v763)
              {
                v491 = -(v764 * v743);
              }

              else
              {
                v491 = 0;
              }

              v19 = &v489[v491];
              v60 += 2 * v491 + 2 * v764;
              v57 = v56;
              v772 = v19;
            }

            else
            {
              v19 += v764;
              v57 += 2 * v767;
            }

            v67 += 2 * v774;
            v58 += 2 * v776;
            if (!--v482)
            {
              goto LABEL_936;
            }

            goto LABEL_852;
          }
        }

        v486 = ~HIWORD(v484);
        goto LABEL_857;
      case 9:
        v157 = v66;
        v158 = v784[0];
        v159 = 2 * v23;
        v56 = v770;
        v160 = v772;
        do
        {
          v161 = v9;
          do
          {
            v162 = bswap32(*v57) >> 16;
            v163 = bswap32(~*v58);
            v164 = (bswap32(*v19) >> 16) * HIWORD(v163) + (bswap32(*v67) >> 16) * v162;
            *v67 = bswap32(v164 + HIWORD(v164) + 1);
            *v58 = bswap32((v162 + HIWORD(v163)) * v162 + (((v162 + HIWORD(v163)) * v162) >> 16) + 1);
            v165 = &v19[v742];
            if (v165 >= v60)
            {
              v166 = -v37;
            }

            else
            {
              v166 = 0;
            }

            v57 += 2 * v157 + 2 * v166;
            v19 = &v165[v166];
            v58 += v159;
            v67 += 2 * v742;
            --v161;
          }

          while (v161);
          if (v763)
          {
            v167 = &v160[v764];
            if (v167 >= v763)
            {
              v168 = -(v767 * v743);
            }

            else
            {
              v168 = 0;
            }

            v56 = (v56 + 2 * v767 + 2 * v168);
            if (v167 >= v763)
            {
              v169 = -(v764 * v743);
            }

            else
            {
              v169 = 0;
            }

            v160 = &v167[v169];
            v60 += 2 * v169 + 2 * v764;
            v57 = v56;
            v19 = v160;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          --v158;
        }

        while (v158);
        goto LABEL_897;
      case 10:
        v351 = v66;
        v352 = v784[0];
        v353 = 2 * v23;
        v56 = v770;
        v160 = v772;
        do
        {
          v354 = v9;
          do
          {
            v355 = bswap32(*v57) >> 16;
            v356 = bswap32(~*v58);
            v357 = (bswap32(*v19) >> 16) * HIWORD(v356) + (bswap32(*v67) >> 16) * (v355 ^ 0xFFFF);
            *v67 = bswap32(v357 + HIWORD(v357) + 1);
            *v58 = bswap32(((v355 ^ 0xFFFF) + HIWORD(v356)) * v355 + ((((v355 ^ 0xFFFF) + HIWORD(v356)) * v355) >> 16) + 1);
            v358 = &v19[v742];
            if (v358 >= v60)
            {
              v359 = -v37;
            }

            else
            {
              v359 = 0;
            }

            v57 += 2 * v351 + 2 * v359;
            v19 = &v358[v359];
            v58 += v353;
            v67 += 2 * v742;
            --v354;
          }

          while (v354);
          if (v763)
          {
            v360 = &v160[v764];
            if (v360 >= v763)
            {
              v361 = -(v767 * v743);
            }

            else
            {
              v361 = 0;
            }

            v56 = (v56 + 2 * v767 + 2 * v361);
            if (v360 >= v763)
            {
              v362 = -(v764 * v743);
            }

            else
            {
              v362 = 0;
            }

            v160 = &v360[v362];
            v60 += 2 * v362 + 2 * v764;
            v57 = v56;
            v19 = v160;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          --v352;
        }

        while (v352);
        goto LABEL_897;
      case 11:
        v120 = 2 * v742;
        if (v23)
        {
          v121 = v60;
          v122 = v784[0];
          v123 = 2 * v23;
          v56 = v770;
          do
          {
            v124 = v9;
            do
            {
              if (v66)
              {
                v125 = bswap32(*v57) >> 16;
              }

              else
              {
                v125 = 0xFFFF;
              }

              v126 = bswap32(*v58) >> 16;
              v127 = v126 - ((bswap32(*v67) >> 16) + (bswap32(*v19) >> 16)) + v125;
              v128 = v125 + v126;
              if (v127 >= 0xFFFF)
              {
                v127 = 0xFFFF;
              }

              if (v128 >= 0xFFFF)
              {
                v128 = 0xFFFF;
              }

              *v67 = bswap32(v128 - v127) >> 16;
              *v58 = bswap32(v128) >> 16;
              v129 = &v19[v742];
              if (v129 >= v121)
              {
                v130 = -v37;
              }

              else
              {
                v130 = 0;
              }

              v57 += 2 * v66 + 2 * v130;
              v19 = &v129[v130];
              v58 += v123;
              v67 += v120;
              --v124;
            }

            while (v124);
            if (v763)
            {
              v131 = &v772[v764];
              if (v131 >= v763)
              {
                v132 = -(v767 * v743);
              }

              else
              {
                v132 = 0;
              }

              v56 = (v56 + 2 * v767 + 2 * v132);
              if (v131 >= v763)
              {
                v133 = -(v764 * v743);
              }

              else
              {
                v133 = 0;
              }

              v19 = &v131[v133];
              v121 += 2 * v133 + 2 * v764;
              v57 = v56;
              v772 = v19;
            }

            else
            {
              v19 += v764;
              v57 += 2 * v767;
            }

            v67 += 2 * v774;
            v58 += 2 * v776;
            --v122;
          }

          while (v122);
          goto LABEL_403;
        }

        v434 = v784[0];
        v56 = v770;
        do
        {
          v435 = v9;
          do
          {
            if (v66)
            {
              v436 = bswap32(*v57) >> 16;
            }

            else
            {
              v436 = 0xFFFF;
            }

            v437 = v436 - (bswap32(*v19) >> 16) + (bswap32(~*v67) >> 16);
            if (v437 >= 0xFFFF)
            {
              v437 = 0xFFFF;
            }

            *v67 = bswap32(~v437) >> 16;
            v438 = &v19[v742];
            if (v438 >= v60)
            {
              v439 = -v37;
            }

            else
            {
              v439 = 0;
            }

            v57 += 2 * v66 + 2 * v439;
            v19 = &v438[v439];
            v67 += v120;
            --v435;
          }

          while (v435);
          if (v763)
          {
            v440 = &v772[v764];
            if (v440 >= v763)
            {
              v441 = -(v767 * v743);
            }

            else
            {
              v441 = 0;
            }

            v56 = (v56 + 2 * v767 + 2 * v441);
            if (v440 >= v763)
            {
              v442 = -(v764 * v743);
            }

            else
            {
              v442 = 0;
            }

            v19 = &v440[v442];
            v60 += 2 * v442 + 2 * v764;
            v57 = v56;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          --v434;
        }

        while (v434);
        goto LABEL_936;
      case 12:
        if (!v23)
        {
          v443 = v784[0];
          v56 = v770;
          v444 = v772;
          do
          {
            v445 = v9;
            do
            {
              v446 = bswap32(*v67);
              *v67 = bswap32((v446 >> 15) & 0xFFFE | ((v446 >> 16) >> 15)) >> 16;
              v447 = &v19[v742];
              if (v447 >= v60)
              {
                v448 = -v37;
              }

              else
              {
                v448 = 0;
              }

              v57 += 2 * v66 + 2 * v448;
              v19 = &v447[v448];
              v67 += 2 * v742;
              --v445;
            }

            while (v445);
            if (v763)
            {
              v449 = &v444[v764];
              if (v449 >= v763)
              {
                v450 = -(v767 * v743);
              }

              else
              {
                v450 = 0;
              }

              v56 = (v56 + 2 * v767 + 2 * v450);
              if (v449 >= v763)
              {
                v451 = -(v764 * v743);
              }

              else
              {
                v451 = 0;
              }

              v444 = &v449[v451];
              v60 += 2 * v451 + 2 * v764;
              v57 = v56;
              v19 = v444;
            }

            else
            {
              v19 += v764;
              v57 += 2 * v767;
            }

            v67 += 2 * v774;
            v58 += 2 * v776;
            --v443;
          }

          while (v443);
          goto LABEL_935;
        }

        v121 = v60;
        v146 = v784[0];
        v147 = 2 * v23;
        v56 = v770;
        do
        {
          v148 = v9;
          do
          {
            if (v66)
            {
              v149 = bswap32(*v57) >> 16;
            }

            else
            {
              v149 = 0xFFFF;
            }

            v150 = (bswap32(*v19) >> 16) + (bswap32(*v67) >> 16);
            v151 = v149 + (bswap32(*v58) >> 16);
            if (v150 >= 0xFFFF)
            {
              v150 = 0xFFFF;
            }

            if (v151 >= 0xFFFF)
            {
              v151 = 0xFFFF;
            }

            *v67 = bswap32(v150) >> 16;
            *v58 = bswap32(v151) >> 16;
            v152 = &v19[v742];
            if (v152 >= v121)
            {
              v153 = -v37;
            }

            else
            {
              v153 = 0;
            }

            v57 += 2 * v66 + 2 * v153;
            v19 = &v152[v153];
            v58 += v147;
            v67 += 2 * v742;
            --v148;
          }

          while (v148);
          if (v763)
          {
            v154 = &v772[v764];
            if (v154 >= v763)
            {
              v155 = -(v767 * v743);
            }

            else
            {
              v155 = 0;
            }

            v56 = (v56 + 2 * v767 + 2 * v155);
            if (v154 >= v763)
            {
              v156 = -(v764 * v743);
            }

            else
            {
              v156 = 0;
            }

            v19 = &v154[v156];
            v121 += 2 * v156 + 2 * v764;
            v57 = v56;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          --v146;
        }

        while (v146);
        goto LABEL_403;
      case 13:
        v736 = v4;
        v310 = v37;
        v311 = v66;
        v312 = v784[0];
        v313 = 2 * v23;
        v738 = v310;
        v314 = -v310;
        while (1)
        {
          v757 = v312;
          v315 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_517;
              }

              v316 = __rev16(*v57);
              if (!v23)
              {
LABEL_512:
                v317 = 0xFFFF;
                goto LABEL_513;
              }
            }

            else
            {
              v316 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_512;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_516;
            }

            v317 = __rev16(*v58);
LABEL_513:
            v318 = PDAmultiplyPDA_8993(bswap32(*v67) >> 16, v317, bswap32(*v19) >> 16, v316);
            *v67 = bswap32(v318) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v315;
            if (!v779)
            {
              goto LABEL_517;
            }

            v316 = HIWORD(v318);
LABEL_516:
            *v58 = __rev16(v316);
LABEL_517:
            v319 = &v19[v742];
            if (v319 >= v60)
            {
              v320 = v314;
            }

            else
            {
              v320 = 0;
            }

            v57 += 2 * v311 + 2 * v320;
            v19 = &v319[v320];
            v58 += v313;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v321 = &v772[v764];
            v322 = -(v767 * v743);
            if (v321 < v763)
            {
              v322 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v322);
            v323 = -(v764 * v743);
            if (v321 < v763)
            {
              v323 = 0;
            }

            v19 = &v321[v323];
            v60 += 2 * v323 + 2 * v764;
            v770 += 2 * v767 + 2 * v322;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v312 = v757 - 1;
          if (v757 == 1)
          {
            goto LABEL_743;
          }
        }

      case 14:
        v104 = v784[0];
        while (1)
        {
          v105 = v9;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_147;
              }

              LODWORD(v106) = __rev16(*v57);
              if (!v23)
              {
LABEL_134:
                v107 = 0xFFFF;
                goto LABEL_135;
              }
            }

            else
            {
              LODWORD(v106) = 0xFFFF;
              if (!v23)
              {
                goto LABEL_134;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
LABEL_145:
              v114 = v58;
              goto LABEL_146;
            }

            v107 = __rev16(*v58);
LABEL_135:
            v108 = bswap32(*v67) >> 16;
            v109 = (v108 ^ 0xFFFF) * (bswap32(*v19) >> 16) - v108 + (v108 << 16);
            if (v109 <= 0xFFFE8000)
            {
              v110 = v109 + 0x8000;
            }

            else
            {
              v110 = 4294868992;
            }

            v111 = v110 + (v110 >> 16);
            if (v23)
            {
              v112 = 0xFFFF * (v107 + v106) - v107 * v106;
              if (v112 <= 4294868992)
              {
                v113 = v112 + 0x8000;
              }

              else
              {
                v113 = 4294868992;
              }

              *v67 = bswap32(v111);
              v106 = ((v111 >> 16) | (v113 + (v113 >> 16))) >> 16;
              goto LABEL_145;
            }

            v106 = v111 >> 16;
            v114 = v67;
LABEL_146:
            *v114 = bswap32(v106) >> 16;
LABEL_147:
            v67 += 2 * v742;
            v115 = &v19[v742];
            if (v115 >= v60)
            {
              v116 = -v37;
            }

            else
            {
              v116 = 0;
            }

            v57 += 2 * v66 + 2 * v116;
            v19 = &v115[v116];
            v58 += 2 * v23;
            --v105;
          }

          while (v105);
          if (v763)
          {
            v117 = &v772[v764];
            if (v117 >= v763)
            {
              v118 = -(v767 * v743);
            }

            else
            {
              v118 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v118);
            if (v117 >= v763)
            {
              v119 = -(v764 * v743);
            }

            else
            {
              v119 = 0;
            }

            v19 = &v117[v119];
            v60 += 2 * v119 + 2 * v764;
            v770 += 2 * v767 + 2 * v118;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          if (!--v104)
          {
LABEL_716:
            v784[0] = 0;
LABEL_717:
            v19 = v745;
LABEL_744:
            v41 = v744;
LABEL_745:
            v56 = v770;
            if (!v41)
            {
              return 1;
            }

LABEL_937:
            v54 = v60;
            v783 = 0;
LABEL_938:
            v770 = v56;
            if (!shape_enum_clip_next(v41, &v783 + 1, &v783, v794, v784))
            {
LABEL_1369:
              v50 = v41;
              goto LABEL_1370;
            }

            v744 = v41;
            v745 = v19;
            if (v763)
            {
              v22 = v746;
              v67 = (v739 + 2 * v746 * v783 + 2 * SHIDWORD(v783));
              v519 = (v783 + *(v8 + 60)) % v743;
              v59 = v794[0];
              v520 = (HIDWORD(v783) + *(v8 + 56)) % v37;
              v521 = &v19[v764 * v519];
              v19 = &v521[v520];
              v60 = &v521[v37];
              v23 = v779;
              if (v779)
              {
                v58 = (v741 + 2 * v740 * v783 + 2 * SHIDWORD(v783));
              }

              v522 = v776;
              if (v779)
              {
                v522 = v740 - v794[0];
              }

              v776 = v522;
              if (v781)
              {
                v66 = v781;
              }

              else
              {
                v66 = 0;
              }

              v523 = v770;
              if (v781)
              {
                v523 = v4 + 2 * v767 * v519 + 2 * v520;
              }

              v770 = v523;
              v772 = &v521[v520];
              if (v781)
              {
                v57 = v4 + 2 * v767 * v519 + 2 * v520;
              }

              LODWORD(v9) = v794[0];
              v733 = (HIDWORD(v783) + *(v8 + 56)) % v37;
              v734 = (v783 + *(v8 + 60)) % v743;
            }

            else
            {
              v524 = HIDWORD(v783) * v742;
              LODWORD(v9) = v794[0];
              v525 = v794[0] * v742;
              v22 = v746;
              v67 = (v739 + 2 * v746 * v783 + 2 * HIDWORD(v783) * v742);
              v59 = v794[0] * v742;
              v19 += v783 * v37 + HIDWORD(v783) * v742;
              v763 = 0;
              v764 = v37 - v794[0] * v742;
              v23 = v779;
              v66 = v781;
              if (v779)
              {
                v58 = (v741 + 2 * v740 * v783 + 2 * v524);
              }

              v526 = v776;
              if (v779)
              {
                v526 = v740 - v525;
              }

              v776 = v526;
              v527 = v4 + 2 * v783 * v743 + 2 * v524;
              v528 = v743 - v525;
              if (v781)
              {
                v57 = v527;
              }

              v529 = v767;
              if (v781)
              {
                v529 = v528;
              }

              v767 = v529;
              v60 = v54;
            }

            goto LABEL_66;
          }
        }

      case 15:
        v736 = v4;
        v211 = v37;
        v212 = v66;
        v213 = v784[0];
        v214 = 2 * v23;
        v738 = v211;
        v215 = -v211;
        while (1)
        {
          v753 = v213;
          v216 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_345;
              }

              v217 = __rev16(*v57);
              if (!v23)
              {
LABEL_340:
                v218 = 0xFFFF;
                goto LABEL_341;
              }
            }

            else
            {
              v217 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_340;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_344;
            }

            v218 = __rev16(*v58);
LABEL_341:
            v219 = PDAoverlayPDA_8994(bswap32(*v67) >> 16, v218, bswap32(*v19) >> 16, v217);
            *v67 = bswap32(v219) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v216;
            if (!v779)
            {
              goto LABEL_345;
            }

            v217 = HIWORD(v219);
LABEL_344:
            *v58 = __rev16(v217);
LABEL_345:
            v220 = &v19[v742];
            if (v220 >= v60)
            {
              v221 = v215;
            }

            else
            {
              v221 = 0;
            }

            v57 += 2 * v212 + 2 * v221;
            v19 = &v220[v221];
            v58 += v214;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v222 = &v772[v764];
            v223 = -(v767 * v743);
            if (v222 < v763)
            {
              v223 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v223);
            v224 = -(v764 * v743);
            if (v222 < v763)
            {
              v224 = 0;
            }

            v19 = &v222[v224];
            v60 += 2 * v224 + 2 * v764;
            v770 += 2 * v767 + 2 * v223;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v213 = v753 - 1;
          if (v753 == 1)
          {
LABEL_743:
            v784[0] = 0;
            v4 = v736;
            v6 = v737;
            v8 = v735;
            v19 = v745;
            v37 = v738;
            goto LABEL_744;
          }
        }

      case 16:
        v736 = v4;
        v90 = v37;
        v91 = v66;
        v92 = v784[0];
        v93 = 2 * v23;
        v738 = v90;
        v94 = -v90;
        while (1)
        {
          v750 = v92;
          v95 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_113;
              }

              v96 = __rev16(*v57);
              if (!v23)
              {
LABEL_108:
                v97 = 0xFFFF;
                goto LABEL_109;
              }
            }

            else
            {
              v96 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_108;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_112;
            }

            v97 = __rev16(*v58);
LABEL_109:
            v98 = PDAdarkenPDA_8996(bswap32(*v67) >> 16, v97, bswap32(*v19) >> 16, v96);
            *v67 = bswap32(v98) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v95;
            if (!v779)
            {
              goto LABEL_113;
            }

            v96 = HIWORD(v98);
LABEL_112:
            *v58 = __rev16(v96);
LABEL_113:
            v99 = &v19[v742];
            if (v99 >= v60)
            {
              v100 = v94;
            }

            else
            {
              v100 = 0;
            }

            v57 += 2 * v91 + 2 * v100;
            v19 = &v99[v100];
            v58 += v93;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v101 = &v772[v764];
            v102 = -(v767 * v743);
            if (v101 < v763)
            {
              v102 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v102);
            v103 = -(v764 * v743);
            if (v101 < v763)
            {
              v103 = 0;
            }

            v19 = &v101[v103];
            v60 += 2 * v103 + 2 * v764;
            v770 += 2 * v767 + 2 * v102;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v92 = v750 - 1;
          if (v750 == 1)
          {
            goto LABEL_743;
          }
        }

      case 17:
        v736 = v4;
        v255 = v37;
        v256 = v66;
        v257 = v784[0];
        v258 = 2 * v23;
        v738 = v255;
        v259 = -v255;
        while (1)
        {
          v754 = v257;
          v260 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_422;
              }

              v261 = __rev16(*v57);
              if (!v23)
              {
LABEL_417:
                v262 = 0xFFFF;
                goto LABEL_418;
              }
            }

            else
            {
              v261 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_417;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_421;
            }

            v262 = __rev16(*v58);
LABEL_418:
            v263 = PDAlightenPDA_8995(bswap32(*v67) >> 16, v262, bswap32(*v19) >> 16, v261);
            *v67 = bswap32(v263) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v260;
            if (!v779)
            {
              goto LABEL_422;
            }

            v261 = HIWORD(v263);
LABEL_421:
            *v58 = __rev16(v261);
LABEL_422:
            v264 = &v19[v742];
            if (v264 >= v60)
            {
              v265 = v259;
            }

            else
            {
              v265 = 0;
            }

            v57 += 2 * v256 + 2 * v265;
            v19 = &v264[v265];
            v58 += v258;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v266 = &v772[v764];
            v267 = -(v767 * v743);
            if (v266 < v763)
            {
              v267 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v267);
            v268 = -(v764 * v743);
            if (v266 < v763)
            {
              v268 = 0;
            }

            v19 = &v266[v268];
            v60 += 2 * v268 + 2 * v764;
            v770 += 2 * v767 + 2 * v267;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v257 = v754 - 1;
          if (v754 == 1)
          {
            goto LABEL_743;
          }
        }

      case 18:
        v736 = v4;
        v337 = v37;
        v338 = v66;
        v339 = v784[0];
        v340 = 2 * v23;
        v738 = v337;
        v341 = -v337;
        while (1)
        {
          v758 = v339;
          v342 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_570;
              }

              v343 = __rev16(*v57);
              if (!v23)
              {
LABEL_565:
                v344 = 0xFFFF;
                goto LABEL_566;
              }
            }

            else
            {
              v343 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_565;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_569;
            }

            v344 = __rev16(*v58);
LABEL_566:
            v345 = PDAcolordodgePDA_8997(bswap32(*v67) >> 16, v344, bswap32(*v19) >> 16, v343);
            *v67 = bswap32(v345) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v342;
            if (!v779)
            {
              goto LABEL_570;
            }

            v343 = HIWORD(v345);
LABEL_569:
            *v58 = __rev16(v343);
LABEL_570:
            v346 = &v19[v742];
            if (v346 >= v60)
            {
              v347 = v341;
            }

            else
            {
              v347 = 0;
            }

            v57 += 2 * v338 + 2 * v347;
            v19 = &v346[v347];
            v58 += v340;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v348 = &v772[v764];
            v349 = -(v767 * v743);
            if (v348 < v763)
            {
              v349 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v349);
            v350 = -(v764 * v743);
            if (v348 < v763)
            {
              v350 = 0;
            }

            v19 = &v348[v350];
            v60 += 2 * v350 + 2 * v764;
            v770 += 2 * v767 + 2 * v349;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v339 = v758 - 1;
          if (v758 == 1)
          {
            goto LABEL_743;
          }
        }

      case 19:
        v736 = v4;
        v389 = v37;
        v390 = v66;
        v391 = v784[0];
        v392 = 2 * v23;
        v738 = v389;
        v393 = -v389;
        while (1)
        {
          v760 = v391;
          v394 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_662;
              }

              v395 = __rev16(*v57);
              if (!v23)
              {
LABEL_657:
                v396 = 0xFFFF;
                goto LABEL_658;
              }
            }

            else
            {
              v395 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_657;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_661;
            }

            v396 = __rev16(*v58);
LABEL_658:
            v397 = PDAcolorburnPDA_8998(bswap32(*v67) >> 16, v396, bswap32(*v19) >> 16, v395);
            *v67 = bswap32(v397) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v394;
            if (!v779)
            {
              goto LABEL_662;
            }

            v395 = HIWORD(v397);
LABEL_661:
            *v58 = __rev16(v395);
LABEL_662:
            v398 = &v19[v742];
            if (v398 >= v60)
            {
              v399 = v393;
            }

            else
            {
              v399 = 0;
            }

            v57 += 2 * v390 + 2 * v399;
            v19 = &v398[v399];
            v58 += v392;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v400 = &v772[v764];
            v401 = -(v767 * v743);
            if (v400 < v763)
            {
              v401 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v401);
            v402 = -(v764 * v743);
            if (v400 < v763)
            {
              v402 = 0;
            }

            v19 = &v400[v402];
            v60 += 2 * v402 + 2 * v764;
            v770 += 2 * v767 + 2 * v401;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v391 = v760 - 1;
          if (v760 == 1)
          {
            goto LABEL_743;
          }
        }

      case 20:
        v736 = v4;
        v269 = v37;
        v270 = v66;
        v271 = v784[0];
        v272 = 2 * v23;
        v738 = v269;
        v273 = -v269;
        while (1)
        {
          v755 = v271;
          v274 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_448;
              }

              v275 = __rev16(*v57);
              if (!v23)
              {
LABEL_443:
                v276 = 0xFFFF;
                goto LABEL_444;
              }
            }

            else
            {
              v275 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_443;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_447;
            }

            v276 = __rev16(*v58);
LABEL_444:
            v277 = PDAsoftlightPDA_9000(bswap32(*v67) >> 16, v276, bswap32(*v19) >> 16, v275);
            *v67 = bswap32(v277) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v274;
            if (!v779)
            {
              goto LABEL_448;
            }

            v275 = HIWORD(v277);
LABEL_447:
            *v58 = __rev16(v275);
LABEL_448:
            v278 = &v19[v742];
            if (v278 >= v60)
            {
              v279 = v273;
            }

            else
            {
              v279 = 0;
            }

            v57 += 2 * v270 + 2 * v279;
            v19 = &v278[v279];
            v58 += v272;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v280 = &v772[v764];
            v281 = -(v767 * v743);
            if (v280 < v763)
            {
              v281 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v281);
            v282 = -(v764 * v743);
            if (v280 < v763)
            {
              v282 = 0;
            }

            v19 = &v280[v282];
            v60 += 2 * v282 + 2 * v764;
            v770 += 2 * v767 + 2 * v281;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v271 = v755 - 1;
          if (v755 == 1)
          {
            goto LABEL_743;
          }
        }

      case 21:
        v736 = v4;
        v296 = v37;
        v297 = v66;
        v298 = v784[0];
        v299 = 2 * v23;
        v738 = v296;
        v300 = -v296;
        while (1)
        {
          v756 = v298;
          v301 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_491;
              }

              v302 = __rev16(*v57);
              if (!v23)
              {
LABEL_486:
                v303 = 0xFFFF;
                goto LABEL_487;
              }
            }

            else
            {
              v302 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_486;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_490;
            }

            v303 = __rev16(*v58);
LABEL_487:
            v304 = PDAhardlightPDA_8999(bswap32(*v67) >> 16, v303, bswap32(*v19) >> 16, v302);
            *v67 = bswap32(v304) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v301;
            if (!v779)
            {
              goto LABEL_491;
            }

            v302 = HIWORD(v304);
LABEL_490:
            *v58 = __rev16(v302);
LABEL_491:
            v305 = &v19[v742];
            if (v305 >= v60)
            {
              v306 = v300;
            }

            else
            {
              v306 = 0;
            }

            v57 += 2 * v297 + 2 * v306;
            v19 = &v305[v306];
            v58 += v299;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v307 = &v772[v764];
            v308 = -(v767 * v743);
            if (v307 < v763)
            {
              v308 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v308);
            v309 = -(v764 * v743);
            if (v307 < v763)
            {
              v309 = 0;
            }

            v19 = &v307[v309];
            v60 += 2 * v309 + 2 * v764;
            v770 += 2 * v767 + 2 * v308;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v298 = v756 - 1;
          if (v756 == 1)
          {
            goto LABEL_743;
          }
        }

      case 22:
        v736 = v4;
        v375 = v37;
        v376 = v66;
        v377 = v784[0];
        v378 = 2 * v23;
        v738 = v375;
        v379 = -v375;
        while (1)
        {
          v759 = v377;
          v380 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_636;
              }

              v381 = __rev16(*v57);
              if (!v23)
              {
LABEL_631:
                v382 = 0xFFFF;
                goto LABEL_632;
              }
            }

            else
            {
              v381 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_631;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_635;
            }

            v382 = __rev16(*v58);
LABEL_632:
            v383 = PDAdifferencePDA_9001(bswap32(*v67) >> 16, v382, bswap32(*v19) >> 16, v381);
            *v67 = bswap32(v383) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v380;
            if (!v779)
            {
              goto LABEL_636;
            }

            v381 = HIWORD(v383);
LABEL_635:
            *v58 = __rev16(v381);
LABEL_636:
            v384 = &v19[v742];
            if (v384 >= v60)
            {
              v385 = v379;
            }

            else
            {
              v385 = 0;
            }

            v57 += 2 * v376 + 2 * v385;
            v19 = &v384[v385];
            v58 += v378;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v386 = &v772[v764];
            v387 = -(v767 * v743);
            if (v386 < v763)
            {
              v387 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v387);
            v388 = -(v764 * v743);
            if (v386 < v763)
            {
              v388 = 0;
            }

            v19 = &v386[v388];
            v60 += 2 * v388 + 2 * v764;
            v770 += 2 * v767 + 2 * v387;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v377 = v759 - 1;
          if (v759 == 1)
          {
            goto LABEL_743;
          }
        }

      case 23:
        v403 = v784[0];
        while (1)
        {
          v404 = v9;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_702;
              }

              LODWORD(v405) = __rev16(*v57);
              if (!v23)
              {
LABEL_683:
                v406 = 0xFFFF;
                goto LABEL_684;
              }
            }

            else
            {
              LODWORD(v405) = 0xFFFF;
              if (!v23)
              {
                goto LABEL_683;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
LABEL_700:
              v414 = v58;
              goto LABEL_701;
            }

            v406 = __rev16(*v58);
LABEL_684:
            LODWORD(v407) = bswap32(*v67) >> 16;
            LODWORD(v408) = bswap32(*v19) >> 16;
            if (v408 >= v405)
            {
              v408 = v405;
            }

            else
            {
              v408 = v408;
            }

            if (v407 >= v406)
            {
              v407 = v406;
            }

            else
            {
              v407 = v407;
            }

            v409 = 0xFFFF * (v408 + v407) - 2 * v407 * v408;
            if (v409 <= 4294868992)
            {
              v410 = v409 + 0x8000;
            }

            else
            {
              v410 = 4294868992;
            }

            v411 = v410 + (v410 >> 16);
            if (v23)
            {
              v412 = 0xFFFF * (v406 + v405) - v406 * v405;
              if (v412 <= 4294868992)
              {
                v413 = v412 + 0x8000;
              }

              else
              {
                v413 = 4294868992;
              }

              *v67 = bswap32(v411);
              v405 = ((v411 >> 16) | (v413 + (v413 >> 16))) >> 16;
              goto LABEL_700;
            }

            v405 = v411 >> 16;
            v414 = v67;
LABEL_701:
            *v414 = bswap32(v405) >> 16;
LABEL_702:
            v67 += 2 * v742;
            v415 = &v19[v742];
            if (v415 >= v60)
            {
              v416 = -v37;
            }

            else
            {
              v416 = 0;
            }

            v57 += 2 * v66 + 2 * v416;
            v19 = &v415[v416];
            v58 += 2 * v23;
            --v404;
          }

          while (v404);
          if (v763)
          {
            v417 = &v772[v764];
            if (v417 >= v763)
            {
              v418 = -(v767 * v743);
            }

            else
            {
              v418 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v418);
            if (v417 >= v763)
            {
              v419 = -(v764 * v743);
            }

            else
            {
              v419 = 0;
            }

            v19 = &v417[v419];
            v60 += 2 * v419 + 2 * v764;
            v770 += 2 * v767 + 2 * v418;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          v67 += 2 * v774;
          v58 += 2 * v776;
          if (!--v403)
          {
            goto LABEL_716;
          }
        }

      case 24:
        v736 = v4;
        v184 = v37;
        v185 = v66;
        v186 = v784[0];
        v187 = 2 * v23;
        v738 = v184;
        v188 = -v184;
        while (1)
        {
          v752 = v186;
          v189 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_296;
              }

              v190 = __rev16(*v57);
              if (!v23)
              {
LABEL_291:
                v191 = 0xFFFF;
                goto LABEL_292;
              }
            }

            else
            {
              v190 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_291;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_295;
            }

            v191 = __rev16(*v58);
LABEL_292:
            v192 = PDAhuePDA_9002(bswap32(*v67) >> 16, v191, bswap32(*v19) >> 16, v190);
            *v67 = bswap32(v192) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v189;
            if (!v779)
            {
              goto LABEL_296;
            }

            v190 = HIWORD(v192);
LABEL_295:
            *v58 = __rev16(v190);
LABEL_296:
            v193 = &v19[v742];
            if (v193 >= v60)
            {
              v194 = v188;
            }

            else
            {
              v194 = 0;
            }

            v57 += 2 * v185 + 2 * v194;
            v19 = &v193[v194];
            v58 += v187;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v195 = &v772[v764];
            v196 = -(v767 * v743);
            if (v195 < v763)
            {
              v196 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v196);
            v197 = -(v764 * v743);
            if (v195 < v763)
            {
              v197 = 0;
            }

            v19 = &v195[v197];
            v60 += 2 * v197 + 2 * v764;
            v770 += 2 * v767 + 2 * v196;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v186 = v752 - 1;
          if (v752 == 1)
          {
            goto LABEL_743;
          }
        }

      case 25:
        v736 = v4;
        v170 = v37;
        v171 = v66;
        v172 = v784[0];
        v173 = 2 * v23;
        v738 = v170;
        v174 = -v170;
        while (1)
        {
          v751 = v172;
          v175 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_270;
              }

              v176 = __rev16(*v57);
              if (!v23)
              {
LABEL_265:
                v177 = 0xFFFF;
                goto LABEL_266;
              }
            }

            else
            {
              v176 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_265;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_269;
            }

            v177 = __rev16(*v58);
LABEL_266:
            v178 = PDAhuePDA_9002(bswap32(*v67) >> 16, v177, bswap32(*v19) >> 16, v176);
            *v67 = bswap32(v178) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v175;
            if (!v779)
            {
              goto LABEL_270;
            }

            v176 = HIWORD(v178);
LABEL_269:
            *v58 = __rev16(v176);
LABEL_270:
            v179 = &v19[v742];
            if (v179 >= v60)
            {
              v180 = v174;
            }

            else
            {
              v180 = 0;
            }

            v57 += 2 * v171 + 2 * v180;
            v19 = &v179[v180];
            v58 += v173;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v181 = &v772[v764];
            v182 = -(v767 * v743);
            if (v181 < v763)
            {
              v182 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v182);
            v183 = -(v764 * v743);
            if (v181 < v763)
            {
              v183 = 0;
            }

            v19 = &v181[v183];
            v60 += 2 * v183 + 2 * v764;
            v770 += 2 * v767 + 2 * v182;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v172 = v751 - 1;
          if (v751 == 1)
          {
            goto LABEL_743;
          }
        }

      case 26:
        v736 = v4;
        v420 = v37;
        v421 = v66;
        v422 = v784[0];
        v423 = 2 * v23;
        v738 = v420;
        v424 = -v420;
        while (1)
        {
          v761 = v422;
          v425 = v60;
          do
          {
            if (v66)
            {
              if (!*v57)
              {
                goto LABEL_731;
              }

              v426 = __rev16(*v57);
              if (!v23)
              {
LABEL_726:
                v427 = 0xFFFF;
                goto LABEL_727;
              }
            }

            else
            {
              v426 = 0xFFFF;
              if (!v23)
              {
                goto LABEL_726;
              }
            }

            if (!*v58)
            {
              *v67 = *v19;
              goto LABEL_730;
            }

            v427 = __rev16(*v58);
LABEL_727:
            v428 = PDAluminosityPDA_9004(bswap32(*v19) >> 16, v426, bswap32(*v67) >> 16, v427);
            *v67 = bswap32(v428) >> 16;
            LODWORD(v23) = v779;
            LODWORD(v66) = v781;
            v60 = v425;
            if (!v779)
            {
              goto LABEL_731;
            }

            v426 = HIWORD(v428);
LABEL_730:
            *v58 = __rev16(v426);
LABEL_731:
            v429 = &v19[v742];
            if (v429 >= v60)
            {
              v430 = v424;
            }

            else
            {
              v430 = 0;
            }

            v57 += 2 * v421 + 2 * v430;
            v19 = &v429[v430];
            v58 += v423;
            v67 += 2 * v742;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
          if (v763)
          {
            v431 = &v772[v764];
            v432 = -(v767 * v743);
            if (v431 < v763)
            {
              v432 = 0;
            }

            v57 = (v770 + 2 * v767 + 2 * v432);
            v433 = -(v764 * v743);
            if (v431 < v763)
            {
              v433 = 0;
            }

            v19 = &v431[v433];
            v60 += 2 * v433 + 2 * v764;
            v770 += 2 * v767 + 2 * v432;
            v772 = v19;
          }

          else
          {
            v19 += v764;
            v57 += 2 * v767;
          }

          LODWORD(v9) = v768;
          v67 += 2 * v774;
          v58 += 2 * v776;
          v422 = v761 - 1;
          if (v761 == 1)
          {
            goto LABEL_743;
          }
        }

      case 27:
        v736 = v4;
        v76 = v37;
        v77 = v66;
        v78 = v784[0];
        v79 = 2 * v23;
        v738 = v76;
        v80 = -v76;
        break;
      default:
        goto LABEL_717;
    }

LABEL_75:
    v749 = v78;
    v81 = v60;
    while (1)
    {
      if (v66)
      {
        if (!*v57)
        {
          goto LABEL_87;
        }

        v82 = __rev16(*v57);
        if (v23)
        {
LABEL_79:
          if (!*v58)
          {
            *v67 = *v19;
            goto LABEL_86;
          }

          v83 = __rev16(*v58);
          goto LABEL_83;
        }
      }

      else
      {
        v82 = 0xFFFF;
        if (v23)
        {
          goto LABEL_79;
        }
      }

      v83 = 0xFFFF;
LABEL_83:
      v84 = PDAluminosityPDA_9004(bswap32(*v67) >> 16, v83, bswap32(*v19) >> 16, v82);
      *v67 = bswap32(v84) >> 16;
      LODWORD(v23) = v779;
      LODWORD(v66) = v781;
      v60 = v81;
      if (v779)
      {
        v82 = HIWORD(v84);
LABEL_86:
        *v58 = __rev16(v82);
      }

LABEL_87:
      v85 = &v19[v742];
      if (v85 >= v60)
      {
        v86 = v80;
      }

      else
      {
        v86 = 0;
      }

      v57 += 2 * v77 + 2 * v86;
      v19 = &v85[v86];
      v58 += v79;
      v67 += 2 * v742;
      LODWORD(v9) = v9 - 1;
      if (!v9)
      {
        if (v763)
        {
          v87 = &v772[v764];
          v88 = -(v767 * v743);
          if (v87 < v763)
          {
            v88 = 0;
          }

          v57 = (v770 + 2 * v767 + 2 * v88);
          v89 = -(v764 * v743);
          if (v87 < v763)
          {
            v89 = 0;
          }

          v19 = &v87[v89];
          v60 += 2 * v89 + 2 * v764;
          v770 += 2 * v767 + 2 * v88;
          v772 = v19;
        }

        else
        {
          v19 += v764;
          v57 += 2 * v767;
        }

        LODWORD(v9) = v768;
        v67 += 2 * v774;
        v58 += 2 * v776;
        v78 = v749 - 1;
        if (v749 == 1)
        {
          goto LABEL_743;
        }

        goto LABEL_75;
      }
    }
  }

  v14 = *(v2 + 128);
  if ((v14 | 8) == 8)
  {
    if ((*v2 & 0xFF00) == 0x400)
    {
      W16_mark_constmask(v2, v6);
    }

    else
    {
      W16_mark_pixelmask(v2, v6);
    }

    return 1;
  }

  v24 = *(v2 + 112);
  v25 = *(v2 + 116);
  v26 = (v24 + 15) & 0xFFFFFFF0;
  v27 = v26 * v25;
  if (v27 <= 4096)
  {
    v29 = v794;
    v30 = v2;
  }

  else
  {
    v28 = malloc_type_malloc(v27, 0x97CEE3C3uLL);
    if (!v28)
    {
      return 1;
    }

    v29 = v28;
    v30 = v735;
    v13 = *(v735 + 136);
    v14 = *(v735 + 128);
  }

  CGSConvertBitsToMask(v13, *(v30 + 124), v29, v26, v24, v25, v14);
  v45 = *(v30 + 112);
  v790 = *(v30 + 96);
  v791 = v45;
  v46 = *(v30 + 144);
  v792 = *(v30 + 128);
  v793 = v46;
  v47 = *(v30 + 48);
  v786 = *(v30 + 32);
  v787 = v47;
  v48 = *(v30 + 80);
  v788 = *(v30 + 64);
  v789 = v48;
  v49 = *(v30 + 16);
  *v784 = *v30;
  v785 = v49;
  HIDWORD(v791) = (v24 + 15) & 0xFFFFFFF0;
  *(&v792 + 1) = v29;
  if (BYTE1(v784[0]) << 8 == 1024)
  {
    W16_mark_constmask(v784, v6);
  }

  else
  {
    W16_mark_pixelmask(v784, v6);
  }

  if (v29 != v794)
  {
    v50 = v29;
LABEL_1370:
    free(v50);
  }

  return 1;
}

uint64_t W16_image_mark_rgb32(uint64_t a1, int *a2, int a3, int a4, int a5, int a6)
{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v114 = *(a2 + 5) - a5;
  }

  else
  {
    v114 = 0;
  }

  v9 = *(a2 + 4);
  v10 = a2[1];
  v113 = *a2;
  v112 = *(a2 + 3) - a5;
  v12 = *(a2 + 17);
  v11 = *(a2 + 18);
  v13 = *(a2 + 9);
  v110 = *(a2 + 11);
  v14 = *(a2 + 7) + v110 * a4;
  v15 = *(a1 + 32);
  v16 = v15 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v17 = *(a1 + 176);
  result = 2 * (v8 != 0);
  if (v17)
  {
    v109 = *(a2 + 13);
    v107 = ~(-1 << v13);
    v108 = *(a2 + 15);
    v106 = v13 - 4;
    v19 = (v16 - 4);
    v20 = v9 ^ 0xFFFF;
    v105 = a5;
    v104 = v11 + 16 * a3 + 8;
    v21 = *(a2 + 9);
    do
    {
      if (((v108 - v14) | (v14 - v109)) < 0)
      {
        v24 = 0;
        v23 = 0;
      }

      else
      {
        v22 = ((v14 & v107) >> v106) & 0xF;
        if ((v22 - 7) >= 9)
        {
          v23 = -v12;
        }

        else
        {
          v23 = v12;
        }

        v24 = weights_21890[v22] & 0xF;
      }

      v25 = v15 + (v14 >> v13) * v12;
      if (v113 == 1)
      {
        if (a5 >= 1)
        {
          v26 = v104;
          v27 = v105;
          do
          {
            v29 = *(v26 - 1);
            v28 = *v26;
            v30 = &v25[v29];
            if (v19 >= &v25[v29])
            {
              v31 = &v25[v29];
            }

            else
            {
              v31 = v19;
            }

            if (v31 < v15)
            {
              v31 = v15;
            }

            v32 = *v31;
            if ((v28 & 0xF) != 0)
            {
              v33 = &v30[v28 >> 4];
              if (v19 < v33)
              {
                v33 = v19;
              }

              if (v33 < v15)
              {
                v33 = v15;
              }

              v34 = *v33;
              if (v24)
              {
                v35 = &v30[v23];
                if (v19 >= v35)
                {
                  v36 = v35;
                }

                else
                {
                  v36 = v19;
                }

                if (v36 < v15)
                {
                  v36 = v15;
                }

                v37 = *v36;
                v38 = (v35 + (v28 >> 4));
                if (v19 < v38)
                {
                  v38 = v19;
                }

                if (v38 < v15)
                {
                  v38 = v15;
                }

                v39 = BLEND8_21892[v24];
                v32 = v32 - ((v39 & v32) >> v24) + ((v39 & v37) >> v24);
                v34 = v34 - ((v39 & v34) >> v24) + ((v39 & *v38) >> v24);
              }

              v32 = v32 - ((BLEND8_21892[*v26 & 0xF] & v32) >> (*v26 & 0xF)) + ((BLEND8_21892[*v26 & 0xF] & v34) >> (*v26 & 0xF));
            }

            else if (v24)
            {
              v40 = &v30[v23];
              if (v19 < &v30[v23])
              {
                v40 = v19;
              }

              if (v40 < v15)
              {
                v40 = v15;
              }

              v32 = v32 - ((BLEND8_21892[v24] & v32) >> v24) + ((BLEND8_21892[v24] & *v40) >> v24);
            }

            v41 = __ROL4__(v32, v10);
            v42 = v41 | v6;
            v43 = ((v41 >> 23) & 0x1FE) + BYTE1(v41) + (((v41 >> 8) & 0xFF00) >> 6) + (((v41 >> 8) & 0xFF00) >> 8);
            v44 = (32 * v43) | (v43 >> 6);
            v45 = v44 + ((v42 << 24) | (v42 << 16));
            v46 = (v44 - ((v44 * v20 + ((v44 * v20) >> 16) + 1) >> 16)) | (((v42 | (v42 << 8)) - (((v42 | (v42 << 8)) * v20 + (((v42 | (v42 << 8)) * v20) >> 16) + 1) >> 16)) << 16);
            if (v9 == 0xFFFF)
            {
              v46 = v45;
            }

            v47 = bswap32(v46);
            *v7 = HIWORD(v47);
            if (v8)
            {
              *v8 = v47;
            }

            v26 += 2;
            ++v7;
            v8 = (v8 + result);
            --v27;
          }

          while (v27);
        }
      }

      else if (a5 >= 1)
      {
        v49 = v104;
        v48 = v105;
        do
        {
          v51 = *(v49 - 1);
          v50 = *v49;
          v52 = &v25[v51];
          if (v19 >= &v25[v51])
          {
            v53 = &v25[v51];
          }

          else
          {
            v53 = v19;
          }

          if (v53 < v15)
          {
            v53 = v15;
          }

          v54 = *v53;
          if ((v50 & 0xF) != 0)
          {
            v55 = &v52[v50 >> 4];
            if (v19 < v55)
            {
              v55 = v19;
            }

            if (v55 < v15)
            {
              v55 = v15;
            }

            v56 = *v55;
            if (v24)
            {
              v57 = &v52[v23];
              if (v19 >= &v52[v23])
              {
                v58 = &v52[v23];
              }

              else
              {
                v58 = v19;
              }

              if (v58 < v15)
              {
                v58 = v15;
              }

              v59 = *v58;
              v60 = &v57[v50 >> 4];
              if (v19 < v60)
              {
                v60 = v19;
              }

              if (v60 < v15)
              {
                v60 = v15;
              }

              v61 = BLEND8_21892[v24];
              v54 = v54 - ((v61 & v54) >> v24) + ((v61 & v59) >> v24);
              v56 = v56 - ((v61 & v56) >> v24) + ((v61 & *v60) >> v24);
            }

            v54 = v54 - ((BLEND8_21892[*v49 & 0xF] & v54) >> (*v49 & 0xF)) + ((BLEND8_21892[*v49 & 0xF] & v56) >> (*v49 & 0xF));
          }

          else if (v24)
          {
            v62 = &v52[v23];
            if (v19 < &v52[v23])
            {
              v62 = v19;
            }

            if (v62 < v15)
            {
              v62 = v15;
            }

            v54 = v54 - ((BLEND8_21892[v24] & v54) >> v24) + ((BLEND8_21892[v24] & *v62) >> v24);
          }

          v63 = __ROL4__(v54, v10);
          v64 = v63 | v6;
          v65 = ((v63 >> 23) & 0x1FE) + BYTE1(v63) + (((v63 >> 8) & 0xFF00) >> 6) + (((v63 >> 8) & 0xFF00) >> 8);
          v66 = (32 * v65) | (v65 >> 6);
          v67 = v66 + ((v64 << 24) | (v64 << 16));
          v68 = (v66 - ((v66 * v20 + ((v66 * v20) >> 16) + 1) >> 16)) | (((v64 | (v64 << 8)) - (((v64 | (v64 << 8)) * v20 + (((v64 | (v64 << 8)) * v20) >> 16) + 1) >> 16)) << 16);
          if (v9 == 0xFFFF)
          {
            v68 = v67;
          }

          v69 = HIWORD(v68);
          if (v8)
          {
            if (v69)
            {
              if (v69 == 0xFFFF)
              {
                *v7 = bswap32(v68) >> 16;
                *v8 = -1;
              }

              else
              {
                v71 = bswap32(*v8) >> 16;
                v72 = v69 ^ 0xFFFF;
                v73 = v72 * (bswap32(*v7) >> 16);
                *v7 = bswap32(v68 + ((v73 + HIWORD(v73) + 1) >> 16)) >> 16;
                *v8 = bswap32(((v72 * v71 + ((v72 * v71) >> 16) + 1) >> 16) + HIWORD(v68)) >> 16;
              }
            }
          }

          else if (v69)
          {
            if (v69 != 0xFFFF)
            {
              v70 = bswap32(*v7) >> 16;
              v68 += ((v69 ^ 0xFFFF) * v70 + (((v69 ^ 0xFFFF) * v70) >> 16) + 1) >> 16;
            }

            *v7 = bswap32(v68) >> 16;
          }

          v49 += 2;
          ++v7;
          v8 = (v8 + result);
          --v48;
        }

        while (v48);
      }

      v7 += v112;
      v14 += v110;
      v8 += v114;
      --a6;
      LOBYTE(v13) = v21;
    }

    while (a6);
  }

  else
  {
    v74 = (v11 + 16 * a3);
    v75 = v16 - 4;
    v76 = v9 ^ 0xFFFF;
    do
    {
      v77 = v15 + (v14 >> v13) * v12;
      if (v113 == 1)
      {
        if (a5 >= 1)
        {
          v78 = v74;
          v79 = a5;
          do
          {
            v80 = *v78;
            v78 += 2;
            v81 = &v77[v80];
            if (v75 < &v77[v80])
            {
              v81 = v75;
            }

            if (v81 < v15)
            {
              v81 = v15;
            }

            v82 = __ROL4__(*v81, v10);
            v83 = v82 | v6;
            v84 = ((v82 >> 23) & 0x1FE) + BYTE1(v82) + (((v82 >> 8) & 0xFF00) >> 6) + (((v82 >> 8) & 0xFF00) >> 8);
            v85 = (32 * v84) | (v84 >> 6);
            v86 = v85 + ((v83 << 24) | (v83 << 16));
            v87 = (v85 - ((v85 * v76 + ((v85 * v76) >> 16) + 1) >> 16)) | (((v83 | (v83 << 8)) - (((v83 | (v83 << 8)) * v76 + (((v83 | (v83 << 8)) * v76) >> 16) + 1) >> 16)) << 16);
            if (v9 == 0xFFFF)
            {
              v87 = v86;
            }

            v88 = bswap32(v87);
            *v7 = HIWORD(v88);
            if (v8)
            {
              *v8 = v88;
            }

            ++v7;
            v8 = (v8 + result);
            --v79;
          }

          while (v79);
        }
      }

      else
      {
        v89 = v74;
        v90 = a5;
        if (a5 >= 1)
        {
          do
          {
            v91 = *v89;
            v89 += 2;
            v92 = &v77[v91];
            if (v75 < &v77[v91])
            {
              v92 = v75;
            }

            if (v92 < v15)
            {
              v92 = v15;
            }

            v93 = __ROL4__(*v92, v10);
            v94 = v93 | v6;
            v95 = ((v93 >> 23) & 0x1FE) + BYTE1(v93) + (((v93 >> 8) & 0xFF00) >> 6) + (((v93 >> 8) & 0xFF00) >> 8);
            v96 = (32 * v95) | (v95 >> 6);
            v97 = v96 + ((v94 << 24) | (v94 << 16));
            v98 = (v96 - ((v96 * v76 + ((v96 * v76) >> 16) + 1) >> 16)) | (((v94 | (v94 << 8)) - (((v94 | (v94 << 8)) * v76 + (((v94 | (v94 << 8)) * v76) >> 16) + 1) >> 16)) << 16);
            if (v9 == 0xFFFF)
            {
              v98 = v97;
            }

            v99 = HIWORD(v98);
            if (v8)
            {
              if (v99)
              {
                if (v99 == 0xFFFF)
                {
                  *v7 = bswap32(v98) >> 16;
                  *v8 = -1;
                }

                else
                {
                  v101 = bswap32(*v8) >> 16;
                  v102 = v99 ^ 0xFFFF;
                  v103 = v102 * (bswap32(*v7) >> 16);
                  *v7 = bswap32(v98 + ((v103 + HIWORD(v103) + 1) >> 16)) >> 16;
                  *v8 = bswap32(((v102 * v101 + ((v102 * v101) >> 16) + 1) >> 16) + HIWORD(v98)) >> 16;
                }
              }
            }

            else if (v99)
            {
              if (v99 != 0xFFFF)
              {
                v100 = bswap32(*v7) >> 16;
                v98 += ((v99 ^ 0xFFFF) * v100 + (((v99 ^ 0xFFFF) * v100) >> 16) + 1) >> 16;
              }

              *v7 = bswap32(v98) >> 16;
            }

            ++v7;
            v8 = (v8 + result);
            --v90;
          }

          while (v90);
        }
      }

      v7 += v112;
      v14 += v110;
      v8 += v114;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t W16_image_mark_RGB32(uint64_t a1, int *a2, int a3, int a4, unsigned int a5, int a6)
{
  if (*(a1 + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  v7 = *(a2 + 2);
  v8 = *(a2 + 4);
  if (v8)
  {
    v122 = *(a2 + 5) - a5;
  }

  else
  {
    v122 = 0;
  }

  v9 = *(a2 + 4);
  v10 = a2[1];
  v121 = *a2;
  v120 = *(a2 + 3) - a5;
  v12 = *(a2 + 17);
  v11 = *(a2 + 18);
  v13 = *(a2 + 9);
  v119 = *(a2 + 11);
  v14 = *(a2 + 7) + v119 * a4;
  v15 = *(a1 + 32);
  v16 = v15 + (*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3);
  v17 = *(a1 + 176);
  result = 2 * (v8 != 0);
  if (v17)
  {
    v117 = *(a2 + 13);
    v115 = ~(-1 << v13);
    v116 = *(a2 + 15);
    v114 = v13 - 4;
    v19 = (v16 - 4);
    v20 = v9 ^ 0xFFFF;
    v113 = v11 + 16 * a3 + 8;
    v118 = *(a2 + 9);
    while (1)
    {
      if (((v116 - v14) | (v14 - v117)) < 0)
      {
        v23 = 0;
        v22 = 0;
      }

      else
      {
        v21 = ((v14 & v115) >> v114) & 0xF;
        v22 = (v21 - 7) >= 9 ? -v12 : v12;
        v23 = weights_21890[v21] & 0xF;
      }

      v24 = v15 + (v14 >> v13) * v12;
      if (v121 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v25 = v113;
        v26 = a5;
        while (1)
        {
          v28 = *(v25 - 1);
          v27 = *v25;
          v29 = &v24[v28];
          if (v19 >= &v24[v28])
          {
            v30 = &v24[v28];
          }

          else
          {
            v30 = v19;
          }

          if (v30 < v15)
          {
            v30 = v15;
          }

          v31 = bswap32(*v30);
          v32 = v27 & 0xF;
          if ((v27 & 0xF) != 0)
          {
            break;
          }

          if (v23)
          {
            v43 = &v29[v22];
            if (v19 < &v29[v22])
            {
              v43 = v19;
            }

            if (v43 < v15)
            {
              v43 = v15;
            }

            v44 = BLEND8_21892[v23];
            v41 = v31 - ((v44 & v31) >> v23);
            v42 = (bswap32(*v43) & v44) >> v23;
            goto LABEL_46;
          }

LABEL_47:
          v45 = __ROL4__(v31, v10);
          v46 = v45 | v6;
          v47 = ((v45 >> 23) & 0x1FE) + BYTE1(v45) + (((v45 >> 8) & 0xFF00) >> 6) + (((v45 >> 8) & 0xFF00) >> 8);
          v48 = (32 * v47) | (v47 >> 6);
          v49 = v48 + ((v46 << 24) | (v46 << 16));
          v50 = (v48 - ((v48 * v20 + ((v48 * v20) >> 16) + 1) >> 16)) | (((v46 | (v46 << 8)) - (((v46 | (v46 << 8)) * v20 + (((v46 | (v46 << 8)) * v20) >> 16) + 1) >> 16)) << 16);
          if (v9 == 0xFFFF)
          {
            v50 = v49;
          }

          v51 = bswap32(v50);
          *v7 = HIWORD(v51);
          if (v8)
          {
            *v8 = v51;
          }

          v25 += 2;
          ++v7;
          v8 = (v8 + result);
          if (!--v26)
          {
            goto LABEL_96;
          }
        }

        v33 = &v29[v27 >> 4];
        if (v19 < v33)
        {
          v33 = v19;
        }

        if (v33 < v15)
        {
          v33 = v15;
        }

        v34 = bswap32(*v33);
        if (v23)
        {
          v35 = &v29[v22];
          if (v19 >= v35)
          {
            v36 = v35;
          }

          else
          {
            v36 = v19;
          }

          if (v36 < v15)
          {
            v36 = v15;
          }

          v37 = bswap32(*v36);
          v38 = (v35 + (v27 >> 4));
          if (v19 < v38)
          {
            v38 = v19;
          }

          if (v38 < v15)
          {
            v38 = v15;
          }

          v39 = BLEND8_21892[v23];
          v31 = v31 - ((v39 & v31) >> v23) + ((v39 & v37) >> v23);
          v34 = v34 - ((v39 & v34) >> v23) + ((bswap32(*v38) & v39) >> v23);
        }

        v40 = BLEND8_21892[*v25 & 0xF];
        v41 = v31 - ((v40 & v31) >> v32);
        v42 = (v40 & v34) >> v32;
LABEL_46:
        v31 = v41 + v42;
        goto LABEL_47;
      }

LABEL_96:
      v7 += v120;
      LOBYTE(v13) = v118;
      v14 += v119;
      v8 += v122;
      if (!--a6)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_96;
    }

    v53 = v113;
    v52 = a5;
    while (1)
    {
      v55 = *(v53 - 1);
      v54 = *v53;
      v56 = &v24[v55];
      if (v19 >= &v24[v55])
      {
        v57 = &v24[v55];
      }

      else
      {
        v57 = v19;
      }

      if (v57 < v15)
      {
        v57 = v15;
      }

      v58 = bswap32(*v57);
      v59 = v54 & 0xF;
      if ((v54 & 0xF) != 0)
      {
        break;
      }

      if (v23)
      {
        v70 = &v56[v22];
        if (v19 < &v56[v22])
        {
          v70 = v19;
        }

        if (v70 < v15)
        {
          v70 = v15;
        }

        v71 = BLEND8_21892[v23];
        v68 = v58 - ((v71 & v58) >> v23);
        v69 = (bswap32(*v70) & v71) >> v23;
        goto LABEL_83;
      }

LABEL_84:
      v72 = __ROL4__(v58, v10);
      v73 = v72 | v6;
      v74 = ((v72 >> 23) & 0x1FE) + BYTE1(v72) + (((v72 >> 8) & 0xFF00) >> 6) + (((v72 >> 8) & 0xFF00) >> 8);
      v75 = (32 * v74) | (v74 >> 6);
      v76 = v75 + ((v73 << 24) | (v73 << 16));
      v77 = (v75 - ((v75 * v20 + ((v75 * v20) >> 16) + 1) >> 16)) | (((v73 | (v73 << 8)) - (((v73 | (v73 << 8)) * v20 + (((v73 | (v73 << 8)) * v20) >> 16) + 1) >> 16)) << 16);
      if (v9 == 0xFFFF)
      {
        v77 = v76;
      }

      v78 = HIWORD(v77);
      if (v8)
      {
        if (v78)
        {
          if (v78 == 0xFFFF)
          {
            *v7 = bswap32(v77) >> 16;
            *v8 = -1;
          }

          else
          {
            v80 = bswap32(*v8) >> 16;
            v81 = v78 ^ 0xFFFF;
            v82 = v81 * (bswap32(*v7) >> 16);
            *v7 = bswap32(v77 + ((v82 + HIWORD(v82) + 1) >> 16)) >> 16;
            *v8 = bswap32(((v81 * v80 + ((v81 * v80) >> 16) + 1) >> 16) + HIWORD(v77)) >> 16;
          }
        }
      }

      else if (v78)
      {
        if (v78 != 0xFFFF)
        {
          v79 = bswap32(*v7) >> 16;
          v77 += ((v78 ^ 0xFFFF) * v79 + (((v78 ^ 0xFFFF) * v79) >> 16) + 1) >> 16;
        }

        *v7 = bswap32(v77) >> 16;
      }

      v53 += 2;
      ++v7;
      v8 = (v8 + result);
      if (!--v52)
      {
        goto LABEL_96;
      }
    }

    v60 = &v56[v54 >> 4];
    if (v19 < v60)
    {
      v60 = v19;
    }

    if (v60 < v15)
    {
      v60 = v15;
    }

    v61 = bswap32(*v60);
    if (v23)
    {
      v62 = &v56[v22];
      if (v19 >= &v56[v22])
      {
        v63 = &v56[v22];
      }

      else
      {
        v63 = v19;
      }

      if (v63 < v15)
      {
        v63 = v15;
      }

      v64 = bswap32(*v63);
      v65 = &v62[v54 >> 4];
      if (v19 < v65)
      {
        v65 = v19;
      }

      if (v65 < v15)
      {
        v65 = v15;
      }

      v66 = BLEND8_21892[v23];
      v58 = v58 - ((v66 & v58) >> v23) + ((v66 & v64) >> v23);
      v61 = v61 - ((v66 & v61) >> v23) + ((bswap32(*v65) & v66) >> v23);
    }

    v67 = BLEND8_21892[*v53 & 0xF];
    v68 = v58 - ((v67 & v58) >> v59);
    v69 = (v67 & v61) >> v59;
LABEL_83:
    v58 = v68 + v69;
    goto LABEL_84;
  }

  v83 = (v11 + 16 * a3);
  v84 = (v16 - 4);
  v85 = v9 ^ 0xFFFF;
  do
  {
    v86 = v15 + (v14 >> v13) * v12;
    if (v121 == 1)
    {
      if (a5 >= 1)
      {
        v87 = v83;
        v88 = a5;
        do
        {
          v89 = *v87;
          v87 += 2;
          v90 = &v86[v89];
          if (v84 < &v86[v89])
          {
            v90 = v84;
          }

          if (v90 < v15)
          {
            v90 = v15;
          }

          v91 = __ROL4__(bswap32(*v90), v10);
          v92 = v91 | v6;
          v93 = ((v91 >> 23) & 0x1FE) + BYTE1(v91) + (((v91 >> 8) & 0xFF00) >> 6) + (((v91 >> 8) & 0xFF00) >> 8);
          v94 = (32 * v93) | (v93 >> 6);
          v95 = v94 + ((v92 << 24) | (v92 << 16));
          v96 = (v94 - ((v94 * v85 + ((v94 * v85) >> 16) + 1) >> 16)) | (((v92 | (v92 << 8)) - (((v92 | (v92 << 8)) * v85 + (((v92 | (v92 << 8)) * v85) >> 16) + 1) >> 16)) << 16);
          if (v9 == 0xFFFF)
          {
            v96 = v95;
          }

          v97 = bswap32(v96);
          *v7 = HIWORD(v97);
          if (v8)
          {
            *v8 = v97;
          }

          ++v7;
          v8 = (v8 + result);
          --v88;
        }

        while (v88);
      }
    }

    else
    {
      v98 = v83;
      v99 = a5;
      if (a5 >= 1)
      {
        do
        {
          v100 = *v98;
          v98 += 2;
          v101 = &v86[v100];
          if (v84 < &v86[v100])
          {
            v101 = v84;
          }

          if (v101 < v15)
          {
            v101 = v15;
          }

          v102 = __ROL4__(bswap32(*v101), v10);
          v103 = v102 | v6;
          v104 = ((v102 >> 23) & 0x1FE) + BYTE1(v102) + (((v102 >> 8) & 0xFF00) >> 6) + (((v102 >> 8) & 0xFF00) >> 8);
          v105 = (32 * v104) | (v104 >> 6);
          v106 = v105 + ((v103 << 24) | (v103 << 16));
          v107 = (v105 - ((v105 * v85 + ((v105 * v85) >> 16) + 1) >> 16)) | (((v103 | (v103 << 8)) - (((v103 | (v103 << 8)) * v85 + (((v103 | (v103 << 8)) * v85) >> 16) + 1) >> 16)) << 16);
          if (v9 == 0xFFFF)
          {
            v107 = v106;
          }

          v108 = HIWORD(v107);
          if (v8)
          {
            if (v108)
            {
              if (v108 == 0xFFFF)
              {
                *v7 = bswap32(v107) >> 16;
                *v8 = -1;
              }

              else
              {
                v110 = bswap32(*v8) >> 16;
                v111 = v108 ^ 0xFFFF;
                v112 = v111 * (bswap32(*v7) >> 16);
                *v7 = bswap32(v107 + ((v112 + HIWORD(v112) + 1) >> 16)) >> 16;
                *v8 = bswap32(((v111 * v110 + ((v111 * v110) >> 16) + 1) >> 16) + HIWORD(v107)) >> 16;
              }
            }
          }

          else if (v108)
          {
            if (v108 != 0xFFFF)
            {
              v109 = bswap32(*v7) >> 16;
              v107 += ((v108 ^ 0xFFFF) * v109 + (((v108 ^ 0xFFFF) * v109) >> 16) + 1) >> 16;
            }

            *v7 = bswap32(v107) >> 16;
          }

          ++v7;
          v8 = (v8 + result);
          --v99;
        }

        while (v99);
      }
    }

    v7 += v120;
    v14 += v119;
    v8 += v122;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t W16_image_mark_RGB24(uint64_t a1, int *a2, int a3, int a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v101 = *(a2 + 5) - a5;
  }

  else
  {
    v101 = 0;
  }

  v8 = *(a2 + 4);
  v100 = *a2;
  v99 = *(a2 + 3) - a5;
  v10 = *(a2 + 17);
  v9 = *(a2 + 18);
  v11 = *(a2 + 9);
  v98 = *(a2 + 11);
  v12 = *(a2 + 7) + v98 * a4;
  v13 = *(a1 + 32);
  v14 = &v13[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v15 = *(a1 + 176);
  result = 2 * (v7 != 0);
  if (v15)
  {
    v96 = *(a2 + 15);
    v97 = *(a2 + 13);
    v17 = v14 - 3;
    v18 = v8 ^ 0xFFFF;
    v19 = (-2 - (0xFFFF * v18 + ((0xFFFF * v18) >> 16))) & 0xFFFF0000;
    v95 = v9 + 16 * a3 + 8;
    do
    {
      if (((v96 - v12) | (v12 - v97)) < 0)
      {
        v22 = 0;
        v21 = 0;
      }

      else
      {
        v20 = ((v12 & ~(-1 << v11)) >> (v11 - 4)) & 0xF;
        if (v20 - 7 >= 9)
        {
          v21 = -v10;
        }

        else
        {
          v21 = v10;
        }

        v22 = weights_21890[v20] & 0xF;
      }

      v23 = &v13[(v12 >> v11) * v10];
      if (v100 == 1)
      {
        if (a5 >= 1)
        {
          v24 = v95;
          v25 = a5;
          do
          {
            v27 = *(v24 - 1);
            v26 = *v24;
            v28 = &v23[v27];
            if (v17 >= &v23[v27])
            {
              v29 = &v23[v27];
            }

            else
            {
              v29 = v17;
            }

            if (v29 < v13)
            {
              v29 = v13;
            }

            v30 = (*v29 << 24) | (v29[1] << 16) | (v29[2] << 8);
            if ((v26 & 0xF) != 0)
            {
              v31 = &v28[v26 >> 4];
              if (v17 < v31)
              {
                v31 = v17;
              }

              if (v31 < v13)
              {
                v31 = v13;
              }

              v32 = (*v31 << 24) | (v31[1] << 16) | (v31[2] << 8);
              if (v22)
              {
                if (v17 >= &v28[v21])
                {
                  v33 = &v28[v21];
                }

                else
                {
                  v33 = v17;
                }

                if (v33 < v13)
                {
                  v33 = v13;
                }

                v34 = (*v33 << 24) | (v33[1] << 16) | (v33[2] << 8);
                v35 = &v28[v21 + (v26 >> 4)];
                if (v17 < v35)
                {
                  v35 = v17;
                }

                if (v35 < v13)
                {
                  v35 = v13;
                }

                v36 = BLEND8_21892[v22];
                v30 = v30 - ((v36 & v30) >> v22) + ((v36 & v34) >> v22);
                v32 = v32 - ((v36 & v32) >> v22) + ((((*v35 << 24) | (v35[1] << 16) | (v35[2] << 8)) & v36) >> v22);
              }

              v30 = v30 - ((BLEND8_21892[*v24 & 0xF] & v30) >> (*v24 & 0xF)) + ((BLEND8_21892[*v24 & 0xF] & v32) >> (*v24 & 0xF));
            }

            else if (v22)
            {
              v37 = &v28[v21];
              if (v17 < &v28[v21])
              {
                v37 = v17;
              }

              if (v37 < v13)
              {
                v37 = v13;
              }

              v30 = v30 - ((BLEND8_21892[v22] & v30) >> v22) + ((((*v37 << 24) | (v37[1] << 16) | (v37[2] << 8)) & BLEND8_21892[v22]) >> v22);
            }

            v38 = ((v30 >> 23) & 0x1FE) + BYTE1(v30) + (((v30 >> 8) & 0xFF00) >> 6) + (((v30 >> 8) & 0xFF00) >> 8);
            v39 = 32 * v38;
            v38 >>= 6;
            v40 = v38 | v39 | 0xFFFF0000;
            v41 = ((v39 | v38) - (((v39 | v38) * v18 + (((v39 | v38) * v18) >> 16) + 1) >> 16)) | v19;
            if (v8 == 0xFFFF)
            {
              v41 = v40;
            }

            v42 = bswap32(v41);
            *v6 = HIWORD(v42);
            if (v7)
            {
              *v7 = v42;
            }

            v24 += 2;
            ++v6;
            v7 = (v7 + result);
            --v25;
          }

          while (v25);
        }
      }

      else if (a5 >= 1)
      {
        v44 = v95;
        v43 = a5;
        do
        {
          v46 = *(v44 - 1);
          v45 = *v44;
          v47 = &v23[v46];
          if (v17 >= &v23[v46])
          {
            v48 = &v23[v46];
          }

          else
          {
            v48 = v17;
          }

          if (v48 < v13)
          {
            v48 = v13;
          }

          v49 = (*v48 << 24) | (v48[1] << 16) | (v48[2] << 8);
          if ((v45 & 0xF) != 0)
          {
            v50 = &v47[v45 >> 4];
            if (v17 < v50)
            {
              v50 = v17;
            }

            if (v50 < v13)
            {
              v50 = v13;
            }

            v51 = (*v50 << 24) | (v50[1] << 16) | (v50[2] << 8);
            if (v22)
            {
              if (v17 >= &v47[v21])
              {
                v52 = &v47[v21];
              }

              else
              {
                v52 = v17;
              }

              if (v52 < v13)
              {
                v52 = v13;
              }

              v53 = (*v52 << 24) | (v52[1] << 16) | (v52[2] << 8);
              v54 = &v47[v21 + (v45 >> 4)];
              if (v17 < v54)
              {
                v54 = v17;
              }

              if (v54 < v13)
              {
                v54 = v13;
              }

              v55 = BLEND8_21892[v22];
              v49 = v49 - ((v55 & v49) >> v22) + ((v55 & v53) >> v22);
              v51 = v51 - ((v55 & v51) >> v22) + ((((*v54 << 24) | (v54[1] << 16) | (v54[2] << 8)) & v55) >> v22);
            }

            v49 = v49 - ((BLEND8_21892[*v44 & 0xF] & v49) >> (*v44 & 0xF)) + ((BLEND8_21892[*v44 & 0xF] & v51) >> (*v44 & 0xF));
          }

          else if (v22)
          {
            v56 = &v47[v21];
            if (v17 < &v47[v21])
            {
              v56 = v17;
            }

            if (v56 < v13)
            {
              v56 = v13;
            }

            v49 = v49 - ((BLEND8_21892[v22] & v49) >> v22) + ((((*v56 << 24) | (v56[1] << 16) | (v56[2] << 8)) & BLEND8_21892[v22]) >> v22);
          }

          v57 = ((v49 >> 23) & 0x1FE) + BYTE1(v49) + (((v49 >> 8) & 0xFF00) >> 6) + (((v49 >> 8) & 0xFF00) >> 8);
          v58 = 32 * v57;
          v57 >>= 6;
          v59 = v57 | v58 | 0xFFFF0000;
          v60 = ((v58 | v57) - (((v58 | v57) * v18 + (((v58 | v57) * v18) >> 16) + 1) >> 16)) | v19;
          if (v8 == 0xFFFF)
          {
            v61 = v59;
          }

          else
          {
            v61 = v60;
          }

          v62 = HIWORD(v61);
          if (v7)
          {
            if (v62)
            {
              if (v62 == 0xFFFF)
              {
                *v6 = bswap32(v61) >> 16;
                *v7 = -1;
              }

              else
              {
                v64 = bswap32(*v6);
                v65 = bswap32(*v7);
                *v6 = bswap32(v61 + (((v62 ^ 0xFFFF) * HIWORD(v64) + (((v62 ^ 0xFFFF) * HIWORD(v64)) >> 16) + 1) >> 16)) >> 16;
                *v7 = bswap32((((v62 ^ 0xFFFF) * HIWORD(v65) + (((v62 ^ 0xFFFF) * HIWORD(v65)) >> 16) + 1) >> 16) + HIWORD(v61)) >> 16;
              }
            }
          }

          else if (v62)
          {
            if (v62 == 0xFFFF)
            {
              v63 = bswap32(v61);
            }

            else
            {
              v66 = bswap32(*v6);
              v63 = bswap32(v61 + (((v62 ^ 0xFFFF) * HIWORD(v66) + (((v62 ^ 0xFFFF) * HIWORD(v66)) >> 16) + 1) >> 16));
            }

            *v6 = HIWORD(v63);
          }

          v44 += 2;
          ++v6;
          v7 = (v7 + result);
          --v43;
        }

        while (v43);
      }

      v6 += v99;
      v12 += v98;
      v7 += v101;
      --a6;
    }

    while (a6);
  }

  else
  {
    v67 = (v9 + 16 * a3);
    v68 = v14 - 3;
    v69 = v8 ^ 0xFFFF;
    v70 = (-2 - (0xFFFF * v69 + ((0xFFFF * v69) >> 16))) & 0xFFFF0000;
    do
    {
      v71 = &v13[(v12 >> v11) * v10];
      if (v100 == 1)
      {
        if (a5 >= 1)
        {
          v72 = v67;
          v73 = a5;
          do
          {
            v74 = *v72;
            v72 += 2;
            v75 = &v71[v74];
            if (v68 < &v71[v74])
            {
              v75 = v68;
            }

            if (v75 < v13)
            {
              v75 = v13;
            }

            v76 = v75[2] + 2 * *v75 + 4 * v75[1] + v75[1];
            v77 = 32 * v76;
            v76 >>= 6;
            v78 = v76 | v77 | 0xFFFF0000;
            v79 = ((v77 | v76) - (((v77 | v76) * v69 + (((v77 | v76) * v69) >> 16) + 1) >> 16)) | v70;
            if (v8 == 0xFFFF)
            {
              v79 = v78;
            }

            v80 = bswap32(v79);
            *v6 = HIWORD(v80);
            if (v7)
            {
              *v7 = v80;
            }

            ++v6;
            v7 = (v7 + result);
            --v73;
          }

          while (v73);
        }
      }

      else
      {
        v81 = v67;
        v82 = a5;
        if (a5 >= 1)
        {
          do
          {
            v83 = *v81;
            v81 += 2;
            v84 = &v71[v83];
            if (v68 < &v71[v83])
            {
              v84 = v68;
            }

            if (v84 < v13)
            {
              v84 = v13;
            }

            v85 = v84[2] + 2 * *v84 + 4 * v84[1] + v84[1];
            v86 = 32 * v85;
            v85 >>= 6;
            v87 = v85 | v86 | 0xFFFF0000;
            v88 = ((v86 | v85) - (((v86 | v85) * v69 + (((v86 | v85) * v69) >> 16) + 1) >> 16)) | v70;
            if (v8 == 0xFFFF)
            {
              v89 = v87;
            }

            else
            {
              v89 = v88;
            }

            v90 = HIWORD(v89);
            if (v7)
            {
              if (v90)
              {
                if (v90 == 0xFFFF)
                {
                  *v6 = bswap32(v89) >> 16;
                  *v7 = -1;
                }

                else
                {
                  v92 = bswap32(*v6);
                  v93 = bswap32(*v7);
                  *v6 = bswap32(v89 + (((v90 ^ 0xFFFF) * HIWORD(v92) + (((v90 ^ 0xFFFF) * HIWORD(v92)) >> 16) + 1) >> 16)) >> 16;
                  *v7 = bswap32((((v90 ^ 0xFFFF) * HIWORD(v93) + (((v90 ^ 0xFFFF) * HIWORD(v93)) >> 16) + 1) >> 16) + HIWORD(v89)) >> 16;
                }
              }
            }

            else if (v90)
            {
              if (v90 == 0xFFFF)
              {
                v91 = bswap32(v89);
              }

              else
              {
                v94 = bswap32(*v6);
                v91 = bswap32(v89 + (((v90 ^ 0xFFFF) * HIWORD(v94) + (((v90 ^ 0xFFFF) * HIWORD(v94)) >> 16) + 1) >> 16));
              }

              *v6 = HIWORD(v91);
            }

            ++v6;
            v7 = (v7 + result);
            --v82;
          }

          while (v82);
        }
      }

      v6 += v99;
      v12 += v98;
      v7 += v101;
      --a6;
    }

    while (a6);
  }

  return result;
}

uint64_t W16_image_mark_W8(uint64_t a1, int *a2, int a3, int a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v7)
  {
    v98 = *(a2 + 5) - a5;
  }

  else
  {
    v98 = 0;
  }

  v8 = *(a2 + 4);
  v97 = *a2;
  v96 = *(a2 + 3) - a5;
  v10 = *(a2 + 17);
  v9 = *(a2 + 18);
  v11 = *(a2 + 9);
  v12 = *(a2 + 11);
  v13 = *(a2 + 7) + v12 * a4;
  v14 = *(a1 + 32);
  v15 = &v14[(*(a1 + 260) - 1) * *(a1 + 24) + (((*(a1 + 8) >> 22) * *(a1 + 256)) >> 3)];
  v16 = *(a1 + 176);
  result = 2 * (v7 != 0);
  if (v16)
  {
    v94 = *(a2 + 15);
    v95 = *(a2 + 13);
    v18 = v15 - 4;
    v19 = v8 ^ 0xFFFF;
    v20 = (-2 - (0xFFFF * v19 + ((0xFFFF * v19) >> 16))) & 0xFFFF0000;
    v93 = v9 + 16 * a3 + 8;
    do
    {
      if (((v94 - v13) | (v13 - v95)) < 0)
      {
        v23 = 0;
        v22 = 0;
      }

      else
      {
        v21 = ((v13 & ~(-1 << v11)) >> (v11 - 4)) & 0xF;
        if (v21 - 7 >= 9)
        {
          v22 = -v10;
        }

        else
        {
          v22 = v10;
        }

        v23 = weights_21890[v21] & 0xF;
      }

      v24 = &v14[(v13 >> v11) * v10];
      if (v97 == 1)
      {
        if (a5 >= 1)
        {
          v25 = v93;
          v26 = a5;
          do
          {
            v28 = *(v25 - 1);
            v27 = *v25;
            v29 = &v24[v28];
            if (v18 >= &v24[v28])
            {
              v30 = &v24[v28];
            }

            else
            {
              v30 = v18;
            }

            if (v30 < v14)
            {
              v30 = v14;
            }

            v31 = *v30;
            if ((v27 & 0xF) != 0)
            {
              v32 = &v29[v27 >> 4];
              if (v18 < v32)
              {
                v32 = v18;
              }

              if (v32 < v14)
              {
                v32 = v14;
              }

              v33 = *v32;
              if (v23)
              {
                v34 = &v29[v22];
                if (v18 >= v34)
                {
                  v35 = v34;
                }

                else
                {
                  v35 = v18;
                }

                if (v35 < v14)
                {
                  v35 = v14;
                }

                v36 = *v35;
                v37 = &v34[v27 >> 4];
                if (v18 < v37)
                {
                  v37 = v18;
                }

                if (v37 < v14)
                {
                  v37 = v14;
                }

                v38 = BLEND8_21892[v23];
                v31 = v31 - ((v38 & v31) >> v23) + ((v38 & v36) >> v23);
                v33 = v33 - ((v38 & v33) >> v23) + ((v38 & *v37) >> v23);
              }

              v31 = v31 - ((BLEND8_21892[*v25 & 0xF] & v31) >> (*v25 & 0xF)) + ((BLEND8_21892[*v25 & 0xF] & v33) >> (*v25 & 0xF));
            }

            else if (v23)
            {
              v39 = &v29[v22];
              if (v18 < &v29[v22])
              {
                v39 = v18;
              }

              if (v39 < v14)
              {
                v39 = v14;
              }

              v31 = v31 - ((BLEND8_21892[v23] & v31) >> v23) + ((BLEND8_21892[v23] & *v39) >> v23);
            }

            v40 = v31 | (v31 << 8);
            v41 = v40 | 0xFFFF0000;
            v42 = (v40 - ((v40 * v19 + ((v40 * v19) >> 16) + 1) >> 16)) | v20;
            if (v8 == 0xFFFF)
            {
              v42 = v41;
            }

            v43 = bswap32(v42);
            *v6 = HIWORD(v43);
            if (v7)
            {
              *v7 = v43;
            }

            v25 += 2;
            ++v6;
            v7 = (v7 + result);
            --v26;
          }

          while (v26);
        }
      }

      else if (a5 >= 1)
      {
        v45 = v93;
        v44 = a5;
        do
        {
          v47 = *(v45 - 1);
          v46 = *v45;
          v48 = &v24[v47];
          if (v18 >= &v24[v47])
          {
            v49 = &v24[v47];
          }

          else
          {
            v49 = v18;
          }

          if (v49 < v14)
          {
            v49 = v14;
          }

          v50 = *v49;
          if ((v46 & 0xF) != 0)
          {
            v51 = &v48[v46 >> 4];
            if (v18 < v51)
            {
              v51 = v18;
            }

            if (v51 < v14)
            {
              v51 = v14;
            }

            v52 = *v51;
            if (v23)
            {
              if (v18 >= &v48[v22])
              {
                v53 = &v48[v22];
              }

              else
              {
                v53 = v18;
              }

              if (v53 < v14)
              {
                v53 = v14;
              }

              v54 = *v53;
              v55 = &v48[v22 + (v46 >> 4)];
              if (v18 < v55)
              {
                v55 = v18;
              }

              if (v55 < v14)
              {
                v55 = v14;
              }

              v56 = BLEND8_21892[v23];
              v50 = v50 - ((v56 & v50) >> v23) + ((v56 & v54) >> v23);
              v52 = v52 - ((v56 & v52) >> v23) + ((v56 & *v55) >> v23);
            }

            v50 = v50 - ((BLEND8_21892[*v45 & 0xF] & v50) >> (*v45 & 0xF)) + ((BLEND8_21892[*v45 & 0xF] & v52) >> (*v45 & 0xF));
          }

          else if (v23)
          {
            v57 = &v48[v22];
            if (v18 < &v48[v22])
            {
              v57 = v18;
            }

            if (v57 < v14)
            {
              v57 = v14;
            }

            v50 = v50 - ((BLEND8_21892[v23] & v50) >> v23) + ((BLEND8_21892[v23] & *v57) >> v23);
          }

          v58 = v50 | (v50 << 8);
          v59 = v58 | 0xFFFF0000;
          v60 = (v58 - ((v58 * v19 + ((v58 * v19) >> 16) + 1) >> 16)) | v20;
          if (v8 == 0xFFFF)
          {
            v61 = v59;
          }

          else
          {
            v61 = v60;
          }

          v62 = HIWORD(v61);
          if (v7)
          {
            if (v62)
            {
              if (v62 == 0xFFFF)
              {
                *v6 = bswap32(v61) >> 16;
                *v7 = -1;
              }

              else
              {
                v64 = bswap32(*v6);
                v65 = bswap32(*v7);
                *v6 = bswap32(v61 + (((v62 ^ 0xFFFF) * HIWORD(v64) + (((v62 ^ 0xFFFF) * HIWORD(v64)) >> 16) + 1) >> 16)) >> 16;
                *v7 = bswap32((((v62 ^ 0xFFFF) * HIWORD(v65) + (((v62 ^ 0xFFFF) * HIWORD(v65)) >> 16) + 1) >> 16) + HIWORD(v61)) >> 16;
              }
            }
          }

          else if (v62)
          {
            if (v62 == 0xFFFF)
            {
              v63 = bswap32(v61);
            }

            else
            {
              v66 = bswap32(*v6);
              v63 = bswap32(v61 + (((v62 ^ 0xFFFF) * HIWORD(v66) + (((v62 ^ 0xFFFF) * HIWORD(v66)) >> 16) + 1) >> 16));
            }

            *v6 = HIWORD(v63);
          }

          v45 += 2;
          ++v6;
          v7 = (v7 + result);
          --v44;
        }

        while (v44);
      }

      v6 += v96;
      v13 += v12;
      v7 += v98;
      --a6;
    }

    while (a6);
  }

  else
  {
    v67 = (v9 + 16 * a3);
    v68 = v15 - 4;
    v69 = v8 ^ 0xFFFF;
    v70 = (-2 - (0xFFFF * v69 + ((0xFFFF * v69) >> 16))) & 0xFFFF0000;
    do
    {
      v71 = &v14[(v13 >> v11) * v10];
      if (v97 == 1)
      {
        if (a5 >= 1)
        {
          v72 = v67;
          v73 = a5;
          do
          {
            v74 = *v72;
            v72 += 2;
            v75 = &v71[v74];
            if (v68 < &v71[v74])
            {
              v75 = v68;
            }

            if (v75 < v14)
            {
              v75 = v14;
            }

            v76 = *v75 | (*v75 << 8);
            v77 = v76 | 0xFFFF0000;
            v78 = (v76 - ((v76 * v69 + ((v76 * v69) >> 16) + 1) >> 16)) | v70;
            if (v8 == 0xFFFF)
            {
              v78 = v77;
            }

            v79 = bswap32(v78);
            *v6 = HIWORD(v79);
            if (v7)
            {
              *v7 = v79;
            }

            ++v6;
            v7 = (v7 + result);
            --v73;
          }

          while (v73);
        }
      }

      else
      {
        v80 = v67;
        v81 = a5;
        if (a5 >= 1)
        {
          do
          {
            v82 = *v80;
            v80 += 2;
            v83 = &v71[v82];
            if (v68 < &v71[v82])
            {
              v83 = v68;
            }

            if (v83 < v14)
            {
              v83 = v14;
            }

            v84 = *v83 | (*v83 << 8);
            v85 = v84 | 0xFFFF0000;
            v86 = (v84 - ((v84 * v69 + ((v84 * v69) >> 16) + 1) >> 16)) | v70;
            if (v8 == 0xFFFF)
            {
              v87 = v85;
            }

            else
            {
              v87 = v86;
            }

            v88 = HIWORD(v87);
            if (v7)
            {
              if (v88)
              {
                if (v88 == 0xFFFF)
                {
                  *v6 = bswap32(v87) >> 16;
                  *v7 = -1;
                }

                else
                {
                  v90 = bswap32(*v6);
                  v91 = bswap32(*v7);
                  *v6 = bswap32(v87 + (((v88 ^ 0xFFFF) * HIWORD(v90) + (((v88 ^ 0xFFFF) * HIWORD(v90)) >> 16) + 1) >> 16)) >> 16;
                  *v7 = bswap32((((v88 ^ 0xFFFF) * HIWORD(v91) + (((v88 ^ 0xFFFF) * HIWORD(v91)) >> 16) + 1) >> 16) + HIWORD(v87)) >> 16;
                }
              }
            }

            else if (v88)
            {
              if (v88 == 0xFFFF)
              {
                v89 = bswap32(v87);
              }

              else
              {
                v92 = bswap32(*v6);
                v89 = bswap32(v87 + (((v88 ^ 0xFFFF) * HIWORD(v92) + (((v88 ^ 0xFFFF) * HIWORD(v92)) >> 16) + 1) >> 16));
              }

              *v6 = HIWORD(v89);
            }

            ++v6;
            v7 = (v7 + result);
            --v81;
          }

          while (v81);
        }
      }

      v6 += v96;
      v13 += v12;
      v7 += v98;
      --a6;
    }

    while (a6);
  }

  return result;
}

unint64_t W16_mark_constmask(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 96);
  v5 = bswap32(**(a1 + 88));
  if (v4)
  {
    v7 = bswap32(*v4) << 16;
  }

  else
  {
    v7 = -65536;
  }

  v9 = *(a1 + 4);
  v8 = *(a1 + 8);
  v10 = *(a1 + 136);
  v11 = v7 | v5;
  v369 = *(a1 + 28);
  v370 = *(a1 + 40);
  pthread_mutex_lock(&W16_cacheColorLock);
  v12 = W16_cacheColor;
  if (!W16_cacheColor || *(W16_cacheColor + 16) != v11)
  {
    v13 = 0;
    while (1)
    {
      if (!v12)
      {
        goto LABEL_11;
      }

      v14 = v12;
      v15 = v13;
      if (*(v12 + 16) == v11)
      {
        break;
      }

      v12 = *v12;
      v13 = v14;
      if (!*v14)
      {
        if (W16_cacheColorCount > 6)
        {
          *v15 = 0;
          v23 = *(v14 + 8);
          v17 = a2;
          v21 = v9;
        }

        else
        {
LABEL_11:
          v16 = W16_cacheColorBase;
          v17 = a2;
          if (W16_cacheColorBase)
          {
            v18 = W16_cacheColorCount;
          }

          else
          {
            v16 = malloc_type_calloc(1uLL, 0x1CA8uLL, 0x10200408056D5EBuLL);
            v18 = 0;
            W16_cacheColorBase = v16;
          }

          v21 = v9;
          v14 = v16 + 24 * v18;
          v23 = v16 + 1024 * v18 + 168;
          *(v14 + 8) = v23;
          W16_cacheColorCount = v18 + 1;
        }

        v22 = v10;
        v24 = 0;
        *v14 = W16_cacheColor;
        W16_cacheColor = v14;
        *(v14 + 16) = v11;
        v25 = vdupq_n_s32(v5);
        v26 = xmmword_18439CB90;
        v27 = vdupq_n_s32(HIWORD(v11));
        v28 = vdupq_n_s32(0x101u);
        v29.i64[0] = 0xFFFF0000FFFFLL;
        v29.i64[1] = 0xFFFF0000FFFFLL;
        v30.i64[0] = 0x100000001;
        v30.i64[1] = 0x100000001;
        v31.i64[0] = 0x400000004;
        v31.i64[1] = 0x400000004;
        do
        {
          v32 = veorq_s8(vmulq_s32(v26, v28), v29);
          v33 = vmulq_s32(v32, v25);
          v34 = vmulq_s32(v32, v27);
          *(v23 + v24) = vorrq_s8(vshlq_n_s32(vsubq_s32(v27, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v34, v34, 0x10uLL), v30), 0x10uLL)), 0x10uLL), vsubq_s32(v25, vshrq_n_u32(vaddq_s32(vsraq_n_u32(v33, v33, 0x10uLL), v30), 0x10uLL)));
          v26 = vaddq_s32(v26, v31);
          v24 += 16;
        }

        while (v24 != 1024);
        v20 = v14 + 8;
        result = pthread_mutex_unlock(&W16_cacheColorLock);
        goto LABEL_22;
      }
    }

    if (v13)
    {
      *v13 = *v12;
      *v12 = W16_cacheColor;
      W16_cacheColor = v12;
    }
  }

  result = pthread_mutex_unlock(&W16_cacheColorLock);
  v20 = v12 + 8;
  v17 = a2;
  v21 = v9;
  v22 = v10;
LABEL_22:
  v35 = *v20;
  v36 = *(*v20 + 1020);
  v37 = *(a1 + 12);
  v38 = *(a1 + 16);
  if (v3)
  {
    v39 = *(a1 + 32) >> 1;
    v40 = (v3 + 2 * v39 * v38 + 2 * v37);
    v41 = 1;
    if (!v22)
    {
      return result;
    }
  }

  else
  {
    v40 = 0;
    v39 = 0;
    v41 = 0;
    if (!v22)
    {
      return result;
    }
  }

  v42 = v39 - v21;
  if (v3)
  {
    v39 -= v21;
  }

  v372 = v39;
  v43 = HIWORD(v36);
  v44 = (v370 + 2 * (v369 >> 1) * v38 + 2 * v37);
  v45 = *(a1 + 124);
  v46 = v22 + *(a1 + 108) * v45 + *(a1 + 104);
  v47 = v45 - v21;
  v48 = (v369 >> 1) - v21;
  v371 = v48;
  v49 = v47;
  switch(v17)
  {
    case 0:
      if (v3)
      {
        v50 = 2 * v41;
        do
        {
          v51 = v21;
          do
          {
            v52 = *v46;
            if (*v46)
            {
              if (v52 == 255)
              {
                LOWORD(v53) = 0;
                v44->i16[0] = 0;
              }

              else
              {
                v54 = bswap32(v44->u16[0]) >> 16;
                v55 = bswap32(*v40) >> 16;
                v56 = (v52 ^ 0xFF | ((v52 ^ 0xFF) << 8)) ^ 0xFFFF;
                v44->i16[0] = bswap32(v54 - ((v56 * v54 + ((v56 * v54) >> 16) + 1) >> 16)) >> 16;
                v53 = bswap32(v55 - ((v56 * v55 + ((v56 * v55) >> 16) + 1) >> 16)) >> 16;
              }

              *v40 = v53;
            }

            ++v46;
            v44 = (v44 + 2);
            v40 = (v40 + v50);
            --v51;
          }

          while (v51);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          v40 += v372;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v57 = v21;
          do
          {
            v58 = *v46;
            if (*v46)
            {
              if (v58 == 255)
              {
                LOWORD(v59) = 0;
              }

              else
              {
                v60 = bswap32(v44->u16[0]) >> 16;
                v61 = ((v58 ^ 0xFF | ((v58 ^ 0xFF) << 8)) ^ 0xFFFF) * v60;
                v59 = bswap32(v60 - ((v61 + HIWORD(v61) + 1) >> 16)) >> 16;
              }

              v44->i16[0] = v59;
            }

            ++v46;
            v44 = (v44 + 2);
            --v57;
          }

          while (v57);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          --v8;
        }

        while (v8);
      }

      return result;
    case 1:
      v162 = v46 & 3;
      if (!v3)
      {
        v269 = -1 << (8 * v162);
        if ((v46 & 3) != 0)
        {
          v270 = v46 & 0xFC;
        }

        else
        {
          v270 = v46;
        }

        if ((v46 & 3) != 0)
        {
          v271 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v269 = -1;
          v271 = v46;
        }

        if ((v46 & 3) != 0)
        {
          v272 = (v44 - 2 * (v46 & 3));
        }

        else
        {
          v272 = v44;
        }

        if ((v46 & 3) != 0)
        {
          v273 = v162 + v21;
        }

        else
        {
          v273 = v21;
        }

        if (((v273 + v270) & 3) != 0)
        {
          v274 = 4 - ((v273 + v270) & 3);
          v162 += v274;
          v275 = 0xFFFFFFFF >> (8 * v274);
          if (v273 >= 4)
          {
            v276 = v275;
          }

          else
          {
            v276 = 0;
          }

          if (v273 >= 4)
          {
            v275 = -1;
          }

          v269 &= v275;
        }

        else
        {
          v276 = 0;
        }

        v353 = v47 - v162;
        v354 = v48 - v162;
        v355 = (v273 >> 2);
        v356 = bswap32(v36) >> 16;
        v357 = vdup_n_s16(v356);
        while (1)
        {
          v358 = *v271 & v269;
          v359 = v355;
          v360 = v276;
          if (!v358)
          {
            goto LABEL_580;
          }

LABEL_578:
          if (v358 == -1)
          {
            *v272 = v357;
            goto LABEL_580;
          }

          while (1)
          {
            if (v358)
            {
              LOWORD(v361) = v356;
              if (v358 != 255)
              {
                v362 = (bswap32(v272->u16[0]) >> 16) * ((v358 | (v358 << 8)) ^ 0xFFFF);
                v361 = bswap32(*(v35 + 4 * v358) + ((v362 + HIWORD(v362) + 1) >> 16)) >> 16;
              }

              v272->i16[0] = v361;
            }

            if (BYTE1(v358))
            {
              LOWORD(v363) = v356;
              if (BYTE1(v358) != 255)
              {
                v364 = bswap32(v272->u16[1]) >> 16;
                v363 = bswap32(*(v35 + 4 * BYTE1(v358)) + ((v364 * ((BYTE1(v358) | (BYTE1(v358) << 8)) ^ 0xFFFF) + ((v364 * ((BYTE1(v358) | (BYTE1(v358) << 8)) ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
              }

              v272->i16[1] = v363;
            }

            if (BYTE2(v358))
            {
              LOWORD(v365) = v356;
              if (BYTE2(v358) != 255)
              {
                v366 = bswap32(v272->u16[2]) >> 16;
                v365 = bswap32(*(v35 + 4 * BYTE2(v358)) + ((v366 * ((BYTE2(v358) | (BYTE2(v358) << 8)) ^ 0xFFFF) + ((v366 * ((BYTE2(v358) | (BYTE2(v358) << 8)) ^ 0xFFFF)) >> 16) + 1) >> 16)) >> 16;
              }

              v272->i16[2] = v365;
            }

            v367 = HIBYTE(v358);
            if (v367 == 255)
            {
              v272->i16[3] = v356;
            }

            else if (v367)
            {
              v368 = bswap32(v272->u16[3]) >> 16;
              v272->i16[3] = bswap32(*(v35 + 4 * v367) + ((((v367 | (v367 << 8)) ^ 0xFFFF) * v368 + ((((v367 | (v367 << 8)) ^ 0xFFFF) * v368) >> 16) + 1) >> 16)) >> 16;
            }

LABEL_580:
            while (1)
            {
              result = v359;
              ++v272;
              v359 = (v359 - 1);
              ++v271;
              if (result < 2)
              {
                break;
              }

              v358 = *v271;
              if (*v271)
              {
                goto LABEL_578;
              }
            }

            if (!v360)
            {
              break;
            }

            v360 = 0;
            v358 = *v271 & v276;
          }

          v271 = (v271 + v353);
          v272 = (v272 + 2 * v354);
          if (!--v8)
          {
            return result;
          }
        }
      }

      v163 = -1 << (8 * v162);
      v164 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      v165 = 2 * (v46 & 3);
      v166 = (v44 - v165);
      v167 = &v40[v165 / 0xFFFFFFFFFFFFFFFELL];
      if ((v46 & 3) != 0)
      {
        v168 = v46 & 0xFC;
      }

      else
      {
        v168 = v46;
      }

      if ((v46 & 3) != 0)
      {
        v169 = v162 + v21;
      }

      else
      {
        v163 = -1;
        v164 = v46;
        v167 = v40;
        v166 = v44;
        v169 = v21;
      }

      if (((v169 + v168) & 3) != 0)
      {
        v170 = 4 - ((v169 + v168) & 3);
        v162 += v170;
        v171 = 0xFFFFFFFF >> (8 * v170);
        if (v169 >= 4)
        {
          v172 = v171;
        }

        else
        {
          v172 = 0;
        }

        if (v169 >= 4)
        {
          v171 = -1;
        }

        v163 &= v171;
      }

      else
      {
        v172 = 0;
      }

      v309 = v47 - v162;
      v310 = v48 - v162;
      v311 = v169 >> 2;
      v312 = bswap32(v36);
      result = v42 - v162;
      do
      {
        v313 = *v164 & v163;
        v314 = v311;
        v315 = v172;
        if (!v313)
        {
          goto LABEL_528;
        }

LABEL_526:
        if (v313 == -1)
        {
          v166->i16[0] = HIWORD(v312);
          *v167 = v312;
          v166->i16[1] = HIWORD(v312);
          v167[1] = v312;
          v166->i16[2] = HIWORD(v312);
          v167[2] = v312;
LABEL_549:
          v166->i16[3] = HIWORD(v312);
          v167[3] = v312;
          goto LABEL_528;
        }

        while (1)
        {
          if (v313)
          {
            if (v313 == 255)
            {
              v166->i16[0] = HIWORD(v312);
              LOWORD(v317) = v312;
            }

            else
            {
              v318 = *(v35 + 4 * v313);
              v319 = bswap32(v166->u16[0]);
              v320 = bswap32(*v167) >> 16;
              v321 = (v313 | (v313 << 8)) ^ 0xFFFF;
              v166->i16[0] = bswap32(v318 + ((HIWORD(v319) * v321 + ((HIWORD(v319) * v321) >> 16) + 1) >> 16)) >> 16;
              v317 = bswap32(((v320 * v321 + ((v320 * v321) >> 16) + 1) >> 16) + HIWORD(v318)) >> 16;
            }

            *v167 = v317;
          }

          if (BYTE1(v313))
          {
            if (BYTE1(v313) == 255)
            {
              v166->i16[1] = HIWORD(v312);
              LOWORD(v322) = v312;
            }

            else
            {
              v323 = *(v35 + 4 * BYTE1(v313));
              v324 = bswap32(v167[1]) >> 16;
              v325 = (BYTE1(v313) | (BYTE1(v313) << 8)) ^ 0xFFFF;
              v326 = (bswap32(v166->u16[1]) >> 16) * v325;
              v166->i16[1] = bswap32(v323 + ((v326 + HIWORD(v326) + 1) >> 16)) >> 16;
              v322 = bswap32(((v324 * v325 + ((v324 * v325) >> 16) + 1) >> 16) + HIWORD(v323)) >> 16;
            }

            v167[1] = v322;
          }

          if (BYTE2(v313))
          {
            if (BYTE2(v313) == 255)
            {
              v166->i16[2] = HIWORD(v312);
              LOWORD(v327) = v312;
            }

            else
            {
              v328 = *(v35 + 4 * BYTE2(v313));
              v329 = bswap32(v166->u16[2]);
              v330 = bswap32(v167[2]) >> 16;
              v331 = (BYTE2(v313) | (BYTE2(v313) << 8)) ^ 0xFFFF;
              v166->i16[2] = bswap32(v328 + ((HIWORD(v329) * v331 + ((HIWORD(v329) * v331) >> 16) + 1) >> 16)) >> 16;
              v327 = bswap32(((v330 * v331 + ((v330 * v331) >> 16) + 1) >> 16) + HIWORD(v328)) >> 16;
            }

            v167[2] = v327;
          }

          v332 = HIBYTE(v313);
          if (v332 == 255)
          {
            goto LABEL_549;
          }

          if (v332)
          {
            v333 = v332 | (v332 << 8);
            v334 = *(v35 + 4 * v332);
            v335 = bswap32(v167[3]) >> 16;
            v333 ^= 0xFFFFu;
            v336 = v333 * (bswap32(v166->u16[3]) >> 16);
            v166->i16[3] = bswap32(v334 + ((v336 + HIWORD(v336) + 1) >> 16)) >> 16;
            v167[3] = bswap32(((v333 * v335 + ((v333 * v335) >> 16) + 1) >> 16) + HIWORD(v334)) >> 16;
          }

LABEL_528:
          while (1)
          {
            v316 = v314;
            ++v166;
            v167 += 4;
            --v314;
            ++v164;
            if (v316 < 2)
            {
              break;
            }

            v313 = *v164;
            if (*v164)
            {
              goto LABEL_526;
            }
          }

          if (!v315)
          {
            break;
          }

          v315 = 0;
          v313 = *v164 & v172;
        }

        v164 = (v164 + v309);
        v166 = (v166 + 2 * v310);
        v167 += result;
        --v8;
      }

      while (v8);
      return result;
    case 2:
      v121 = v46 & 3;
      if (v3)
      {
        v122 = -1 << (8 * v121);
        v123 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
        v124 = 2 * (v46 & 3);
        v125 = (v44 - v124);
        v126 = &v40[v124 / 0xFFFFFFFFFFFFFFFELL];
        if ((v46 & 3) != 0)
        {
          v127 = v46 & 0xFC;
        }

        else
        {
          v127 = v46;
        }

        if ((v46 & 3) != 0)
        {
          v128 = v121 + v21;
        }

        else
        {
          v122 = -1;
          v123 = v46;
          v126 = v40;
          v125 = v44;
          v128 = v21;
        }

        if (((v128 + v127) & 3) != 0)
        {
          v129 = 4 - ((v128 + v127) & 3);
          v121 += v129;
          v130 = 0xFFFFFFFF >> (8 * v129);
          if (v128 >= 4)
          {
            v131 = v130;
          }

          else
          {
            v131 = 0;
          }

          if (v128 >= 4)
          {
            v130 = -1;
          }

          v122 &= v130;
        }

        else
        {
          v131 = 0;
        }

        v277 = v47 - v121;
        v278 = v48 - v121;
        v279 = v128 >> 2;
        result = ~HIWORD(v36);
        v280 = v42 - v121;
        while (1)
        {
          v281 = *v123 & v122;
          v282 = v279;
          v283 = v131;
          if (!v281)
          {
            goto LABEL_507;
          }

LABEL_505:
          if (v281 == -1)
          {
            break;
          }

          while (1)
          {
            if (v281)
            {
              v295 = *(v35 + 4 * v281);
              v296 = bswap32(*v126) >> 16;
              v297 = HIWORD(v295) ^ 0xFFFF;
              v298 = v297 * (bswap32(v125->u16[0]) >> 16);
              v125->i16[0] = bswap32(v295 + ((v298 + HIWORD(v298) + 1) >> 16)) >> 16;
              *v126 = bswap32(((v297 * v296 + ((v297 * v296) >> 16) + 1) >> 16) + HIWORD(v295)) >> 16;
            }

            if ((v281 & 0xFF00) != 0)
            {
              v299 = *(v35 + 4 * BYTE1(v281));
              v300 = bswap32(v126[1]) >> 16;
              v301 = HIWORD(v299) ^ 0xFFFF;
              v302 = v301 * (bswap32(v125->u16[1]) >> 16);
              v125->i16[1] = bswap32(v299 + ((v302 + HIWORD(v302) + 1) >> 16)) >> 16;
              v126[1] = bswap32(((v301 * v300 + ((v301 * v300) >> 16) + 1) >> 16) + HIWORD(v299)) >> 16;
            }

            if ((v281 & 0xFF0000) != 0)
            {
              v303 = *(v35 + 4 * BYTE2(v281));
              v304 = bswap32(v126[2]) >> 16;
              v305 = HIWORD(v303) ^ 0xFFFF;
              v306 = v305 * (bswap32(v125->u16[2]) >> 16);
              v125->i16[2] = bswap32(v303 + ((v306 + HIWORD(v306) + 1) >> 16)) >> 16;
              v126[2] = bswap32(((v305 * v304 + ((v305 * v304) >> 16) + 1) >> 16) + HIWORD(v303)) >> 16;
            }

            v307 = HIBYTE(v281);
            if (v307)
            {
              v292 = *(v35 + 4 * v307);
              v293 = HIWORD(v292);
              v308 = HIWORD(v292) ^ 0xFFFF;
              v290 = v308 * (bswap32(v125->u16[3]) >> 16);
              v291 = v308 * (bswap32(v126[3]) >> 16);
              goto LABEL_520;
            }

LABEL_507:
            while (1)
            {
              v294 = v282;
              ++v125;
              v126 += 4;
              --v282;
              ++v123;
              if (v294 < 2)
              {
                break;
              }

              v281 = *v123;
              if (*v123)
              {
                goto LABEL_505;
              }
            }

            if (!v283)
            {
              break;
            }

            v283 = 0;
            v281 = *v123 & v131;
          }

          v123 = (v123 + v277);
          v125 = (v125 + 2 * v278);
          v126 += v280;
          if (!--v8)
          {
            return result;
          }
        }

        v284 = bswap32(v125->u16[0]);
        v285 = bswap32(*v126);
        v125->i16[0] = bswap32(v36 + ((HIWORD(v284) * result + ((HIWORD(v284) * result) >> 16) + 1) >> 16)) >> 16;
        *v126 = bswap32(((HIWORD(v285) * result + ((HIWORD(v285) * result) >> 16) + 1) >> 16) + HIWORD(v36)) >> 16;
        v286 = bswap32(v125->u16[1]);
        v287 = bswap32(v126[1]);
        v125->i16[1] = bswap32(v36 + ((HIWORD(v286) * result + ((HIWORD(v286) * result) >> 16) + 1) >> 16)) >> 16;
        v126[1] = bswap32(((HIWORD(v287) * result + ((HIWORD(v287) * result) >> 16) + 1) >> 16) + HIWORD(v36)) >> 16;
        v288 = bswap32(v125->u16[2]);
        v289 = bswap32(v126[2]);
        v125->i16[2] = bswap32(v36 + ((HIWORD(v288) * result + ((HIWORD(v288) * result) >> 16) + 1) >> 16)) >> 16;
        v126[2] = bswap32(((HIWORD(v289) * result + ((HIWORD(v289) * result) >> 16) + 1) >> 16) + HIWORD(v36)) >> 16;
        v290 = (bswap32(v125->u16[3]) >> 16) * result;
        v291 = (bswap32(v126[3]) >> 16) * result;
        v292 = v36;
        v293 = HIWORD(v36);
LABEL_520:
        v125->i16[3] = bswap32(v292 + ((v290 + HIWORD(v290) + 1) >> 16)) >> 16;
        v126[3] = bswap32(v293 + ((v291 + HIWORD(v291) + 1) >> 16)) >> 16;
        goto LABEL_507;
      }

      v261 = -1 << (8 * v121);
      if ((v46 & 3) != 0)
      {
        v262 = v46 & 0xFC;
      }

      else
      {
        v262 = v46;
      }

      if ((v46 & 3) != 0)
      {
        v263 = (v46 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v261 = -1;
        v263 = v46;
      }

      if ((v46 & 3) != 0)
      {
        v264 = (v44 - 2 * (v46 & 3));
      }

      else
      {
        v264 = v44;
      }

      if ((v46 & 3) != 0)
      {
        v265 = v121 + v21;
      }

      else
      {
        v265 = v21;
      }

      if (((v265 + v262) & 3) != 0)
      {
        v266 = 4 - ((v265 + v262) & 3);
        v121 += v266;
        v267 = 0xFFFFFFFF >> (8 * v266);
        if (v265 >= 4)
        {
          v268 = v267;
        }

        else
        {
          v268 = 0;
        }

        if (v265 >= 4)
        {
          v267 = -1;
        }

        v261 &= v267;
      }

      else
      {
        v268 = 0;
      }

      v337 = v47 - v121;
      v338 = v265 >> 2;
      v339 = ~HIWORD(v36);
      v340 = v48 - v121;
      do
      {
        v341 = *v263 & v261;
        v342 = v338;
        result = v268;
        if (!v341)
        {
          goto LABEL_559;
        }

LABEL_557:
        if (v341 == -1)
        {
          v343 = bswap32(v264->u16[0]);
          v264->i16[0] = bswap32(v36 + ((HIWORD(v343) * v339 + ((HIWORD(v343) * v339) >> 16) + 1) >> 16)) >> 16;
          v344 = bswap32(v264->u16[1]);
          v264->i16[1] = bswap32(v36 + ((HIWORD(v344) * v339 + ((HIWORD(v344) * v339) >> 16) + 1) >> 16)) >> 16;
          v345 = bswap32(v264->u16[2]);
          v264->i16[2] = bswap32(v36 + ((HIWORD(v345) * v339 + ((HIWORD(v345) * v339) >> 16) + 1) >> 16)) >> 16;
          v346 = (bswap32(v264->u16[3]) >> 16) * v339;
          v347 = v36;
LABEL_572:
          v264->i16[3] = bswap32(v347 + ((v346 + HIWORD(v346) + 1) >> 16)) >> 16;
          goto LABEL_559;
        }

        while (1)
        {
          if (v341)
          {
            v349 = bswap32(v264->u16[0]);
            v264->i16[0] = bswap32(*(v35 + 4 * v341) + (((~*(v35 + 4 * v341) >> 16) * HIWORD(v349) + (((~*(v35 + 4 * v341) >> 16) * HIWORD(v349)) >> 16) + 1) >> 16)) >> 16;
          }

          if ((v341 & 0xFF00) != 0)
          {
            v350 = bswap32(v264->u16[1]);
            v264->i16[1] = bswap32(*(v35 + 4 * BYTE1(v341)) + (((~*(v35 + 4 * BYTE1(v341)) >> 16) * HIWORD(v350) + (((~*(v35 + 4 * BYTE1(v341)) >> 16) * HIWORD(v350)) >> 16) + 1) >> 16)) >> 16;
          }

          if ((v341 & 0xFF0000) != 0)
          {
            v351 = bswap32(v264->u16[2]);
            v264->i16[2] = bswap32(*(v35 + 4 * BYTE2(v341)) + (((~*(v35 + 4 * BYTE2(v341)) >> 16) * HIWORD(v351) + (((~*(v35 + 4 * BYTE2(v341)) >> 16) * HIWORD(v351)) >> 16) + 1) >> 16)) >> 16;
          }

          v352 = HIBYTE(v341);
          if (v352)
          {
            v347 = *(v35 + 4 * v352);
            v346 = (~v347 >> 16) * (bswap32(v264->u16[3]) >> 16);
            goto LABEL_572;
          }

LABEL_559:
          while (1)
          {
            v348 = v342;
            ++v264;
            --v342;
            ++v263;
            if (v348 < 2)
            {
              break;
            }

            v341 = *v263;
            if (*v263)
            {
              goto LABEL_557;
            }
          }

          if (!result)
          {
            break;
          }

          result = 0;
          v341 = *v263 & v268;
        }

        v263 = (v263 + v337);
        v264 = (v264 + 2 * v340);
        --v8;
      }

      while (v8);
      return result;
    case 3:
      v137 = 2 * v41;
      do
      {
        v138 = v21;
        do
        {
          v139 = *v46;
          if (*v46)
          {
            if (v139 == 255)
            {
              v140 = *(v35 + 4 * *v40);
              v44->i16[0] = bswap32(v140) >> 16;
              v141 = HIWORD(v140);
            }

            else
            {
              v142 = v139 | (v139 << 8);
              v143 = bswap32(*v40) >> 16;
              v144 = *(v35 + 4 * ((v143 * v142 + ((v143 * v142) >> 16) + 1) >> 24));
              v142 ^= 0xFFFFu;
              v145 = (bswap32(v44->u16[0]) >> 16) * v142;
              v44->i16[0] = bswap32(v144 + ((v145 + HIWORD(v145) + 1) >> 16)) >> 16;
              v141 = ((v143 * v142 + ((v143 * v142) >> 16) + 1) >> 16) + HIWORD(v144);
            }

            *v40 = bswap32(v141) >> 16;
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v137);
          --v138;
        }

        while (v138);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 4:
      v90 = 2 * v41;
      do
      {
        v91 = v21;
        do
        {
          v92 = *v46;
          if (*v46)
          {
            if (v92 == 255)
            {
              v93 = *(v35 + 4 * ~*v40);
              v44->i16[0] = bswap32(v93) >> 16;
              v94 = HIWORD(v93);
            }

            else
            {
              v95 = v92 | (v92 << 8);
              v96 = bswap32(*v40) >> 16;
              v97 = *(v35 + 4 * (((v96 ^ 0xFFFF) * v95 + (((v96 ^ 0xFFFF) * v95) >> 16) + 1) >> 24));
              v95 ^= 0xFFFFu;
              v98 = (bswap32(v44->u16[0]) >> 16) * v95;
              v44->i16[0] = bswap32(v97 + ((v98 + HIWORD(v98) + 1) >> 16)) >> 16;
              v94 = ((v96 * v95 + ((v96 * v95) >> 16) + 1) >> 16) + HIWORD(v97);
            }

            *v40 = bswap32(v94) >> 16;
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v90);
          --v91;
        }

        while (v91);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 5:
      v183 = 2 * v41;
      do
      {
        v184 = v21;
        do
        {
          if (*v46)
          {
            v185 = bswap32(*v40);
            v186 = *(v35 + 4 * *v46);
            v187 = bswap32(v44->u16[0]);
            v188 = HIWORD(v186) ^ 0xFFFF;
            v44->i16[0] = bswap32(v186 * HIWORD(v185) + v188 * HIWORD(v187) + ((v186 * HIWORD(v185) + v188 * HIWORD(v187)) >> 16) + 1);
            *v40 = bswap32((v188 + HIWORD(v185)) * HIWORD(v186) + (((v188 + HIWORD(v185)) * HIWORD(v186)) >> 16) + 1);
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v183);
          --v184;
        }

        while (v184);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 6:
      do
      {
        v199 = v21;
        do
        {
          v200 = *v46;
          if (*v46)
          {
            v201 = bswap32(*v40);
            if (HIWORD(v201) != 0xFFFF)
            {
              if (~HIWORD(v201) == 0xFFFF)
              {
                v202 = *(v35 + 4 * v200);
                v44->i16[0] = bswap32(v202) >> 16;
                v203 = HIWORD(v202);
              }

              else
              {
                v204 = HIWORD(v201);
                v205 = *(v35 + 4 * v200);
                v206 = ~HIWORD(v201);
                v44->i16[0] = bswap32((bswap32(v44->u16[0]) >> 16) + ((v205 * v206 + ((v205 * v206) >> 16) + 1) >> 16)) >> 16;
                v203 = v204 + ((HIWORD(v205) * v206 + ((HIWORD(v205) * v206) >> 16) + 1) >> 16);
              }

              *v40 = bswap32(v203) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 += v41;
          --v199;
        }

        while (v199);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 7:
      v146 = v43 ^ 0xFFFF;
      if (v3)
      {
        v147 = 2 * v41;
        do
        {
          v148 = v21;
          do
          {
            v149 = *v46;
            if (*v46)
            {
              if (v149 == 255)
              {
                v150 = bswap32(v44->u16[0]) >> 16;
                v151 = bswap32(*v40) >> 16;
                v152 = v146 * v150;
                v153 = v146 * v151;
              }

              else
              {
                v154 = v149 | (v149 << 8);
                v150 = bswap32(v44->u16[0]) >> 16;
                v151 = bswap32(*v40) >> 16;
                v155 = (v154 - ((v43 * v154 + ((v43 * v154) >> 16) + 1) >> 16));
                v152 = v150 * v155;
                v153 = v151 * v155;
              }

              v44->i16[0] = bswap32(v150 - ((v152 + HIWORD(v152) + 1) >> 16)) >> 16;
              *v40 = bswap32(v151 - ((v153 + HIWORD(v153) + 1) >> 16)) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            v40 = (v40 + v147);
            --v148;
          }

          while (v148);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          v40 += v372;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v156 = v21;
          do
          {
            v157 = *v46;
            if (*v46)
            {
              if (v157 == 255)
              {
                v158 = bswap32(v44->u16[0]) >> 16;
                v159 = v43 ^ 0xFFFF;
                v160 = v158;
              }

              else
              {
                v161 = v157 | (v157 << 8);
                v159 = bswap32(v44->u16[0]) >> 16;
                v158 = v161 - ((v43 * v161 + ((v43 * v161) >> 16) + 1) >> 16);
                v160 = v159;
              }

              v44->i16[0] = bswap32(v160 - ((v159 * v158 + ((v159 * v158) >> 16) + 1) >> 16)) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            --v156;
          }

          while (v156);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          --v8;
        }

        while (v8);
      }

      return result;
    case 8:
      v218 = 257 * v43;
      if (v3)
      {
        v219 = 2 * v41;
        do
        {
          v220 = v21;
          do
          {
            v221 = *v46;
            if (*v46)
            {
              v222 = bswap32(v44->u16[0]) >> 16;
              v223 = bswap32(*v40) >> 16;
              if (v221 == 255)
              {
                v224 = v43;
              }

              else
              {
                v224 = (v218 * v221 + ((v218 * v221) >> 16) + 1) >> 16;
              }

              v44->i16[0] = bswap32(v222 - ((v224 * v222 + ((v224 * v222) >> 16) + 1) >> 16)) >> 16;
              *v40 = bswap32(v223 - ((v224 * v223 + ((v224 * v223) >> 16) + 1) >> 16)) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            v40 = (v40 + v219);
            --v220;
          }

          while (v220);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          v40 += v372;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v225 = v21;
          do
          {
            v226 = *v46;
            if (*v46)
            {
              v227 = bswap32(v44->u16[0]) >> 16;
              if (v226 == 255)
              {
                v228 = v43;
              }

              else
              {
                v228 = (v218 * v226 + ((v218 * v226) >> 16) + 1) >> 16;
              }

              v44->i16[0] = bswap32(v227 - ((v228 * v227 + ((v228 * v227) >> 16) + 1) >> 16)) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            --v225;
          }

          while (v225);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          --v8;
        }

        while (v8);
      }

      return result;
    case 9:
      v105 = 2 * v41;
      do
      {
        v106 = v21;
        do
        {
          if (*v46)
          {
            v107 = *(v35 + 4 * *v46);
            v108 = bswap32(~*v40) >> 16;
            v109 = bswap32(v44->u16[0]) >> 16;
            v110 = ~(*v46 | (*v46 << 8)) + HIWORD(v107);
            v44->i16[0] = bswap32(v107 * v108 + v110 * v109 + ((v107 * v108 + v110 * v109) >> 16) + 1);
            *v40 = bswap32((v108 + v110) * HIWORD(v107) + (((v108 + v110) * HIWORD(v107)) >> 16) + 1);
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v105);
          --v106;
        }

        while (v106);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 10:
      v212 = 2 * v41;
      do
      {
        v213 = v21;
        do
        {
          if (*v46)
          {
            v214 = *(v35 + 4 * *v46);
            v215 = bswap32(~*v40);
            v216 = bswap32(v44->u16[0]);
            v217 = HIWORD(v214) ^ 0xFFFF;
            v44->i16[0] = bswap32(v214 * HIWORD(v215) + v217 * HIWORD(v216) + ((v214 * HIWORD(v215) + v217 * HIWORD(v216)) >> 16) + 1);
            *v40 = bswap32((v217 + HIWORD(v215)) * HIWORD(v214) + (((v217 + HIWORD(v215)) * HIWORD(v214)) >> 16) + 1);
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v212);
          --v213;
        }

        while (v213);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        --v8;
      }

      while (v8);
      return result;
    case 11:
      if (v3)
      {
        v83 = 2 * v41;
        do
        {
          v84 = v21;
          do
          {
            if (*v46)
            {
              v85 = *(v35 + 4 * *v46);
              v86 = bswap32(*v40);
              v87 = HIWORD(v85);
              v88 = HIWORD(v85) - ((bswap32(v44->u16[0]) >> 16) + v85) + HIWORD(v86);
              v89 = v87 + HIWORD(v86);
              if (v88 >= 0xFFFF)
              {
                v88 = 0xFFFF;
              }

              if (v89 >= 0xFFFF)
              {
                v89 = 0xFFFF;
              }

              v44->i16[0] = bswap32(v89 - v88) >> 16;
              *v40 = bswap32(v89) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            v40 = (v40 + v83);
            --v84;
          }

          while (v84);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          v40 += v372;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v256 = v21;
          do
          {
            if (*v46)
            {
              v257 = *(v35 + 4 * *v46);
              v258 = HIWORD(v257) - v257 + (bswap32(~v44->u16[0]) >> 16);
              if (v258 >= 0xFFFF)
              {
                v258 = 0xFFFF;
              }

              v44->i16[0] = bswap32(~v258) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            --v256;
          }

          while (v256);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          --v8;
        }

        while (v8);
      }

      return result;
    case 12:
      if (v3)
      {
        v99 = 2 * v41;
        do
        {
          v100 = v21;
          do
          {
            if (*v46)
            {
              v101 = *(v35 + 4 * *v46);
              v102 = HIWORD(v101);
              v103 = (bswap32(v44->u16[0]) >> 16) + v101;
              v104 = v102 + (bswap32(*v40) >> 16);
              if (v103 >= 0xFFFF)
              {
                v103 = 0xFFFF;
              }

              if (v104 >= 0xFFFF)
              {
                v104 = 0xFFFF;
              }

              v44->i16[0] = bswap32(v103) >> 16;
              *v40 = bswap32(v104) >> 16;
            }

            ++v46;
            v44 = (v44 + 2);
            v40 = (v40 + v99);
            --v100;
          }

          while (v100);
          v46 += v47;
          v44 = (v44 + 2 * v48);
          v40 += v372;
          --v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v259 = 0;
          do
          {
            if (*(v46 + v259))
            {
              v260 = bswap32(v44->u16[0]);
              v44->i16[0] = bswap32((v260 >> 15) & 0xFFFE | ((v260 >> 16) >> 15)) >> 16;
            }

            v44 = (v44 + 2);
            ++v259;
          }

          while (v21 != v259);
          v46 += (v21 - 1) + 1 + v47;
          v44 = (v44 + 2 * v48);
          --v8;
        }

        while (v8);
      }

      return result;
    case 13:
      v194 = 2 * v41;
      while (1)
      {
        v195 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v196 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v197 = __rev16(*v40);
                  goto LABEL_313;
                }

LABEL_315:
                v44->i16[0] = bswap32(result) >> 16;
                v198 = v40;
              }

              else
              {
                v197 = 0xFFFF;
LABEL_313:
                result = PDAmultiplyPDA_8993(bswap32(v44->u16[0]) >> 16, v197, *(v35 + 4 * *v46), v196);
                if (v3)
                {
                  v196 = WORD1(result);
                  goto LABEL_315;
                }

                v196 = result;
                v198 = v44;
              }

              v198->i16[0] = bswap32(v196) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v194);
          --v195;
        }

        while (v195);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 14:
      v72 = 2 * v41;
      while (1)
      {
        v73 = v21;
        do
        {
          if (*v46)
          {
            v74 = *(v35 + 4 * *v46);
            if (v74 >= 0x10000)
            {
              v75 = v74 >> 16;
              if (v3)
              {
                if (*v40)
                {
                  v76 = __rev16(*v40);
                  goto LABEL_89;
                }

LABEL_97:
                v44->i16[0] = bswap32(v74) >> 16;
                v82 = v40;
              }

              else
              {
                v76 = 0xFFFF;
LABEL_89:
                v77 = bswap32(v44->u16[0]) >> 16;
                v78 = (v77 ^ 0xFFFF) * *(v35 + 4 * *v46) - v77 + (v77 << 16);
                if (v78 <= 0xFFFE8000)
                {
                  v79 = v78 + 0x8000;
                }

                else
                {
                  v79 = 4294868992;
                }

                v80 = v79 + (v79 >> 16);
                if (v3)
                {
                  v74 = v80 >> 16;
                  v81 = 0xFFFF * (v75 + v76) - v75 * v76;
                  if (v81 <= 4294868992)
                  {
                    v75 = v81 + 0x8000;
                  }

                  else
                  {
                    v75 = 4294868992;
                  }

                  LODWORD(v74) = ((v75 >> 16) + v75) & 0xFFFF0000 | v74;
                  LODWORD(v75) = WORD1(v74);
                  goto LABEL_97;
                }

                v75 = v80 >> 16;
                v82 = v44;
              }

              v82->i16[0] = bswap32(v75) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v72);
          --v73;
        }

        while (v73);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 15:
      v132 = 2 * v41;
      while (1)
      {
        v133 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v134 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v135 = __rev16(*v40);
                  goto LABEL_198;
                }

LABEL_200:
                v44->i16[0] = bswap32(result) >> 16;
                v136 = v40;
              }

              else
              {
                v135 = 0xFFFF;
LABEL_198:
                result = PDAoverlayPDA_8994(bswap32(v44->u16[0]) >> 16, v135, *(v35 + 4 * *v46), v134);
                if (v3)
                {
                  v134 = WORD1(result);
                  goto LABEL_200;
                }

                v134 = result;
                v136 = v44;
              }

              v136->i16[0] = bswap32(v134) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v132);
          --v133;
        }

        while (v133);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 16:
      v67 = 2 * v41;
      while (1)
      {
        v68 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v69 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v70 = __rev16(*v40);
                  goto LABEL_73;
                }

LABEL_75:
                v44->i16[0] = bswap32(result) >> 16;
                v71 = v40;
              }

              else
              {
                v70 = 0xFFFF;
LABEL_73:
                result = PDAdarkenPDA_8996(bswap32(v44->u16[0]) >> 16, v70, *(v35 + 4 * *v46), v69);
                if (v3)
                {
                  v69 = WORD1(result);
                  goto LABEL_75;
                }

                v69 = result;
                v71 = v44;
              }

              v71->i16[0] = bswap32(v69) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v67);
          --v68;
        }

        while (v68);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 17:
      v173 = 2 * v41;
      while (1)
      {
        v174 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v175 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v176 = __rev16(*v40);
                  goto LABEL_258;
                }

LABEL_260:
                v44->i16[0] = bswap32(result) >> 16;
                v177 = v40;
              }

              else
              {
                v176 = 0xFFFF;
LABEL_258:
                result = PDAlightenPDA_8995(bswap32(v44->u16[0]) >> 16, v176, *(v35 + 4 * *v46), v175);
                if (v3)
                {
                  v175 = WORD1(result);
                  goto LABEL_260;
                }

                v175 = result;
                v177 = v44;
              }

              v177->i16[0] = bswap32(v175) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v173);
          --v174;
        }

        while (v174);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 18:
      v207 = 2 * v41;
      while (1)
      {
        v208 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v209 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v210 = __rev16(*v40);
                  goto LABEL_339;
                }

LABEL_341:
                v44->i16[0] = bswap32(result) >> 16;
                v211 = v40;
              }

              else
              {
                v210 = 0xFFFF;
LABEL_339:
                result = PDAcolordodgePDA_8997(bswap32(v44->u16[0]) >> 16, v210, *(v35 + 4 * *v46), v209);
                if (v3)
                {
                  v209 = WORD1(result);
                  goto LABEL_341;
                }

                v209 = result;
                v211 = v44;
              }

              v211->i16[0] = bswap32(v209) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v207);
          --v208;
        }

        while (v208);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 19:
      v234 = 2 * v41;
      while (1)
      {
        v235 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v236 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v237 = __rev16(*v40);
                  goto LABEL_398;
                }

LABEL_400:
                v44->i16[0] = bswap32(result) >> 16;
                v238 = v40;
              }

              else
              {
                v237 = 0xFFFF;
LABEL_398:
                result = PDAcolorburnPDA_8998(bswap32(v44->u16[0]) >> 16, v237, *(v35 + 4 * *v46), v236);
                if (v3)
                {
                  v236 = WORD1(result);
                  goto LABEL_400;
                }

                v236 = result;
                v238 = v44;
              }

              v238->i16[0] = bswap32(v236) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v234);
          --v235;
        }

        while (v235);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 20:
      v178 = 2 * v41;
      while (1)
      {
        v179 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v180 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v181 = __rev16(*v40);
                  goto LABEL_274;
                }

LABEL_276:
                v44->i16[0] = bswap32(result) >> 16;
                v182 = v40;
              }

              else
              {
                v181 = 0xFFFF;
LABEL_274:
                result = PDAsoftlightPDA_9000(bswap32(v44->u16[0]) >> 16, v181, *(v35 + 4 * *v46), v180);
                if (v3)
                {
                  v180 = WORD1(result);
                  goto LABEL_276;
                }

                v180 = result;
                v182 = v44;
              }

              v182->i16[0] = bswap32(v180) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v178);
          --v179;
        }

        while (v179);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 21:
      v189 = 2 * v41;
      while (1)
      {
        v190 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v191 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v192 = __rev16(*v40);
                  goto LABEL_297;
                }

LABEL_299:
                v44->i16[0] = bswap32(result) >> 16;
                v193 = v40;
              }

              else
              {
                v192 = 0xFFFF;
LABEL_297:
                result = PDAhardlightPDA_8999(bswap32(v44->u16[0]) >> 16, v192, *(v35 + 4 * *v46), v191);
                if (v3)
                {
                  v191 = WORD1(result);
                  goto LABEL_299;
                }

                v191 = result;
                v193 = v44;
              }

              v193->i16[0] = bswap32(v191) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v189);
          --v190;
        }

        while (v190);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 22:
      v229 = 2 * v41;
      while (1)
      {
        v230 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v231 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v232 = __rev16(*v40);
                  goto LABEL_382;
                }

LABEL_384:
                v44->i16[0] = bswap32(result) >> 16;
                v233 = v40;
              }

              else
              {
                v232 = 0xFFFF;
LABEL_382:
                result = PDAdifferencePDA_9001(bswap32(v44->u16[0]) >> 16, v232, *(v35 + 4 * *v46), v231);
                if (v3)
                {
                  v231 = WORD1(result);
                  goto LABEL_384;
                }

                v231 = result;
                v233 = v44;
              }

              v233->i16[0] = bswap32(v231) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v229);
          --v230;
        }

        while (v230);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 23:
      v239 = 2 * v41;
      while (1)
      {
        v240 = v21;
        do
        {
          if (*v46)
          {
            v241 = *(v35 + 4 * *v46);
            if (v241 >= 0x10000)
            {
              v242 = v241 >> 16;
              if (v3)
              {
                if (*v40)
                {
                  v243 = __rev16(*v40);
                  goto LABEL_414;
                }

LABEL_428:
                v44->i16[0] = bswap32(v241) >> 16;
                v250 = v40;
              }

              else
              {
                v243 = 0xFFFF;
LABEL_414:
                LODWORD(v244) = bswap32(v44->u16[0]) >> 16;
                if (*(v35 + 4 * *v46) >= v242)
                {
                  v245 = v242;
                }

                else
                {
                  v245 = *(v35 + 4 * *v46);
                }

                if (v244 >= v243)
                {
                  v244 = v243;
                }

                else
                {
                  v244 = v244;
                }

                v246 = 0xFFFF * (v244 + v245) - 2 * v245 * v244;
                if (v246 <= 4294868992)
                {
                  v247 = v246 + 0x8000;
                }

                else
                {
                  v247 = 4294868992;
                }

                v248 = v247 + (v247 >> 16);
                if (v3)
                {
                  v241 = v248 >> 16;
                  v249 = 0xFFFF * (v242 + v243) - v242 * v243;
                  if (v249 <= 4294868992)
                  {
                    v242 = v249 + 0x8000;
                  }

                  else
                  {
                    v242 = 4294868992;
                  }

                  LODWORD(v241) = ((v242 >> 16) + v242) & 0xFFFF0000 | v241;
                  LODWORD(v242) = WORD1(v241);
                  goto LABEL_428;
                }

                v242 = v248 >> 16;
                v250 = v44;
              }

              v250->i16[0] = bswap32(v242) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v239);
          --v240;
        }

        while (v240);
        v46 += v47;
        v44 = (v44 + 2 * v48);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 24:
      v116 = 2 * v41;
      while (1)
      {
        v117 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v118 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v119 = __rev16(*v40);
                  goto LABEL_168;
                }

LABEL_170:
                v44->i16[0] = bswap32(result) >> 16;
                v120 = v40;
              }

              else
              {
                v119 = 0xFFFF;
LABEL_168:
                result = PDAhuePDA_9002(bswap32(v44->u16[0]) >> 16, v119, *(v35 + 4 * *v46), v118);
                if (v3)
                {
                  v118 = WORD1(result);
                  goto LABEL_170;
                }

                v118 = result;
                v120 = v44;
              }

              v120->i16[0] = bswap32(v118) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v116);
          --v117;
        }

        while (v117);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 25:
      v111 = 2 * v41;
      while (1)
      {
        v112 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v113 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v114 = __rev16(*v40);
                  goto LABEL_152;
                }

LABEL_154:
                v44->i16[0] = bswap32(result) >> 16;
                v115 = v40;
              }

              else
              {
                v114 = 0xFFFF;
LABEL_152:
                result = PDAhuePDA_9002(bswap32(v44->u16[0]) >> 16, v114, *(v35 + 4 * *v46), v113);
                if (v3)
                {
                  v113 = WORD1(result);
                  goto LABEL_154;
                }

                v113 = result;
                v115 = v44;
              }

              v115->i16[0] = bswap32(v113) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v111);
          --v112;
        }

        while (v112);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 26:
      v251 = 2 * v41;
      while (1)
      {
        v252 = v21;
        do
        {
          if (*v46)
          {
            result = *(v35 + 4 * *v46);
            if (result >= 0x10000)
            {
              v253 = WORD1(result);
              if (v3)
              {
                if (*v40)
                {
                  v254 = __rev16(*v40);
                  goto LABEL_442;
                }

LABEL_444:
                v44->i16[0] = bswap32(result) >> 16;
                v255 = v40;
              }

              else
              {
                v254 = 0xFFFF;
LABEL_442:
                result = PDAluminosityPDA_9004(*(v35 + 4 * *v46), v253, bswap32(v44->u16[0]) >> 16, v254);
                if (v3)
                {
                  v253 = WORD1(result);
                  goto LABEL_444;
                }

                v253 = result;
                v255 = v44;
              }

              v255->i16[0] = bswap32(v253) >> 16;
            }
          }

          ++v46;
          v44 = (v44 + 2);
          v40 = (v40 + v251);
          --v252;
        }

        while (v252);
        v46 += v49;
        v44 = (v44 + 2 * v371);
        v40 += v372;
        if (!--v8)
        {
          return result;
        }
      }

    case 27:
      v62 = 2 * v41;
      break;
    default:
      return result;
  }

LABEL_50:
  v63 = v21;
  while (1)
  {
    if (!*v46)
    {
      goto LABEL_62;
    }

    result = *(v35 + 4 * *v46);
    if (result < 0x10000)
    {
      goto LABEL_62;
    }

    v64 = WORD1(result);
    if (v3)
    {
      if (!*v40)
      {
        goto LABEL_59;
      }

      v65 = __rev16(*v40);
    }

    else
    {
      v65 = 0xFFFF;
    }

    result = PDAluminosityPDA_9004(bswap32(v44->u16[0]) >> 16, v65, *(v35 + 4 * *v46), v64);
    if (!v3)
    {
      v64 = result;
      v66 = v44;
      goto LABEL_61;
    }

    v64 = WORD1(result);
LABEL_59:
    v44->i16[0] = bswap32(result) >> 16;
    v66 = v40;
LABEL_61:
    v66->i16[0] = bswap32(v64) >> 16;
LABEL_62:
    ++v46;
    v44 = (v44 + 2);
    v40 = (v40 + v62);
    if (!--v63)
    {
      v46 += v49;
      v44 = (v44 + 2 * v371);
      v40 += v372;
      if (!--v8)
      {
        return result;
      }

      goto LABEL_50;
    }
  }
}