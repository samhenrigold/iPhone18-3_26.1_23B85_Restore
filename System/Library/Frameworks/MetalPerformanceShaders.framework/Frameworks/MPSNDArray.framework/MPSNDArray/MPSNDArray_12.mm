uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::GetKernelParameters@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    result = ParseAutoTuningKernelParameters(a4, a3, a5);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = ParseAutoTuningKernelParameters(a1[19], a3, a5);
    if (result)
    {
      return result;
    }
  }

  if (!*(a3 + 128))
  {
    v32 = *(a3 + 32);
    v33 = *(a3 + 40);
    v34 = *(a3 + 56);
    v35 = *(a3 + 64);
    v36 = *(a3 + 8) * *a3;
    v37 = *(a3 + 88);
    v38 = v36 * v37;
    v40 = *(a3 + 96) == 1 && *(a3 + 104) == 1;
    v42 = v34 != 1 || v35 != 1;
    if (v33 <= 0x10)
    {
      if (v32 > 8)
      {
        if (v32 > 0x10)
        {
          v43 = 0;
          v49 = 4;
          if (v38 <= 0x8000)
          {
            LODWORD(v48) = 1;
          }

          else
          {
            LODWORD(v48) = 4;
          }

          if (v38 > 0x8000)
          {
            LODWORD(v47) = 8;
          }

          else
          {
            LODWORD(v47) = 32;
          }

          v50 = 3;
          if (v38 > 0x8000)
          {
            v46 = 3;
          }

          else
          {
            v46 = 4;
          }

          LOBYTE(v40) = 1;
          v45 = 2;
          v44 = 6;
          v51 = 5;
        }

        else
        {
          v43 = 0;
          if (v42)
          {
            v51 = 4;
            if (v38 > 0x8000)
            {
              LODWORD(v48) = 4;
            }

            else
            {
              LODWORD(v48) = 32;
            }

            LODWORD(v47) = 8 * (v38 > 0x8000);
            LOBYTE(v40) = 1;
            v50 = 3;
            v45 = 2;
            v44 = 6;
            v49 = 4;
            v46 = 3;
          }

          else
          {
            if (v38 > 0x8000)
            {
              LODWORD(v48) = 8;
            }

            else
            {
              LODWORD(v48) = 16;
            }

            v51 = 4;
            v45 = 2;
            if (v38 > 0x8000)
            {
              LODWORD(v47) = 4;
            }

            else
            {
              LODWORD(v47) = 2;
            }

            LOBYTE(v40) = 1;
            v50 = 3;
            v44 = 6;
            v49 = 4;
            v46 = 4;
          }
        }

        goto LABEL_313;
      }

      LOBYTE(v40) = v38 <= 0x8000;
      v43 = v38 > 0x8000;
      v44 = 6;
      v45 = 2;
      v46 = 3;
      LODWORD(v47) = 32;
      LODWORD(v48) = 1;
      v49 = 4;
      v50 = 3;
      v51 = 3;
      goto LABEL_242;
    }

    if (v33 <= 0x20)
    {
      if (v32 <= 8)
      {
        LOBYTE(v40) = 0;
        if (v38 >= 0x100001)
        {
          LODWORD(v48) = 16;
        }

        else
        {
          LODWORD(v48) = 8;
        }

        if (v38 >= 0x100001)
        {
          LODWORD(v47) = 2;
        }

        else
        {
          LODWORD(v47) = 4;
        }

        v44 = 6;
        v43 = 1;
        v50 = 3;
        v49 = 5;
        v46 = 3;
        v45 = 1;
        v51 = 3;
        goto LABEL_242;
      }

      if (v32 >= 0x19)
      {
        if (v32 > 0x20)
        {
          v45 = 0;
          LOBYTE(v40) = 0;
          v43 = 1;
          LODWORD(v48) = 2;
          LODWORD(v47) = 16;
          v46 = 3;
          v50 = 4;
          v51 = 5;
          v49 = 5;
          v44 = 5;
          goto LABEL_313;
        }

        LODWORD(v47) = 32;
        v50 = 3;
        if (v38 >= 0x100001)
        {
          v43 = 0;
          if (v38 < 0x400001)
          {
            LODWORD(v48) = 1;
          }

          else
          {
            LODWORD(v48) = 32;
          }

          if (v38 >= 0x400001)
          {
            LODWORD(v47) = 1;
          }

          else
          {
            LODWORD(v47) = 32;
          }

          if (v38 >= 0x400001)
          {
            v46 = 3;
          }

          else
          {
            v46 = 4;
          }

          v45 = 2 * (v38 < 0x400001);
          if (v38 >= 0x400001)
          {
            v51 = 3;
          }

          else
          {
            v51 = 5;
          }

          LOBYTE(v40) = 1;
          v44 = 6;
          v49 = v51;
          goto LABEL_313;
        }

        v43 = 0;
        LODWORD(v48) = 1;
        v46 = 4;
        v45 = 2;
        v44 = 6;
        v51 = 5;
        v49 = 5;
      }

      else
      {
        v45 = 0;
        v43 = 0;
        LODWORD(v47) = 1;
        LODWORD(v48) = 32;
        v51 = 3;
        v44 = 6;
        v49 = 3;
        v50 = 3;
        v46 = 3;
      }

LABEL_312:
      LOBYTE(v40) = 1;
      goto LABEL_313;
    }

    if (v33 <= 0x30)
    {
      if (v32 < 0x61)
      {
        LOBYTE(v40) = 0;
        LODWORD(v47) = 0;
        v51 = 5;
        v45 = 2;
        v46 = 3;
        LODWORD(v48) = 32;
        v43 = 1;
        v49 = 4;
LABEL_82:
        v50 = v46;
        v44 = 5;
        goto LABEL_242;
      }

      if (v32 >= 0x81)
      {
        if (v32 > 0x100)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v32 > 0x100)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        v49 = 6;
        if (v32 < 0xC1)
        {
          v51 = 5;
          v49 = 4;
        }

        v44 = 5;
        if (v32 >= 0xC1)
        {
          v45 = v32 > 0x100;
        }

        else
        {
          v45 = 2;
        }

        if (v32 >= 0xC1)
        {
          v50 = 4;
        }

        else
        {
          v50 = 3;
        }

        if (v32 >= 0xC1)
        {
          LODWORD(v47) = 32;
        }

        else
        {
          v46 = 3;
          LODWORD(v47) = 0;
        }

        if (v32 >= 0xC1)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 32;
        }

        v43 = 1;
        LOBYTE(v40) = 0;
        goto LABEL_313;
      }

      v43 = 0;
      v45 = 1;
      LODWORD(v47) = 32;
      v49 = 4;
      v50 = 3;
      v51 = 6;
      v44 = 6;
      v46 = 4;
LABEL_161:
      LODWORD(v48) = 1;
      goto LABEL_312;
    }

    if (v33 <= 0x40)
    {
      if (v32 <= 8)
      {
        LODWORD(v47) = 32;
        if (v38 >= 0x80001)
        {
          LOBYTE(v40) = 0;
          if (v37 == 1)
          {
            LODWORD(v48) = 32;
          }

          else
          {
            LODWORD(v48) = 1;
          }

          if (v37 == 1)
          {
            LODWORD(v47) = 1;
          }

          else
          {
            LODWORD(v47) = 32;
          }

          v44 = 6;
          v45 = 2;
          v50 = 4;
          v51 = 3;
          v43 = 1;
          v49 = 5;
        }

        else
        {
          LOBYTE(v40) = 0;
          v45 = 0;
          v44 = 5;
          v50 = 4;
          v51 = 3;
          v43 = 1;
          v49 = 6;
          LODWORD(v48) = 1;
        }

        v46 = 3;
        goto LABEL_242;
      }

      if (v32 <= 0x10)
      {
        LOBYTE(v40) = 0;
        if (v38 > 0x8000)
        {
          LODWORD(v48) = 2;
        }

        else
        {
          LODWORD(v48) = 32;
        }

        LODWORD(v47) = 16 * (v38 > 0x8000);
        v46 = 3;
        if (v38 > 0x8000)
        {
          v50 = 3;
        }

        else
        {
          v50 = 4;
        }

        v43 = 1;
        if (v38 <= 0x8000)
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        v44 = 6;
        v49 = 5;
        v51 = 4;
        goto LABEL_313;
      }

      if (v32 <= 0x20)
      {
        v43 = 0;
        v46 = 4;
        if (v38 >= 0x100001)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 4;
        }

        if (v38 >= 0x100001)
        {
          LODWORD(v47) = 32;
        }

        else
        {
          LODWORD(v47) = 4;
        }

        LOBYTE(v40) = 1;
        if (v38 < 0x100001)
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        v51 = 5;
        if (v38 < 0x100001)
        {
          v44 = 5;
        }

        else
        {
          v44 = 6;
        }

        if (v38 >= 0x100001)
        {
          v49 = 5;
        }

        else
        {
          v49 = 6;
        }

        v50 = 3;
        goto LABEL_313;
      }

      if (v32 < 0x31)
      {
        v43 = 0;
        v45 = 1;
        LODWORD(v48) = 2;
        LODWORD(v47) = 8;
LABEL_310:
        v46 = 4;
        v50 = 3;
        v51 = 5;
        v49 = 6;
LABEL_311:
        v44 = v51;
        goto LABEL_312;
      }

      if (v32 <= 0x40)
      {
        if (!v42)
        {
          if (v38 <= 0x2000)
          {
            v43 = 0;
            LODWORD(v48) = 1;
            LODWORD(v47) = 16;
            v46 = 4;
            v50 = 3;
            v45 = 2;
            v44 = 6;
            v51 = 5;
            v49 = 5;
            goto LABEL_312;
          }

          v45 = 1;
          LODWORD(v47) = 32;
          v50 = 3;
          if (v38 <= 0x4000)
          {
            v43 = 0;
            v46 = 4;
            v44 = 6;
            v51 = 5;
            v49 = 5;
            goto LABEL_161;
          }

          LOBYTE(v40) = v38 < 0x20001;
          v43 = v38 >= 0x20001;
          if (v38 < 0x20001)
          {
            LODWORD(v48) = 1;
          }

          else
          {
            LODWORD(v48) = 2;
          }

          if (v38 >= 0x20001)
          {
            LODWORD(v47) = 16;
          }

          else
          {
            LODWORD(v47) = 32;
          }

          if (v38 >= 0x20001)
          {
            v46 = 3;
          }

          else
          {
            v46 = 4;
          }

          if (v38 < 0x20001)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

LABEL_603:
          v44 = 6;
          v51 = 5;
          v49 = 5;
          goto LABEL_313;
        }

        if (v38 > 0x4000)
        {
          if (v38 <= 0x10000)
          {
            v43 = 0;
            v45 = 1;
            LODWORD(v47) = 32;
            v50 = 3;
            v44 = 4;
            v49 = 6;
            v51 = 5;
            v46 = 4;
            goto LABEL_161;
          }

          if (v38 >= 0x20001)
          {
            v44 = 4;
            if (v40)
            {
              v43 = 0;
              if (v37 == 1)
              {
                LODWORD(v47) = 1;
              }

              else
              {
                LODWORD(v47) = 4;
              }

              if (v37 == 1)
              {
                LODWORD(v48) = 32;
              }

              else
              {
                LODWORD(v48) = 8;
              }

              LOBYTE(v40) = 1;
              v46 = 4;
              v50 = 3;
              v45 = 2;
              goto LABEL_603;
            }

            v45 = 0;
            v43 = 0;
            LOBYTE(v40) = 1;
            LODWORD(v48) = 2;
            LODWORD(v47) = 16;
            v50 = 3;
LABEL_424:
            v49 = 6;
            v51 = 5;
            v46 = 4;
            goto LABEL_313;
          }
        }

        v45 = 0;
        v43 = 0;
        LODWORD(v48) = 1;
        LODWORD(v47) = 32;
        goto LABEL_502;
      }

      if (v32 <= 0x80)
      {
        if (v38 <= 0x2000)
        {
          LOBYTE(v40) = 0;
          v45 = 1;
          LODWORD(v47) = 4;
          v50 = 3;
          v51 = 5;
          v49 = 5;
          v44 = 5;
          v46 = 3;
          goto LABEL_457;
        }

        if (!(v38 >> 19))
        {
          LODWORD(v48) = 32;
          v46 = 4;
          v49 = 5;
          if (!(v38 >> 18))
          {
            v43 = 0;
            if (v38 >> 17)
            {
              LODWORD(v48) = 32;
            }

            else
            {
              LODWORD(v48) = 4;
            }

            if (v38 >> 17)
            {
              LODWORD(v47) = 1;
            }

            else
            {
              LODWORD(v47) = 4;
            }

            if (v38 >> 17)
            {
              v44 = 5;
            }

            else
            {
              v44 = 6;
            }

            if (v38 >> 17)
            {
              v51 = 6;
            }

            else
            {
              v51 = 5;
            }

            v45 = 1;
            v50 = 3;
            v49 = v51;
            goto LABEL_312;
          }

          LODWORD(v47) = 0;
          v43 = 0;
          v45 = 1;
          v50 = 3;
          v51 = 6;
          goto LABEL_311;
        }

        v43 = 0;
        LODWORD(v47) = 1;
        LODWORD(v48) = 32;
        v50 = 3;
        v45 = 2;
LABEL_510:
        v51 = 5;
        v49 = 6;
        v44 = 5;
        v46 = 3;
        goto LABEL_312;
      }

      if (v32 < 0xC1)
      {
        LODWORD(v47) = 0;
        v43 = 0;
        v45 = 1;
        LODWORD(v48) = 32;
        v50 = 3;
        goto LABEL_510;
      }

      if (v32 > 0x100)
      {
        v43 = 0;
        v45 = 1;
        LODWORD(v47) = 8;
        v46 = 4;
        v50 = 3;
        v51 = 5;
        v49 = 6;
        v44 = 5;
        LODWORD(v48) = 4;
        goto LABEL_312;
      }

      v46 = 4;
      v50 = 3;
      if (v38 > 0x10000)
      {
        v45 = 0;
        v43 = v38 < 0x20001;
        LOBYTE(v40) = v38 >= 0x20001;
        if (v38 >= 0x20001)
        {
          LODWORD(v48) = 4;
        }

        else
        {
          LODWORD(v48) = 8;
        }

        if (v38 >= 0x20001)
        {
          LODWORD(v47) = 8;
        }

        else
        {
          LODWORD(v47) = 4;
        }

        v44 = 4;
        if (v38 < 0x20001)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v38 >= 0x20001)
        {
          v50 = 3;
        }

        else
        {
          v50 = 4;
        }

        v49 = 5;
        if (v38 >= 0x20001)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        goto LABEL_313;
      }

      v43 = 0;
      v45 = 1;
      LODWORD(v47) = 16;
