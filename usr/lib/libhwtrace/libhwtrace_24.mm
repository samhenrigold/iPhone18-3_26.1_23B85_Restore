uint64_t *sub_298C13D54(uint64_t *result)
{
  if ((result[7] & 1) == 0)
  {
    return sub_298BDC2AC(result);
  }

  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void sub_298C13DBC(uint64_t a1)
{
  v146 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (***a1 != 1346589805)
  {
    sub_298ADC8F4(&v135, ***(a1 + 16));
    LOWORD(v144) = 6;
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v135;
    }

    else
    {
      v5 = v135.__r_.__value_.__r.__words[0];
    }

    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v135.__r_.__value_.__l.__size_;
    }

    if (!sub_298B88E98(v5, size, 0))
    {
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v135;
      }

      else
      {
        v97 = v135.__r_.__value_.__r.__words[0];
      }

      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v98 = v135.__r_.__value_.__l.__size_;
      }

      sub_298B88F28(v97, v98, &v143);
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      v135 = v143;
    }

    v145 = v135;
    memset(&v135, 0, sizeof(v135));
    sub_298B89CC0(v2, "magic", 5uLL);
    sub_298B891F0(v2, &v144);
    --*(v2 + 8);
    if (LOWORD(v144) == 8)
    {
      sub_298B8A314(&v145);
      if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_441;
    }

    if (LOWORD(v144) == 7)
    {
      sub_298B8A370(&v145);
    }

    else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_441:
      operator delete(v135.__r_.__value_.__l.__data_);
LABEL_45:
      v10 = *(a1 + 8);
      sub_298ADC8F4(&v134, *(**(a1 + 16) + 4));
      LOWORD(v144) = 6;
      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v134;
      }

      else
      {
        v11 = v134.__r_.__value_.__r.__words[0];
      }

      if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = SHIBYTE(v134.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v12 = v134.__r_.__value_.__l.__size_;
      }

      if (!sub_298B88E98(v11, v12, 0))
      {
        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v101 = &v134;
        }

        else
        {
          v101 = v134.__r_.__value_.__r.__words[0];
        }

        if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v102 = SHIBYTE(v134.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v102 = v134.__r_.__value_.__l.__size_;
        }

        sub_298B88F28(v101, v102, &v143);
        if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v134.__r_.__value_.__l.__data_);
        }

        v134 = v143;
      }

      v145 = v134;
      memset(&v134, 0, sizeof(v134));
      sub_298B89CC0(v10, "version", 7uLL);
      sub_298B891F0(v10, &v144);
      --*(v10 + 8);
      if (LOWORD(v144) == 8)
      {
        sub_298B8A314(&v145);
        if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

        goto LABEL_445;
      }

      if (LOWORD(v144) == 7)
      {
        sub_298B8A370(&v145);
      }

      else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v145.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_75;
        }

LABEL_445:
        operator delete(v134.__r_.__value_.__l.__data_);
LABEL_75:
        v16 = *(a1 + 8);
        sub_298ADC8F4(&v133, *(**(a1 + 16) + 8));
        LOWORD(v144) = 6;
        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v133;
        }

        else
        {
          v17 = v133.__r_.__value_.__r.__words[0];
        }

        if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v133.__r_.__value_.__l.__size_;
        }

        if (!sub_298B88E98(v17, v18, 0))
        {
          if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v105 = &v133;
          }

          else
          {
            v105 = v133.__r_.__value_.__r.__words[0];
          }

          if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v106 = SHIBYTE(v133.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v106 = v133.__r_.__value_.__l.__size_;
          }

          sub_298B88F28(v105, v106, &v143);
          if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v133.__r_.__value_.__l.__data_);
          }

          v133 = v143;
        }

        v145 = v133;
        memset(&v133, 0, sizeof(v133));
        sub_298B89CC0(v16, "trace_packet_bytes", 0x12uLL);
        sub_298B891F0(v16, &v144);
        --*(v16 + 8);
        if (LOWORD(v144) == 8)
        {
          sub_298B8A314(&v145);
          if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_105;
          }

          goto LABEL_449;
        }

        if (LOWORD(v144) == 7)
        {
          sub_298B8A370(&v145);
        }

        else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v145.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_105;
          }

LABEL_449:
          operator delete(v133.__r_.__value_.__l.__data_);
LABEL_105:
          v22 = *(a1 + 8);
          sub_298ADC8F4(&v132, *(**(a1 + 16) + 16));
          LOWORD(v144) = 6;
          if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v132;
          }

          else
          {
            v23 = v132.__r_.__value_.__r.__words[0];
          }

          if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = SHIBYTE(v132.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = v132.__r_.__value_.__l.__size_;
          }

          if (!sub_298B88E98(v23, v24, 0))
          {
            if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v109 = &v132;
            }

            else
            {
              v109 = v132.__r_.__value_.__r.__words[0];
            }

            if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v110 = SHIBYTE(v132.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v110 = v132.__r_.__value_.__l.__size_;
            }

            sub_298B88F28(v109, v110, &v143);
            if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v132.__r_.__value_.__l.__data_);
            }

            v132 = v143;
          }

          v145 = v132;
          memset(&v132, 0, sizeof(v132));
          sub_298B89CC0(v22, "buffer_size", 0xBuLL);
          sub_298B891F0(v22, &v144);
          --*(v22 + 8);
          if (LOWORD(v144) == 8)
          {
            sub_298B8A314(&v145);
            if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_135;
            }

            goto LABEL_453;
          }

          if (LOWORD(v144) == 7)
          {
            sub_298B8A370(&v145);
          }

          else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v145.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_135;
            }

LABEL_453:
            operator delete(v132.__r_.__value_.__l.__data_);
LABEL_135:
            v28 = *(a1 + 8);
            sub_298ADC8F4(&v131, *(**(a1 + 16) + 24));
            LOWORD(v144) = 6;
            if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v131;
            }

            else
            {
              v29 = v131.__r_.__value_.__r.__words[0];
            }

            if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v30 = v131.__r_.__value_.__l.__size_;
            }

            if (!sub_298B88E98(v29, v30, 0))
            {
              if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v113 = &v131;
              }

              else
              {
                v113 = v131.__r_.__value_.__r.__words[0];
              }

              if ((v131.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v114 = SHIBYTE(v131.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v114 = v131.__r_.__value_.__l.__size_;
              }

              sub_298B88F28(v113, v114, &v143);
              if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v131.__r_.__value_.__l.__data_);
              }

              v131 = v143;
            }

            v145 = v131;
            memset(&v131, 0, sizeof(v131));
            sub_298B89CC0(v28, "num_cpus", 8uLL);
            sub_298B891F0(v28, &v144);
            --*(v28 + 8);
            if (LOWORD(v144) == 8)
            {
              sub_298B8A314(&v145);
              if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_165;
              }

              goto LABEL_457;
            }

            if (LOWORD(v144) == 7)
            {
              sub_298B8A370(&v145);
            }

            else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v145.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_165;
              }

LABEL_457:
              operator delete(v131.__r_.__value_.__l.__data_);
LABEL_165:
              v34 = *(a1 + 8);
              sub_298ADC8F4(&v130, *(**(a1 + 16) + 28));
              LOWORD(v144) = 6;
              if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v35 = &v130;
              }

              else
              {
                v35 = v130.__r_.__value_.__r.__words[0];
              }

              if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v36 = SHIBYTE(v130.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v36 = v130.__r_.__value_.__l.__size_;
              }

              if (!sub_298B88E98(v35, v36, 0))
              {
                if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v117 = &v130;
                }

                else
                {
                  v117 = v130.__r_.__value_.__r.__words[0];
                }

                if ((v130.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v118 = SHIBYTE(v130.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v118 = v130.__r_.__value_.__l.__size_;
                }

                sub_298B88F28(v117, v118, &v143);
                if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v130.__r_.__value_.__l.__data_);
                }

                v130 = v143;
              }

              v145 = v130;
              memset(&v130, 0, sizeof(v130));
              sub_298B89CC0(v34, "num_clusters", 0xCuLL);
              sub_298B891F0(v34, &v144);
              --*(v34 + 8);
              if (LOWORD(v144) == 8)
              {
                sub_298B8A314(&v145);
                if ((SHIBYTE(v130.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_195;
                }

                goto LABEL_461;
              }

              if (LOWORD(v144) == 7)
              {
                sub_298B8A370(&v145);
              }

              else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v145.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v130.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_195;
                }

LABEL_461:
                operator delete(v130.__r_.__value_.__l.__data_);
LABEL_195:
                v40 = *(a1 + 8);
                sub_298ADC8F4(&v129, *(**(a1 + 16) + 32));
                LOWORD(v144) = 6;
                if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v41 = &v129;
                }

                else
                {
                  v41 = v129.__r_.__value_.__r.__words[0];
                }

                if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v42 = SHIBYTE(v129.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v42 = v129.__r_.__value_.__l.__size_;
                }

                if (!sub_298B88E98(v41, v42, 0))
                {
                  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v121 = &v129;
                  }

                  else
                  {
                    v121 = v129.__r_.__value_.__r.__words[0];
                  }

                  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v122 = SHIBYTE(v129.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v122 = v129.__r_.__value_.__l.__size_;
                  }

                  sub_298B88F28(v121, v122, &v143);
                  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v129.__r_.__value_.__l.__data_);
                  }

                  v129 = v143;
                }

                v145 = v129;
                memset(&v129, 0, sizeof(v129));
                sub_298B89CC0(v40, "clusters_size", 0xDuLL);
                sub_298B891F0(v40, &v144);
                --*(v40 + 8);
                if (LOWORD(v144) == 8)
                {
                  sub_298B8A314(&v145);
                  if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_225;
                  }

                  goto LABEL_465;
                }

                if (LOWORD(v144) == 7)
                {
                  sub_298B8A370(&v145);
                }

                else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v145.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_225;
                  }

LABEL_465:
                  operator delete(v129.__r_.__value_.__l.__data_);
LABEL_225:
                  v46 = *(a1 + 8);
                  v47 = *(a1 + 16);
                  sub_298B89CC0(v46, "clusters", 8uLL);
                  sub_298B89A80(v46);
                  v48 = *v47;
                  v49 = *(*v47 + 28);
                  if (v49)
                  {
                    v50 = v48 + 48 * v49 + 40;
                    v51 = v48 + 40;
                    while (1)
                    {
                      sub_298B89BA0(v46);
                      sub_298ADC8F4(&v142, *v51);
                      LOWORD(v144) = 6;
                      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v52 = &v142;
                      }

                      else
                      {
                        v52 = v142.__r_.__value_.__r.__words[0];
                      }

                      if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v53 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v53 = v142.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v52, v53, 0))
                      {
                        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v66 = &v142;
                        }

                        else
                        {
                          v66 = v142.__r_.__value_.__r.__words[0];
                        }

                        if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v67 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v67 = v142.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v66, v67, &v143);
                        if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v142.__r_.__value_.__l.__data_);
                        }

                        v142 = v143;
                      }

                      v145 = v142;
                      memset(&v142, 0, sizeof(v142));
                      sub_298B89CC0(v46, "buffer_size", 0xBuLL);
                      sub_298B891F0(v46, &v144);
                      --*(v46 + 8);
                      if (LOWORD(v144) == 8)
                      {
                        sub_298B8A314(&v145);
                        if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_245;
                        }

                        goto LABEL_333;
                      }

                      if (LOWORD(v144) == 7)
                      {
                        break;
                      }

                      if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_244;
                      }

                      operator delete(v145.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_245;
                      }

LABEL_333:
                      operator delete(v142.__r_.__value_.__l.__data_);
LABEL_245:
                      sub_298ADC8F4(&v141, *(v51 + 8));
                      LOWORD(v144) = 6;
                      if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v54 = &v141;
                      }

                      else
                      {
                        v54 = v141.__r_.__value_.__r.__words[0];
                      }

                      if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v55 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v55 = v141.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v54, v55, 0))
                      {
                        if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v68 = &v141;
                        }

                        else
                        {
                          v68 = v141.__r_.__value_.__r.__words[0];
                        }

                        if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v69 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v69 = v141.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v68, v69, &v143);
                        if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v141.__r_.__value_.__l.__data_);
                        }

                        v141 = v143;
                      }

                      v145 = v141;
                      memset(&v141, 0, sizeof(v141));
                      sub_298B89CC0(v46, "buffer_fill_size", 0x10uLL);
                      sub_298B891F0(v46, &v144);
                      --*(v46 + 8);
                      if (LOWORD(v144) == 8)
                      {
                        sub_298B8A314(&v145);
                        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_260;
                        }

                        goto LABEL_335;
                      }

                      if (LOWORD(v144) == 7)
                      {
                        sub_298B8A370(&v145);
LABEL_259:
                        if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_260;
                        }

                        goto LABEL_335;
                      }

                      if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_259;
                      }

                      operator delete(v145.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_260;
                      }

LABEL_335:
                      operator delete(v141.__r_.__value_.__l.__data_);
LABEL_260:
                      sub_298ADC8F4(&v140, *(v51 + 16));
                      LOWORD(v144) = 6;
                      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v56 = &v140;
                      }

                      else
                      {
                        v56 = v140.__r_.__value_.__r.__words[0];
                      }

                      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v57 = SHIBYTE(v140.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v57 = v140.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v56, v57, 0))
                      {
                        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v70 = &v140;
                        }

                        else
                        {
                          v70 = v140.__r_.__value_.__r.__words[0];
                        }

                        if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v71 = SHIBYTE(v140.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v71 = v140.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v70, v71, &v143);
                        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v140.__r_.__value_.__l.__data_);
                        }

                        v140 = v143;
                      }

                      v145 = v140;
                      memset(&v140, 0, sizeof(v140));
                      sub_298B89CC0(v46, "cluster_id", 0xAuLL);
                      sub_298B891F0(v46, &v144);
                      --*(v46 + 8);
                      if (LOWORD(v144) == 8)
                      {
                        sub_298B8A314(&v145);
                        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_275;
                        }

                        goto LABEL_337;
                      }

                      if (LOWORD(v144) == 7)
                      {
                        sub_298B8A370(&v145);
LABEL_274:
                        if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_275;
                        }

                        goto LABEL_337;
                      }

                      if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_274;
                      }

                      operator delete(v145.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_275;
                      }

LABEL_337:
                      operator delete(v140.__r_.__value_.__l.__data_);
LABEL_275:
                      sub_298ADC8F4(&__p, *(v51 + 20));
                      LOWORD(v144) = 6;
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        p_p = &__p;
                      }

                      else
                      {
                        p_p = __p.__r_.__value_.__r.__words[0];
                      }

                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v59 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v59 = __p.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(p_p, v59, 0))
                      {
                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v72 = &__p;
                        }

                        else
                        {
                          v72 = __p.__r_.__value_.__r.__words[0];
                        }

                        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v73 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v73 = __p.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v72, v73, &v143);
                        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__p.__r_.__value_.__l.__data_);
                        }

                        __p = v143;
                      }

                      v145 = __p;
                      memset(&__p, 0, sizeof(__p));
                      sub_298B89CC0(v46, "num_cpus", 8uLL);
                      sub_298B891F0(v46, &v144);
                      --*(v46 + 8);
                      if (LOWORD(v144) == 8)
                      {
                        sub_298B8A314(&v145);
                        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_290;
                        }

                        goto LABEL_339;
                      }

                      if (LOWORD(v144) == 7)
                      {
                        sub_298B8A370(&v145);
LABEL_289:
                        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_290;
                        }

                        goto LABEL_339;
                      }

                      if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_289;
                      }

                      operator delete(v145.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_290;
                      }

LABEL_339:
                      operator delete(__p.__r_.__value_.__l.__data_);
LABEL_290:
                      sub_298ADC8F4(&v138, *(v51 + 24));
                      LOWORD(v144) = 6;
                      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v60 = &v138;
                      }

                      else
                      {
                        v60 = v138.__r_.__value_.__r.__words[0];
                      }

                      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v61 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v61 = v138.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v60, v61, 0))
                      {
                        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v74 = &v138;
                        }

                        else
                        {
                          v74 = v138.__r_.__value_.__r.__words[0];
                        }

                        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v75 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v75 = v138.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v74, v75, &v143);
                        if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v138.__r_.__value_.__l.__data_);
                        }

                        v138 = v143;
                      }

                      v145 = v138;
                      memset(&v138, 0, sizeof(v138));
                      sub_298B89CC0(v46, "cluster_type", 0xCuLL);
                      sub_298B891F0(v46, &v144);
                      --*(v46 + 8);
                      if (LOWORD(v144) == 8)
                      {
                        sub_298B8A314(&v145);
                        if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_305;
                        }

                        goto LABEL_341;
                      }

                      if (LOWORD(v144) == 7)
                      {
                        sub_298B8A370(&v145);
LABEL_304:
                        if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_305;
                        }

                        goto LABEL_341;
                      }

                      if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_304;
                      }

                      operator delete(v145.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_305;
                      }

LABEL_341:
                      operator delete(v138.__r_.__value_.__l.__data_);
LABEL_305:
                      sub_298ADC8F4(&v137, *(v51 + 32));
                      LOWORD(v144) = 6;
                      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v62 = &v137;
                      }

                      else
                      {
                        v62 = v137.__r_.__value_.__r.__words[0];
                      }

                      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v63 = SHIBYTE(v137.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v63 = v137.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v62, v63, 0))
                      {
                        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v76 = &v137;
                        }

                        else
                        {
                          v76 = v137.__r_.__value_.__r.__words[0];
                        }

                        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v77 = SHIBYTE(v137.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v77 = v137.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v76, v77, &v143);
                        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v137.__r_.__value_.__l.__data_);
                        }

                        v137 = v143;
                      }

                      v145 = v137;
                      memset(&v137, 0, sizeof(v137));
                      sub_298B89CC0(v46, "trace_ctl_cfg_raw", 0x11uLL);
                      sub_298B891F0(v46, &v144);
                      --*(v46 + 8);
                      if (LOWORD(v144) == 8)
                      {
                        sub_298B8A314(&v145);
                        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                        {
LABEL_343:
                          operator delete(v137.__r_.__value_.__l.__data_);
                        }
                      }

                      else
                      {
                        if (LOWORD(v144) == 7)
                        {
                          sub_298B8A370(&v145);
                        }

                        else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v145.__r_.__value_.__l.__data_);
                          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_343;
                          }

                          goto LABEL_320;
                        }

                        if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
                        {
                          goto LABEL_343;
                        }
                      }

LABEL_320:
                      sub_298ADC8F4(&v136, *(v51 + 40));
                      LOWORD(v144) = 6;
                      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v64 = &v136;
                      }

                      else
                      {
                        v64 = v136.__r_.__value_.__r.__words[0];
                      }

                      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v65 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v65 = v136.__r_.__value_.__l.__size_;
                      }

                      if (!sub_298B88E98(v64, v65, 0))
                      {
                        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v78 = &v136;
                        }

                        else
                        {
                          v78 = v136.__r_.__value_.__r.__words[0];
                        }

                        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v79 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v79 = v136.__r_.__value_.__l.__size_;
                        }

                        sub_298B88F28(v78, v79, &v143);
                        if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v136.__r_.__value_.__l.__data_);
                        }

                        v136 = v143;
                      }

                      v145 = v136;
                      memset(&v136, 0, sizeof(v136));
                      sub_298B89CC0(v46, "trace_core_cfg_raw", 0x12uLL);
                      sub_298B891F0(v46, &v144);
                      --*(v46 + 8);
                      if (LOWORD(v144) == 8)
                      {
                        sub_298B8A314(&v145);
                      }

                      else if (LOWORD(v144) == 7)
                      {
                        sub_298B8A370(&v145);
                      }

                      else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v145.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v136.__r_.__value_.__l.__data_);
                        sub_298B89C2C(v46);
                        v51 += 48;
                        if (v51 == v50)
                        {
                          goto LABEL_410;
                        }
                      }

                      else
                      {
                        sub_298B89C2C(v46);
                        v51 += 48;
                        if (v51 == v50)
                        {
                          goto LABEL_410;
                        }
                      }
                    }

                    sub_298B8A370(&v145);
LABEL_244:
                    if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_245;
                    }

                    goto LABEL_333;
                  }

LABEL_410:
                  sub_298B89B0C(v46);
                  --*(v46 + 8);
                  v80 = *(a1 + 8);
                  v81 = **(a1 + 16);
                  if (*(v81 + 4) >= 2u)
                  {
                    v82 = *(v81 + *(v81 + 32) + 40);
                  }

                  else
                  {
                    v82 = 0;
                  }

                  sub_298ADC8F4(&v142, v82);
                  LOWORD(v144) = 6;
                  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v83 = &v142;
                  }

                  else
                  {
                    v83 = v142.__r_.__value_.__r.__words[0];
                  }

                  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v84 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v84 = v142.__r_.__value_.__l.__size_;
                  }

                  if (!sub_298B88E98(v83, v84, 0))
                  {
                    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v125 = &v142;
                    }

                    else
                    {
                      v125 = v142.__r_.__value_.__r.__words[0];
                    }

                    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v126 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v126 = v142.__r_.__value_.__l.__size_;
                    }

                    sub_298B88F28(v125, v126, &v143);
                    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v142.__r_.__value_.__l.__data_);
                    }

                    v142 = v143;
                  }

                  v145 = v142;
                  memset(&v142, 0, sizeof(v142));
                  sub_298B89CC0(v80, "pcarveout_va", 0xCuLL);
                  sub_298B891F0(v80, &v144);
                  --*(v80 + 8);
                  if (LOWORD(v144) != 8)
                  {
                    if (LOWORD(v144) == 7)
                    {
                      sub_298B8A370(&v145);
                    }

                    else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v145.__r_.__value_.__l.__data_);
                      if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                      {
LABEL_469:
                        operator delete(v142.__r_.__value_.__l.__data_);
                        v87 = *(a1 + 8);
                        v88 = **(a1 + 16);
                        if (*(v88 + 4) >= 3u)
                        {
                          goto LABEL_470;
                        }

                        goto LABEL_436;
                      }

LABEL_435:
                      v87 = *(a1 + 8);
                      v88 = **(a1 + 16);
                      if (*(v88 + 4) >= 3u)
                      {
LABEL_470:
                        v89 = *(v88 + *(v88 + 32) + 48);
LABEL_471:
                        sub_298ADC8F4(&v141, v89);
                        LOWORD(v144) = 6;
                        if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v90 = &v141;
                        }

                        else
                        {
                          v90 = v141.__r_.__value_.__r.__words[0];
                        }

                        if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v91 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v91 = v141.__r_.__value_.__l.__size_;
                        }

                        if (!sub_298B88E98(v90, v91, 0))
                        {
                          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v127 = &v141;
                          }

                          else
                          {
                            v127 = v141.__r_.__value_.__r.__words[0];
                          }

                          if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v128 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
                          }

                          else
                          {
                            v128 = v141.__r_.__value_.__l.__size_;
                          }

                          sub_298B88F28(v127, v128, &v143);
                          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v141.__r_.__value_.__l.__data_);
                          }

                          v141 = v143;
                        }

                        v145 = v141;
                        memset(&v141, 0, sizeof(v141));
                        sub_298B89CC0(v87, "mach_continuous_time_ref", 0x18uLL);
                        sub_298B891F0(v87, &v144);
                        --*(v87 + 8);
                        if (LOWORD(v144) == 8)
                        {
                          sub_298B8A314(&v145);
                          if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            return;
                          }
                        }

                        else
                        {
                          if (LOWORD(v144) == 7)
                          {
                            sub_298B8A370(&v145);
                          }

                          else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v145.__r_.__value_.__l.__data_);
                            if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
                              return;
                            }

                            goto LABEL_486;
                          }

                          if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            return;
                          }
                        }

LABEL_486:
                        v92 = v141.__r_.__value_.__r.__words[0];
LABEL_487:
                        operator delete(v92);
                        return;
                      }

LABEL_436:
                      v89 = 0;
                      goto LABEL_471;
                    }

                    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                    {
                      goto LABEL_469;
                    }

                    goto LABEL_435;
                  }

                  sub_298B8A314(&v145);
                  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_469;
                  }

                  goto LABEL_435;
                }

                if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_225;
                }

                goto LABEL_465;
              }

              if ((SHIBYTE(v130.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_195;
              }

              goto LABEL_461;
            }

            if ((SHIBYTE(v131.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_165;
            }

            goto LABEL_457;
          }

          if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_135;
          }

          goto LABEL_453;
        }

        if ((SHIBYTE(v133.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_105;
        }

        goto LABEL_449;
      }

      if ((SHIBYTE(v134.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_445;
    }

    if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_441;
  }

  sub_298ADC8F4(&v142, 0x5043546DuLL);
  LOWORD(v144) = 6;
  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v142;
  }

  else
  {
    v3 = v142.__r_.__value_.__r.__words[0];
  }

  if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v4 = v142.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v3, v4, 0))
  {
    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v95 = &v142;
    }

    else
    {
      v95 = v142.__r_.__value_.__r.__words[0];
    }

    if ((v142.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v96 = SHIBYTE(v142.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v96 = v142.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v95, v96, &v143);
    if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v142.__r_.__value_.__l.__data_);
    }

    v142 = v143;
  }

  v145 = v142;
  memset(&v142, 0, sizeof(v142));
  sub_298B89CC0(v2, "magic", 5uLL);
  sub_298B891F0(v2, &v144);
  --*(v2 + 8);
  if (LOWORD(v144) == 8)
  {
    sub_298B8A314(&v145);
    if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_439;
  }

  if (LOWORD(v144) == 7)
  {
    sub_298B8A370(&v145);
    goto LABEL_29;
  }

  if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_439;
  }

  operator delete(v145.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v142.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_439:
  operator delete(v142.__r_.__value_.__l.__data_);
LABEL_30:
  v7 = *(a1 + 8);
  sub_298ADC8F4(&v141, *(**a1 + 4));
  LOWORD(v144) = 6;
  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v141;
  }

  else
  {
    v8 = v141.__r_.__value_.__r.__words[0];
  }

  if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v141.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v8, v9, 0))
  {
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v99 = &v141;
    }

    else
    {
      v99 = v141.__r_.__value_.__r.__words[0];
    }

    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v100 = SHIBYTE(v141.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v100 = v141.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v99, v100, &v143);
    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    v141 = v143;
  }

  v145 = v141;
  memset(&v141, 0, sizeof(v141));
  sub_298B89CC0(v7, "version_major", 0xDuLL);
  sub_298B891F0(v7, &v144);
  --*(v7 + 8);
  if (LOWORD(v144) == 8)
  {
    sub_298B8A314(&v145);
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_443;
  }

  if (LOWORD(v144) == 7)
  {
    sub_298B8A370(&v145);
    goto LABEL_59;
  }

  if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_59:
    if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_443;
  }

  operator delete(v145.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v141.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_443:
  operator delete(v141.__r_.__value_.__l.__data_);
LABEL_60:
  v13 = *(a1 + 8);
  sub_298ADC8F4(&v140, *(**a1 + 6));
  LOWORD(v144) = 6;
  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v140;
  }

  else
  {
    v14 = v140.__r_.__value_.__r.__words[0];
  }

  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = SHIBYTE(v140.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v140.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v14, v15, 0))
  {
    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v103 = &v140;
    }

    else
    {
      v103 = v140.__r_.__value_.__r.__words[0];
    }

    if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = SHIBYTE(v140.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v104 = v140.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v103, v104, &v143);
    if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v140.__r_.__value_.__l.__data_);
    }

    v140 = v143;
  }

  v145 = v140;
  memset(&v140, 0, sizeof(v140));
  sub_298B89CC0(v13, "version_minor", 0xDuLL);
  sub_298B891F0(v13, &v144);
  --*(v13 + 8);
  if (LOWORD(v144) == 8)
  {
    sub_298B8A314(&v145);
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_447;
  }

  if (LOWORD(v144) == 7)
  {
    sub_298B8A370(&v145);
    goto LABEL_89;
  }

  if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_89:
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_447;
  }

  operator delete(v145.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_90;
  }

LABEL_447:
  operator delete(v140.__r_.__value_.__l.__data_);
LABEL_90:
  v19 = *(a1 + 8);
  sub_298ADC8F4(&__p, *(**a1 + 8));
  LOWORD(v144) = 6;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v20, v21, 0))
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v107 = &__p;
    }

    else
    {
      v107 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v108 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v108 = __p.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v107, v108, &v143);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v143;
  }

  v145 = __p;
  memset(&__p, 0, sizeof(__p));
  sub_298B89CC0(v19, "midr", 4uLL);
  sub_298B891F0(v19, &v144);
  --*(v19 + 8);
  if (LOWORD(v144) == 8)
  {
    sub_298B8A314(&v145);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_451;
  }

  if (LOWORD(v144) == 7)
  {
    sub_298B8A370(&v145);
    goto LABEL_119;
  }

  if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_119:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_451;
  }

  operator delete(v145.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_120;
  }

LABEL_451:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_120:
  v25 = *(a1 + 8);
  sub_298ADC8F4(&v138, *(**a1 + 16));
  LOWORD(v144) = 6;
  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v138;
  }

  else
  {
    v26 = v138.__r_.__value_.__r.__words[0];
  }

  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = v138.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v26, v27, 0))
  {
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = &v138;
    }

    else
    {
      v111 = v138.__r_.__value_.__r.__words[0];
    }

    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v112 = SHIBYTE(v138.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v112 = v138.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v111, v112, &v143);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    v138 = v143;
  }

  v145 = v138;
  memset(&v138, 0, sizeof(v138));
  sub_298B89CC0(v25, "buffer_virt_addr", 0x10uLL);
  sub_298B891F0(v25, &v144);
  --*(v25 + 8);
  if (LOWORD(v144) == 8)
  {
    sub_298B8A314(&v145);
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_455;
  }

  if (LOWORD(v144) == 7)
  {
    sub_298B8A370(&v145);
    goto LABEL_149;
  }

  if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_149:
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_455;
  }

  operator delete(v145.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_150;
  }

LABEL_455:
  operator delete(v138.__r_.__value_.__l.__data_);
LABEL_150:
  v31 = *(a1 + 8);
  sub_298ADC8F4(&v137, *(**a1 + 24));
  LOWORD(v144) = 6;
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &v137;
  }

  else
  {
    v32 = v137.__r_.__value_.__r.__words[0];
  }

  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = SHIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v137.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v32, v33, 0))
  {
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v115 = &v137;
    }

    else
    {
      v115 = v137.__r_.__value_.__r.__words[0];
    }

    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = SHIBYTE(v137.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v116 = v137.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v115, v116, &v143);
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }

    v137 = v143;
  }

  v145 = v137;
  memset(&v137, 0, sizeof(v137));
  sub_298B89CC0(v31, "buffer_phys_addr", 0x10uLL);
  sub_298B891F0(v31, &v144);
  --*(v31 + 8);
  if (LOWORD(v144) == 8)
  {
    sub_298B8A314(&v145);
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_459;
  }

  if (LOWORD(v144) == 7)
  {
    sub_298B8A370(&v145);
    goto LABEL_179;
  }

  if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_179:
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_459;
  }

  operator delete(v145.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_180;
  }

LABEL_459:
  operator delete(v137.__r_.__value_.__l.__data_);
LABEL_180:
  v37 = *(a1 + 8);
  sub_298ADC8F4(&v136, *(**a1 + 32));
  LOWORD(v144) = 6;
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v136;
  }

  else
  {
    v38 = v136.__r_.__value_.__r.__words[0];
  }

  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v136.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v38, v39, 0))
  {
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v119 = &v136;
    }

    else
    {
      v119 = v136.__r_.__value_.__r.__words[0];
    }

    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v120 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v120 = v136.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v119, v120, &v143);
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v136.__r_.__value_.__l.__data_);
    }

    v136 = v143;
  }

  v145 = v136;
  memset(&v136, 0, sizeof(v136));
  sub_298B89CC0(v37, "buffer_size", 0xBuLL);
  sub_298B891F0(v37, &v144);
  --*(v37 + 8);
  if (LOWORD(v144) == 8)
  {
    sub_298B8A314(&v145);
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_463;
  }

  if (LOWORD(v144) == 7)
  {
    sub_298B8A370(&v145);
    goto LABEL_209;
  }

  if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_209:
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_463;
  }

  operator delete(v145.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_210;
  }

LABEL_463:
  operator delete(v136.__r_.__value_.__l.__data_);
LABEL_210:
  v43 = *(a1 + 8);
  sub_298ADC8F4(&v135, *(**a1 + 40));
  LOWORD(v144) = 6;
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v135;
  }

  else
  {
    v44 = v135.__r_.__value_.__r.__words[0];
  }

  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v135.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v44, v45, 0))
  {
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v123 = &v135;
    }

    else
    {
      v123 = v135.__r_.__value_.__r.__words[0];
    }

    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v124 = SHIBYTE(v135.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v124 = v135.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v123, v124, &v143);
    if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v135.__r_.__value_.__l.__data_);
    }

    v135 = v143;
  }

  v145 = v135;
  memset(&v135, 0, sizeof(v135));
  sub_298B89CC0(v43, "count", 5uLL);
  sub_298B891F0(v43, &v144);
  --*(v43 + 8);
  if (LOWORD(v144) == 8)
  {
    sub_298B8A314(&v145);
    if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_428;
    }

    goto LABEL_467;
  }

  if (LOWORD(v144) == 7)
  {
    sub_298B8A370(&v145);
    goto LABEL_427;
  }

  if (LOWORD(v144) != 6 || (SHIBYTE(v145.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_427:
    if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_428;
    }

    goto LABEL_467;
  }

  operator delete(v145.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_428;
  }

LABEL_467:
  operator delete(v135.__r_.__value_.__l.__data_);
LABEL_428:
  v85 = *(a1 + 8);
  v86 = *(**a1 + 48) & 1;
  LOWORD(v144) = 1;
  v145.__r_.__value_.__s.__data_[0] = v86;
  sub_298B89CC0(v85, "wrap", 4uLL);
  sub_298B891F0(v85, &v144);
  --*(v85 + 8);
  if (LOWORD(v144) == 8)
  {
    sub_298B8A314(&v145);
  }

  else if (LOWORD(v144) == 7)
  {
    sub_298B8A370(&v145);
  }

  else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  v93 = *(a1 + 8);
  v94 = (*(**a1 + 48) >> 1) & 1;
  LOWORD(v144) = 1;
  v145.__r_.__value_.__s.__data_[0] = v94;
  sub_298B89CC0(v93, "streaming", 9uLL);
  sub_298B891F0(v93, &v144);
  --*(v93 + 8);
  if (LOWORD(v144) == 8)
  {
    sub_298B8A314(&v145);
  }

  else if (LOWORD(v144) == 7)
  {
    sub_298B8A370(&v145);
  }

  else if (LOWORD(v144) == 6 && SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    v92 = v145.__r_.__value_.__r.__words[0];
    goto LABEL_487;
  }
}

const char *sub_298C15CC4(int a1)
{
  if ((a1 - 1) > 9)
  {
    return "unknown image type";
  }

  else
  {
    return off_29EEB6448[a1 - 1];
  }
}

uint64_t sub_298C15CFC(uint64_t a1, uint64_t a2)
{
  v38 = "Type";
  v39 = 4;
  v41 = 0;
  if (sub_298B89FD8(a2, &v38, &v41) && v41 != *a2 + 56 * *(a2 + 16))
  {
    v5 = *(v41 + 24);
    if (v5 == 5)
    {
      v6 = *(v41 + 32);
      v2 = *(v41 + 40);
LABEL_5:
      v7 = 1;
      goto LABEL_14;
    }

    if (v5 == 6)
    {
      v8 = *(v41 + 55);
      if (v8 >= 0)
      {
        v6 = (v41 + 32);
      }

      else
      {
        v6 = *(v41 + 32);
      }

      if (v8 >= 0)
      {
        v2 = *(v41 + 55);
      }

      else
      {
        v2 = *(v41 + 40);
      }

      goto LABEL_5;
    }
  }

  v6 = 0;
  v7 = 0;
LABEL_14:
  v38 = "Name";
  v39 = 4;
  v41 = 0;
  if (!sub_298B89FD8(a2, &v38, &v41) || v41 == *a2 + 56 * *(a2 + 16))
  {
    goto LABEL_24;
  }

  v9 = *(v41 + 24);
  if (v9 == 5)
  {
    v11 = *(v41 + 32);
    v10 = *(v41 + 40);
    goto LABEL_25;
  }

  if (v9 == 6)
  {
    v11 = *(v41 + 32);
    v12 = *(v41 + 55);
    if (v12 >= 0)
    {
      v11 = (v41 + 32);
    }

    v10 = *(v41 + 40);
    if (v12 >= 0)
    {
      v10 = *(v41 + 55);
    }
  }

  else
  {
LABEL_24:
    v11 = "unknown image type";
    v10 = 18;
  }

LABEL_25:
  if (v7)
  {
    v13 = v6;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v7)
    {
      v14 = v2;
    }

    else
    {
      v14 = v10;
    }

    sub_298BDB508(&v38, v13, v14);
    v15 = HIBYTE(v40);
    v17 = v38;
    v16 = v39;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  if ((v15 & 0x80u) == 0)
  {
    v18 = &v38;
  }

  else
  {
    v18 = v17;
  }

  if ((v15 & 0x80u) == 0)
  {
    v19 = v15;
  }

  else
  {
    v19 = v16;
  }

  if (v19 == 18)
  {
    memcmp("unknown image type", v18, 0x12uLL);
LABEL_41:
    v20 = 0;
    goto LABEL_42;
  }

  __s2 = v18;
  if (v19 <= 16)
  {
    if (v19 > 4)
    {
      if (v19 == 5)
      {
        if (memcmp("RTKit", v18, 5uLL))
        {
          goto LABEL_41;
        }

        v20 = 9;
      }

      else
      {
        if (v19 != 6 || memcmp("kernel", v18, 6uLL))
        {
          goto LABEL_41;
        }

        v20 = 4;
      }
    }

    else if (v19 == 3)
    {
      if (!memcmp("TXM", v18, 3uLL))
      {
        v20 = 7;
      }

      else if (!memcmp("SEP", __s2, 3uLL))
      {
        v20 = 8;
      }

      else
      {
        if (memcmp("CL4", __s2, 3uLL))
        {
          goto LABEL_41;
        }

        v20 = 10;
      }
    }

    else
    {
      if (v19 != 4 || memcmp("SPTM", v18, 4uLL))
      {
        goto LABEL_41;
      }

      v20 = 6;
    }
  }

  else if (v19 > 21)
  {
    if (v19 == 22)
    {
      if (memcmp("boot kernel collection", v18, 0x16uLL))
      {
        goto LABEL_41;
      }

      v20 = 5;
    }

    else if (v19 == 24)
    {
      if (memcmp("dyld shared cache object", v18, 0x18uLL))
      {
        goto LABEL_41;
      }

      v20 = 3;
    }

    else
    {
      if (v19 != 26 || memcmp("shared cache branch island", v18, 0x1AuLL))
      {
        goto LABEL_41;
      }

      v20 = 2;
    }
  }

  else
  {
    if (v19 != 17 || memcmp("dyld shared cache", v18, 0x11uLL))
    {
      goto LABEL_41;
    }

    v20 = 1;
  }

LABEL_42:
  if ((v15 & 0x80) != 0)
  {
    operator delete(v17);
  }

  *a1 = v20;
  sub_298BF3ED0(a1 + 4, a2);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v38 = "EndAddr";
  v39 = 7;
  v41 = 0;
  if (sub_298B89FD8(a2, &v38, &v41) && v41 != *a2 + 56 * *(a2 + 16))
  {
    v21 = *(v41 + 24);
    if (v21 == 5)
    {
      v23 = *(v41 + 32);
      v22 = *(v41 + 40);
      if (v22 >= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = *(v41 + 40);
      }

      v25 = v22 - v24;
      if (v22 != v24)
      {
LABEL_51:
        v26 = 0;
        v27 = (v24 + v23);
        v28 = v25;
        do
        {
          if (*v27 < 48)
          {
            break;
          }

          v29 = *v27;
          if (v29 >= 0x3A)
          {
            if (v29 < 0x61)
            {
              if (v29 - 65 > 0x19)
              {
                break;
              }

              v30 = -55;
            }

            else
            {
              if (v29 >= 0x7B)
              {
                break;
              }

              v30 = -87;
            }
          }

          else
          {
            v30 = -48;
          }

          v31 = v30 + v29;
          if (v31 > 0xF)
          {
            break;
          }

          if (v26 >> 60)
          {
            LOBYTE(v25) = 0;
            v26 = 0;
            goto LABEL_67;
          }

          v26 = v31 | (16 * v26);
          ++v27;
          --v28;
        }

        while (v28);
        v32 = v25 == v28;
        LOBYTE(v25) = v25 != v28;
        if (v32)
        {
          v26 = 0;
        }

        goto LABEL_67;
      }
    }

    else
    {
      if (v21 != 6)
      {
        goto LABEL_68;
      }

      v35 = *(v41 + 55);
      if (v35 >= 0)
      {
        v23 = v41 + 32;
      }

      else
      {
        v23 = *(v41 + 32);
      }

      v36 = *(v41 + 40);
      if (v35 >= 0)
      {
        v36 = *(v41 + 55);
      }

      if (v36 >= 2)
      {
        v24 = 2;
      }

      else
      {
        v24 = v36;
      }

      v25 = v36 - v24;
      if (v36 != v24)
      {
        goto LABEL_51;
      }
    }

    v26 = 0;
LABEL_67:
    *(a1 + 48) = v26;
    *(a1 + 56) = v25;
  }

LABEL_68:
  v38 = "Segment";
  v39 = 7;
  v41 = 0;
  if (sub_298B89FD8(a2, &v38, &v41))
  {
    if (v41 != *a2 + 56 * *(a2 + 16))
    {
      v33 = *(v41 + 24);
      if (v33 == 5 || v33 == 6)
      {
        operator new();
      }
    }
  }

  return a1;
}