LABEL_472:
      v51 = 5;
      v49 = 6;
      v44 = 5;
      goto LABEL_161;
    }

    if (v33 < 0x51)
    {
      LOBYTE(v40) = 0;
      v44 = 6;
      v43 = 1;
      v50 = 4;
      v46 = 3;
      LODWORD(v47) = 16;
      LODWORD(v48) = 2;
      v49 = 5;
LABEL_167:
      v45 = 1;
      v51 = 5;
      goto LABEL_242;
    }

    if (v33 <= 0x60)
    {
      v49 = 5;
      LOBYTE(v40) = 1;
      if (v32 >= 0x41)
      {
        v43 = 0;
        if (v38 > 0x4000)
        {
          LODWORD(v48) = 2;
        }

        else
        {
          LODWORD(v48) = 16;
        }

        LODWORD(v47) = 16 * (v38 > 0x4000);
        if (v38 > 0x4000)
        {
          v45 = 1;
        }

        else
        {
          v45 = 2;
        }

        if (v38 > 0x4000)
        {
          v44 = 5;
        }

        else
        {
          v44 = 6;
        }

        v46 = 4;
        v50 = 3;
        v51 = 5;
        goto LABEL_313;
      }

      v43 = 0;
      v50 = 3;
      v46 = 4;
      LODWORD(v47) = 32;
      v51 = 6;
      goto LABEL_216;
    }

    if (v33 <= 0x80)
    {
      if (v32 <= 0x40)
      {
        if (!v42)
        {
          if (v38 > 0x2000)
          {
            v51 = 5;
            v43 = 1;
            if (!v40)
            {
              v43 = 0;
              v45 = 0;
              v46 = 4;
              LODWORD(v47) = 16;
              LODWORD(v48) = 2;
              v49 = 6;
              LOBYTE(v40) = 1;
              goto LABEL_82;
            }

            LOBYTE(v40) = 0;
            if (v38 >= 0x100001)
            {
              LODWORD(v48) = 1;
            }

            else
            {
              LODWORD(v48) = 2;
            }

            if (v38 >= 0x100001)
            {
              LODWORD(v47) = 32;
            }

            else
            {
              LODWORD(v47) = 8;
            }

            if (v38 >= 0x100001)
            {
              v44 = 5;
            }

            else
            {
              v44 = 6;
            }

            if (v38 < 0x100001)
            {
              v49 = 5;
            }

            else
            {
              v49 = 6;
            }

            v50 = 4;
            if (v38 >= 0x100001)
            {
              v51 = 4;
            }

            else
            {
              v51 = 5;
            }

            v46 = 3;
            v45 = 1;
          }

          else
          {
            v43 = 0;
            v46 = 4;
            if (v40)
            {
              LODWORD(v48) = 16;
            }

            else
            {
              LODWORD(v48) = 4;
            }

            if (v40)
            {
              LODWORD(v47) = 0;
            }

            else
            {
              LODWORD(v47) = 4;
            }

            v45 = !v40;
            v49 = 5;
            if (v40)
            {
              v51 = 5;
            }

            else
            {
              v51 = 6;
            }

            v50 = 3;
            LOBYTE(v40) = 1;
            v44 = 5;
          }

LABEL_242:
          if (v32 <= 1)
          {
            v63 = (v32 == 0) << 63;
LABEL_314:
            if (v63 < v51)
            {
              v51 = v63;
            }

            if (v51 <= 3)
            {
              LODWORD(v51) = 3;
            }

            v64 = 64 - __clz(v33 - 1);
            if (v33 <= 1)
            {
              v64 = (v33 == 0) << 63;
            }

            if (v64 < v49)
            {
              v49 = v64;
            }

            if (v49 <= 3)
            {
              LODWORD(v49) = 3;
            }

            if (v46 >= v51)
            {
              v46 = v51;
            }

            v65 = v46 - 3;
            if (v50 >= v49)
            {
              v50 = v49;
            }

            v66 = v50 - 3;
            if ((v49 + v51) <= 7)
            {
              v67 = *(a1[2] + 1480);
              v68 = v47 <= 1 ? 1 : v47;
              v69 = v35 * v34;
              if (v35 * v34 * v68 * v48 * ((v32 + (1 << v51) - 1) >> v51) * ((v33 + (1 << v49) - 1) >> v49) < 2 * v67)
              {
                if (v36 > 1)
                {
                  v70 = 64 - __clz(v36 - 1);
                }

                else
                {
                  v70 = (v36 == 0) << 63;
                }

                if (v70 >= 6)
                {
                  v70 = 6;
                }

                if (v70 <= 3)
                {
                  v44 = 3;
                }

                else
                {
                  v44 = v70;
                }

                if (v70 <= 4)
                {
                  LODWORD(v70) = 4;
                }

                v71 = 1;
                v72 = 4 * v32 * v33 * v69;
                if (v72 > 0x100000)
                {
                  v74 = v72;
                }

                else
                {
                  v73 = (1 << v44);
                  v74 = v72;
                  if (v36 >= v73)
                  {
                    v74 = 2 * v72;
                    v71 = 2;
                    if (v72 <= 0x80000 && (v36 + 1) >> 1 >= v73)
                    {
                      v74 = 4 * v72;
                      v71 = 4;
                      if (v72 <= 0x40000 && (v36 + 3) >> 2 >= v73)
                      {
                        v74 = 8 * v72;
                        v71 = 8;
                        if (v72 <= 0x20000 && (v36 + 7) >> 3 >= v73)
                        {
                          v74 = 16 * v72;
                          v71 = 16;
                          if (v72 <= 0x10000 && (v36 + 15) >> 4 >= v73)
                          {
                            v74 = 32 * v72;
                            v71 = 32;
                            if (v72 <= 0x8000 && (v36 + 31) >> 5 >= v73)
                            {
                              v74 = v72 << 6;
                              v76 = v72 > 0x4000 || v73 > (v36 + 63) >> 6;
                              v77 = v72 << 7;
                              v78 = !v76;
                              if (!v76)
                              {
                                v74 = v77;
                              }

                              v71 = 64;
                              if (v78)
                              {
                                v71 = 128;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v45 = v70 - 4;
                v80 = v74 > 0x100000 && v71 > 1;
                v48 = v71 >> v80;
                LODWORD(v47) = 1;
                if (v71 >> v80 <= 0x3FF)
                {
                  v81 = v74 >> v80;
                  if (v81 < 0x100001 && v37 >= 2)
                  {
                    v47 = 1;
                    v82 = v71 >> v80;
                    do
                    {
                      v47 *= 2;
                      if (v82 > 0x1FF)
                      {
                        break;
                      }

                      if (v81 >= 0x80001)
                      {
                        break;
                      }

                      v81 *= 2;
                      v82 *= 2;
                    }

                    while ((v37 - 1 + v47) / v47 > 1);
                  }
                }

                v43 = 0;
                v65 = 0;
                v66 = 0;
                LOBYTE(v40) = v42;
              }
            }

            if (v47)
            {
              v83 = 64 - __clz(v37 - 1);
              if (v37 <= 1)
              {
                LOBYTE(v83) = 0;
              }

              v84 = 1 << v83;
              if (1 << v83 >= v47)
              {
                v85 = v47;
              }

              else
              {
                v85 = 1 << v83;
              }

              LODWORD(v48) = v47 / v85 * v48;
              v38 = v36;
              v86 = v84 / v85;
            }

            else
            {
              v86 = 0;
            }

            result = v65;
            *a5 = v51;
            *(a5 + 8) = v49;
            *(a5 + 16) = v44;
            *(a5 + 24) = v45;
            *(a5 + 32) = v66;
            *(a5 + 40) = v65;
            *(a5 + 48) = vdupq_n_s64(1uLL);
            *(a5 + 64) = v86;
            *(a5 + 72) = ((v38 + v48 * (1 << v44) - 1) / (v48 * (1 << v44)));
            *(a5 + 80) = 0;
            *(a5 + 81) = v43;
            *(a5 + 82) = v40;
LABEL_390:
            *(a5 + 83) = 0;
            *(a5 + 89) = 0;
            return result;
          }

LABEL_313:
          v63 = 64 - __clz(v32 - 1);
          goto LABEL_314;
        }

        v43 = 0;
        if (v37 == 1)
        {
          LODWORD(v47) = 1;
        }

        else
        {
          LODWORD(v47) = 16;
        }

        if (v37 == 1)
        {
          LODWORD(v48) = 32;
        }

        else
        {
          LODWORD(v48) = 2;
        }

        v44 = 5;
        LOBYTE(v40) = 1;
        v50 = 3;
        v46 = 4;
LABEL_284:
        v49 = 6;
        v45 = 1;
        v51 = 6;
        goto LABEL_242;
      }

      if (v32 <= 0x80)
      {
        if (!v42)
        {
          v46 = 4;
          v50 = 3;
          v44 = 6;
          if (v38 >= 0x801)
          {
            v43 = 0;
            v45 = v38 <= 0x1000;
            if (v38 > 0x1000)
            {
              LODWORD(v48) = 4;
            }

            else
            {
              LODWORD(v48) = 8;
            }

            LODWORD(v47) = 8 * (v38 > 0x1000);
            if (v38 > 0x1000)
            {
              v44 = 4;
            }

            else
            {
              v44 = 6;
            }

            if (v38 > 0x1000)
            {
              v46 = 3;
            }

            else
            {
              v46 = 4;
            }

            LOBYTE(v40) = 1;
            v51 = 5;
            v49 = 5;
            goto LABEL_313;
          }

          v43 = 0;
          v45 = 1;
          v51 = 5;
          v49 = 5;
          LODWORD(v47) = 4;
          goto LABEL_161;
        }

        if (v38 < 0x801)
        {
          v45 = 0;
          LODWORD(v47) = 0;
          v43 = 0;
          LOBYTE(v40) = 1;
          LODWORD(v48) = 8;
          v50 = 3;
          v44 = 4;
          goto LABEL_424;
        }

        if (v38 <= 0x1000)
        {
          v45 = 0;
          v43 = 0;
          LODWORD(v48) = 1;
          LODWORD(v47) = 8;
LABEL_502:
          v50 = 3;
          v44 = 4;
          v49 = 6;
          v51 = 5;
LABEL_503:
          v46 = 4;
          goto LABEL_312;
        }

        if (v38 > 0x4000)
        {
          if (v38 > 0x8000)
          {
            LODWORD(v48) = 32;
            v46 = 4;
            v50 = 3;
            if (v38 <= 0x10000)
            {
              v45 = 0;
              v88 = !v40;
              v43 = v40;
              LOBYTE(v40) = !v40;
              if (v88)
              {
                LODWORD(v47) = 4;
              }

              else
              {
                LODWORD(v47) = 32;
              }

              if (v88)
              {
                LODWORD(v48) = 8;
              }

              else
              {
                LODWORD(v48) = 1;
              }

              v44 = 4;
              if (v88)
              {
                v46 = 4;
              }

              else
              {
                v46 = 3;
              }

              if (v88)
              {
                v50 = 3;
              }

              else
              {
                v50 = 4;
              }

              v51 = 6;
              v49 = 6;
              goto LABEL_313;
            }

            LODWORD(v47) = 0;
            v43 = 0;
            v45 = 1;
            v44 = 5;
            v51 = 6;
            v49 = 6;
            goto LABEL_312;
          }

          v45 = 0;
          v43 = !v40;
          v87 = !v40;
          if (v40)
          {
            LODWORD(v48) = 16;
          }

          else
          {
            LODWORD(v48) = 1;
          }

          if (v40)
          {
            LODWORD(v47) = 2;
          }

          else
          {
            LODWORD(v47) = 32;
          }
        }

        else
        {
          v45 = 0;
          LODWORD(v47) = 0;
          v43 = !v40;
          v87 = !v40;
          if (v40)
          {
            LODWORD(v48) = 16;
          }

          else
          {
            LODWORD(v48) = 32;
          }
        }

        if (v87)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v87)
        {
          v50 = 4;
        }

        else
        {
          v50 = 3;
        }

        goto LABEL_685;
      }

      if (v32 <= 0x100)
      {
        if (v38 < 0x801)
        {
          LOBYTE(v40) = 0;
          v45 = 1;
          v46 = 3;
          v50 = 4;
          v44 = 6;
          v51 = 5;
          v49 = 5;
          LODWORD(v47) = 4;
LABEL_453:
          LODWORD(v48) = 1;
          v43 = 1;
          goto LABEL_313;
        }

        v43 = 1;
        v51 = 5;
        if (v38 > 0x1000)
        {
          LODWORD(v47) = v38 <= 0x10000;
          if (v38 <= 0x10000)
          {
            v45 = 1;
          }

          else
          {
            v45 = 2;
          }

          if (v38 <= 0x10000)
          {
            v44 = 5;
          }

          else
          {
            v44 = 6;
          }

          if (v38 <= 0x10000)
          {
            v51 = 6;
          }

          LOBYTE(v40) = 1;
          LODWORD(v48) = 16;
          v46 = 4;
          v50 = 3;
          v49 = v51;
          v43 = 0;
          goto LABEL_313;
        }

        v45 = 0;
        LOBYTE(v40) = 0;
        v50 = 3;
        v44 = 4;
        v49 = 5;
        v46 = 3;
LABEL_560:
        LODWORD(v47) = 4;
        LODWORD(v48) = 4;
        goto LABEL_313;
      }

      if (v32 <= 0x200)
      {
        if (!v42)
        {
          v46 = 3;
          v44 = 4;
          if (v38 > 0x8000)
          {
            v45 = 0;
            LOBYTE(v40) = v38 < 0x40001;
            v43 = v38 >= 0x40001;
            if (v38 >= 0x40001)
            {
              LODWORD(v48) = 1;
            }

            else
            {
              LODWORD(v48) = 8;
            }

            if (v38 >= 0x40001)
            {
              LODWORD(v47) = 32;
            }

            else
            {
              LODWORD(v47) = 4;
            }

            if (v38 < 0x40001)
            {
              v50 = 3;
            }

            else
            {
              v50 = 4;
            }

            if (v38 >= 0x40001)
            {
              v46 = 3;
            }

            else
            {
              v46 = 4;
            }

            if (v38 < 0x40001)
            {
              v49 = 5;
            }

            else
            {
              v49 = 6;
            }

            v51 = 6;
            goto LABEL_313;
          }

          v45 = 0;
          LOBYTE(v40) = 0;
          v43 = 1;
          v49 = 6;
          v51 = 5;
          v50 = 4;
          goto LABEL_560;
        }

        v45 = 0;
        v43 = 0;
        LOBYTE(v40) = 1;
        LODWORD(v47) = 2;
LABEL_493:
        v50 = 3;
        v44 = 4;
        v51 = 6;
        v49 = 6;
        v46 = 4;
        LODWORD(v48) = 4;
        goto LABEL_313;
      }

      v45 = 0;
      LODWORD(v47) = 0;
      LOBYTE(v40) = 0;
      v43 = 1;
      LODWORD(v48) = 16;
LABEL_538:
      v46 = 3;
      v44 = 4;
      v51 = 6;
      v49 = 6;
      v50 = 4;
      goto LABEL_313;
    }

    if (v33 <= 0xA0)
    {
      LODWORD(v47) = 0;
      v43 = v32 > 0xA0;
      LOBYTE(v40) = v32 < 0xA1;
      if (v32 >= 0xA1)
      {
        LODWORD(v48) = 8;
      }

      else
      {
        LODWORD(v48) = 2;
      }

      if (v32 >= 0xA1)
      {
        v46 = 3;
      }

      else
      {
        v46 = 4;
      }

      if (v32 < 0xA1)
      {
        v50 = 3;
      }

      else
      {
        v50 = 4;
      }

      if (v32 >= 0xA1)
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      v49 = 5;
      if (v32 >= 0xA1)
      {
        v44 = 5;
      }

      else
      {
        v44 = 6;
      }

      if (v32 < 0xA1)
      {
        v51 = 5;
      }

      else
      {
        v51 = 6;
      }

      goto LABEL_242;
    }

    if (v33 <= 0xC0)
    {
      if (v32 < 0x41)
      {
        LOBYTE(v40) = 0;
        LODWORD(v47) = 0;
        v44 = 4;
        v43 = 1;
        v46 = 3;
        LODWORD(v48) = 32;
        v49 = 5;
        v50 = 3;
        goto LABEL_167;
      }

      if (v32 < 0x51)
      {
        v43 = 0;
        v45 = 1;
        LODWORD(v47) = 32;
        v46 = 4;
        v50 = 3;
        goto LABEL_472;
      }

      if (v32 < 0x81)
      {
        v45 = 0;
        LODWORD(v47) = 0;
        v43 = 0;
        LOBYTE(v40) = 1;
        LODWORD(v48) = 16;
LABEL_534:
        v50 = 3;
        v44 = 4;
LABEL_535:
        v51 = 6;
        v49 = 6;
        v46 = 4;
        goto LABEL_313;
      }

      if (v32 < 0xA1)
      {
        LODWORD(v47) = 0;
        v43 = 0;
        v45 = 1;
        LODWORD(v48) = 8;
        goto LABEL_310;
      }

      if (v32 <= 0xC0)
      {
        v45 = 0;
        v43 = 0;
        if (v38 < 0x801)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 16;
        }

        LODWORD(v47) = 8 * (v38 < 0x801);
        LOBYTE(v40) = 1;
        goto LABEL_534;
      }

      if (v32 < 0x401)
      {
        LODWORD(v47) = 0;
        v43 = 0;
        v45 = 1;
        LODWORD(v48) = 32;
        v46 = 4;
        v50 = 3;
        v49 = 5;
        v51 = 6;
        v44 = 5;
        goto LABEL_312;
      }

      v44 = 4;
      if (v32 > 0x500)
      {
        v45 = 0;
        LODWORD(v47) = 0;
        v43 = 0;
        LODWORD(v48) = 1;
        v50 = 3;
        v51 = 5;
        v49 = 5;
        goto LABEL_503;
      }

      v45 = 0;
      LODWORD(v47) = 0;
      LOBYTE(v40) = 0;
      if (v38 >= 0x801)
      {
        LODWORD(v48) = 16;
      }

      else
      {
        LODWORD(v48) = 4;
      }

      v43 = 1;
      v46 = 3;
LABEL_799:
      v49 = 6;
      v51 = 5;
      v50 = 4;
      goto LABEL_313;
    }

    if (v33 <= 0x100)
    {
      if (v32 <= 0x40)
      {
        v50 = 4;
        v46 = 3;
        if (v38 > 0x10000)
        {
          LOBYTE(v40) = 0;
          v45 = 0;
          if (v38 >= 0x20001)
          {
            LODWORD(v48) = 2;
          }

          else
          {
            LODWORD(v48) = 4;
          }

          if (v38 >= 0x20001)
          {
            LODWORD(v47) = 16;
          }

          else
          {
            LODWORD(v47) = 8;
          }

          if (v38 < 0x20001)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          v51 = 5;
          if (v38 < 0x20001)
          {
            v49 = 5;
          }

          else
          {
            v49 = 6;
          }

          v44 = 4;
          v43 = 1;
        }

        else
        {
          LOBYTE(v40) = 0;
          LODWORD(v47) = 0;
          v45 = 0;
          LODWORD(v48) = 32;
          v43 = 1;
          v49 = 5;
          v44 = 4;
          v51 = 5;
        }

        goto LABEL_242;
      }

      if (v32 <= 0x80)
      {
        if (v42)
        {
          v43 = 0;
          v45 = v38 >> 15 != 0;
          if (v38 >> 15)
          {
            LODWORD(v48) = 16;
          }

          else
          {
            LODWORD(v48) = 8;
          }

          LODWORD(v47) = 2 * (v38 >> 15 == 0);
          v46 = 4;
          if (v38 >> 15)
          {
            v44 = 5;
          }

          else
          {
            v44 = 4;
          }

          LOBYTE(v40) = 1;
          v50 = 3;
          goto LABEL_686;
        }

        if (v38 > 0x800)
        {
          v45 = 0;
          v43 = 0;
          if (v40)
          {
            LODWORD(v48) = 16;
          }

          else
          {
            LODWORD(v48) = 1;
          }

          if (v40)
          {
            LODWORD(v47) = 0;
          }

          else
          {
            LODWORD(v47) = 8;
          }

          if (v40)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          v46 = 4;
          if (v40)
          {
            v44 = 4;
          }

          else
          {
            v44 = 5;
          }

          v51 = 5;
          if (v40)
          {
            v49 = 5;
          }

          else
          {
            v49 = 6;
          }

          goto LABEL_312;
        }

        v50 = 4;
        if (v40)
        {
          LODWORD(v47) = 4;
        }

        else
        {
          LODWORD(v47) = 8;
        }

        if (v40)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        v44 = 5;
        if (v40)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        LODWORD(v48) = 1;
        v49 = v51;
        v45 = v40;
LABEL_627:
        v43 = 1;
        LOBYTE(v40) = 0;
        goto LABEL_313;
      }

      if (v32 <= 0x100)
      {
        if (v42)
        {
          if (v38 > 0x1000)
          {
            if (v38 > 0x2000)
            {
              v43 = 0;
              if (v40)
              {
                LODWORD(v48) = 2;
              }

              else
              {
                LODWORD(v48) = 16;
              }

              if (v40)
              {
                v50 = 4;
              }

              else
              {
                v50 = 3;
              }

              v46 = 4;
              v44 = 5;
              v51 = 6;
              v49 = 6;
              v45 = v40;
              LODWORD(v47) = v40;
              goto LABEL_312;
            }

            v45 = 0;
            LODWORD(v47) = 0;
            v43 = !v40;
            if (v40)
            {
              v46 = 4;
            }

            else
            {
              v46 = 3;
            }

            if (v40)
            {
              v50 = 3;
            }

            else
            {
              v50 = 4;
            }

            LODWORD(v48) = 8;
LABEL_685:
            v44 = 4;
LABEL_686:
            v51 = 6;
            v49 = 6;
            goto LABEL_313;
          }

          v45 = 0;
          LODWORD(v47) = 0;
          LOBYTE(v40) = 0;
          v43 = 1;
          LODWORD(v48) = 8;
        }

        else
        {
          v45 = 0;
          LODWORD(v47) = 0;
          LOBYTE(v40) = 0;
          v43 = 1;
          LODWORD(v48) = 32;
        }

        goto LABEL_538;
      }

      if (v32 > 0x200)
      {
        if (v32 < 0x401)
        {
          LODWORD(v47) = 0;
          LOBYTE(v40) = 0;
          v45 = 1;
          v46 = 3;
          v44 = 4;
          v49 = 6;
          v51 = 5;
          v50 = 4;
          goto LABEL_453;
        }

        if (v32 >= 0x5A1)
        {
          v45 = 0;
          LODWORD(v47) = 0;
          LOBYTE(v40) = 0;
          if (v32 < 0x619)
          {
            LODWORD(v48) = 1;
          }

          else
          {
            LODWORD(v48) = 16;
          }

          v43 = 1;
          goto LABEL_538;
        }

        v45 = 0;
        LOBYTE(v40) = 0;
        v43 = 1;
        LODWORD(v48) = 2;
        LODWORD(v47) = 8;
        v46 = 3;
        v44 = 4;
        goto LABEL_799;
      }

      if (v38 > 0x4000)
      {
        v45 = v38 <= 0x10000;
        v43 = v38 > 0x10000;
        v50 = 4;
        if (v38 <= 0x10000)
        {
          LODWORD(v47) = 1;
        }

        else
        {
          LODWORD(v47) = 4;
        }

        if (v38 > 0x10000)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v38 > 0x10000)
        {
          v44 = 4;
        }

        else
        {
          v44 = 5;
        }

        if (v38 > 0x10000)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        v49 = 6;
        LODWORD(v48) = v47;
        LOBYTE(v40) = v38 <= 0x10000;
        goto LABEL_313;
      }

      v45 = 0;
      v43 = 0;
      LODWORD(v47) = v37 == 1;
      v44 = 4;
      if (v37 == 1)
      {
        LODWORD(v48) = 4;
      }

      else
      {
        LODWORD(v48) = 32;
      }

LABEL_705:
      LOBYTE(v40) = 1;
      v50 = 3;
      goto LABEL_535;
    }

    if (v33 <= 0x140)
    {
      if (v32 < 0x81)
      {
        v43 = 0;
        v45 = 0;
        v50 = 3;
        v46 = 4;
        LOBYTE(v40) = 1;
        LODWORD(v48) = 32;
        v51 = 6;
        v49 = 5;
        LODWORD(v47) = 1;
        v44 = 4;
        goto LABEL_242;
      }

      v50 = 3;
      v44 = 4;
      if (v32 < 0xC1)
      {
        v45 = 0;
        v43 = 0;
        LOBYTE(v40) = 1;
        LODWORD(v48) = 2;
        v51 = 6;
        v49 = 6;
        v46 = 4;
        LODWORD(v47) = 4;
        goto LABEL_313;
      }

      v45 = 0;
      LOBYTE(v40) = 0;
      if (v32 >= 0x501)
      {
        LODWORD(v47) = 1;
      }

      else
      {
        LODWORD(v47) = 4;
      }

      if (v32 < 0x501)
      {
        v46 = 3;
      }

      else
      {
        v46 = 4;
      }

      if (v32 < 0x501)
      {
        v49 = 5;
      }

      else
      {
        v49 = 6;
      }

      LODWORD(v48) = 1;
      v51 = 6;
LABEL_671:
      v50 = 4;
      v43 = 1;
      goto LABEL_313;
    }

    if (v33 <= 0x180)
    {
      if (v32 < 0x81)
      {
        LOBYTE(v40) = 0;
        v49 = 6;
        v50 = 4;
        v46 = 3;
        LODWORD(v47) = 32;
        v43 = 1;
        v51 = 5;
LABEL_216:
        LODWORD(v48) = 1;
LABEL_217:
        v45 = 1;
        v44 = v49;
        goto LABEL_242;
      }

      if (v32 < 0x121)
      {
        v45 = 0;
        LODWORD(v47) = 0;
        v43 = 0;
        LOBYTE(v40) = 1;
        goto LABEL_493;
      }

      if (v32 > 0x180)
      {
        v50 = 3;
        if (v32 >= 0x1C1)
        {
          v45 = 0;
          LODWORD(v47) = 0;
          v43 = v32 > 0x500;
          LOBYTE(v40) = v32 < 0x501;
          if (v32 >= 0x501)
          {
            v46 = 3;
          }

          else
          {
            v46 = 4;
          }

          if (v32 < 0x501)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          if (v32 < 0x501)
          {
            v51 = 5;
          }

          else
          {
            v51 = 6;
          }

          LODWORD(v48) = 1;
          v44 = 4;
          v49 = v51;
          goto LABEL_313;
        }

        v45 = 0;
        v43 = 0;
        LODWORD(v48) = 1;
        v44 = 4;
        v51 = 6;
        v49 = 6;
        v46 = 4;
        LODWORD(v47) = 4;
        goto LABEL_312;
      }

      v45 = 0;
      v43 = 0;
      v44 = 4;
      if (v38 >= 0x801)
      {
        LODWORD(v47) = 8;
      }

      else
      {
        LODWORD(v47) = 4;
      }

      if (v38 < 0x801)
      {
        v51 = 5;
      }

      else
      {
        v51 = 6;
      }

      LODWORD(v48) = 1;
      v50 = 3;
LABEL_741:
      v49 = 6;
      goto LABEL_503;
    }

    if (v33 <= 0x1C0)
    {
      v44 = 4;
      if (v32 <= 0x500)
      {
        LOBYTE(v40) = 0;
        v45 = 0;
        if (v38 >= 0x801)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 4;
        }

        LODWORD(v47) = 8 * (v38 > 0x800);
        if (v38 < 0x801)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        v46 = 3;
        v43 = 1;
        v49 = 6;
        v50 = 4;
        goto LABEL_242;
      }

      v45 = 0;
      LOBYTE(v40) = 0;
      LODWORD(v47) = 1;
      v46 = 3;
      v49 = 6;
      v51 = 5;
      v50 = 4;
LABEL_457:
      LODWORD(v48) = v47;
      v43 = 1;
      goto LABEL_313;
    }

    if (v33 <= 0x200)
    {
      if (v32 <= 0x80)
      {
        v50 = 4;
        LODWORD(v48) = 16;
        if (v38 <= 0x4000)
        {
          LOBYTE(v40) = 0;
          LODWORD(v47) = 0;
          v44 = 5;
          v43 = 1;
          v46 = 3;
          goto LABEL_284;
        }

        LOBYTE(v40) = 0;
        v45 = 0;
        if (v38 > 0x8000)
        {
          LODWORD(v48) = 8;
        }

        else
        {
          LODWORD(v48) = 16;
        }

        if (v38 > 0x8000)
        {
          LODWORD(v47) = 4;
        }

        else
        {
          LODWORD(v47) = 2;
        }

LABEL_809:
        v46 = 3;
        v43 = 1;
        v49 = 6;
        v44 = 4;
        v51 = 6;
        goto LABEL_242;
      }

      if (v32 <= 0x100)
      {
        if (v38 < 0x401)
        {
          v45 = 0;
          LODWORD(v47) = 0;
          v43 = 0;
          LOBYTE(v40) = 1;
          LODWORD(v48) = 2;
          goto LABEL_534;
        }

        if (v38 > 0x8000)
        {
          v43 = v38 <= 0x10000;
          v45 = v38 > 0x10000;
          v44 = 4;
          if (v38 > 0x10000)
          {
            LODWORD(v48) = 1;
          }

          else
          {
            LODWORD(v48) = 4;
          }

          if (v38 > 0x10000)
          {
            LODWORD(v47) = 32;
          }

          else
          {
            LODWORD(v47) = 8;
          }

          v46 = 3;
          if (v38 > 0x10000)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          if (v38 > 0x10000)
          {
            v49 = 5;
          }

          else
          {
            v49 = 6;
          }

          v51 = 6;
          LOBYTE(v40) = v38 > 0x10000;
          goto LABEL_313;
        }

        v45 = 0;
        v43 = 0;
        if (v37 == 1)
        {
          LODWORD(v47) = 1;
        }

        else
        {
          LODWORD(v47) = 32;
        }

        v44 = 4;
        if (v37 == 1)
        {
          LODWORD(v48) = 4;
        }

        else
        {
          LODWORD(v48) = 1;
        }

        goto LABEL_705;
      }

      if (v32 <= 0x200)
      {
        LODWORD(v47) = 1;
        v50 = 3;
        v44 = 4;
        if (v38 <= 0x800)
        {
          v45 = !v40;
          if (v40)
          {
            LODWORD(v48) = 2;
          }

          else
          {
            LODWORD(v48) = 1;
          }

          if (v40)
          {
            v46 = 4;
          }

          else
          {
            v46 = 3;
          }

          if (v40)
          {
            v50 = 3;
          }

          else
          {
            v50 = 4;
          }

          if (v40)
          {
            v44 = 4;
          }

          else
          {
            v44 = 5;
          }

          v51 = 6;
          v49 = 6;
          v43 = !v40;
          LODWORD(v47) = 0;
          goto LABEL_313;
        }

        v45 = 0;
        v43 = 0;
        LODWORD(v48) = 2;
        v51 = 6;
        goto LABEL_741;
      }

      v46 = 3;
      v44 = 4;
      if (v32 <= 0x400)
      {
        v45 = 0;
        LODWORD(v47) = 0;
        v43 = v38 <= 0x1000;
        LOBYTE(v40) = v38 > 0x1000;
        if (v38 > 0x1000)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 8;
        }

        if (v38 > 0x1000)
        {
          v50 = 3;
        }

        else
        {
          v50 = 4;
        }

        if (v38 <= 0x1000)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v38 <= 0x1000)
        {
          v44 = 4;
        }

        else
        {
          v44 = 5;
        }

        v51 = 6;
        v49 = 6;
        goto LABEL_313;
      }

      v45 = 0;
      LODWORD(v47) = 0;
      LOBYTE(v40) = 0;
      v43 = 1;
LABEL_904:
      v51 = 6;
      v49 = 6;
      v50 = 4;
      LODWORD(v48) = 4;
      goto LABEL_313;
    }

    if (v33 > 0x300)
    {
      if (v33 <= 0x3F0)
      {
        LOBYTE(v40) = 1;
        v50 = 3;
        if (v32 < 0x101)
        {
          v43 = 0;
          LODWORD(v47) = 0;
          v49 = 5;
          v46 = 4;
          LODWORD(v48) = 32;
          v51 = 6;
          goto LABEL_217;
        }

        v45 = 0;
        LODWORD(v47) = 0;
        if (v32 < 0x801)
        {
          LODWORD(v48) = 1;
        }

        else
        {
          LODWORD(v48) = 2;
        }

        if (v32 < 0x801)
        {
          v50 = 3;
        }

        else
        {
          v50 = 4;
        }

        if (v32 < 0x801)
        {
          v51 = 5;
        }

        else
        {
          v51 = 6;
        }

        v46 = 3;
        v44 = 4;
        v49 = 6;
        goto LABEL_627;
      }

      if (v33 > 0x400)
      {
        if (v32 < 0x101)
        {
          v43 = 0;
          v45 = 0;
          v50 = 3;
          v46 = 4;
          LODWORD(v47) = 16;
          LOBYTE(v40) = 1;
          v51 = 6;
          v49 = 5;
          LODWORD(v48) = 1;
          v44 = 4;
          goto LABEL_242;
        }

        if (v32 >= 0x201)
        {
          v44 = 4;
          if (v38 >= 0x201)
          {
            LODWORD(v47) = 0;
            LOBYTE(v40) = 0;
            v45 = v38 < 0x801;
            if (v38 >= 0x801)
            {
              v44 = 4;
            }

            else
            {
              v44 = 5;
            }

            LODWORD(v48) = 1;
            v46 = 3;
            v50 = 4;
            v51 = 6;
            v49 = 6;
            v43 = 1;
            goto LABEL_313;
          }

          v45 = 0;
          LODWORD(v47) = 0;
          LOBYTE(v40) = 0;
          LODWORD(v48) = 1;
          v46 = 3;
          v49 = 6;
          v51 = 5;
          goto LABEL_671;
        }

        v45 = 0;
        LODWORD(v47) = 0;
        LOBYTE(v40) = 0;
        v43 = 1;
        v46 = 3;
        v44 = 4;
        goto LABEL_904;
      }

      LOBYTE(v40) = 0;
      LODWORD(v47) = 0;
      v45 = 0;
      if (v38 < 0x1001 || v32 > 0x100)
      {
        LODWORD(v48) = 8;
      }

      else
      {
        LODWORD(v48) = 16;
      }
    }

    else
    {
      LOBYTE(v40) = 0;
      LODWORD(v47) = 0;
      v45 = 0;
      if (v32 >= 0x401)
      {
        LODWORD(v48) = 1;
      }

      else
      {
        LODWORD(v48) = 8;
      }
    }

    v50 = 4;
    goto LABEL_809;
  }

  v10 = a1[18];
  if (v10)
  {
    v11 = 0;
    v12 = *a3;
    v13 = *(a3 + 8);
    v14 = *(a3 + 16);
    v15 = *(a3 + 24);
    v16 = *(a3 + 32);
    v17 = *(a3 + 40);
    v18 = *(a3 + 56);
    v19 = *(a3 + 64);
    v20 = a1[17];
    v21 = (v20 + 32);
    v22 = "Found optimal kernel with batch size\n";
    while (*(v21 - 4) != v12 || *(v21 - 3) != v13 || *(v21 - 2) != v14 || *(v21 - 1) != v15 || *v21 != v16 || v21[1] != v17 || v21[2] != v18 || v21[3] != v19 || v21[4] != *(a3 + 88))
    {
      ++v11;
      v21 += 17;
      if (v10 == v11)
      {
        v11 = 0;
        v23 = (v20 + 32);
        v22 = "Found optimal kernel without batch size\n";
        while (*(v23 - 4) != v12 || *(v23 - 3) != v13 || *(v23 - 2) != v14 || *(v23 - 1) != v15 || *v23 != v16 || v23[1] != v17 || v23[2] != v18 || v23[3] != v19)
        {
          ++v11;
          v23 += 17;
          if (v10 == v11)
          {
            goto LABEL_32;
          }
        }

        break;
      }
    }

    result = MPSKernel_LogInfo(a2, 3uLL, v22);
    v24 = a1[17] + 136 * v11;
    v25 = *(v24 + 128);
    if (v25 >= *(a3 + 88))
    {
      v25 = *(a3 + 88);
    }

    v26 = *(v24 + 120);
    v27 = *(v24 + 88);
    v28 = *(v24 + 104);
    *a5 = *(v24 + 72);
    *(a5 + 16) = v27;
    *(a5 + 32) = v28;
    *(a5 + 48) = vdupq_n_s64(1uLL);
    *(a5 + 64) = v25;
    *(a5 + 72) = 0;
    *(a5 + 80) = 0;
    *(a5 + 81) = v26;
    goto LABEL_390;
  }

LABEL_32:
  result = MPSKernel_LogInfo(a2, 3uLL, "Did not find any match in table\n");
  *a5 = vdupq_n_s64(5uLL);
  *(a5 + 32) = 0;
  *(a5 + 16) = 3;
  *(a5 + 24) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = vdupq_n_s64(1uLL);
  *(a5 + 64) = 1;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  v29 = *(a3 + 32);
  if (v29 >= 0x200)
  {
    *a5 = 6;
    *(a5 + 16) = 3;
    v30 = *(a3 + 40);
    if (v30 >= 0x800)
    {
      goto LABEL_34;
    }

    if (v30 > 0x3FF)
    {
      v53 = 5;
      v52 = 6;
      v31 = 4;
      goto LABEL_127;
    }

    if (v30 >= 0x200)
    {
      goto LABEL_34;
    }

    if (v30 > 0xFF)
    {
      v53 = 5;
      v52 = 6;
      v31 = 8;
      goto LABEL_127;
    }

    if (v30 >= 0xC0)
    {
LABEL_34:
      v31 = *(a3 + 88);
LABEL_71:
      v53 = 5;
LABEL_72:
      v52 = 6;
      goto LABEL_127;
    }

    if (v30 < 0x80)
    {
      v53 = 5;
      goto LABEL_173;
    }

    goto LABEL_69;
  }

  if (v29 >= 0x120)
  {
    v30 = *(a3 + 40);
    if (*(a3 + 96) > 1uLL || *(a3 + 104) >= 2uLL)
    {
      if (v30 >= 0x80)
      {
        *a5 = xmmword_239B1F4F0;
        v52 = 4;
        *(a5 + 16) = 4;
        *(a5 + 81) = 1;
        v31 = 8;
        goto LABEL_85;
      }
    }

    else
    {
      if (v30 >= 0x100)
      {
        *a5 = xmmword_239B1F4F0;
        v52 = 4;
        *(a5 + 16) = 4;
        *(a5 + 81) = 1;
        v31 = *(a3 + 88);
LABEL_85:
        *(a5 + 64) = v31;
        v53 = 7;
        goto LABEL_127;
      }

      if (v30 >= 0x80)
      {
        *a5 = xmmword_239B1F470;
        *(a5 + 82) = 1;
LABEL_120:
        v31 = *(a3 + 88);
LABEL_121:
        *(a5 + 64) = v31;
LABEL_122:
        v53 = 6;
        v52 = 4;
        goto LABEL_127;
      }
    }

    v52 = 5;
    *(a5 + 8) = 5;
    *(a5 + 82) = 1;
    goto LABEL_124;
  }

  if (v29 >= 0x100)
  {
    *a5 = 6;
    v30 = *(a3 + 40);
    if (v30 < 0x200)
    {
      if (v30 >= 0x100)
      {
        if (*(a3 + 96) > 1uLL || *(a3 + 104) >= 2uLL)
        {
          v31 = 8;
        }

        else
        {
          *(a5 + 16) = xmmword_239B1F4B0;
          *(a5 + 32) = 0;
          *(a5 + 40) = 0;
          v31 = 8;
        }

        goto LABEL_70;
      }

      if (v30 < 0x80)
      {
        if (v30 < 0x40)
        {
          v53 = 4;
          *(a5 + 8) = vdupq_n_s64(4uLL);
          v31 = 8;
          *(a5 + 64) = 8;
          goto LABEL_72;
        }

        *a5 = xmmword_239B1F4A0;
        v31 = 4;
        *(a5 + 64) = 4;
        *(a5 + 82) = 1;
        v52 = 5;
        v53 = 4;
        goto LABEL_127;
      }
    }

LABEL_68:
    *(a5 + 16) = 3;
LABEL_69:
    v31 = 4;
LABEL_70:
    *(a5 + 64) = v31;
    goto LABEL_71;
  }

  v54 = *a3 * *(a3 + 8);
  if (v29 >= 0x80)
  {
    v30 = *(a3 + 40);
    if (*(a3 + 96) <= 1uLL && *(a3 + 104) < 2uLL)
    {
      if (v30 >= 0x200)
      {
        *a5 = 6;
        if (v54 >= 0x310)
        {
          v53 = 4;
          *(a5 + 8) = vdupq_n_s64(4uLL);
LABEL_173:
          v52 = 6;
          v31 = 1;
          goto LABEL_127;
        }

        *(a5 + 16) = 3;
        v31 = 8;
        goto LABEL_70;
      }

      if (v30 >= 0x100)
      {
        *a5 = xmmword_239B1F470;
        *(a5 + 16) = xmmword_239B1F4D0;
        goto LABEL_120;
      }

      if (v30 >= 0xC0)
      {
        *a5 = xmmword_239B1F470;
        v31 = 8;
        goto LABEL_121;
      }

      *a5 = 6;
      if (v30 >= 0x80)
      {
        goto LABEL_68;
      }

      *(a5 + 8) = xmmword_239B1F490;
      *(a5 + 24) = 1;
      v31 = 8;
LABEL_433:
      *(a5 + 64) = v31;
      v53 = 4;
      goto LABEL_72;
    }

    if (v30 >= 0x140)
    {
      v53 = 6;
      *(a5 + 8) = 6;
      v31 = *(a3 + 88);
      *(a5 + 64) = v31;
      v52 = 5;
      goto LABEL_127;
    }

    if (v30 >= 0x100)
    {
      if (v54 < 0x640)
      {
        if (v54 >= 0x310)
        {
          *a5 = xmmword_239B1F4F0;
          *(a5 + 81) = 1;
          v31 = 2;
          *(a5 + 64) = 2;
          v53 = 7;
          v52 = 4;
          goto LABEL_127;
        }

        *a5 = xmmword_239B1F4C0;
        *(a5 + 16) = xmmword_239B1F4E0;
        v31 = *(a3 + 88);
        goto LABEL_433;
      }

      *(a5 + 8) = xmmword_239B1F4C0;
      *(a5 + 32) = 1;
      *(a5 + 81) = 1;
      v31 = 2;
      *(a5 + 64) = 2;
LABEL_291:
      v53 = 6;
      v52 = 5;
      goto LABEL_127;
    }

    if (v30 >= 0xC0)
    {
      *a5 = xmmword_239B1F470;
      goto LABEL_120;
    }

    v52 = 6;
    *a5 = 6;
    *(a5 + 16) = 3;
LABEL_124:
    v31 = 4;
LABEL_125:
    *(a5 + 64) = v31;
LABEL_126:
    v53 = 5;
    goto LABEL_127;
  }

  if (v29 >= 0x50)
  {
    v30 = *(a3 + 40);
    if (v30 < 0x100)
    {
      if (v30 >= 0x80)
      {
        *a5 = xmmword_239B1F470;
        *(a5 + 16) = 5;
        v31 = 1;
        *(a5 + 81) = 1;
        goto LABEL_122;
      }

      v52 = 5;
      *(a5 + 8) = 5;
      goto LABEL_124;
    }

LABEL_117:
    *a5 = xmmword_239B1F470;
    v52 = 4;
    *(a5 + 16) = 4;
    *(a5 + 81) = 1;
    v31 = 2;
    *(a5 + 64) = 2;
    v53 = 6;
    goto LABEL_127;
  }

  if (v29 >= 0x40)
  {
    v30 = *(a3 + 40);
    if (v30 >= 0x100)
    {
      v31 = 4;
      *a5 = 4;
      *(a5 + 16) = 3;
      *(a5 + 81) = 1;
      *(a5 + 64) = 4;
      v53 = 5;
      v52 = 4;
      goto LABEL_127;
    }

    if (v30 >= 0x80)
    {
      if (v54 > 0x1000)
      {
        *(a5 + 8) = xmmword_239B1F4C0;
        v31 = 1;
        *(a5 + 32) = 1;
        *(a5 + 64) = 1;
        *(a5 + 81) = 1;
        goto LABEL_291;
      }

      if (v54 < 0x101)
      {
        v52 = 6;
        *a5 = 6;
        *(a5 + 16) = xmmword_239B1F4B0;
        v31 = 8;
        goto LABEL_125;
      }

      *a5 = xmmword_239B1F470;
      v53 = 6;
      *(a5 + 16) = 6;
      v31 = 8;
      *(a5 + 64) = 8;
      v52 = 4;
LABEL_127:
      if (v29 < (1 << v52))
      {
        v55 = v52 - 1;
        v56 = v53 + 1;
        if ((v52 - 1) >= 4 && v29 < (1 << v55))
        {
          v55 = v52 - 2;
          v56 = v53 + 2;
          if ((v52 - 2) >= 4 && v29 < (1 << v55))
          {
            v55 = v52 - 3;
            v56 = v53 + 3;
          }
        }

        *a5 = v55;
        *(a5 + 8) = v56;
        v53 = v56;
      }

      goto LABEL_134;
    }

    if (v30 < 0x41)
    {
      if (v30 >= 0x20)
      {
        *a5 = xmmword_239B1F470;
        v31 = 1;
        goto LABEL_121;
      }

      if (v30 < 9)
      {
        *(a5 + 8) = xmmword_239B1F480;
        v31 = 1;
        *(a5 + 40) = 1;
        *(a5 + 81) = 256;
        v53 = 3;
      }

      else
      {
        *(a5 + 8) = xmmword_239B1F490;
        v31 = 2;
        *(a5 + 64) = 2;
        v53 = 4;
      }

      v52 = 5;
      goto LABEL_127;
    }

    *(a5 + 8) = xmmword_239B1F4A0;
    *(a5 + 24) = 1;
LABEL_415:
    v31 = 4;
    *(a5 + 64) = 4;
    v52 = 5;
    goto LABEL_126;
  }

  if (v29 >= 0x20)
  {
    v30 = *(a3 + 40);
    if (v30 >= 0x40)
    {
      goto LABEL_117;
    }

    *(a5 + 16) = 3;
    goto LABEL_415;
  }

  if (v29 >= 0x10)
  {
    *(a5 + 81) = 1;
    v31 = 4;
    *a5 = vdupq_n_s64(4uLL);
    *(a5 + 16) = xmmword_239B1F460;
    *(a5 + 64) = 4;
    v30 = *(a3 + 40);
    v52 = 4;
    v53 = 4;
    goto LABEL_127;
  }

  *a5 = 3;
  v30 = *(a3 + 40);
  if (v30 < 0x40)
  {
    v53 = 5;
    *(a5 + 16) = 5;
    v31 = 1;
  }

  else
  {
    *(a5 + 16) = 4;
    v31 = 1;
    *(a5 + 32) = 1;
    *(a5 + 81) = 1;
    v53 = 5;
  }

LABEL_134:
  v57 = v53 - 4;
  if (v53 >= 4 && v30 < (1 << v53))
  {
    v58 = v53 - 1;
    if (v53 - 1 >= 4 && v30 < 1 << v58)
    {
      v58 = v53 - 2;
      if (v53 - 2 >= 4 && v30 < 1 << v58)
      {
        v58 = v53 - 3;
        if (v53 - 3 >= 4 && v30 < 1 << v58)
        {
          if (v57 < 4)
          {
            v58 = v53 - 4;
          }

          else
          {
            v58 = v53 - 4;
            if (v30 < 1 << v57)
            {
              v58 = v53 - 5;
              if (v53 - 5 >= 4 && v30 < 1 << v58)
              {
                v58 = v53 - 6;
                v59 = 1 << (v53 - 6);
                v60 = v53 - 7;
                if (v30 < v59 && v58 > 3)
                {
                  v58 = v60;
                }
              }
            }
          }
        }
      }
    }

    *(a5 + 8) = v58;
  }

  v62 = *(a3 + 88);
  if (v31 < v62)
  {
    v62 = v31;
  }

  *(a5 + 64) = v62;
  return result;
}