uint64_t sub_298C16358(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v10;
  }

  v4 = *(a2 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = a1 + 40;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  sub_298C26B0C(a1 + 88, a2 + 88);
  *(a1 + 128) = *(a2 + 128);
  v5 = *(a2 + 4);
  if (v5 != (a2 + 40))
  {
    do
    {
      sub_298C28714((a1 + 32), v5 + 32, v5 + 2, (v5 + 4));
      v7 = *(v5 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != (a2 + 40));
  }

  return a1;
}

uint64_t sub_298C16448(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  v6 = (a1 + 32);
  *(a1 + 48) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 112) = a1 + 128;
  *(a1 + 120) = 0;
  *src = "Name";
  v49 = 4;
  *dst = 0;
  if (!sub_298B89FD8(a2, src, dst) || *dst == *a2 + 56 * *(a2 + 16))
  {
    goto LABEL_6;
  }

  v7 = *(*dst + 24);
  if (v7 == 5)
  {
    v8 = *(*dst + 32);
    v9 = *(*dst + 40);
LABEL_5:
    MEMORY[0x29C294310](a1, v8, v9);
    goto LABEL_6;
  }

  if (v7 == 6)
  {
    v44 = *(*dst + 55);
    if (v44 >= 0)
    {
      v8 = *dst + 32;
    }

    else
    {
      v8 = *(*dst + 32);
    }

    if (v44 >= 0)
    {
      v9 = *(*dst + 55);
    }

    else
    {
      v9 = *(*dst + 40);
    }

    goto LABEL_5;
  }

LABEL_6:
  *src = "PID";
  v49 = 3;
  *dst = 0;
  if (sub_298B89FD8(a2, src, dst))
  {
    v10 = *dst;
    v11 = *a2;
    v12 = *(a2 + 16);
  }

  else
  {
    v11 = *a2;
    v12 = *(a2 + 16);
    v10 = *a2 + 56 * v12;
  }

  if (v10 == v11 + 56 * v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v10 + 24);
  }

  v14 = *v13;
  switch(v14)
  {
    case 2:
      v17 = v13[1];
      break;
    case 3:
      v15 = *(v13 + 1);
      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = v15 & 0x7FFFFFFFFFFFFF00;
LABEL_18:
        v18 = v15 | v16;
        goto LABEL_21;
      }

      v17 = v15;
      break;
    case 4:
      v15 = *(v13 + 1);
      v16 = v15 & 0xFFFFFFFFFFFFFF00;
      goto LABEL_18;
    default:
      v17 = 0.0;
      break;
  }

  v18 = llround(v17);
LABEL_21:
  *(a1 + 24) = v18;
  *src = "ImageLoadInfo";
  v49 = 13;
  *dst = 0;
  if (sub_298B89FD8(a2, src, dst))
  {
    v19 = *dst;
  }

  else
  {
    v19 = *a2 + 56 * *(a2 + 16);
  }

  v20 = *(v19 + 24);
  v21 = (v19 + 32);
  if (v20 != 8)
  {
    v21 = 0;
  }

  v22 = *v21;
  v23 = v21[1];
  if (*v21 != v23)
  {
    do
    {
      v24 = v22 + 4;
      v25 = *v22;
      v22 += 16;
      if (v25 == 7)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      sub_298BF3ED0(src, v26);
      memset(dst, 0, sizeof(dst));
      uuid_copy(dst, src);
      v46 = v50;
      v47 = v51;
      sub_298C288D8(v6, dst, dst, src);
    }

    while (v22 != v23);
  }

  *src = "Threads";
  v49 = 7;
  *dst = 0;
  if (sub_298B89FD8(a2, src, dst))
  {
    v27 = *dst;
  }

  else
  {
    v27 = *a2 + 56 * *(a2 + 16);
  }

  v28 = *(v27 + 24);
  v29 = v27 + 32;
  if (v28 != 8)
  {
    v29 = 0;
  }

  v30 = *v29;
  v31 = *(v29 + 8);
  if (*v29 != v31)
  {
    while (1)
    {
      if (*v30 == 7)
      {
        v33 = (v30 + 4);
      }

      else
      {
        v33 = 0;
      }

      *src = "TID";
      v49 = 3;
      *dst = 0;
      if (!sub_298B89FD8(v33, src, dst) || *dst == *v33 + 56 * *(v33 + 4))
      {
        goto LABEL_54;
      }

      v34 = *(*dst + 24);
      if (v34 != 5)
      {
        break;
      }

      v2 = *(*dst + 32);
      v3 = *(*dst + 40);
LABEL_55:
      if (v3 >= 2)
      {
        v36 = 2;
      }

      else
      {
        v36 = v3;
      }

      v32 = v3 - v36;
      if (v3 != v36)
      {
        v37 = 0;
        v38 = (v36 + v2);
        v39 = v3 - v36;
        do
        {
          if (*v38 < 48)
          {
            break;
          }

          v40 = *v38;
          if (v40 >= 0x3A)
          {
            if (v40 < 0x61)
            {
              if (v40 - 65 > 0x19)
              {
                break;
              }

              v41 = -55;
            }

            else
            {
              if (v40 >= 0x7B)
              {
                break;
              }

              v41 = -87;
            }
          }

          else
          {
            v41 = -48;
          }

          v42 = v41 + v40;
          if (v42 > 0xF)
          {
            break;
          }

          if (v37 >> 60)
          {
            v32 = 0;
            goto LABEL_39;
          }

          v37 = v42 | (16 * v37);
          ++v38;
          --v39;
        }

        while (v39);
        if (v32 == v39)
        {
          v32 = 0;
        }

        else
        {
          v32 = v37;
        }
      }

LABEL_39:
      *src = v32;
      sub_298AFFBE8(a1 + 88, src);
      v30 += 16;
      if (v30 == v31)
      {
        return a1;
      }
    }

    if (v34 == 6)
    {
      v35 = *(*dst + 55);
      if (v35 >= 0)
      {
        v2 = *dst + 32;
      }

      else
      {
        v2 = *(*dst + 32);
      }

      if (v35 >= 0)
      {
        v3 = *(*dst + 55);
      }

      else
      {
        v3 = *(*dst + 40);
      }

      goto LABEL_55;
    }

LABEL_54:
    v2 &= 0xFFFFFFFFFFFFFF00;
    goto LABEL_55;
  }

  return a1;
}

void *sub_298C168CC(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

uint64_t sub_298C16938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  if (*(a3 + 95) < 0)
  {
    sub_298AFE11C((a1 + 72), *(a3 + 72), *(a3 + 80));
  }

  else
  {
    v7 = *(a3 + 72);
    *(a1 + 88) = *(a3 + 88);
    *(a1 + 72) = v7;
  }

  sub_298C29D44((a1 + 96), (a3 + 96));
  *(a1 + 120) = 0;
  *(a1 + 296) = 0;
  if (*(a3 + 296) == 1)
  {
    sub_298BCD348(a1 + 120, (a3 + 120));
    *(a1 + 296) = 1;
  }

  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = a1 + 312;
  sub_298C29DAC((a1 + 304), *(a3 + 304), (a3 + 312));
  sub_298C2A27C((a1 + 328), (a3 + 328));
  *(a1 + 352) = *(a3 + 352);
  v5 = *(a3 + 376);
  *(a1 + 360) = *(a3 + 360);
  *(a1 + 376) = v5;
  sub_298C2A2E0(a1 + 392, a3 + 392);
  *(a1 + 480) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 488) = 1065353216;
  *(a1 + 496) = a1 + 512;
  *(a1 + 504) = 0;
  if (*(a3 + 432) != *(a3 + 440))
  {
    operator new();
  }

  if (*(a3 + 504))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_298C16B60(uint64_t a1, unint64_t *a2)
{
  v13 = *a2;
  v14 = 0;
  v4 = sub_298C2A880(a1, &v13, &v13);
  v5 = v4;
  if (v6)
  {
    v7 = *a2;
    v10 = 0;
    v11 = v7;
    v12 = 0;
    sub_298C2A83C(a1 + 40, &v11);
    sub_298C2ACA8(&v12, 0);
    sub_298C2ACA8(&v10, 0);
    v8 = *(a1 + 48) - 1;
    *(v5 + 6) = v8;
  }

  else
  {
    v8 = *(v4 + 6);
  }

  return *(a1 + 40) + 16 * v8 + 8;
}

void sub_298C16C08(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, const void *a6, size_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x29EDCA608];
  v10 = a4;
  v9 = a2;
  v8 = a5;
  sub_298C16D74();
}

void sub_298C16F0C(int8x8_t *a1@<X0>, const unsigned __int8 **a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, void *a5@<X8>)
{
  v35 = *MEMORY[0x29EDCA608];
  sub_298C26CD8(uu2, a2);
  v10 = a1[50];
  if (!*&v10 || ((v11 = *&uu2[8] ^ *uu2, v12 = vcnt_s8(v10), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] <= 1uLL) ? (v13 = (*&v10 - 1) & v11) : v11 < *&v10 ? (v13 = *&uu2[8] ^ *uu2) : (v13 = v11 % *&v10), (v14 = *(*&a1[49] + 8 * v13)) == 0 || (v15 = *v14) == 0))
  {
LABEL_15:
    std::generic_category();
    v22[0] = "Recording.cpp";
    v22[2] = ":";
    v23 = 771;
    v21 = 3;
    LODWORD(v20) = 3289906;
    v24[0] = v22;
    v24[2] = &v20;
    v25 = 1026;
    v26[0] = v24;
    v26[2] = ": ";
    v27 = 770;
    v28[0] = v26;
    v28[2] = "No image tracked for UUID: ";
    v29 = 770;
    sub_298B1FB90(a2, __p);
    v30[0] = v28;
    v30[2] = __p;
    v31 = 1026;
    sub_298B996A4(v30, &v32);
    operator new();
  }

  if (v12.u32[0] < 2uLL)
  {
    v16 = *&v10 - 1;
    while (1)
    {
      v18 = *(v15 + 1);
      if (v18 == v11)
      {
        if (!uuid_compare(v15 + 16, uu2))
        {
          goto LABEL_21;
        }
      }

      else if ((v18 & v16) != v13)
      {
        goto LABEL_15;
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v17 = *(v15 + 1);
    if (v17 == v11)
    {
      break;
    }

    if (v17 >= *&v10)
    {
      v17 %= *&v10;
    }

    if (v17 != v13)
    {
      goto LABEL_15;
    }

LABEL_10:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  if (uuid_compare(v15 + 16, uu2))
  {
    goto LABEL_10;
  }

LABEL_21:
  if (a3)
  {
    sub_298BDB508(uu2, a3, a4);
    if (v15[55] < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    memset(uu2, 0, sizeof(uu2));
    v34 = 0;
    if (v15[55] < 0)
    {
LABEL_23:
      operator delete(*(v15 + 4));
    }
  }

  *(v15 + 2) = *uu2;
  *(v15 + 6) = v34;
  *a5 = 0;
}

void sub_298C17278(uint64_t a1@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 408);
  if (v2)
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 55);
      if (v6 >= 0)
      {
        v7 = v2 + 4;
      }

      else
      {
        v7 = v2[4];
      }

      if (v6 >= 0)
      {
        v8 = *(v2 + 55);
      }

      else
      {
        v8 = v2[5];
      }

      v9 = (*(**(*(a1 + 64) + 40) + 24))(*(*(a1 + 64) + 40), v7, v8, 1);
      v10 = a2[2];
      if (v5 < v10)
      {
        *v5 = *(v2 + 1);
        *(v5 + 16) = v9;
        v5 += 17;
      }

      else
      {
        v11 = *a2;
        v12 = v5 - *a2;
        v13 = 0xF0F0F0F0F0F0F0F1 * v12 + 1;
        if (v13 >= 0xF0F0F0F0F0F0F10)
        {
          sub_298ADDDA0();
        }

        v14 = 0xF0F0F0F0F0F0F0F1 * (v10 - v11);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        v15 = v14 >= 0x787878787878787;
        v16 = 0xF0F0F0F0F0F0F0FLL;
        if (!v15)
        {
          v16 = v13;
        }

        if (v16)
        {
          if (v16 < 0xF0F0F0F0F0F0F10)
          {
            operator new();
          }

          sub_298ADDDA0();
        }

        *v12 = *(v2 + 1);
        *(v12 + 16) = v9;
        if (v11 != v5)
        {
          v17 = 0;
          do
          {
            v18 = *v11;
            *(v17 + 16) = v11[16];
            *v17 = v18;
            v17 += 17;
            v11 += 17;
          }

          while (v11 != v5);
          v11 = *a2;
        }

        v5 = v12 + 17;
        *a2 = 0;
        a2[1] = (v12 + 17);
        a2[2] = (17 * v16);
        if (v11)
        {
          operator delete(v11);
        }
      }

      a2[1] = v5;
      v2 = *v2;
    }

    while (v2);
  }
}

void sub_298C17444(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v2 = (a2 + 4);
  v3 = a2[4];
  a2[7] = *(a1 + 8);
  v4 = a2 + 5;
  if (v3 != a2 + 5)
  {
    v6 = a1;
    v7 = 0;
    v8 = 0;
    v32 = (a2 + 4);
    v30 = a2 + 5;
    do
    {
      v10 = *(v3 + 88);
      v37 = v3[10];
      v38 = v10;
      v39 = *(v3 + 89);
      uuid_copy(dst, v3 + 64);
      v11 = *(v6 + 8);
      if (*(&v39 + 1) <= v11)
      {
        v12 = v3[1];
        if (v12)
        {
          do
          {
            v14 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v3;
            v3 = v3[2];
          }

          while (*v3 != v13);
          v14 = v3;
        }
      }

      else
      {
        *(&v39 + 1) = *(v6 + 8);
        v15 = 0x8F9C18F9C18F9C19 * &v8[-v7] + 1;
        if (v15 > 0x63E7063E7063E70)
        {
          sub_298ADDDA0();
        }

        if (0xE0C7CE0C7CE0C7CELL * v7 > v15)
        {
          v15 = 0xE0C7CE0C7CE0C7CELL * v7;
        }

        if ((0x7063E7063E7063E7 * v7) >= 0x31F3831F3831F38)
        {
          v16 = 0x63E7063E7063E70;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          if (v16 <= 0x63E7063E7063E70)
          {
            operator new();
          }

          sub_298ADDDA0();
        }

        v17 = &v8[-v7];
        v18 = v38;
        v19 = v39;
        *(v17 + 16) = v37;
        *(v17 + 24) = v18;
        *(v17 + 25) = v19;
        *(v17 + 33) = v11;
        uuid_copy(&v8[-v7], dst);
        v20 = &v8[-v7] / -41;
        if (v7 != v8)
        {
          v21 = 0;
          do
          {
            v22 = &v8[-v7] % -41 + v21;
            v23 = *(v7 + v21 + 16);
            *(v22 + 24) = *(v7 + v21 + 24);
            v24 = *(v7 + v21 + 25);
            *(v22 + 16) = v23;
            *(v22 + 25) = v24;
            uuid_copy(v22, (v7 + v21));
            v21 += 41;
          }

          while ((v7 + v21) != v8);
        }

        v8 = (v17 + 41);
        if (v7)
        {
          operator delete(v7);
        }

        v7 = v17 + 41 * v20;
        v6 = a1;
        v2 = v32;
        v4 = v30;
        v25 = v3[1];
        v26 = v3;
        if (v25)
        {
          do
          {
            v14 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v14 = v26[2];
            v27 = *v14 == v26;
            v26 = v14;
          }

          while (!v27);
        }

        if (*v32 == v3)
        {
          *v32 = v14;
        }

        v9 = a2[5];
        --a2[6];
        sub_298C2ADAC(v9, v3);
        operator delete(v3);
      }

      v3 = v14;
    }

    while (v14 != v4);
    if (v7 != v8)
    {
      v28 = v7;
      do
      {
        v29 = v28[24];
        v37 = *(v28 + 2);
        v38 = v29;
        v39 = *(v28 + 25);
        uuid_copy(dst, v28);
        memset(uu1, 0, sizeof(uu1));
        uuid_copy(uu1, dst);
        v34 = v37;
        v35 = *(&v39 + 1);
        sub_298C288D8(v2, uu1, uu1, dst);
        v28 += 41;
      }

      while (v28 != v8);
    }

    if (v7)
    {
      operator delete(v7);
    }
  }
}

void sub_298C177D8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    sub_298BDB508(v14, a4, a5);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v15 = 0;
  }

  sub_298C26CD8(uu, a3);
  v12 = uu;
  v10 = sub_298B223E4((a1 + 392), uu, &unk_298CF78C8, &v12);
  v11 = v10;
  if (v10[55] < 0)
  {
    operator delete(*(v10 + 4));
  }

  *(v11 + 2) = *v14;
  *(v11 + 6) = v15;
  operator new();
}

void sub_298C1797C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    sub_298BDB508(v14, a4, a5);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v15 = 0;
  }

  sub_298C26CD8(uu, a3);
  v12 = uu;
  v10 = sub_298B223E4((a1 + 392), uu, &unk_298CF78C8, &v12);
  v11 = v10;
  if (v10[55] < 0)
  {
    operator delete(*(v10 + 4));
  }

  *(v11 + 2) = *v14;
  *(v11 + 6) = v15;
  operator new();
}

uint64_t sub_298C17B1C(int8x8_t *a1, unint64_t a2)
{
  v2 = a1[58];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] <= 1uLL)
  {
    v4 = (*&v2 - 1) & a2;
    v5 = *(*&a1[57] + 8 * v4);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }

    v5 = *(*&a1[57] + 8 * v4);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = *v5;
  if (!v6)
  {
    return 0;
  }

  if (v3.u32[0] < 2uLL)
  {
    v7 = *&v2 - 1;
    while (1)
    {
      v10 = v6[1];
      if (v10 == a2)
      {
        if (v6[2] == a2)
        {
          goto LABEL_21;
        }
      }

      else if ((v10 & v7) != v4)
      {
        return 0;
      }

      v6 = *v6;
      if (!v6)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      return 0;
    }

LABEL_10:
    v6 = *v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_10;
  }

LABEL_21:
  v11 = *(v6 + 6);
  if (v11 == a1[63].i32[0])
  {
    return 0;
  }

  return *(*&a1[62] + 16 * v11 + 8);
}

void sub_298C17C34(int8x8_t *a1)
{
  v68 = *MEMORY[0x29EDCA608];
  v2 = a1[62];
  v3 = a1[63].u32[0];
  if (!v3)
  {
    v5 = a1[62];
    goto LABEL_86;
  }

  v4 = a1 + 59;
  v5 = a1[62];
  v6 = &v2[2 * v3];
  while (2)
  {
    v7 = v2[1];
    if (*(v7 + 128) != 1)
    {
      if (v2 == v5)
      {
        goto LABEL_5;
      }

      *v5 = *v2;
      v2[1] = 0;
      sub_298C2ACA8(v5 + 1, v7);
      v18 = *v5;
      v19 = a1[58];
      if (v19)
      {
        v20 = vcnt_s8(v19);
        v20.i16[0] = vaddlv_u8(v20);
        if (v20.u32[0] <= 1uLL)
        {
          v21 = (*&v19 - 1) & v18;
          v22 = *(*&a1[57] + 8 * v21);
          if (!v22)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v21 = *v5;
          if (*&v19 <= v18)
          {
            v21 = v18 % *&v19;
          }

          v22 = *(*&a1[57] + 8 * v21);
          if (!v22)
          {
            goto LABEL_38;
          }
        }

        v23 = *v22;
        if (*v22)
        {
          if (v20.u32[0] < 2uLL)
          {
            while (1)
            {
              v32 = v23[1];
              if (v32 == v18)
              {
                if (v23[2] == v18)
                {
                  goto LABEL_4;
                }
              }

              else if ((v32 & (*&v19 - 1)) != v21)
              {
                goto LABEL_38;
              }

              v23 = *v23;
              if (!v23)
              {
                goto LABEL_38;
              }
            }
          }

          do
          {
            v24 = v23[1];
            if (v24 == v18)
            {
              if (v23[2] == v18)
              {
LABEL_4:
                *(v23 + 6) = (v5 - *&a1[62]) >> 4;
LABEL_5:
                v5 += 2;
                goto LABEL_6;
              }
            }

            else
            {
              if (v24 >= *&v19)
              {
                v24 %= *&v19;
              }

              if (v24 != v21)
              {
                break;
              }
            }

            v23 = *v23;
          }

          while (v23);
        }
      }

LABEL_38:
      operator new();
    }

    v8 = a1[58];
    if (!*&v8)
    {
      goto LABEL_6;
    }

    v9 = *v2;
    v10 = vcnt_s8(v8);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = *v2 / *&v8;
    if (v10.u32[0] <= 1uLL)
    {
      v12 = (*&v8 - 1) & v9;
      v13 = a1[57];
      v14 = *(*&v13 + 8 * v12);
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = *v2;
      if (*&v8 <= v9)
      {
        v12 = v9 - v11 * *&v8;
      }

      v13 = a1[57];
      v14 = *(*&v13 + 8 * v12);
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_6;
    }

    v16 = *&v8 - 1;
    if (v10.u32[0] < 2uLL)
    {
      while (1)
      {
        v25 = v15[1];
        if (*&v25 == v9)
        {
          if (*&v15[2] == v9)
          {
            goto LABEL_44;
          }
        }

        else if ((*&v25 & v16) != v12)
        {
          goto LABEL_6;
        }

        v15 = *v15;
        if (!v15)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
      v17 = v15[1];
      if (v17 == v9)
      {
        break;
      }

      if (v17 >= *&v8)
      {
        v17 %= *&v8;
      }

      if (v17 != v12)
      {
        goto LABEL_6;
      }

LABEL_17:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_6;
      }
    }

    if (*&v15[2] != v9)
    {
      goto LABEL_17;
    }

LABEL_44:
    if (v10.u32[0] <= 1uLL)
    {
      v9 &= v16;
    }

    else if (*&v8 <= v9)
    {
      v9 -= v11 * *&v8;
    }

    v26 = *(*&v13 + 8 * v9);
    do
    {
      v27 = v26;
      v26 = *v26;
    }

    while (v26 != v15);
    if (v27 == v4)
    {
LABEL_54:
      if (*v15)
      {
        v29 = *(*v15 + 8);
        if (v10.u32[0] <= 1uLL)
        {
          if ((v29 & v16) == v9)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v29 >= *&v8)
          {
            v29 %= *&v8;
          }

          if (v29 == v9)
          {
            goto LABEL_60;
          }
        }
      }

      *(*&v13 + 8 * v9) = 0;
      goto LABEL_60;
    }

    v28 = v27[1];
    if (v10.u32[0] <= 1uLL)
    {
      if ((v28 & v16) != v9)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v28 >= *&v8)
      {
        v28 %= *&v8;
      }

      if (v28 != v9)
      {
        goto LABEL_54;
      }
    }