uint64_t MPSNDArrayConvolutionGradientWithWeightsFunctionConstructor(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2[8];
  v6 = MPSCreateFunctionConstantValues();
  [v6 setConstantValue:&v9 + 4 type:33 atIndex:89];
  AddFunctionConstantList(v6, a3);
  v7 = _MPSNewSpecializedFunction();

  return v7;
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::EncodeNDArrayConvolutionGradientWithWeights(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (MPSNDArrayConvolutionDeviceBehavior::IsConvolutionGradientWithWeightsSupported(a1, a2, a5))
  {
    v241 = a4;
    v217 = [*(a5 + 16) count];
    v253 = *(a2 + 224);
    v273 = *(a2 + 228);
    v254 = *(a2 + 144);
    v282 = *(a2 + 152);
    v252 = *(a2 + 200);
    v251 = *(a2 + 208);
    v10 = *(a2 + 160);
    v277 = *(a2 + 168);
    v279 = *(a2 + 192);
    v267 = *(a2 + 232);
    v250 = *(a2 + 240);
    v269 = *(a2 + 176);
    v272 = a2;
    v268 = *(a2 + 184);
    v11 = [*(a5 + 232) inputTensorAtIndex:0];
    v248 = [*(a5 + 232) inputTensorAtIndex:1];
    v12 = [*(a5 + 232) inputTensorAtIndex:2];
    v264 = [*(a5 + 232) outputTensorAtIndex:0];
    if (*v11 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v261 = v12;
    if (*v12 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*v264 != 4 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v15 = *(v11 + 16);
    v17 = *v15;
    v16 = v15[1];
    if (v16 != v17)
    {
      if (((v16 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v19 = *(v264 + 16);
    v21 = *v19;
    v20 = v19[1];
    if (v20 != v21)
    {
      if (((v20 - v21) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v22 = v261[2];
    v24 = *v22;
    v23 = v22[1];
    v216 = a3;
    if (v23 != v24)
    {
      if (((v23 - v24) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v13.i32[0] = GetAxisIndexForDataFormat(MPSNDArrayConvolution2DDataFormat)::axis[v253];
    v25 = vmovl_u8(v13).u64[0];
    v14.i32[0] = GetAxisIndexForWeightsFormat(MPSNDArrayConvolution2DWeightsFormat)::axis[v273];
    v26 = vmovl_u8(v14).u64[0];
    v27 = (8 * v25);
    v28 = *v27;
    v247 = *(8 * WORD2(v25));
    v266 = *(8 * HIWORD(v25));
    v274 = *v27;
    v255 = *(8 * WORD1(v25));
    v257 = *(8 * v26);
    v29 = *(8 * WORD1(v26));
    v275 = *(8 * WORD2(v26));
    v30 = *(8 * HIWORD(v26));
    if (v255 != v10 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v255 != v277 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v28 != v274 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v255 != v257 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v255 / v279 != v29 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v275 != v282 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v30 != v254 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (v257 != v277 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v280 = v10 / v279;
    if (v29 != v10 / v279 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if (*(v11 + 8) != *(v261 + 2) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    if ((*(v11 + 8) & 0x1000FFFF) == 0x10000008 && (*(*(v272 + *MEMORY[0x277CD7350]) + 1478) & 4) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v270 = v30;
    v31 = [*(a5 + 232) graph];
    v32 = *(v31 + 8);
    v33 = *v32;
    v34 = v32[1];
    if (*v32 == v34)
    {
      goto LABEL_546;
    }

    v35 = -1;
    do
    {
      v36 = *v33;
      if (v36 == *(MPSKernelDAG::GetCoreOpInputAtIndex(v31) + 32))
      {
        v35 = *(*v33 + 76);
      }

      MPSKernelDAG::GetCoreOpInputAtIndex(v31);
      ++v33;
    }

    while (v33 != v34);
    if (v35 == -1)
    {
LABEL_546:
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v35 = 0;
    }

    v37 = [*(a5 + 16) objectAtIndexedSubscript:v35];
    v281 = *(a5 + 112);
    v193 = *(*(a5 + 8) + 80 * v35 + 64);
    v194 = *(a5 + 96);
    v38 = *(a5 + 208);
    v246 = a5;
    v192 = *(a5 + 192);
    v39 = MEMORY[0x277CD7410];
    v278 = v37;
    v40 = (v37 + *MEMORY[0x277CD7410]);
    if (v253 == 1)
    {
      v41 = v250;
      if (*v40 != v255 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v278[*v39 + 4] != v266 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v278[*v39 + 8] != v247 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v278[*v39 + 12] != v28 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v281[*v39] != v255 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v281[*v39 + 4] != v266 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v281[*v39 + 8] != v247 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v281[*v39 + 12] != v274 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39] != v257 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 4] != v29 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 8] != v270 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 12] != v275 && (MTLReportFailureTypeEnabled() & 1) != 0)
      {
LABEL_540:
        MTLReportFailure();
      }
    }

    else
    {
      v41 = v250;
      if (v40[2] != v255 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v278[*v39] != v266 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v278[*v39 + 4] != v247 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v278[*v39 + 12] != v28 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v281[*v39 + 8] != v255 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v281[*v39] != v266 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v281[*v39 + 4] != v247 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v281[*v39 + 12] != v274 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 12] != v257 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 8] != v29 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39] != v270 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      if (*&v38[*v39 + 4] != v275 && MTLReportFailureTypeEnabled())
      {
        goto LABEL_540;
      }
    }

    v42 = *(v11 + 8);
    if (v42 > 285212703)
    {
      if (v42 <= 536870915)
      {
        if (v42 > 301989895)
        {
          if (v42 == 301989896)
          {
            v43 = 512;
            v44 = *(v248 + 8);
            if (v44 > 285212703)
            {
              goto LABEL_109;
            }

            goto LABEL_128;
          }

          if (v42 == 335544328)
          {
            v43 = 544;
            v44 = *(v248 + 8);
            if (v44 <= 285212703)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
          }
        }

        else
        {
          if (v42 == 285212704)
          {
            v43 = 416;
            v44 = *(v248 + 8);
            if (v44 > 285212703)
            {
              goto LABEL_109;
            }

            goto LABEL_128;
          }

          if (v42 == 285212736)
          {
            v43 = 448;
            v44 = *(v248 + 8);
            if (v44 <= 285212703)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
          }
        }
      }

      else if (v42 <= 536870927)
      {
        if (v42 == 536870916)
        {
          v43 = 0;
          v44 = *(v248 + 8);
          if (v44 > 285212703)
          {
            goto LABEL_109;
          }

          goto LABEL_128;
        }

        if (v42 == 536870920)
        {
          v43 = 32;
          v44 = *(v248 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        }
      }

      else
      {
        switch(v42)
        {
          case 536870928:
            v43 = 64;
            v44 = *(v248 + 8);
            if (v44 <= 285212703)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
          case 536870944:
            v43 = 96;
            v44 = *(v248 + 8);
            if (v44 <= 285212703)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
          case 536870976:
            v43 = 128;
            v44 = *(v248 + 8);
            if (v44 <= 285212703)
            {
              goto LABEL_128;
            }

            goto LABEL_109;
        }
      }
    }

    else if (v42 <= 31)
    {
      if (v42 > 7)
      {
        if (v42 == 8)
        {
          v43 = 192;
          v44 = *(v248 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        }

        if (v42 == 16)
        {
          v43 = 224;
          v44 = *(v248 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        }
      }

      else
      {
        if (v42 == -1879048176)
        {
          v43 = 384;
          v44 = *(v248 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        }

        if (v42 == 4)
        {
          v43 = 160;
          v44 = *(v248 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        }
      }
    }

    else if (v42 <= 268435463)
    {
      if (v42 == 32)
      {
        v43 = 256;
        v44 = *(v248 + 8);
        if (v44 <= 285212703)
        {
          goto LABEL_128;
        }

        goto LABEL_109;
      }

      if (v42 == 64)
      {
        v43 = 288;
        v44 = *(v248 + 8);
        if (v44 <= 285212703)
        {
          goto LABEL_128;
        }

        goto LABEL_109;
      }
    }

    else
    {
      switch(v42)
      {
        case 268435464:
          v43 = 480;
          v44 = *(v248 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        case 268435472:
          v43 = 320;
          v44 = *(v248 + 8);
          if (v44 <= 285212703)
          {
            goto LABEL_128;
          }

          goto LABEL_109;
        case 268435488:
          v43 = 352;
          v44 = *(v248 + 8);
          if (v44 > 285212703)
          {
            goto LABEL_109;
          }

LABEL_128:
          if (v44 <= 31)
          {
            if (v44 > 7)
            {
              if (v44 == 8)
              {
                v45 = 6144;
                goto LABEL_169;
              }

              if (v44 == 16)
              {
                v45 = 7168;
                goto LABEL_169;
              }
            }

            else
            {
              if (v44 == -1879048176)
              {
                v45 = 12288;
                goto LABEL_169;
              }

              if (v44 == 4)
              {
                v45 = 5120;
                goto LABEL_169;
              }
            }
          }

          else if (v44 <= 268435463)
          {
            if (v44 == 32)
            {
              v45 = 0x2000;
              goto LABEL_169;
            }

            if (v44 == 64)
            {
              v45 = 9216;
              goto LABEL_169;
            }
          }

          else
          {
            switch(v44)
            {
              case 268435464:
                v45 = 15360;
                goto LABEL_169;
              case 268435472:
                v45 = 10240;
                goto LABEL_169;
              case 268435488:
                v45 = 11264;
                goto LABEL_169;
            }
          }

          goto LABEL_168;
      }
    }

    v43 = 576;
    v44 = *(v248 + 8);
    if (v44 <= 285212703)
    {
      goto LABEL_128;
    }

LABEL_109:
    if (v44 <= 536870915)
    {
      if (v44 > 301989895)
      {
        if (v44 == 301989896)
        {
          v45 = 0x4000;
          goto LABEL_169;
        }

        if (v44 == 335544328)
        {
          v45 = 17408;
          goto LABEL_169;
        }
      }

      else
      {
        if (v44 == 285212704)
        {
          v45 = 13312;
          goto LABEL_169;
        }

        if (v44 == 285212736)
        {
          v45 = 14336;
          goto LABEL_169;
        }
      }
    }

    else if (v44 <= 536870927)
    {
      if (v44 == 536870916)
      {
        v214 = 0;
        goto LABEL_170;
      }

      if (v44 == 536870920)
      {
        v45 = 1024;
        goto LABEL_169;
      }
    }

    else
    {
      switch(v44)
      {
        case 536870928:
          v45 = 2048;
          goto LABEL_169;
        case 536870944:
          v45 = 3072;
          goto LABEL_169;
        case 536870976:
          v45 = 4096;
LABEL_169:
          v214 = v45;
LABEL_170:
          v46 = *(v261 + 2);
          v271 = v277 / v279;
          if (v46 > 285212703)
          {
            if (v46 <= 536870915)
            {
              if (v46 > 301989895)
              {
                if (v46 == 301989896)
                {
                  v47 = 0x80000;
                  goto LABEL_235;
                }

                if (v46 == 335544328)
                {
                  v47 = 557056;
                  goto LABEL_235;
                }
              }

              else
              {
                if (v46 == 285212704)
                {
                  v47 = 425984;
                  goto LABEL_235;
                }

                if (v46 == 285212736)
                {
                  v47 = 458752;
                  goto LABEL_235;
                }
              }
            }

            else if (v46 <= 536870927)
            {
              if (v46 == 536870916)
              {
                v212 = 0;
                v48 = *(v264 + 8);
                if (v48 <= 285212703)
                {
                  goto LABEL_236;
                }

                goto LABEL_213;
              }

              if (v46 == 536870920)
              {
                v47 = 0x8000;
                goto LABEL_235;
              }
            }

            else
            {
              switch(v46)
              {
                case 536870928:
                  v47 = 0x10000;
                  goto LABEL_235;
                case 536870944:
                  v47 = 98304;
                  goto LABEL_235;
                case 536870976:
                  v47 = 0x20000;
                  goto LABEL_235;
              }
            }
          }

          else if (v46 <= 31)
          {
            if (v46 > 7)
            {
              if (v46 == 8)
              {
                v47 = 196608;
                goto LABEL_235;
              }

              if (v46 == 16)
              {
                v47 = 229376;
                goto LABEL_235;
              }
            }

            else
            {
              if (v46 == -1879048176)
              {
                v47 = 393216;
                goto LABEL_235;
              }

              if (v46 == 4)
              {
                v47 = 163840;
                goto LABEL_235;
              }
            }
          }

          else if (v46 <= 268435463)
          {
            if (v46 == 32)
            {
              v47 = 0x40000;
              goto LABEL_235;
            }

            if (v46 == 64)
            {
              v47 = 294912;
              goto LABEL_235;
            }
          }

          else
          {
            switch(v46)
            {
              case 268435464:
                v47 = 491520;
                goto LABEL_235;
              case 268435472:
                v47 = 327680;
                goto LABEL_235;
              case 268435488:
                v47 = 360448;
                goto LABEL_235;
            }
          }

          v47 = 589824;
LABEL_235:
          v212 = v47;
          v48 = *(v264 + 8);
          if (v48 <= 285212703)
          {
LABEL_236:
            if (v48 <= 31)
            {
              if (v48 > 7)
              {
                if (v48 == 8)
                {
                  v49 = 6;
                  goto LABEL_258;
                }

                if (v48 == 16)
                {
                  v49 = 7;
                  goto LABEL_258;
                }
              }

              else
              {
                if (v48 == -1879048176)
                {
                  v49 = 12;
                  goto LABEL_258;
                }

                if (v48 == 4)
                {
                  v49 = 5;
                  goto LABEL_258;
                }
              }
            }

            else if (v48 <= 268435463)
            {
              if (v48 == 32)
              {
                v49 = 8;
                goto LABEL_258;
              }

              if (v48 == 64)
              {
                v49 = 9;
                goto LABEL_258;
              }
            }

            else
            {
              switch(v48)
              {
                case 268435464:
                  v49 = 15;
                  goto LABEL_258;
                case 268435472:
                  v49 = 10;
                  goto LABEL_258;
                case 268435488:
                  v49 = 11;
                  goto LABEL_258;
              }
            }

LABEL_257:
            v49 = 18;
            goto LABEL_258;
          }

LABEL_213:
          if (v48 <= 536870915)
          {
            if (v48 > 301989895)
            {
              if (v48 == 301989896)
              {
                v49 = 16;
              }

              else
              {
                if (v48 != 335544328)
                {
                  goto LABEL_257;
                }

                v49 = 17;
              }
            }

            else if (v48 == 285212704)
            {
              v49 = 13;
            }

            else
            {
              if (v48 != 285212736)
              {
                goto LABEL_257;
              }

              v49 = 14;
            }
          }

          else if (v48 <= 536870927)
          {
            if (v48 == 536870916)
            {
              v210 = 0;
              goto LABEL_259;
            }

            if (v48 != 536870920)
            {
              goto LABEL_257;
            }

            v49 = 1;
          }

          else
          {
            switch(v48)
            {
              case 536870928:
                v49 = 2;
                break;
              case 536870944:
                v49 = 3;
                break;
              case 536870976:
                v49 = 4;
                break;
              default:
                goto LABEL_257;
            }
          }

LABEL_258:
          v210 = v49;
LABEL_259:
          v50 = 0;
          v373[0] = v266;
          v373[1] = v247;
          v373[2] = v266;
          v373[3] = v247;
          v373[4] = v280;
          v373[5] = v277 / v279;
          v373[6] = v279;
          v373[7] = v254;
          v373[8] = v282;
          v373[9] = v252;
          v373[10] = v251;
          v373[11] = v274;
          v373[12] = v269;
          v373[13] = v268;
          v373[14] = v267;
          v373[15] = v41;
          v374 = v253;
          v375 = v273;
          v372 = 0;
          v371 = 0u;
          v370 = 0u;
          v369 = 0u;
          v368 = 0u;
          v367 = 0u;
          v366 = 0u;
          if (*(v272 + 272) == 1)
          {
            v50 = *(v272 + 264);
          }

          (*(*a1 + 136))(&v366, a1, v272, v373, v50, *(v11 + 8), *(v248 + 8), *(v261 + 2));
          v234 = v366;
          v207 = BYTE8(v366);
          v51 = 1 << SBYTE8(v366);
          v233 = v367;
          v245 = DWORD2(v367);
          v237 = v368;
          v236 = BYTE8(v368);
          if ((v51 & 7) != 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v276 = 1 << v234;
          if ((v276 & 7) != 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v249 = 1 << v233;
          if ((v249 & 7) != 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v244 = 1 << v237;
          if (8 * v244 > v51 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v243 = 1 << v236;
          if (8 * v243 > v276 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if ((v249 & 7) != 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v52 = 1 << v245;
          v53 = v249 / v52;
          v242 = v52;
          if (v249 % v52 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          if ((v53 & 7) != 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v54 = v243 * v244;
          if (v54 > (v51 >> 3) * (v276 >> 3) && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v231 = v51;
          v228 = 0;
          v55 = *MEMORY[0x277CD7400];
          v56 = *MEMORY[0x277CD73C8];
          v57 = *&v278[v55] / (*&v278[v56] >> 3);
          v58 = *&v281[v55] / (*&v281[v56] >> 3);
          if (v253 == 1)
          {
            v59 = v255;
          }

          else
          {
            v59 = v266;
          }

          if (v253 == 1)
          {
            v60 = v255;
          }

          else
          {
            v60 = v266;
          }

          v219 = v60;
          if (v253 == 1)
          {
            v61 = v266;
          }

          else
          {
            v61 = *&v281[v55] / (*&v281[v56] >> 3);
          }

          if (v253 == 1)
          {
            v62 = v266;
          }

          else
          {
            v62 = *&v278[v55] / (*&v278[v56] >> 3);
          }

          if (v253 == 1)
          {
            v63 = *&v281[v55] / (*&v281[v56] >> 3);
          }

          else
          {
            v63 = v255;
          }

          v64 = *&v38[v55];
          v65 = *&v38[v56];
          if (v253 == 1)
          {
            v66 = v57;
          }

          else
          {
            v66 = v255;
          }

          v67 = v64 / (v65 >> 3);
          if (v273)
          {
            v68 = v67;
          }

          else
          {
            v68 = v254;
          }

          v224 = v68;
          if (v273)
          {
            LODWORD(v67) = v257;
          }

          v223 = v67;
          v70 = v269 == 1 && v268 == 1;
          v72 = v252 == 1 && v251 == 1;
          v198 = __PAIR64__(v63, v66);
          v196 = v62;
          v197 = v61;
          v258 = v70;
          if (!v267 && !v41 && v70)
          {
            v73 = v254 == 1 && v72;
            if (v282 != 1)
            {
              v73 = 0;
            }

            v228 = v73;
          }

          v74 = BYTE7(v371);
          if (!v253)
          {
            if (BYTE7(v371) && (*(*(v272 + *MEMORY[0x277CD7350]) + 1478) & v70 & 1) != 0)
            {
              v74 = 1;
            }

            else
            {
              v74 = 0;
              v76 = v219 == v58 && v59 == v57;
              v228 &= v76;
            }
          }

          v77 = v370;
          v78 = *(v261 + 2);
          if (v78 != 268435472)
          {
            if (v78 <= 268435487)
            {
              if (v78 == -1879048176 || v78 == 268435464)
              {
                goto LABEL_338;
              }
            }

            else if (v78 == 268435488 || v78 == 335544328 || v78 == 301989896)
            {
              goto LABEL_338;
            }

            if (MTLReportFailureTypeEnabled())
            {
              MTLReportFailure();
            }
          }

LABEL_338:
          if (v72)
          {
            v79 = 2;
          }

          else
          {
            v79 = 0;
          }

          v202 = v79;
          v80 = v266;
          if (v74)
          {
            v80 = (v266 + 1) & 0xFFFFFFFE;
          }

          v227 = v80 * v247;
          v225 = v80 * (v247 * v274);
          v256 = v74;
          v222 = v77;
          if (v253 == 1)
          {
            v204 = 1;
            v195 = 1;
            v81 = 1;
            v82 = (v274 + v77 - 1) / v77;
          }

          else
          {
            v83 = *(&v370 + 1);
            v84 = v249 - 1;
            if (v77)
            {
              v85 = (v227 + v84) / v249;
              v239 = (v274 + v77 - 1) / v77;
              if (*(&v370 + 1) >= v85)
              {
                v83 = v85;
              }

              v204 = v227 % (v83 * v249) != 0;
              v195 = v83 * v249;
              v81 = (v227 + v83 * v249 - 1) / (v83 * v249);
LABEL_353:
              v87 = v371;
              v88 = BYTE1(v371);
              v89 = BYTE2(v371);
              v90 = BYTE3(v371);
              v91 = [*(v246 + 232) finalOp];
              LODWORD(v95) = (*(*v91 + 16))(v91);
              v92 = v90 << 6;
              v93 = v267 + v252 * (v254 - 1) + (v266 - 1) * v269;
              v94 = v250 + v251 * (v282 - 1) + (v247 - 1) * v268;
              LODWORD(v95) = v95 ^ 1;
              if (*(v264 + 8) == 268435488)
              {
                v95 = v95;
              }

              else
              {
                v95 = 1;
              }

              v265 = v95;
              if (v256)
              {
                v96 = 0;
              }

              else if ((v267 | v250) > -1 && v94 < v247 && v93 < v266)
              {
                v96 = 0;
              }

              else
              {
                v96 = 0x1000000;
              }

              v99 = v239 * v81;
              if (v253)
              {
                v100 = ((v266 * v247) + v249) / v249 * v249;
                v101 = ((v273 == 1) << 31) | ((v253 == 0) << 26) & 0xC5FFFFFF | (4 * (v279 == 1)) | v202 & 0xC5FFFFFF | (v258 | ((v234 & 7) << 12)) & 0xC5FFFFFF | (((v207 & 7) << 9) | ((v233 & 7) << 15) | ((v245 & 3) << 18)) & 0xC5FFFFFF | (((v237 & 3) << 20) | ((v236 & 3) << 22) | (8 * v87) | (16 * v88)) & 0xC5FFFFFF | ((32 * v89) | v92) & 0xC5FFFFFF | ((v280 % v276 == 0) << 7) | (((v271 % v231 == 0) << 8) | v96) & 0xC5FFFFFF | ((v100 < 0xFFFF) << 25);
                if (v250 + v100 / v266 * v268 + 0x8000 >= 0xFFFF || v267 + v266 * v269 + 0x8000 >= 0xFFFF)
                {
                  v103 = 0;
                }

                else
                {
                  v103 = 0x20000000;
                }

                v104 = v101 | v103;
                v105 = v277;
                v106 = v217;
              }

              else
              {
                v107 = ((v273 == 1) << 31) | 0x4000000 | (4 * (v279 == 1)) | v202 & 0xC7FFFFFF | (v258 | ((v234 & 7) << 12)) & 0xC7FFFFFF | (((v207 & 7) << 9) | ((v233 & 7) << 15) | ((v245 & 3) << 18)) & 0xC7FFFFFF | (((v237 & 3) << 20) | ((v236 & 3) << 22) | (8 * v87) | (16 * v88)) & 0xC7FFFFFF | ((32 * v89) | v92) & 0xC7FFFFFF | ((v280 % v276 == 0) << 7) | (((v271 % v231 == 0) << 8) | v96) & 0xC7FFFFFF | ((v222 != 0) << 27) & 0xCFFFFFFF | ((((v227 + v249 - 1) & -v249) < 0x10000) << 29) | ((((v225 + v249 - 1) & -v249) < 0x10000) << 28);
                v105 = v277;
                v106 = v217;
                if (v228)
                {
                  v108 = ((((v225 + v249 - 1) & -v249) < 0x10000) << 25) & 0x1FFFFFFF;
                  if (v222)
                  {
                    v108 = ((((v227 + v249 - 1) & -v249) < 0x10000) << 25) & 0xFFFFFFF;
                  }
                }

                else if (v247 < 0x8000 && v266 < 0x8000 && v94 == v94 && v93 == v93)
                {
                  v108 = 0x2000000;
                }

                else
                {
                  v108 = 0;
                }

                v104 = v107 & 0xFDFFFFFF | v108;
              }

              if (v204)
              {
                v112 = 0x40000000;
              }

              else
              {
                v112 = 0;
              }

              v359 = -1;
              v358 = -1;
              v360 = v104 & 0xBFFFFFFF | v112;
              v361 = v214 | v43 | v212 | v210;
              v362 = 0u;
              v363 = 0u;
              v187 = v106 | 0x10100;
              v364 = v187;
              v365 = 0;
              v113 = 0;
              if (v265 && v99 <= 1)
              {
                v113 = *(v246 + 232);
              }

              v182 = *(v272 + *MEMORY[0x277CD7360]);
              v184 = *(v272 + *MEMORY[0x277CD7368]);
              v180 = v113;
              MPSLibrary::CreateUberShaderKey();
              PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
              [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup];
              if (32 * v242 * v54 > [PipelineStateForMPSKey maxTotalThreadsPerThreadgroup] && MTLReportFailureTypeEnabled())
              {
                MTLReportFailure();
              }

              v188 = v242 * v54;
              v115 = 1 << v236;
              v116 = 1 << v245;
              if (v253)
              {
                v117 = 1 << v245;
              }

              else
              {
                v117 = 1 << v236;
              }

              if (v253)
              {
                v116 = 1 << v237;
              }

              else
              {
                v115 = 1 << v237;
              }

              v201 = v116;
              v203 = v115;
              if (v371 == 1)
              {
                v118 = v280 + 7;
                v119 = v282 * v254;
                v200 = (v276 + ((v280 + 7) & 0xFFFFFFFFFFFFFFF8) * v282 * v254 - 1) / v276;
              }

              else
              {
                v119 = v282 * v254;
                v200 = (v280 + v276 - 1) / v276 * v282 * v254;
                v118 = v280 + 7;
              }

              v120 = v369;
              MEMORY[0x23EE7C450](v357, v241, 0);
              v191 = v117;
              TempBuffer = [v38 buffer];
              v235 = (v280 * v105 * v119 + 3) & 0xFFFFFFFC;
              if (v99 >= 2)
              {
                TempBuffer = MPSAutoCache::GetTempBuffer(v357, 4 * v99 * ((v280 * v105 * v119 + 3) & 0xFFFFFFFFFFFFFFFCLL), 0);
              }

              v121 = v231;
              MPSGetUShortDivisorMagicNumber();
              v232 = v122;
              MPSGetUIntDivisorMagicNumber();
              v229 = v123;
              v189 = (*(&v120 + 1) + (v271 + v121 - 1) / v121 * v279 - 1) / *(&v120 + 1);
              MPSGetUShortDivisorMagicNumber();
              v226 = v124;
              MPSGetUShortDivisorMagicNumber();
              v221 = v125;
              MPSGetUShortDivisorMagicNumber();
              v220 = v126;
              MPSGetUShortDivisorMagicNumber();
              v218 = v127;
              MPSGetUIntDivisorMagicNumber();
              v215 = v128;
              MPSGetUIntDivisorMagicNumber();
              v213 = v129;
              MPSGetUShortDivisorMagicNumber();
              v211 = v130;
              MPSGetUShortDivisorMagicNumber();
              v209 = v131;
              MPSGetUIntDivisorMagicNumber();
              v208 = v132;
              MPSGetUShortDivisorMagicNumber();
              v206 = v133;
              MPSGetUShortDivisorMagicNumber();
              v205 = v134;
              MPSGetUShortDivisorMagicNumber();
              v230 = v135;
              MPSGetUIntDivisorMagicNumber();
              v199 = v136;
              MPSGetUIntDivisorMagicNumber();
              v190 = v137;
              MPSGetUIntDivisorMagicNumber();
              v262 = v138;
              MPSGetUIntDivisorMagicNumber();
              v259 = v139;
              MPSGetUShortDivisorMagicNumber();
              v240 = v140;
              MPSGetUIntDivisorMagicNumber();
              v186 = v141;
              v313 = 0u;
              v311 = 0u;
              v308 = 0u;
              v142 = v223;
              if (v99 >= 2)
              {
                v142 = v277;
              }

              LODWORD(v311) = (v118 >> 3) * v119;
              DWORD1(v313) = v197 * v247 * HIDWORD(v198);
              DWORD2(v313) = v196 * v247 * v198;
              HIDWORD(v313) = v197 * v247;
              v314 = v196 * v247;
              v315 = v197;
              v316 = v196;
              v317 = v222;
              v318 = 0uLL;
              *(&v318 + 4) = __PAIR64__(v225, v195);
              v143 = v199;
              HIDWORD(v143) = 0;
              v144 = v190;
              HIDWORD(v144) = 0;
              v339 = v277 / v279;
              v344 = v279;
              v345 = v274;
              v350 = v268;
              v349 = v269;
              v352 = v251;
              v351 = v252;
              v353 = v227;
              v355 = HIDWORD(v198) * v247;
              v354 = v198;
              *&v308 = __PAIR64__(v142, v235);
              LODWORD(v313) = 0;
              v145 = v232;
              HIWORD(v145) = 0;
              v146 = v229;
              v147 = v230;
              HIDWORD(v146) = 0;
              v148 = v226;
              HIWORD(v148) = 0;
              v150 = v220;
              v149 = v221;
              HIWORD(v149) = 0;
              HIWORD(v150) = 0;
              v151 = v218;
              HIWORD(v151) = 0;
              v153 = v213;
              v152 = v215;
              HIDWORD(v152) = 0;
              HIDWORD(v153) = 0;
              v155 = v209;
              v154 = v211;
              HIWORD(v154) = 0;
              HIWORD(v155) = 0;
              v157 = v206;
              v156 = v208;
              HIDWORD(v156) = 0;
              HIWORD(v157) = 0;
              v158 = v205;
              HIWORD(v158) = 0;
              HIWORD(v147) = 0;
              v159 = v262;
              HIDWORD(v159) = 0;
              v309 = v145;
              v160 = v259;
              HIDWORD(v160) = 0;
              v161 = v240;
              HIWORD(v161) = 0;
              v310 = v146;
              WORD4(v308) = v120;
              WORD5(v308) = WORD4(v120);
              v312 = 0uLL;
              v319 = v148;
              v320 = v149;
              v322 = 0uLL;
              v321 = 0uLL;
              v323 = v161;
              v324 = v150;
              v325 = v151;
              v260 = v160;
              v263 = v159;
              v326 = v160;
              v327 = v159;
              v328 = v152;
              v329 = v153;
              v330 = v154;
              v331 = v155;
              v332 = v156;
              v333 = v157;
              v334 = v158;
              v335 = v147;
              v336 = v143;
              v337 = v144;
              v338 = v280;
              v340 = v277;
              v341 = v254;
              v342 = v224;
              v343 = v282;
              v346 = __PAIR64__(v247, v266);
              v347 = __PAIR64__(v247, v266);
              v348 = __PAIR64__(v250, v267);
              v356 = (v198 * v247);
              if (v253)
              {
                v162 = v216;
                if (BYTE1(v371))
                {
                  v163 = 0;
                  v164 = 0;
                  v165 = 0;
                  v166 = *&v278[*MEMORY[0x277CD73C8]];
LABEL_414:
                  v167 = 0;
                  v168 = (v165 + v276) * (v164 + v249) * (v166 >> 3);
LABEL_427:
                  if (BYTE2(v371) == 1)
                  {
                    v168 += (v249 + v163) * (v167 + v121) * (*&v281[*MEMORY[0x277CD73C8]] >> 3);
                  }

                  if (v245)
                  {
                    v171 = v276 / (8 * v243) * (v121 / (8 * v244));
                    if (0x2000 / (v188 << 8) < v171)
                    {
                      v171 = 0x2000 / (v188 << 8);
                    }

                    v172 = (v244 * (v242 >> 1) * v243 * v171) << 8;
                    if (v168 <= v172)
                    {
                      v168 = v172;
                    }
                  }

                  [v162 setComputePipelineState:PipelineStateForMPSKey];
                  MPSLibrary::ReleaseComputeState();
                  MPSLibrary::ReleaseMPSKey();
                  MPSSetNDArraysOnComputeEncoder(v162, v246, 4, 0, 0);
                  [v162 setBuffer:objc_msgSend(v281 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v281, 0, 4, 0, 0) + v194, 29}];
                  [v162 setBuffer:objc_msgSend(v278 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v278, 0, 4, 0, 0) + v193, 28}];
                  if (v99 > 1)
                  {
                    v175 = 0;
                    v174 = TempBuffer;
                  }

                  else
                  {
                    v173 = MPSGetLinearOffsetBytes(v38, 0, 4, 0, 0);
                    v174 = [v38 buffer];
                    v175 = v173 + v192;
                  }

                  [v162 setBuffer:v174 offset:v175 atIndex:27];
                  objc_msgSend_setBytes_length_atIndex_(v162);
                  [v162 setThreadgroupMemoryLength:v168 atIndex:0];
                  [v162 setBuffer:0 offset:0 atIndex:25];
                  v287 = *(&v120 + 1) * v120;
                  v288 = v189 * ((v120 + v200 - 1) / v120);
                  v289 = v99;
                  v300 = 32 * v201;
                  v301 = v203;
                  v302 = v191;
                  [v162 dispatchThreadgroups:&v287 threadsPerThreadgroup:&v300];
                  if (v99 >= 2)
                  {
                    v176 = 0;
                    v301 = -1;
                    v300 = -1;
                    v302 = -1;
                    v303 = v265 | (2 * (v273 != 0));
                    v304 = 0u;
                    v305 = 0u;
                    v306 = v187;
                    v307 = 0;
                    if (v265)
                    {
                      v176 = *(v246 + 232);
                    }

                    v183 = *(v272 + *MEMORY[0x277CD7360]);
                    v185 = *(v272 + *MEMORY[0x277CD7368]);
                    v181 = v176;
                    MPSLibrary::CreateUberShaderKey();
                    [v162 setComputePipelineState:{MPSLibrary::GetPipelineStateForMPSKey(), v181, v183, v185, 0, 0}];
                    MPSLibrary::ReleaseComputeState();
                    MPSLibrary::ReleaseMPSKey();
                    MPSSetNDArraysOnComputeEncoder(v162, v246, 4, 0, 0);
                    [v162 setBuffer:TempBuffer offset:0 atIndex:28];
                    [v162 setBuffer:objc_msgSend(v38 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v38, 0, 4, 0, 0) + v192, 27}];
                    if (v273)
                    {
                      v177 = v277;
                    }

                    else
                    {
                      v177 = (v277 + 3) >> 2;
                    }

                    MPSGetUIntDivisorMagicNumber();
                    v178 = v186;
                    HIDWORD(v178) = 0;
                    HIDWORD(v179) = 0;
                    LODWORD(v287) = v280 * v177 * v119;
                    HIDWORD(v287) = v177;
                    LODWORD(v288) = v99;
                    HIDWORD(v288) = v277 & 3;
                    v289 = __PAIR64__(v223, v277);
                    v290 = v235;
                    v291 = v280;
                    v292 = v254;
                    v293 = v282;
                    v294 = v224;
                    v295 = v263;
                    v296 = v260;
                    v297 = v178;
                    v299 = 0u;
                    v298 = v179;
                    objc_msgSend_setBytes_length_atIndex_(v162);
                    [v162 setBuffer:0 offset:0 atIndex:25];
                    v285 = (v280 * v177 * v119 + 255) >> 8;
                    v286 = vdupq_n_s64(1uLL);
                    v283 = xmmword_239B0A7B0;
                    v284 = 1;
                    [v162 dispatchThreadgroups:&v285 threadsPerThreadgroup:&v283];
                  }

                  MPSAutoCache::~MPSAutoCache(v357);
                  operator delete(0);
                  operator delete(0);
                  operator delete(0);
                  return 0;
                }
              }

              else
              {
                v162 = v216;
                if (v256)
                {
                  if (BYTE1(v371))
                  {
                    v169 = *MEMORY[0x277CD73C8];
                    v166 = *&v278[v169];
                    v165 = 4u / (v166 >> 3);
                    if (BYTE2(v371))
                    {
                      v164 = 0;
                      v163 = 4u / (*&v281[v169] >> 3);
                    }

                    else
                    {
                      v163 = 0;
                      v164 = 0;
                    }

                    goto LABEL_414;
                  }

                  if (BYTE2(v371))
                  {
                    v163 = 0;
                    v168 = 0;
                    v167 = 4u / (*&v281[*MEMORY[0x277CD73C8]] >> 3);
                    goto LABEL_427;
                  }
                }

                else
                {
                  if (BYTE1(v371))
                  {
                    v170 = *MEMORY[0x277CD73C8];
                    v166 = *&v278[v170];
                    v165 = 4u / (v166 >> 3);
                    if (BYTE2(v371))
                    {
                      v164 = 0;
                      v163 = 4u / (*&v281[v170] >> 3);
                    }

                    else
                    {
                      v163 = 0;
                      v164 = 4u / (v166 >> 3);
                      v165 = 0;
                    }

                    goto LABEL_414;
                  }

                  if (BYTE2(v371))
                  {
                    v167 = 0;
                    v168 = 0;
                    v163 = 4u / (*&v281[*MEMORY[0x277CD73C8]] >> 3);
                    goto LABEL_427;
                  }
                }
              }

              v163 = 0;
              v167 = 0;
              v168 = 0;
              goto LABEL_427;
            }

            v86 = (v225 + v84) / v249;
            if (*(&v370 + 1) >= v86)
            {
              v83 = v86;
            }

            v81 = (v225 + v83 * v249 - 1) / (v83 * v249);
            v195 = v83 * v249;
            v204 = v225 % (v83 * v249) != 0;
            v82 = 1;
          }

          v239 = v82;
          goto LABEL_353;
      }
    }

LABEL_168:
    v45 = 18432;
    goto LABEL_169;
  }

  return MPSNDArrayConvolutionDeviceBehavior::EncodeNDArrayConvolutionGradientWithWeights(a1, a2, a3, a4, a5);
}

void sub_239AD8BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, void *a59, void *a60)
{
  operator delete(__p);
  if (a59)
  {
    operator delete(a59);
    if (!a60)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!a60)
  {
    goto LABEL_3;
  }

  operator delete(a60);
  _Unwind_Resume(a1);
}

void MPSNDArrayConvolutionDeviceBehaviorA14::~MPSNDArrayConvolutionDeviceBehaviorA14(void **this)
{
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayConvolutionDeviceBehaviorA15X::~MPSNDArrayConvolutionDeviceBehaviorA15X(void **this)
{
  *this = &unk_284CAFAF0;
  free(this[19]);
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAFAF0;
  free(this[19]);
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

void MPSNDArrayConvolutionDeviceBehaviorA16::~MPSNDArrayConvolutionDeviceBehaviorA16(void **this)
{
  *this = &unk_284CAFC98;
  free(this[19]);
  *this = &unk_284CAFAF0;
  free(this[19]);
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);
}

{
  *this = &unk_284CAFC98;
  free(this[19]);
  *this = &unk_284CAFAF0;
  free(this[19]);
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);

  JUMPOUT(0x23EE7C8C0);
}

{
  *this = &unk_284CAFC98;
  free(this[19]);
  *this = &unk_284CAFAF0;
  free(this[19]);
  *this = &unk_284CAFD38;
  free(this[19]);
  *this = &unk_284CAF9A0;
  free(this[9]);
}

uint64_t MPSNDArrayConvolutionDeviceBehaviorA14::MPSNDArrayConvolutionDeviceBehaviorA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MPSNDArrayConvolutionDeviceBehaviorPreG13::MPSNDArrayConvolutionDeviceBehaviorPreG13(a1, &sicilyTongaNCHWxHWIOHalf, &sicilyTongaNCHWxHWIOFloat, &sicilyTongaNHWCxHWIOHalf, &sicilyTongaNHWCxHWIOFloat, a4);
  *v8 = &unk_284CAFD38;
  v8[15] = &keys;
  v8[16] = 532;
  v8[17] = a2;
  v8[18] = a3;
  v8[19] = 0;
  v9 = &a14SDirectConvolutionNHWCxHWIOFloat;
  v10 = &a14SDirectConvolutionNHWCxHWIOHalf;
  *(v8 + 40) = 0;
  v11 = *(a4 + 1472);
  v12 = &a14SDirectConvolutionNCHWxHWIOFloat;
  v13 = v11 == 13;
  if (v11 == 13)
  {
    v14 = &a14SDirectConvolutionNCHWxHWIOHalf;
  }

  else
  {
    v14 = &a14DirectConvolutionNCHWxHWIOHalf;
  }

  if (!v13)
  {
    v12 = &a14DirectConvolutionNCHWxHWIOFloat;
    v10 = &a14DirectConvolutionNHWCxHWIOHalf;
  }

  v8[11] = v14;
  v8[12] = v12;
  if (!v13)
  {
    v9 = &a14DirectConvolutionNHWCxHWIOFloat;
  }

  v8[13] = v10;
  v8[14] = v9;
  v8[19] = 0;
  v15 = getenv("MPS_AUTO_TUNING_PARAMETERS");
  if (!v15)
  {
    return a1;
  }

  v16 = v15;
  v17 = *v15;
  if (v17 != 50)
  {
    if (v17 == 49)
    {
      v18 = malloc_type_malloc(0x30uLL, 0x10000400D0814F3uLL);
      *(a1 + 152) = v18;
      *v18 = v16[1] - 48;
      v18[1] = v16[2] - 48;
      v18[2] = v16[3] - 48;
      v18[3] = v16[4] - 48;
      v18[4] = v16[5] - 48;
      v18[5] = v16[6] - 48;
      v18[6] = v16[7] - 48;
      v18[7] = v16[8] - 48;
      v18[8] = v16[10] + 10 * v16[9] - 528;
      v18[9] = v16[12] + 10 * v16[11] - 528;
      *(v18 + 40) = v16[13] != 48;
      *(v18 + 41) = v16[14] != 48;
      *(v18 + 42) = v16[15] != 48;
      *(v18 + 43) = v16[16] != 48;
      *(v18 + 44) = v16[17] != 48;
      *(v18 + 45) = v16[18] != 48;
    }

    return a1;
  }

  *(a1 + 160) = 2;
  v20 = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
  *(a1 + 152) = v20;
  *v20 = v16[1] - 48;
  v20[1] = v16[3] + 10 * v16[2] - 528;
  v20[2] = v16[4] - 48;
  v20[3] = v16[5] - 48;
  v20[4] = v16[6] - 48;
  v20[5] = v16[8] + 10 * v16[7] - 528;
  v20[6] = v16[10] + 10 * v16[9] - 528;
  v20[7] = v16[11] - 48;
  v20[8] = v16[12] - 48;
  v20[9] = v16[13] - 48;
  return a1;
}

void sub_239AD9370(_Unwind_Exception *a1)
{
  *v1 = &unk_284CAF9A0;
  free(*(v1 + 72));
  _Unwind_Resume(a1);
}

uint64_t EncodeScatter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[20];
  v9 = [a1 operation];
  v10 = [a1 batchDimensions];

  return EncodeScatterCommon(a1, a2, a3, a4, v8, v9, v10);
}

uint64_t EncodeScatterGradient(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[20];
  v9 = [a1 operation];
  v10 = [a1 batchDimensions];

  return EncodeScatterCommon(a1, a2, a3, a4, v8, v9, v10);
}

uint64_t EncodeScatterCommon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7);
  v957 = v8;
  v10 = v9;
  v951 = v11;
  v937 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v7;
  v1435[1] = *MEMORY[0x277D85DE8];
  v929 = *(v7 + *MEMORY[0x277CD7350]);
  v20 = *(v7 + 88);
  [*(v13 + 16) count];
  if ([*(v14 + 16) count] != v20 && MTLReportFailureTypeEnabled())
  {
    [*(v14 + 16) count];
    MTLReportFailure();
  }

  MEMORY[0x23EE7C450](v1425, v16, 0);
  v954 = [*(v14 + 232) inputTensorAtIndex:0];
  v960 = [*(v14 + 232) inputTensorAtIndex:1];
  v949 = [*(v14 + 232) inputTensorAtIndex:2];
  v21 = [*(v14 + 232) outputTensorAtIndex:0];
  v1002 = [*(v14 + 16) objectAtIndexedSubscript:0];
  v22 = [*(v14 + 16) objectAtIndexedSubscript:1];
  v23 = [*(v14 + 16) objectAtIndexedSubscript:2];
  v24 = *(v14 + 208);
  v989 = [v24 descriptor];
  v947 = v18;
  v944 = v14;
  v962 = v10;
  v939 = v19;
  v941 = v16;
  v998 = v21;
  if (v951 >= 7)
  {
    v25 = "Default";
  }

  else
  {
    v25 = off_278B0D340[v951];
  }

  v963 = v25;
  v26 = *MEMORY[0x277CD73D0];
  v1006 = *&v1002[v26 + 12];
  __pd = *&v1002[v26 + 8];
  v984 = *&v1002[v26 + 4];
  v979 = *&v1002[v26];
  v942 = v22;
  v974 = *(v22 + v26 + 12);
  v970 = *(v22 + v26 + 8);
  v967 = *(v22 + v26 + 4);
  v965 = *(v22 + v26);
  v943 = v23;
  v934 = *(v23 + v26 + 12);
  v27 = *(v23 + v26 + 4);
  v931 = *(v23 + v26 + 8);
  v28 = *(v23 + v26);
  v945 = v24;
  v29 = &v24[v26];
  v30 = v29[2];
  v31 = v29[3];
  v33 = *v29;
  v32 = v29[1];
  v34 = MEMORY[0x277CD73C8];
  v35 = dataTypeToString(*&v1002[*MEMORY[0x277CD73C8]]);
  v36 = dataTypeToString(*(v22 + *v34));
  v37 = dataTypeToString(*&v943[*v34]);
  v38 = dataTypeToString(*&v945[*v34]);
  MPSKernel_LogInfo(v939, v39, v40, v1006, __pd, v984, v979, v974, v970, v967, v965, v934, v931, v27, v28, v31, v30, v32, v33, v35, v36, v37, v38, v963);
  if (v957)
  {
    v41 = v949;
    v42 = [*(v944 + 232) inputTensorAtIndex:3];
    v989 = [v1002 descriptor];
    v43 = v962;
    v45 = v951 > 1 && v951 != 6;
    v975 = v45;
    v46 = v951 == 2;
  }

  else
  {
    v46 = 0;
    v975 = 1;
    v43 = v962;
    v41 = v949;
    v42 = v998;
  }

  v47 = **(v41 + 16);
  if (*(*(v41 + 16) + 8) == v47)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v48 = *v42;
  v1007 = *v41;
  v49 = *v960;
  v985 = *v47;
  v980 = *v42 - v43;
  if ((*v42 <= v43 || v1007 <= v43 || v49 <= v43) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v50 = *(v960 + 16);
  v52 = *v50;
  v51 = v50[1];
  if (v51 != v52)
  {
    if (((v51 - v52) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v53 = v42[2];
  v55 = *v53;
  v54 = v53[1];
  if (v54 != v55)
  {
    if (((v54 - v55) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v56 = *(v41 + 16);
  v58 = *v56;
  v57 = v56[1];
  v999 = v42;
  v927 = v46;
  if (v57 != v58)
  {
    if (((v57 - v58) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  if (v43)
  {
    v59 = v962 - 1;
    v60 = (8 * v1007 - 8);
    v61 = (8 * v49 - 8);
    v62 = (8 * v48 - 8);
    do
    {
      v65 = *v62--;
      v64 = v65;
      v67 = *v61--;
      v66 = v67;
      v68 = v67 == v64 || v66 == 1;
      if (!v68 || (*v60 != v64 ? (v63 = *v60 == 1) : (v63 = 1), !v63))
      {
        if (MTLReportFailureTypeEnabled())
        {
          v815 = v59;
          MTLReportFailure();
        }
      }

      --v59;
      --v60;
    }

    while (v59 != -1);
  }

  if (v48 != *v954 && MTLReportFailureTypeEnabled())
  {
    v815 = *v954 - v962;
    v818 = v980;
    MTLReportFailure();
  }

  if (v980 < v985 && MTLReportFailureTypeEnabled())
  {
    v815 = v980;
    v818 = v985;
    MTLReportFailure();
  }

  v69 = v1007 + ~v962;
  if (v49 - v962 != v69 + v980 - v985 && MTLReportFailureTypeEnabled())
  {
    v818 = v1007 + ~v962;
    v821 = v980 - v985;
    v815 = v49 - v962;
    MTLReportFailure();
  }

  v70 = v980 - v985;
  if (v980 != v985)
  {
    v84 = 0;
    if (v70 <= 1)
    {
      v85 = 1;
    }

    else
    {
      v85 = v980 - v985;
    }

    do
    {
      ++v84;
    }

    while (v85 != v84);
  }

  if (v69)
  {
    v71 = 0;
    v72 = 8 * v48 - 8 * v985 - 8 * v962;
    do
    {
      v73 = *(v72 + 8 * v71);
      v74 = v71 + 1;
      v75 = *(8 * v71 + 8);
      if (v73 != 1 && v73 != v75 && v75 != 1)
      {
        if (MTLReportFailureTypeEnabled())
        {
          v821 = v71 + 1;
          v824 = *(8 * v71 + 8);
          v815 = v70 + v71;
          v818 = *(v72 + 8 * v71);
          MTLReportFailure();
        }
      }

      ++v71;
    }

    while (v69 != v74);
  }

  v79 = v954[2];
  v81 = *v79;
  v80 = v79[1];
  if (v80 != v81)
  {
    if (((v80 - v81) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v87 = v944;
  if (v48)
  {
      ;
    }

    operator delete(0);
  }

  v82 = *(v999 + 2);
  v932 = (v999 + 1);
  v83 = v945;
  if (v82 == 268435488)
  {
    if (v951 == 6)
    {
LABEL_74:
      v925 = 0;
      if (!v957)
      {
        goto LABEL_84;
      }

      goto LABEL_82;
    }
  }

  else
  {
    if (v951 == 6)
    {
      goto LABEL_74;
    }

    if ((v82 & 0x10000000) != 0)
    {
      v89 = [MEMORY[0x277CD7268] descriptorWithDataType:268435488 shape:{objc_msgSend(v989, "getShape")}];
      v86 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v941 descriptor:v89];
      goto LABEL_81;
    }
  }

  if (([v945 resourceSize] & 3) == 0)
  {
    goto LABEL_74;
  }

  v989[*MEMORY[0x277CD7448]] = 0;
  *&v989[*MEMORY[0x277CD7450]] = 0;
  v86 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v941 descriptor:?];
LABEL_81:
  v83 = v86;
  v925 = v957 ^ 1;
  if (!v957)
  {
    goto LABEL_84;
  }

LABEL_82:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v83 = [MEMORY[0x277CD72B8] temporaryNDArrayWithCommandBuffer:v941 descriptor:v989];
  }

LABEL_84:
  makeStrideBytes();
  if (v1002[*MEMORY[0x277CD73E0]])
  {
    ++*&v1002[*MEMORY[0x277CD7498]];
  }

  v1435[0] = v1002;
  [v937 encodeToMPSCommandEncoder:v947 commandBuffer:v941 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:v1435 kernelDAGObject:{1, v815), 0, v83, 0}];
  v946 = v83;
  if (!v975)
  {
    goto LABEL_304;
  }

  v90 = *(v960 + 8);
  if (v90 > 285212703)
  {
    v91 = MEMORY[0x277CD73C8];
    v92 = v949;
    v93 = v957;
    if (v90 <= 536870915)
    {
      if (v90 > 301989895)
      {
        if (v90 == 301989896)
        {
          v94 = 512;
          v95 = *(v949 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }
        }

        else
        {
          if (v90 != 335544328)
          {
            goto LABEL_168;
          }

          v94 = 544;
          v95 = *(v949 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }
        }
      }

      else if (v90 == 285212704)
      {
        v94 = 416;
        v95 = *(v949 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v90 != 285212736)
        {
          goto LABEL_168;
        }

        v94 = 448;
        v95 = *(v949 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }
    }

    else if (v90 <= 536870927)
    {
      if (v90 == 536870916)
      {
        v94 = 0;
        v95 = *(v949 + 8);
        if (v95 > 285212703)
        {
          goto LABEL_169;
        }

        goto LABEL_147;
      }

      if (v90 != 536870920)
      {
        goto LABEL_168;
      }

      v94 = 32;
      v95 = *(v949 + 8);
      if (v95 <= 285212703)
      {
        goto LABEL_147;
      }
    }

    else
    {
      switch(v90)
      {
        case 536870928:
          v94 = 64;
          v95 = *(v949 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }

          break;
        case 536870944:
          v94 = 96;
          v95 = *(v949 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }

          break;
        case 536870976:
          v94 = 128;
          v95 = *(v949 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }

          break;
        default:
          goto LABEL_168;
      }
    }
  }

  else
  {
    v91 = MEMORY[0x277CD73C8];
    v92 = v949;
    v93 = v957;
    if (v90 <= 31)
    {
      if (v90 > 7)
      {
        if (v90 == 8)
        {
          v94 = 192;
          v95 = *(v949 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }
        }

        else
        {
          if (v90 != 16)
          {
            goto LABEL_168;
          }

          v94 = 224;
          v95 = *(v949 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }
        }
      }

      else if (v90 == -1879048176)
      {
        v94 = 384;
        v95 = *(v949 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v90 != 4)
        {
          goto LABEL_168;
        }

        v94 = 160;
        v95 = *(v949 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }
    }

    else if (v90 <= 268435463)
    {
      if (v90 == 32)
      {
        v94 = 256;
        v95 = *(v949 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v90 != 64)
        {
          goto LABEL_168;
        }

        v94 = 288;
        v95 = *(v949 + 8);
        if (v95 <= 285212703)
        {
          goto LABEL_147;
        }
      }
    }

    else
    {
      switch(v90)
      {
        case 268435464:
          v94 = 480;
          v95 = *(v949 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }

          break;
        case 268435472:
          v94 = 320;
          v95 = *(v949 + 8);
          if (v95 <= 285212703)
          {
            goto LABEL_147;
          }

          break;
        case 268435488:
          v94 = 352;
          v95 = *(v949 + 8);
          if (v95 > 285212703)
          {
            break;
          }

LABEL_147:
          if (v95 <= 31)
          {
            if (v95 > 7)
            {
              if (v95 == 8)
              {
                v96 = 6144;
                goto LABEL_191;
              }

              if (v95 == 16)
              {
                v96 = 7168;
                goto LABEL_191;
              }
            }

            else
            {
              if (v95 == -1879048176)
              {
                v96 = 12288;
                goto LABEL_191;
              }

              if (v95 == 4)
              {
                v96 = 5120;
                goto LABEL_191;
              }
            }
          }

          else if (v95 <= 268435463)
          {
            if (v95 == 32)
            {
              v96 = 0x2000;
              goto LABEL_191;
            }

            if (v95 == 64)
            {
              v96 = 9216;
              goto LABEL_191;
            }
          }

          else
          {
            switch(v95)
            {
              case 268435464:
                v96 = 15360;
                goto LABEL_191;
              case 268435472:
                v96 = 10240;
                goto LABEL_191;
              case 268435488:
                v96 = 11264;
                goto LABEL_191;
            }
          }

          goto LABEL_190;
        default:
LABEL_168:
          v94 = 576;
          v95 = *(v92 + 8);
          if (v95 > 285212703)
          {
            break;
          }

          goto LABEL_147;
      }
    }
  }

LABEL_169:
  if (v95 <= 536870915)
  {
    if (v95 > 301989895)
    {
      if (v95 == 301989896)
      {
        v96 = 0x4000;
        goto LABEL_191;
      }

      if (v95 == 335544328)
      {
        v96 = 17408;
        goto LABEL_191;
      }
    }

    else
    {
      if (v95 == 285212704)
      {
        v96 = 13312;
        goto LABEL_191;
      }

      if (v95 == 285212736)
      {
        v96 = 14336;
        goto LABEL_191;
      }
    }
  }

  else if (v95 <= 536870927)
  {
    if (v95 == 536870916)
    {
      v96 = 0;
      goto LABEL_191;
    }

    if (v95 == 536870920)
    {
      v96 = 1024;
      goto LABEL_191;
    }
  }

  else
  {
    switch(v95)
    {
      case 536870928:
        v96 = 2048;
        goto LABEL_191;
      case 536870944:
        v96 = 3072;
        goto LABEL_191;
      case 536870976:
        v96 = 4096;
        goto LABEL_191;
    }
  }

LABEL_190:
  v96 = 18432;
LABEL_191:
  v97 = (v999 + 1);
  if ((v93 & 1) == 0)
  {
    v97 = (v83 + *v91);
  }

  v98 = *v97;
  if (v98 > 285212703)
  {
    if (v98 <= 536870915)
    {
      if (v98 > 301989895)
      {
        if (v98 == 301989896)
        {
          v99 = 16;
          goto LABEL_237;
        }

        if (v98 == 335544328)
        {
          v99 = 17;
          goto LABEL_237;
        }
      }

      else
      {
        if (v98 == 285212704)
        {
          v99 = 13;
          goto LABEL_237;
        }

        if (v98 == 285212736)
        {
          v99 = 14;
          goto LABEL_237;
        }
      }
    }

    else if (v98 <= 536870927)
    {
      if (v98 == 536870916)
      {
        v99 = 0;
        goto LABEL_237;
      }

      if (v98 == 536870920)
      {
        v99 = 1;
        goto LABEL_237;
      }
    }

    else
    {
      switch(v98)
      {
        case 536870928:
          v99 = 2;
          goto LABEL_237;
        case 536870944:
          v99 = 3;
          goto LABEL_237;
        case 536870976:
          v99 = 4;
          goto LABEL_237;
      }
    }
  }

  else if (v98 <= 31)
  {
    if (v98 > 7)
    {
      if (v98 == 8)
      {
        v99 = 6;
        goto LABEL_237;
      }

      if (v98 == 16)
      {
        v99 = 7;
        goto LABEL_237;
      }
    }

    else
    {
      if (v98 == -1879048176)
      {
        v99 = 12;
        goto LABEL_237;
      }

      if (v98 == 4)
      {
        v99 = 5;
        goto LABEL_237;
      }
    }
  }

  else if (v98 <= 268435463)
  {
    if (v98 == 32)
    {
      v99 = 8;
      goto LABEL_237;
    }

    if (v98 == 64)
    {
      v99 = 9;
      goto LABEL_237;
    }
  }

  else
  {
    switch(v98)
    {
      case 268435464:
        v99 = 15;
        goto LABEL_237;
      case 268435472:
        v99 = 10;
        goto LABEL_237;
      case 268435488:
        v99 = 11;
        goto LABEL_237;
    }
  }

  v99 = 18;
LABEL_237:
  v100 = **(v92 + 16);
  if (*(*(v92 + 16) + 8) == v100)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v101 = *v954;
  v102 = *v92;
  __p = *v960;
  v103 = *v100;
  v104 = *(v960 + 16);
  v106 = *v104;
  v105 = v104[1];
  if (v105 != v106)
  {
    if (((v105 - v106) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v107 = 0;
  v108 = -8 * v102 + 8;
  if (-8 * v102 == -8)
  {
    v109 = 1;
    goto LABEL_249;
  }

  v110 = -8;
  if (-8 * v102 == -16)
  {
    v109 = 1;
    do
    {
LABEL_248:
      v115 = *(v107 - 8);
      v107 -= 8;
      v109 *= v115;
    }

    while (v107 != v108);
    goto LABEL_249;
  }

  v111 = ((-16 - -8 * v102) >> 3) + 1;
  v107 = -8 * (v111 & 0x3FFFFFFFFFFFFFFELL);
  v112 = 1;
  v113 = v111 & 0x3FFFFFFFFFFFFFFELL;
  v114 = 1;
  do
  {
    v112 *= *v110;
    v114 *= *(v110 - 8);
    v110 -= 16;
    v113 -= 2;
  }

  while (v113);
  v109 = v114 * v112;
  if (v111 != (v111 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_248;
  }

LABEL_249:
  if (-8 * v102 == -8)
  {
    v116 = 1;
  }

  else
  {
    if (-8 * v102)
    {
      v118 = ((0x1FFFFFFFFFFFFFFFLL * v102) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v117 = v108 - 8 * (v118 & 0x3FFFFFFFFFFFFFFELL);
      v119 = -8 * v102;
      v120 = 1;
      v121 = v118 & 0x3FFFFFFFFFFFFFFELL;
      v122 = 1;
      do
      {
        v120 *= *v119;
        v122 *= *(v119 - 8);
        v119 -= 16;
        v121 -= 2;
      }

      while (v121);
      v116 = v122 * v120;
      if (v118 == (v118 & 0x3FFFFFFFFFFFFFFELL))
      {
        goto LABEL_257;
      }
    }

    else
    {
      v116 = 1;
      v117 = -8 * v102 + 8;
    }

    do
    {
      v123 = *(v117 - 8);
      v117 -= 8;
      v116 *= v123;
    }

    while (v117);
  }

LABEL_257:
  v124 = 0;
  v1421 = 0u;
  v1422 = 0u;
  v125 = v96 | v94 | v99;
  v1419 = 0u;
  v1420 = 0u;
  v1417 = 0u;
  v1418 = 0u;
  v1415 = 0u;
  v1416 = 0u;
  v1413 = 0u;
  v1414 = 0u;
  v1411 = 0u;
  v1412 = 0u;
  v1409 = 0u;
  v1410 = 0u;
  v126 = *(v929 + 1480);
  v127 = BYTE2(v126);
  v1407 = 0u;
  v1408 = 0u;
  v1406 = 0u;
  v1405 = 0u;
  v1404 = 0u;
  v1403 = 0u;
  v1402 = 0u;
  v1401 = 0u;
  v1400 = 0u;
  v1399 = 0u;
  v1398 = 0u;
  v1397 = 0u;
  v1396 = 0u;
  v1395 = 0u;
  v1394 = 0u;
  v1393 = 0u;
  v1392 = 0u;
  v1391 = 0u;
  v1383 = v101;
  v1384 = v102;
  v1385 = v103;
  v1386 = v962;
  v1387 = __p - v102 + 1;
  v1388 = v102 - v962 - 1;
  v128 = (v109 + BYTE2(v126) - 1) / BYTE2(v126);
  v129 = 1;
  LODWORD(v130) = 1;
  v1389 = v109;
  v1390 = v116;
  v131 = v116 - 1;
  if (v116 != 1 && v128 < v126)
  {
    v132 = 4 * BYTE2(v126);
    for (j = 4; ; v132 = j * BYTE2(v126))
    {
      v128 = (v131 + v132) / v132;
      if (v132 > v116)
      {
        if (j < 2)
        {
          goto LABEL_265;
        }
      }

      else if (j < 2 || v128 * v109 >= v126)
      {
LABEL_265:
        v124 = 16;
        LODWORD(v116) = v132;
        v129 = v109;
        v130 = (v131 + v132) / v132;
        break;
      }

      j >>= 1;
    }
  }

  v921 = v129;
  v1424 = v116;
  v1423 = v130;
  *&v134 = -1;
  *(&v134 + 1) = -1;
  v1382 = v134;
  v1381 = v134;
  v1380 = v134;
  v1377 = v134;
  v1378 = v957 | (2 * v951) | (32 * (__p - v102 + 1)) | v124;
  v1379 = v125;
  *&v1382 = [*(v944 + 16) count] | 0x10000;
  v819 = *(v939 + *MEMORY[0x277CD7360]);
  v822 = *(v939 + *MEMORY[0x277CD7368]);
  v816 = *(v944 + 232);
  MPSLibrary::CreateUberShaderKey();
  PipelineStateForMPSKey = MPSLibrary::GetPipelineStateForMPSKey();
  v136 = MEMORY[0x277CD73D0];
  if (!PipelineStateForMPSKey)
  {
    v145 = -1;
    goto LABEL_621;
  }

  [v947 setComputePipelineState:{PipelineStateForMPSKey, v816, v819, v822, 0, 0}];
  MPSLibrary::ReleaseComputeState();
  MPSLibrary::ReleaseMPSKey();
  MPSSetNDArraysOnComputeEncoder(v947, v944, 4, 0, 0);
  v137 = *(v949 + 16);
  v139 = *v137;
  v138 = v137[1];
  if (v138 != v139)
  {
    if (((v138 - v139) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v968 = xmmword_239B0A0D0;
  v1008 = 0u;
  v964 = 0u;
  v966 = 0u;
  if (v102 - v962 < v102)
  {
    v140 = -v962;
    v141 = v947;
    do
    {
      v143 = (v102 + v140) & 0xF;
      v1374[0] = v968;
      v1374[1] = v1008;
      v1374[2] = v964;
      v1374[3] = v966;
      if (*(v1374 + v143) == 1)
      {
        v144 = *(8 * __p + 8 * v140);
        v1370 = v968;
        v1371 = v1008;
        v1372 = v964;
        v1373 = v966;
        *(&v1370 + v143) = v144;
        v966 = v1373;
        v964 = v1372;
        v1008 = v1371;
        v968 = v1370;
      }

      v142 = __CFADD__(v140++, 1);
    }

    while (!v142);
  }

  else
  {
    v141 = v947;
  }

  makeStrideBytes();
  v146 = *v136;
  v147.i64[0] = 0x100000001;
  v147.i64[1] = 0x100000001;
  v148 = vceqq_s32(*&v942[v146], v147);
  v149.i64[0] = v148.i32[0];
  v149.i64[1] = v148.i32[1];
  v150 = v149;
  v151 = vceqq_s32(*&v942[v146 + 16], v147);
  v149.i64[0] = v151.i32[0];
  v149.i64[1] = v151.i32[1];
  v152 = v149;
  v153 = vceqq_s32(*&v942[v146 + 32], v147);
  v149.i64[0] = v153.i32[0];
  v149.i64[1] = v153.i32[1];
  v154 = v149;
  v155 = vceqq_s32(*&v942[v146 + 48], v147);
  v149.i64[0] = v155.i32[0];
  v149.i64[1] = v155.i32[1];
  v156 = v149;
  v149.i64[0] = v148.i32[2];
  v149.i64[1] = v148.i32[3];
  v157 = v149;
  v149.i64[0] = v151.i32[2];
  v149.i64[1] = v151.i32[3];
  v158 = v149;
  v149.i64[0] = v153.i32[2];
  v149.i64[1] = v153.i32[3];
  v159 = v149;
  v149.i64[0] = v155.i32[2];
  v149.i64[1] = v155.i32[3];
  v160 = vbicq_s8(v1433, v149);
  v161 = vbicq_s8(v1431, v159);
  v162 = vbicq_s8(v1429, v158);
  v163 = vbicq_s8(v1427, v157);
  v164 = vbicq_s8(v1432, v156);
  v165 = vbicq_s8(v1430, v154);
  v166 = vbicq_s8(v1428, v152);
  v167 = vbicq_s8(v1426, v150);
  v168 = MEMORY[0x277CD73D8];
  v169 = *MEMORY[0x277CD73D8];
  v170 = *&v942[v169];
  v171 = *&v942[*MEMORY[0x277CD73C8]];
  v87 = v944;
  if ((v171 & 0xFFF8) != 0)
  {
    v172 = v171 >> 3;
    v1369[0] = v167;
    v1369[1] = v163;
    v1369[2] = v166;
    v1369[3] = v162;
    v1369[4] = v165;
    v1369[5] = v161;
    v1369[6] = v164;
    v1369[7] = v160;
    v173 = *(v1369 + (v170 & 0xF));
    v1368[0] = v167;
    v1368[1] = v163;
    v1368[2] = v166;
    v1368[3] = v162;
    v1368[4] = v165;
    v1368[5] = v161;
    v1368[6] = v164;
    v1368[7] = v160;
    v174 = *(v1368 + (BYTE1(v170) & 0xF));
    v1367[0] = v167;
    v1367[1] = v163;
    v1367[2] = v166;
    v1367[3] = v162;
    v1367[4] = v165;
    v1367[5] = v161;
    v1367[6] = v164;
    v1367[7] = v160;
    v175 = *(v1367 + (BYTE2(v170) & 0xF)) / v172;
    v1366[0] = v167;
    v1366[1] = v163;
    v1366[2] = v166;
    v1366[3] = v162;
    v1366[4] = v165;
    v1366[5] = v161;
    v1366[6] = v164;
    v1366[7] = v160;
    v176 = *(v1366 + (BYTE3(v170) & 0xF));
    v1365[0] = v167;
    v1365[1] = v163;
    v1365[2] = v166;
    v1365[3] = v162;
    v1365[4] = v165;
    v1365[5] = v161;
    v1365[6] = v164;
    v1365[7] = v160;
    v177 = *(v1365 + (BYTE4(v170) & 0xF)) / v172;
    v1364[0] = v167;
    v1364[1] = v163;
    v1364[2] = v166;
    v1364[3] = v162;
    v1364[4] = v165;
    v1364[5] = v161;
    v1364[6] = v164;
    v1364[7] = v160;
    v178 = *(v1364 + (BYTE5(v170) & 0xF));
    v1363[0] = v167;
    v1363[1] = v163;
    v1363[2] = v166;
    v1363[3] = v162;
    v1363[4] = v165;
    v1363[5] = v161;
    v1363[6] = v164;
    v1363[7] = v160;
    v179 = *(v1363 + (BYTE6(v170) & 0xF)) / v172;
    v1362[0] = v167;
    v1362[1] = v163;
    v1362[2] = v166;
    v1362[3] = v162;
    v1362[4] = v165;
    v1362[5] = v161;
    v1362[6] = v164;
    v1362[7] = v160;
    v180 = *(v1362 + (BYTE7(v170) & 0xF));
    v1361[0] = v167;
    v1361[1] = v163;
    v1361[2] = v166;
    v1361[3] = v162;
    v1361[4] = v165;
    v1361[5] = v161;
    v1361[6] = v164;
    v1361[7] = v160;
    v181 = *(v1361 + (BYTE8(v170) & 0xF)) / v172;
    v1360[0] = v167;
    v1360[1] = v163;
    v1360[2] = v166;
    v1360[3] = v162;
    v1360[4] = v165;
    v1360[5] = v161;
    v1360[6] = v164;
    v1360[7] = v160;
    v182 = *(v1360 + (BYTE9(v170) & 0xF));
    v1359[0] = v167;
    v1359[1] = v163;
    v1359[2] = v166;
    v1359[3] = v162;
    v1359[4] = v165;
    v1359[5] = v161;
    v1359[6] = v164;
    v1359[7] = v160;
    v183 = *(v1359 + (BYTE10(v170) & 0xF)) / v172;
    v1358[0] = v167;
    v1358[1] = v163;
    v1358[2] = v166;
    v1358[3] = v162;
    v1358[4] = v165;
    v1358[5] = v161;
    v1358[6] = v164;
    v1358[7] = v160;
    v184 = *(v1358 + (BYTE11(v170) & 0xF));
    v1357[0] = v167;
    v1357[1] = v163;
    v1357[2] = v166;
    v1357[3] = v162;
    v1357[4] = v165;
    v1357[5] = v161;
    v1357[6] = v164;
    v1357[7] = v160;
    v185 = *(v1357 + (BYTE12(v170) & 0xF)) / v172;
    v1356[0] = v167;
    v1356[1] = v163;
    v1356[2] = v166;
    v1356[3] = v162;
    v1356[4] = v165;
    v1356[5] = v161;
    v1356[6] = v164;
    v1356[7] = v160;
    v186 = *(v1356 + (BYTE13(v170) & 0xF));
    v1355[0] = v167;
    v1355[1] = v163;
    v1355[2] = v166;
    v1355[3] = v162;
    v1355[4] = v165;
    v1355[5] = v161;
    v1355[6] = v164;
    v1355[7] = v160;
    v187 = *(v1355 + (BYTE14(v170) & 0xF)) / v172;
    v1354[0] = v167;
    v1354[1] = v163;
    v1354[2] = v166;
    v1354[3] = v162;
    v1354[4] = v165;
    v1354[5] = v161;
    v1354[6] = v164;
    v1354[7] = v160;
    v188.i64[0] = v187;
    v188.i64[1] = *(v1354 + (HIBYTE(v170) & 0xF)) / v172;
    v971 = v188;
    v188.i64[0] = v185;
    v188.i64[1] = v186 / v172;
    v917 = v188;
    v188.i64[0] = v183;
    v188.i64[1] = v184 / v172;
    v909 = v188;
    v188.i64[0] = v181;
    v188.i64[1] = v182 / v172;
    v907 = v188;
    v188.i64[0] = v179;
    v188.i64[1] = v180 / v172;
    v905 = v188;
    v188.i64[0] = v177;
    v188.i64[1] = v178 / v172;
    v901 = v188;
    v188.i64[0] = v175;
    v188.i64[1] = v176 / v172;
    v897 = v188;
    v189.i64[0] = v173 / v172;
    v189.i64[1] = v174 / v172;
  }

  else
  {
    v1353[0] = v167;
    v1353[1] = v163;
    v1353[2] = v166;
    v1353[3] = v162;
    v1353[4] = v165;
    v1353[5] = v161;
    v1353[6] = v164;
    v1353[7] = v160;
    v1352[0] = v167;
    v1352[1] = v163;
    v1352[2] = v166;
    v1352[3] = v162;
    v1352[4] = v165;
    v1352[5] = v161;
    v1352[6] = v164;
    v1352[7] = v160;
    v1351[0] = v167;
    v1351[1] = v163;
    v1351[2] = v166;
    v1351[3] = v162;
    v1351[4] = v165;
    v1351[5] = v161;
    v1351[6] = v164;
    v1351[7] = v160;
    v1350[0] = v167;
    v1350[1] = v163;
    v1350[2] = v166;
    v1350[3] = v162;
    v1350[4] = v165;
    v1350[5] = v161;
    v1350[6] = v164;
    v1350[7] = v160;
    v1349[0] = v167;
    v1349[1] = v163;
    v1349[2] = v166;
    v1349[3] = v162;
    v1349[4] = v165;
    v1349[5] = v161;
    v1349[6] = v164;
    v1349[7] = v160;
    v1348[0] = v167;
    v1348[1] = v163;
    v1348[2] = v166;
    v1348[3] = v162;
    v1348[4] = v165;
    v1348[5] = v161;
    v1348[6] = v164;
    v1348[7] = v160;
    v1347[0] = v167;
    v1347[1] = v163;
    v1347[2] = v166;
    v1347[3] = v162;
    v1347[4] = v165;
    v1347[5] = v161;
    v1347[6] = v164;
    v1347[7] = v160;
    v1346[0] = v167;
    v1346[1] = v163;
    v1346[2] = v166;
    v1346[3] = v162;
    v1346[4] = v165;
    v1346[5] = v161;
    v1346[6] = v164;
    v1346[7] = v160;
    v1345[0] = v167;
    v1345[1] = v163;
    v1345[2] = v166;
    v1345[3] = v162;
    v1345[4] = v165;
    v1345[5] = v161;
    v1345[6] = v164;
    v1345[7] = v160;
    v1344[0] = v167;
    v1344[1] = v163;
    v1344[2] = v166;
    v1344[3] = v162;
    v1344[4] = v165;
    v1344[5] = v161;
    v1344[6] = v164;
    v1344[7] = v160;
    v1343[0] = v167;
    v1343[1] = v163;
    v1343[2] = v166;
    v1343[3] = v162;
    v1343[4] = v165;
    v1343[5] = v161;
    v1343[6] = v164;
    v1343[7] = v160;
    v1342[0] = v167;
    v1342[1] = v163;
    v1342[2] = v166;
    v1342[3] = v162;
    v1342[4] = v165;
    v1342[5] = v161;
    v1342[6] = v164;
    v1342[7] = v160;
    v1341[0] = v167;
    v1341[1] = v163;
    v1341[2] = v166;
    v1341[3] = v162;
    v1341[4] = v165;
    v1341[5] = v161;
    v1341[6] = v164;
    v1341[7] = v160;
    v1340[0] = v167;
    v1340[1] = v163;
    v1340[2] = v166;
    v1340[3] = v162;
    v1340[4] = v165;
    v1340[5] = v161;
    v1340[6] = v164;
    v1340[7] = v160;
    v1339[0] = v167;
    v1339[1] = v163;
    v1339[2] = v166;
    v1339[3] = v162;
    v1339[4] = v165;
    v1339[5] = v161;
    v1339[6] = v164;
    v1339[7] = v160;
    v1338[0] = v167;
    v1338[1] = v163;
    v1338[2] = v166;
    v1338[3] = v162;
    v1338[4] = v165;
    v1338[5] = v161;
    v1338[6] = v164;
    v1338[7] = v160;
    v190.i64[0] = *(v1339 + (BYTE14(v170) & 0xF));
    v191.i64[0] = *(v1341 + (BYTE12(v170) & 0xF));
    v190.i64[1] = *(v1338 + (HIBYTE(v170) & 0xF));
    v971 = v190;
    v191.i64[1] = *(v1340 + (BYTE13(v170) & 0xF));
    v917 = v191;
    v190.i64[0] = *(v1343 + (BYTE10(v170) & 0xF));
    v190.i64[1] = *(v1342 + (BYTE11(v170) & 0xF));
    v909 = v190;
    v190.i64[0] = *(v1345 + (BYTE8(v170) & 0xF));
    v190.i64[1] = *(v1344 + (BYTE9(v170) & 0xF));
    v907 = v190;
    v190.i64[0] = *(v1347 + (BYTE6(v170) & 0xF));
    v190.i64[1] = *(v1346 + (BYTE7(v170) & 0xF));
    v905 = v190;
    v190.i64[0] = *(v1349 + (BYTE4(v170) & 0xF));
    v190.i64[1] = *(v1348 + (BYTE5(v170) & 0xF));
    v901 = v190;
    v190.i64[0] = *(v1351 + (BYTE2(v170) & 0xF));
    v190.i64[1] = *(v1350 + (BYTE3(v170) & 0xF));
    v897 = v190;
    v189.i64[0] = *(v1353 + (v170 & 0xF));
    v189.i64[1] = *(v1352 + (BYTE1(v170) & 0xF));
  }

  v895 = v189;
  v192 = *&v942[v169];
  v193 = &v942[v146];
  v194 = *v193;
  v195 = v193[1];
  v196 = v193[2];
  v1337 = v193[3];
  v1336[2] = v196;
  v1336[1] = v195;
  v1336[0] = v194;
  v165.i32[0] = *(v1336 + (v192 & 0xF));
  v889 = v165;
  v1335[3] = v1337;
  v1335[2] = v196;
  v1335[1] = v195;
  v1335[0] = v194;
  v165.i32[0] = *(v1335 + (BYTE1(v192) & 0xF));
  v915 = v165;
  v1334[3] = v1337;
  v1334[2] = v196;
  v1334[1] = v195;
  v1334[0] = v194;
  v165.i32[0] = *(v1334 + (BYTE2(v192) & 0xF));
  v986 = v165;
  v1333[3] = v1337;
  v1333[2] = v196;
  v1333[1] = v195;
  v1333[0] = v194;
  v165.i32[0] = *(v1333 + (BYTE3(v192) & 0xF));
  *__pa = v165;
  v1332[3] = v1337;
  v1332[2] = v196;
  v1332[1] = v195;
  v1332[0] = v194;
  v165.i32[0] = *(v1332 + (BYTE4(v192) & 0xF));
  v891 = v165;
  v1331[3] = v1337;
  v1331[2] = v196;
  v1331[1] = v195;
  v1331[0] = v194;
  v165.i32[0] = *(v1331 + (BYTE5(v192) & 0xF));
  v913 = v165;
  v1330[3] = v1337;
  v1330[2] = v196;
  v1330[1] = v195;
  v1330[0] = v194;
  v165.i32[0] = *(v1330 + (BYTE6(v192) & 0xF));
  v976 = v165;
  v1329[3] = v1337;
  v1329[2] = v196;
  v1329[1] = v195;
  v1329[0] = v194;
  v165.i32[0] = *(v1329 + (BYTE7(v192) & 0xF));
  v990 = v165;
  v1328[3] = v1337;
  v1328[2] = v196;
  v1328[1] = v195;
  v1328[0] = v194;
  v165.i32[0] = *(v1328 + (BYTE8(v192) & 0xF));
  v887 = v165;
  v1327[3] = v1337;
  v1327[2] = v196;
  v1327[1] = v195;
  v1327[0] = v194;
  v165.i32[0] = *(v1327 + (BYTE9(v192) & 0xF));
  v903 = v165;
  v1326[3] = v1337;
  v1326[2] = v196;
  v1326[1] = v195;
  v1326[0] = v194;
  v165.i32[0] = *(v1326 + (BYTE10(v192) & 0xF));
  v911 = v165;
  v1325[3] = v1337;
  v1325[2] = v196;
  v1325[1] = v195;
  v1325[0] = v194;
  v165.i32[0] = *(v1325 + (BYTE11(v192) & 0xF));
  v981 = v165;
  v1324[3] = v1337;
  v1324[2] = v196;
  v1324[1] = v195;
  v1324[0] = v194;
  v165.i32[0] = *(v1324 + (BYTE12(v192) & 0xF));
  v885 = v165;
  v1323[3] = v1337;
  v1323[2] = v196;
  v1323[1] = v195;
  v1323[0] = v194;
  v165.i32[0] = *(v1323 + (BYTE13(v192) & 0xF));
  v893 = v165;
  v1322[3] = v1337;
  v1322[2] = v196;
  v1322[1] = v195;
  v1322[0] = v194;
  v165.i32[0] = *(v1322 + (BYTE14(v192) & 0xF));
  v899 = v165;
  v1321[3] = v1337;
  v1321[2] = v196;
  v1321[1] = v195;
  v1321[0] = v194;
  v194.i32[0] = *(v1321 + (HIBYTE(v192) & 0xF));
  v919 = v194;
  makeStrideBytes();
  v197 = &v1002[*v136];
  v198.i64[0] = 0x100000001;
  v198.i64[1] = 0x100000001;
  v199 = vceqq_s32(*v197, v198);
  v200.i64[0] = v199.i32[0];
  v200.i64[1] = v199.i32[1];
  v201 = v200;
  v202 = vceqq_s32(v197[1], v198);
  v200.i64[0] = v202.i32[0];
  v200.i64[1] = v202.i32[1];
  v203 = v200;
  v204 = vceqq_s32(v197[2], v198);
  v200.i64[0] = v204.i32[0];
  v200.i64[1] = v204.i32[1];
  v205 = v200;
  v206 = vceqq_s32(v197[3], v198);
  v200.i64[0] = v206.i32[0];
  v200.i64[1] = v206.i32[1];
  v207 = v200;
  v200.i64[0] = v199.i32[2];
  v200.i64[1] = v199.i32[3];
  v208 = v200;
  v200.i64[0] = v202.i32[2];
  v200.i64[1] = v202.i32[3];
  v209 = v200;
  v200.i64[0] = v204.i32[2];
  v200.i64[1] = v204.i32[3];
  v210 = v200;
  v200.i64[0] = v206.i32[2];
  v200.i64[1] = v206.i32[3];
  v211 = vbicq_s8(v1433, v200);
  v212 = vbicq_s8(v1431, v210);
  v213 = vbicq_s8(v1429, v209);
  v214 = vbicq_s8(v1427, v208);
  v215 = vbicq_s8(v1432, v207);
  v216 = vbicq_s8(v1430, v205);
  v217 = vbicq_s8(v1428, v203);
  v218 = *&v1002[*MEMORY[0x277CD73C8]];
  v219 = *&v1002[*v168];
  v220 = BYTE1(*&v1002[*v168]);
  v221 = BYTE2(*&v1002[*v168]);
  v222 = BYTE3(*&v1002[*v168]);
  v223 = BYTE4(*&v1002[*v168]);
  v224 = WORD2(*&v1002[*v168]) >> 8;
  v225 = BYTE6(*&v1002[*v168]);
  v226 = HIBYTE(*&v1002[*v168]);
  v227 = *&v1002[*v168 + 8];
  v228 = BYTE1(*&v1002[*v168 + 8]);
  v229 = BYTE2(*&v1002[*v168 + 8]);
  v230 = BYTE3(*&v1002[*v168 + 8]);
  v231 = BYTE12(*&v1002[*v168]);
  v232 = WORD6(*&v1002[*v168]) >> 8;
  v233 = vbicq_s8(v1426, v201);
  v234 = BYTE14(*&v1002[*v168]);
  v235 = HIBYTE(*&v1002[*v168]);
  if ((v218 & 0xFFF8) != 0)
  {
    v236 = v218 >> 3;
    v1320[0] = v233;
    v1320[1] = v214;
    v1320[2] = v217;
    v1320[3] = v213;
    v1320[4] = v216;
    v1320[5] = v212;
    v1320[6] = v215;
    v1320[7] = v211;
    v237 = *(v1320 + (v219 & 0xF)) / v236;
    v1319[0] = v233;
    v1319[1] = v214;
    v1319[2] = v217;
    v1319[3] = v213;
    v1319[4] = v216;
    v1319[5] = v212;
    v1319[6] = v215;
    v1319[7] = v211;
    v238 = *(v1319 + (v220 & 0xF));
    v1318[0] = v233;
    v1318[1] = v214;
    v1318[2] = v217;
    v1318[3] = v213;
    v1318[4] = v216;
    v1318[5] = v212;
    v1318[6] = v215;
    v1318[7] = v211;
    v239 = *(v1318 + (v221 & 0xF)) / v236;
    v1317[0] = v233;
    v1317[1] = v214;
    v1317[2] = v217;
    v1317[3] = v213;
    v1317[4] = v216;
    v1317[5] = v212;
    v1317[6] = v215;
    v1317[7] = v211;
    v240 = *(v1317 + (v222 & 0xF)) / v236;
    v1316[0] = v233;
    v1316[1] = v214;
    v1316[2] = v217;
    v1316[3] = v213;
    v1316[4] = v216;
    v1316[5] = v212;
    v1316[6] = v215;
    v1316[7] = v211;
    v241 = *(v1316 + (v223 & 0xF)) / v236;
    v1315[0] = v233;
    v1315[1] = v214;
    v1315[2] = v217;
    v1315[3] = v213;
    v1315[4] = v216;
    v1315[5] = v212;
    v1315[6] = v215;
    v1315[7] = v211;
    v242 = *(v1315 + (v224 & 0xF));
    v1314[0] = v233;
    v1314[1] = v214;
    v1314[2] = v217;
    v1314[3] = v213;
    v1314[4] = v216;
    v1314[5] = v212;
    v1314[6] = v215;
    v1314[7] = v211;
    v243 = *(v1314 + (v225 & 0xF));
    v1313[0] = v233;
    v1313[1] = v214;
    v1313[2] = v217;
    v1313[3] = v213;
    v1313[4] = v216;
    v1313[5] = v212;
    v1313[6] = v215;
    v1313[7] = v211;
    v244 = *(v1313 + (v226 & 0xF)) / v236;
    v1312[0] = v233;
    v1312[1] = v214;
    v1312[2] = v217;
    v1312[3] = v213;
    v1312[4] = v216;
    v1312[5] = v212;
    v1312[6] = v215;
    v1312[7] = v211;
    v245 = *(v1312 + (v227 & 0xF)) / v236;
    v1311[0] = v233;
    v1311[1] = v214;
    v1311[2] = v217;
    v1311[3] = v213;
    v1311[4] = v216;
    v1311[5] = v212;
    v1311[6] = v215;
    v1311[7] = v211;
    v246 = *(v1311 + (v228 & 0xF)) / v236;
    v1310[0] = v233;
    v1310[1] = v214;
    v1310[2] = v217;
    v1310[3] = v213;
    v1310[4] = v216;
    v1310[5] = v212;
    v1310[6] = v215;
    v1310[7] = v211;
    v247 = *(v1310 + (v229 & 0xF)) / v236;
    v1309[0] = v233;
    v1309[1] = v214;
    v1309[2] = v217;
    v1309[3] = v213;
    v1309[4] = v216;
    v1309[5] = v212;
    v1309[6] = v215;
    v1309[7] = v211;
    v248 = *(v1309 + (v230 & 0xF));
    v1308[0] = v233;
    v1308[1] = v214;
    v1308[2] = v217;
    v1308[3] = v213;
    v1308[4] = v216;
    v1308[5] = v212;
    v1308[6] = v215;
    v1308[7] = v211;
    v249 = *(v1308 + (v231 & 0xF)) / v236;
    v1307[0] = v233;
    v1307[1] = v214;
    v1307[2] = v217;
    v1307[3] = v213;
    v1307[4] = v216;
    v1307[5] = v212;
    v1307[6] = v215;
    v1307[7] = v211;
    v250 = *(v1307 + (v232 & 0xF)) / v236;
    v1306[0] = v233;
    v1306[1] = v214;
    v1306[2] = v217;
    v1306[3] = v213;
    v1306[4] = v216;
    v1306[5] = v212;
    v1306[6] = v215;
    v1306[7] = v211;
    v251 = *(v1306 + (v234 & 0xF)) / v236;
    v1305[0] = v233;
    v1305[1] = v214;
    v1305[2] = v217;
    v1305[3] = v213;
    v1305[4] = v216;
    v1305[5] = v212;
    v1305[6] = v215;
    v1305[7] = v211;
    *&v252 = v251;
    *(&v252 + 1) = *(v1305 + (v235 & 0xF)) / v236;
    v883 = v252;
    *&v252 = v249;
    *(&v252 + 1) = v250;
    v881 = v252;
    *&v252 = v247;
    *(&v252 + 1) = v248 / v236;
    v879 = v252;
    *&v252 = v245;
    *(&v252 + 1) = v246;
    v877 = v252;
    *&v252 = v243 / v236;
    *(&v252 + 1) = v244;
    v875 = v252;
    *&v252 = v241;
    *(&v252 + 1) = v242 / v236;
    v873 = v252;
    *&v252 = v239;
    *(&v252 + 1) = v240;
    v871 = v252;
    *&v253 = v237;
    *(&v253 + 1) = v238 / v236;
  }

  else
  {
    v1304[0] = v233;
    v1304[1] = v214;
    v1304[2] = v217;
    v1304[3] = v213;
    v1304[4] = v216;
    v1304[5] = v212;
    v1304[6] = v215;
    v1304[7] = v211;
    v1303[0] = v233;
    v1303[1] = v214;
    v1303[2] = v217;
    v1303[3] = v213;
    v1303[4] = v216;
    v1303[5] = v212;
    v1303[6] = v215;
    v1303[7] = v211;
    v1302[0] = v233;
    v1302[1] = v214;
    v1302[2] = v217;
    v1302[3] = v213;
    v1302[4] = v216;
    v1302[5] = v212;
    v1302[6] = v215;
    v1302[7] = v211;
    v1301[0] = v233;
    v1301[1] = v214;
    v1301[2] = v217;
    v1301[3] = v213;
    v1301[4] = v216;
    v1301[5] = v212;
    v1301[6] = v215;
    v1301[7] = v211;
    v1300[0] = v233;
    v1300[1] = v214;
    v1300[2] = v217;
    v1300[3] = v213;
    v1300[4] = v216;
    v1300[5] = v212;
    v1300[6] = v215;
    v1300[7] = v211;
    v1299[0] = v233;
    v1299[1] = v214;
    v1299[2] = v217;
    v1299[3] = v213;
    v1299[4] = v216;
    v1299[5] = v212;
    v1299[6] = v215;
    v1299[7] = v211;
    v1298[0] = v233;
    v1298[1] = v214;
    v1298[2] = v217;
    v1298[3] = v213;
    v1298[4] = v216;
    v1298[5] = v212;
    v1298[6] = v215;
    v1298[7] = v211;
    v1297[0] = v233;
    v1297[1] = v214;
    v1297[2] = v217;
    v1297[3] = v213;
    v1297[4] = v216;
    v1297[5] = v212;
    v1297[6] = v215;
    v1297[7] = v211;
    v1296[0] = v233;
    v1296[1] = v214;
    v1296[2] = v217;
    v1296[3] = v213;
    v1296[4] = v216;
    v1296[5] = v212;
    v1296[6] = v215;
    v1296[7] = v211;
    v1295[0] = v233;
    v1295[1] = v214;
    v1295[2] = v217;
    v1295[3] = v213;
    v1295[4] = v216;
    v1295[5] = v212;
    v1295[6] = v215;
    v1295[7] = v211;
    v1294[0] = v233;
    v1294[1] = v214;
    v1294[2] = v217;
    v1294[3] = v213;
    v1294[4] = v216;
    v1294[5] = v212;
    v1294[6] = v215;
    v1294[7] = v211;
    v1293[0] = v233;
    v1293[1] = v214;
    v1293[2] = v217;
    v1293[3] = v213;
    v1293[4] = v216;
    v1293[5] = v212;
    v1293[6] = v215;
    v1293[7] = v211;
    v1292[0] = v233;
    v1292[1] = v214;
    v1292[2] = v217;
    v1292[3] = v213;
    v1292[4] = v216;
    v1292[5] = v212;
    v1292[6] = v215;
    v1292[7] = v211;
    v1291[0] = v233;
    v1291[1] = v214;
    v1291[2] = v217;
    v1291[3] = v213;
    v1291[4] = v216;
    v1291[5] = v212;
    v1291[6] = v215;
    v1291[7] = v211;
    v1290[0] = v233;
    v1290[1] = v214;
    v1290[2] = v217;
    v1290[3] = v213;
    v1290[4] = v216;
    v1290[5] = v212;
    v1290[6] = v215;
    v1290[7] = v211;
    v1289[0] = v233;
    v1289[1] = v214;
    v1289[2] = v217;
    v1289[3] = v213;
    v1289[4] = v216;
    v1289[5] = v212;
    v1289[6] = v215;
    v1289[7] = v211;
    *&v254 = *(v1290 + (v234 & 0xF));
    *&v255 = *(v1292 + (v231 & 0xF));
    *(&v254 + 1) = *(v1289 + (v235 & 0xF));
    v883 = v254;
    *(&v255 + 1) = *(v1291 + (v232 & 0xF));
    v881 = v255;
    *&v254 = *(v1294 + (v229 & 0xF));
    *(&v254 + 1) = *(v1293 + (v230 & 0xF));
    v879 = v254;
    *&v254 = *(v1296 + (v227 & 0xF));
    *(&v254 + 1) = *(v1295 + (v228 & 0xF));
    v877 = v254;
    *&v254 = *(v1298 + (v225 & 0xF));
    *(&v254 + 1) = *(v1297 + (v226 & 0xF));
    v875 = v254;
    *&v254 = *(v1300 + (v223 & 0xF));
    *(&v254 + 1) = *(v1299 + (v224 & 0xF));
    v873 = v254;
    *&v254 = *(v1302 + (v221 & 0xF));
    *(&v254 + 1) = *(v1301 + (v222 & 0xF));
    v871 = v254;
    *&v253 = *(v1304 + (v219 & 0xF));
    *(&v253 + 1) = *(v1303 + (v220 & 0xF));
  }

  v869 = v253;
  makeStrideBytes();
  v256 = *v136;
  v257.i64[0] = 0x100000001;
  v257.i64[1] = 0x100000001;
  v258 = vceqq_s32(*&v943[v256], v257);
  v259.i64[0] = v258.i32[0];
  v259.i64[1] = v258.i32[1];
  v260 = v259;
  v261 = vceqq_s32(*&v943[v256 + 16], v257);
  v259.i64[0] = v261.i32[0];
  v259.i64[1] = v261.i32[1];
  v262 = v259;
  v263 = vceqq_s32(*&v943[v256 + 32], v257);
  v259.i64[0] = v263.i32[0];
  v259.i64[1] = v263.i32[1];
  v264 = v259;
  v265 = vceqq_s32(*&v943[v256 + 48], v257);
  v259.i64[0] = v265.i32[0];
  v259.i64[1] = v265.i32[1];
  v266 = v259;
  v259.i64[0] = v258.i32[2];
  v259.i64[1] = v258.i32[3];
  v267 = v259;
  v259.i64[0] = v261.i32[2];
  v259.i64[1] = v261.i32[3];
  v268 = v259;
  v259.i64[0] = v263.i32[2];
  v259.i64[1] = v263.i32[3];
  v269 = v259;
  v259.i64[0] = v265.i32[2];
  v259.i64[1] = v265.i32[3];
  v270 = vbicq_s8(v1433, v259);
  v271 = vbicq_s8(v1431, v269);
  v272 = vbicq_s8(v1429, v268);
  v273 = vbicq_s8(v1427, v267);
  v274 = vbicq_s8(v1432, v266);
  v275 = vbicq_s8(v1430, v264);
  v276 = vbicq_s8(v1428, v262);
  v277 = *v168;
  v278 = *&v943[*MEMORY[0x277CD73C8]];
  v279 = *&v943[v277];
  v280 = BYTE1(*&v943[v277]);
  v281 = BYTE2(*&v943[v277]);
  v282 = BYTE3(*&v943[v277]);
  v283 = BYTE4(*&v943[v277]);
  v284 = WORD2(*&v943[v277]) >> 8;
  v285 = BYTE6(*&v943[v277]);
  v286 = HIBYTE(*&v943[v277]);
  v287 = *&v943[v277 + 8];
  v288 = BYTE1(*&v943[v277 + 8]);
  v289 = BYTE2(*&v943[v277 + 8]);
  v290 = BYTE3(*&v943[v277 + 8]);
  v291 = BYTE12(*&v943[v277]);
  v292 = WORD6(*&v943[v277]) >> 8;
  v293 = vbicq_s8(v1426, v260);
  v294 = BYTE14(*&v943[v277]);
  v295 = HIBYTE(*&v943[v277]);
  if ((v278 & 0xFFF8) != 0)
  {
    v296 = v278 >> 3;
    v1288[0] = v293;
    v1288[1] = v273;
    v1288[2] = v276;
    v1288[3] = v272;
    v1288[4] = v275;
    v1288[5] = v271;
    v1288[6] = v274;
    v1288[7] = v270;
    v297 = *(v1288 + (v279 & 0xF)) / v296;
    v1287[0] = v293;
    v1287[1] = v273;
    v1287[2] = v276;
    v1287[3] = v272;
    v1287[4] = v275;
    v1287[5] = v271;
    v1287[6] = v274;
    v1287[7] = v270;
    v298 = *(v1287 + (v280 & 0xF));
    v1286[0] = v293;
    v1286[1] = v273;
    v1286[2] = v276;
    v1286[3] = v272;
    v1286[4] = v275;
    v1286[5] = v271;
    v1286[6] = v274;
    v1286[7] = v270;
    v299 = *(v1286 + (v281 & 0xF)) / v296;
    v1285[0] = v293;
    v1285[1] = v273;
    v1285[2] = v276;
    v1285[3] = v272;
    v1285[4] = v275;
    v1285[5] = v271;
    v1285[6] = v274;
    v1285[7] = v270;
    v300 = *(v1285 + (v282 & 0xF)) / v296;
    v1284[0] = v293;
    v1284[1] = v273;
    v1284[2] = v276;
    v1284[3] = v272;
    v1284[4] = v275;
    v1284[5] = v271;
    v1284[6] = v274;
    v1284[7] = v270;
    v301 = *(v1284 + (v283 & 0xF)) / v296;
    v1283[0] = v293;
    v1283[1] = v273;
    v1283[2] = v276;
    v1283[3] = v272;
    v1283[4] = v275;
    v1283[5] = v271;
    v1283[6] = v274;
    v1283[7] = v270;
    v302 = *(v1283 + (v284 & 0xF));
    v1282[0] = v293;
    v1282[1] = v273;
    v1282[2] = v276;
    v1282[3] = v272;
    v1282[4] = v275;
    v1282[5] = v271;
    v1282[6] = v274;
    v1282[7] = v270;
    v303 = *(v1282 + (v285 & 0xF));
    v1281[0] = v293;
    v1281[1] = v273;
    v1281[2] = v276;
    v1281[3] = v272;
    v1281[4] = v275;
    v1281[5] = v271;
    v1281[6] = v274;
    v1281[7] = v270;
    v304 = *(v1281 + (v286 & 0xF)) / v296;
    v1280[0] = v293;
    v1280[1] = v273;
    v1280[2] = v276;
    v1280[3] = v272;
    v1280[4] = v275;
    v1280[5] = v271;
    v1280[6] = v274;
    v1280[7] = v270;
    v305 = *(v1280 + (v287 & 0xF)) / v296;
    v1279[0] = v293;
    v1279[1] = v273;
    v1279[2] = v276;
    v1279[3] = v272;
    v1279[4] = v275;
    v1279[5] = v271;
    v1279[6] = v274;
    v1279[7] = v270;
    v306 = *(v1279 + (v288 & 0xF)) / v296;
    v1278[0] = v293;
    v1278[1] = v273;
    v1278[2] = v276;
    v1278[3] = v272;
    v1278[4] = v275;
    v1278[5] = v271;
    v1278[6] = v274;
    v1278[7] = v270;
    v307 = *(v1278 + (v289 & 0xF)) / v296;
    v1277[0] = v293;
    v1277[1] = v273;
    v1277[2] = v276;
    v1277[3] = v272;
    v1277[4] = v275;
    v1277[5] = v271;
    v1277[6] = v274;
    v1277[7] = v270;
    v308 = *(v1277 + (v290 & 0xF));
    v1276[0] = v293;
    v1276[1] = v273;
    v1276[2] = v276;
    v1276[3] = v272;
    v1276[4] = v275;
    v1276[5] = v271;
    v1276[6] = v274;
    v1276[7] = v270;
    v309 = *(v1276 + (v291 & 0xF)) / v296;
    v1275[0] = v293;
    v1275[1] = v273;
    v1275[2] = v276;
    v1275[3] = v272;
    v1275[4] = v275;
    v1275[5] = v271;
    v1275[6] = v274;
    v1275[7] = v270;
    v310 = *(v1275 + (v292 & 0xF)) / v296;
    v1274[0] = v293;
    v1274[1] = v273;
    v1274[2] = v276;
    v1274[3] = v272;
    v1274[4] = v275;
    v1274[5] = v271;
    v1274[6] = v274;
    v1274[7] = v270;
    v311 = *(v1274 + (v294 & 0xF)) / v296;
    v1273[0] = v293;
    v1273[1] = v273;
    v1273[2] = v276;
    v1273[3] = v272;
    v1273[4] = v275;
    v1273[5] = v271;
    v1273[6] = v274;
    v1273[7] = v270;
    v312.i64[0] = v311;
    v312.i64[1] = *(v1273 + (v295 & 0xF)) / v296;
    v855 = v312;
    v312.i64[0] = v309;
    v312.i64[1] = v310;
    v849 = v312;
    v312.i64[0] = v307;
    v312.i64[1] = v308 / v296;
    v843 = v312;
    v312.i64[0] = v305;
    v312.i64[1] = v306;
    v841 = v312;
    v312.i64[0] = v303 / v296;
    v312.i64[1] = v304;
    v840 = v312;
    v312.i64[0] = v301;
    v312.i64[1] = v302 / v296;
    v839 = v312;
    v312.i64[0] = v299;
    v312.i64[1] = v300;
    v836 = v312;
    v313.i64[0] = v297;
    v313.i64[1] = v298 / v296;
  }

  else
  {
    v1272[0] = v293;
    v1272[1] = v273;
    v1272[2] = v276;
    v1272[3] = v272;
    v1272[4] = v275;
    v1272[5] = v271;
    v1272[6] = v274;
    v1272[7] = v270;
    v1271[0] = v293;
    v1271[1] = v273;
    v1271[2] = v276;
    v1271[3] = v272;
    v1271[4] = v275;
    v1271[5] = v271;
    v1271[6] = v274;
    v1271[7] = v270;
    v1270[0] = v293;
    v1270[1] = v273;
    v1270[2] = v276;
    v1270[3] = v272;
    v1270[4] = v275;
    v1270[5] = v271;
    v1270[6] = v274;
    v1270[7] = v270;
    v1269[0] = v293;
    v1269[1] = v273;
    v1269[2] = v276;
    v1269[3] = v272;
    v1269[4] = v275;
    v1269[5] = v271;
    v1269[6] = v274;
    v1269[7] = v270;
    v1268[0] = v293;
    v1268[1] = v273;
    v1268[2] = v276;
    v1268[3] = v272;
    v1268[4] = v275;
    v1268[5] = v271;
    v1268[6] = v274;
    v1268[7] = v270;
    v1267[0] = v293;
    v1267[1] = v273;
    v1267[2] = v276;
    v1267[3] = v272;
    v1267[4] = v275;
    v1267[5] = v271;
    v1267[6] = v274;
    v1267[7] = v270;
    v1266[0] = v293;
    v1266[1] = v273;
    v1266[2] = v276;
    v1266[3] = v272;
    v1266[4] = v275;
    v1266[5] = v271;
    v1266[6] = v274;
    v1266[7] = v270;
    v1265[0] = v293;
    v1265[1] = v273;
    v1265[2] = v276;
    v1265[3] = v272;
    v1265[4] = v275;
    v1265[5] = v271;
    v1265[6] = v274;
    v1265[7] = v270;
    v1264[0] = v293;
    v1264[1] = v273;
    v1264[2] = v276;
    v1264[3] = v272;
    v1264[4] = v275;
    v1264[5] = v271;
    v1264[6] = v274;
    v1264[7] = v270;
    v1263[0] = v293;
    v1263[1] = v273;
    v1263[2] = v276;
    v1263[3] = v272;
    v1263[4] = v275;
    v1263[5] = v271;
    v1263[6] = v274;
    v1263[7] = v270;
    v1262[0] = v293;
    v1262[1] = v273;
    v1262[2] = v276;
    v1262[3] = v272;
    v1262[4] = v275;
    v1262[5] = v271;
    v1262[6] = v274;
    v1262[7] = v270;
    v1261[0] = v293;
    v1261[1] = v273;
    v1261[2] = v276;
    v1261[3] = v272;
    v1261[4] = v275;
    v1261[5] = v271;
    v1261[6] = v274;
    v1261[7] = v270;
    v1260[0] = v293;
    v1260[1] = v273;
    v1260[2] = v276;
    v1260[3] = v272;
    v1260[4] = v275;
    v1260[5] = v271;
    v1260[6] = v274;
    v1260[7] = v270;
    v1259[0] = v293;
    v1259[1] = v273;
    v1259[2] = v276;
    v1259[3] = v272;
    v1259[4] = v275;
    v1259[5] = v271;
    v1259[6] = v274;
    v1259[7] = v270;
    v1258[0] = v293;
    v1258[1] = v273;
    v1258[2] = v276;
    v1258[3] = v272;
    v1258[4] = v275;
    v1258[5] = v271;
    v1258[6] = v274;
    v1258[7] = v270;
    v1257[0] = v293;
    v1257[1] = v273;
    v1257[2] = v276;
    v1257[3] = v272;
    v1257[4] = v275;
    v1257[5] = v271;
    v1257[6] = v274;
    v1257[7] = v270;
    v314.i64[0] = *(v1258 + (v294 & 0xF));
    v315.i64[0] = *(v1260 + (v291 & 0xF));
    v314.i64[1] = *(v1257 + (v295 & 0xF));
    v855 = v314;
    v315.i64[1] = *(v1259 + (v292 & 0xF));
    v849 = v315;
    v314.i64[0] = *(v1262 + (v289 & 0xF));
    v314.i64[1] = *(v1261 + (v290 & 0xF));
    v843 = v314;
    v314.i64[0] = *(v1264 + (v287 & 0xF));
    v314.i64[1] = *(v1263 + (v288 & 0xF));
    v841 = v314;
    v314.i64[0] = *(v1266 + (v285 & 0xF));
    v314.i64[1] = *(v1265 + (v286 & 0xF));
    v840 = v314;
    v314.i64[0] = *(v1268 + (v283 & 0xF));
    v314.i64[1] = *(v1267 + (v284 & 0xF));
    v839 = v314;
    v314.i64[0] = *(v1270 + (v281 & 0xF));
    v314.i64[1] = *(v1269 + (v282 & 0xF));
    v836 = v314;
    v313.i64[0] = *(v1272 + (v279 & 0xF));
    v313.i64[1] = *(v1271 + (v280 & 0xF));
  }

  v835 = v313;
  v316 = *&v943[v277];
  v317 = &v943[v256];
  v318 = *v317;
  v319 = v317[1];
  v320 = v317[2];
  v1256 = v317[3];
  v1255[2] = v320;
  v1255[1] = v319;
  v1255[0] = v318;
  v273.i32[0] = *(v1255 + (v316 & 0xF));
  v842 = v273;
  v1254[3] = v1256;
  v1254[2] = v320;
  v1254[1] = v319;
  v1254[0] = v318;
  v273.i32[0] = *(v1254 + (BYTE1(v316) & 0xF));
  v861 = v273;
  v1253[3] = v1256;
  v1253[2] = v320;
  v1253[1] = v319;
  v1253[0] = v318;
  v273.i32[0] = *(v1253 + (BYTE2(v316) & 0xF));
  v863 = v273;
  v1252[3] = v1256;
  v1252[2] = v320;
  v1252[1] = v319;
  v1252[0] = v318;
  v273.i32[0] = *(v1252 + (BYTE3(v316) & 0xF));
  v1003 = v273;
  v1251[3] = v1256;
  v1251[2] = v320;
  v1251[1] = v319;
  v1251[0] = v318;
  v273.i32[0] = *(v1251 + (BYTE4(v316) & 0xF));
  v837 = v273;
  v1250[3] = v1256;
  v1250[2] = v320;
  v1250[1] = v319;
  v1250[0] = v318;
  v273.i32[0] = *(v1250 + (BYTE5(v316) & 0xF));
  v853 = v273;
  v1249[3] = v1256;
  v1249[2] = v320;
  v1249[1] = v319;
  v1249[0] = v318;
  v273.i32[0] = *(v1249 + (BYTE6(v316) & 0xF));
  v859 = v273;
  v1248[3] = v1256;
  v1248[2] = v320;
  v1248[1] = v319;
  v1248[0] = v318;
  v273.i32[0] = *(v1248 + (BYTE7(v316) & 0xF));
  v867 = v273;
  v1247[3] = v1256;
  v1247[2] = v320;
  v1247[1] = v319;
  v1247[0] = v318;
  v273.i32[0] = *(v1247 + (BYTE8(v316) & 0xF));
  v834 = v273;
  v1246[3] = v1256;
  v1246[2] = v320;
  v1246[1] = v319;
  v1246[0] = v318;
  v273.i32[0] = *(v1246 + (BYTE9(v316) & 0xF));
  v847 = v273;
  v1245[3] = v1256;
  v1245[2] = v320;
  v1245[1] = v319;
  v1245[0] = v318;
  v273.i32[0] = *(v1245 + (BYTE10(v316) & 0xF));
  v851 = v273;
  v1244[3] = v1256;
  v1244[2] = v320;
  v1244[1] = v319;
  v1244[0] = v318;
  v273.i32[0] = *(v1244 + (BYTE11(v316) & 0xF));
  v865 = v273;
  v1243[3] = v1256;
  v1243[2] = v320;
  v1243[1] = v319;
  v1243[0] = v318;
  v273.i32[0] = *(v1243 + (BYTE12(v316) & 0xF));
  v833 = v273;
  v1242[3] = v1256;
  v1242[2] = v320;
  v1242[1] = v319;
  v1242[0] = v318;
  v273.i32[0] = *(v1242 + (BYTE13(v316) & 0xF));
  v838 = v273;
  v1241[3] = v1256;
  v1241[2] = v320;
  v1241[1] = v319;
  v1241[0] = v318;
  v273.i32[0] = *(v1241 + (BYTE14(v316) & 0xF));
  v845 = v273;
  v1240[3] = v1256;
  v1240[2] = v320;
  v1240[1] = v319;
  v1240[0] = v318;
  v318.i32[0] = *(v1240 + (HIBYTE(v316) & 0xF));
  v857 = v318;
  makeStrideBytes();
  v321 = &v946[*v136];
  v322.i64[0] = 0x100000001;
  v322.i64[1] = 0x100000001;
  v323 = vceqq_s32(*v321, v322);
  v324.i64[0] = v323.i32[0];
  v324.i64[1] = v323.i32[1];
  v325 = v324;
  v326 = vceqq_s32(v321[1], v322);
  v324.i64[0] = v326.i32[0];
  v324.i64[1] = v326.i32[1];
  v327 = v324;
  v328 = vceqq_s32(v321[2], v322);
  v324.i64[0] = v328.i32[0];
  v324.i64[1] = v328.i32[1];
  v329 = v324;
  v330 = vceqq_s32(v321[3], v322);
  v324.i64[0] = v330.i32[0];
  v324.i64[1] = v330.i32[1];
  v331 = v324;
  v324.i64[0] = v323.i32[2];
  v324.i64[1] = v323.i32[3];
  v332 = v324;
  v324.i64[0] = v326.i32[2];
  v324.i64[1] = v326.i32[3];
  v333 = v324;
  v324.i64[0] = v328.i32[2];
  v324.i64[1] = v328.i32[3];
  v334 = v324;
  v324.i64[0] = v330.i32[2];
  v324.i64[1] = v330.i32[3];
  v335 = vbicq_s8(v1433, v324);
  v336 = vbicq_s8(v1431, v334);
  v337 = vbicq_s8(v1429, v333);
  v338 = vbicq_s8(v1427, v332);
  v339 = vbicq_s8(v1432, v331);
  v340 = vbicq_s8(v1430, v329);
  v341 = vbicq_s8(v1428, v327);
  v342 = vbicq_s8(v1426, v325);
  v343 = *&v946[*v168];
  v344 = *&v946[*MEMORY[0x277CD73C8]];
  if ((v344 & 0xFFF8) != 0)
  {
    v345 = v344 >> 3;
    v1239[0] = v342;
    v1239[1] = v338;
    v1239[2] = v341;
    v1239[3] = v337;
    v1239[4] = v340;
    v1239[5] = v336;
    v1239[6] = v339;
    v1239[7] = v335;
    v346 = *(v1239 + (v343 & 0xF));
    v1238[0] = v342;
    v1238[1] = v338;
    v1238[2] = v341;
    v1238[3] = v337;
    v1238[4] = v340;
    v1238[5] = v336;
    v1238[6] = v339;
    v1238[7] = v335;
    v347 = *(v1238 + (BYTE1(v343) & 0xF));
    v1237[0] = v342;
    v1237[1] = v338;
    v1237[2] = v341;
    v1237[3] = v337;
    v1237[4] = v340;
    v1237[5] = v336;
    v1237[6] = v339;
    v1237[7] = v335;
    v348 = *(v1237 + (BYTE2(v343) & 0xF)) / v345;
    v1236[0] = v342;
    v1236[1] = v338;
    v1236[2] = v341;
    v1236[3] = v337;
    v1236[4] = v340;
    v1236[5] = v336;
    v1236[6] = v339;
    v1236[7] = v335;
    v349 = *(v1236 + (BYTE3(v343) & 0xF));
    v1235[0] = v342;
    v1235[1] = v338;
    v1235[2] = v341;
    v1235[3] = v337;
    v1235[4] = v340;
    v1235[5] = v336;
    v1235[6] = v339;
    v1235[7] = v335;
    v350 = *(v1235 + (BYTE4(v343) & 0xF)) / v345;
    v1234[0] = v342;
    v1234[1] = v338;
    v1234[2] = v341;
    v1234[3] = v337;
    v1234[4] = v340;
    v1234[5] = v336;
    v1234[6] = v339;
    v1234[7] = v335;
    v351 = *(v1234 + (BYTE5(v343) & 0xF));
    v1233[0] = v342;
    v1233[1] = v338;
    v1233[2] = v341;
    v1233[3] = v337;
    v1233[4] = v340;
    v1233[5] = v336;
    v1233[6] = v339;
    v1233[7] = v335;
    v352 = *(v1233 + (BYTE6(v343) & 0xF)) / v345;
    v1232[0] = v342;
    v1232[1] = v338;
    v1232[2] = v341;
    v1232[3] = v337;
    v1232[4] = v340;
    v1232[5] = v336;
    v1232[6] = v339;
    v1232[7] = v335;
    v353 = *(v1232 + (BYTE7(v343) & 0xF));
    v1231[0] = v342;
    v1231[1] = v338;
    v1231[2] = v341;
    v1231[3] = v337;
    v1231[4] = v340;
    v1231[5] = v336;
    v1231[6] = v339;
    v1231[7] = v335;
    v354 = *(v1231 + (BYTE8(v343) & 0xF)) / v345;
    v1230[0] = v342;
    v1230[1] = v338;
    v1230[2] = v341;
    v1230[3] = v337;
    v1230[4] = v340;
    v1230[5] = v336;
    v1230[6] = v339;
    v1230[7] = v335;
    v355 = *(v1230 + (BYTE9(v343) & 0xF));
    v1229[0] = v342;
    v1229[1] = v338;
    v1229[2] = v341;
    v1229[3] = v337;
    v1229[4] = v340;
    v1229[5] = v336;
    v1229[6] = v339;
    v1229[7] = v335;
    v356 = *(v1229 + (BYTE10(v343) & 0xF)) / v345;
    v1228[0] = v342;
    v1228[1] = v338;
    v1228[2] = v341;
    v1228[3] = v337;
    v1228[4] = v340;
    v1228[5] = v336;
    v1228[6] = v339;
    v1228[7] = v335;
    v357 = *(v1228 + (BYTE11(v343) & 0xF));
    v1227[0] = v342;
    v1227[1] = v338;
    v1227[2] = v341;
    v1227[3] = v337;
    v1227[4] = v340;
    v1227[5] = v336;
    v1227[6] = v339;
    v1227[7] = v335;
    v358 = *(v1227 + (BYTE12(v343) & 0xF)) / v345;
    v1226[0] = v342;
    v1226[1] = v338;
    v1226[2] = v341;
    v1226[3] = v337;
    v1226[4] = v340;
    v1226[5] = v336;
    v1226[6] = v339;
    v1226[7] = v335;
    v359 = *(v1226 + (BYTE13(v343) & 0xF));
    v1225[0] = v342;
    v1225[1] = v338;
    v1225[2] = v341;
    v1225[3] = v337;
    v1225[4] = v340;
    v1225[5] = v336;
    v1225[6] = v339;
    v1225[7] = v335;
    v360 = *(v1225 + (BYTE14(v343) & 0xF)) / v345;
    v1224[0] = v342;
    v1224[1] = v338;
    v1224[2] = v341;
    v1224[3] = v337;
    v1224[4] = v340;
    v1224[5] = v336;
    v1224[6] = v339;
    v1224[7] = v335;
    *&v361 = v360;
    *(&v361 + 1) = *(v1224 + (HIBYTE(v343) & 0xF)) / v345;
    v832 = v361;
    *&v361 = v358;
    *(&v361 + 1) = v359 / v345;
    v831 = v361;
    *&v361 = v356;
    *(&v361 + 1) = v357 / v345;
    v830 = v361;
    *&v361 = v354;
    *(&v361 + 1) = v355 / v345;
    v829 = v361;
    *&v361 = v352;
    *(&v361 + 1) = v353 / v345;
    v828 = v361;
    *&v361 = v350;
    *(&v361 + 1) = v351 / v345;
    v827 = v361;
    *&v361 = v348;
    *(&v361 + 1) = v349 / v345;
    v826 = v361;
    *&v362 = v346 / v345;
    *(&v362 + 1) = v347 / v345;
  }

  else
  {
    v1223[0] = v342;
    v1223[1] = v338;
    v1223[2] = v341;
    v1223[3] = v337;
    v1223[4] = v340;
    v1223[5] = v336;
    v1223[6] = v339;
    v1223[7] = v335;
    v1222[0] = v342;
    v1222[1] = v338;
    v1222[2] = v341;
    v1222[3] = v337;
    v1222[4] = v340;
    v1222[5] = v336;
    v1222[6] = v339;
    v1222[7] = v335;
    v1221[0] = v342;
    v1221[1] = v338;
    v1221[2] = v341;
    v1221[3] = v337;
    v1221[4] = v340;
    v1221[5] = v336;
    v1221[6] = v339;
    v1221[7] = v335;
    v1220[0] = v342;
    v1220[1] = v338;
    v1220[2] = v341;
    v1220[3] = v337;
    v1220[4] = v340;
    v1220[5] = v336;
    v1220[6] = v339;
    v1220[7] = v335;
    v1219[0] = v342;
    v1219[1] = v338;
    v1219[2] = v341;
    v1219[3] = v337;
    v1219[4] = v340;
    v1219[5] = v336;
    v1219[6] = v339;
    v1219[7] = v335;
    v1218[0] = v342;
    v1218[1] = v338;
    v1218[2] = v341;
    v1218[3] = v337;
    v1218[4] = v340;
    v1218[5] = v336;
    v1218[6] = v339;
    v1218[7] = v335;
    v1217[0] = v342;
    v1217[1] = v338;
    v1217[2] = v341;
    v1217[3] = v337;
    v1217[4] = v340;
    v1217[5] = v336;
    v1217[6] = v339;
    v1217[7] = v335;
    v1216[0] = v342;
    v1216[1] = v338;
    v1216[2] = v341;
    v1216[3] = v337;
    v1216[4] = v340;
    v1216[5] = v336;
    v1216[6] = v339;
    v1216[7] = v335;
    v1215[0] = v342;
    v1215[1] = v338;
    v1215[2] = v341;
    v1215[3] = v337;
    v1215[4] = v340;
    v1215[5] = v336;
    v1215[6] = v339;
    v1215[7] = v335;
    v1214[0] = v342;
    v1214[1] = v338;
    v1214[2] = v341;
    v1214[3] = v337;
    v1214[4] = v340;
    v1214[5] = v336;
    v1214[6] = v339;
    v1214[7] = v335;
    v1213[0] = v342;
    v1213[1] = v338;
    v1213[2] = v341;
    v1213[3] = v337;
    v1213[4] = v340;
    v1213[5] = v336;
    v1213[6] = v339;
    v1213[7] = v335;
    v1212[0] = v342;
    v1212[1] = v338;
    v1212[2] = v341;
    v1212[3] = v337;
    v1212[4] = v340;
    v1212[5] = v336;
    v1212[6] = v339;
    v1212[7] = v335;
    v1211[0] = v342;
    v1211[1] = v338;
    v1211[2] = v341;
    v1211[3] = v337;
    v1211[4] = v340;
    v1211[5] = v336;
    v1211[6] = v339;
    v1211[7] = v335;
    v1210[0] = v342;
    v1210[1] = v338;
    v1210[2] = v341;
    v1210[3] = v337;
    v1210[4] = v340;
    v1210[5] = v336;
    v1210[6] = v339;
    v1210[7] = v335;
    v1209[0] = v342;
    v1209[1] = v338;
    v1209[2] = v341;
    v1209[3] = v337;
    v1209[4] = v340;
    v1209[5] = v336;
    v1209[6] = v339;
    v1209[7] = v335;
    v1208[0] = v342;
    v1208[1] = v338;
    v1208[2] = v341;
    v1208[3] = v337;
    v1208[4] = v340;
    v1208[5] = v336;
    v1208[6] = v339;
    v1208[7] = v335;
    *&v363 = *(v1209 + (BYTE14(v343) & 0xF));
    *&v364 = *(v1211 + (BYTE12(v343) & 0xF));
    *(&v363 + 1) = *(v1208 + (HIBYTE(v343) & 0xF));
    v832 = v363;
    *(&v364 + 1) = *(v1210 + (BYTE13(v343) & 0xF));
    v831 = v364;
    *&v363 = *(v1213 + (BYTE10(v343) & 0xF));
    *(&v363 + 1) = *(v1212 + (BYTE11(v343) & 0xF));
    v830 = v363;
    *&v363 = *(v1215 + (BYTE8(v343) & 0xF));
    *(&v363 + 1) = *(v1214 + (BYTE9(v343) & 0xF));
    v829 = v363;
    *&v363 = *(v1217 + (BYTE6(v343) & 0xF));
    *(&v363 + 1) = *(v1216 + (BYTE7(v343) & 0xF));
    v828 = v363;
    *&v363 = *(v1219 + (BYTE4(v343) & 0xF));
    *(&v363 + 1) = *(v1218 + (BYTE5(v343) & 0xF));
    v827 = v363;
    *&v363 = *(v1221 + (BYTE2(v343) & 0xF));
    *(&v363 + 1) = *(v1220 + (BYTE3(v343) & 0xF));
    v826 = v363;
    *&v362 = *(v1223 + (v343 & 0xF));
    *(&v362 + 1) = *(v1222 + (BYTE1(v343) & 0xF));
  }

  v825 = v362;
  v365 = v954[2];
  v367 = *v365;
  v366 = v365[1];
  if (v366 != v367)
  {
    if (((v366 - v367) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v368 = *(v960 + 16);
  v370 = *v368;
  v369 = v368[1];
  if (v369 != v370)
  {
    if (((v369 - v370) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v371 = v999[2];
  v373 = *v371;
  v372 = v371[1];
  if (v372 != v373)
  {
    if (((v372 - v373) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v374 = 0;
  v375 = vuzp1q_s32(v917, v971);
  v376 = vuzp1q_s32(v907, v909);
  v377 = vuzp1q_s32(v901, v905);
  v378 = vuzp1q_s32(v895, v897);
  v379 = vuzp1q_s32(v849, v855);
  v380 = vuzp1q_s32(v841, v843);
  v381 = vuzp1q_s32(v839, v840);
  v382 = v836;
  v383 = vuzp1q_s32(v835, v836);
  v382.i32[0] = 1;
  v384 = v378;
  v384.i32[0] = 0;
  v385 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v889, v382), 0), v384, v378);
  v386 = v377;
  v386.i32[0] = 0;
  v387 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v891, v382), 0), v386, v377);
  v388 = v376;
  v388.i32[0] = 0;
  v389 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v887, v382), 0), v388, v376);
  v390 = vceqq_s32(v885, v382);
  v391 = vdupq_lane_s32(*v390.i8, 0);
  v390.i32[0] = 1;
  v392 = v375;
  v392.i32[0] = 0;
  v393 = vbslq_s8(v391, v392, v375);
  v394 = v383;
  v394.i32[0] = 0;
  v395 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v842, v390), 0), v394, v383);
  v396 = v381;
  v396.i32[0] = 0;
  v397 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v837, v390), 0), v396, v381);
  v398 = v380;
  v398.i32[0] = 0;
  v399 = v379;
  v399.i32[0] = 0;
  v400 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v834, v390), 0), v398, v380);
  v401 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v833, v390), 0), v399, v379);
  v402 = v385;
  v402.i32[1] = 0;
  v403 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v915, v382), 0), v402, v385);
  v404 = v387;
  v404.i32[1] = 0;
  v405 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v913, v382), 0), v404, v387);
  v406 = v389;
  v406.i32[1] = 0;
  v407 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v903, v382), 0), v406, v389);
  v408 = v393;
  v408.i32[1] = 0;
  v409 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v893, v382), 0), v408, v393);
  v410 = v395;
  v410.i32[1] = 0;
  v411 = v397;
  v411.i32[1] = 0;
  v412 = v400;
  v412.i32[1] = 0;
  v413 = v401;
  v413.i32[1] = 0;
  v414 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v861, v390), 0), v410, v395);
  v415 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v853, v390), 0), v411, v397);
  v416 = v403;
  v416.i32[2] = 0;
  v417 = v405;
  v417.i32[2] = 0;
  v418 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v847, v390), 0), v412, v400);
  v419 = v407;
  v419.i32[2] = 0;
  v420 = v409;
  v420.i32[2] = 0;
  v421 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v838, v390), 0), v413, v401);
  v422 = v414;
  v422.i32[2] = 0;
  v423 = v415;
  v423.i32[2] = 0;
  v424 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v986, v382), 0), v416, v403);
  v425 = v418;
  v425.i32[2] = 0;
  v426 = v421;
  v426.i32[2] = 0;
  v427 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v976, v382), 0), v417, v405);
  v428 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v911, v382), 0), v419, v407);
  v429 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v899, v382), 0), v420, v409);
  v430 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v863, v390), 0), v422, v414);
  v431 = v424;
  v431.i32[3] = 0;
  v432 = v427;
  v432.i32[3] = 0;
  v433 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v859, v390), 0), v423, v415);
  v434 = v428;
  v434.i32[3] = 0;
  v435 = v429;
  v435.i32[3] = 0;
  v436 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v851, v390), 0), v425, v418);
  v437 = vdupq_lane_s32(*&vceqq_s32(v1003, v390), 0);
  v438 = v430;
  v438.i32[3] = 0;
  v439 = v433;
  v439.i32[3] = 0;
  v440 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v845, v390), 0), v426, v421);
  v441 = v436;
  v441.i32[3] = 0;
  v442 = v440;
  v442.i32[3] = 0;
  v1004 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(*__pa, v382), 0), v431, v424);
  v1000 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v990, v382), 0), v432, v427);
  v443 = &v1407;
  *__pb = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v981, v382), 0), v434, v428);
  v991 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v919, v382), 0), v435, v429);
  v987 = vbslq_s8(v437, v438, v430);
  v982 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v867, v390), 0), v439, v433);
  v977 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v865, v390), 0), v441, v436);
  v972 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v857, v390), 0), v442, v440);
  do
  {
    v1207[0] = v1004;
    v1207[1] = v1000;
    v1207[2] = *__pb;
    v1207[3] = v991;
    *(v443 - 48) = *(v1207 + (v374 & 0xF));
    v1206[0] = v869;
    v1206[1] = v871;
    v1206[2] = v873;
    v1206[3] = v875;
    v1206[4] = v877;
    v1206[5] = v879;
    v1206[6] = v881;
    v1206[7] = v883;
    *(v443 - 64) = *(v1206 + (v374 & 0xF));
    v1205[0] = v987;
    v1205[1] = v982;
    v1205[2] = v977;
    v1205[3] = v972;
    *(v443 - 32) = *(v1205 + (v374 & 0xF));
    v1204[0] = v825;
    v1204[1] = v826;
    v1204[2] = v827;
    v1204[3] = v828;
    v1204[4] = v829;
    v1204[5] = v830;
    v1204[6] = v831;
    v1204[7] = v832;
    *(v443 - 16) = *(v1204 + (v374 & 0xF));
    v1203[0] = xmmword_239B0A0D0;
    memset(&v1203[1], 0, 48);
    *v443 = *(v1203 + (v374 & 0xF));
    v1202[0] = v968;
    v1202[1] = v1008;
    v1202[2] = v964;
    v1202[3] = v966;
    *(v443 + 16) = *(v1202 + (v374 & 0xF));
    v1201[0] = xmmword_239B0A0D0;
    memset(&v1201[1], 0, 48);
    *(v443 + 32) = *(v1201 + (v374 & 0xF));
    v1200[0] = xmmword_239B0A0D0;
    memset(&v1200[1], 0, 48);
    *(v443 + 48) = *(v1200 + (v374++ & 0xF));
    v443 = (v443 + 4);
  }

  while (v374 != 16);
  [v141 setBuffer:objc_msgSend(v942 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v942, 0, 16, 0, 0) + *(*(v944 + 8) + 144), 0}];
  [v141 setBuffer:objc_msgSend(v943 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v943, 0, 16, 0, 0) + *(*(v944 + 8) + 224), 1}];
  [v141 setBuffer:objc_msgSend(v946 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v946, 0, 16, 0, 0) + *&v946[*MEMORY[0x277CD73F8]], 2}];
  if (v927)
  {
    [v141 setBuffer:MPSAutoCache::GetTempBuffer(v1425 offset:4 atIndex:{0), 0, 3}];
  }

  objc_msgSend_setBytes_length_atIndex_(v141);
  v1426.i64[0] = v128;
  v1426.i64[1] = v921;
  v1427.i64[0] = 1;
  v1375 = v127;
  v1376 = vdupq_n_s64(1uLL);
  [v141 dispatchThreadgroups:&v1426 threadsPerThreadgroup:&v1375];
  if (v925)
  {
    v1434 = v946;
    [v937 encodeToMPSCommandEncoder:v141 commandBuffer:v941 sourceArrays:objc_msgSend(MEMORY[0x277CBEA60] resultState:"arrayWithObjects:count:" destinationArray:&v1434 kernelDAGObject:{1), 0, *(v944 + 208), 0}];
  }