LABEL_60:
    v30 = *v15;
    if (*v15)
    {
      v31 = *(*&v30 + 8);
      if (v10.u32[0] <= 1uLL)
      {
        v31 &= v16;
        if (v31 != v9)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v31 >= *&v8)
        {
          v31 %= *&v8;
        }

        if (v31 != v9)
        {
LABEL_65:
          *(*&a1[57] + 8 * v31) = v27;
          v30 = *v15;
        }
      }
    }

    *v27 = v30;
    *v15 = 0;
    --*&a1[60];
    operator delete(v15);
LABEL_6:
    v2 += 2;
    if (v2 != v6)
    {
      continue;
    }

    break;
  }

  v2 = a1[62];
  v33 = &v2[2 * a1[63].u32[0]];
  if (v33 != v5)
  {
    do
    {
      v34 = v33 - 2;
      sub_298C2ACA8(v33 - 1, 0);
      v33 = v34;
    }

    while (v34 != v5);
    v2 = a1[62];
  }

LABEL_86:
  v35 = (v5 - v2) >> 4;
  a1[63].i32[0] = v35;
  *v62 = 0u;
  *__p = 0u;
  v64 = 1065353216;
  v36 = a1[54];
  v37 = a1[55];
  if (v36 != v37)
  {
    do
    {
      v38 = *v36++;
      *dst = v38 + 4;
      *&dst[8] = 0;
      v66 = 0;
      sub_298C26CD8(uu2, dst);
      sub_298C2B3C8(v62, uu2, uu2);
    }

    while (v36 != v37);
    v2 = a1[62];
    LODWORD(v35) = a1[63].i32[0];
  }

  if (v35)
  {
    v39 = &v2[2 * v35];
    do
    {
      v40 = v2[1];
      v41 = *(v40 + 32);
      v42 = (v40 + 40);
      if (v41 != (v40 + 40))
      {
        do
        {
          memset(dst, 0, sizeof(dst));
          uuid_copy(dst, v41 + 64);
          sub_298C2B3C8(v62, dst, dst);
          v44 = *(v41 + 1);
          if (v44)
          {
            do
            {
              v43 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v43 = *(v41 + 2);
              v45 = *v43 == v41;
              v41 = v43;
            }

            while (!v45);
          }

          v41 = v43;
        }

        while (v43 != v42);
      }

      v2 += 2;
    }

    while (v2 != v39);
  }

  v46 = a1[51];
  while (v46)
  {
    v50 = v46;
    v46 = *v46;
    *uu2 = *(v50 + 1);
    v51 = v62[1];
    if (v62[1])
    {
      v52 = *&uu2[8] ^ *uu2;
      v53 = vcnt_s8(v62[1]);
      v53.i16[0] = vaddlv_u8(v53);
      if (v53.u32[0] <= 1uLL)
      {
        v54 = (v62[1] - 1) & v52;
      }

      else
      {
        v54 = v52 < v62[1] ? *&uu2[8] ^ *uu2 : v52 % v62[1];
      }

      v55 = *(v62[0] + v54);
      if (v55)
      {
        v56 = *v55;
        if (*v55)
        {
          if (v53.u32[0] < 2uLL)
          {
            v57 = v62[1] - 1;
            while (1)
            {
              v61 = *(v56 + 1);
              if (v52 == v61)
              {
                if (!uuid_compare(v56 + 16, uu2))
                {
                  goto LABEL_108;
                }
              }

              else if ((v61 & v57) != v54)
              {
                goto LABEL_123;
              }

              v56 = *v56;
              if (!v56)
              {
                goto LABEL_123;
              }
            }
          }

          do
          {
            v58 = *(v56 + 1);
            if (v52 == v58)
            {
              if (!uuid_compare(v56 + 16, uu2))
              {
                goto LABEL_108;
              }
            }

            else
            {
              if (v58 >= v51)
              {
                v58 %= v51;
              }

              if (v58 != v54)
              {
                break;
              }
            }

            v56 = *v56;
          }

          while (v56);
        }
      }
    }

LABEL_123:
    sub_298C2B6DC(dst, &a1[49], v50);
    v59 = *dst;
    if (*dst)
    {
      if (v66 == 1 && *(*dst + 55) < 0)
      {
        v60 = *dst;
        operator delete(*(*dst + 32));
        v59 = v60;
      }

      operator delete(v59);
    }

LABEL_108:
    ;
  }

  v47 = __p[0];
  if (__p[0])
  {
    do
    {
      v48 = *v47;
      operator delete(v47);
      v47 = v48;
    }

    while (v48);
  }

  v49 = v62[0];
  v62[0] = 0;
  if (v49)
  {
    operator delete(v49);
  }
}

uint64_t *sub_298C183B0(int8x8_t *a1, const unsigned __int8 *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, a2);
  v3 = *&dst[8] ^ *dst;
  v4 = a1[50];
  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v6 = (*&v4 - 1) & v3;
  }

  else if (v3 < *&v4)
  {
    v6 = *&dst[8] ^ *dst;
  }

  else
  {
    v6 = v3 % *&v4;
  }

  v7 = *(*&a1[49] + 8 * v6);
  do
  {
    do
    {
      v7 = *v7;
    }

    while (v3 != *(v7 + 1));
  }

  while (uuid_compare(v7 + 16, dst));
  v10 = *(v7 + 4);
  v9 = (v7 + 32);
  v8 = v10;
  if (*(v9 + 23) >= 0)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

const unsigned __int8 *sub_298C1849C(uint64_t a1, unint64_t a2, unsigned __int8 *uu2)
{
  if (a2)
  {
    v5 = *(uu2 + 1) ^ *uu2;
    v6 = vcnt_s8(a2);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] <= 1uLL)
    {
      v7 = v5 & (a2 - 1);
    }

    else if (v5 < a2)
    {
      v7 = *(uu2 + 1) ^ *uu2;
    }

    else
    {
      v7 = v5 % a2;
    }

    v8 = *(a1 + 8 * v7);
    if (!v8)
    {
      return 0;
    }

    v9 = *v8;
    if (!*v8)
    {
      return 0;
    }

    if (v6.u32[0] >= 2uLL)
    {
      while (1)
      {
        v10 = *(v9 + 1);
        if (v5 == v10)
        {
          if (!uuid_compare(v9 + 16, uu2))
          {
            return v9;
          }
        }

        else
        {
          if (v10 >= a2)
          {
            v10 %= a2;
          }

          if (v10 != v7)
          {
            return 0;
          }
        }

        v9 = *v9;
        if (!v9)
        {
          return 0;
        }
      }
    }

    v12 = a2 - 1;
    while (1)
    {
      v13 = *(v9 + 1);
      if (v5 == v13)
      {
        if (!uuid_compare(v9 + 16, uu2))
        {
          return v9;
        }
      }

      else if ((v13 & v12) != v7)
      {
        return 0;
      }

      result = 0;
      v9 = *v9;
      if (!v9)
      {
        return result;
      }
    }
  }

  return 0;
}

void sub_298C185C8(int8x8_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v54[4] = *MEMORY[0x29EDCA608];
  v47 = a3;
  if (a1[37].i8[0] == 1)
  {
    v54[0] = &unk_2A1F1F460;
    v54[1] = a2;
    v54[3] = v54;
    sub_298C189C8(&a1[26], v54);
    sub_298C2B9FC(v54);
  }

  v46 = a1;
  v8 = *(*&a1[8] + 40);
  v45[0] = a1;
  v45[1] = v8;
  v45[2] = &v46;
  v45[3] = a2;
  v45[4] = &v47;
  v9 = a1[54];
  v10 = a1[55];
  if (v9 == v10)
  {
LABEL_26:
    v20 = a1[63].u32[0];
    if (v20)
    {
      v21 = a1[62];
      v22 = &v21[2 * v20];
      while (1)
      {
        sub_298BD6304(a2, *v21);
        v23 = v21[1];
        v24 = *(v23 + 32);
        v25 = (v23 + 40);
        if (v24 != (v23 + 40))
        {
          break;
        }

LABEL_43:
        v21 += 2;
        if (v21 == v22)
        {
          goto LABEL_44;
        }
      }

      while (1)
      {
        v26 = *(v21[1] + 24);
        v31[0] = 0;
        v34 = 0;
        sub_298C18AE4(a4, v45, v26, 1, v24 + 64, 0, v31);
        if (v34 == 1 && v33 < 0)
        {
          operator delete(__p);
        }

        if (*a4)
        {
          break;
        }

        v27 = *(v24 + 1);
        if (v27)
        {
          do
          {
            i = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          i = *(v24 + 2);
          if (*i != v24)
          {
            v29 = i[2];
            v30 = *v29 == i;
            for (i = v29; !v30; v29 = i)
            {
              i = v29[2];
              v30 = *i == v29;
            }
          }
        }

        v24 = i;
        if (i == v25)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
LABEL_44:
      *a4 = 0;
    }

    return;
  }

  while (1)
  {
    v11 = *v9;
    v12 = **v9;
    if (v12 <= 0xA)
    {
      if (((1 << v12) & 0x7D8) != 0)
      {
        goto LABEL_6;
      }

      if (v12 == 2)
      {
        sub_298BD7880(a2, *(v11 + 5) >> 1, *(v11 + 6), a4);
        goto LABEL_9;
      }

      if (v12 == 5)
      {
        break;
      }
    }

    if (v12 == 1)
    {
      sub_298C183B0(a1, v11 + 4);
      sub_298BD6444(a2);
    }

    if (!v12)
    {
LABEL_6:
      v4 &= 0xFFFFFFFFFFFFFF00;
      sub_298C18EEC(v41, *(v11 + 8));
      sub_298C18AE4(a4, v45, v4, 0, v11 + 4, v12 | 0x100000000, v41);
      if (v44 == 1 && v43 < 0)
      {
        operator delete(v42);
      }

LABEL_9:
      if (*a4)
      {
        return;
      }
    }

LABEL_10:
    if (++v9 == v10)
    {
      goto LABEL_26;
    }
  }

  v13 = sub_298C183B0(a1, v11 + 4);
  (*(*v8 + 32))(&v48, v8, v13, v14, 1);
  if (v53)
  {
    v15 = v48;
    v48 = 0;
    *a4 = v15;
    if (v15)
    {
      goto LABEL_47;
    }
  }

  else
  {
    *a4 = 0;
  }

  if (sub_298C18F6C(v46[37].i8[0], &v48))
  {
    v16 = *(*v9 + 5) >> 1;
    v35 = v48;
    v36 = BYTE2(v48);
    v37 = v49;
    v38 = v50;
    v49 = 0uLL;
    v39 = v51;
    v40 = v52;
    v17 = a1[41];
    v18 = (*&a1[42] - v17) >> 3;
    v50 = 0;
    v52 = 0;
    sub_298BD790C(a2, &v35, v16, v17, v18, a4);
    sub_298BDC2AC(&v35);
    v19 = *a4;
    sub_298C13D54(&v48);
    if (v19)
    {
      return;
    }

    goto LABEL_10;
  }

  *a4 = 0;
LABEL_47:
  sub_298C13D54(&v48);
}

uint64_t sub_298C189C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (a1[1] - *a1) >> 3;
  v25 = 0;
  v26 = 0;
  v23 = v3;
  v24 = v4;
  v5 = *(a2 + 24);
  if (!v5)
  {
LABEL_12:
    v16 = sub_298AE761C();
    return sub_298C18AE4(v16, v17, v18, v19, v20, v21, v22);
  }

  result = (*(*v5 + 48))(v5, &v25, &v23);
  v8 = a1[3];
  v9 = a1 + 4;
  if (v8 != v9)
  {
    while (1)
    {
      v10 = v8[5];
      v11 = (v8[6] - v10) >> 3;
      v25 = v8[4];
      v26 = 1;
      v23 = v10;
      v24 = v11;
      v12 = *(a2 + 24);
      if (!v12)
      {
        break;
      }

      result = (*(*v12 + 48))(v12, &v25, &v23);
      v13 = v8[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v8[2];
          v15 = *v14 == v8;
          v8 = v14;
        }

        while (!v15);
      }

      v8 = v14;
      if (v14 == v9)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_298C18AE4(uint64_t *a1, uint64_t *a2, unint64_t a3, char a4, unsigned __int8 *src, uint64_t a6, uint64_t a7)
{
  v53 = *MEMORY[0x29EDCA608];
  v13 = *a2;
  dst = 0;
  *dst_8 = 0;
  uuid_copy(&dst, src);
  v14 = *dst_8 ^ dst;
  v15 = *(v13 + 400);
  if ((v15 & (v15 - 1)) != 0)
  {
    if (v14 < v15)
    {
      v16 = *dst_8 ^ dst;
    }

    else
    {
      v16 = v14 % v15;
    }

    v17 = *(*(v13 + 392) + 8 * v16);
    do
    {
      do
      {
        v17 = *v17;
      }

      while (v14 != *(v17 + 1));
      result = uuid_compare(v17 + 16, &dst);
    }

    while (result);
  }

  else
  {
    v17 = *(*(v13 + 392) + 8 * ((v15 - 1) & v14));
    do
    {
      do
      {
        v17 = *v17;
      }

      while (v14 != *(v17 + 1));
      result = uuid_compare(v17 + 16, &dst);
    }

    while (result);
  }

  v21 = *(v17 + 4);
  v20 = (v17 + 32);
  v19 = v21;
  v22 = *(v20 + 23);
  if (v22 >= 0)
  {
    v23 = v20;
  }

  else
  {
    v23 = v19;
  }

  if (v22 >= 0)
  {
    v24 = *(v20 + 23);
  }

  else
  {
    v24 = v20[1];
  }

  if (v24 == 3 && *v23 == 16191 && *(v23 + 2) == 63)
  {
    *a1 = 0;
    return result;
  }

  (*(*a2[1] + 32))(&dst);
  if ((v52 & 1) == 0)
  {
    *a1 = 0;
    goto LABEL_25;
  }

  v26 = dst;
  dst = 0;
  *a1 = v26;
  if (!v26)
  {
LABEL_25:
    if (*(*a2[2] + 296) == 1 && (sub_298AFF468(&dst, &v46), v46))
    {
      v45 = v46;
      v46 = 0;
      sub_298AE617C(&v45);
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }

      if (v46)
      {
        (*(*v46 + 8))(v46);
      }

      *a1 = 0;
    }

    else
    {
      if (src[24] == 9)
      {
        v27 = 0;
      }

      else
      {
        v27 = src;
      }

      v28 = a2[3];
      v39 = dst;
      v40 = BYTE2(dst);
      *__p = *dst_8;
      v29 = v51;
      v42 = v49;
      *dst_8 = 0uLL;
      v43 = v50;
      v49 = 0;
      v51 = 0;
      v44 = v29;
      v30 = *(src + 2);
      v31 = *(src + 25);
      v32 = *(src + 33);
      v35[0] = 0;
      v38 = 0;
      if (*(a7 + 56) == 1)
      {
        sub_298BD4988(v35, a7);
        v38 = 1;
      }

      sub_298BD7C4C(v28, a3, a4, &v39, v27, v30, v31, v32, &v46, v35, a6);
      if (v38 == 1 && v37 < 0)
      {
        operator delete(v36);
      }

      v33 = v44;
      v44 = 0;
      if (v33)
      {
        (*(*v33 + 16))(v33);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
      }

      if (v46 || (*a2[4] & 1) == 0)
      {
        *a1 = v46;
      }

      else
      {
        sub_298BD9C20(a2[3], a1);
        if (v46)
        {
          (*(*v46 + 8))(v46);
        }
      }
    }
  }

  if ((v52 & 1) == 0)
  {
    return sub_298BDC2AC(&dst);
  }

  result = dst;
  dst = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

_OWORD *sub_298C18EEC(_OWORD *result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    *result = *a2;
    if (*(a2 + 39) < 0)
    {
      result = sub_298AFE11C(result + 16, *(a2 + 16), *(a2 + 24));
    }

    else
    {
      result[1] = *(a2 + 16);
      *(result + 4) = *(a2 + 32);
    }

    *(v2 + 40) = *(a2 + 40);
    *(v2 + 56) = 1;
  }

  else
  {
    *result = 0;
    *(result + 56) = 0;
  }

  return result;
}

uint64_t sub_298C18F6C(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return 1;
  }

  sub_298AFF468(a2, &v4);
  if (!v4)
  {
    return 1;
  }

  v3 = v4;
  v4 = 0;
  sub_298AE617C(&v3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return 0;
}

uint64_t sub_298C1901C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 504))
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

uint64_t sub_298C193EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v68 = a2;
  v66[0] = 0;
  v66[1] = 0;
  v67 = 0;
  v3 = *(a1 + 504);
  if (v3)
  {
    v4 = *(a1 + 496);
    v26 = &v4[2 * v3];
    do
    {
      v5 = v4[1];
      if (*v4 != *(v5 + 24))
      {
        v6 = std::generic_category();
        v52[0] = "Recording.cpp";
        v53 = 259;
        v50[0] = ":";
        v51 = 259;
        sub_298ADC860(v52, v50, v54);
        sub_298AFB090(0x24FuLL, 0, v30);
        v49 = 260;
        v48[0] = v30;
        sub_298ADC860(v54, v48, v56);
        v46[0] = ": ";
        v47 = 259;
        sub_298ADC860(v56, v46, v58);
        v44[0] = "UniqueContext pid (";
        v45 = 259;
        sub_298ADC860(v58, v44, v60);
        sub_298AFB090(*(v4[1] + 24), 0, v28);
        v43 = 260;
        v42[0] = v28;
        sub_298ADC860(v60, v42, v61);
        v40[0] = ") does not match key (";
        v41 = 259;
        sub_298ADC860(v61, v40, v62);
        sub_298AFB090(*v4, 0, v37);
        v39 = 260;
        v38[0] = v37;
        sub_298ADC860(v62, v38, v63);
        v35[0] = ")";
        v36 = 259;
        sub_298ADC860(v63, v35, &v64);
        sub_298ADDCA4(45, v6, &v64);
      }

      v7 = *(v5 + 120);
      if (v7)
      {
        v8 = *(v5 + 112);
        v9 = &v8[v7];
        do
        {
          v10 = *v8;
          v34 = v10;
          v11 = v4[1];
          v64 = v10;
          v12 = *(v11 + 24);
          v65 = v12;
          if (v67)
          {
            v13 = (v67 - 1) & (37 * v10);
            v14 = (v66[0] + 16 * v13);
            v15 = *v14;
            if (v10 == *v14)
            {
LABEL_11:
              v16 = std::generic_category();
              v50[0] = "Recording.cpp";
              v51 = 259;
              v48[0] = ":";
              v49 = 259;
              sub_298ADC860(v50, v48, v52);
              sub_298AFB090(0x256uLL, 0, v37);
              v47 = 260;
              v46[0] = v37;
              sub_298ADC860(v52, v46, v54);
              v44[0] = ": ";
              v45 = 259;
              sub_298ADC860(v54, v44, v56);
              v42[0] = "Duplicate tid (";
              v43 = 259;
              sub_298ADC860(v56, v42, v58);
              sub_298ADC8F4(&v33, v10);
              v41 = 260;
              v40[0] = &v33;
              sub_298ADC860(v58, v40, v60);
              v38[0] = ") found in pid ";
              v39 = 259;
              sub_298ADC860(v60, v38, v61);
              sub_298AFB090(*(v4[1] + 24), 0, v32);
              v36 = 260;
              v35[0] = v32;
              sub_298ADC860(v61, v35, v62);
              v30[0] = " and in pid ";
              v31 = 259;
              sub_298ADC860(v62, v30, v63);
              v17 = sub_298C2BDD4(v66, &v34);
              sub_298AFB090(*(v17 + 2), 0, __p);
              v29 = 260;
              v28[0] = __p;
              sub_298ADC860(v63, v28, &v64);
              sub_298ADDCA4(45, v16, &v64);
            }

            v22 = 0;
            v23 = 1;
            while (v15 != -1)
            {
              if (v22)
              {
                v24 = 0;
              }

              else
              {
                v24 = v15 == -2;
              }

              if (v24)
              {
                v22 = v14;
              }

              v25 = v13 + v23++;
              v13 = v25 & (v67 - 1);
              v14 = (v66[0] + 16 * v13);
              v15 = *v14;
              if (v10 == *v14)
              {
                goto LABEL_11;
              }
            }

            if (v22)
            {
              v18 = v22;
            }

            else
            {
              v18 = v14;
            }
          }

          else
          {
            v18 = 0;
          }

          v19 = sub_298C2BB18(v66, &v64, v18);
          *v19 = v10;
          *(v19 + 2) = v12;
          ++v8;
        }

        while (v8 != v9);
      }

      v4 += 2;
    }

    while (v4 != v26);
  }

  if (*(a1 + 365) == 1 && (*(a1 + 371) & 1) == 0 && (*(a1 + 370) & 1) == 0 && *(a1 + 504) != 1)
  {
    v20 = std::generic_category();
    v58[0] = "Recording.cpp";
    v59 = 259;
    v56[0] = ":";
    v57 = 259;
    sub_298ADC860(v58, v56, v60);
    sub_298AFB090(0x25EuLL, 0, v46);
    v55 = 260;
    v54[0] = v46;
    sub_298ADC860(v60, v54, v61);
    v52[0] = ": ";
    v53 = 259;
    sub_298ADC860(v61, v52, v62);
    v50[0] = "Single-process filtering enabled: expected exactly 1 task context, but got ";
    v51 = 259;
    sub_298ADC860(v62, v50, v63);
    sub_298AFB090(*(a1 + 504), 0, v44);
    v49 = 260;
    v48[0] = v44;
    sub_298ADC860(v63, v48, &v64);
    sub_298ADDCA4(45, v20, &v64);
  }

  return MEMORY[0x29C2945E0](v66[0], 8);
}

uint64_t sub_298C19A98(uint64_t **a1, uint64_t *a2)
{
  v3 = **a1;
  **a1 = 0;
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  v8 = v3;
  sub_298ADE6E8(&v8, &v7, &v6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  result = v8;
  if (v8)
  {
    result = (*(*v8 + 8))(v8);
  }

  **a1 = v6;
  return result;
}

void sub_298C19B4C(void *a1, uint64_t a2, uint64_t *a3)
{
  v86 = *MEMORY[0x29EDCA608];
  sub_298B87AE0(a3, "Name", 4, &v80);
  if (v80)
  {
    sub_298BDB508(&v84, v80, *(&v80 + 1));
  }

  else
  {
    v84 = 0uLL;
    v85 = 0;
  }

  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  *(a2 + 72) = v84;
  *(a2 + 88) = v85;
  v8 = sub_298B87C7C(a3, "RawTraceIDs", 11);
  v10 = *v8;
  v9 = *(v8 + 8);
  while (v10 != v9)
  {
    v11 = *(a2 + 64);
    v12 = sub_298B87A10(v10);
    v14 = *(v11 + 64);
    v3 = v11 + 64;
    v13 = v14;
    if (!v14)
    {
      break;
    }

    v15 = v3;
    do
    {
      v16 = *(v13 + 32);
      v17 = v16 >= v12;
      v18 = v16 < v12;
      if (v17)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * v18);
    }

    while (v13);
    if (v15 == v3)
    {
      break;
    }

    if (*(v15 + 32) > v12)
    {
      break;
    }

    *&v84 = *(v15 + 40);
    if (!v84)
    {
      break;
    }

    sub_298C2022C(a2 + 96, &v84);
    v10 += 16;
  }

  v82 = 0;
  *&v84 = "DecodedTrace";
  *(&v84 + 1) = 12;
  v19 = sub_298C26D78(a3, &v84);
  if (*a3 + 56 * *(a3 + 4) != v19)
  {
    v20 = v19;
    sub_298C1A9DC(a2 + 120);
    if (*(v20 + 24) == 7)
    {
      v21 = v20 + 32;
    }

    else
    {
      v21 = 0;
    }

    sub_298C1AA80(a1, a2 + 120, v21, &v82);
    if (*a1)
    {
      return;
    }

    if (v82)
    {
      sub_298C27B6C(a2 + 120);
    }
  }

  *&v84 = "SystemRegisters";
  *(&v84 + 1) = 15;
  *&v80 = 0;
  if (sub_298B89FD8(a3, &v84, &v80))
  {
    v22 = v80;
    v23 = *a3;
    v24 = *(a3 + 4);
  }

  else
  {
    v23 = *a3;
    v24 = *(a3 + 4);
    v22 = *a3 + 56 * v24;
  }

  if (v22 != v23 + 56 * v24 && *(v22 + 24) == 7 && *(v22 + 40))
  {
    v25 = *(v22 + 32);
    v26 = *(v22 + 48);
    if (v26)
    {
      v27 = 56 * v26;
      v28 = v25;
      while (*(v28 + 8) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v28 += 56;
        v27 -= 56;
        if (!v27)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      v28 = v25;
    }

    v4 = v25 + 56 * v26;
    while (v28 != v4)
    {
      v61 = *(v28 + 24);
      if (v61 == 6)
      {
        v62 = *(v28 + 32);
        v63 = *(v28 + 55);
        if (v63 >= 0)
        {
          v62 = v28 + 32;
        }

        v64 = *(v28 + 40);
        if (v63 >= 0)
        {
          v64 = *(v28 + 55);
        }

        *&v84 = v62;
        *(&v84 + 1) = v64;
      }

      else
      {
        if (v61 != 5)
        {
          v65 = 0;
          LOBYTE(v84) = 0;
          goto LABEL_97;
        }

        v84 = *(v28 + 32);
      }

      v65 = 1;
LABEL_97:
      LOBYTE(v85) = v65;
      v3 = sub_298C1E0C8(&v84);
      v66 = *(v28 + 8);
      if (v66)
      {
        sub_298BDB508(&v84, v66, *(v28 + 16));
      }

      else
      {
        v84 = 0uLL;
        v85 = 0;
      }

      *&v80 = &v84;
      sub_298C2F984((a2 + 304), &v84, &unk_298CF78C8, &v80)[7] = v3;
      if (SHIBYTE(v85) < 0)
      {
        operator delete(v84);
      }

      do
      {
        v28 += 56;
      }

      while (v28 != v4 && *(v28 + 8) >= 0xFFFFFFFFFFFFFFFELL);
    }
  }

LABEL_37:
  *&v84 = "StaticIfOffsets";
  *(&v84 + 1) = 15;
  *&v80 = 0;
  if (sub_298B89FD8(a3, &v84, &v80))
  {
    v29 = v80;
    v30 = *a3;
    v31 = *(a3 + 4);
  }

  else
  {
    v30 = *a3;
    v31 = *(a3 + 4);
    v29 = *a3 + 56 * v31;
  }

  if (v29 != v30 + 56 * v31 && *(v29 + 24) == 8)
  {
    v32 = *(v29 + 32);
    v3 = *(v29 + 40);
    if (v32 != v3)
    {
      v4 = 2;
      do
      {
        v33 = *v32;
        if (v33 == 6)
        {
          v34 = *(v32 + 1);
          v35 = *(v32 + 31);
          if (v35 >= 0)
          {
            v34 = v32 + 4;
          }

          v36 = *(v32 + 2);
          if (v35 >= 0)
          {
            v36 = *(v32 + 31);
          }
        }

        else
        {
          if (v33 != 5)
          {
            goto LABEL_55;
          }

          v34 = *(v32 + 1);
          v36 = *(v32 + 2);
        }

        if (v36 >= 2)
        {
          v37 = 2;
        }

        else
        {
          v37 = v36;
        }

        *&v84 = v34 + v37;
        *(&v84 + 1) = v36 - v37;
        *&v80 = 0;
        if (!sub_298B971A4(&v84, 0x10u, &v80))
        {
          v38 = v80;
          goto LABEL_57;
        }

LABEL_55:
        v38 = 0;
LABEL_57:
        v40 = *(a2 + 336);
        v39 = *(a2 + 344);
        if (v40 >= v39)
        {
          v42 = *(a2 + 328);
          v43 = v40 - v42;
          v44 = (v40 - v42) >> 3;
          v45 = v44 + 1;
          if ((v44 + 1) >> 61)
          {
            sub_298ADDDA0();
          }

          v46 = v39 - v42;
          if (v46 >> 2 > v45)
          {
            v45 = v46 >> 2;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v47 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            sub_298B7F4FC(a2 + 328, v47);
          }

          v51 = v44;
          v48 = (8 * v44);
          v49 = &v48[-v51];
          *v48 = v38;
          v41 = v48 + 1;
          memcpy(v49, v42, v43);
          v50 = *(a2 + 328);
          *(a2 + 328) = v49;
          *(a2 + 336) = v41;
          *(a2 + 344) = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          *v40 = v38;
          v41 = v40 + 8;
        }

        *(a2 + 336) = v41;
        v32 += 16;
      }

      while (v32 != v3);
    }
  }

  *&v84 = "KernelcacheStubOptimization";
  *(&v84 + 1) = 27;
  *&v80 = 0;
  if (sub_298B89FD8(a3, &v84, &v80))
  {
    v52 = v80;
    v53 = *a3;
    v54 = *(a3 + 4);
  }

  else
  {
    v53 = *a3;
    v54 = *(a3 + 4);
    v52 = *a3 + 56 * v54;
  }

  if (v52 == v53 + 56 * v54 || *(v52 + 24) != 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = *(v52 + 32);
  }

  *(a2 + 352) = v55 & 1;
  sub_298BFC074(a2 + 360, a3, a1);
  if (*a1)
  {
    return;
  }

  v76 = a1;
  v56 = sub_298B87BDC(a3, "Images", 6);
  if (*(v56 + 8))
  {
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = 56 * v57;
      v59 = *v56;
      while (*(v59 + 8) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v59 += 56;
        v58 -= 56;
        if (!v58)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      v59 = *v56;
    }

    v67 = *v56 + 56 * v57;
    while (v59 != v67)
    {
      v68 = *(v59 + 24);
      if (v68 == 6)
      {
        v3 = *(v59 + 32);
        v4 = *(v59 + 55);
        if ((v4 & 0x8000000000000000) == 0)
        {
          v3 = v59 + 32;
          goto LABEL_113;
        }

        v4 = *(v59 + 40);
      }

      else if (v68 == 5)
      {
        v3 = *(v59 + 32);
        v4 = *(v59 + 40);
      }

      else
      {
        v3 &= 0xFFFFFFFFFFFFFF00;
      }

      if (!v3)
      {
        v80 = 0uLL;
        v81 = 0;
        goto LABEL_114;
      }

LABEL_113:
      sub_298BDB508(&v80, v3, v4);
LABEL_114:
      v69 = *(v59 + 8);
      if (v69)
      {
        sub_298BDB508(&__p, v69, *(v59 + 16));
        v70 = HIBYTE(v79);
        p_p = __p;
        v72 = v78;
      }

      else
      {
        v72 = 0;
        p_p = 0;
        v70 = 0;
        v78 = 0;
        __p = 0;
        v79 = 0;
      }

      if ((v70 & 0x80u) != 0)
      {
        v70 = v72;
      }

      else
      {
        p_p = &__p;
      }

      *&v84 = 0;
      *(&v84 + 1) = p_p;
      v85 = v70;
      sub_298C26CD8(uu, &v84);
      *&v84 = uu;
      v73 = sub_298B223E4((a2 + 392), uu, &unk_298CF78C8, &v84);
      v74 = v73;
      if (v73[55] < 0)
      {
        operator delete(*(v73 + 4));
      }

      *(v74 + 2) = v80;
      *(v74 + 6) = v81;
      HIBYTE(v81) = 0;
      LOBYTE(v80) = 0;
      if (SHIBYTE(v79) < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v81) < 0)
        {
          operator delete(v80);
        }
      }

      do
      {
        v59 += 56;
      }

      while (v59 != v67 && *(v59 + 8) >= 0xFFFFFFFFFFFFFFFELL);
    }
  }

LABEL_84:
  v60 = sub_298B87C7C(a3, "SharedContexts", 14);
  if (*v60 != v60[1])
  {
    operator new();
  }

  v75 = sub_298B87C7C(a3, "UniqueContexts", 14);
  if (*v75 != v75[1])
  {
    operator new();
  }

  sub_298C193EC(a2, v76);
}

uint64_t sub_298C1A9DC(uint64_t a1)
{
  sub_298C27B6C(a1);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 23) = 9;
  *(a1 + 8) = 62;
  *a1 = *"<unknown>";
  *(a1 + 24) = -1;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 176) = 1;
  return a1;
}