LABEL_304:
  if (!v957)
  {
    v145 = 0;
    goto LABEL_621;
  }

  v444 = [*(v87 + 232) inputTensorAtIndex:3];
  v445 = [*(v87 + 232) outputTensorAtIndex:0];
  v446 = *(v960 + 8);
  if (v446 > 285212703)
  {
    v447 = v949;
    if (v446 <= 536870915)
    {
      if (v446 > 301989895)
      {
        if (v446 == 301989896)
        {
          v448 = 512;
          v449 = *(v949 + 8);
          if (v449 <= 285212703)
          {
            goto LABEL_366;
          }
        }

        else
        {
          if (v446 != 335544328)
          {
            goto LABEL_387;
          }

          v448 = 544;
          v449 = *(v949 + 8);
          if (v449 <= 285212703)
          {
            goto LABEL_366;
          }
        }
      }

      else if (v446 == 285212704)
      {
        v448 = 416;
        v449 = *(v949 + 8);
        if (v449 <= 285212703)
        {
          goto LABEL_366;
        }
      }

      else
      {
        if (v446 != 285212736)
        {
          goto LABEL_387;
        }

        v448 = 448;
        v449 = *(v949 + 8);
        if (v449 <= 285212703)
        {
          goto LABEL_366;
        }
      }
    }

    else if (v446 <= 536870927)
    {
      if (v446 == 536870916)
      {
        v448 = 0;
        v449 = *(v949 + 8);
        if (v449 > 285212703)
        {
          goto LABEL_388;
        }

        goto LABEL_366;
      }

      if (v446 != 536870920)
      {
        goto LABEL_387;
      }

      v448 = 32;
      v449 = *(v949 + 8);
      if (v449 <= 285212703)
      {
        goto LABEL_366;
      }
    }

    else
    {
      switch(v446)
      {
        case 536870928:
          v448 = 64;
          v449 = *(v949 + 8);
          if (v449 <= 285212703)
          {
            goto LABEL_366;
          }

          break;
        case 536870944:
          v448 = 96;
          v449 = *(v949 + 8);
          if (v449 <= 285212703)
          {
            goto LABEL_366;
          }

          break;
        case 536870976:
          v448 = 128;
          v449 = *(v949 + 8);
          if (v449 <= 285212703)
          {
            goto LABEL_366;
          }

          break;
        default:
          goto LABEL_387;
      }
    }
  }

  else
  {
    v447 = v949;
    if (v446 <= 31)
    {
      if (v446 > 7)
      {
        if (v446 == 8)
        {
          v448 = 192;
          v449 = *(v949 + 8);
          if (v449 <= 285212703)
          {
            goto LABEL_366;
          }
        }

        else
        {
          if (v446 != 16)
          {
            goto LABEL_387;
          }

          v448 = 224;
          v449 = *(v949 + 8);
          if (v449 <= 285212703)
          {
            goto LABEL_366;
          }
        }
      }

      else if (v446 == -1879048176)
      {
        v448 = 384;
        v449 = *(v949 + 8);
        if (v449 <= 285212703)
        {
          goto LABEL_366;
        }
      }

      else
      {
        if (v446 != 4)
        {
          goto LABEL_387;
        }

        v448 = 160;
        v449 = *(v949 + 8);
        if (v449 <= 285212703)
        {
          goto LABEL_366;
        }
      }
    }

    else if (v446 <= 268435463)
    {
      if (v446 == 32)
      {
        v448 = 256;
        v449 = *(v949 + 8);
        if (v449 <= 285212703)
        {
          goto LABEL_366;
        }
      }

      else
      {
        if (v446 != 64)
        {
          goto LABEL_387;
        }

        v448 = 288;
        v449 = *(v949 + 8);
        if (v449 <= 285212703)
        {
          goto LABEL_366;
        }
      }
    }

    else
    {
      switch(v446)
      {
        case 268435464:
          v448 = 480;
          v449 = *(v949 + 8);
          if (v449 <= 285212703)
          {
            goto LABEL_366;
          }

          break;
        case 268435472:
          v448 = 320;
          v449 = *(v949 + 8);
          if (v449 <= 285212703)
          {
            goto LABEL_366;
          }

          break;
        case 268435488:
          v448 = 352;
          v449 = *(v949 + 8);
          if (v449 > 285212703)
          {
            break;
          }

LABEL_366:
          if (v449 <= 31)
          {
            if (v449 > 7)
            {
              if (v449 == 8)
              {
                v450 = 6144;
                goto LABEL_410;
              }

              if (v449 == 16)
              {
                v450 = 7168;
                goto LABEL_410;
              }
            }

            else
            {
              if (v449 == -1879048176)
              {
                v450 = 12288;
                goto LABEL_410;
              }

              if (v449 == 4)
              {
                v450 = 5120;
                goto LABEL_410;
              }
            }
          }

          else if (v449 <= 268435463)
          {
            if (v449 == 32)
            {
              v450 = 0x2000;
              goto LABEL_410;
            }

            if (v449 == 64)
            {
              v450 = 9216;
              goto LABEL_410;
            }
          }

          else
          {
            switch(v449)
            {
              case 268435464:
                v450 = 15360;
                goto LABEL_410;
              case 268435472:
                v450 = 10240;
                goto LABEL_410;
              case 268435488:
                v450 = 11264;
                goto LABEL_410;
            }
          }

          goto LABEL_409;
        default:
LABEL_387:
          v448 = 576;
          v449 = *(v447 + 8);
          if (v449 > 285212703)
          {
            break;
          }

          goto LABEL_366;
      }
    }
  }

LABEL_388:
  if (v449 <= 536870915)
  {
    if (v449 > 301989895)
    {
      if (v449 == 301989896)
      {
        v450 = 0x4000;
        goto LABEL_410;
      }

      if (v449 == 335544328)
      {
        v450 = 17408;
        goto LABEL_410;
      }
    }

    else
    {
      if (v449 == 285212704)
      {
        v450 = 13312;
        goto LABEL_410;
      }

      if (v449 == 285212736)
      {
        v450 = 14336;
        goto LABEL_410;
      }
    }
  }

  else if (v449 <= 536870927)
  {
    if (v449 == 536870916)
    {
      v450 = 0;
      goto LABEL_410;
    }

    if (v449 == 536870920)
    {
      v450 = 1024;
      goto LABEL_410;
    }
  }

  else
  {
    switch(v449)
    {
      case 536870928:
        v450 = 2048;
        goto LABEL_410;
      case 536870944:
        v450 = 3072;
        goto LABEL_410;
      case 536870976:
        v450 = 4096;
        goto LABEL_410;
    }
  }

LABEL_409:
  v450 = 18432;
LABEL_410:
  v451 = *(v444 + 8);
  if (v451 > 285212703)
  {
    if (v451 <= 536870915)
    {
      if (v451 > 301989895)
      {
        if (v451 == 301989896)
        {
          v452 = 0x80000;
          v453 = *v932;
          if (*v932 <= 285212703)
          {
            goto LABEL_470;
          }
        }

        else
        {
          if (v451 != 335544328)
          {
            goto LABEL_491;
          }

          v452 = 557056;
          v453 = *v932;
          if (*v932 <= 285212703)
          {
            goto LABEL_470;
          }
        }
      }

      else if (v451 == 285212704)
      {
        v452 = 425984;
        v453 = *v932;
        if (*v932 <= 285212703)
        {
          goto LABEL_470;
        }
      }

      else
      {
        if (v451 != 285212736)
        {
          goto LABEL_491;
        }

        v452 = 458752;
        v453 = *v932;
        if (*v932 <= 285212703)
        {
          goto LABEL_470;
        }
      }
    }

    else if (v451 <= 536870927)
    {
      if (v451 == 536870916)
      {
        v452 = 0;
        v453 = *v932;
        if (*v932 > 285212703)
        {
          goto LABEL_492;
        }

        goto LABEL_470;
      }

      if (v451 != 536870920)
      {
        goto LABEL_491;
      }

      v452 = 0x8000;
      v453 = *v932;
      if (*v932 <= 285212703)
      {
        goto LABEL_470;
      }
    }

    else
    {
      switch(v451)
      {
        case 536870928:
          v452 = 0x10000;
          v453 = *v932;
          if (*v932 <= 285212703)
          {
            goto LABEL_470;
          }

          break;
        case 536870944:
          v452 = 98304;
          v453 = *v932;
          if (*v932 <= 285212703)
          {
            goto LABEL_470;
          }

          break;
        case 536870976:
          v452 = 0x20000;
          v453 = *v932;
          if (*v932 <= 285212703)
          {
            goto LABEL_470;
          }

          break;
        default:
          goto LABEL_491;
      }
    }
  }

  else if (v451 <= 31)
  {
    if (v451 > 7)
    {
      if (v451 == 8)
      {
        v452 = 196608;
        v453 = *v932;
        if (*v932 <= 285212703)
        {
          goto LABEL_470;
        }
      }

      else
      {
        if (v451 != 16)
        {
          goto LABEL_491;
        }

        v452 = 229376;
        v453 = *v932;
        if (*v932 <= 285212703)
        {
          goto LABEL_470;
        }
      }
    }

    else if (v451 == -1879048176)
    {
      v452 = 393216;
      v453 = *v932;
      if (*v932 <= 285212703)
      {
        goto LABEL_470;
      }
    }

    else
    {
      if (v451 != 4)
      {
        goto LABEL_491;
      }

      v452 = 163840;
      v453 = *v932;
      if (*v932 <= 285212703)
      {
        goto LABEL_470;
      }
    }
  }

  else if (v451 <= 268435463)
  {
    if (v451 == 32)
    {
      v452 = 0x40000;
      v453 = *v932;
      if (*v932 <= 285212703)
      {
        goto LABEL_470;
      }
    }

    else
    {
      if (v451 != 64)
      {
        goto LABEL_491;
      }

      v452 = 294912;
      v453 = *v932;
      if (*v932 <= 285212703)
      {
        goto LABEL_470;
      }
    }
  }

  else
  {
    switch(v451)
    {
      case 268435464:
        v452 = 491520;
        v453 = *v932;
        if (*v932 <= 285212703)
        {
          goto LABEL_470;
        }

        break;
      case 268435472:
        v452 = 327680;
        v453 = *v932;
        if (*v932 <= 285212703)
        {
          goto LABEL_470;
        }

        break;
      case 268435488:
        v452 = 360448;
        v453 = *v932;
        if (*v932 > 285212703)
        {
          break;
        }

LABEL_470:
        if (v453 <= 31)
        {
          if (v453 > 7)
          {
            if (v453 == 8)
            {
              v454 = 6291456;
              goto LABEL_514;
            }

            if (v453 == 16)
            {
              v454 = 7340032;
              goto LABEL_514;
            }
          }

          else
          {
            if (v453 == -1879048176)
            {
              v454 = 12582912;
              goto LABEL_514;
            }

            if (v453 == 4)
            {
              v454 = 5242880;
              goto LABEL_514;
            }
          }
        }

        else if (v453 <= 268435463)
        {
          if (v453 == 32)
          {
            v454 = 0x800000;
            goto LABEL_514;
          }

          if (v453 == 64)
          {
            v454 = 9437184;
            goto LABEL_514;
          }
        }

        else
        {
          switch(v453)
          {
            case 268435464:
              v454 = 15728640;
              goto LABEL_514;
            case 268435472:
              v454 = 10485760;
              goto LABEL_514;
            case 268435488:
              v454 = 11534336;
              goto LABEL_514;
          }
        }

        goto LABEL_513;
      default:
LABEL_491:
        v452 = 589824;
        v453 = *v932;
        if (*v932 > 285212703)
        {
          break;
        }

        goto LABEL_470;
    }
  }