void sub_298C1AA80(void *a1, std::string::size_type a2, uint64_t a3, _BYTE *a4)
{
  v608 = *MEMORY[0x29EDCA608];
  __p = 0;
  v600 = 0uLL;
  v602.__r_.__value_.__r.__words[0] = "VersionInfo";
  v602.__r_.__value_.__l.__size_ = 11;
  v601.__r_.__value_.__r.__words[0] = 0;
  if (!sub_298B89FD8(a3, &v602, &v601))
  {
    v582 = a2;
    goto LABEL_48;
  }

  v582 = a2;
  if (v601.__r_.__value_.__r.__words[0] == *a3 + 56 * *(a3 + 16))
  {
    goto LABEL_48;
  }

  v8 = *(v601.__r_.__value_.__r.__words[0] + 24);
  if (v8 == 5)
  {
    sub_298C3C7C8(a2, *(v601.__r_.__value_.__r.__words[0] + 32), *(v601.__r_.__value_.__r.__words[0] + 40), &v598);
    v9 = v598;
    if (v598)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 != 6)
  {
LABEL_48:
    *a4 = 1;
    MEMORY[0x29C294300](&__p, "Version information missing.");
    if (*a4 != 1)
    {
      goto LABEL_49;
    }

    goto LABEL_31;
  }

  v22 = *(v601.__r_.__value_.__r.__words[0] + 55);
  if (v22 >= 0)
  {
    v23 = (v601.__r_.__value_.__r.__words[0] + 32);
  }

  else
  {
    v23 = *(v601.__r_.__value_.__r.__words[0] + 32);
  }

  if (v22 >= 0)
  {
    v24 = *(v601.__r_.__value_.__r.__words[0] + 55);
  }

  else
  {
    v24 = *(v601.__r_.__value_.__r.__words[0] + 40);
  }

  sub_298C3C7C8(a2, v23, v24, &v598);
  v9 = v598;
  if (v598)
  {
LABEL_5:
    *a4 = 1;
    v597 = v9;
    v598 = 0;
    sub_298B851B0(&v597, &v601);
    v10 = std::string::insert(&v601, 0, "Failed to parse version info: ");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v602.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v602.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v602, "\n");
    v13 = v12->__r_.__value_.__r.__words[0];
    *v607 = v12->__r_.__value_.__l.__size_;
    *&v607[7] = *(&v12->__r_.__value_.__r.__words[1] + 7);
    v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v600) < 0)
    {
      operator delete(__p);
    }

    __p = v13;
    *&v600 = *v607;
    *(&v600 + 7) = *&v607[7];
    HIBYTE(v600) = v14;
    if (SHIBYTE(v602.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v602.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v601.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_9:
        v15 = v597;
        if (!v597)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((SHIBYTE(v601.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(v601.__r_.__value_.__l.__data_);
    v15 = v597;
    if (!v597)
    {
LABEL_11:
      if (v598)
      {
        (*(*v598 + 1))(v598);
      }

      goto LABEL_13;
    }

LABEL_10:
    (*(*v15 + 8))(v15);
    goto LABEL_11;
  }

LABEL_13:
  LODWORD(v602.__r_.__value_.__r.__words[1]) = 0;
  LOBYTE(v604) = 0;
  *(&v604 + 1) = 0;
  v605 = 1;
  v603 = 0uLL;
  v602.__r_.__value_.__r.__words[2] = 0;
  v602.__r_.__value_.__r.__words[0] = &unk_2A1F1E040;
  p_p = &__p;
  sub_298ADDDB0(&v602);
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(v588, *a2, *(a2 + 8));
  }

  else
  {
    *v588 = *a2;
    v589 = *(a2 + 16);
  }

  v590 = *(a2 + 24);
  v591 = *(a2 + 28);
  v593[0] = 0;
  v593[1] = 0;
  v592 = v593;
  v16 = *(a2 + 32);
  v17 = (a2 + 40);
  if (v16 != v17)
  {
    do
    {
      sub_298BCD5B0(&v592, v593, v16 + 4, (v16 + 4));
      v19 = v16[1];
      if (v19)
      {
        do
        {
          v18 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v18 = v16[2];
          v106 = *v18 == v16;
          v16 = v18;
        }

        while (!v106);
      }

      v16 = v18;
    }

    while (v18 != v17);
  }

  LOBYTE(v594) = 0;
  v596 = 0;
  a2 = v582;
  if (*(v582 + 80) == 1)
  {
    if (*(v582 + 79) < 0)
    {
      sub_298AFE11C(&v594, *(v582 + 56), *(v582 + 64));
    }

    else
    {
      v594 = *(v582 + 56);
      v595 = *(v582 + 72);
    }

    v596 = 1;
  }

  *a4 = sub_298C3CC04(v588, &v602) ^ 1;
  if (v596 == 1 && SHIBYTE(v595) < 0)
  {
    operator delete(v594);
    sub_298BCE714(&v592, v593[0]);
    if ((SHIBYTE(v589) & 0x80000000) == 0)
    {
LABEL_30:
      sub_298B9AE14(&v602);
      if (*a4 == 1)
      {
        goto LABEL_31;
      }

LABEL_49:
      v602.__r_.__value_.__r.__words[0] = "Clusters";
      v602.__r_.__value_.__l.__size_ = 8;
      v601.__r_.__value_.__r.__words[0] = 0;
      v577 = a3;
      if (sub_298B89FD8(a3, &v602, &v601))
      {
        if (*(v601.__r_.__value_.__r.__words[0] + 24) == 7)
        {
          v25 = v601.__r_.__value_.__r.__words[0] + 32;
        }

        else
        {
          v25 = 0;
        }

        if (!*(v25 + 8))
        {
          goto LABEL_936;
        }
      }

      else
      {
        v547 = *a3 + 56 * *(a3 + 16);
        v548 = *(v547 + 24);
        v549 = v547 + 32;
        if (v548 == 7)
        {
          v25 = v549;
        }

        else
        {
          v25 = 0;
        }

        if (!*(v25 + 8))
        {
          goto LABEL_936;
        }
      }

      v26 = *v25;
      v27 = *(v25 + 16);
      if (v27)
      {
        v28 = 56 * v27;
        v29 = v26;
        while (*(v29 + 8) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v29 += 56;
          v28 -= 56;
          if (!v28)
          {
            goto LABEL_936;
          }
        }
      }

      else
      {
        v29 = v26;
      }

      v30 = v26 + 56 * v27;
      if (v30 != v29)
      {
        v579 = v30;
        v580 = (a2 + 160);
        while (1)
        {
          v31 = *(v29 + 8);
          v32 = *(v29 + 16);
          v602.__r_.__value_.__r.__words[0] = 0;
          v33 = sub_298B97354(v31, v32, 0xAu, &v602) ? -1 : v602.__r_.__value_.__r.__words[0];
          v34 = v580;
LABEL_68:
          v35 = *v34;
          if (!*v34)
          {
LABEL_72:
            operator new();
          }

          while (1)
          {
            v34 = v35;
            v36 = v35[4];
            if (v33 < v36)
            {
              goto LABEL_68;
            }

            if (v36 >= v33)
            {
              break;
            }

            v35 = v34[1];
            if (!v35)
            {
              goto LABEL_72;
            }
          }

          v581 = v34;
          v37 = *(v29 + 24) == 7 ? v29 + 32 : 0;
          v602.__r_.__value_.__r.__words[0] = "Cores";
          v602.__r_.__value_.__l.__size_ = 5;
          v601.__r_.__value_.__r.__words[0] = 0;
          v583 = v29;
          v38 = sub_298B89FD8(v37, &v602, &v601) ? v601.__r_.__value_.__r.__words[0] : *v37 + 56 * *(v37 + 16);
          v39 = 0x2A13C2000uLL;
          v40 = *(v38 + 24);
          v41 = v38 + 32;
          v42 = v40 == 7 ? v41 : 0;
          if (*(v42 + 8))
          {
            v43 = *v42;
            v44 = *(v42 + 16);
            if (v44)
            {
              v45 = 56 * v44;
              v46 = v43;
              while (*(v46 + 8) >= 0xFFFFFFFFFFFFFFFELL)
              {
                v46 += 56;
                v45 -= 56;
                if (!v45)
                {
                  goto LABEL_925;
                }
              }
            }

            else
            {
              v46 = v43;
            }

            v47 = v43 + 56 * v44;
            if (v47 != v46)
            {
              break;
            }
          }

LABEL_925:
          v29 = v583 + 56;
          if (v583 + 56 == v579)
          {
            a2 = v582;
          }

          else
          {
            a2 = v582;
            do
            {
              if (*(v29 + 8) < 0xFFFFFFFFFFFFFFFELL)
              {
                break;
              }

              v29 += 56;
            }

            while (v29 != v579);
          }

          if (v29 == v579)
          {
            goto LABEL_936;
          }
        }

        v578 = v47;
        while (1)
        {
          v48 = *(v46 + 8);
          v49 = *(v46 + 16);
          v602.__r_.__value_.__r.__words[0] = 0;
          v50 = sub_298B97354(v48, v49, 0xAu, &v602) ? -1 : v602.__r_.__value_.__r.__words[0];
          v51 = v581 + 6;
LABEL_94:
          v52 = *v51;
          if (!*v51)
          {
LABEL_98:
            operator new();
          }

          while (1)
          {
            v51 = v52;
            v53 = v52[4];
            if (v50 < v53)
            {
              goto LABEL_94;
            }

            if (v53 >= v50)
            {
              break;
            }

            v52 = v51[1];
            if (!v52)
            {
              goto LABEL_98;
            }
          }

          if (*(v46 + 24) == 7)
          {
            v54 = v46 + 32;
          }

          else
          {
            v54 = 0;
          }

          v602.__r_.__value_.__r.__words[0] = "OutputFiles";
          v602.__r_.__value_.__l.__size_ = 11;
          v601.__r_.__value_.__r.__words[0] = 0;
          if (sub_298B89FD8(v54, &v602, &v601))
          {
            v55 = v601.__r_.__value_.__r.__words[0];
          }

          else
          {
            v55 = *v54 + 56 * *(v54 + 16);
          }

          v56 = *(v55 + 24);
          v57 = v55 + 32;
          if (v56 != 8)
          {
            v57 = 0;
          }

          v58 = *v57;
          v585 = *(v57 + 8);
          if (*v57 != v585)
          {
            break;
          }

LABEL_918:
          v46 += 56;
          if (v46 != v578)
          {
            while (*(v46 + 8) >= 0xFFFFFFFFFFFFFFFELL)
            {
              v46 += 56;
              if (v46 == v578)
              {
                goto LABEL_925;
              }
            }

            if (v46 != v578)
            {
              continue;
            }
          }

          goto LABEL_925;
        }

        v584 = v46;
        v587 = v51;
        while (1)
        {
          v59 = v51[6];
          v60 = v51[7];
          if (v59 >= v60)
          {
            v62 = v58;
            v63 = v51[5];
            v64 = v59 - v63;
            v65 = 0xCCCCCCCCCCCCCCCDLL * ((v59 - v63) >> 6);
            v66 = v65 + 1;
            if (v65 + 1 > 0xCCCCCCCCCCCCCCLL)
            {
              sub_298ADDDA0();
            }

            v67 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - v63) >> 6);
            if (2 * v67 > v66)
            {
              v66 = 2 * v67;
            }

            if (v67 >= 0x66666666666666)
            {
              v68 = 0xCCCCCCCCCCCCCCLL;
            }

            else
            {
              v68 = v66;
            }

            if (v68)
            {
              if (v68 <= 0xCCCCCCCCCCCCCCLL)
              {
                operator new();
              }

              sub_298ADDDA0();
            }

            v69 = 320 * v65;
            *(v69 + 288) = 0u;
            *(v69 + 304) = 0u;
            *(v69 + 256) = 0u;
            *(v69 + 272) = 0u;
            *(v69 + 224) = 0u;
            *(v69 + 240) = 0u;
            *(v69 + 192) = 0u;
            *(v69 + 208) = 0u;
            *(v69 + 160) = 0u;
            *(v69 + 176) = 0u;
            *(v69 + 128) = 0u;
            *(v69 + 144) = 0u;
            *(v69 + 96) = 0u;
            *(v69 + 112) = 0u;
            *(v69 + 64) = 0u;
            *(v69 + 80) = 0u;
            *(v69 + 32) = 0u;
            *(v69 + 48) = 0u;
            *v69 = 0u;
            *(v69 + 16) = 0u;
            v70 = v587[5];
            v71 = v587[6];
            v72 = v71 - v70;
            if (v71 == v70)
            {
              v51 = v587;
            }

            else
            {
              v73 = 0;
              v74 = &v64[-64 * ((v71 - v70) >> 6)];
              v51 = v587;
              do
              {
                v76 = &v74[v73];
                v77 = &v70[v73];
                *v76 = *&v70[v73];
                v78 = *&v70[v73 + 16];
                *(v76 + 4) = *&v70[v73 + 32];
                *(v76 + 1) = v78;
                *(v77 + 3) = 0;
                *(v77 + 4) = 0;
                *(v77 + 2) = 0;
                v74[v73 + 40] = 0;
                v76[64] = 0;
                if (v70[v73 + 64] == 1)
                {
                  v79 = *(v77 + 40);
                  *&v74[v73 + 56] = *(v77 + 7);
                  *&v74[v73 + 40] = v79;
                  *(v77 + 6) = 0;
                  *(v77 + 7) = 0;
                  *(v77 + 5) = 0;
                  v76[64] = 1;
                }

                v80 = *(v77 + 72);
                *(v76 + 11) = *(v77 + 11);
                *(v76 + 72) = v80;
                *(v77 + 10) = 0;
                *(v77 + 11) = 0;
                *(v77 + 9) = 0;
                v76[96] = 0;
                v76[120] = 0;
                if (v77[120] == 1)
                {
                  v81 = &v70[v73];
                  v82 = *&v70[v73 + 96];
                  *(v76 + 14) = *&v70[v73 + 112];
                  *(v76 + 6) = v82;
                  *(v81 + 13) = 0;
                  *(v81 + 14) = 0;
                  *(v81 + 12) = 0;
                  v76[120] = 1;
                }

                v83 = &v74[v73];
                v84 = *(v77 + 8);
                *(v83 + 18) = *(v77 + 18);
                *(v83 + 8) = v84;
                *(v77 + 17) = 0;
                *(v77 + 18) = 0;
                *(v77 + 16) = 0;
                v74[v73 + 152] = 0;
                v83[176] = 0;
                if (v77[176] == 1)
                {
                  v85 = &v70[v73];
                  v86 = *&v70[v73 + 152];
                  *&v74[v73 + 168] = *&v70[v73 + 168];
                  *&v74[v73 + 152] = v86;
                  *(v85 + 20) = 0;
                  *(v85 + 21) = 0;
                  *(v85 + 19) = 0;
                  v83[176] = 1;
                }

                v87 = *(v77 + 184);
                *(v83 + 25) = *(v77 + 25);
                *(v83 + 184) = v87;
                *(v77 + 24) = 0;
                *(v77 + 25) = 0;
                *(v77 + 23) = 0;
                v83[208] = 0;
                v83[232] = 0;
                if (v77[232] == 1)
                {
                  v88 = &v70[v73];
                  v89 = *&v70[v73 + 208];
                  *(v83 + 28) = *&v70[v73 + 224];
                  *(v83 + 13) = v89;
                  *(v88 + 27) = 0;
                  *(v88 + 28) = 0;
                  *(v88 + 26) = 0;
                  v83[232] = 1;
                }

                v90 = &v74[v73];
                v91 = *(v77 + 15);
                *(v90 + 32) = *(v77 + 32);
                *(v90 + 15) = v91;
                *(v77 + 31) = 0;
                *(v77 + 32) = 0;
                *(v77 + 30) = 0;
                v90[264] = 0;
                v90[288] = 0;
                if (v77[288] == 1)
                {
                  v92 = &v70[v73];
                  v93 = *&v70[v73 + 264];
                  *(v90 + 35) = *&v70[v73 + 280];
                  *(v90 + 264) = v93;
                  *(v92 + 34) = 0;
                  *(v92 + 35) = 0;
                  *(v92 + 33) = 0;
                  v90[288] = 1;
                }

                v75 = *(v77 + 296);
                *(v90 + 39) = *(v77 + 39);
                *(v90 + 296) = v75;
                v73 += 320;
              }

              while (v77 + 320 != v71);
              do
              {
                v70 = (sub_298BCE30C(v70) + 320);
              }

              while (v70 != v71);
              v70 = v587[5];
            }

            v94 = v69 - v72;
            v61 = (v69 + 320);
            v51[5] = v94;
            v51[6] = v69 + 320;
            v51[7] = 0;
            if (v70)
            {
              operator delete(v70);
            }

            v58 = v62;
          }

          else
          {
            v59[18] = 0u;
            v59[19] = 0u;
            v59[16] = 0u;
            v59[17] = 0u;
            v59[14] = 0u;
            v59[15] = 0u;
            v59[12] = 0u;
            v59[13] = 0u;
            v59[10] = 0u;
            v59[11] = 0u;
            v59[8] = 0u;
            v59[9] = 0u;
            v59[6] = 0u;
            v59[7] = 0u;
            v59[4] = 0u;
            v59[5] = 0u;
            v59[2] = 0u;
            v59[3] = 0u;
            *v59 = 0u;
            v59[1] = 0u;
            v61 = v59 + 20;
          }

          v51[6] = v61;
          v586 = v58;
          if (*v58 == 7)
          {
            v95 = v58 + 4;
          }

          else
          {
            v95 = 0;
          }

          v96 = *v95;
          v97 = *(v95 + 4);
          if (!v97)
          {
            goto LABEL_182;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v506 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v506 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v506;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v98 = sub_298B40118("SyncUnitIndex", 0xDuLL, *(v39 + 2832));
          v99 = v97 - 1;
          v100 = 1;
          if ("SyncUnitIndex" == -2)
          {
            v101 = v98 & v99;
            v102 = v96 + 56 * (v98 & v99);
            v103 = *(v102 + 8);
            if (v103 != -2)
            {
              while (v103 != -1)
              {
                if (*(v102 + 16) != 13 || ((v104 = *v103, v105 = *(v103 + 5), v104 == 0x74696E55636E7953) ? (v106 = v105 == 0x7865646E4974696ELL) : (v106 = 0), !v106))
                {
                  v107 = v100 + v101;
                  ++v100;
                  v101 = v107 & v99;
                  v102 = v96 + 56 * (v107 & v99);
                  v103 = *(v102 + 8);
                  if (v103 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_163;
              }

LABEL_180:
              if ("SyncUnitIndex" != -1)
              {
                v96 = *v95;
                v97 = *(v95 + 4);
LABEL_182:
                *(v61 - 40) = 0;
                if (!v97)
                {
                  goto LABEL_222;
                }

                goto LABEL_167;
              }
            }
          }

          else
          {
            while (1)
            {
              v102 = v96 + 56 * (v98 & v99);
              v108 = *(v102 + 8);
              if (v108 != -2)
              {
                if (v108 == -1)
                {
                  goto LABEL_180;
                }

                if (*(v102 + 16) == 13)
                {
                  v109 = *v108;
                  v110 = *(v108 + 5);
                  if (v109 == 0x74696E55636E7953 && v110 == 0x7865646E4974696ELL)
                  {
                    break;
                  }
                }
              }

              v98 = v100 + (v98 & v99);
              ++v100;
            }
          }

LABEL_163:
          v96 = *v95;
          v97 = *(v95 + 4);
          if (v102 == *v95 + 56 * v97)
          {
            goto LABEL_182;
          }

          v112 = *(v102 + 24);
          if (v112 == 3)
          {
            v113 = *(v102 + 32);
            v114 = v113 & 0xFFFFFFFFFFFFFF00;
          }

          else if (v112 == 4)
          {
            v113 = *(v102 + 32) & ~(*(v102 + 32) >> 63);
            v114 = v113 & 0x7FFFFFFFFFFFFF00;
          }

          else
          {
            if (v112 == 2 && (v602.__r_.__value_.__r.__words[0] = *(v102 + 32), modf(*&v602.__r_.__value_.__l.__data_, &v602) == 0.0) && fabs(*&v602.__r_.__value_.__l.__data_) <= 9.22337204e18)
            {
              v113 = *&v602.__r_.__value_.__l.__data_;
              v114 = *&v602.__r_.__value_.__l.__data_ & 0xFFFFFFFFFFFFFF00;
            }

            else
            {
              LOBYTE(v113) = 0;
              v114 = 0;
            }

            v39 = 0x2A13C2000;
          }

          v96 = *v95;
          v97 = *(v95 + 4);
          *(v61 - 40) = v114 | v113;
          if (!v97)
          {
            goto LABEL_222;
          }

LABEL_167:
          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v507 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v507 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v507;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v115 = sub_298B40118("EndUnitIndex", 0xCuLL, *(v39 + 2832));
          v116 = v97 - 1;
          v117 = 1;
          if ("EndUnitIndex" != -2)
          {
            while (1)
            {
              v119 = v96 + 56 * (v115 & v116);
              v125 = *(v119 + 8);
              if (v125 != -2)
              {
                if (v125 == -1)
                {
                  goto LABEL_220;
                }

                if (*(v119 + 16) == 12)
                {
                  v126 = *v125;
                  v127 = *(v125 + 2);
                  if (v126 == 0x4974696E55646E45 && v127 == 2019910766)
                  {
                    break;
                  }
                }
              }

              v115 = v117 + (v115 & v116);
              ++v117;
            }

LABEL_193:
            v96 = *v95;
            v97 = *(v95 + 4);
            v129 = v97;
            goto LABEL_194;
          }

          v118 = v115 & v116;
          v119 = v96 + 56 * (v115 & v116);
          v120 = *(v119 + 8);
          if (v120 == -2)
          {
            goto LABEL_193;
          }

          while (v120 != -1)
          {
            if (*(v119 + 16) != 12 || ((v121 = *v120, v122 = *(v120 + 2), v121 == 0x4974696E55646E45) ? (v123 = v122 == 2019910766) : (v123 = 0), !v123))
            {
              v124 = v117 + v118;
              ++v117;
              v118 = v124 & v116;
              v119 = v96 + 56 * (v124 & v116);
              v120 = *(v119 + 8);
              if (v120 != -2)
              {
                continue;
              }
            }

            goto LABEL_193;
          }

LABEL_220:
          if ("EndUnitIndex" == -1)
          {
            goto LABEL_193;
          }

          v96 = *v95;
          v97 = *(v95 + 4);
LABEL_222:
          v129 = v97;
          v119 = v96 + 56 * v97;
LABEL_194:
          if (v119 == v96 + 56 * v129)
          {
            v130 = 0;
          }

          else
          {
            v130 = (v119 + 24);
          }

          v131 = *v130;
          switch(v131)
          {
            case 2:
              *(v61 - 39) = llround(v130[1]);
              if (!v97)
              {
                goto LABEL_216;
              }

              break;
            case 3:
              v132 = *(v130 + 1);
              if (v132 < 0)
              {
                *(v61 - 39) = llround(v132);
                if (!v97)
                {
                  goto LABEL_216;
                }
              }

              else
              {
                *(v61 - 39) = v132 & 0x7FFFFFFFFFFFFFFFLL;
                if (!v97)
                {
                  goto LABEL_216;
                }
              }

              break;
            case 4:
              *(v61 - 39) = v130[1];
              if (!v97)
              {
                goto LABEL_216;
              }

              break;
            default:
              *(v61 - 39) = llround(0.0);
              if (!v97)
              {
LABEL_216:
                v143 = 0;
LABEL_217:
                v137 = v96 + 56 * v143;
                goto LABEL_232;
              }

              break;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v508 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v508 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v508;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v133 = sub_298B40118("Ranges", 6uLL, *(v39 + 2832));
          v134 = v97 - 1;
          v135 = 1;
          if ("Ranges" == -2)
          {
            v136 = v133 & v134;
            v137 = v96 + 56 * (v133 & v134);
            v138 = *(v137 + 8);
            if (v138 != -2)
            {
              while (v138 != -1)
              {
                if (*(v137 + 16) != 6 || ((v139 = *v138, v140 = *(v138 + 2), v139 == 1735287122) ? (v141 = v140 == 29541) : (v141 = 0), !v141))
                {
                  v142 = v135 + v136;
                  ++v135;
                  v136 = v142 & v134;
                  v137 = v96 + 56 * (v142 & v134);
                  v138 = *(v137 + 8);
                  if (v138 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_232;
              }

LABEL_247:
              if ("Ranges" != -1)
              {
                v96 = *v95;
                v143 = *(v95 + 4);
                goto LABEL_217;
              }
            }
          }

          else
          {
            while (1)
            {
              v137 = v96 + 56 * (v133 & v134);
              v144 = *(v137 + 8);
              if (v144 != -2)
              {
                if (v144 == -1)
                {
                  goto LABEL_247;
                }

                if (*(v137 + 16) == 6)
                {
                  v145 = *v144;
                  v146 = *(v144 + 2);
                  if (v145 == 1735287122 && v146 == 29541)
                  {
                    break;
                  }
                }
              }

              v133 = v135 + (v133 & v134);
              ++v135;
            }
          }

LABEL_232:
          v148 = *(v137 + 24);
          v149 = (v137 + 32);
          if (v148 == 7)
          {
            v150 = v149;
          }

          else
          {
            v150 = 0;
          }

          v151 = *v150;
          v152 = *(v150 + 4);
          if (!v152)
          {
            v163 = 0;
LABEL_250:
            v157 = v151 + 56 * v163;
            goto LABEL_260;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v509 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v509 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v509;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v153 = sub_298B40118("DataKey", 7uLL, *(v39 + 2832));
          v154 = v152 - 1;
          v155 = 1;
          if ("DataKey" == -2)
          {
            v156 = v153 & v154;
            v157 = v151 + 56 * (v153 & v154);
            v158 = *(v157 + 8);
            if (v158 != -2)
            {
              while (v158 != -1)
              {
                if (*(v157 + 16) != 7 || ((v159 = *v158, v160 = *(v158 + 3), v159 == 1635017028) ? (v161 = v160 == 2036681569) : (v161 = 0), !v161))
                {
                  v162 = v155 + v156;
                  ++v155;
                  v156 = v162 & v154;
                  v157 = v151 + 56 * (v162 & v154);
                  v158 = *(v157 + 8);
                  if (v158 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_260;
              }

LABEL_281:
              if ("DataKey" != -1)
              {
                v151 = *v150;
                v163 = *(v150 + 4);
                goto LABEL_250;
              }
            }
          }

          else
          {
            while (1)
            {
              v157 = v151 + 56 * (v153 & v154);
              v164 = *(v157 + 8);
              if (v164 != -2)
              {
                if (v164 == -1)
                {
                  goto LABEL_281;
                }

                if (*(v157 + 16) == 7)
                {
                  v165 = *v164;
                  v166 = *(v164 + 3);
                  if (v165 == 1635017028 && v166 == 2036681569)
                  {
                    break;
                  }
                }
              }

              v153 = v155 + (v153 & v154);
              ++v155;
            }
          }

LABEL_260:
          if (*(v157 + 24) == 6)
          {
            v180 = v157 + 32;
            v181 = *(v157 + 55);
            v183 = *(v157 + 32);
            v182 = *(v157 + 40);
            if (v181 >= 0)
            {
              v184 = v180;
            }

            else
            {
              v184 = v183;
            }

            if (v181 >= 0)
            {
              v185 = v181;
            }

            else
            {
              v185 = v182;
            }

            MEMORY[0x29C294310](v61 - 19, v184, v185);
            v168 = *v150;
            v169 = *(v150 + 4);
            if (!v169)
            {
              goto LABEL_308;
            }
          }

          else
          {
            MEMORY[0x29C294310](v61 - 19, *(v157 + 32), *(v157 + 40));
            v168 = *v150;
            v169 = *(v150 + 4);
            if (!v169)
            {
              goto LABEL_308;
            }
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v510 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v510 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v510;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v170 = sub_298B40118("CompressionKey", 0xEuLL, *(v39 + 2832));
          v171 = v169 - 1;
          v172 = 1;
          if ("CompressionKey" == -2)
          {
            v173 = v170 & v171;
            v174 = v168 + 56 * (v170 & v171);
            v175 = *(v174 + 8);
            if (v175 != -2)
            {
              while (v175 != -1)
              {
                if (*(v174 + 16) != 14 || ((v176 = *v175, v177 = *(v175 + 6), v176 == 0x73736572706D6F43) ? (v178 = v177 == 0x79654B6E6F697373) : (v178 = 0), !v178))
                {
                  v179 = v172 + v173;
                  ++v172;
                  v173 = v179 & v171;
                  v174 = v168 + 56 * (v179 & v171);
                  v175 = *(v174 + 8);
                  if (v175 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_292;
              }

LABEL_322:
              if ("CompressionKey" != -1)
              {
                goto LABEL_308;
              }
            }
          }

          else
          {
            while (1)
            {
              v174 = v168 + 56 * (v170 & v171);
              v186 = *(v174 + 8);
              if (v186 != -2)
              {
                if (v186 == -1)
                {
                  goto LABEL_322;
                }

                if (*(v174 + 16) == 14)
                {
                  v187 = *v186;
                  v188 = *(v186 + 6);
                  if (v187 == 0x73736572706D6F43 && v188 == 0x79654B6E6F697373)
                  {
                    break;
                  }
                }
              }

              v170 = v172 + (v170 & v171);
              ++v172;
            }
          }

LABEL_292:
          if (v174 == *v150 + 56 * *(v150 + 4))
          {
            goto LABEL_308;
          }

          v190 = *(v174 + 24);
          if (v190 == 5)
          {
            v191 = *(v174 + 32);
            v192 = *(v174 + 40);
            v193 = v61 - 280;
            if (*(v61 - 256) == 1)
            {
              goto LABEL_295;
            }
          }

          else
          {
            if (v190 != 6)
            {
              goto LABEL_308;
            }

            v196 = *(v174 + 32);
            v194 = v174 + 32;
            v195 = v196;
            v197 = *(v194 + 23);
            if (v197 >= 0)
            {
              v191 = v194;
            }

            else
            {
              v191 = v195;
            }

            v198 = *(v194 + 8);
            if (v197 >= 0)
            {
              v192 = v197;
            }

            else
            {
              v192 = v198;
            }

            v193 = v61 - 280;
            if (*(v61 - 256) == 1)
            {
LABEL_295:
              MEMORY[0x29C294310](v193, v191, v192);
              goto LABEL_308;
            }
          }

          if (v192 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_931;
          }

          if (v192 >= 0x17)
          {
            operator new();
          }

          *(v61 - 257) = v192;
          if (v192)
          {
            memmove(v193, v191, v192);
          }

          v193[v192] = 0;
          *(v61 - 256) = 1;
LABEL_308:
          v199 = *v95;
          v200 = *(v95 + 4);
          if (!v200)
          {
            v211 = 0;
LABEL_325:
            v205 = v199 + 56 * v211;
            goto LABEL_335;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v511 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v511 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v511;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v201 = sub_298B40118("UnitMarks", 9uLL, *(v39 + 2832));
          v202 = v200 - 1;
          v203 = 1;
          if ("UnitMarks" == -2)
          {
            v204 = v201 & v202;
            v205 = v199 + 56 * (v201 & v202);
            v206 = *(v205 + 8);
            if (v206 != -2)
            {
              while (v206 != -1)
              {
                if (*(v205 + 16) != 9 || ((v207 = *v206, v208 = *(v206 + 8), v207 == 0x6B72614D74696E55) ? (v209 = v208 == 115) : (v209 = 0), !v209))
                {
                  v210 = v203 + v204;
                  ++v203;
                  v204 = v210 & v202;
                  v205 = v199 + 56 * (v210 & v202);
                  v206 = *(v205 + 8);
                  if (v206 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_335;
              }

LABEL_350:
              if ("UnitMarks" != -1)
              {
                v199 = *v95;
                v211 = *(v95 + 4);
                goto LABEL_325;
              }
            }
          }

          else
          {
            while (1)
            {
              v205 = v199 + 56 * (v201 & v202);
              v212 = *(v205 + 8);
              if (v212 != -2)
              {
                if (v212 == -1)
                {
                  goto LABEL_350;
                }

                if (*(v205 + 16) == 9)
                {
                  v213 = *v212;
                  v214 = *(v212 + 8);
                  if (v213 == 0x6B72614D74696E55 && v214 == 115)
                  {
                    break;
                  }
                }
              }

              v201 = v203 + (v201 & v202);
              ++v203;
            }
          }

LABEL_335:
          v216 = *(v205 + 24);
          v217 = (v205 + 32);
          if (v216 == 7)
          {
            v218 = v217;
          }

          else
          {
            v218 = 0;
          }

          v219 = *v218;
          v220 = *(v218 + 4);
          if (!v220)
          {
            v231 = 0;
LABEL_353:
            v225 = v219 + 56 * v231;
            goto LABEL_363;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v512 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v512 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v512;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v221 = sub_298B40118("DataKey", 7uLL, *(v39 + 2832));
          v222 = v220 - 1;
          v223 = 1;
          if ("DataKey" == -2)
          {
            v224 = v221 & v222;
            v225 = v219 + 56 * (v221 & v222);
            v226 = *(v225 + 8);
            if (v226 != -2)
            {
              while (v226 != -1)
              {
                if (*(v225 + 16) != 7 || ((v227 = *v226, v228 = *(v226 + 3), v227 == 1635017028) ? (v229 = v228 == 2036681569) : (v229 = 0), !v229))
                {
                  v230 = v223 + v224;
                  ++v223;
                  v224 = v230 & v222;
                  v225 = v219 + 56 * (v230 & v222);
                  v226 = *(v225 + 8);
                  if (v226 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_363;
              }

LABEL_384:
              if ("DataKey" != -1)
              {
                v219 = *v218;
                v231 = *(v218 + 4);
                goto LABEL_353;
              }
            }
          }

          else
          {
            while (1)
            {
              v225 = v219 + 56 * (v221 & v222);
              v232 = *(v225 + 8);
              if (v232 != -2)
              {
                if (v232 == -1)
                {
                  goto LABEL_384;
                }

                if (*(v225 + 16) == 7)
                {
                  v233 = *v232;
                  v234 = *(v232 + 3);
                  if (v233 == 1635017028 && v234 == 2036681569)
                  {
                    break;
                  }
                }
              }

              v221 = v223 + (v221 & v222);
              ++v223;
            }
          }

LABEL_363:
          if (*(v225 + 24) == 6)
          {
            v248 = v225 + 32;
            v249 = *(v225 + 55);
            v251 = *(v225 + 32);
            v250 = *(v225 + 40);
            if (v249 >= 0)
            {
              v252 = v248;
            }

            else
            {
              v252 = v251;
            }

            if (v249 >= 0)
            {
              v253 = v249;
            }

            else
            {
              v253 = v250;
            }

            MEMORY[0x29C294310](v61 - 248, v252, v253);
            v236 = *v218;
            v237 = *(v218 + 4);
            if (!v237)
            {
              goto LABEL_411;
            }
          }

          else
          {
            MEMORY[0x29C294310](v61 - 248, *(v225 + 32), *(v225 + 40));
            v236 = *v218;
            v237 = *(v218 + 4);
            if (!v237)
            {
              goto LABEL_411;
            }
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v513 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v513 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v513;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v238 = sub_298B40118("CompressionKey", 0xEuLL, *(v39 + 2832));
          v239 = v237 - 1;
          v240 = 1;
          if ("CompressionKey" == -2)
          {
            v241 = v238 & v239;
            v242 = v236 + 56 * (v238 & v239);
            v243 = *(v242 + 8);
            if (v243 != -2)
            {
              while (v243 != -1)
              {
                if (*(v242 + 16) != 14 || ((v244 = *v243, v245 = *(v243 + 6), v244 == 0x73736572706D6F43) ? (v246 = v245 == 0x79654B6E6F697373) : (v246 = 0), !v246))
                {
                  v247 = v240 + v241;
                  ++v240;
                  v241 = v247 & v239;
                  v242 = v236 + 56 * (v247 & v239);
                  v243 = *(v242 + 8);
                  if (v243 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_395;
              }

LABEL_425:
              if ("CompressionKey" != -1)
              {
                goto LABEL_411;
              }
            }
          }

          else
          {
            while (1)
            {
              v242 = v236 + 56 * (v238 & v239);
              v254 = *(v242 + 8);
              if (v254 != -2)
              {
                if (v254 == -1)
                {
                  goto LABEL_425;
                }

                if (*(v242 + 16) == 14)
                {
                  v255 = *v254;
                  v256 = *(v254 + 6);
                  if (v255 == 0x73736572706D6F43 && v256 == 0x79654B6E6F697373)
                  {
                    break;
                  }
                }
              }

              v238 = v240 + (v238 & v239);
              ++v240;
            }
          }

LABEL_395:
          if (v242 == *v218 + 56 * *(v218 + 4))
          {
            goto LABEL_411;
          }

          v258 = *(v242 + 24);
          if (v258 == 5)
          {
            v259 = *(v242 + 32);
            v260 = *(v242 + 40);
            v261 = v61 - 14;
            if (*(v61 - 200) == 1)
            {
              goto LABEL_398;
            }
          }

          else
          {
            if (v258 != 6)
            {
              goto LABEL_411;
            }

            v264 = *(v242 + 32);
            v262 = v242 + 32;
            v263 = v264;
            v265 = *(v262 + 23);
            if (v265 >= 0)
            {
              v259 = v262;
            }

            else
            {
              v259 = v263;
            }

            v266 = *(v262 + 8);
            if (v265 >= 0)
            {
              v260 = v265;
            }

            else
            {
              v260 = v266;
            }

            v261 = v61 - 14;
            if (*(v61 - 200) == 1)
            {
LABEL_398:
              MEMORY[0x29C294310](v261, v259, v260);
              goto LABEL_411;
            }
          }

          if (v260 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_931;
          }

          if (v260 >= 0x17)
          {
            operator new();
          }

          *(v61 - 201) = v260;
          if (v260)
          {
            memmove(v261, v259, v260);
          }

          *(v261 + v260) = 0;
          *(v61 - 200) = 1;
LABEL_411:
          v267 = *v95;
          v268 = *(v95 + 4);
          if (!v268)
          {
            v279 = 0;
LABEL_428:
            v273 = v267 + 56 * v279;
            goto LABEL_438;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v514 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v514 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v514;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v269 = sub_298B40118("ContextStarts", 0xDuLL, *(v39 + 2832));
          v270 = v268 - 1;
          v271 = 1;
          if ("ContextStarts" == -2)
          {
            v272 = v269 & v270;
            v273 = v267 + 56 * (v269 & v270);
            v274 = *(v273 + 8);
            if (v274 != -2)
            {
              while (v274 != -1)
              {
                if (*(v273 + 16) != 13 || ((v275 = *v274, v276 = *(v274 + 5), v275 == 0x53747865746E6F43) ? (v277 = v276 == 0x7374726174537478) : (v277 = 0), !v277))
                {
                  v278 = v271 + v272;
                  ++v271;
                  v272 = v278 & v270;
                  v273 = v267 + 56 * (v278 & v270);
                  v274 = *(v273 + 8);
                  if (v274 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_438;
              }

LABEL_453:
              if ("ContextStarts" != -1)
              {
                v267 = *v95;
                v279 = *(v95 + 4);
                goto LABEL_428;
              }
            }
          }

          else
          {
            while (1)
            {
              v273 = v267 + 56 * (v269 & v270);
              v280 = *(v273 + 8);
              if (v280 != -2)
              {
                if (v280 == -1)
                {
                  goto LABEL_453;
                }

                if (*(v273 + 16) == 13)
                {
                  v281 = *v280;
                  v282 = *(v280 + 5);
                  if (v281 == 0x53747865746E6F43 && v282 == 0x7374726174537478)
                  {
                    break;
                  }
                }
              }

              v269 = v271 + (v269 & v270);
              ++v271;
            }
          }

LABEL_438:
          v284 = *(v273 + 24);
          v285 = (v273 + 32);
          if (v284 == 7)
          {
            v286 = v285;
          }

          else
          {
            v286 = 0;
          }

          v287 = *v286;
          v288 = *(v286 + 4);
          if (!v288)
          {
            v299 = 0;
LABEL_456:
            v293 = v287 + 56 * v299;
            goto LABEL_466;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v515 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v515 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v515;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v289 = sub_298B40118("DataKey", 7uLL, *(v39 + 2832));
          v290 = v288 - 1;
          v291 = 1;
          if ("DataKey" == -2)
          {
            v292 = v289 & v290;
            v293 = v287 + 56 * (v289 & v290);
            v294 = *(v293 + 8);
            if (v294 != -2)
            {
              while (v294 != -1)
              {
                if (*(v293 + 16) != 7 || ((v295 = *v294, v296 = *(v294 + 3), v295 == 1635017028) ? (v297 = v296 == 2036681569) : (v297 = 0), !v297))
                {
                  v298 = v291 + v292;
                  ++v291;
                  v292 = v298 & v290;
                  v293 = v287 + 56 * (v298 & v290);
                  v294 = *(v293 + 8);
                  if (v294 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_466;
              }

LABEL_487:
              if ("DataKey" != -1)
              {
                v287 = *v286;
                v299 = *(v286 + 4);
                goto LABEL_456;
              }
            }
          }

          else
          {
            while (1)
            {
              v293 = v287 + 56 * (v289 & v290);
              v300 = *(v293 + 8);
              if (v300 != -2)
              {
                if (v300 == -1)
                {
                  goto LABEL_487;
                }

                if (*(v293 + 16) == 7)
                {
                  v301 = *v300;
                  v302 = *(v300 + 3);
                  if (v301 == 1635017028 && v302 == 2036681569)
                  {
                    break;
                  }
                }
              }

              v289 = v291 + (v289 & v290);
              ++v291;
            }
          }

LABEL_466:
          if (*(v293 + 24) == 6)
          {
            v316 = v293 + 32;
            v317 = *(v293 + 55);
            v319 = *(v293 + 32);
            v318 = *(v293 + 40);
            if (v317 >= 0)
            {
              v320 = v316;
            }

            else
            {
              v320 = v319;
            }

            if (v317 >= 0)
            {
              v321 = v317;
            }

            else
            {
              v321 = v318;
            }

            MEMORY[0x29C294310](v61 - 12, v320, v321);
            v304 = *v286;
            v305 = *(v286 + 4);
            if (!v305)
            {
              goto LABEL_514;
            }
          }

          else
          {
            MEMORY[0x29C294310](v61 - 12, *(v293 + 32), *(v293 + 40));
            v304 = *v286;
            v305 = *(v286 + 4);
            if (!v305)
            {
              goto LABEL_514;
            }
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v516 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v516 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v516;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v306 = sub_298B40118("CompressionKey", 0xEuLL, *(v39 + 2832));
          v307 = v305 - 1;
          v308 = 1;
          if ("CompressionKey" == -2)
          {
            v309 = v306 & v307;
            v310 = v304 + 56 * (v306 & v307);
            v311 = *(v310 + 8);
            if (v311 != -2)
            {
              while (v311 != -1)
              {
                if (*(v310 + 16) != 14 || ((v312 = *v311, v313 = *(v311 + 6), v312 == 0x73736572706D6F43) ? (v314 = v313 == 0x79654B6E6F697373) : (v314 = 0), !v314))
                {
                  v315 = v308 + v309;
                  ++v308;
                  v309 = v315 & v307;
                  v310 = v304 + 56 * (v315 & v307);
                  v311 = *(v310 + 8);
                  if (v311 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_498;
              }

LABEL_525:
              if ("CompressionKey" != -1)
              {
                goto LABEL_514;
              }
            }
          }

          else
          {
            while (1)
            {
              v310 = v304 + 56 * (v306 & v307);
              v322 = *(v310 + 8);
              if (v322 != -2)
              {
                if (v322 == -1)
                {
                  goto LABEL_525;
                }

                if (*(v310 + 16) == 14)
                {
                  v323 = *v322;
                  v324 = *(v322 + 6);
                  if (v323 == 0x73736572706D6F43 && v324 == 0x79654B6E6F697373)
                  {
                    break;
                  }
                }
              }

              v306 = v308 + (v306 & v307);
              ++v308;
            }
          }

LABEL_498:
          if (v310 == *v286 + 56 * *(v286 + 4))
          {
            goto LABEL_514;
          }

          v326 = *(v310 + 24);
          if (v326 == 5)
          {
            v327 = *(v310 + 32);
            v328 = *(v310 + 40);
            v329 = v61 - 168;
            if (*(v61 - 144) == 1)
            {
              goto LABEL_501;
            }
          }

          else
          {
            if (v326 != 6)
            {
              goto LABEL_514;
            }

            v332 = *(v310 + 32);
            v330 = v310 + 32;
            v331 = v332;
            v333 = *(v330 + 23);
            if (v333 >= 0)
            {
              v327 = v330;
            }

            else
            {
              v327 = v331;
            }

            v334 = *(v330 + 8);
            if (v333 >= 0)
            {
              v328 = v333;
            }

            else
            {
              v328 = v334;
            }

            v329 = v61 - 168;
            if (*(v61 - 144) == 1)
            {
LABEL_501:
              MEMORY[0x29C294310](v329, v327, v328);
              goto LABEL_514;
            }
          }

          if (v328 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_931;
          }

          if (v328 >= 0x17)
          {
            operator new();
          }

          *(v61 - 145) = v328;
          if (v328)
          {
            memmove(v329, v327, v328);
          }

          v329[v328] = 0;
          *(v61 - 144) = 1;
LABEL_514:
          v335 = *v95;
          v336 = *(v95 + 4);
          if (!v336)
          {
            v344 = 0;
LABEL_528:
            v341 = v335 + 56 * v344;
            goto LABEL_534;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v517 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v517 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v517;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v337 = sub_298B40118("Counters", 8uLL, *(v39 + 2832));
          v338 = v336 - 1;
          v339 = 1;
          if ("Counters" == -2)
          {
            v340 = v337 & v338;
            v341 = v335 + 56 * (v337 & v338);
            v342 = *(v341 + 8);
            if (v342 != -2)
            {
              while (v342 != -1)
              {
                if (*(v341 + 16) != 8 || *v342 != 0x737265746E756F43)
                {
                  v343 = v339 + v340;
                  ++v339;
                  v340 = v343 & v338;
                  v341 = v335 + 56 * (v343 & v338);
                  v342 = *(v341 + 8);
                  if (v342 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_534;
              }

LABEL_549:
              if ("Counters" != -1)
              {
                v335 = *v95;
                v344 = *(v95 + 4);
                goto LABEL_528;
              }
            }
          }

          else
          {
            while (1)
            {
              v341 = v335 + 56 * (v337 & v338);
              v345 = *(v341 + 8);
              if (v345 != -2)
              {
                if (v345 == -1)
                {
                  goto LABEL_549;
                }

                if (*(v341 + 16) == 8 && *v345 == 0x737265746E756F43)
                {
                  break;
                }
              }

              v337 = v339 + (v337 & v338);
              ++v339;
            }
          }

LABEL_534:
          v346 = *(v341 + 24);
          v347 = (v341 + 32);
          if (v346 == 7)
          {
            v348 = v347;
          }

          else
          {
            v348 = 0;
          }

          v349 = *v348;
          v350 = *(v348 + 4);
          if (!v350)
          {
            v361 = 0;
LABEL_552:
            v355 = v349 + 56 * v361;
            goto LABEL_562;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v518 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v518 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v518;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v351 = sub_298B40118("DataKey", 7uLL, *(v39 + 2832));
          v352 = v350 - 1;
          v353 = 1;
          if ("DataKey" == -2)
          {
            v354 = v351 & v352;
            v355 = v349 + 56 * (v351 & v352);
            v356 = *(v355 + 8);
            if (v356 != -2)
            {
              while (v356 != -1)
              {
                if (*(v355 + 16) != 7 || ((v357 = *v356, v358 = *(v356 + 3), v357 == 1635017028) ? (v359 = v358 == 2036681569) : (v359 = 0), !v359))
                {
                  v360 = v353 + v354;
                  ++v353;
                  v354 = v360 & v352;
                  v355 = v349 + 56 * (v360 & v352);
                  v356 = *(v355 + 8);
                  if (v356 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_562;
              }

LABEL_583:
              if ("DataKey" != -1)
              {
                v349 = *v348;
                v361 = *(v348 + 4);
                goto LABEL_552;
              }
            }
          }

          else
          {
            while (1)
            {
              v355 = v349 + 56 * (v351 & v352);
              v362 = *(v355 + 8);
              if (v362 != -2)
              {
                if (v362 == -1)
                {
                  goto LABEL_583;
                }

                if (*(v355 + 16) == 7)
                {
                  v363 = *v362;
                  v364 = *(v362 + 3);
                  if (v363 == 1635017028 && v364 == 2036681569)
                  {
                    break;
                  }
                }
              }

              v351 = v353 + (v351 & v352);
              ++v353;
            }
          }

LABEL_562:
          if (*(v355 + 24) == 6)
          {
            v378 = v355 + 32;
            v379 = *(v355 + 55);
            v381 = *(v355 + 32);
            v380 = *(v355 + 40);
            if (v379 >= 0)
            {
              v382 = v378;
            }

            else
            {
              v382 = v381;
            }

            if (v379 >= 0)
            {
              v383 = v379;
            }

            else
            {
              v383 = v380;
            }

            MEMORY[0x29C294310](v61 - 136, v382, v383);
            v366 = *v348;
            v367 = *(v348 + 4);
            if (!v367)
            {
              goto LABEL_610;
            }
          }

          else
          {
            MEMORY[0x29C294310](v61 - 136, *(v355 + 32), *(v355 + 40));
            v366 = *v348;
            v367 = *(v348 + 4);
            if (!v367)
            {
              goto LABEL_610;
            }
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v519 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v519 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v519;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v368 = sub_298B40118("CompressionKey", 0xEuLL, *(v39 + 2832));
          v369 = v367 - 1;
          v370 = 1;
          if ("CompressionKey" == -2)
          {
            v371 = v368 & v369;
            v372 = v366 + 56 * (v368 & v369);
            v373 = *(v372 + 8);
            if (v373 != -2)
            {
              while (v373 != -1)
              {
                if (*(v372 + 16) != 14 || ((v374 = *v373, v375 = *(v373 + 6), v374 == 0x73736572706D6F43) ? (v376 = v375 == 0x79654B6E6F697373) : (v376 = 0), !v376))
                {
                  v377 = v370 + v371;
                  ++v370;
                  v371 = v377 & v369;
                  v372 = v366 + 56 * (v377 & v369);
                  v373 = *(v372 + 8);
                  if (v373 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_594;
              }

LABEL_621:
              if ("CompressionKey" != -1)
              {
                goto LABEL_610;
              }
            }
          }

          else
          {
            while (1)
            {
              v372 = v366 + 56 * (v368 & v369);
              v384 = *(v372 + 8);
              if (v384 != -2)
              {
                if (v384 == -1)
                {
                  goto LABEL_621;
                }

                if (*(v372 + 16) == 14)
                {
                  v385 = *v384;
                  v386 = *(v384 + 6);
                  if (v385 == 0x73736572706D6F43 && v386 == 0x79654B6E6F697373)
                  {
                    break;
                  }
                }
              }

              v368 = v370 + (v368 & v369);
              ++v370;
            }
          }

LABEL_594:
          if (v372 == *v348 + 56 * *(v348 + 4))
          {
            goto LABEL_610;
          }

          v388 = *(v372 + 24);
          if (v388 == 5)
          {
            v389 = *(v372 + 32);
            v390 = *(v372 + 40);
            v391 = v61 - 7;
            if (*(v61 - 88) == 1)
            {
              goto LABEL_597;
            }
          }

          else
          {
            if (v388 != 6)
            {
              goto LABEL_610;
            }

            v394 = *(v372 + 32);
            v392 = v372 + 32;
            v393 = v394;
            v395 = *(v392 + 23);
            if (v395 >= 0)
            {
              v389 = v392;
            }

            else
            {
              v389 = v393;
            }

            v396 = *(v392 + 8);
            if (v395 >= 0)
            {
              v390 = v395;
            }

            else
            {
              v390 = v396;
            }

            v391 = v61 - 7;
            if (*(v61 - 88) == 1)
            {
LABEL_597:
              MEMORY[0x29C294310](v391, v389, v390);
              goto LABEL_610;
            }
          }

          if (v390 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_931;
          }

          if (v390 >= 0x17)
          {
            operator new();
          }

          *(v61 - 89) = v390;
          if (v390)
          {
            memmove(v391, v389, v390);
          }

          *(v391 + v390) = 0;
          *(v61 - 88) = 1;
LABEL_610:
          v397 = *v95;
          v398 = *(v95 + 4);
          if (!v398)
          {
            v406 = 0;
LABEL_624:
            v403 = v397 + 56 * v406;
            goto LABEL_630;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v520 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v520 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v520;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v399 = sub_298B40118("Messages", 8uLL, *(v39 + 2832));
          v400 = v398 - 1;
          v401 = 1;
          if ("Messages" == -2)
          {
            v402 = v399 & v400;
            v403 = v397 + 56 * (v399 & v400);
            v404 = *(v403 + 8);
            if (v404 != -2)
            {
              while (v404 != -1)
              {
                if (*(v403 + 16) != 8 || *v404 != 0x736567617373654DLL)
                {
                  v405 = v401 + v402;
                  ++v401;
                  v402 = v405 & v400;
                  v403 = v397 + 56 * (v405 & v400);
                  v404 = *(v403 + 8);
                  if (v404 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_630;
              }

LABEL_645:
              if ("Messages" != -1)
              {
                v397 = *v95;
                v406 = *(v95 + 4);
                goto LABEL_624;
              }
            }
          }

          else
          {
            while (1)
            {
              v403 = v397 + 56 * (v399 & v400);
              v407 = *(v403 + 8);
              if (v407 != -2)
              {
                if (v407 == -1)
                {
                  goto LABEL_645;
                }

                if (*(v403 + 16) == 8 && *v407 == 0x736567617373654DLL)
                {
                  break;
                }
              }

              v399 = v401 + (v399 & v400);
              ++v401;
            }
          }

LABEL_630:
          v408 = *(v403 + 24);
          v409 = (v403 + 32);
          if (v408 == 7)
          {
            v410 = v409;
          }

          else
          {
            v410 = 0;
          }

          v411 = *v410;
          v412 = *(v410 + 4);
          if (!v412)
          {
            v423 = 0;
LABEL_648:
            v417 = v411 + 56 * v423;
            goto LABEL_658;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v521 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v521 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v521;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v413 = sub_298B40118("DataKey", 7uLL, *(v39 + 2832));
          v414 = v412 - 1;
          v415 = 1;
          if ("DataKey" == -2)
          {
            v416 = v413 & v414;
            v417 = v411 + 56 * (v413 & v414);
            v418 = *(v417 + 8);
            if (v418 != -2)
            {
              while (v418 != -1)
              {
                if (*(v417 + 16) != 7 || ((v419 = *v418, v420 = *(v418 + 3), v419 == 1635017028) ? (v421 = v420 == 2036681569) : (v421 = 0), !v421))
                {
                  v422 = v415 + v416;
                  ++v415;
                  v416 = v422 & v414;
                  v417 = v411 + 56 * (v422 & v414);
                  v418 = *(v417 + 8);
                  if (v418 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_658;
              }

LABEL_679:
              if ("DataKey" != -1)
              {
                v411 = *v410;
                v423 = *(v410 + 4);
                goto LABEL_648;
              }
            }
          }

          else
          {
            while (1)
            {
              v417 = v411 + 56 * (v413 & v414);
              v424 = *(v417 + 8);
              if (v424 != -2)
              {
                if (v424 == -1)
                {
                  goto LABEL_679;
                }

                if (*(v417 + 16) == 7)
                {
                  v425 = *v424;
                  v426 = *(v424 + 3);
                  if (v425 == 1635017028 && v426 == 2036681569)
                  {
                    break;
                  }
                }
              }

              v413 = v415 + (v413 & v414);
              ++v415;
            }
          }

LABEL_658:
          if (*(v417 + 24) == 6)
          {
            v440 = v417 + 32;
            v441 = *(v417 + 55);
            v443 = *(v417 + 32);
            v442 = *(v417 + 40);
            if (v441 >= 0)
            {
              v444 = v440;
            }

            else
            {
              v444 = v443;
            }

            if (v441 >= 0)
            {
              v445 = v441;
            }

            else
            {
              v445 = v442;
            }

            MEMORY[0x29C294310](v61 - 5, v444, v445);
            v428 = *v410;
            v429 = *(v410 + 4);
            if (!v429)
            {
              goto LABEL_706;
            }
          }

          else
          {
            MEMORY[0x29C294310](v61 - 5, *(v417 + 32), *(v417 + 40));
            v428 = *v410;
            v429 = *(v410 + 4);
            if (!v429)
            {
              goto LABEL_706;
            }
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v522 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v522 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v522;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v430 = sub_298B40118("CompressionKey", 0xEuLL, *(v39 + 2832));
          v431 = v429 - 1;
          v432 = 1;
          if ("CompressionKey" == -2)
          {
            v433 = v430 & v431;
            v434 = v428 + 56 * (v430 & v431);
            v435 = *(v434 + 8);
            if (v435 != -2)
            {
              while (v435 != -1)
              {
                if (*(v434 + 16) != 14 || ((v436 = *v435, v437 = *(v435 + 6), v436 == 0x73736572706D6F43) ? (v438 = v437 == 0x79654B6E6F697373) : (v438 = 0), !v438))
                {
                  v439 = v432 + v433;
                  ++v432;
                  v433 = v439 & v431;
                  v434 = v428 + 56 * (v439 & v431);
                  v435 = *(v434 + 8);
                  if (v435 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_690;
              }

LABEL_720:
              if ("CompressionKey" != -1)
              {
                goto LABEL_706;
              }
            }
          }

          else
          {
            while (1)
            {
              v434 = v428 + 56 * (v430 & v431);
              v446 = *(v434 + 8);
              if (v446 != -2)
              {
                if (v446 == -1)
                {
                  goto LABEL_720;
                }

                if (*(v434 + 16) == 14)
                {
                  v447 = *v446;
                  v448 = *(v446 + 6);
                  if (v447 == 0x73736572706D6F43 && v448 == 0x79654B6E6F697373)
                  {
                    break;
                  }
                }
              }

              v430 = v432 + (v430 & v431);
              ++v432;
            }
          }

LABEL_690:
          if (v434 == *v410 + 56 * *(v410 + 4))
          {
            goto LABEL_706;
          }

          v450 = *(v434 + 24);
          if (v450 == 5)
          {
            v452 = *(v434 + 32);
            v451 = *(v434 + 40);
            v453 = v61 - 56;
            if (*(v61 - 32) == 1)
            {
              goto LABEL_693;
            }
          }

          else
          {
            if (v450 != 6)
            {
              goto LABEL_706;
            }

            v456 = *(v434 + 32);
            v454 = v434 + 32;
            v455 = v456;
            v457 = *(v454 + 23);
            if (v457 >= 0)
            {
              v452 = v454;
            }

            else
            {
              v452 = v455;
            }

            v458 = *(v454 + 8);
            if (v457 >= 0)
            {
              v451 = v457;
            }

            else
            {
              v451 = v458;
            }

            v453 = v61 - 56;
            if (*(v61 - 32) == 1)
            {
LABEL_693:
              MEMORY[0x29C294310](v453, v452, v451);
              goto LABEL_706;
            }
          }

          if (v451 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_931:
            sub_298ADDDA0();
          }

          if (v451 >= 0x17)
          {
            operator new();
          }

          *(v61 - 33) = v451;
          if (v451)
          {
            memmove(v453, v452, v451);
          }

          v453[v451] = 0;
          *(v61 - 32) = 1;
LABEL_706:
          v459 = *v95;
          v460 = *(v95 + 4);
          if (!v460)
          {
            v471 = 0;
LABEL_723:
            v472 = v471;
            v465 = v459 + 56 * v471;
            goto LABEL_734;
          }

          if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
          {
            v523 = qword_2A13C3658;
            if (!qword_2A13C3658)
            {
              v523 = 0xFF51AFD7ED558CCDLL;
            }

            *(v39 + 2832) = v523;
            __cxa_guard_release(&qword_2A13C2B18);
          }

          v461 = sub_298B40118("Placeholder.ASID", 0x10uLL, *(v39 + 2832));
          v462 = v460 - 1;
          v463 = 1;
          if ("Placeholder.ASID" == -2)
          {
            v464 = v461 & v462;
            v465 = v459 + 56 * (v461 & v462);
            v466 = *(v465 + 8);
            if (v466 != -2)
            {
              while (v466 != -1)
              {
                if (*(v465 + 16) != 16 || ((v468 = *v466, v467 = v466[1], v468 == 0x6C6F686563616C50) ? (v469 = v467 == 0x444953412E726564) : (v469 = 0), !v469))
                {
                  v470 = v463 + v464;
                  ++v463;
                  v464 = v470 & v462;
                  v465 = v459 + 56 * (v470 & v462);
                  v466 = *(v465 + 8);
                  if (v466 != -2)
                  {
                    continue;
                  }
                }

                goto LABEL_733;
              }

LABEL_783:
              if ("Placeholder.ASID" != -1)
              {
                v459 = *v95;
                v471 = *(v95 + 4);
                goto LABEL_723;
              }
            }
          }

          else
          {
            while (1)
            {
              v465 = v459 + 56 * (v461 & v462);
              v473 = *(v465 + 8);
              if (v473 != -2)
              {
                if (v473 == -1)
                {
                  goto LABEL_783;
                }

                if (*(v465 + 16) == 16)
                {
                  v475 = *v473;
                  v474 = v473[1];
                  if (v475 == 0x6C6F686563616C50 && v474 == 0x444953412E726564)
                  {
                    break;
                  }
                }
              }

              v461 = v463 + (v461 & v462);
              ++v463;
            }
          }

LABEL_733:
          v459 = *v95;
          v471 = *(v95 + 4);
          v472 = v471;
LABEL_734:
          if (v465 != v459 + 56 * v472)
          {
            v477 = *(v465 + 24);
            if (v477 == 5)
            {
              v479 = *(v465 + 32);
              v478 = *(v465 + 40);
              if (v478 >= 2)
              {
                v480 = 2;
              }

              else
              {
                v480 = v478;
              }

              v481 = v478 - v480;
              if (!v481)
              {
                goto LABEL_781;
              }

              goto LABEL_740;
            }

            if (v477 == 6)
            {
              v503 = *(v465 + 32);
              v501 = v465 + 32;
              v502 = v503;
              v504 = *(v501 + 23);
              if (v504 >= 0)
              {
                v479 = v501;
              }

              else
              {
                v479 = v502;
              }

              v505 = *(v501 + 8);
              if (v504 >= 0)
              {
                v505 = v504;
              }

              if (v505 >= 2)
              {
                v480 = 2;
              }

              else
              {
                v480 = v505;
              }

              v481 = v505 - v480;
              if (!v481)
              {
LABEL_781:
                v488 = 0;
                if (!v471)
                {
                  goto LABEL_782;
                }

LABEL_757:
                if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2B18))
                {
                  v546 = qword_2A13C3658;
                  if (!qword_2A13C3658)
                  {
                    v546 = 0xFF51AFD7ED558CCDLL;
                  }

                  *(v39 + 2832) = v546;
                  __cxa_guard_release(&qword_2A13C2B18);
                }

                v489 = sub_298B40118("Placeholder.ContextID", 0x15uLL, *(v39 + 2832));
                v490 = v471 - 1;
                v491 = 1;
                if ("Placeholder.ContextID" == -2)
                {
                  v39 = 0x2A13C2000;
                  v492 = v489 & v490;
                  v493 = v459 + 56 * (v489 & v490);
                  v494 = *(v493 + 8);
                  if (v494 != -2)
                  {
                    while (v494 != -1)
                    {
                      if (*(v493 + 16) != 21 || ((v495 = *v494, v496 = v494[1], v497 = *(v494 + 13), v495 == 0x6C6F686563616C50) ? (v498 = v496 == 0x746E6F432E726564) : (v498 = 0), v498 ? (v499 = v497 == 0x4449747865746E6FLL) : (v499 = 0), !v499))
                      {
                        v500 = v491 + v492;
                        ++v491;
                        v492 = v500 & v490;
                        v493 = v459 + 56 * (v500 & v490);
                        v494 = *(v493 + 8);
                        if (v494 != -2)
                        {
                          continue;
                        }
                      }

                      goto LABEL_869;
                    }

LABEL_879:
                    if ("Placeholder.ContextID" != -1)
                    {
                      v493 = *v95 + 56 * *(v95 + 4);
                      goto LABEL_881;
                    }
                  }
                }

                else
                {
                  while (1)
                  {
                    v493 = v459 + 56 * (v489 & v490);
                    v524 = *(v493 + 8);
                    v39 = 0x2A13C2000;
                    if (v524 != -2)
                    {
                      if (v524 == -1)
                      {
                        goto LABEL_879;
                      }

                      if (*(v493 + 16) == 21)
                      {
                        v525 = *v524;
                        v526 = v524[1];
                        v527 = *(v524 + 13);
                        v528 = v525 == 0x6C6F686563616C50 && v526 == 0x746E6F432E726564;
                        if (v528 && v527 == 0x4449747865746E6FLL)
                        {
                          break;
                        }
                      }
                    }

                    v489 = v491 + (v489 & v490);
                    ++v491;
                  }
                }

LABEL_869:
                if (v493 == *v95 + 56 * *(v95 + 4))
                {
                  goto LABEL_881;
                }

                v530 = *(v493 + 24);
                if (v530 == 5)
                {
                  v531 = *(v493 + 32);
                  v493 = *(v493 + 40);
                }

                else
                {
                  if (v530 != 6)
                  {
                    goto LABEL_881;
                  }

                  v534 = *(v493 + 32);
                  v532 = v493 + 32;
                  v533 = v534;
                  v535 = *(v532 + 23);
                  if (v535 >= 0)
                  {
                    v531 = v532;
                  }

                  else
                  {
                    v531 = v533;
                  }

                  v493 = *(v532 + 8);
                  if (v535 >= 0)
                  {
                    v493 = v535;
                  }
                }

LABEL_882:
                if (v493 >= 2)
                {
                  v536 = 2;
                }

                else
                {
                  v536 = v493;
                }

                v537 = v493 - v536;
                if (v537)
                {
                  v538 = 0;
                  v539 = (v536 + v531);
                  v540 = v537;
                  while (1)
                  {
                    if (*v539 < 48)
                    {
LABEL_899:
                      if (v537 == v540)
                      {
                        v537 = 0;
                      }

                      else
                      {
                        v537 = v538;
                      }

                      goto LABEL_902;
                    }

                    v541 = *v539;
                    if (v541 >= 0x3A)
                    {
                      if (v541 < 0x61)
                      {
                        if (v541 - 65 > 0x19)
                        {
                          goto LABEL_899;
                        }

                        v542 = -55;
                      }

                      else
                      {
                        if (v541 >= 0x7B)
                        {
                          goto LABEL_899;
                        }

                        v542 = -87;
                      }
                    }

                    else
                    {
                      v542 = -48;
                    }

                    v543 = v542 + v541;
                    if (v543 > 0xF)
                    {
                      goto LABEL_899;
                    }

                    if (v538 >> 60)
                    {
                      break;
                    }

                    v538 = v543 | (16 * v538);
                    ++v539;
                    if (!--v540)
                    {
                      goto LABEL_899;
                    }
                  }

                  v545 = *(v61 - 8);
                  *(v61 - 3) = v488;
                  *(v61 - 2) = 0;
                  if ((v545 & 1) == 0)
                  {
                    goto LABEL_903;
                  }
                }

                else
                {
LABEL_902:
                  v544 = *(v61 - 8);
                  *(v61 - 3) = v488;
                  *(v61 - 2) = v537;
                  if ((v544 & 1) == 0)
                  {
LABEL_903:
                    *(v61 - 8) = 1;
                  }
                }

                goto LABEL_108;
              }

LABEL_740:
              v482 = 0;
              v483 = (v480 + v479);
              v484 = v481;
              do
              {
                if (*v483 < 48)
                {
                  break;
                }

                v485 = *v483;
                if (v485 >= 0x3A)
                {
                  if (v485 < 0x61)
                  {
                    if (v485 - 65 > 0x19)
                    {
                      break;
                    }

                    v486 = -55;
                  }

                  else
                  {
                    if (v485 >= 0x7B)
                    {
                      break;
                    }

                    v486 = -87;
                  }
                }

                else
                {
                  v486 = -48;
                }

                v487 = v486 + v485;
                if (v487 > 0xF)
                {
                  break;
                }

                if (v482 >> 60)
                {
                  goto LABEL_781;
                }

                v482 = v487 | (16 * v482);
                ++v483;
                --v484;
              }

              while (v484);
              if (v481 == v484)
              {
                v488 = 0;
              }

              else
              {
                v488 = v482;
              }

              if (v471)
              {
                goto LABEL_757;
              }

LABEL_782:
              v493 = v459;
LABEL_881:
              v531 = 0;
              goto LABEL_882;
            }
          }

LABEL_108:
          v58 = v586 + 16;
          v46 = v584;
          v51 = v587;
          if (v586 + 16 == v585)
          {
            goto LABEL_918;
          }
        }
      }

LABEL_936:
      v602.__r_.__value_.__r.__words[0] = "CallstackModifiers";
      v602.__r_.__value_.__l.__size_ = 18;
      v601.__r_.__value_.__r.__words[0] = 0;
      if (!sub_298B89FD8(v577, &v602, &v601) || v601.__r_.__value_.__r.__words[0] == *v577 + 56 * *(v577 + 16))
      {
        v550 = 0;
      }

      else if (*(v601.__r_.__value_.__r.__words[0] + 24) == 7)
      {
        v550 = v601.__r_.__value_.__r.__words[0] + 32;
      }

      else
      {
        v550 = 0;
      }

      v602.__r_.__value_.__r.__words[0] = "Root";
      v602.__r_.__value_.__l.__size_ = 4;
      v602.__r_.__value_.__r.__words[2] = &unk_298EAE8EF;
      v603 = 0u;
      v604 = 0u;
      v601.__r_.__value_.__r.__words[0] = "SharedContextsSymStarts";
      v601.__r_.__value_.__l.__size_ = 23;
      *v607 = 0;
      if (sub_298B89FD8(v550, &v601, v607))
      {
        v551 = *v607;
        v552 = *v550;
        v553 = *(v550 + 16);
      }

      else
      {
        v552 = *v550;
        v553 = *(v550 + 16);
        v551 = *v550 + 56 * v553;
      }

      if (v551 == v552 + 56 * v553)
      {
        v554 = 0;
      }

      else
      {
        v554 = v551 + 24;
      }

      v601.__r_.__value_.__r.__words[0] = 0;
      v601.__r_.__value_.__l.__size_ = &v602;
      sub_298C25014(v554, (a2 + 88), &v601);
      v601.__r_.__value_.__r.__words[0] = "UniqueContextsSymStarts";
      v601.__r_.__value_.__l.__size_ = 23;
      *v607 = 0;
      if (sub_298B89FD8(v550, &v601, v607))
      {
        if (*(*v607 + 24) == 7)
        {
          v555 = *v607 + 32;
        }

        else
        {
          v555 = 0;
        }

        if (!*(v555 + 8))
        {
          goto LABEL_980;
        }
      }

      else
      {
        v568 = *v550 + 56 * *(v550 + 16);
        v569 = *(v568 + 24);
        v570 = v568 + 32;
        if (v569 == 7)
        {
          v555 = v570;
        }

        else
        {
          v555 = 0;
        }

        if (!*(v555 + 8))
        {
          goto LABEL_980;
        }
      }

      v556 = *v555;
      v557 = *(v555 + 16);
      if (v557)
      {
        v558 = 56 * v557;
        v559 = v556;
        while (*(v559 + 8) >= 0xFFFFFFFFFFFFFFFELL)
        {
          v559 += 56;
          v558 -= 56;
          if (!v558)
          {
            goto LABEL_980;
          }
        }
      }

      else
      {
        v559 = v556;
      }

      v560 = v556 + 56 * v557;
      if (v560 != v559)
      {
        v561 = (v582 + 120);
        do
        {
          v562 = *(v559 + 8);
          v563 = *(v559 + 16);
          v601.__r_.__value_.__r.__words[0] = 0;
          if (sub_298B97354(v562, v563, 0xAu, &v601))
          {
            v564 = -1;
          }

          else
          {
            v564 = v601.__r_.__value_.__r.__words[0];
          }

          v565 = *v561;
          if (!*v561)
          {
LABEL_969:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v566 = v565;
              v567 = v565[4];
              if (v564 >= v567)
              {
                break;
              }

              v565 = *v566;
              if (!*v566)
              {
                goto LABEL_969;
              }
            }

            if (v567 >= v564)
            {
              break;
            }

            v565 = v566[1];
            if (!v565)
            {
              goto LABEL_969;
            }
          }

          v601.__r_.__value_.__r.__words[0] = 0;
          v601.__r_.__value_.__l.__size_ = &v602;
          sub_298C25014(v559 + 24, v566 + 5, &v601);
          do
          {
            v559 += 56;
            if (v559 == v560)
            {
              goto LABEL_980;
            }
          }

          while (*(v559 + 8) >= 0xFFFFFFFFFFFFFFFELL);
        }

        while (v559 != v560);
      }

LABEL_980:
      if (*(&v603 + 1))
      {
        *&v604 = *(&v603 + 1);
        operator delete(*(&v603 + 1));
      }

      v571 = sub_298B878FC(v577, "NumGaps", 7);
      if (v572)
      {
        v573 = v571;
      }

      else
      {
        v573 = 0;
      }

      *(v582 + 136) = v573;
      v574 = sub_298B878FC(v577, "NumExcessGaps", 13);
      if (v575)
      {
        v576 = v574;
      }

      else
      {
        v576 = 0;
      }

      *(v582 + 144) = v576;
      *a1 = 0;
      if (SHIBYTE(v600) < 0)
      {
        goto LABEL_989;
      }

      return;
    }
  }

  else
  {
    sub_298BCE714(&v592, v593[0]);
    if ((SHIBYTE(v589) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }
  }

  operator delete(v588[0]);
  sub_298B9AE14(&v602);
  if (*a4 != 1)
  {
    goto LABEL_49;
  }

LABEL_31:
  v20 = sub_298B227A0(1);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = &__p;
    if (v600 < 0)
    {
      v21 = __p;
    }

    LODWORD(v602.__r_.__value_.__l.__data_) = 136446210;
    *(v602.__r_.__value_.__r.__words + 4) = v21;
    _os_log_impl(&dword_298AD8000, v20, OS_LOG_TYPE_INFO, "Version incompatibility for decoded trace results:\n%{public}s\nIgnoring decoded results and attempting to re-decode...", &v602, 0xCu);
    *a1 = 0;
    if (SHIBYTE(v600) < 0)
    {
      goto LABEL_989;
    }
  }

  else
  {
    *a1 = 0;
    if (SHIBYTE(v600) < 0)
    {
LABEL_989:
      operator delete(__p);
    }
  }
}