LABEL_492:
  if (v453 <= 536870915)
  {
    if (v453 > 301989895)
    {
      if (v453 == 301989896)
      {
        v454 = 0x1000000;
        goto LABEL_514;
      }

      if (v453 == 335544328)
      {
        v454 = 17825792;
        goto LABEL_514;
      }
    }

    else
    {
      if (v453 == 285212704)
      {
        v454 = 13631488;
        goto LABEL_514;
      }

      if (v453 == 285212736)
      {
        v454 = 14680064;
        goto LABEL_514;
      }
    }
  }

  else if (v453 <= 536870927)
  {
    if (v453 == 536870916)
    {
      v454 = 0;
      goto LABEL_514;
    }

    if (v453 == 536870920)
    {
      v454 = 0x100000;
      goto LABEL_514;
    }
  }

  else
  {
    switch(v453)
    {
      case 536870928:
        v454 = 0x200000;
        goto LABEL_514;
      case 536870944:
        v454 = 3145728;
        goto LABEL_514;
      case 536870976:
        v454 = 0x400000;
        goto LABEL_514;
    }
  }

LABEL_513:
  v454 = 18874368;
LABEL_514:
  v455 = *(v445 + 8);
  v928 = *(v87 + 208);
  v926 = *(v87 + 112);
  if (v455 > 285212703)
  {
    if (v455 <= 536870915)
    {
      if (v455 > 301989895)
      {
        if (v455 == 301989896)
        {
          v456 = 16;
          goto LABEL_558;
        }

        if (v455 == 335544328)
        {
          v456 = 17;
          goto LABEL_558;
        }
      }

      else
      {
        if (v455 == 285212704)
        {
          v456 = 13;
          goto LABEL_558;
        }

        if (v455 == 285212736)
        {
          v456 = 14;
          goto LABEL_558;
        }
      }
    }

    else if (v455 <= 536870927)
    {
      if (v455 == 536870916)
      {
        v456 = 0;
        goto LABEL_558;
      }

      if (v455 == 536870920)
      {
        v456 = 1;
        goto LABEL_558;
      }
    }

    else
    {
      switch(v455)
      {
        case 536870928:
          v456 = 2;
          goto LABEL_558;
        case 536870944:
          v456 = 3;
          goto LABEL_558;
        case 536870976:
          v456 = 4;
          goto LABEL_558;
      }
    }
  }

  else if (v455 <= 31)
  {
    if (v455 > 7)
    {
      if (v455 == 8)
      {
        v456 = 6;
        goto LABEL_558;
      }

      if (v455 == 16)
      {
        v456 = 7;
        goto LABEL_558;
      }
    }

    else
    {
      if (v455 == -1879048176)
      {
        v456 = 12;
        goto LABEL_558;
      }

      if (v455 == 4)
      {
        v456 = 5;
        goto LABEL_558;
      }
    }
  }

  else if (v455 <= 268435463)
  {
    if (v455 == 32)
    {
      v456 = 8;
      goto LABEL_558;
    }

    if (v455 == 64)
    {
      v456 = 9;
      goto LABEL_558;
    }
  }

  else
  {
    switch(v455)
    {
      case 268435464:
        v456 = 15;
        goto LABEL_558;
      case 268435472:
        v456 = 10;
        goto LABEL_558;
      case 268435488:
        v456 = 11;
        goto LABEL_558;
    }
  }

  v456 = 18;
LABEL_558:
  v457 = **(v447 + 16);
  if (*(*(v447 + 16) + 8) == v457)
  {
    std::vector<MPSDAGKernelOp *>::__throw_out_of_range[abi:ne200100]();
  }

  v458 = *v954;
  v459 = *v447;
  v1001 = *v960;
  v460 = *v457;
  v461 = *(v960 + 16);
  v463 = *v461;
  v462 = v461[1];
  v958 = v444;
  if (v462 != v463)
  {
    if (((v462 - v463) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long>::__throw_length_error[abi:ne200100]();
  }

  v464 = 0;
  v465 = v450 | v448 | v452;
  v466 = v459 - v962;
  v467 = -8 * v459 + 8;
  if (-8 * v459 == -8)
  {
    v468 = 1;
    goto LABEL_570;
  }

  v469 = -8;
  if (-8 * v459 == -16)
  {
    v468 = 1;
    do
    {
LABEL_569:
      v474 = *(v464 - 8);
      v464 -= 8;
      v468 *= v474;
    }

    while (v464 != v467);
    goto LABEL_570;
  }

  v470 = ((-16 - -8 * v459) >> 3) + 1;
  v464 = -8 * (v470 & 0x3FFFFFFFFFFFFFFELL);
  v471 = 1;
  v472 = v470 & 0x3FFFFFFFFFFFFFFELL;
  v473 = 1;
  do
  {
    v471 *= *v469;
    v473 *= *(v469 - 8);
    v469 -= 16;
    v472 -= 2;
  }

  while (v472);
  v468 = v473 * v471;
  if (v470 != (v470 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_569;
  }

LABEL_570:
  v475 = v465 | v454;
  if (-8 * v459 == -8)
  {
    v476 = 1;
    v477 = v947;
  }

  else
  {
    v477 = v947;
    if (-8 * v459)
    {
      v479 = ((0x1FFFFFFFFFFFFFFFLL * v459) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v478 = v467 - 8 * (v479 & 0x3FFFFFFFFFFFFFFELL);
      v480 = -8 * v459;
      v481 = 1;
      v482 = v479 & 0x3FFFFFFFFFFFFFFELL;
      v483 = 1;
      do
      {
        v481 *= *v480;
        v483 *= *(v480 - 8);
        v480 -= 16;
        v482 -= 2;
      }

      while (v482);
      v476 = v483 * v481;
      if (v479 == (v479 & 0x3FFFFFFFFFFFFFFELL))
      {
        goto LABEL_578;
      }
    }

    else
    {
      v476 = 1;
      v478 = -8 * v459 + 8;
    }

    do
    {
      v484 = *(v478 - 8);
      v478 -= 8;
      v476 *= v484;
    }

    while (v478);
  }

LABEL_578:
  v485 = 0;
  v1421 = 0u;
  v1422 = 0u;
  v486 = v475 | v456;
  v1419 = 0u;
  v1420 = 0u;
  v1417 = 0u;
  v1418 = 0u;
  v1415 = 0u;
  v1416 = 0u;
  v1413 = 0u;
  v1414 = 0u;
  v1411 = 0u;
  v1412 = 0u;
  v1409 = 0u;
  v1410 = 0u;
  v487 = *(v929 + 1480);
  v488 = BYTE2(v487);
  v1407 = 0u;
  v1408 = 0u;
  v1406 = 0u;
  v1405 = 0u;
  v1404 = 0u;
  v1403 = 0u;
  v1402 = 0u;
  v1401 = 0u;
  v1400 = 0u;
  v1399 = 0u;
  v1398 = 0u;
  v1397 = 0u;
  v1396 = 0u;
  v1395 = 0u;
  v1394 = 0u;
  v1393 = 0u;
  v1392 = 0u;
  v1391 = 0u;
  v1383 = v458;
  v1384 = v459;
  v1385 = v460;
  v1386 = v962;
  v1387 = v1001 - v459 + 1;
  v1388 = v466 - 1;
  v489 = (v468 + BYTE2(v487) - 1) / BYTE2(v487);
  v938 = 1;
  LODWORD(v475) = 1;
  v1389 = v468;
  v1390 = v476;
  v935 = v489;
  if (v476 == 1 || v489 >= v487)
  {
    goto LABEL_587;
  }

  v491 = 4 * BYTE2(v487);
  for (k = 4; ; v491 = k * BYTE2(v487))
  {
    v490 = v476 - 1;
    v475 = (v476 - 1 + v491) / v491;
    if (v491 <= v476)
    {
      break;
    }

    if (k < 2)
    {
      goto LABEL_586;
    }

LABEL_582:
    k >>= 1;
  }

  if (k >= 2 && v475 * v468 < v487)
  {
    goto LABEL_582;
  }

LABEL_586:
  v485 = 16;
  LODWORD(v476) = v491;
  v938 = v468;
  v935 = (v490 + v491) / v491;
LABEL_587:
  v1424 = v476;
  v1423 = v475;
  *&v493 = -1;
  *(&v493 + 1) = -1;
  v1382 = v493;
  v1381 = v493;
  v1380 = v493;
  v1377 = v493;
  v1378 = (2 * v951) | (32 * (v1001 - v459 + 1)) | v485 | 1;
  v1379 = v486;
  *&v1382 = [*(v944 + 16) count] | 0x10100;
  v820 = *(v939 + *MEMORY[0x277CD7360]);
  v823 = *(v939 + *MEMORY[0x277CD7368]);
  v817 = *(v944 + 232);
  MPSLibrary::CreateUberShaderKey();
  v494 = MPSLibrary::GetPipelineStateForMPSKey();
  if (v494)
  {
    [v477 setComputePipelineState:{v494, v817, v820, v823, 0, 0}];
    MPSLibrary::ReleaseComputeState();
    MPSLibrary::ReleaseMPSKey();
    MPSSetNDArraysOnComputeEncoder(v477, v944, 4, 0, 0);
    v495 = *(v949 + 16);
    v497 = *v495;
    v496 = v495[1];
    if (v496 != v497)
    {
      if (((v496 - v497) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v1005 = xmmword_239B0A0D0;
    v1009 = 0u;
    v948 = 0u;
    v950 = 0u;
    v498 = MEMORY[0x277CD73D0];
    if (v466 < v459)
    {
      v499 = -v962;
      do
      {
        v500 = (v459 + v499) & 0xF;
        v1199[0] = v1005;
        v1199[1] = v1009;
        v1199[2] = v948;
        v1199[3] = v950;
        if (*(v1199 + v500) == 1)
        {
          v501 = *(8 * v1001 + 8 * v499);
          v1195 = v1005;
          v1196 = v1009;
          v1197 = v948;
          v1198 = v950;
          *(&v1195 + v500) = v501;
          v950 = v1198;
          v948 = v1197;
          v1009 = v1196;
          v1005 = v1195;
        }

        v142 = __CFADD__(v499++, 1);
      }

      while (!v142);
    }

    makeStrideBytes();
    v502 = &v942[*v498];
    v503.i64[0] = 0x100000001;
    v503.i64[1] = 0x100000001;
    v504 = vceqq_s32(*v502, v503);
    v505.i64[0] = v504.i32[0];
    v505.i64[1] = v504.i32[1];
    v506 = v505;
    v507 = vceqq_s32(v502[1], v503);
    v505.i64[0] = v507.i32[0];
    v505.i64[1] = v507.i32[1];
    v508 = v505;
    v509 = vceqq_s32(v502[2], v503);
    v505.i64[0] = v509.i32[0];
    v505.i64[1] = v509.i32[1];
    v510 = v505;
    v511 = vceqq_s32(v502[3], v503);
    v505.i64[0] = v511.i32[0];
    v505.i64[1] = v511.i32[1];
    v512 = v505;
    v505.i64[0] = v504.i32[2];
    v505.i64[1] = v504.i32[3];
    v513 = v505;
    v505.i64[0] = v507.i32[2];
    v505.i64[1] = v507.i32[3];
    v514 = v505;
    v505.i64[0] = v509.i32[2];
    v505.i64[1] = v509.i32[3];
    v515 = v505;
    v505.i64[0] = v511.i32[2];
    v505.i64[1] = v511.i32[3];
    v516 = vbicq_s8(v1433, v505);
    v517 = vbicq_s8(v1431, v515);
    v518 = vbicq_s8(v1429, v514);
    v519 = vbicq_s8(v1427, v513);
    v520 = vbicq_s8(v1432, v512);
    v521 = vbicq_s8(v1430, v510);
    v522 = vbicq_s8(v1428, v508);
    v523 = MEMORY[0x277CD73D8];
    v524 = *&v942[*MEMORY[0x277CD73C8]];
    v525 = *&v942[*MEMORY[0x277CD73D8]];
    v526 = BYTE1(*&v942[*MEMORY[0x277CD73D8]]);
    v527 = BYTE2(*&v942[*MEMORY[0x277CD73D8]]);
    v528 = BYTE3(*&v942[*MEMORY[0x277CD73D8]]);
    v529 = BYTE4(*&v942[*MEMORY[0x277CD73D8]]);
    v530 = WORD2(*&v942[*MEMORY[0x277CD73D8]]) >> 8;
    v531 = BYTE6(*&v942[*MEMORY[0x277CD73D8]]);
    v532 = HIBYTE(*&v942[*MEMORY[0x277CD73D8]]);
    v533 = *&v942[*MEMORY[0x277CD73D8] + 8];
    v534 = BYTE1(*&v942[*MEMORY[0x277CD73D8] + 8]);
    v535 = BYTE2(*&v942[*MEMORY[0x277CD73D8] + 8]);
    v536 = BYTE3(*&v942[*MEMORY[0x277CD73D8] + 8]);
    v537 = BYTE12(*&v942[*MEMORY[0x277CD73D8]]);
    v538 = WORD6(*&v942[*MEMORY[0x277CD73D8]]) >> 8;
    v539 = vbicq_s8(v1426, v506);
    v540 = BYTE14(*&v942[*MEMORY[0x277CD73D8]]);
    v541 = HIBYTE(*&v942[*MEMORY[0x277CD73D8]]);
    if ((v524 & 0xFFF8) != 0)
    {
      v542 = v524 >> 3;
      v1194[0] = v539;
      v1194[1] = v519;
      v1194[2] = v522;
      v1194[3] = v518;
      v1194[4] = v521;
      v1194[5] = v517;
      v1194[6] = v520;
      v1194[7] = v516;
      v543 = *(v1194 + (v525 & 0xF)) / v542;
      v1193[0] = v539;
      v1193[1] = v519;
      v1193[2] = v522;
      v1193[3] = v518;
      v1193[4] = v521;
      v1193[5] = v517;
      v1193[6] = v520;
      v1193[7] = v516;
      v544 = *(v1193 + (v526 & 0xF));
      v1192[0] = v539;
      v1192[1] = v519;
      v1192[2] = v522;
      v1192[3] = v518;
      v1192[4] = v521;
      v1192[5] = v517;
      v1192[6] = v520;
      v1192[7] = v516;
      v545 = *(v1192 + (v527 & 0xF)) / v542;
      v1191[0] = v539;
      v1191[1] = v519;
      v1191[2] = v522;
      v1191[3] = v518;
      v1191[4] = v521;
      v1191[5] = v517;
      v1191[6] = v520;
      v1191[7] = v516;
      v546 = *(v1191 + (v528 & 0xF)) / v542;
      v1190[0] = v539;
      v1190[1] = v519;
      v1190[2] = v522;
      v1190[3] = v518;
      v1190[4] = v521;
      v1190[5] = v517;
      v1190[6] = v520;
      v1190[7] = v516;
      v547 = *(v1190 + (v529 & 0xF)) / v542;
      v1189[0] = v539;
      v1189[1] = v519;
      v1189[2] = v522;
      v1189[3] = v518;
      v1189[4] = v521;
      v1189[5] = v517;
      v1189[6] = v520;
      v1189[7] = v516;
      v548 = *(v1189 + (v530 & 0xF));
      v1188[0] = v539;
      v1188[1] = v519;
      v1188[2] = v522;
      v1188[3] = v518;
      v1188[4] = v521;
      v1188[5] = v517;
      v1188[6] = v520;
      v1188[7] = v516;
      v549 = *(v1188 + (v531 & 0xF));
      v1187[0] = v539;
      v1187[1] = v519;
      v1187[2] = v522;
      v1187[3] = v518;
      v1187[4] = v521;
      v1187[5] = v517;
      v1187[6] = v520;
      v1187[7] = v516;
      v550 = *(v1187 + (v532 & 0xF)) / v542;
      v1186[0] = v539;
      v1186[1] = v519;
      v1186[2] = v522;
      v1186[3] = v518;
      v1186[4] = v521;
      v1186[5] = v517;
      v1186[6] = v520;
      v1186[7] = v516;
      v551 = *(v1186 + (v533 & 0xF)) / v542;
      v1185[0] = v539;
      v1185[1] = v519;
      v1185[2] = v522;
      v1185[3] = v518;
      v1185[4] = v521;
      v1185[5] = v517;
      v1185[6] = v520;
      v1185[7] = v516;
      v552 = *(v1185 + (v534 & 0xF)) / v542;
      v1184[0] = v539;
      v1184[1] = v519;
      v1184[2] = v522;
      v1184[3] = v518;
      v1184[4] = v521;
      v1184[5] = v517;
      v1184[6] = v520;
      v1184[7] = v516;
      v553 = *(v1184 + (v535 & 0xF)) / v542;
      v1183[0] = v539;
      v1183[1] = v519;
      v1183[2] = v522;
      v1183[3] = v518;
      v1183[4] = v521;
      v1183[5] = v517;
      v1183[6] = v520;
      v1183[7] = v516;
      v554 = *(v1183 + (v536 & 0xF));
      v1182[0] = v539;
      v1182[1] = v519;
      v1182[2] = v522;
      v1182[3] = v518;
      v1182[4] = v521;
      v1182[5] = v517;
      v1182[6] = v520;
      v1182[7] = v516;
      v555 = *(v1182 + (v537 & 0xF)) / v542;
      v1181[0] = v539;
      v1181[1] = v519;
      v1181[2] = v522;
      v1181[3] = v518;
      v1181[4] = v521;
      v1181[5] = v517;
      v1181[6] = v520;
      v1181[7] = v516;
      v556 = *(v1181 + (v538 & 0xF)) / v542;
      v1180[0] = v539;
      v1180[1] = v519;
      v1180[2] = v522;
      v1180[3] = v518;
      v1180[4] = v521;
      v1180[5] = v517;
      v1180[6] = v520;
      v1180[7] = v516;
      v557 = *(v1180 + (v540 & 0xF)) / v542;
      v1179[0] = v539;
      v1179[1] = v519;
      v1179[2] = v522;
      v1179[3] = v518;
      v1179[4] = v521;
      v1179[5] = v517;
      v1179[6] = v520;
      v1179[7] = v516;
      *&v558 = v557;
      *(&v558 + 1) = *(v1179 + (v541 & 0xF)) / v542;
      *__pc = v558;
      *&v558 = v555;
      *(&v558 + 1) = v556;
      *v940 = v558;
      *&v558 = v553;
      *(&v558 + 1) = v554 / v542;
      v992 = v558;
      *&v558 = v551;
      *(&v558 + 1) = v552;
      v936 = v558;
      *&v558 = v549 / v542;
      *(&v558 + 1) = v550;
      v988 = v558;
      *&v558 = v547;
      *(&v558 + 1) = v548 / v542;
      v933 = v558;
      *&v558 = v545;
      *(&v558 + 1) = v546;
      v930 = v558;
      *&v559 = v543;
      *(&v559 + 1) = v544 / v542;
    }

    else
    {
      v1178[0] = v539;
      v1178[1] = v519;
      v1178[2] = v522;
      v1178[3] = v518;
      v1178[4] = v521;
      v1178[5] = v517;
      v1178[6] = v520;
      v1178[7] = v516;
      v1177[0] = v539;
      v1177[1] = v519;
      v1177[2] = v522;
      v1177[3] = v518;
      v1177[4] = v521;
      v1177[5] = v517;
      v1177[6] = v520;
      v1177[7] = v516;
      v1176[0] = v539;
      v1176[1] = v519;
      v1176[2] = v522;
      v1176[3] = v518;
      v1176[4] = v521;
      v1176[5] = v517;
      v1176[6] = v520;
      v1176[7] = v516;
      v1175[0] = v539;
      v1175[1] = v519;
      v1175[2] = v522;
      v1175[3] = v518;
      v1175[4] = v521;
      v1175[5] = v517;
      v1175[6] = v520;
      v1175[7] = v516;
      v1174[0] = v539;
      v1174[1] = v519;
      v1174[2] = v522;
      v1174[3] = v518;
      v1174[4] = v521;
      v1174[5] = v517;
      v1174[6] = v520;
      v1174[7] = v516;
      v1173[0] = v539;
      v1173[1] = v519;
      v1173[2] = v522;
      v1173[3] = v518;
      v1173[4] = v521;
      v1173[5] = v517;
      v1173[6] = v520;
      v1173[7] = v516;
      v1172[0] = v539;
      v1172[1] = v519;
      v1172[2] = v522;
      v1172[3] = v518;
      v1172[4] = v521;
      v1172[5] = v517;
      v1172[6] = v520;
      v1172[7] = v516;
      v1171[0] = v539;
      v1171[1] = v519;
      v1171[2] = v522;
      v1171[3] = v518;
      v1171[4] = v521;
      v1171[5] = v517;
      v1171[6] = v520;
      v1171[7] = v516;
      v1170[0] = v539;
      v1170[1] = v519;
      v1170[2] = v522;
      v1170[3] = v518;
      v1170[4] = v521;
      v1170[5] = v517;
      v1170[6] = v520;
      v1170[7] = v516;
      v1169[0] = v539;
      v1169[1] = v519;
      v1169[2] = v522;
      v1169[3] = v518;
      v1169[4] = v521;
      v1169[5] = v517;
      v1169[6] = v520;
      v1169[7] = v516;
      v1168[0] = v539;
      v1168[1] = v519;
      v1168[2] = v522;
      v1168[3] = v518;
      v1168[4] = v521;
      v1168[5] = v517;
      v1168[6] = v520;
      v1168[7] = v516;
      v1167[0] = v539;
      v1167[1] = v519;
      v1167[2] = v522;
      v1167[3] = v518;
      v1167[4] = v521;
      v1167[5] = v517;
      v1167[6] = v520;
      v1167[7] = v516;
      v1166[0] = v539;
      v1166[1] = v519;
      v1166[2] = v522;
      v1166[3] = v518;
      v1166[4] = v521;
      v1166[5] = v517;
      v1166[6] = v520;
      v1166[7] = v516;
      v1165[0] = v539;
      v1165[1] = v519;
      v1165[2] = v522;
      v1165[3] = v518;
      v1165[4] = v521;
      v1165[5] = v517;
      v1165[6] = v520;
      v1165[7] = v516;
      v1164[0] = v539;
      v1164[1] = v519;
      v1164[2] = v522;
      v1164[3] = v518;
      v1164[4] = v521;
      v1164[5] = v517;
      v1164[6] = v520;
      v1164[7] = v516;
      v1163[0] = v539;
      v1163[1] = v519;
      v1163[2] = v522;
      v1163[3] = v518;
      v1163[4] = v521;
      v1163[5] = v517;
      v1163[6] = v520;
      v1163[7] = v516;
      *&v560 = *(v1164 + (v540 & 0xF));
      *&v561 = *(v1166 + (v537 & 0xF));
      *(&v560 + 1) = *(v1163 + (v541 & 0xF));
      *__pc = v560;
      *(&v561 + 1) = *(v1165 + (v538 & 0xF));
      *v940 = v561;
      *&v560 = *(v1168 + (v535 & 0xF));
      *(&v560 + 1) = *(v1167 + (v536 & 0xF));
      v992 = v560;
      *&v560 = *(v1170 + (v533 & 0xF));
      *(&v560 + 1) = *(v1169 + (v534 & 0xF));
      v936 = v560;
      *&v560 = *(v1172 + (v531 & 0xF));
      *(&v560 + 1) = *(v1171 + (v532 & 0xF));
      v988 = v560;
      *&v560 = *(v1174 + (v529 & 0xF));
      *(&v560 + 1) = *(v1173 + (v530 & 0xF));
      v933 = v560;
      *&v560 = *(v1176 + (v527 & 0xF));
      *(&v560 + 1) = *(v1175 + (v528 & 0xF));
      v930 = v560;
      *&v559 = *(v1178 + (v525 & 0xF));
      *(&v559 + 1) = *(v1177 + (v526 & 0xF));
    }

    v924 = v559;
    makeStrideBytes();
    v562 = *v498;
    v563.i64[0] = 0x100000001;
    v563.i64[1] = 0x100000001;
    v564 = vceqq_s32(*&v943[v562], v563);
    v565.i64[0] = v564.i32[0];
    v565.i64[1] = v564.i32[1];
    v566 = v565;
    v567 = vceqq_s32(*&v943[v562 + 16], v563);
    v565.i64[0] = v567.i32[0];
    v565.i64[1] = v567.i32[1];
    v568 = v565;
    v569 = vceqq_s32(*&v943[v562 + 32], v563);
    v565.i64[0] = v569.i32[0];
    v565.i64[1] = v569.i32[1];
    v570 = v565;
    v571 = vceqq_s32(*&v943[v562 + 48], v563);
    v565.i64[0] = v571.i32[0];
    v565.i64[1] = v571.i32[1];
    v572 = v565;
    v565.i64[0] = v564.i32[2];
    v565.i64[1] = v564.i32[3];
    v573 = v565;
    v565.i64[0] = v567.i32[2];
    v565.i64[1] = v567.i32[3];
    v574 = v565;
    v565.i64[0] = v569.i32[2];
    v565.i64[1] = v569.i32[3];
    v575 = v565;
    v565.i64[0] = v571.i32[2];
    v565.i64[1] = v571.i32[3];
    v576 = vbicq_s8(v1433, v565);
    v577 = vbicq_s8(v1431, v575);
    v578 = vbicq_s8(v1429, v574);
    v579 = vbicq_s8(v1427, v573);
    v580 = vbicq_s8(v1432, v572);
    v581 = vbicq_s8(v1430, v570);
    v582 = vbicq_s8(v1428, v568);
    v583 = *v523;
    v584 = *&v943[*MEMORY[0x277CD73C8]];
    v585 = *&v943[v583];
    v586 = BYTE1(*&v943[v583]);
    v587 = BYTE2(*&v943[v583]);
    v588 = BYTE3(*&v943[v583]);
    v589 = BYTE4(*&v943[v583]);
    v590 = WORD2(*&v943[v583]) >> 8;
    v591 = BYTE6(*&v943[v583]);
    v592 = HIBYTE(*&v943[v583]);
    v593 = *&v943[v583 + 8];
    v594 = BYTE1(*&v943[v583 + 8]);
    v595 = BYTE2(*&v943[v583 + 8]);
    v596 = BYTE3(*&v943[v583 + 8]);
    v597 = BYTE12(*&v943[v583]);
    v598 = WORD6(*&v943[v583]) >> 8;
    v599 = vbicq_s8(v1426, v566);
    v600 = BYTE14(*&v943[v583]);
    v601 = HIBYTE(*&v943[v583]);
    if ((v584 & 0xFFF8) != 0)
    {
      v602 = v584 >> 3;
      v1162[0] = v599;
      v1162[1] = v579;
      v1162[2] = v582;
      v1162[3] = v578;
      v1162[4] = v581;
      v1162[5] = v577;
      v1162[6] = v580;
      v1162[7] = v576;
      v603 = *(v1162 + (v585 & 0xF)) / v602;
      v1161[0] = v599;
      v1161[1] = v579;
      v1161[2] = v582;
      v1161[3] = v578;
      v1161[4] = v581;
      v1161[5] = v577;
      v1161[6] = v580;
      v1161[7] = v576;
      v604 = *(v1161 + (v586 & 0xF));
      v1160[0] = v599;
      v1160[1] = v579;
      v1160[2] = v582;
      v1160[3] = v578;
      v1160[4] = v581;
      v1160[5] = v577;
      v1160[6] = v580;
      v1160[7] = v576;
      v605 = *(v1160 + (v587 & 0xF)) / v602;
      v1159[0] = v599;
      v1159[1] = v579;
      v1159[2] = v582;
      v1159[3] = v578;
      v1159[4] = v581;
      v1159[5] = v577;
      v1159[6] = v580;
      v1159[7] = v576;
      v606 = *(v1159 + (v588 & 0xF)) / v602;
      v1158[0] = v599;
      v1158[1] = v579;
      v1158[2] = v582;
      v1158[3] = v578;
      v1158[4] = v581;
      v1158[5] = v577;
      v1158[6] = v580;
      v1158[7] = v576;
      v607 = *(v1158 + (v589 & 0xF)) / v602;
      v1157[0] = v599;
      v1157[1] = v579;
      v1157[2] = v582;
      v1157[3] = v578;
      v1157[4] = v581;
      v1157[5] = v577;
      v1157[6] = v580;
      v1157[7] = v576;
      v608 = *(v1157 + (v590 & 0xF));
      v1156[0] = v599;
      v1156[1] = v579;
      v1156[2] = v582;
      v1156[3] = v578;
      v1156[4] = v581;
      v1156[5] = v577;
      v1156[6] = v580;
      v1156[7] = v576;
      v609 = *(v1156 + (v591 & 0xF));
      v1155[0] = v599;
      v1155[1] = v579;
      v1155[2] = v582;
      v1155[3] = v578;
      v1155[4] = v581;
      v1155[5] = v577;
      v1155[6] = v580;
      v1155[7] = v576;
      v610 = *(v1155 + (v592 & 0xF)) / v602;
      v1154[0] = v599;
      v1154[1] = v579;
      v1154[2] = v582;
      v1154[3] = v578;
      v1154[4] = v581;
      v1154[5] = v577;
      v1154[6] = v580;
      v1154[7] = v576;
      v611 = *(v1154 + (v593 & 0xF)) / v602;
      v1153[0] = v599;
      v1153[1] = v579;
      v1153[2] = v582;
      v1153[3] = v578;
      v1153[4] = v581;
      v1153[5] = v577;
      v1153[6] = v580;
      v1153[7] = v576;
      v612 = *(v1153 + (v594 & 0xF)) / v602;
      v1152[0] = v599;
      v1152[1] = v579;
      v1152[2] = v582;
      v1152[3] = v578;
      v1152[4] = v581;
      v1152[5] = v577;
      v1152[6] = v580;
      v1152[7] = v576;
      v613 = *(v1152 + (v595 & 0xF)) / v602;
      v1151[0] = v599;
      v1151[1] = v579;
      v1151[2] = v582;
      v1151[3] = v578;
      v1151[4] = v581;
      v1151[5] = v577;
      v1151[6] = v580;
      v1151[7] = v576;
      v614 = *(v1151 + (v596 & 0xF));
      v1150[0] = v599;
      v1150[1] = v579;
      v1150[2] = v582;
      v1150[3] = v578;
      v1150[4] = v581;
      v1150[5] = v577;
      v1150[6] = v580;
      v1150[7] = v576;
      v615 = *(v1150 + (v597 & 0xF)) / v602;
      v1149[0] = v599;
      v1149[1] = v579;
      v1149[2] = v582;
      v1149[3] = v578;
      v1149[4] = v581;
      v1149[5] = v577;
      v1149[6] = v580;
      v1149[7] = v576;
      v616 = *(v1149 + (v598 & 0xF)) / v602;
      v1148[0] = v599;
      v1148[1] = v579;
      v1148[2] = v582;
      v1148[3] = v578;
      v1148[4] = v581;
      v1148[5] = v577;
      v1148[6] = v580;
      v1148[7] = v576;
      v617 = *(v1148 + (v600 & 0xF)) / v602;
      v1147[0] = v599;
      v1147[1] = v579;
      v1147[2] = v582;
      v1147[3] = v578;
      v1147[4] = v581;
      v1147[5] = v577;
      v1147[6] = v580;
      v1147[7] = v576;
      v618.i64[0] = v617;
      v618.i64[1] = *(v1147 + (v601 & 0xF)) / v602;
      v955 = v618;
      v618.i64[0] = v615;
      v618.i64[1] = v616;
      v952 = v618;
      v618.i64[0] = v613;
      v618.i64[1] = v614 / v602;
      v923 = v618;
      v618.i64[0] = v611;
      v618.i64[1] = v612;
      v922 = v618;
      v618.i64[0] = v609 / v602;
      v618.i64[1] = v610;
      v920 = v618;
      v618.i64[0] = v607;
      v618.i64[1] = v608 / v602;
      v918 = v618;
      v618.i64[0] = v605;
      v618.i64[1] = v606;
      v916 = v618;
      v619.i64[0] = v603;
      v619.i64[1] = v604 / v602;
    }

    else
    {
      v1146[0] = v599;
      v1146[1] = v579;
      v1146[2] = v582;
      v1146[3] = v578;
      v1146[4] = v581;
      v1146[5] = v577;
      v1146[6] = v580;
      v1146[7] = v576;
      v1145[0] = v599;
      v1145[1] = v579;
      v1145[2] = v582;
      v1145[3] = v578;
      v1145[4] = v581;
      v1145[5] = v577;
      v1145[6] = v580;
      v1145[7] = v576;
      v1144[0] = v599;
      v1144[1] = v579;
      v1144[2] = v582;
      v1144[3] = v578;
      v1144[4] = v581;
      v1144[5] = v577;
      v1144[6] = v580;
      v1144[7] = v576;
      v1143[0] = v599;
      v1143[1] = v579;
      v1143[2] = v582;
      v1143[3] = v578;
      v1143[4] = v581;
      v1143[5] = v577;
      v1143[6] = v580;
      v1143[7] = v576;
      v1142[0] = v599;
      v1142[1] = v579;
      v1142[2] = v582;
      v1142[3] = v578;
      v1142[4] = v581;
      v1142[5] = v577;
      v1142[6] = v580;
      v1142[7] = v576;
      v1141[0] = v599;
      v1141[1] = v579;
      v1141[2] = v582;
      v1141[3] = v578;
      v1141[4] = v581;
      v1141[5] = v577;
      v1141[6] = v580;
      v1141[7] = v576;
      v1140[0] = v599;
      v1140[1] = v579;
      v1140[2] = v582;
      v1140[3] = v578;
      v1140[4] = v581;
      v1140[5] = v577;
      v1140[6] = v580;
      v1140[7] = v576;
      v1139[0] = v599;
      v1139[1] = v579;
      v1139[2] = v582;
      v1139[3] = v578;
      v1139[4] = v581;
      v1139[5] = v577;
      v1139[6] = v580;
      v1139[7] = v576;
      v1138[0] = v599;
      v1138[1] = v579;
      v1138[2] = v582;
      v1138[3] = v578;
      v1138[4] = v581;
      v1138[5] = v577;
      v1138[6] = v580;
      v1138[7] = v576;
      v1137[0] = v599;
      v1137[1] = v579;
      v1137[2] = v582;
      v1137[3] = v578;
      v1137[4] = v581;
      v1137[5] = v577;
      v1137[6] = v580;
      v1137[7] = v576;
      v1136[0] = v599;
      v1136[1] = v579;
      v1136[2] = v582;
      v1136[3] = v578;
      v1136[4] = v581;
      v1136[5] = v577;
      v1136[6] = v580;
      v1136[7] = v576;
      v1135[0] = v599;
      v1135[1] = v579;
      v1135[2] = v582;
      v1135[3] = v578;
      v1135[4] = v581;
      v1135[5] = v577;
      v1135[6] = v580;
      v1135[7] = v576;
      v1134[0] = v599;
      v1134[1] = v579;
      v1134[2] = v582;
      v1134[3] = v578;
      v1134[4] = v581;
      v1134[5] = v577;
      v1134[6] = v580;
      v1134[7] = v576;
      v1133[0] = v599;
      v1133[1] = v579;
      v1133[2] = v582;
      v1133[3] = v578;
      v1133[4] = v581;
      v1133[5] = v577;
      v1133[6] = v580;
      v1133[7] = v576;
      v1132[0] = v599;
      v1132[1] = v579;
      v1132[2] = v582;
      v1132[3] = v578;
      v1132[4] = v581;
      v1132[5] = v577;
      v1132[6] = v580;
      v1132[7] = v576;
      v1131[0] = v599;
      v1131[1] = v579;
      v1131[2] = v582;
      v1131[3] = v578;
      v1131[4] = v581;
      v1131[5] = v577;
      v1131[6] = v580;
      v1131[7] = v576;
      v620.i64[0] = *(v1132 + (v600 & 0xF));
      v621.i64[0] = *(v1134 + (v597 & 0xF));
      v620.i64[1] = *(v1131 + (v601 & 0xF));
      v955 = v620;
      v621.i64[1] = *(v1133 + (v598 & 0xF));
      v952 = v621;
      v620.i64[0] = *(v1136 + (v595 & 0xF));
      v620.i64[1] = *(v1135 + (v596 & 0xF));
      v923 = v620;
      v620.i64[0] = *(v1138 + (v593 & 0xF));
      v620.i64[1] = *(v1137 + (v594 & 0xF));
      v922 = v620;
      v620.i64[0] = *(v1140 + (v591 & 0xF));
      v620.i64[1] = *(v1139 + (v592 & 0xF));
      v920 = v620;
      v620.i64[0] = *(v1142 + (v589 & 0xF));
      v620.i64[1] = *(v1141 + (v590 & 0xF));
      v918 = v620;
      v620.i64[0] = *(v1144 + (v587 & 0xF));
      v620.i64[1] = *(v1143 + (v588 & 0xF));
      v916 = v620;
      v619.i64[0] = *(v1146 + (v585 & 0xF));
      v619.i64[1] = *(v1145 + (v586 & 0xF));
    }

    v914 = v619;
    v622 = *&v943[v583];
    v623 = &v943[v562];
    v624 = *v623;
    v625 = v623[1];
    v626 = v623[2];
    v1130 = v623[3];
    v1129[2] = v626;
    v1129[1] = v625;
    v1129[0] = v624;
    v579.i32[0] = *(v1129 + (v622 & 0xF));
    v904 = v579;
    v1128[3] = v1130;
    v1128[2] = v626;
    v1128[1] = v625;
    v1128[0] = v624;
    v579.i32[0] = *(v1128 + (BYTE1(v622) & 0xF));
    v906 = v579;
    v1127[3] = v1130;
    v1127[2] = v626;
    v1127[1] = v625;
    v1127[0] = v624;
    v579.i32[0] = *(v1127 + (BYTE2(v622) & 0xF));
    v910 = v579;
    v1126[3] = v1130;
    v1126[2] = v626;
    v1126[1] = v625;
    v1126[0] = v624;
    v579.i32[0] = *(v1126 + (BYTE3(v622) & 0xF));
    v912 = v579;
    v1125[3] = v1130;
    v1125[2] = v626;
    v1125[1] = v625;
    v1125[0] = v624;
    v579.i32[0] = *(v1125 + (BYTE4(v622) & 0xF));
    v894 = v579;
    v1124[3] = v1130;
    v1124[2] = v626;
    v1124[1] = v625;
    v1124[0] = v624;
    v579.i32[0] = *(v1124 + (BYTE5(v622) & 0xF));
    v898 = v579;
    v1123[3] = v1130;
    v1123[2] = v626;
    v1123[1] = v625;
    v1123[0] = v624;
    v579.i32[0] = *(v1123 + (BYTE6(v622) & 0xF));
    v902 = v579;
    v1122[3] = v1130;
    v1122[2] = v626;
    v1122[1] = v625;
    v1122[0] = v624;
    v579.i32[0] = *(v1122 + (BYTE7(v622) & 0xF));
    v908 = v579;
    v1121[3] = v1130;
    v1121[2] = v626;
    v1121[1] = v625;
    v1121[0] = v624;
    v579.i32[0] = *(v1121 + (BYTE8(v622) & 0xF));
    v886 = v579;
    v1120[3] = v1130;
    v1120[2] = v626;
    v1120[1] = v625;
    v1120[0] = v624;
    v579.i32[0] = *(v1120 + (BYTE9(v622) & 0xF));
    v890 = v579;
    v1119[3] = v1130;
    v1119[2] = v626;
    v1119[1] = v625;
    v1119[0] = v624;
    v579.i32[0] = *(v1119 + (BYTE10(v622) & 0xF));
    v896 = v579;
    v1118[3] = v1130;
    v1118[2] = v626;
    v1118[1] = v625;
    v1118[0] = v624;
    v579.i32[0] = *(v1118 + (BYTE11(v622) & 0xF));
    v900 = v579;
    v1117[3] = v1130;
    v1117[2] = v626;
    v1117[1] = v625;
    v1117[0] = v624;
    v579.i32[0] = *(v1117 + (BYTE12(v622) & 0xF));
    v882 = v579;
    v1116[3] = v1130;
    v1116[2] = v626;
    v1116[1] = v625;
    v1116[0] = v624;
    v579.i32[0] = *(v1116 + (BYTE13(v622) & 0xF));
    v884 = v579;
    v1115[3] = v1130;
    v1115[2] = v626;
    v1115[1] = v625;
    v1115[0] = v624;
    v579.i32[0] = *(v1115 + (BYTE14(v622) & 0xF));
    v888 = v579;
    v1114[3] = v1130;
    v1114[2] = v626;
    v1114[1] = v625;
    v1114[0] = v624;
    v624.i32[0] = *(v1114 + (HIBYTE(v622) & 0xF));
    v892 = v624;
    makeStrideBytes();
    v627 = &v928[*v498];
    v628.i64[0] = 0x100000001;
    v628.i64[1] = 0x100000001;
    v629 = vceqq_s32(*v627, v628);
    v630.i64[0] = v629.i32[0];
    v630.i64[1] = v629.i32[1];
    v631 = v630;
    v632 = vceqq_s32(v627[1], v628);
    v630.i64[0] = v632.i32[0];
    v630.i64[1] = v632.i32[1];
    v633 = v630;
    v634 = vceqq_s32(v627[2], v628);
    v630.i64[0] = v634.i32[0];
    v630.i64[1] = v634.i32[1];
    v635 = v630;
    v636 = vceqq_s32(v627[3], v628);
    v630.i64[0] = v636.i32[0];
    v630.i64[1] = v636.i32[1];
    v637 = v630;
    v630.i64[0] = v629.i32[2];
    v630.i64[1] = v629.i32[3];
    v638 = v630;
    v630.i64[0] = v632.i32[2];
    v630.i64[1] = v632.i32[3];
    v639 = v630;
    v630.i64[0] = v634.i32[2];
    v630.i64[1] = v634.i32[3];
    v640 = v630;
    v630.i64[0] = v636.i32[2];
    v630.i64[1] = v636.i32[3];
    v641 = vbicq_s8(v1433, v630);
    v642 = vbicq_s8(v1431, v640);
    v643 = vbicq_s8(v1429, v639);
    v644 = vbicq_s8(v1427, v638);
    v645 = vbicq_s8(v1432, v637);
    v646 = vbicq_s8(v1430, v635);
    v647 = vbicq_s8(v1428, v633);
    v648 = *&v928[*MEMORY[0x277CD73C8]];
    v649 = *&v928[*v523];
    v650 = BYTE1(*&v928[*v523]);
    v651 = BYTE2(*&v928[*v523]);
    v652 = BYTE3(*&v928[*v523]);
    v653 = BYTE4(*&v928[*v523]);
    v654 = WORD2(*&v928[*v523]) >> 8;
    v655 = BYTE6(*&v928[*v523]);
    v656 = HIBYTE(*&v928[*v523]);
    v657 = *&v928[*v523 + 8];
    v658 = BYTE1(*&v928[*v523 + 8]);
    v659 = BYTE2(*&v928[*v523 + 8]);
    v660 = BYTE3(*&v928[*v523 + 8]);
    v661 = BYTE12(*&v928[*v523]);
    v662 = WORD6(*&v928[*v523]) >> 8;
    v663 = vbicq_s8(v1426, v631);
    v664 = BYTE14(*&v928[*v523]);
    v665 = HIBYTE(*&v928[*v523]);
    if ((v648 & 0xFFF8) != 0)
    {
      v666 = v648 >> 3;
      v1113[0] = v663;
      v1113[1] = v644;
      v1113[2] = v647;
      v1113[3] = v643;
      v1113[4] = v646;
      v1113[5] = v642;
      v1113[6] = v645;
      v1113[7] = v641;
      v667 = *(v1113 + (v649 & 0xF)) / v666;
      v1112[0] = v663;
      v1112[1] = v644;
      v1112[2] = v647;
      v1112[3] = v643;
      v1112[4] = v646;
      v1112[5] = v642;
      v1112[6] = v645;
      v1112[7] = v641;
      v668 = *(v1112 + (v650 & 0xF));
      v1111[0] = v663;
      v1111[1] = v644;
      v1111[2] = v647;
      v1111[3] = v643;
      v1111[4] = v646;
      v1111[5] = v642;
      v1111[6] = v645;
      v1111[7] = v641;
      v669 = *(v1111 + (v651 & 0xF)) / v666;
      v1110[0] = v663;
      v1110[1] = v644;
      v1110[2] = v647;
      v1110[3] = v643;
      v1110[4] = v646;
      v1110[5] = v642;
      v1110[6] = v645;
      v1110[7] = v641;
      v670 = *(v1110 + (v652 & 0xF)) / v666;
      v1109[0] = v663;
      v1109[1] = v644;
      v1109[2] = v647;
      v1109[3] = v643;
      v1109[4] = v646;
      v1109[5] = v642;
      v1109[6] = v645;
      v1109[7] = v641;
      v671 = *(v1109 + (v653 & 0xF)) / v666;
      v1108[0] = v663;
      v1108[1] = v644;
      v1108[2] = v647;
      v1108[3] = v643;
      v1108[4] = v646;
      v1108[5] = v642;
      v1108[6] = v645;
      v1108[7] = v641;
      v672 = *(v1108 + (v654 & 0xF));
      v1107[0] = v663;
      v1107[1] = v644;
      v1107[2] = v647;
      v1107[3] = v643;
      v1107[4] = v646;
      v1107[5] = v642;
      v1107[6] = v645;
      v1107[7] = v641;
      v673 = *(v1107 + (v655 & 0xF));
      v1106[0] = v663;
      v1106[1] = v644;
      v1106[2] = v647;
      v1106[3] = v643;
      v1106[4] = v646;
      v1106[5] = v642;
      v1106[6] = v645;
      v1106[7] = v641;
      v674 = *(v1106 + (v656 & 0xF)) / v666;
      v1105[0] = v663;
      v1105[1] = v644;
      v1105[2] = v647;
      v1105[3] = v643;
      v1105[4] = v646;
      v1105[5] = v642;
      v1105[6] = v645;
      v1105[7] = v641;
      v675 = *(v1105 + (v657 & 0xF)) / v666;
      v1104[0] = v663;
      v1104[1] = v644;
      v1104[2] = v647;
      v1104[3] = v643;
      v1104[4] = v646;
      v1104[5] = v642;
      v1104[6] = v645;
      v1104[7] = v641;
      v676 = *(v1104 + (v658 & 0xF)) / v666;
      v1103[0] = v663;
      v1103[1] = v644;
      v1103[2] = v647;
      v1103[3] = v643;
      v1103[4] = v646;
      v1103[5] = v642;
      v1103[6] = v645;
      v1103[7] = v641;
      v677 = *(v1103 + (v659 & 0xF)) / v666;
      v1102[0] = v663;
      v1102[1] = v644;
      v1102[2] = v647;
      v1102[3] = v643;
      v1102[4] = v646;
      v1102[5] = v642;
      v1102[6] = v645;
      v1102[7] = v641;
      v678 = *(v1102 + (v660 & 0xF));
      v1101[0] = v663;
      v1101[1] = v644;
      v1101[2] = v647;
      v1101[3] = v643;
      v1101[4] = v646;
      v1101[5] = v642;
      v1101[6] = v645;
      v1101[7] = v641;
      v679 = *(v1101 + (v661 & 0xF)) / v666;
      v1100[0] = v663;
      v1100[1] = v644;
      v1100[2] = v647;
      v1100[3] = v643;
      v1100[4] = v646;
      v1100[5] = v642;
      v1100[6] = v645;
      v1100[7] = v641;
      v680 = *(v1100 + (v662 & 0xF)) / v666;
      v1099[0] = v663;
      v1099[1] = v644;
      v1099[2] = v647;
      v1099[3] = v643;
      v1099[4] = v646;
      v1099[5] = v642;
      v1099[6] = v645;
      v1099[7] = v641;
      v681 = *(v1099 + (v664 & 0xF)) / v666;
      v1098[0] = v663;
      v1098[1] = v644;
      v1098[2] = v647;
      v1098[3] = v643;
      v1098[4] = v646;
      v1098[5] = v642;
      v1098[6] = v645;
      v1098[7] = v641;
      *&v682 = v681;
      *(&v682 + 1) = *(v1098 + (v665 & 0xF)) / v666;
      v880 = v682;
      *&v682 = v679;
      *(&v682 + 1) = v680;
      v878 = v682;
      *&v682 = v677;
      *(&v682 + 1) = v678 / v666;
      v876 = v682;
      *&v682 = v675;
      *(&v682 + 1) = v676;
      v874 = v682;
      *&v682 = v673 / v666;
      *(&v682 + 1) = v674;
      v872 = v682;
      *&v682 = v671;
      *(&v682 + 1) = v672 / v666;
      v870 = v682;
      *&v682 = v669;
      *(&v682 + 1) = v670;
      v868 = v682;
      *&v683 = v667;
      *(&v683 + 1) = v668 / v666;
    }

    else
    {
      v1097[0] = v663;
      v1097[1] = v644;
      v1097[2] = v647;
      v1097[3] = v643;
      v1097[4] = v646;
      v1097[5] = v642;
      v1097[6] = v645;
      v1097[7] = v641;
      v1096[0] = v663;
      v1096[1] = v644;
      v1096[2] = v647;
      v1096[3] = v643;
      v1096[4] = v646;
      v1096[5] = v642;
      v1096[6] = v645;
      v1096[7] = v641;
      v1095[0] = v663;
      v1095[1] = v644;
      v1095[2] = v647;
      v1095[3] = v643;
      v1095[4] = v646;
      v1095[5] = v642;
      v1095[6] = v645;
      v1095[7] = v641;
      v1094[0] = v663;
      v1094[1] = v644;
      v1094[2] = v647;
      v1094[3] = v643;
      v1094[4] = v646;
      v1094[5] = v642;
      v1094[6] = v645;
      v1094[7] = v641;
      v1093[0] = v663;
      v1093[1] = v644;
      v1093[2] = v647;
      v1093[3] = v643;
      v1093[4] = v646;
      v1093[5] = v642;
      v1093[6] = v645;
      v1093[7] = v641;
      v1092[0] = v663;
      v1092[1] = v644;
      v1092[2] = v647;
      v1092[3] = v643;
      v1092[4] = v646;
      v1092[5] = v642;
      v1092[6] = v645;
      v1092[7] = v641;
      v1091[0] = v663;
      v1091[1] = v644;
      v1091[2] = v647;
      v1091[3] = v643;
      v1091[4] = v646;
      v1091[5] = v642;
      v1091[6] = v645;
      v1091[7] = v641;
      v1090[0] = v663;
      v1090[1] = v644;
      v1090[2] = v647;
      v1090[3] = v643;
      v1090[4] = v646;
      v1090[5] = v642;
      v1090[6] = v645;
      v1090[7] = v641;
      v1089[0] = v663;
      v1089[1] = v644;
      v1089[2] = v647;
      v1089[3] = v643;
      v1089[4] = v646;
      v1089[5] = v642;
      v1089[6] = v645;
      v1089[7] = v641;
      v1088[0] = v663;
      v1088[1] = v644;
      v1088[2] = v647;
      v1088[3] = v643;
      v1088[4] = v646;
      v1088[5] = v642;
      v1088[6] = v645;
      v1088[7] = v641;
      v1087[0] = v663;
      v1087[1] = v644;
      v1087[2] = v647;
      v1087[3] = v643;
      v1087[4] = v646;
      v1087[5] = v642;
      v1087[6] = v645;
      v1087[7] = v641;
      v1086[0] = v663;
      v1086[1] = v644;
      v1086[2] = v647;
      v1086[3] = v643;
      v1086[4] = v646;
      v1086[5] = v642;
      v1086[6] = v645;
      v1086[7] = v641;
      v1085[0] = v663;
      v1085[1] = v644;
      v1085[2] = v647;
      v1085[3] = v643;
      v1085[4] = v646;
      v1085[5] = v642;
      v1085[6] = v645;
      v1085[7] = v641;
      v1084[0] = v663;
      v1084[1] = v644;
      v1084[2] = v647;
      v1084[3] = v643;
      v1084[4] = v646;
      v1084[5] = v642;
      v1084[6] = v645;
      v1084[7] = v641;
      v1083[0] = v663;
      v1083[1] = v644;
      v1083[2] = v647;
      v1083[3] = v643;
      v1083[4] = v646;
      v1083[5] = v642;
      v1083[6] = v645;
      v1083[7] = v641;
      v1082[0] = v663;
      v1082[1] = v644;
      v1082[2] = v647;
      v1082[3] = v643;
      v1082[4] = v646;
      v1082[5] = v642;
      v1082[6] = v645;
      v1082[7] = v641;
      *&v684 = *(v1083 + (v664 & 0xF));
      *&v685 = *(v1085 + (v661 & 0xF));
      *(&v684 + 1) = *(v1082 + (v665 & 0xF));
      v880 = v684;
      *(&v685 + 1) = *(v1084 + (v662 & 0xF));
      v878 = v685;
      *&v684 = *(v1087 + (v659 & 0xF));
      *(&v684 + 1) = *(v1086 + (v660 & 0xF));
      v876 = v684;
      *&v684 = *(v1089 + (v657 & 0xF));
      *(&v684 + 1) = *(v1088 + (v658 & 0xF));
      v874 = v684;
      *&v684 = *(v1091 + (v655 & 0xF));
      *(&v684 + 1) = *(v1090 + (v656 & 0xF));
      v872 = v684;
      *&v684 = *(v1093 + (v653 & 0xF));
      *(&v684 + 1) = *(v1092 + (v654 & 0xF));
      v870 = v684;
      *&v684 = *(v1095 + (v651 & 0xF));
      *(&v684 + 1) = *(v1094 + (v652 & 0xF));
      v868 = v684;
      *&v683 = *(v1097 + (v649 & 0xF));
      *(&v683 + 1) = *(v1096 + (v650 & 0xF));
    }

    v866 = v683;
    makeStrideBytes();
    v686 = &v946[*v498];
    v687.i64[0] = 0x100000001;
    v687.i64[1] = 0x100000001;
    v688 = vceqq_s32(*v686, v687);
    v689.i64[0] = v688.i32[0];
    v689.i64[1] = v688.i32[1];
    v690 = v689;
    v691 = vceqq_s32(v686[1], v687);
    v689.i64[0] = v691.i32[0];
    v689.i64[1] = v691.i32[1];
    v692 = v689;
    v693 = vceqq_s32(v686[2], v687);
    v689.i64[0] = v693.i32[0];
    v689.i64[1] = v693.i32[1];
    v694 = v689;
    v695 = vceqq_s32(v686[3], v687);
    v689.i64[0] = v695.i32[0];
    v689.i64[1] = v695.i32[1];
    v696 = v689;
    v689.i64[0] = v688.i32[2];
    v689.i64[1] = v688.i32[3];
    v697 = v689;
    v689.i64[0] = v691.i32[2];
    v689.i64[1] = v691.i32[3];
    v698 = v689;
    v689.i64[0] = v693.i32[2];
    v689.i64[1] = v693.i32[3];
    v699 = v689;
    v689.i64[0] = v695.i32[2];
    v689.i64[1] = v695.i32[3];
    v700 = vbicq_s8(v1433, v689);
    v701 = vbicq_s8(v1431, v699);
    v702 = vbicq_s8(v1429, v698);
    v703 = vbicq_s8(v1427, v697);
    v704 = vbicq_s8(v1432, v696);
    v705 = vbicq_s8(v1430, v694);
    v706 = vbicq_s8(v1428, v692);
    v707 = vbicq_s8(v1426, v690);
    v708 = *&v946[*v523];
    v709 = *&v946[*MEMORY[0x277CD73C8]];
    if ((v709 & 0xFFF8) != 0)
    {
      v710 = v709 >> 3;
      v1081[0] = v707;
      v1081[1] = v703;
      v1081[2] = v706;
      v1081[3] = v702;
      v1081[4] = v705;
      v1081[5] = v701;
      v1081[6] = v704;
      v1081[7] = v700;
      v711 = *(v1081 + (v708 & 0xF));
      v1080[0] = v707;
      v1080[1] = v703;
      v1080[2] = v706;
      v1080[3] = v702;
      v1080[4] = v705;
      v1080[5] = v701;
      v1080[6] = v704;
      v1080[7] = v700;
      v712 = *(v1080 + (BYTE1(v708) & 0xF));
      v1079[0] = v707;
      v1079[1] = v703;
      v1079[2] = v706;
      v1079[3] = v702;
      v1079[4] = v705;
      v1079[5] = v701;
      v1079[6] = v704;
      v1079[7] = v700;
      v713 = *(v1079 + (BYTE2(v708) & 0xF)) / v710;
      v1078[0] = v707;
      v1078[1] = v703;
      v1078[2] = v706;
      v1078[3] = v702;
      v1078[4] = v705;
      v1078[5] = v701;
      v1078[6] = v704;
      v1078[7] = v700;
      v714 = *(v1078 + (BYTE3(v708) & 0xF));
      v1077[0] = v707;
      v1077[1] = v703;
      v1077[2] = v706;
      v1077[3] = v702;
      v1077[4] = v705;
      v1077[5] = v701;
      v1077[6] = v704;
      v1077[7] = v700;
      v715 = *(v1077 + (BYTE4(v708) & 0xF)) / v710;
      v1076[0] = v707;
      v1076[1] = v703;
      v1076[2] = v706;
      v1076[3] = v702;
      v1076[4] = v705;
      v1076[5] = v701;
      v1076[6] = v704;
      v1076[7] = v700;
      v716 = *(v1076 + (BYTE5(v708) & 0xF));
      v1075[0] = v707;
      v1075[1] = v703;
      v1075[2] = v706;
      v1075[3] = v702;
      v1075[4] = v705;
      v1075[5] = v701;
      v1075[6] = v704;
      v1075[7] = v700;
      v717 = *(v1075 + (BYTE6(v708) & 0xF)) / v710;
      v1074[0] = v707;
      v1074[1] = v703;
      v1074[2] = v706;
      v1074[3] = v702;
      v1074[4] = v705;
      v1074[5] = v701;
      v1074[6] = v704;
      v1074[7] = v700;
      v718 = *(v1074 + (BYTE7(v708) & 0xF));
      v1073[0] = v707;
      v1073[1] = v703;
      v1073[2] = v706;
      v1073[3] = v702;
      v1073[4] = v705;
      v1073[5] = v701;
      v1073[6] = v704;
      v1073[7] = v700;
      v719 = *(v1073 + (BYTE8(v708) & 0xF)) / v710;
      v1072[0] = v707;
      v1072[1] = v703;
      v1072[2] = v706;
      v1072[3] = v702;
      v1072[4] = v705;
      v1072[5] = v701;
      v1072[6] = v704;
      v1072[7] = v700;
      v720 = *(v1072 + (BYTE9(v708) & 0xF));
      v1071[0] = v707;
      v1071[1] = v703;
      v1071[2] = v706;
      v1071[3] = v702;
      v1071[4] = v705;
      v1071[5] = v701;
      v1071[6] = v704;
      v1071[7] = v700;
      v721 = *(v1071 + (BYTE10(v708) & 0xF)) / v710;
      v1070[0] = v707;
      v1070[1] = v703;
      v1070[2] = v706;
      v1070[3] = v702;
      v1070[4] = v705;
      v1070[5] = v701;
      v1070[6] = v704;
      v1070[7] = v700;
      v722 = *(v1070 + (BYTE11(v708) & 0xF));
      v1069[0] = v707;
      v1069[1] = v703;
      v1069[2] = v706;
      v1069[3] = v702;
      v1069[4] = v705;
      v1069[5] = v701;
      v1069[6] = v704;
      v1069[7] = v700;
      v723 = *(v1069 + (BYTE12(v708) & 0xF)) / v710;
      v1068[0] = v707;
      v1068[1] = v703;
      v1068[2] = v706;
      v1068[3] = v702;
      v1068[4] = v705;
      v1068[5] = v701;
      v1068[6] = v704;
      v1068[7] = v700;
      v724 = *(v1068 + (BYTE13(v708) & 0xF));
      v1067[0] = v707;
      v1067[1] = v703;
      v1067[2] = v706;
      v1067[3] = v702;
      v1067[4] = v705;
      v1067[5] = v701;
      v1067[6] = v704;
      v1067[7] = v700;
      v725 = *(v1067 + (BYTE14(v708) & 0xF)) / v710;
      v1066[0] = v707;
      v1066[1] = v703;
      v1066[2] = v706;
      v1066[3] = v702;
      v1066[4] = v705;
      v1066[5] = v701;
      v1066[6] = v704;
      v1066[7] = v700;
      *&v726 = v725;
      *(&v726 + 1) = *(v1066 + (HIBYTE(v708) & 0xF)) / v710;
      v864 = v726;
      *&v726 = v723;
      *(&v726 + 1) = v724 / v710;
      v862 = v726;
      *&v726 = v721;
      *(&v726 + 1) = v722 / v710;
      v860 = v726;
      *&v726 = v719;
      *(&v726 + 1) = v720 / v710;
      v858 = v726;
      *&v726 = v717;
      *(&v726 + 1) = v718 / v710;
      v856 = v726;
      *&v726 = v715;
      *(&v726 + 1) = v716 / v710;
      v854 = v726;
      *&v726 = v713;
      *(&v726 + 1) = v714 / v710;
      v852 = v726;
      *&v727 = v711 / v710;
      *(&v727 + 1) = v712 / v710;
    }

    else
    {
      v1065[0] = v707;
      v1065[1] = v703;
      v1065[2] = v706;
      v1065[3] = v702;
      v1065[4] = v705;
      v1065[5] = v701;
      v1065[6] = v704;
      v1065[7] = v700;
      v1064[0] = v707;
      v1064[1] = v703;
      v1064[2] = v706;
      v1064[3] = v702;
      v1064[4] = v705;
      v1064[5] = v701;
      v1064[6] = v704;
      v1064[7] = v700;
      v1063[0] = v707;
      v1063[1] = v703;
      v1063[2] = v706;
      v1063[3] = v702;
      v1063[4] = v705;
      v1063[5] = v701;
      v1063[6] = v704;
      v1063[7] = v700;
      v1062[0] = v707;
      v1062[1] = v703;
      v1062[2] = v706;
      v1062[3] = v702;
      v1062[4] = v705;
      v1062[5] = v701;
      v1062[6] = v704;
      v1062[7] = v700;
      v1061[0] = v707;
      v1061[1] = v703;
      v1061[2] = v706;
      v1061[3] = v702;
      v1061[4] = v705;
      v1061[5] = v701;
      v1061[6] = v704;
      v1061[7] = v700;
      v1060[0] = v707;
      v1060[1] = v703;
      v1060[2] = v706;
      v1060[3] = v702;
      v1060[4] = v705;
      v1060[5] = v701;
      v1060[6] = v704;
      v1060[7] = v700;
      v1059[0] = v707;
      v1059[1] = v703;
      v1059[2] = v706;
      v1059[3] = v702;
      v1059[4] = v705;
      v1059[5] = v701;
      v1059[6] = v704;
      v1059[7] = v700;
      v1058[0] = v707;
      v1058[1] = v703;
      v1058[2] = v706;
      v1058[3] = v702;
      v1058[4] = v705;
      v1058[5] = v701;
      v1058[6] = v704;
      v1058[7] = v700;
      v1057[0] = v707;
      v1057[1] = v703;
      v1057[2] = v706;
      v1057[3] = v702;
      v1057[4] = v705;
      v1057[5] = v701;
      v1057[6] = v704;
      v1057[7] = v700;
      v1056[0] = v707;
      v1056[1] = v703;
      v1056[2] = v706;
      v1056[3] = v702;
      v1056[4] = v705;
      v1056[5] = v701;
      v1056[6] = v704;
      v1056[7] = v700;
      v1055[0] = v707;
      v1055[1] = v703;
      v1055[2] = v706;
      v1055[3] = v702;
      v1055[4] = v705;
      v1055[5] = v701;
      v1055[6] = v704;
      v1055[7] = v700;
      v1054[0] = v707;
      v1054[1] = v703;
      v1054[2] = v706;
      v1054[3] = v702;
      v1054[4] = v705;
      v1054[5] = v701;
      v1054[6] = v704;
      v1054[7] = v700;
      v1053[0] = v707;
      v1053[1] = v703;
      v1053[2] = v706;
      v1053[3] = v702;
      v1053[4] = v705;
      v1053[5] = v701;
      v1053[6] = v704;
      v1053[7] = v700;
      v1052[0] = v707;
      v1052[1] = v703;
      v1052[2] = v706;
      v1052[3] = v702;
      v1052[4] = v705;
      v1052[5] = v701;
      v1052[6] = v704;
      v1052[7] = v700;
      v1051[0] = v707;
      v1051[1] = v703;
      v1051[2] = v706;
      v1051[3] = v702;
      v1051[4] = v705;
      v1051[5] = v701;
      v1051[6] = v704;
      v1051[7] = v700;
      v1050[0] = v707;
      v1050[1] = v703;
      v1050[2] = v706;
      v1050[3] = v702;
      v1050[4] = v705;
      v1050[5] = v701;
      v1050[6] = v704;
      v1050[7] = v700;
      *&v728 = *(v1051 + (BYTE14(v708) & 0xF));
      *&v729 = *(v1053 + (BYTE12(v708) & 0xF));
      *(&v728 + 1) = *(v1050 + (HIBYTE(v708) & 0xF));
      v864 = v728;
      *(&v729 + 1) = *(v1052 + (BYTE13(v708) & 0xF));
      v862 = v729;
      *&v728 = *(v1055 + (BYTE10(v708) & 0xF));
      *(&v728 + 1) = *(v1054 + (BYTE11(v708) & 0xF));
      v860 = v728;
      *&v728 = *(v1057 + (BYTE8(v708) & 0xF));
      *(&v728 + 1) = *(v1056 + (BYTE9(v708) & 0xF));
      v858 = v728;
      *&v728 = *(v1059 + (BYTE6(v708) & 0xF));
      *(&v728 + 1) = *(v1058 + (BYTE7(v708) & 0xF));
      v856 = v728;
      *&v728 = *(v1061 + (BYTE4(v708) & 0xF));
      *(&v728 + 1) = *(v1060 + (BYTE5(v708) & 0xF));
      v854 = v728;
      *&v728 = *(v1063 + (BYTE2(v708) & 0xF));
      *(&v728 + 1) = *(v1062 + (BYTE3(v708) & 0xF));
      v852 = v728;
      *&v727 = *(v1065 + (v708 & 0xF));
      *(&v727 + 1) = *(v1064 + (BYTE1(v708) & 0xF));
    }

    v850 = v727;
    makeStrideBytes();
    v730 = &v926[*v498];
    v731.i64[0] = 0x100000001;
    v731.i64[1] = 0x100000001;
    v732 = vceqq_s32(*v730, v731);
    v733.i64[0] = v732.i32[0];
    v733.i64[1] = v732.i32[1];
    v734 = v733;
    v735 = vceqq_s32(v730[1], v731);
    v733.i64[0] = v735.i32[0];
    v733.i64[1] = v735.i32[1];
    v736 = v733;
    v737 = vceqq_s32(v730[2], v731);
    v733.i64[0] = v737.i32[0];
    v733.i64[1] = v737.i32[1];
    v738 = v733;
    v739 = vceqq_s32(v730[3], v731);
    v733.i64[0] = v739.i32[0];
    v733.i64[1] = v739.i32[1];
    v740 = v733;
    v733.i64[0] = v732.i32[2];
    v733.i64[1] = v732.i32[3];
    v741 = v733;
    v733.i64[0] = v735.i32[2];
    v733.i64[1] = v735.i32[3];
    v742 = v733;
    v733.i64[0] = v737.i32[2];
    v733.i64[1] = v737.i32[3];
    v743 = v733;
    v733.i64[0] = v739.i32[2];
    v733.i64[1] = v739.i32[3];
    v744 = vbicq_s8(v1433, v733);
    v745 = vbicq_s8(v1431, v743);
    v746 = vbicq_s8(v1429, v742);
    v747 = vbicq_s8(v1427, v741);
    v748 = vbicq_s8(v1432, v740);
    v749 = vbicq_s8(v1430, v738);
    v750 = vbicq_s8(v1428, v736);
    v751 = vbicq_s8(v1426, v734);
    v752 = *&v926[*v523];
    v753 = *&v926[*MEMORY[0x277CD73C8]];
    if ((v753 & 0xFFF8) != 0)
    {
      v754 = v753 >> 3;
      v1049[0] = v751;
      v1049[1] = v747;
      v1049[2] = v750;
      v1049[3] = v746;
      v1049[4] = v749;
      v1049[5] = v745;
      v1049[6] = v748;
      v1049[7] = v744;
      v755 = *(v1049 + (v752 & 0xF));
      v1048[0] = v751;
      v1048[1] = v747;
      v1048[2] = v750;
      v1048[3] = v746;
      v1048[4] = v749;
      v1048[5] = v745;
      v1048[6] = v748;
      v1048[7] = v744;
      v756 = *(v1048 + (BYTE1(v752) & 0xF));
      v1047[0] = v751;
      v1047[1] = v747;
      v1047[2] = v750;
      v1047[3] = v746;
      v1047[4] = v749;
      v1047[5] = v745;
      v1047[6] = v748;
      v1047[7] = v744;
      v757 = *(v1047 + (BYTE2(v752) & 0xF)) / v754;
      v1046[0] = v751;
      v1046[1] = v747;
      v1046[2] = v750;
      v1046[3] = v746;
      v1046[4] = v749;
      v1046[5] = v745;
      v1046[6] = v748;
      v1046[7] = v744;
      v758 = *(v1046 + (BYTE3(v752) & 0xF));
      v1045[0] = v751;
      v1045[1] = v747;
      v1045[2] = v750;
      v1045[3] = v746;
      v1045[4] = v749;
      v1045[5] = v745;
      v1045[6] = v748;
      v1045[7] = v744;
      v759 = *(v1045 + (BYTE4(v752) & 0xF)) / v754;
      v1044[0] = v751;
      v1044[1] = v747;
      v1044[2] = v750;
      v1044[3] = v746;
      v1044[4] = v749;
      v1044[5] = v745;
      v1044[6] = v748;
      v1044[7] = v744;
      v760 = *(v1044 + (BYTE5(v752) & 0xF));
      v1043[0] = v751;
      v1043[1] = v747;
      v1043[2] = v750;
      v1043[3] = v746;
      v1043[4] = v749;
      v1043[5] = v745;
      v1043[6] = v748;
      v1043[7] = v744;
      v761 = *(v1043 + (BYTE6(v752) & 0xF)) / v754;
      v1042[0] = v751;
      v1042[1] = v747;
      v1042[2] = v750;
      v1042[3] = v746;
      v1042[4] = v749;
      v1042[5] = v745;
      v1042[6] = v748;
      v1042[7] = v744;
      v762 = *(v1042 + (BYTE7(v752) & 0xF));
      v1041[0] = v751;
      v1041[1] = v747;
      v1041[2] = v750;
      v1041[3] = v746;
      v1041[4] = v749;
      v1041[5] = v745;
      v1041[6] = v748;
      v1041[7] = v744;
      v763 = *(v1041 + (BYTE8(v752) & 0xF)) / v754;
      v1040[0] = v751;
      v1040[1] = v747;
      v1040[2] = v750;
      v1040[3] = v746;
      v1040[4] = v749;
      v1040[5] = v745;
      v1040[6] = v748;
      v1040[7] = v744;
      v764 = *(v1040 + (BYTE9(v752) & 0xF));
      v1039[0] = v751;
      v1039[1] = v747;
      v1039[2] = v750;
      v1039[3] = v746;
      v1039[4] = v749;
      v1039[5] = v745;
      v1039[6] = v748;
      v1039[7] = v744;
      v765 = *(v1039 + (BYTE10(v752) & 0xF)) / v754;
      v1038[0] = v751;
      v1038[1] = v747;
      v1038[2] = v750;
      v1038[3] = v746;
      v1038[4] = v749;
      v1038[5] = v745;
      v1038[6] = v748;
      v1038[7] = v744;
      v766 = *(v1038 + (BYTE11(v752) & 0xF));
      v1037[0] = v751;
      v1037[1] = v747;
      v1037[2] = v750;
      v1037[3] = v746;
      v1037[4] = v749;
      v1037[5] = v745;
      v1037[6] = v748;
      v1037[7] = v744;
      v767 = *(v1037 + (BYTE12(v752) & 0xF)) / v754;
      v1036[0] = v751;
      v1036[1] = v747;
      v1036[2] = v750;
      v1036[3] = v746;
      v1036[4] = v749;
      v1036[5] = v745;
      v1036[6] = v748;
      v1036[7] = v744;
      v768 = *(v1036 + (BYTE13(v752) & 0xF));
      v1035[0] = v751;
      v1035[1] = v747;
      v1035[2] = v750;
      v1035[3] = v746;
      v1035[4] = v749;
      v1035[5] = v745;
      v1035[6] = v748;
      v1035[7] = v744;
      v769 = *(v1035 + (BYTE14(v752) & 0xF)) / v754;
      v1034[0] = v751;
      v1034[1] = v747;
      v1034[2] = v750;
      v1034[3] = v746;
      v1034[4] = v749;
      v1034[5] = v745;
      v1034[6] = v748;
      v1034[7] = v744;
      *&v770 = v769;
      *(&v770 + 1) = *(v1034 + (HIBYTE(v752) & 0xF)) / v754;
      v983 = v770;
      *&v770 = v767;
      *(&v770 + 1) = v768 / v754;
      v848 = v770;
      *&v770 = v765;
      *(&v770 + 1) = v766 / v754;
      v978 = v770;
      *&v770 = v763;
      *(&v770 + 1) = v764 / v754;
      v846 = v770;
      *&v770 = v761;
      *(&v770 + 1) = v762 / v754;
      v973 = v770;
      *&v770 = v759;
      *(&v770 + 1) = v760 / v754;
      v844 = v770;
      *&v770 = v757;
      *(&v770 + 1) = v758 / v754;
      v969 = v770;
      *&v771 = v755 / v754;
      *(&v771 + 1) = v756 / v754;
    }

    else
    {
      v1033[0] = v751;
      v1033[1] = v747;
      v1033[2] = v750;
      v1033[3] = v746;
      v1033[4] = v749;
      v1033[5] = v745;
      v1033[6] = v748;
      v1033[7] = v744;
      v1032[0] = v751;
      v1032[1] = v747;
      v1032[2] = v750;
      v1032[3] = v746;
      v1032[4] = v749;
      v1032[5] = v745;
      v1032[6] = v748;
      v1032[7] = v744;
      v1031[0] = v751;
      v1031[1] = v747;
      v1031[2] = v750;
      v1031[3] = v746;
      v1031[4] = v749;
      v1031[5] = v745;
      v1031[6] = v748;
      v1031[7] = v744;
      v1030[0] = v751;
      v1030[1] = v747;
      v1030[2] = v750;
      v1030[3] = v746;
      v1030[4] = v749;
      v1030[5] = v745;
      v1030[6] = v748;
      v1030[7] = v744;
      v1029[0] = v751;
      v1029[1] = v747;
      v1029[2] = v750;
      v1029[3] = v746;
      v1029[4] = v749;
      v1029[5] = v745;
      v1029[6] = v748;
      v1029[7] = v744;
      v1028[0] = v751;
      v1028[1] = v747;
      v1028[2] = v750;
      v1028[3] = v746;
      v1028[4] = v749;
      v1028[5] = v745;
      v1028[6] = v748;
      v1028[7] = v744;
      v1027[0] = v751;
      v1027[1] = v747;
      v1027[2] = v750;
      v1027[3] = v746;
      v1027[4] = v749;
      v1027[5] = v745;
      v1027[6] = v748;
      v1027[7] = v744;
      v1026[0] = v751;
      v1026[1] = v747;
      v1026[2] = v750;
      v1026[3] = v746;
      v1026[4] = v749;
      v1026[5] = v745;
      v1026[6] = v748;
      v1026[7] = v744;
      v1025[0] = v751;
      v1025[1] = v747;
      v1025[2] = v750;
      v1025[3] = v746;
      v1025[4] = v749;
      v1025[5] = v745;
      v1025[6] = v748;
      v1025[7] = v744;
      v1024[0] = v751;
      v1024[1] = v747;
      v1024[2] = v750;
      v1024[3] = v746;
      v1024[4] = v749;
      v1024[5] = v745;
      v1024[6] = v748;
      v1024[7] = v744;
      v1023[0] = v751;
      v1023[1] = v747;
      v1023[2] = v750;
      v1023[3] = v746;
      v1023[4] = v749;
      v1023[5] = v745;
      v1023[6] = v748;
      v1023[7] = v744;
      v1022[0] = v751;
      v1022[1] = v747;
      v1022[2] = v750;
      v1022[3] = v746;
      v1022[4] = v749;
      v1022[5] = v745;
      v1022[6] = v748;
      v1022[7] = v744;
      v1021[0] = v751;
      v1021[1] = v747;
      v1021[2] = v750;
      v1021[3] = v746;
      v1021[4] = v749;
      v1021[5] = v745;
      v1021[6] = v748;
      v1021[7] = v744;
      v1020[0] = v751;
      v1020[1] = v747;
      v1020[2] = v750;
      v1020[3] = v746;
      v1020[4] = v749;
      v1020[5] = v745;
      v1020[6] = v748;
      v1020[7] = v744;
      v1019[0] = v751;
      v1019[1] = v747;
      v1019[2] = v750;
      v1019[3] = v746;
      v1019[4] = v749;
      v1019[5] = v745;
      v1019[6] = v748;
      v1019[7] = v744;
      v1018[0] = v751;
      v1018[1] = v747;
      v1018[2] = v750;
      v1018[3] = v746;
      v1018[4] = v749;
      v1018[5] = v745;
      v1018[6] = v748;
      v1018[7] = v744;
      *&v772 = *(v1019 + (BYTE14(v752) & 0xF));
      *&v773 = *(v1021 + (BYTE12(v752) & 0xF));
      *(&v772 + 1) = *(v1018 + (HIBYTE(v752) & 0xF));
      v983 = v772;
      *(&v773 + 1) = *(v1020 + (BYTE13(v752) & 0xF));
      v848 = v773;
      *&v772 = *(v1023 + (BYTE10(v752) & 0xF));
      *(&v772 + 1) = *(v1022 + (BYTE11(v752) & 0xF));
      v978 = v772;
      *&v772 = *(v1025 + (BYTE8(v752) & 0xF));
      *(&v772 + 1) = *(v1024 + (BYTE9(v752) & 0xF));
      v846 = v772;
      *&v772 = *(v1027 + (BYTE6(v752) & 0xF));
      *(&v772 + 1) = *(v1026 + (BYTE7(v752) & 0xF));
      v973 = v772;
      *&v772 = *(v1029 + (BYTE4(v752) & 0xF));
      *(&v772 + 1) = *(v1028 + (BYTE5(v752) & 0xF));
      v844 = v772;
      *&v772 = *(v1031 + (BYTE2(v752) & 0xF));
      *(&v772 + 1) = *(v1030 + (BYTE3(v752) & 0xF));
      v969 = v772;
      *&v771 = *(v1033 + (v752 & 0xF));
      *(&v771 + 1) = *(v1032 + (BYTE1(v752) & 0xF));
    }

    v774 = *(v960 + 16);
    v776 = *v774;
    v775 = v774[1];
    if (v775 != v776)
    {
      if (((v775 - v776) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v777 = *(v958 + 16);
    v779 = *v777;
    v778 = v777[1];
    if (v778 != v779)
    {
      if (((v778 - v779) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<long>::__throw_length_error[abi:ne200100]();
    }

    v780 = 0;
    v781 = vuzp1q_s32(v922, v923);
    v782 = vuzp1q_s32(v918, v920);
    v783 = vuzp1q_s32(v914, v916);
    v784 = v783;
    v784.i32[0] = 0;
    v785 = v782;
    v785.i32[0] = 0;
    v786 = v781;
    v786.i32[0] = 0;
    v787 = vuzp1q_s32(v952, v955);
    v788 = v787;
    v788.i32[0] = 0;
    v789 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v904, 1uLL), 0), v784, v783);
    v790 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v894, 1uLL), 0), v785, v782);
    v791 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v886, 1uLL), 0), v786, v781);
    v792 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v882, 1uLL), 0), v788, v787);
    v793 = v789;
    v793.i32[1] = 0;
    v794 = v790;
    v794.i32[1] = 0;
    v795 = v791;
    v795.i32[1] = 0;
    v796 = v792;
    v796.i32[1] = 0;
    v797 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v906, 1uLL), 0), v793, v789);
    v798 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v898, 1uLL), 0), v794, v790);
    v799 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v890, 1uLL), 0), v795, v791);
    v800 = v797;
    v800.i32[2] = 0;
    v801 = v798;
    v801.i32[2] = 0;
    v802 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v884, 1uLL), 0), v796, v792);
    v803 = v799;
    v803.i32[2] = 0;
    v804 = v802;
    v804.i32[2] = 0;
    v805 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v910, 1uLL), 0), v800, v797);
    v806 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v902, 1uLL), 0), v801, v798);
    v807 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v896, 1uLL), 0), v803, v799);
    v808 = v805;
    v808.i32[3] = 0;
    v809 = v806;
    v809.i32[3] = 0;
    v810 = v807;
    v810.i32[3] = 0;
    v811 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v888, 1uLL), 0), v804, v802);
    v812 = v811;
    v812.i32[3] = 0;
    v813 = &v1407;
    v961 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v912, 1uLL), 0), v808, v805);
    v959 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v908, 1uLL), 0), v809, v806);
    v956 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v900, 1uLL), 0), v810, v807);
    v953 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v892, 1uLL), 0), v812, v811);
    do
    {
      v1017[0] = v924;
      v1017[1] = v930;
      v1017[2] = v933;
      v1017[3] = v988;
      v1017[4] = v936;
      v1017[5] = v992;
      v1017[6] = *v940;
      v1017[7] = *__pc;
      *(v813 - 64) = *(v1017 + (v780 & 0xF));
      v1016[0] = v961;
      v1016[1] = v959;
      v1016[2] = v956;
      v1016[3] = v953;
      *(v813 - 48) = *(v1016 + (v780 & 0xF));
      v1015[0] = v866;
      v1015[1] = v868;
      v1015[2] = v870;
      v1015[3] = v872;
      v1015[4] = v874;
      v1015[5] = v876;
      v1015[6] = v878;
      v1015[7] = v880;
      *(v813 - 32) = *(v1015 + (v780 & 0xF));
      v1014[0] = v850;
      v1014[1] = v852;
      v1014[2] = v854;
      v1014[3] = v856;
      v1014[4] = v858;
      v1014[5] = v860;
      v1014[6] = v862;
      v1014[7] = v864;
      *(v813 - 16) = *(v1014 + (v780 & 0xF));
      v1013[0] = v771;
      v1013[1] = v969;
      v1013[2] = v844;
      v1013[3] = v973;
      v1013[4] = v846;
      v1013[5] = v978;
      v1013[6] = v848;
      v1013[7] = v983;
      *v813 = *(v1013 + (v780 & 0xF));
      v1012[0] = v1005;
      v1012[1] = v1009;
      v1012[2] = v948;
      v1012[3] = v950;
      *(v813 + 16) = *(v1012 + (v780 & 0xF));
      v1011[0] = xmmword_239B0A0D0;
      memset(&v1011[1], 0, 48);
      *(v813 + 32) = *(v1011 + (v780 & 0xF));
      v1010[0] = xmmword_239B0A0D0;
      memset(&v1010[1], 0, 48);
      *(v813 + 48) = *(v1010 + (v780++ & 0xF));
      v813 = (v813 + 4);
    }

    while (v780 != 16);
    [v477 setBuffer:objc_msgSend(v942 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v942, 0, 16, 0, 0) + *(*(v944 + 8) + 144), 0}];
    [v477 setBuffer:objc_msgSend(v943 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v943, 0, 16, 0, 0) + *(*(v944 + 8) + 224), 1}];
    [v477 setBuffer:objc_msgSend(v926 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v926, 0, 16, 0, 0) + *(v944 + 96), 2}];
    [v477 setBuffer:objc_msgSend(v946 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v946, 0, 16, 0, 0), 3}];
    [v477 setBuffer:objc_msgSend(v928 offset:"buffer") atIndex:{MPSGetLinearOffsetBytes(v928, 0, 16, 0, 0) + *&v928[*MEMORY[0x277CD73F8]], 4}];
    objc_msgSend_setBytes_length_atIndex_(v477);
    v1426.i64[0] = v935;
    v1426.i64[1] = v938;
    v1427.i64[0] = 1;
    v1375 = v488;
    v1376 = vdupq_n_s64(1uLL);
    [v477 dispatchThreadgroups:&v1426 threadsPerThreadgroup:&v1375];
    v145 = 0;
  }

  else
  {
    v145 = -1;
  }

LABEL_621:
  MPSAutoCache::~MPSAutoCache(v1425);
  return v145;
}