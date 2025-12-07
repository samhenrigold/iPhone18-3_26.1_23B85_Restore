void sub_1D0B97958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL raven::RavenActivityStateEstimator::Predict(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v229) = 12;
      LOBYTE(v210) = 1;
      cnprint::CNPrinter::Print(&v229, &v210, "WARNING: ActivityStateEstimator,time,%.3lf,predicting uninitialized");
    }

    return 0;
  }

  a4.i64[0] = *(a2 + 8);
  *a3.i64 = *a4.i64 + *a2;
  if (COERCE__INT64(fabs(*a3.i64)) >= 0x7FF0000000000000)
  {
    LOWORD(v229) = 12;
    LOBYTE(v210) = 4;
    cnprint::CNPrinter::Print(&v229, &v210, "ActivityStateEstimator,time,%.3lf,invalid prediction time,%.3lf");
    return 0;
  }

  v6 = *(a1 + 288);
  v229 = *(a1 + 280);
  *&v230 = v6;
  v7 = CNTimeSpan::operator-(a2, &v229, a3, a4);
  v222 = v7;
  v223 = v8;
  *v10.i64 = v8;
  if (!v7 && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v7)
  {
    if (v8 >= 0.0)
    {
      goto LABEL_10;
    }

LABEL_14:
    LOWORD(v229) = 12;
    LOBYTE(v210) = 4;
    cnprint::CNPrinter::Print(&v229, &v210, "ActivityStateEstimator,time,%.3lf,negative prediction interval,%.3lf");
    return 0;
  }

  if (v7 < 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (*(a2 + 528) == 1)
  {
    v11 = *(a2 + 201);
    if (v11 > 3)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2u >> (v11 & 0xF);
    }
  }

  else
  {
    v12 = 0;
  }

  if (*(a2 + 768) != 1)
  {
    goto LABEL_24;
  }

  v15 = CNTimeSpan::operator-((a2 + 640), a2, v10, v9);
  v229 = v15;
  *&v230 = v16;
  if (v15 < 0 || (*v17.i64 = v16, v16 < 0.0))
  {
    v15 = CNTimeSpan::operator-(&v229, v17, v18);
    v17.i64[0] = v19;
  }

  if (*v17.i64 + v15 <= 6.0)
  {
    v20 = *(a2 + 736) - 1 < 6;
    v21 = *(a2 + 737) - 1 < 6;
  }

  else
  {
LABEL_24:
    v20 = 0;
    v21 = 0;
  }

  v22 = *(a1 + 280);
  v221 = *(a1 + 272);
  memset(&v211[1], 0, 64);
  v210 = v22;
  v211[0] = xmmword_1D0EB3BD0;
  v212[2] = xmmword_1D0EB3920;
  v212[3] = unk_1D0EB3930;
  v212[0] = xmmword_1D0EB3900;
  v212[1] = unk_1D0EB3910;
  v213[1] = unk_1D0EB3960;
  v213[2] = xmmword_1D0EB3970;
  v213[3] = unk_1D0EB3980;
  v213[4] = xmmword_1D0EB3990;
  v212[4] = xmmword_1D0EB3940;
  v213[0] = xmmword_1D0EB3950;
  v214[2] = xmmword_1D0EB39C0;
  v214[3] = unk_1D0EB39D0;
  v214[0] = xmmword_1D0EB39A0;
  v214[1] = unk_1D0EB39B0;
  v214[4] = xmmword_1D0EB39E0;
  v215[0] = xmmword_1D0EB39F0;
  memset(&v215[3], 0, 32);
  v215[1] = unk_1D0EB3A00;
  v215[2] = xmmword_1D0EB3A10;
  v216[2] = xmmword_1D0EB3A60;
  memset(&v216[3], 0, 32);
  v216[0] = xmmword_1D0EB3A40;
  v216[1] = unk_1D0EB3A50;
  v217[0] = xmmword_1D0EB3A90;
  v217[3] = unk_1D0EB3AC0;
  v217[4] = xmmword_1D0EB3AD0;
  v217[1] = unk_1D0EB3AA0;
  v217[2] = xmmword_1D0EB3AB0;
  v218[2] = xmmword_1D0EB3B00;
  v218[3] = unk_1D0EB3B10;
  v218[0] = xmmword_1D0EB3AE0;
  v218[1] = unk_1D0EB3AF0;
  v218[4] = xmmword_1D0EB3B20;
  v219[0] = xmmword_1D0EB3B30;
  v219[4] = xmmword_1D0EB3B70;
  memset(&v219[1], 0, 48);
  v220[4] = unk_1D0EB3BC0;
  memset(&v220[1], 0, 48);
  v220[0] = xmmword_1D0EB3B80;
  if (((v12 | v20) & 1) != 0 || v21)
  {
    v230 = 0uLL;
    v229 = &v230;
    if (v12)
    {
      v23 = *(a2 + 200);
      if (v23 > 5)
      {
        if (v23 - 8 < 2)
        {
          LODWORD(v234) = 1;
          sub_1D0B990AC(&v229, 1, &v234);
        }

        else if (v23 == 6)
        {
          LODWORD(v234) = 7;
          sub_1D0B990AC(&v229, 7, &v234);
        }

        else if (v23 == 7)
        {
          LODWORD(v234) = 2;
          sub_1D0B990AC(&v229, 2, &v234);
          LODWORD(v234) = 3;
          sub_1D0B990AC(&v229, 3, &v234);
        }
      }

      else if (*(a2 + 200) > 3u)
      {
        if (v23 == 4)
        {
          LODWORD(v234) = 4;
          sub_1D0B990AC(&v229, 4, &v234);
        }

        else if (v23 == 5)
        {
          LODWORD(v234) = 6;
          sub_1D0B990AC(&v229, 6, &v234);
        }
      }

      else if (v23 == 2)
      {
        LODWORD(v234) = 2;
        sub_1D0B990AC(&v229, 2, &v234);
      }

      else if (v23 == 3)
      {
        LODWORD(v234) = 3;
        sub_1D0B990AC(&v229, 3, &v234);
      }
    }

    else
    {
      v234 = &v229;
      if (v20)
      {
        sub_1D0B99178(&v234, *(a2 + 736));
      }

      if (v21)
      {
        sub_1D0B99178(&v234, *(a2 + 737));
      }
    }

    if (!*(&v230 + 1))
    {
      goto LABEL_339;
    }

    v24 = *(&v230 + 1);
    v25 = 0.975 / *(&v230 + 1);
    v26 = v229;
    if (v229 == &v230)
    {
      v35 = 1.0;
    }

    else
    {
      v27 = 0.0;
      v28 = v229;
      do
      {
        v29 = *(v28 + 8);
        v30 = v28;
        if (v29)
        {
          do
          {
            v31 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v31 = *(v30 + 2);
            v185 = *v31 == v30;
            v30 = v31;
          }

          while (!v185);
        }

        v27 = v27 + *(v211 + *(v28 + 28));
        v28 = v31;
      }

      while (v31 != &v230);
      if (vabdd_f64(1.0, v27) < 2.22044605e-16)
      {
        v32 = v229;
        do
        {
          *(v211 + *(v32 + 28)) = 1.0 / v24;
          v33 = *(v32 + 8);
          if (v33)
          {
            do
            {
              v34 = v33;
              v33 = *v33;
            }

            while (v33);
          }

          else
          {
            do
            {
              v34 = *(v32 + 16);
              v185 = *v34 == v32;
              v32 = v34;
            }

            while (!v185);
          }

          v32 = v34;
        }

        while (v34 != &v230);
        goto LABEL_79;
      }

      v35 = 1.0 - v27;
    }

    v36 = 0;
    v37 = v230;
    v38 = 0.025 / v35;
    do
    {
      if (!v37)
      {
LABEL_76:
        v41 = v38 * *(v211 + v36);
        goto LABEL_78;
      }

      v39 = v37;
      while (1)
      {
        v40 = *(v39 + 7);
        if (v36 >= v40)
        {
          break;
        }

LABEL_75:
        v39 = *v39;
        if (!v39)
        {
          goto LABEL_76;
        }
      }

      if (v36 > v40)
      {
        ++v39;
        goto LABEL_75;
      }

      v41 = v25;
LABEL_78:
      *(v211 + v36++) = v41;
    }

    while (v36 != 10);
LABEL_79:
    if (v26 == &v230)
    {
      v50 = 1.0;
    }

    else
    {
      v42 = 0.0;
      v43 = v26;
      do
      {
        v44 = *(v43 + 1);
        v45 = v43;
        if (v44)
        {
          do
          {
            v46 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v46 = *(v45 + 2);
            v185 = *v46 == v45;
            v45 = v46;
          }

          while (!v185);
        }

        v42 = v42 + *(v212 + *(v43 + 7));
        v43 = v46;
      }

      while (v46 != &v230);
      if (vabdd_f64(1.0, v42) < 2.22044605e-16)
      {
        v47 = v26;
        do
        {
          *(v212 + *(v47 + 7)) = 1.0 / v24;
          v48 = *(v47 + 1);
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = *(v47 + 2);
              v185 = *v49 == v47;
              v47 = v49;
            }

            while (!v185);
          }

          v47 = v49;
        }

        while (v49 != &v230);
        goto LABEL_108;
      }

      v50 = 1.0 - v42;
    }

    v51 = 0;
    v52 = v230;
    v53 = 0.025 / v50;
LABEL_99:
    if (!v52)
    {
LABEL_105:
      v56 = v53 * *(v212 + v51);
      goto LABEL_107;
    }

    v54 = v52;
    while (1)
    {
      v55 = *(v54 + 7);
      if (v51 >= v55)
      {
        if (v51 <= v55)
        {
          v56 = v25;
LABEL_107:
          *(v212 + v51++) = v56;
          if (v51 == 10)
          {
LABEL_108:
            if (v26 == &v230)
            {
              v65 = 1.0;
            }

            else
            {
              v57 = 0.0;
              v58 = v26;
              do
              {
                v59 = *(v58 + 1);
                v60 = v58;
                if (v59)
                {
                  do
                  {
                    v61 = v59;
                    v59 = *v59;
                  }

                  while (v59);
                }

                else
                {
                  do
                  {
                    v61 = *(v60 + 2);
                    v185 = *v61 == v60;
                    v60 = v61;
                  }

                  while (!v185);
                }

                v57 = v57 + *(v213 + *(v58 + 7));
                v58 = v61;
              }

              while (v61 != &v230);
              if (vabdd_f64(1.0, v57) < 2.22044605e-16)
              {
                v62 = v26;
                do
                {
                  *(v213 + *(v62 + 7)) = 1.0 / v24;
                  v63 = *(v62 + 1);
                  if (v63)
                  {
                    do
                    {
                      v64 = v63;
                      v63 = *v63;
                    }

                    while (v63);
                  }

                  else
                  {
                    do
                    {
                      v64 = *(v62 + 2);
                      v185 = *v64 == v62;
                      v62 = v64;
                    }

                    while (!v185);
                  }

                  v62 = v64;
                }

                while (v64 != &v230);
                goto LABEL_137;
              }

              v65 = 1.0 - v57;
            }

            v66 = 0;
            v67 = v230;
            v68 = 0.025 / v65;
LABEL_128:
            if (!v67)
            {
LABEL_134:
              v71 = v68 * *(v213 + v66);
              goto LABEL_136;
            }

            v69 = v67;
            while (1)
            {
              v70 = *(v69 + 7);
              if (v66 >= v70)
              {
                if (v66 <= v70)
                {
                  v71 = v25;
LABEL_136:
                  *(v213 + v66++) = v71;
                  if (v66 != 10)
                  {
                    goto LABEL_128;
                  }

LABEL_137:
                  if (v26 == &v230)
                  {
                    v80 = 1.0;
                  }

                  else
                  {
                    v72 = 0.0;
                    v73 = v26;
                    do
                    {
                      v74 = *(v73 + 1);
                      v75 = v73;
                      if (v74)
                      {
                        do
                        {
                          v76 = v74;
                          v74 = *v74;
                        }

                        while (v74);
                      }

                      else
                      {
                        do
                        {
                          v76 = *(v75 + 2);
                          v185 = *v76 == v75;
                          v75 = v76;
                        }

                        while (!v185);
                      }

                      v72 = v72 + *(v214 + *(v73 + 7));
                      v73 = v76;
                    }

                    while (v76 != &v230);
                    if (vabdd_f64(1.0, v72) < 2.22044605e-16)
                    {
                      v77 = v26;
                      do
                      {
                        *(v214 + *(v77 + 7)) = 1.0 / v24;
                        v78 = *(v77 + 1);
                        if (v78)
                        {
                          do
                          {
                            v79 = v78;
                            v78 = *v78;
                          }

                          while (v78);
                        }

                        else
                        {
                          do
                          {
                            v79 = *(v77 + 2);
                            v185 = *v79 == v77;
                            v77 = v79;
                          }

                          while (!v185);
                        }

                        v77 = v79;
                      }

                      while (v79 != &v230);
                      goto LABEL_166;
                    }

                    v80 = 1.0 - v72;
                  }

                  v81 = 0;
                  v82 = v230;
                  v83 = 0.025 / v80;
LABEL_157:
                  if (!v82)
                  {
LABEL_163:
                    v86 = v83 * *(v214 + v81);
                    goto LABEL_165;
                  }

                  v84 = v82;
                  while (1)
                  {
                    v85 = *(v84 + 7);
                    if (v81 >= v85)
                    {
                      if (v81 <= v85)
                      {
                        v86 = v25;
LABEL_165:
                        *(v214 + v81++) = v86;
                        if (v81 == 10)
                        {
LABEL_166:
                          if (v26 == &v230)
                          {
                            v95 = 1.0;
                          }

                          else
                          {
                            v87 = 0.0;
                            v88 = v26;
                            do
                            {
                              v89 = *(v88 + 1);
                              v90 = v88;
                              if (v89)
                              {
                                do
                                {
                                  v91 = v89;
                                  v89 = *v89;
                                }

                                while (v89);
                              }

                              else
                              {
                                do
                                {
                                  v91 = *(v90 + 2);
                                  v185 = *v91 == v90;
                                  v90 = v91;
                                }

                                while (!v185);
                              }

                              v87 = v87 + *(v215 + *(v88 + 7));
                              v88 = v91;
                            }

                            while (v91 != &v230);
                            if (vabdd_f64(1.0, v87) < 2.22044605e-16)
                            {
                              v92 = v26;
                              do
                              {
                                *(v215 + *(v92 + 7)) = 1.0 / v24;
                                v93 = *(v92 + 1);
                                if (v93)
                                {
                                  do
                                  {
                                    v94 = v93;
                                    v93 = *v93;
                                  }

                                  while (v93);
                                }

                                else
                                {
                                  do
                                  {
                                    v94 = *(v92 + 2);
                                    v185 = *v94 == v92;
                                    v92 = v94;
                                  }

                                  while (!v185);
                                }

                                v92 = v94;
                              }

                              while (v94 != &v230);
                              goto LABEL_195;
                            }

                            v95 = 1.0 - v87;
                          }

                          v96 = 0;
                          v97 = v230;
                          v98 = 0.025 / v95;
LABEL_186:
                          if (!v97)
                          {
LABEL_192:
                            v101 = v98 * *(v215 + v96);
                            goto LABEL_194;
                          }

                          v99 = v97;
                          while (1)
                          {
                            v100 = *(v99 + 7);
                            if (v96 >= v100)
                            {
                              if (v96 <= v100)
                              {
                                v101 = v25;
LABEL_194:
                                *(v215 + v96++) = v101;
                                if (v96 != 10)
                                {
                                  goto LABEL_186;
                                }

LABEL_195:
                                if (v26 == &v230)
                                {
                                  v110 = 1.0;
                                }

                                else
                                {
                                  v102 = 0.0;
                                  v103 = v26;
                                  do
                                  {
                                    v104 = *(v103 + 1);
                                    v105 = v103;
                                    if (v104)
                                    {
                                      do
                                      {
                                        v106 = v104;
                                        v104 = *v104;
                                      }

                                      while (v104);
                                    }

                                    else
                                    {
                                      do
                                      {
                                        v106 = *(v105 + 2);
                                        v185 = *v106 == v105;
                                        v105 = v106;
                                      }

                                      while (!v185);
                                    }

                                    v102 = v102 + *(v216 + *(v103 + 7));
                                    v103 = v106;
                                  }

                                  while (v106 != &v230);
                                  if (vabdd_f64(1.0, v102) < 2.22044605e-16)
                                  {
                                    v107 = v26;
                                    do
                                    {
                                      *(v216 + *(v107 + 7)) = 1.0 / v24;
                                      v108 = *(v107 + 1);
                                      if (v108)
                                      {
                                        do
                                        {
                                          v109 = v108;
                                          v108 = *v108;
                                        }

                                        while (v108);
                                      }

                                      else
                                      {
                                        do
                                        {
                                          v109 = *(v107 + 2);
                                          v185 = *v109 == v107;
                                          v107 = v109;
                                        }

                                        while (!v185);
                                      }

                                      v107 = v109;
                                    }

                                    while (v109 != &v230);
                                    goto LABEL_224;
                                  }

                                  v110 = 1.0 - v102;
                                }

                                v111 = 0;
                                v112 = v230;
                                v113 = 0.025 / v110;
LABEL_215:
                                if (!v112)
                                {
LABEL_221:
                                  v116 = v113 * *(v216 + v111);
                                  goto LABEL_223;
                                }

                                v114 = v112;
                                while (1)
                                {
                                  v115 = *(v114 + 7);
                                  if (v111 >= v115)
                                  {
                                    if (v111 <= v115)
                                    {
                                      v116 = v25;
LABEL_223:
                                      *(v216 + v111++) = v116;
                                      if (v111 == 10)
                                      {
LABEL_224:
                                        if (v26 == &v230)
                                        {
                                          v125 = 1.0;
                                        }

                                        else
                                        {
                                          v117 = 0.0;
                                          v118 = v26;
                                          do
                                          {
                                            v119 = *(v118 + 1);
                                            v120 = v118;
                                            if (v119)
                                            {
                                              do
                                              {
                                                v121 = v119;
                                                v119 = *v119;
                                              }

                                              while (v119);
                                            }

                                            else
                                            {
                                              do
                                              {
                                                v121 = *(v120 + 2);
                                                v185 = *v121 == v120;
                                                v120 = v121;
                                              }

                                              while (!v185);
                                            }

                                            v117 = v117 + *(v217 + *(v118 + 7));
                                            v118 = v121;
                                          }

                                          while (v121 != &v230);
                                          if (vabdd_f64(1.0, v117) < 2.22044605e-16)
                                          {
                                            v122 = v26;
                                            do
                                            {
                                              *(v217 + *(v122 + 7)) = 1.0 / v24;
                                              v123 = *(v122 + 1);
                                              if (v123)
                                              {
                                                do
                                                {
                                                  v124 = v123;
                                                  v123 = *v123;
                                                }

                                                while (v123);
                                              }

                                              else
                                              {
                                                do
                                                {
                                                  v124 = *(v122 + 2);
                                                  v185 = *v124 == v122;
                                                  v122 = v124;
                                                }

                                                while (!v185);
                                              }

                                              v122 = v124;
                                            }

                                            while (v124 != &v230);
                                            goto LABEL_253;
                                          }

                                          v125 = 1.0 - v117;
                                        }

                                        v126 = 0;
                                        v127 = v230;
                                        v128 = 0.025 / v125;
LABEL_244:
                                        if (!v127)
                                        {
LABEL_250:
                                          v131 = v128 * *(v217 + v126);
                                          goto LABEL_252;
                                        }

                                        v129 = v127;
                                        while (1)
                                        {
                                          v130 = *(v129 + 7);
                                          if (v126 >= v130)
                                          {
                                            if (v126 <= v130)
                                            {
                                              v131 = v25;
LABEL_252:
                                              *(v217 + v126++) = v131;
                                              if (v126 != 10)
                                              {
                                                goto LABEL_244;
                                              }

LABEL_253:
                                              if (v26 == &v230)
                                              {
                                                v140 = 1.0;
                                              }

                                              else
                                              {
                                                v132 = 0.0;
                                                v133 = v26;
                                                do
                                                {
                                                  v134 = *(v133 + 1);
                                                  v135 = v133;
                                                  if (v134)
                                                  {
                                                    do
                                                    {
                                                      v136 = v134;
                                                      v134 = *v134;
                                                    }

                                                    while (v134);
                                                  }

                                                  else
                                                  {
                                                    do
                                                    {
                                                      v136 = *(v135 + 2);
                                                      v185 = *v136 == v135;
                                                      v135 = v136;
                                                    }

                                                    while (!v185);
                                                  }

                                                  v132 = v132 + *(v218 + *(v133 + 7));
                                                  v133 = v136;
                                                }

                                                while (v136 != &v230);
                                                if (vabdd_f64(1.0, v132) < 2.22044605e-16)
                                                {
                                                  v137 = v26;
                                                  do
                                                  {
                                                    *(v218 + *(v137 + 7)) = 1.0 / v24;
                                                    v138 = *(v137 + 1);
                                                    if (v138)
                                                    {
                                                      do
                                                      {
                                                        v139 = v138;
                                                        v138 = *v138;
                                                      }

                                                      while (v138);
                                                    }

                                                    else
                                                    {
                                                      do
                                                      {
                                                        v139 = *(v137 + 2);
                                                        v185 = *v139 == v137;
                                                        v137 = v139;
                                                      }

                                                      while (!v185);
                                                    }

                                                    v137 = v139;
                                                  }

                                                  while (v139 != &v230);
                                                  goto LABEL_282;
                                                }

                                                v140 = 1.0 - v132;
                                              }

                                              v141 = 0;
                                              v142 = v230;
                                              v143 = 0.025 / v140;
LABEL_273:
                                              if (!v142)
                                              {
LABEL_279:
                                                v146 = v143 * *(v218 + v141);
                                                goto LABEL_281;
                                              }

                                              v144 = v142;
                                              while (1)
                                              {
                                                v145 = *(v144 + 7);
                                                if (v141 >= v145)
                                                {
                                                  if (v141 <= v145)
                                                  {
                                                    v146 = v25;
LABEL_281:
                                                    *(v218 + v141++) = v146;
                                                    if (v141 == 10)
                                                    {
LABEL_282:
                                                      if (v26 == &v230)
                                                      {
                                                        v155 = 1.0;
                                                      }

                                                      else
                                                      {
                                                        v147 = 0.0;
                                                        v148 = v26;
                                                        do
                                                        {
                                                          v149 = *(v148 + 1);
                                                          v150 = v148;
                                                          if (v149)
                                                          {
                                                            do
                                                            {
                                                              v151 = v149;
                                                              v149 = *v149;
                                                            }

                                                            while (v149);
                                                          }

                                                          else
                                                          {
                                                            do
                                                            {
                                                              v151 = *(v150 + 2);
                                                              v185 = *v151 == v150;
                                                              v150 = v151;
                                                            }

                                                            while (!v185);
                                                          }

                                                          v147 = v147 + *(v219 + *(v148 + 7));
                                                          v148 = v151;
                                                        }

                                                        while (v151 != &v230);
                                                        if (vabdd_f64(1.0, v147) < 2.22044605e-16)
                                                        {
                                                          v152 = v26;
                                                          do
                                                          {
                                                            *(v219 + *(v152 + 7)) = 1.0 / v24;
                                                            v153 = *(v152 + 1);
                                                            if (v153)
                                                            {
                                                              do
                                                              {
                                                                v154 = v153;
                                                                v153 = *v153;
                                                              }

                                                              while (v153);
                                                            }

                                                            else
                                                            {
                                                              do
                                                              {
                                                                v154 = *(v152 + 2);
                                                                v185 = *v154 == v152;
                                                                v152 = v154;
                                                              }

                                                              while (!v185);
                                                            }

                                                            v152 = v154;
                                                          }

                                                          while (v154 != &v230);
                                                          goto LABEL_311;
                                                        }

                                                        v155 = 1.0 - v147;
                                                      }

                                                      v156 = 0;
                                                      v157 = v230;
                                                      v158 = 0.025 / v155;
LABEL_302:
                                                      if (!v157)
                                                      {
LABEL_308:
                                                        v161 = v158 * *(v219 + v156);
                                                        goto LABEL_310;
                                                      }

                                                      v159 = v157;
                                                      while (1)
                                                      {
                                                        v160 = *(v159 + 7);
                                                        if (v156 >= v160)
                                                        {
                                                          if (v156 <= v160)
                                                          {
                                                            v161 = v25;
LABEL_310:
                                                            *(v219 + v156++) = v161;
                                                            if (v156 != 10)
                                                            {
                                                              goto LABEL_302;
                                                            }

LABEL_311:
                                                            if (v26 == &v230)
                                                            {
                                                              v169 = 1.0;
                                                            }

                                                            else
                                                            {
                                                              v162 = 0.0;
                                                              v163 = v26;
                                                              do
                                                              {
                                                                v164 = *(v163 + 1);
                                                                v165 = v163;
                                                                if (v164)
                                                                {
                                                                  do
                                                                  {
                                                                    v166 = v164;
                                                                    v164 = *v164;
                                                                  }

                                                                  while (v164);
                                                                }

                                                                else
                                                                {
                                                                  do
                                                                  {
                                                                    v166 = *(v165 + 2);
                                                                    v185 = *v166 == v165;
                                                                    v165 = v166;
                                                                  }

                                                                  while (!v185);
                                                                }

                                                                v162 = v162 + *(v220 + *(v163 + 7));
                                                                v163 = v166;
                                                              }

                                                              while (v166 != &v230);
                                                              if (vabdd_f64(1.0, v162) < 2.22044605e-16)
                                                              {
                                                                do
                                                                {
                                                                  *(v220 + *(v26 + 28)) = 1.0 / v24;
                                                                  v167 = *(v26 + 8);
                                                                  if (v167)
                                                                  {
                                                                    do
                                                                    {
                                                                      v168 = v167;
                                                                      v167 = *v167;
                                                                    }

                                                                    while (v167);
                                                                  }

                                                                  else
                                                                  {
                                                                    do
                                                                    {
                                                                      v168 = *(v26 + 16);
                                                                      v185 = *v168 == v26;
                                                                      v26 = v168;
                                                                    }

                                                                    while (!v185);
                                                                  }

                                                                  v26 = v168;
                                                                }

                                                                while (v168 != &v230);
                                                                goto LABEL_339;
                                                              }

                                                              v169 = 1.0 - v162;
                                                            }

                                                            v170 = 0;
                                                            v171 = v230;
                                                            v172 = 0.025 / v169;
LABEL_330:
                                                            if (!v171)
                                                            {
LABEL_336:
                                                              v175 = v172 * *(v220 + v170);
                                                              goto LABEL_338;
                                                            }

                                                            v173 = v171;
                                                            while (1)
                                                            {
                                                              v174 = *(v173 + 7);
                                                              if (v170 >= v174)
                                                              {
                                                                if (v170 <= v174)
                                                                {
                                                                  v175 = v25;
LABEL_338:
                                                                  *(v220 + v170++) = v175;
                                                                  if (v170 == 10)
                                                                  {
LABEL_339:
                                                                    sub_1D0B99218(v230);
                                                                    goto LABEL_340;
                                                                  }

                                                                  goto LABEL_330;
                                                                }

                                                                ++v173;
                                                              }

                                                              v173 = *v173;
                                                              if (!v173)
                                                              {
                                                                goto LABEL_336;
                                                              }
                                                            }
                                                          }

                                                          ++v159;
                                                        }

                                                        v159 = *v159;
                                                        if (!v159)
                                                        {
                                                          goto LABEL_308;
                                                        }
                                                      }
                                                    }

                                                    goto LABEL_273;
                                                  }

                                                  ++v144;
                                                }

                                                v144 = *v144;
                                                if (!v144)
                                                {
                                                  goto LABEL_279;
                                                }
                                              }
                                            }

                                            ++v129;
                                          }

                                          v129 = *v129;
                                          if (!v129)
                                          {
                                            goto LABEL_250;
                                          }
                                        }
                                      }

                                      goto LABEL_215;
                                    }

                                    ++v114;
                                  }

                                  v114 = *v114;
                                  if (!v114)
                                  {
                                    goto LABEL_221;
                                  }
                                }
                              }

                              ++v99;
                            }

                            v99 = *v99;
                            if (!v99)
                            {
                              goto LABEL_192;
                            }
                          }
                        }

                        goto LABEL_157;
                      }

                      ++v84;
                    }

                    v84 = *v84;
                    if (!v84)
                    {
                      goto LABEL_163;
                    }
                  }
                }

                ++v69;
              }

              v69 = *v69;
              if (!v69)
              {
                goto LABEL_134;
              }
            }
          }

          goto LABEL_99;
        }

        ++v54;
      }

      v54 = *v54;
      if (!v54)
      {
        goto LABEL_105;
      }
    }
  }

LABEL_340:
  if ((atomic_load_explicit(&qword_1EE054FE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054FE8))
  {
    qword_1EE054FF0 = 10;
    unk_1EE054FF8 = 0;
    __cxa_guard_release(&qword_1EE054FE8);
  }

  if (sub_1D0B7CF88(&v222, &qword_1EE054FF0))
  {
    LOWORD(v229) = 12;
    LOBYTE(v234) = 4;
    cnprint::CNPrinter::Print(&v229, &v234, "ActivityStateEstimator,time,%.3lf,resetting because prediction interval too large,%.3lf", *(a1 + 288) + *(a1 + 280), v223 + v222);
    v13 = 0;
    *a1 = 0;
    *(a1 + 280) = 0;
    *(a1 + 288) = 0x7FF8000000000000;
    return v13;
  }

  v178 = *(*(a1 + 8) + 872);
  *v176.i64 = v178 + v178;
  v208 = 0;
  v209 = 0.0;
  CNTimeSpan::SetTimeSpan(&v208, 0, v176, v177);
  v206 = a2;
  if (!v222)
  {
    v179 = v223;
    if ((*&v223 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_350;
    }
  }

  if (!v208)
  {
    v180 = v209;
    if ((*&v209 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v179 = v223;
      goto LABEL_351;
    }
  }

  if (v222 == v208)
  {
    v179 = v223;
LABEL_350:
    v180 = v209;
LABEL_351:
    if (v179 > v180)
    {
LABEL_356:
      v207 = vcvtpd_u64_f64((v179 + v222) / v178);
      if (!v207)
      {
LABEL_395:
        *(a1 + 280) = *v206;
        return 1;
      }

      goto LABEL_357;
    }

    goto LABEL_355;
  }

  if (v222 >= v208)
  {
    v179 = v223;
    goto LABEL_356;
  }

LABEL_355:
  v207 = 1;
LABEL_357:
  v13 = 0;
  v181 = 0;
  v182 = *(a1 + 264) == 0;
  while (1)
  {
    if (v182)
    {
      sub_1D0B894B0(a1 + 144, a1 + 24);
    }

    v183 = *(a1 + 152);
    v184 = *(a1 + 156);
    if (v183)
    {
      v185 = v184 == 0;
    }

    else
    {
      v185 = 1;
    }

    v186 = v185;
    if (v183 <= v184)
    {
      v187 = *(a1 + 156);
    }

    else
    {
      v187 = *(a1 + 152);
    }

    if (v186)
    {
      v188 = 0;
    }

    else
    {
      v188 = v187;
    }

    if (v186 == 1)
    {
      v236 = 0x10000000ALL;
      v234 = &unk_1F4CEAE48;
      v237 = v238;
      v235 = xmmword_1D0E7F490;
      v231 = 0x10000000ALL;
      *&v189.f64[1] = 0xA0000000ALL;
      v230 = xmmword_1D0E87BE0;
      v229 = &unk_1F4CEAE48;
      v232 = v233;
      v189.f64[0] = INFINITY;
      sub_1D0B8930C(&v234, &v229, v189);
      sub_1D0B894B0(a1 + 144, &v229);
    }

    else
    {
      v190 = *(a1 + 272);
      v231 = 0x10000000ALL;
      v230 = xmmword_1D0E87BE0;
      v229 = &unk_1F4CEAE48;
      v232 = v233;
      v191 = sub_1D0B94BA0(a1 + 144, 1, &v229);
      v192 = *v232;
      if (fabs(*v232 + -1.0) <= v190)
      {
        if ((v187 & 0x80000000) != 0)
        {
          goto LABEL_401;
        }

        sub_1D0B94CA4(&v229, a1 + 144);
        *&v230 = v187 | 0x100000000;
        DWORD2(v230) = v187;
        HIDWORD(v230) = v187;
        sub_1D0B894B0(a1 + 144, &v229);
      }

      else
      {
        if (cnprint::CNPrinter::GetLogLevel(v191) <= 1)
        {
          LOWORD(v229) = 2;
          LOBYTE(v234) = 1;
          cnprint::CNPrinter::Print(&v229, &v234, "WARNING: HMM prediction passed a non-normalized probability vector.");
        }

        if ((v187 & 0x80000000) != 0)
        {
LABEL_401:
          __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
        }

        sub_1D0B94CA4(&v234, a1 + 144);
        *&v235 = v187 | 0x100000000;
        DWORD2(v235) = v187;
        HIDWORD(v235) = v187;
        v231 = 0x10000000ALL;
        *&v193.f64[1] = 0xA0000000ALL;
        v230 = xmmword_1D0E87BE0;
        v229 = &unk_1F4CEAE48;
        v232 = v233;
        v193.f64[0] = 1.0 / v192;
        sub_1D0B8930C(&v234, &v229, v193);
        sub_1D0B894B0(a1 + 144, &v229);
      }
    }

    *(a1 + 264) = 1;
    v231 = 0xA0000000ALL;
    v230 = xmmword_1D0E84630;
    v229 = &unk_1F4CE2180;
    v232 = v233;
    v195 = sub_1D0B94DEC(&v210, &v229);
    if (v194)
    {
      LOWORD(v234) = 2;
      LOBYTE(v224) = 4;
      cnprint::CNPrinter::Print(&v234, &v224, "ERROR: HMM transition probability function failed.", v195);
      v205 = 27;
      goto LABEL_400;
    }

    if (v188)
    {
      v196 = 0;
      v197 = 0;
      v198 = v232;
LABEL_384:
      v199 = 0.0;
      v200 = v198;
      v201 = v188;
      while (1)
      {
        v202 = *v200;
        if (*v200 < 0.0 || v202 > 1.0)
        {
          break;
        }

        v199 = v199 + v202;
        ++v200;
        if (!--v201)
        {
          if (fabs(v199 + -1.0) <= *(a1 + 272))
          {
            ++v196;
            v198 += SHIDWORD(v230);
            v197 = v196 >= v188;
            if (v196 != v188)
            {
              goto LABEL_384;
            }
          }

          break;
        }
      }

      if (!v197)
      {
        break;
      }
    }

    v236 = 0x10000000ALL;
    v235 = xmmword_1D0E87BE0;
    v234 = &unk_1F4CEAE48;
    v237 = v238;
    sub_1D0B89390(&v229, a1 + 144, &v234);
    sub_1D0B894B0(a1 + 24, &v234);
    v226 = 0x10000000ALL;
    v225 = xmmword_1D0E87BE0;
    v224 = &unk_1F4CEAE48;
    v227 = &v228;
    v182 = 1;
    sub_1D0B94BA0(a1 + 24, 1, &v224);
    v204.f64[0] = 1.0 / *v227;
    v236 = 0x10000000ALL;
    v235 = xmmword_1D0E87BE0;
    v234 = &unk_1F4CEAE48;
    v237 = v238;
    sub_1D0B8930C(a1 + 24, &v234, v204);
    sub_1D0B894B0(a1 + 24, &v234);
    *(a1 + 264) = 0;
    v13 = ++v181 >= v207;
    if (v181 == v207)
    {
      goto LABEL_395;
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(v194) <= 1)
  {
    LOWORD(v234) = 2;
    LOBYTE(v224) = 1;
    cnprint::CNPrinter::Print(&v234, &v224, "ERROR: HMM transition probability matrix is invalid.");
  }

  v205 = 28;
LABEL_400:
  LOWORD(v229) = 12;
  LOBYTE(v234) = 4;
  cnprint::CNPrinter::Print(&v229, &v234, "ActivityStateEstimator,time,%.3lf,failed to predict,code,%d,iteration,%u", *(a1 + 288) + *(a1 + 280), v205, v181);
  return v13;
}

uint64_t *sub_1D0B990AC(uint64_t *result, int a2, _DWORD *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 28);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_1D0B99178(uint64_t *result, char a2)
{
  v2 = result;
  switch(a2)
  {
    case 4:
      v4 = *result;
      v6 = 4;
      v5 = 4;
      break;
    case 2:
      v4 = *result;
      v6 = 5;
      v5 = 5;
      break;
    case 1:
      v3 = *result;
      v6 = 2;
      sub_1D0B990AC(v3, 2, &v6);
      v4 = *v2;
      v6 = 3;
      v5 = 3;
      break;
    default:
      return result;
  }

  return sub_1D0B990AC(v4, v5, &v6);
}

void sub_1D0B99218(void *a1)
{
  if (a1)
  {
    sub_1D0B99218(*a1);
    sub_1D0B99218(a1[1]);

    operator delete(a1);
  }
}

__n128 sub_1D0B99264(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v22.__vftable) = 3;
    LOBYTE(v20) = 5;
    cnprint::CNPrinter::Print(&v22, &v20, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEA78 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEEA78 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v22.__vftable = 0;
        std::bad_cast::bad_cast(&v22);
        v22.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v22);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF688;
    v11 = *(v10 + 48);
    v12 = *(v10 + 64);
    v13 = *(v10 + 32);
    *(a1 + 8) = *(v10 + 16);
    *(a1 + 56) = v12;
    *(a1 + 40) = v11;
    *(a1 + 24) = v13;
    v14 = *(v10 + 112);
    v15 = *(v10 + 128);
    v16 = *(v10 + 96);
    *(a1 + 72) = *(v10 + 80);
    *(a1 + 120) = v15;
    *(a1 + 104) = v14;
    *(a1 + 88) = v16;
    v17 = *(v10 + 160);
    result = *(v10 + 176);
    v18 = *(v10 + 192);
    *(a1 + 136) = *(v10 + 144);
    *(a1 + 184) = v18;
    *(a1 + 168) = result;
    *(a1 + 152) = v17;
  }

  else
  {
    v20 = 3;
    v19 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v22.__vftable) = 3;
      v21 = 5;
      cnprint::CNPrinter::Print(&v22, &v21, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v20, &v19, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEA78 & 0x7FFFFFFFFFFFFFFFLL));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF688;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0x3FF0000000000000;
    *(a1 + 184) = 0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
  }

  return result;
}

void sub_1D0B99534(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B99264(v11, a3);
  if ((*(*v3 + 88))(v3, v4))
  {
    raven::RavenEstimator::HandleActivityStateEvent((v3 + 2968), v11);
    if (v5 && cnprint::CNPrinter::GetLogLevel(v5) <= 1)
    {
      v16 = 12;
      v15 = 1;
      v14[0] = (*(v11[0] + 16))(v11);
      v14[1] = v6;
      (*(v11[0] + 24))(v12, v11);
      if (v13 >= 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = v12[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v3 + 240, v14, "Failed to handle event - %s.", v7);
      if (*(v3 + 263) >= 0)
      {
        v8 = (v3 + 240);
      }

      else
      {
        v8 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v16, &v15, "%s", v8);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  else
  {
    LOWORD(v12[0]) = 12;
    LOBYTE(v14[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatGeneral((v3 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v3 + 263) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v12, v14, "%s", v10);
  }
}

void sub_1D0B996D8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenEstimator::HandleActivityStateEvent(raven::RavenEstimator *this, const raven::ActivityStateEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 1208) == 1)
    {
      v4 = *(a2 + 8);
      v5 = *(a2 + 24);
      v6 = *(a2 + 56);
      *(this + 1256) = *(a2 + 40);
      *(this + 1272) = v6;
      *(this + 1224) = v4;
      *(this + 1240) = v5;
      v7 = *(a2 + 72);
      v8 = *(a2 + 88);
      v9 = *(a2 + 120);
      *(this + 1320) = *(a2 + 104);
      *(this + 1336) = v9;
      *(this + 1288) = v7;
      *(this + 1304) = v8;
      result = *(a2 + 136);
      v11 = *(a2 + 152);
      v12 = *(a2 + 168);
      *(this + 175) = *(a2 + 23);
      *(this + 1368) = v11;
      *(this + 1384) = v12;
      *(this + 1352) = result;
    }

    else
    {
      *(this + 152) = &unk_1F4CEF688;
      v15 = *(a2 + 8);
      v16 = *(a2 + 24);
      v17 = *(a2 + 56);
      *(this + 1256) = *(a2 + 40);
      *(this + 1272) = v17;
      *(this + 1224) = v15;
      *(this + 1240) = v16;
      v18 = *(a2 + 72);
      v19 = *(a2 + 88);
      v20 = *(a2 + 120);
      *(this + 1320) = *(a2 + 104);
      *(this + 1336) = v20;
      *(this + 1288) = v18;
      *(this + 1304) = v19;
      result = *(a2 + 136);
      v21 = *(a2 + 152);
      v22 = *(a2 + 168);
      *(this + 175) = *(a2 + 23);
      *(this + 1368) = v21;
      *(this + 1384) = v22;
      *(this + 1352) = result;
      *(this + 1208) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v25 = 12;
    v24 = 1;
    v23[0] = (*(*a2 + 16))(a2);
    v23[1] = v13;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v23, "Estimator not configured, failed to handle ActivityStateEvent.");
    if (*(this + 2735) >= 0)
    {
      v14 = this + 2712;
    }

    else
    {
      v14 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v25, &v24, "%s", v14);
  }

  return result;
}

uint64_t raven::RavenDeviceAttitudeActiveObject::DownSamplingAccelGyroSamples(uint64_t this)
{
  v1 = this;
  v116[0] = 0;
  v117 = 0u;
  memset(v118, 0, sizeof(v118));
  v113[0] = 0;
  v114 = 0u;
  memset(v115, 0, sizeof(v115));
  v110[0] = 0;
  v111 = 0u;
  memset(v112, 0, sizeof(v112));
  v2 = *(this + 7512);
  if (v2)
  {
    v97 = vdupq_n_s64(0x7FF8000000000000uLL);
    while (1)
    {
      v3 = *(*(v1 + 7480) + 8 * ((v2 + *(v1 + 7504) - 1) / 0x1AuLL)) + 152 * ((v2 + *(v1 + 7504) - 1) % 0x1AuLL);
      v4 = (*(*v3 + 16))(v3);
      v6 = v5;
      v7 = v5;
      v8 = *(*(v1 + 7480) + 8 * (*(v1 + 7504) / 0x1AuLL)) + 152 * (*(v1 + 7504) % 0x1AuLL);
      v119 = (*(*v8 + 16))(v8);
      *&v120 = v9;
      v10.i64[0] = *(*(v1 + 232) + 1144);
      v99 = 0;
      *&v100 = 0;
      *v12.i64 = CNTimeSpan::SetTimeSpan(&v99, 0, v10, v11);
      this = CNTimeSpan::operator+(&v119, &v99, v12, v13);
      if (v4)
      {
        v15 = 1;
      }

      else
      {
        v15 = (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      if (v15 && (this || (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v4 != this)
      {
        if (v4 <= this)
        {
          break;
        }
      }

      else if (v7 < v14)
      {
        break;
      }

      v116[0] = 0;
      v117 = 0u;
      memset(v118, 0, sizeof(v118));
      v113[0] = 0;
      v114 = 0u;
      memset(v115, 0, sizeof(v115));
      v110[0] = 0;
      v111 = 0u;
      memset(v112, 0, sizeof(v112));
      v16 = *(*(v1 + 7480) + 8 * (*(v1 + 7504) / 0x1AuLL)) + 152 * (*(v1 + 7504) % 0x1AuLL);
      v119 = (*(*v16 + 16))(v16);
      *&v120 = v17;
      v18.i64[0] = *(*(v1 + 232) + 1144);
      v99 = 0;
      *&v100 = 0;
      *v20.i64 = CNTimeSpan::SetTimeSpan(&v99, 0, v18, v19);
      v23 = CNTimeSpan::operator+(&v119, &v99, v20, v21);
      v99 = &unk_1F4CEEEB0;
      v100 = 0uLL;
      v24 = v22;
      LOBYTE(v101) = 0;
      *(&v101 + 1) = 0;
      *&v102 = 0;
      BYTE8(v102) = 0;
      v103 = 0uLL;
      LOBYTE(v104) = 0;
      *(&v104 + 1) = 0;
      *v105 = 0;
      *&v105[8] = v97;
      v106 = v97;
      v107 = 0;
      v108 = 0x7FF8000000000000;
      if (v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      v26 = !v25;
      v109 = 0;
      while (1)
      {
        v27 = *(*(v1 + 7480) + 8 * (*(v1 + 7504) / 0x1AuLL)) + 152 * (*(v1 + 7504) % 0x1AuLL);
        v28 = (*(*v27 + 16))(v27);
        v30 = v28 || (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
        if (v30 && !v26 && v28 != v23)
        {
          break;
        }

        if (v29 >= v24)
        {
          goto LABEL_29;
        }

LABEL_27:
        v31 = *(v1 + 7480);
        v32 = *(v1 + 7504);
        v33 = v32 / 0x1A;
        v34 = 152 * (v32 % 0x1A);
        v35 = *(v31 + 8 * v33) + v34;
        v36 = *(v35 + 24);
        v100 = *(v35 + 8);
        v101 = v36;
        v37 = *(v35 + 56);
        v38 = *(v35 + 72);
        v39 = *(v35 + 88);
        v102 = *(v35 + 40);
        *v105 = v39;
        v104 = v38;
        v103 = v37;
        sub_1D0B8954C(v116, (*(v31 + 8 * v33) + v34 + 104), 1.0);
        sub_1D0B8954C(v113, (*(*(v1 + 7480) + 8 * (*(v1 + 7504) / 0x1AuLL)) + 152 * (*(v1 + 7504) % 0x1AuLL) + 112), 1.0);
        sub_1D0B8954C(v110, (*(*(v1 + 7480) + 8 * (*(v1 + 7504) / 0x1AuLL)) + 152 * (*(v1 + 7504) % 0x1AuLL) + 120), 1.0);
        sub_1D0B7E234((v1 + 7472));
      }

      if (v28 < v23)
      {
        goto LABEL_27;
      }

LABEL_29:
      *&v105[16] = *&v118[1];
      v106.i64[0] = *&v115[1];
      v106.i64[1] = *&v112[1];
      v109 = 769;
      sub_1D0B8910C((v1 + 240), &v99);
      if (sub_1D0B9A2A4(v1, (v1 + 240), 3.0))
      {
        while (1)
        {
          v40 = *(v1 + 272);
          v41 = *(*(v1 + 248) + 8 * (v40 / 0x1A));
          v119 = &unk_1F4CEEEB0;
          v42 = v41 + 152 * (v40 % 0x1A);
          v43 = *(v42 + 88);
          v44 = *(v42 + 104);
          v45 = *(v42 + 120);
          *(v127 + 10) = *(v42 + 130);
          v127[0] = v45;
          v126 = v44;
          v125 = v43;
          v46 = *(v42 + 24);
          v47 = *(v42 + 40);
          v48 = *(v42 + 56);
          v124 = *(v42 + 72);
          v123 = v48;
          v122 = v47;
          v121 = v46;
          v120 = *(v42 + 8);
          sub_1D0B7E234((v1 + 240));
          if (!sub_1D0B9A2A4(v1, (v1 + 240), 3.0))
          {
            break;
          }

          if (!sub_1D0B9A2A4(v1, (v1 + 240), 3.0))
          {
            goto LABEL_34;
          }
        }

        sub_1D0B7E140((v1 + 240), &v119);
      }

LABEL_34:
      v2 = *(v1 + 7512);
    }
  }

  v49 = *(v1 + 7560);
  if (v49)
  {
    v98 = vdupq_n_s64(0x7FF8000000000000uLL);
    while (1)
    {
      v50 = *(*(v1 + 7528) + 8 * ((v49 + *(v1 + 7552) - 1) / 0x1AuLL)) + 152 * ((v49 + *(v1 + 7552) - 1) % 0x1AuLL);
      v51 = (*(*v50 + 16))(v50);
      v53 = v52;
      v54 = v52;
      v55 = *(*(v1 + 7528) + 8 * (*(v1 + 7552) / 0x1AuLL)) + 152 * (*(v1 + 7552) % 0x1AuLL);
      v119 = (*(*v55 + 16))(v55);
      *&v120 = v56;
      v57.i64[0] = *(*(v1 + 232) + 1144);
      v99 = 0;
      *&v100 = 0;
      *v59.i64 = CNTimeSpan::SetTimeSpan(&v99, 0, v57, v58);
      this = CNTimeSpan::operator+(&v119, &v99, v59, v60);
      if (v51)
      {
        v62 = 1;
      }

      else
      {
        v62 = (*&v53 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      if (v62 && (this || (*&v61 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v51 != this)
      {
        if (v51 <= this)
        {
          return this;
        }
      }

      else if (v54 < v61)
      {
        return this;
      }

      v116[0] = 0;
      v117 = 0u;
      memset(v118, 0, sizeof(v118));
      v113[0] = 0;
      v114 = 0u;
      memset(v115, 0, sizeof(v115));
      v110[0] = 0;
      v111 = 0u;
      memset(v112, 0, sizeof(v112));
      v63 = *(*(v1 + 7528) + 8 * (*(v1 + 7552) / 0x1AuLL)) + 152 * (*(v1 + 7552) % 0x1AuLL);
      v119 = (*(*v63 + 16))(v63);
      *&v120 = v64;
      v65.i64[0] = *(*(v1 + 232) + 1144);
      v99 = 0;
      *&v100 = 0;
      *v67.i64 = CNTimeSpan::SetTimeSpan(&v99, 0, v65, v66);
      v70 = CNTimeSpan::operator+(&v119, &v99, v67, v68);
      v99 = &unk_1F4CEF1E0;
      v100 = 0uLL;
      v71 = v69;
      LOBYTE(v101) = 0;
      *(&v101 + 1) = 0;
      *&v102 = 0;
      BYTE8(v102) = 0;
      v103 = 0uLL;
      LOBYTE(v104) = 0;
      *(&v104 + 1) = 0;
      *v105 = 0;
      *&v105[8] = v98;
      v106 = v98;
      v107 = 0;
      v108 = 0x7FF8000000000000;
      if (v70)
      {
        v72 = 1;
      }

      else
      {
        v72 = (*&v69 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      v73 = !v72;
      v109 = 0;
      while (1)
      {
        v74 = *(*(v1 + 7528) + 8 * (*(v1 + 7552) / 0x1AuLL)) + 152 * (*(v1 + 7552) % 0x1AuLL);
        v75 = (*(*v74 + 16))(v74);
        v77 = v75 || (*&v76 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
        if (v77 && !v73 && v75 != v70)
        {
          break;
        }

        if (v76 >= v71)
        {
          goto LABEL_64;
        }

LABEL_62:
        v78 = *(v1 + 7528);
        v79 = *(v1 + 7552);
        v80 = v79 / 0x1A;
        v81 = 152 * (v79 % 0x1A);
        v82 = *(v78 + 8 * v80) + v81;
        v83 = *(v82 + 24);
        v100 = *(v82 + 8);
        v101 = v83;
        v84 = *(v82 + 56);
        v85 = *(v82 + 72);
        v86 = *(v82 + 88);
        v102 = *(v82 + 40);
        *v105 = v86;
        v104 = v85;
        v103 = v84;
        sub_1D0B8954C(v116, (*(v78 + 8 * v80) + v81 + 104), 1.0);
        sub_1D0B8954C(v113, (*(*(v1 + 7528) + 8 * (*(v1 + 7552) / 0x1AuLL)) + 152 * (*(v1 + 7552) % 0x1AuLL) + 112), 1.0);
        sub_1D0B8954C(v110, (*(*(v1 + 7528) + 8 * (*(v1 + 7552) / 0x1AuLL)) + 152 * (*(v1 + 7552) % 0x1AuLL) + 120), 1.0);
        sub_1D0B9A458(v1 + 7520);
      }

      if (v75 < v70)
      {
        goto LABEL_62;
      }

LABEL_64:
      *&v105[16] = *&v118[1];
      v106.i64[0] = *&v115[1];
      v106.i64[1] = *&v112[1];
      if (*(v1 + 8144) == 1)
      {
        v87 = *(v1 + 7792);
        *&v105[16] = *&v118[1] - *v87;
        *v106.i64 = *&v115[1] - v87[1];
        *&v106.i64[1] = *&v112[1] - v87[2];
      }

      v109 = 769;
      sub_1D0B937E8((v1 + 6648), &v99);
      if (sub_1D0B9A2A4(v1, (v1 + 6648), 3.0))
      {
        while (1)
        {
          v88 = *(v1 + 6680);
          v89 = *(*(v1 + 6656) + 8 * (v88 / 0x1A));
          v119 = &unk_1F4CEF1E0;
          v90 = v89 + 152 * (v88 % 0x1A);
          v91 = *(v90 + 88);
          v92 = *(v90 + 104);
          v93 = *(v90 + 120);
          *(v127 + 10) = *(v90 + 130);
          v127[0] = v93;
          v126 = v92;
          v125 = v91;
          v94 = *(v90 + 24);
          v95 = *(v90 + 40);
          v96 = *(v90 + 56);
          v124 = *(v90 + 72);
          v123 = v96;
          v122 = v95;
          v121 = v94;
          v120 = *(v90 + 8);
          sub_1D0B9A458(v1 + 6648);
          if (!sub_1D0B9A2A4(v1, (v1 + 6648), 3.0))
          {
            break;
          }

          if (!sub_1D0B9A2A4(v1, (v1 + 6648), 3.0))
          {
            goto LABEL_71;
          }
        }

        sub_1D0B93B8C((v1 + 6648), &v119);
      }

LABEL_71:
      v49 = *(v1 + 7560);
    }
  }

  return this;
}

BOOL sub_1D0B9A2A4(uint64_t a1, void *a2, double a3)
{
  v3 = a2[5];
  if (!v3)
  {
    return 0;
  }

  v7 = *(a2[1] + 8 * ((v3 + a2[4] - 1) / 0x1AuLL)) + 152 * ((v3 + a2[4] - 1) % 0x1AuLL);
  v8 = (*(*v7 + 16))(v7);
  v10 = v9;
  v11 = v9;
  v12 = *(a2[1] + 8 * (a2[4] / 0x1AuLL)) + 152 * (a2[4] % 0x1AuLL);
  v30[0] = (*(*v12 + 16))(v12);
  v30[1] = v13;
  v14.i64[0] = *(*(a1 + 232) + 1048);
  v28[0] = 0;
  v28[1] = 0;
  *v16.i64 = CNTimeSpan::SetTimeSpan(v28, 0, v14, v15);
  v29[0] = CNTimeSpan::operator+(v30, v28, v16, v17);
  v29[1] = v18;
  v27[0] = 0;
  v27[1] = 0;
  *v19.i64 = a3;
  *v21.i64 = CNTimeSpan::SetTimeSpan(v27, 0, v19, v20);
  v23 = CNTimeSpan::operator+(v29, v27, v21, v22);
  if (v8)
  {
    v25 = 1;
  }

  else
  {
    v25 = (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v25 || !v23 && (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return v11 > v24;
  }

  if (v8 == v23)
  {
    return v11 > v24;
  }

  return v8 > v23;
}

void sub_1D0B9A458(uint64_t a1)
{
  v2 = (*(*(a1 + 8) + 8 * (*(a1 + 32) / 0x1AuLL)) + 152 * (*(a1 + 32) % 0x1AuLL));
  (**v2)(v2);
  v3 = vaddq_s64(*(a1 + 32), xmmword_1D0E76280);
  *(a1 + 32) = v3;
  if (v3.i64[0] >= 0x34uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 26;
  }
}

void sub_1D0B9A514(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B99264(v6, a3);
  *(v3 + 256) = *(v3 + 112);
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = &unk_1F4CEF688;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0x7FF8000000000000;
  LOBYTE(v18) = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  *(&v18 + 1) = 0x3FF0000000000000;
  v23 = 0;
  if (!raven::ActivityStateChecker::HandleEvent(*(v3 + 1832), v6, v7))
  {
    v4 = v21;
    *(v3 + 344) = v20;
    *(v3 + 360) = v4;
    *(v3 + 376) = v22;
    *(v3 + 392) = v23;
    v5 = v19;
    *(v3 + 312) = v18;
    *(v3 + 328) = v5;
    sub_1D0B967D8(v3);
  }
}

uint64_t raven::ActivityStateChecker::HandleEvent(raven::ActivityStateChecker *this, const raven::ActivityStateEvent *a2, raven::ActivityStateEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf,ActivityStateChecker, not configured");
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a3 + 56) = *(a2 + 56);
  *(a3 + 40) = v5;
  *(a3 + 24) = v4;
  *(a3 + 8) = v3;
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  *(a3 + 120) = *(a2 + 120);
  *(a3 + 104) = v8;
  *(a3 + 88) = v7;
  *(a3 + 72) = v6;
  v9 = *(a2 + 136);
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  *(a3 + 23) = *(a2 + 23);
  *(a3 + 168) = v11;
  *(a3 + 152) = v10;
  *(a3 + 136) = v9;
  if (*(a2 + 104) >= 0xAu)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, Warning: ActivityStateChecker,Invalid type detected in activity state integrity check.");
    return 0xFFFFFFFFLL;
  }

  v12 = *(a2 + 14);
  if (v12 < 0.0 || v12 > 1.0 || (*(a2 + 14) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,Invalid probability_unknown_");
    return 0xFFFFFFFFLL;
  }

  v13 = *(a2 + 15);
  if (v13 < 0.0 || v13 > 1.0 || (*(a2 + 15) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,Invalid probability_moving_");
    return 0xFFFFFFFFLL;
  }

  v14 = *(a2 + 16);
  if (v14 < 0.0 || v14 > 1.0 || (*(a2 + 16) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,Invalid probability_walking_");
    return 0xFFFFFFFFLL;
  }

  v15 = *(a2 + 17);
  if (v15 < 0.0 || v15 > 1.0 || (*(a2 + 17) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,Invalid probability_running_");
    return 0xFFFFFFFFLL;
  }

  v16 = *(a2 + 18);
  if (v16 < 0.0 || v16 > 1.0 || (*(a2 + 18) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,Invalid probability_cycling_");
    return 0xFFFFFFFFLL;
  }

  v17 = *(a2 + 19);
  if (v17 < 0.0 || v17 > 1.0 || (*(a2 + 19) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,Invalid probability_driving_");
    return 0xFFFFFFFFLL;
  }

  v18 = *(a2 + 20);
  if (v18 < 0.0 || v18 > 1.0 || (*(a2 + 20) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,Invalid probability_swimming_");
    return 0xFFFFFFFFLL;
  }

  v19 = *(a2 + 21);
  if (v19 < 0.0 || v19 > 1.0 || (*(a2 + 21) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,Invalid probability_wheelchair_");
    return 0xFFFFFFFFLL;
  }

  v20 = *(a2 + 22);
  if (v20 < 0.0 || v20 > 1.0 || (*(a2 + 22) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,Invalid probability_highspeed_");
    return 0xFFFFFFFFLL;
  }

  v21 = *(a2 + 23);
  if (v21 < 0.0 || v21 > 1.0 || (*(a2 + 23) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,Invalid probability_airborne_");
    return 0xFFFFFFFFLL;
  }

  if (fabs(v12 + v13 + v14 + v15 + v16 + v17 + v18 + v19 + v20 + v21 + -1.0) > 0.000000015)
  {
    v29 = 12;
    v28 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, ActivityStateChecker,activity state probabilities do not add to 1.0,sum error,%.3e");
    return 0xFFFFFFFFLL;
  }

  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA30C8);
  if (result)
  {
    if (*(result + 1368))
    {
      v24 = *(a2 + 104);
      if (v24 > 9)
      {
        v29 = 12;
        v28 = 4;
        (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf,ActivityStateChecker,Invalid activity type detected,%u");
        return 0xFFFFFFFFLL;
      }

      if (((1 << v24) & 0x3F3) == 0)
      {
        if (v24 == 2)
        {
          if (*(result + 1376) > sqrt(*(result + 1408)) + 5.11)
          {
            if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
            {
              v29 = 12;
              v28 = 1;
              (*(*a2 + 16))(a2);
              cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, Warning: ActivityStateChecker,Speed too large to raise walking activity state,user_speed_,%.2lf");
            }

LABEL_64:
            result = 0;
            *(a3 + 104) = 1;
            return result;
          }
        }

        else if (*(result + 1376) > sqrt(*(result + 1408)) + 13.47)
        {
          if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
          {
            v29 = 12;
            v28 = 1;
            (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, Warning: ActivityStateChecker,Speed too large to raise running activity state,user_speed_,%.2lf");
          }

          goto LABEL_64;
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
    {
      v29 = 12;
      v28 = 1;
      v25 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v29, &v28, "t,%.3lf, Warning: ActivityStateChecker,User speed invalid. Exiting with check passed return value.", v26 + v25);
    }

    return 0;
  }

  return result;
}

uint64_t ***sub_1D0B9AF58(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_1D0B9B010(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B99264(v5, a3);
  *&result = raven::RavenDeviceAttitudeActiveObject::HandleEvent(v3, v5).n128_u64[0];
  return result;
}

__n128 raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::ActivityStateEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 6920) == 1)
    {
      v2 = *(a2 + 8);
      v3 = *(a2 + 24);
      v4 = *(a2 + 40);
      *(this + 424) = *(a2 + 56);
      *(this + 423) = v4;
      *(this + 422) = v3;
      *(this + 421) = v2;
      v5 = *(a2 + 72);
      v6 = *(a2 + 88);
      v7 = *(a2 + 104);
      *(this + 428) = *(a2 + 120);
      *(this + 427) = v7;
      *(this + 426) = v6;
      *(this + 425) = v5;
      result = *(a2 + 136);
      v9 = *(a2 + 152);
      v10 = *(a2 + 168);
      *(this + 864) = *(a2 + 23);
      *(this + 431) = v10;
      *(this + 430) = v9;
      *(this + 429) = result;
    }

    else
    {
      *(this + 841) = &unk_1F4CEF688;
      v12 = *(a2 + 8);
      v13 = *(a2 + 24);
      v14 = *(a2 + 40);
      *(this + 424) = *(a2 + 56);
      *(this + 423) = v14;
      *(this + 422) = v13;
      *(this + 421) = v12;
      v15 = *(a2 + 72);
      v16 = *(a2 + 88);
      v17 = *(a2 + 104);
      *(this + 428) = *(a2 + 120);
      *(this + 427) = v17;
      *(this + 426) = v16;
      *(this + 425) = v15;
      result = *(a2 + 136);
      v18 = *(a2 + 152);
      v19 = *(a2 + 168);
      *(this + 864) = *(a2 + 23);
      *(this + 431) = v19;
      *(this + 430) = v18;
      *(this + 429) = result;
      *(this + 6920) = 1;
    }
  }

  else
  {
    v23 = 12;
    v22 = 3;
    (*(*this + 16))(__p);
    if (v21 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    cnprint::CNPrinter::Print(&v23, &v22, "Warning: %s is not configured yet.", v11);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void sub_1D0B9B1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0B9B214(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B99264(v11, a3);
  if (*(v3 + 224) == 1)
  {
    *v16 = *(v3 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v3 + 232), v16);
    if (raven::GnssMeasurementPreprocessor::HandleEvent((v3 + 232), v11))
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      v50[1] = 0;
      v50[2] = 0;
      v50[0] = &unk_1F4CEF598;
      v51 = 0;
      if (raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements((v3 + 232), v50))
      {
        sub_1D0C4499C(v3, v50);
      }

      v32[1] = 0;
      v32[2] = 0;
      v32[0] = &unk_1F4CEE9A8;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v41 = 0;
      v40 = 0;
      v42 = 0x7FF8000000000000;
      v43 = 0;
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      v49 = 0;
      v47 = 0;
      v48 = 0;
      if (raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent((v3 + 232), v32))
      {
        sub_1D0B9B7B4(v3, v32);
      }

      v16[1] = 0;
      v17 = 0.0;
      v16[0] = &unk_1F4CEE030;
      LOBYTE(v18) = 0;
      *(&v18 + 1) = 0;
      *&v19 = 0;
      BYTE8(v19) = 0;
      v20 = 0uLL;
      LOBYTE(v21) = 0;
      *(&v21 + 1) = 0;
      v22 = 0;
      v23 = 0x7FF8000000000000;
      v24 = 0;
      v25 = 0;
      v26 = &unk_1F4CD5A50;
      v27 = 0u;
      v28 = 0u;
      v29 = xmmword_1D0E76640;
      v30 = xmmword_1D0E76650;
      v31 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v3 + 232), v16))
      {
        v5 = *(v3 + 112);
        v4 = *(v3 + 120);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v16[1] = v5;
        v17 = v4;
        v22 = 0;
        v23 = 0x7FF8000000000000;
        v15 = 12;
        v14 = 2;
        sub_1D0B751F4(__p, "KlobucharParametersEvent");
        if (v13 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        cnprint::CNPrinter::Print(&v15, &v14, "t,%.3lf,RavenGnssPreprocessorActiveObject, Raising event - %s.", v5 + v4, v6);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1D0C47D0C(v3, v16);
      }

      v50[0] = &unk_1F4CEF598;
      v16[0] = &v59[4];
      sub_1D0BBBD80(v16);
    }

    else
    {
      LOWORD(v32[0]) = 12;
      LOBYTE(v50[0]) = 2;
      v7 = (*(v11[0] + 16))(v11);
      v9 = v8 + v7;
      (*(v11[0] + 24))(v16, v11);
      if (v17 >= 0.0)
      {
        v10 = v16;
      }

      else
      {
        v10 = v16[0];
      }

      cnprint::CNPrinter::Print(v32, v50, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v9, v10);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }
    }
  }
}

void sub_1D0B9B590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  *(v48 - 184) = v47;
  a42 = (v48 - 88);
  sub_1D0BBBD80(&a42);
  _Unwind_Resume(a1);
}

void raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime(cnprint::CNPrinter *a1, _OWORD *a2)
{
  if (*a1)
  {
    *(a1 + 137) = *a2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v5 = 12;
      v4 = 1;
      cnprint::CNPrinter::Print(&v5, &v4, "#gmp,UpdateCurrentFrameworkTime(CNTime), not configured");
    }
  }
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::ActivityStateEvent *a2)
{
  v2 = *this;
  if (v2)
  {
    v3 = *(a2 + 120);
    *(this + 888) = *(a2 + 104);
    *(this + 904) = v3;
    v4 = *(a2 + 136);
    v5 = *(a2 + 152);
    v6 = *(a2 + 168);
    *(this + 121) = *(a2 + 23);
    *(this + 936) = v5;
    *(this + 952) = v6;
    *(this + 920) = v4;
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v9 = 12;
    v8 = 1;
    cnprint::CNPrinter::Print(&v9, &v8, "#gmp,HandleEvent(ActivityState),not configured");
  }

  return v2;
}

BOOL raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent(raven::GnssMeasurementPreprocessor *this, raven::GNSSUTCParametersEvent *a2)
{
  if (*this)
  {
    result = cnnavigation::GNSSUTCParameters::IsValid((this + 248));
    if (result)
    {
      v5 = *(this + 152);
      v6 = *(this + 168);
      *(a2 + 40) = *(this + 184);
      *(a2 + 24) = v6;
      *(a2 + 8) = v5;
      v7 = *(this + 200);
      v8 = *(this + 216);
      v9 = *(this + 232);
      *(a2 + 104) = *(this + 248);
      *(a2 + 88) = v9;
      *(a2 + 72) = v8;
      *(a2 + 56) = v7;
      v10 = *(this + 264);
      v11 = *(this + 280);
      v12 = *(this + 296);
      *(a2 + 42) = *(this + 78);
      *(a2 + 152) = v12;
      *(a2 + 136) = v11;
      *(a2 + 120) = v10;
      return 1;
    }
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v14 = 12;
      v13 = 1;
      cnprint::CNPrinter::Print(&v14, &v13, "#gmp,GetGpsUTCParametersEvent,not configured");
    }

    return 0;
  }

  return result;
}

void sub_1D0B9BA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements(uint64_t **this, uint64_t **a2)
{
  if ((*this & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v9 = 12;
      v8 = 1;
      cnprint::CNPrinter::Print(&v9, &v8, "#gmp,GetPreprocessedGnssMeasurements,not configured");
    }

    return 0;
  }

  if (*(this + 16) != 1)
  {
    return 0;
  }

  v3 = *(this + 2);
  *(a2 + 3) = *(this + 3);
  *(a2 + 1) = v3;
  v4 = *(this + 4);
  v5 = *(this + 5);
  v6 = *(this + 6);
  a2[11] = this[14];
  *(a2 + 9) = v6;
  *(a2 + 7) = v5;
  *(a2 + 5) = v4;
  if (this + 3 != a2)
  {
    sub_1D0BBD668(a2 + 12, this[15], this[16], (this[16] - this[15]) >> 4);
  }

  *(this + 16) = 0;
  return 1;
}

void sub_1D0B9BB9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B94708(&v40, a3);
  if (((*(*v3 + 88))(v3, v4) & 1) == 0)
  {
    LOWORD(v42) = 12;
    LOBYTE(v45) = 2;
    *__src = (*(v40 + 16))(&v40);
    *&__src[8] = v21;
    (*(v40 + 24))(&__p, &v40);
    if (v47[15] >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, __src, "RavenConvergenceEstimatorActiveObject not configured, cannot handle event, %s", p_p);
    if (*(v3 + 263) >= 0)
    {
      v23 = (v3 + 240);
    }

    else
    {
      v23 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v42, &v45, "%s", v23);
    if ((v47[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    return;
  }

  if ((*(v3 + 3026) & 1) == 0 && *(v3 + 288) == 1)
  {
    v5 = (*(v40 + 16))(&v40);
    v7 = v6;
    v8 = v6;
    v9 = *(v3 + 232);
    v10.i64[0] = *(v9 + 832);
    *v11.i64 = *(v9 + 896) + *(v9 + 872) + *v10.i64;
    *v47 = 0;
    __p = 0;
    *v12.i64 = CNTimeSpan::SetTimeSpan(&__p, 0, v11, v10);
    v14 = CNTimeSpan::operator+((v3 + 296), &__p, v12, v13);
    if (v5)
    {
      v16 = 1;
    }

    else
    {
      v16 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    if (v16 && (v14 || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v5 != v14)
    {
      if (v5 < v14)
      {
        goto LABEL_13;
      }
    }

    else if (v8 <= v15)
    {
LABEL_13:
      __p = &unk_1F4CEF7A8;
      memcpy(v47, (v3 + 320), sizeof(v47));
      v47[201] = 1;
      raven::RavenConvergenceEstimator::HandleEvent((v3 + 2968), &__p);
      if (v17 && cnprint::CNPrinter::GetLogLevel(v17) <= 1)
      {
        LOWORD(v42) = 12;
        LOBYTE(v45) = 1;
        *__src = (*(v40 + 16))(&v40);
        *&__src[8] = v18;
        v19 = cnprint::CNLogFormatter::FormatWarning(v3 + 240, __src, "Could not initialize from external solution");
        if (*(v3 + 263) >= 0)
        {
          v20 = v19;
        }

        else
        {
          v20 = *(v3 + 240);
        }

        cnprint::CNPrinter::Print(&v42, &v45, "%s", v20);
      }
    }

    *(v3 + 288) = 0;
    *(v3 + 296) = 0;
    *(v3 + 304) = 0xFFF0000000000000;
    sub_1D0BAD0C8(&__p);
    memcpy((v3 + 320), v47, 0xA51uLL);
  }

  v45 = raven::RavenConvergenceEstimator::HandleTimeMarkEvent((v3 + 2968), &v40);
  v24 = sub_1D0BAAFCC(&v45);
  if (!v24)
  {
    goto LABEL_40;
  }

  if (cnprint::CNPrinter::GetLogLevel(v24) <= 1)
  {
    LOWORD(v42) = 12;
    LOBYTE(v43) = 1;
    *__src = (*(v40 + 16))(&v40);
    *&__src[8] = v25;
    (*(v40 + 24))(&__p, &v40);
    v26 = v47[15] >= 0 ? &__p : __p;
    v27 = cnprint::CNLogFormatter::FormatWarning(v3 + 240, __src, "Error handling event of type %s,code,%d", v26, v45);
    v28 = *(v3 + 263) >= 0 ? v27 : *(v3 + 240);
    cnprint::CNPrinter::Print(&v42, &v43, "%s", v28);
    if ((v47[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  if ((v45 & 4) != 0)
  {
    *__src = 12;
    LOBYTE(v42) = 2;
    __p = (*(v40 + 16))(&v40);
    *v47 = v30;
    cnprint::CNLogFormatter::FormatWarning(v3 + 240, &__p, "Resetting filter due to prediction error");
    if (*(v3 + 263) >= 0)
    {
      v31 = (v3 + 240);
    }

    else
    {
      v31 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(__src, &v42, "%s", v31);
    v29 = 1;
  }

  else
  {
LABEL_40:
    v29 = 0;
  }

  if (*(v3 + 3026) == 1 && (v45 & 2) == 0)
  {
    if (!v29)
    {
      return;
    }

    goto LABEL_48;
  }

  sub_1D0BAD0C8(&__p);
  memset(&v47[16], 0, 72);
  *v47 = *(v3 + 112);
  *&v47[88] = 0x7FF8000000000000;
  raven::RavenConvergenceEstimator::GetRavenStatus(__src, (v3 + 2968));
  memcpy(&v47[96], __src, 0x428uLL);
  if (v47[200] == *(v3 + 3024))
  {
    raven::RavenConvergenceEstimator::GetRavenSolution(__src, (v3 + 2968));
    memcpy(&v47[1160], __src, 0x360uLL);
    raven::RavenEstimator::GetRavenActivity(__src, (v3 + 2968));
    memcpy(&v47[2024], __src, 0x269uLL);
    if (v47[201] == 1)
    {
      LOWORD(v42) = 12;
      LOBYTE(v43) = 2;
      *__src = (*(v40 + 16))(&v40);
      *&__src[8] = v34;
      v35 = cnprint::CNLogFormatter::FormatWarning(v3 + 240, __src, "Estimator unhealthy; resetting...");
      if (*(v3 + 263) >= 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v42, &v43, "%s", v36);
    }

    else if ((v29 & 1) == 0)
    {
      if (v47[1976] == 1)
      {
        v38 = *&v47[2000];
        if (*&v47[2000] > 0.0)
        {
          v32.i64[0] = *&v47[1984];
          *__src = 0;
          *&__src[8] = 0;
          CNTimeSpan::SetTimeSpan(__src, 0, v32, v33);
          v43 = sqrt(v38);
          v42 = *__src;
          sub_1D0BAE3C4(&__p, v41, &v42, &v43, *__src, v39);
          goto LABEL_65;
        }
      }

      v37 = 0;
LABEL_63:
      sub_1D0BE3854(&__p, v41, v32, v33);
      if (v37)
      {
        v47[201] = 1;
        raven::RavenConvergenceEstimator::Reset((v3 + 2968));
      }

LABEL_65:
      sub_1D0BAE448(v3, &__p);
    }

    v37 = 1;
    goto LABEL_63;
  }

  if (v29)
  {
LABEL_48:
    raven::RavenConvergenceEstimator::Reset((v3 + 2968));
  }
}

uint64_t raven::RavenConvergenceEstimator::HandleTimeMarkEvent(raven::RavenConvergenceEstimator *this, const raven::TimeMarkEvent *a2)
{
  v2 = *(a2 + 8);
  *(this + 152) = *(a2 + 24);
  *(this + 136) = v2;
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  *(this + 216) = *(a2 + 88);
  *(this + 200) = v5;
  *(this + 184) = v4;
  *(this + 168) = v3;
  if (*(this + 57) != 1)
  {
    return 32;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v8 = (*(*a2 + 16))(a2);
  v10 = v9;
  v55[0] = v8;
  *&v55[1] = v9;
  v49[0] = *(this + 5);
  v12 = CNTimeSpan::operator-(v55, v49, v49[0], v11);
  v15 = v14 + v12;
  if (v15 >= 0.0)
  {
    v22 = *(this + 146);
    v13.i64[0] = *(v22 + 872);
    v23 = vcvtpd_s64_f64(v15 / *v13.i64);
    *(this + 328) = 0u;
    *(this + 344) = 0u;
    *(this + 360) = 0u;
    *(this + 376) = 0u;
    *(this + 392) = 0u;
    *(this + 408) = 0u;
    *(this + 424) = 0u;
    *(this + 440) = 0u;
    *(this + 456) = 0u;
    *(this + 472) = 0u;
    *(this + 488) = 0u;
    *(this + 504) = 0u;
    *(this + 520) = 0u;
    *(this + 536) = 0u;
    *(this + 552) = 0u;
    *(this + 568) = 0u;
    *(this + 584) = 0u;
    *(this + 600) = 0u;
    *(this + 616) = 0u;
    *(this + 632) = 0u;
    *(this + 648) = 0u;
    *(this + 664) = 0u;
    *(this + 680) = 0u;
    *(this + 696) = 0u;
    *(this + 708) = 0u;
    v24 = *(v22 + 872);
    v54[0] = 0;
    v54[1] = 0;
    CNTimeSpan::SetTimeSpan(v54, 0, v24, v13);
    v25.i64[0] = *(v22 + 880);
    v53[0] = 0;
    v53[1] = 0;
    CNTimeSpan::SetTimeSpan(v53, 0, v25, v26);
    v21 = 0;
    v28 = __OFSUB__(v23, 1);
    v29 = v23 - 1;
    if (v29 < 0 == v28)
    {
      v30 = v10;
      if (v8)
      {
        v31 = 1;
      }

      else
      {
        v31 = (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      }

      v32 = v31;
      v46 = vdupq_n_s64(0x7FF8000000000000uLL);
      while (1)
      {
        if ((v52 = *(this + 5), v51[0] = CNTimeSpan::operator+(&v52, v54, v52, v27), v51[1] = v33, (v36 = CNTimeSpan::operator+(v51, v53, v34, v35)) != 0) || (*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v32)
        {
          v39 = v36 == v8 ? v30 <= v37 : v36 > v8;
        }

        else
        {
          v39 = v30 <= v37;
        }

        v40 = (v39 ? v55 : v51);
        v50 = *v40;
        v49[0] = 0uLL;
        *(&v49[1] + 8) = v46;
        *(&v49[2] + 8) = v46;
        EstimatorPredictAndUpdateArguments = raven::RavenConvergenceEstimator::GetEstimatorPredictAndUpdateArguments(this, v52.i64, &v50, v49, *v46.i64, v38);
        if (!EstimatorPredictAndUpdateArguments)
        {
          break;
        }

        v47 = raven::RavenConvergenceEstimator::PredictAndUpdate(this, v49);
        v21 |= v47;
        if (sub_1D0BAAFCC(&v47))
        {
          return v21;
        }

        if (v29)
        {
          v42 = v39;
        }

        else
        {
          v42 = 1;
        }

        --v29;
        if (v42)
        {
          goto LABEL_42;
        }
      }

      if (cnprint::CNPrinter::GetLogLevel(EstimatorPredictAndUpdateArguments) <= 1)
      {
        LOWORD(v47) = 12;
        v48 = 1;
        v43 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v55, "Could not get predict and update arguments");
        if (*(this + 2735) >= 0)
        {
          v44 = v43;
        }

        else
        {
          v44 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v47, &v48, "%s", v44);
      }
    }

LABEL_42:
    raven::RavenEstimator::StoreHistoricalSolution(this);
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
    {
      LOWORD(v54[0]) = 12;
      LOBYTE(v53[0]) = 1;
      v49[0].i64[0] = (*(*a2 + 16))(a2);
      v49[0].i64[1] = v16;
      v17 = *(this + 11) + *(this + 10);
      v18 = (*(*a2 + 16))(a2);
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, v49, "Estimator time is greater than event time,%.3lf > %.3lf", v17, v19 + v18);
      if (*(this + 2735) >= 0)
      {
        v20 = this + 2712;
      }

      else
      {
        v20 = *(this + 339);
      }

      cnprint::CNPrinter::Print(v54, v53, "%s", v20);
    }

    return 64;
  }

  return v21;
}

uint64_t raven::RavenConvergenceEstimator::PredictAndUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 58) != 1)
  {
    return 32;
  }

  v3 = (a1 + 8560);
  v96 = *a2;
  v4 = *(a2 + 16);
  if (v4 >= 0.0)
  {
    if (v4 <= 0.0)
    {
      return 0;
    }

    if (sub_1D0B9D420(v96.i64, (a1 + 8568)))
    {
      *v92 = 2;
      LOBYTE(v87) = 4;
      cnprint::CNPrinter::Print(v92, &v87, "WARNING: MeasurementAccumulator.LockAccumulator() called with bad t_end.");
LABEL_54:
      sub_1D0BAA9CC(v3);
      *v3 = 0;
      sub_1D0BADC18(v3, (a1 + 80));
      return 128;
    }

    v8 = v96;
    *(a1 + 8584) = v96;
    v9 = CNTimeSpan::operator-((a1 + 8584), (a1 + 8568), v8, v7);
    v12 = *(a1 + 14496);
    if (v12 >= 1)
    {
      v13 = 0;
      *v11.i64 = v9;
      v14 = v10 + v9;
      v15 = *(a1 + 8656);
      while (1)
      {
        *v92 = *v15;
        *v11.i64 = CNTimeSpan::operator-(v92, (a1 + 8568), *v92, v11);
        v17 = (v16 + *v11.i64) / v14;
        if (v17 < 0.0)
        {
          break;
        }

        *(*(a1 + 12216) + v13) = v17;
        v13 += 8;
        ++v15;
        if (8 * v12 == v13)
        {
          goto LABEL_14;
        }
      }

      LOWORD(v87) = 2;
      LOBYTE(v82) = 2;
      cnprint::CNPrinter::Print(&v87, &v82, "WARNING: MeasurementAccumulator.LockAccumulator() called with bad t_end.");
      goto LABEL_54;
    }

LABEL_14:
    *(a1 + 20464) = 87;
    *(a1 + 17376) = xmmword_1D0E84400;
    *(a1 + 18808) = xmmword_1D0E84400;
    *(a1 + 19200) = xmmword_1D0E84400;
    *(a1 + 19936) = xmmword_1D0E84400;
    *(a1 + 19984) = xmmword_1D0E84400;
    *(a1 + 20376) = xmmword_1D0E84400;
    *(a1 + 20424) = xmmword_1D0E84400;
    *(a1 + 20480) = xmmword_1D0E84400;
    *(a1 + 21216) = xmmword_1D0E84400;
    *&v92[16] = 0;
    *&v92[8] = 0;
    *v92 = &v92[8];
    if (v12 < 1)
    {
      v19 = 0;
      goto LABEL_58;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    while (1)
    {
      if (*(*(a1 + 12216) + 8 * v18) <= 1.0)
      {
        ++v21;
        v22 = *(*(a1 + 11480) + 4 * v18);
        v23 = v22 + v20;
        if (v19 <= 86 && v23 < 88)
        {
          v50 = v20;
          v49 = v19;
          goto LABEL_20;
        }

        v82 = 0;
        v30 = *v92;
        if (*v92 == &v92[8])
        {
          goto LABEL_70;
        }

        v31 = 0;
        v32 = -1;
        do
        {
          v33 = *(v30 + 10);
          if (v33 > v32)
          {
            v31 = *(v30 + 4);
            v82 = v31;
            v32 = v33;
          }

          v34 = *(v30 + 1);
          if (v34)
          {
            do
            {
              v35 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v35 = *(v30 + 2);
              v36 = *v35 == v30;
              v30 = v35;
            }

            while (!v36);
          }

          v30 = v35;
        }

        while (v35 != &v92[8]);
        if (!v31)
        {
LABEL_70:
          LOWORD(v87) = 2;
          LOBYTE(v75) = 4;
          cnprint::CNPrinter::Print(&v87, &v75, "MeasurementAccumulator.LockAccumulator() most_common_measurement_type == nullptr");
          goto LABEL_56;
        }

        v48 = v21;
        if (*(*(a1 + 14536) + 8 * v18) != v31)
        {
          if (v19 < 1)
          {
LABEL_55:
            LOWORD(v87) = 2;
            LOBYTE(v75) = 4;
            cnprint::CNPrinter::Print(&v87, &v75, "MeasurementAccumulator.LockAccumulator() found_idx == false");
LABEL_56:
            sub_1D0B99218(*&v92[8]);
            goto LABEL_54;
          }

          v37 = v19;
          while (*(*(a1 + 20504) + 8 * --v37) != v31)
          {
            if (v37 <= 0)
            {
              goto LABEL_55;
            }
          }

          if (v23 - *(*(a1 + 18832) + 4 * v37) <= 87)
          {
            v49 = v19 - 1;
            v51 = v20;
            v87 = &v82;
            v38 = sub_1D0BBCAA4(v92, v31, &v87);
            --*(v38 + 10);
            v50 = v51 - *(*(a1 + 18832) + 4 * v37);
            v19 = v37;
            v21 = v48;
LABEL_20:
            *(*(a1 + 17400) + 16 * v19) = *(*(a1 + 8656) + 16 * v18);
            *(*(a1 + 18832) + 4 * v19) = v22;
            *(*(a1 + 19224) + 8 * v19) = *(*(a1 + 12216) + 8 * v18);
            sub_1D0B894B0(*(a1 + 19960) + (v19 << 6), *(a1 + 13648) + (v18 << 6));
            *(*(a1 + 20008) + 4 * v19) = *(*(a1 + 13696) + 4 * v18);
            sub_1D0B894B0(*(a1 + 20400) + (v19 << 6), *(a1 + 14432) + (v18 << 6));
            sub_1D0B894B0(*(a1 + 20448) + 112 * v19, *(a1 + 14480) + 112 * v18);
            *(*(a1 + 20504) + 8 * v19) = *(*(a1 + 14536) + 8 * v18);
            *(*(a1 + 21240) + 8 * v19) = *(*(a1 + 15968) + 8 * v18);
            v24 = *&v92[8];
            v25 = *(*(a1 + 14536) + 8 * v18);
            if (!*&v92[8])
            {
              goto LABEL_28;
            }

            v26 = &v92[8];
            do
            {
              v27 = *(v24 + 32);
              v28 = v27 >= v25;
              v29 = v27 < v25;
              if (v28)
              {
                v26 = v24;
              }

              v24 = *(v24 + 8 * v29);
            }

            while (v24);
            if (v26 != &v92[8] && v25 >= *(v26 + 4))
            {
              ++*(v26 + 10);
            }

            else
            {
LABEL_28:
              v87 = (*(a1 + 14536) + 8 * v18);
              *(sub_1D0BBCAA4(v92, v25, &v87) + 10) = 1;
            }

            v19 = v49 + 1;
            v20 = v50 + v22;
            LODWORD(v12) = *(a1 + 14496);
            goto LABEL_49;
          }
        }

        v21 = v48;
      }

LABEL_49:
      if (++v18 >= v12)
      {
        if (v21 > v19)
        {
          LOWORD(v87) = 2;
          LOBYTE(v82) = 2;
          cnprint::CNPrinter::Print(&v87, &v82, "t,%.3lf,WARNING: MeasurementAccumulator.LockAccumulator() truncating measurements,nh,%d,eligible,%d,num_truncated,%d", *&v96.i64[1] + v96.i64[0], v19, v21, v21 - v19);
        }

LABEL_58:
        *(a1 + 20464) = v19;
        *(a1 + 17376) = v19;
        *(a1 + 17380) = 1;
        *(a1 + 17384) = v19;
        *(a1 + 17388) = v19;
        *(a1 + 18808) = v19;
        *(a1 + 18812) = 1;
        *(a1 + 18816) = v19;
        *(a1 + 18820) = v19;
        *(a1 + 19200) = v19;
        *(a1 + 19204) = 1;
        *(a1 + 19208) = v19;
        *(a1 + 19212) = v19;
        *(a1 + 19936) = v19;
        *(a1 + 19940) = 1;
        *(a1 + 19944) = v19;
        *(a1 + 19948) = v19;
        *(a1 + 19984) = v19;
        *(a1 + 19988) = 1;
        *(a1 + 19992) = v19;
        *(a1 + 19996) = v19;
        *(a1 + 20376) = v19;
        *(a1 + 20380) = 1;
        *(a1 + 20384) = v19;
        *(a1 + 20388) = v19;
        *(a1 + 20424) = v19;
        *(a1 + 20428) = 1;
        *(a1 + 20432) = v19;
        *(a1 + 20436) = v19;
        *(a1 + 20480) = v19;
        *(a1 + 20484) = 1;
        *(a1 + 20488) = v19;
        *(a1 + 20492) = v19;
        *(a1 + 21216) = v19;
        *(a1 + 21220) = 1;
        *(a1 + 21224) = v19;
        *(a1 + 21228) = v19;
        v3[1] = 1;
        sub_1D0B99218(*&v92[8]);
        if (!cnprint::CNPrinter::GetLogLevel(v39))
        {
          *v92 = 12;
          LOBYTE(v87) = 0;
          v40 = *&v96.i64[1] + v96.i64[0];
          v41 = sub_1D0B9D490(v3);
          cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Predict,%.2lf,dt,%.3lf,meas_types,%d", v40, v4, v41);
          if (*(a1 + 2735) >= 0)
          {
            v42 = (a1 + 2712);
          }

          else
          {
            v42 = *(a1 + 2712);
          }

          cnprint::CNPrinter::Print(v92, &v87, "%s", v42);
        }

        v93 = 0x800000008;
        *&v92[8] = xmmword_1D0E84510;
        *v92 = &unk_1F4CE43B0;
        v94 = &v95;
        if (sub_1D0B9E8C4(a1))
        {
          sub_1D0BAA9CC(v3);
          *v3 = 0;
          sub_1D0BADC18(v3, (a1 + 80));
          return 256;
        }

        v89 = 0x200000002;
        v88 = xmmword_1D0E83F70;
        v87 = &unk_1F4CE14D8;
        v90 = &v91;
        v91 = xmmword_1D0E84550;
        v84 = 0x100000002;
        v83 = xmmword_1D0E83F60;
        v82 = &unk_1F4CE1520;
        v85 = v86;
        v86[0] = sub_1D0BA4C04;
        v86[1] = sub_1D0BA55E4;
        v80 = v4;
        v81 = v4;
        v77 = 0x100000002;
        v76 = xmmword_1D0E83F60;
        v75 = &unk_1F4CE15A8;
        v78 = v79;
        v79[0] = &v81;
        v79[1] = &v80;
        v72 = 0x100000002;
        v71 = xmmword_1D0E83F60;
        v70 = &unk_1F4CE0EA8;
        v73 = &v74;
        v74 = 0x200000006;
        v67 = 0x100000002;
        v66 = xmmword_1D0E83F60;
        v65 = &unk_1F4CEBB48;
        v68 = v69;
        v69[0] = sub_1D0BF8A30;
        v69[1] = sub_1D0BF9010;
        v63 = v4;
        v64 = v4;
        v60 = 0x100000002;
        v58 = &unk_1F4CE15A8;
        v59 = xmmword_1D0E83F60;
        v61 = v62;
        v62[0] = &v64;
        v62[1] = &v63;
        v57 = v4;
        if ((v3[1] & 1) == 0)
        {
          sub_1D0BAA988(v3, (a1 + 80));
          return 512;
        }

        if (sub_1D0B9D490(v3))
        {
          sub_1D0BE0798(a1 + 2864, v92, a1 + 19192, a1 + 19928, a1 + 20416, &v87, &v82, &v75, a1 + 20472, a1 + 21208, &v70, &v65, &v58);
        }

        v43 = sub_1D0BA19BC(a1 + 2864);
        v5 = 2;
        memset(v56, 0, sizeof(v56));
        sub_1D0BA5D5C(v56, *(a1 + 4520), *(a1 + 4528), (*(a1 + 4528) - *(a1 + 4520)) >> 5);
        memset(v55, 0, sizeof(v55));
        sub_1D0BA5D5C(v55, *(a1 + 4496), *(a1 + 4504), (*(a1 + 4504) - *(a1 + 4496)) >> 5);
        memset(v54, 0, sizeof(v54));
        sub_1D0BA5D5C(v54, *(a1 + 4544), *(a1 + 4552), (*(a1 + 4552) - *(a1 + 4544)) >> 5);
        if (v43 > 0x16)
        {
          goto LABEL_81;
        }

        if (((1 << v43) & 0x440408) == 0)
        {
          if (((1 << v43) & 0x301) != 0)
          {
            sub_1D0BAA7A4(a1 + 8488, &v57);
            *(a1 + 80) = v96;
            v52 = 0uLL;
            if (!sub_1D0BADB3C(v3, &v52))
            {
              *(a1 + 96) = v52;
            }

LABEL_88:
            sub_1D0BAA988(v3, &v96);
            *&v52 = v54;
            sub_1D0BA5F70(&v52);
            v54[0] = v55;
            sub_1D0BA5F70(v54);
            v55[0] = v56;
            sub_1D0BA5F70(v55);
            return v5;
          }

          if (((1 << v43) & 0x300000) != 0)
          {
            LOWORD(v52) = 12;
            v53 = 4;
            v44 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, &v96, "Resetting due to prediction error code %d", v43);
            if (*(a1 + 2735) >= 0)
            {
              v45 = v44;
            }

            else
            {
              v45 = *(a1 + 2712);
            }

            cnprint::CNPrinter::Print(&v52, &v53, "%s", v45);
            v5 = 6;
            goto LABEL_88;
          }

LABEL_81:
          v5 = 3;
        }

        LOWORD(v52) = 12;
        v53 = 4;
        v46 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, &v96, "Unexpected predict and update return code %d", v43);
        if (*(a1 + 2735) >= 0)
        {
          v47 = v46;
        }

        else
        {
          v47 = *(a1 + 2712);
        }

        cnprint::CNPrinter::Print(&v52, &v53, "%s", v47);
        goto LABEL_88;
      }
    }
  }

  sub_1D0BAA9CC(a1 + 8560);
  *v3 = 0;
  sub_1D0BADC18(v3, (a1 + 80));
  return 64;
}

void sub_1D0B9D390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char ***a19, uint64_t a20, uint64_t a21, char **a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, uint64_t a27, char a28)
{
  a19 = &a22;
  sub_1D0BA5F70(&a19);
  a22 = &a25;
  sub_1D0BA5F70(&a22);
  a25 = &a28;
  sub_1D0BA5F70(&a25);
  _Unwind_Resume(a1);
}

BOOL sub_1D0B9D420(double *a1, double *a2)
{
  v2 = *a1;
  if (*a1 || (v3 = a1[1], (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
  {
    v4 = *a2;
    if (!*a2)
    {
      v5 = a2[1];
      if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v6 = a1[1] > v5;
        return !v6;
      }
    }

    if (v2 != v4)
    {
      return v2 < v4;
    }

    v3 = a1[1];
  }

  v6 = v3 > a2[1];
  return !v6;
}

uint64_t sub_1D0B9D490(uint64_t a1)
{
  if (*(a1 + 1))
  {
    return *(a1 + 11904);
  }

  v6 = v1;
  v7 = v2;
  v5 = 2;
  v4 = 2;
  cnprint::CNPrinter::Print(&v5, &v4, "WARNING: MeasurementAccumulator.NumberLocked() called on unlocked accumulator.");
  return 0;
}

void sub_1D0B9D4E4(uint64_t a1, raven::RavenMapVectorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(v4, a3);
  raven::RavenMapVectorActiveObject::HandleEvent(v3, v4);
}

void raven::RavenMapVectorActiveObject::HandleEvent(raven::RavenMapVectorActiveObject *this, const raven::TimeMarkEvent *a2)
{
  *&v29 = (*(*a2 + 16))(a2);
  *(&v29 + 1) = v4;
  raven::RavenMapVectorActiveObject::RaiseTurnStateEvent(this, &v29);
  if (*(this + 808) != 1)
  {
    return;
  }

  if ((*(this + 1096) & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = CNTimeSpan::operator-(&v29, this + 138, v5, v6);
  if (v8 + v7 < *(*(this + 29) + 3152))
  {
    return;
  }

  v27 = (*(*(this + 102) + 16))();
  *&v28[0] = v9;
  *v12.i64 = CNTimeSpan::operator-(&v29, &v27, v10, v11);
  v14 = v13 + *v12.i64;
  v15 = *(this + 29);
  v16.i64[0] = *(v15 + 3144);
  if (v13 + *v12.i64 > *v16.i64)
  {
    if (*(this + 808) == 1)
    {
      *(this + 808) = 0;
    }

    *(this + 513) = 0x7FF0000000000000;
    *(this + 514) = 0;
    *(this + 515) = 0x7FF8000000000000;
    *(this + 4128) = 0;
    return;
  }

  if (*(this + 4128) != 1)
  {
    return;
  }

  v17 = CNTimeSpan::operator-(&v29, this + 514, v16, v12);
  v19 = v18 + v17;
  if (v19 <= 1.0)
  {
    if (fabs(*(this + 513)) > *(v15 + 3160))
    {
      if (!cnprint::CNPrinter::GetLogLevel(v17))
      {
        LOWORD(v27) = 12;
        LOBYTE(v25[0]) = 0;
        v20 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v27, v25, "t,%.3lf,MapVectorAO: Failed to re-inject map vector assistance. accumulatedRotation,%.2lf,map vector age,%.2lf,", v21 + v20, *(this + 513), v14);
      }

      if (*(this + 808) == 1)
      {
        *(this + 808) = 0;
      }

      *(this + 513) = 0x7FF0000000000000;
      *(this + 514) = 0;
      *(this + 515) = 0x7FF8000000000000;
      *(this + 4128) = 0;
      return;
    }

    if (*(this + 808))
    {
      v27 = &unk_1F4CEEB40;
      memcpy(v28, this + 824, 0x10CuLL);
      v28[0] = v29;
      memset(&v28[1], 0, 72);
      *(&v28[5] + 1) = 0x7FF8000000000000;
      v26 = 0;
      memset(&v25[1], 0, 64);
      v25[0] = v29;
      memset(&v28[7], 0, 72);
      v28[6] = v29;
      *(&v28[11] + 1) = 0x7FF8000000000000;
      v24 = *(this + 1096);
      *(this + 69) = v29;
      if ((v24 & 1) == 0)
      {
        *(this + 1096) = 1;
      }

      sub_1D0DD4390(this, &v27);
    }

LABEL_23:
    __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
  }

  if (!cnprint::CNPrinter::GetLogLevel(v17))
  {
    LOWORD(v27) = 12;
    LOBYTE(v25[0]) = 0;
    v22 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v27, v25, "t,%.3lf,MapVectorAO: accumulated device rotation age is too large to be used to determine if the device has rotated too far. Not re-raising map vector event. Age,%.2lf", v23 + v22, v19);
  }
}

void raven::RavenMapVectorActiveObject::RaiseTurnStateEvent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4176);
  if (v2 && v2 >= *(a1 + 4208))
  {
    v13[0] = *(a1 + 4192);
    memset(&v13[1], 0, 64);
    v16 = v13[0];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = &unk_1F4CEF5F8;
    v23 = 0;
    v26 = INFINITY;
    v24 = 1.0;
    v25 = 0uLL;
    v14 = 0;
    v17 = 0u;
    v21 = 0;
    v22 = 0x7FF8000000000000;
    if (*(a1 + 1120) == 1)
    {
      v5 = *(a1 + 1232);
      if (v5 > 3 || v5 == 1)
      {
        v26 = *(a1 + 4184) / v2;
        v6 = fabs(v26);
        v7 = 0.0;
        if (*(a1 + 4088) == 1)
        {
          v7 = *(a1 + 4096) + *(a1 + 4096);
        }

        v8 = *(a1 + 232);
        if (v6 <= v8[404] - v7)
        {
          v23 = 1;
          *&v25 = 0x3FE570A3D70A3D71;
          if (v6 <= v8[405] - v7)
          {
            *&v25 = 0x3FF0000000000000;
            v10 = 1.0;
          }

          else
          {
            v10 = 0.67;
          }

          *(&v25 + 1) = 1.0 - v10;
          v11 = 1.0 - (1.0 - v10);
        }

        else
        {
          v23 = 2;
          *(&v25 + 1) = 0x3FE570A3D70A3D71;
          if (v6 >= v8[403] - v7)
          {
            *(&v25 + 1) = 0x3FF0000000000000;
            v9 = 1.0;
          }

          else
          {
            v9 = 0.67;
          }

          v11 = 1.0 - v9;
          *&v25 = 1.0 - v9;
          v10 = 1.0 - v9;
        }

        v24 = v11 - v10;
        if (!cnprint::CNPrinter::GetLogLevel(a1))
        {
          LOWORD(v13[0]) = 12;
          v12 = 0;
          cnprint::CNPrinter::Print(v13, &v12, "t,%.3lf,MapVectorAO:TurnState,average_absolute_vertical_rotation_rate,%.2lf,turn_state,%u,probability,t,%.2lf,nt,%.2lf,uk,%.2lf,queue_size,%zu", *(a2 + 8) + *a2, v6, v23, *(&v25 + 1), *&v25, v24, *(a1 + 4176));
        }
      }
    }

    operator new();
  }
}

void sub_1D0B9DDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_1D0B7CAB8(a18);
  }

  sub_1D0B7CAB8(v18);
  _Unwind_Resume(a1);
}

void sub_1D0B9DE50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(&v37, a3);
  v4 = *(v3 + 1240);
  v52 = *(v3 + 1256);
  v48 = *(v3 + 1192);
  v5 = *(v3 + 1288);
  *v53 = *(v3 + 1272);
  *&v53[16] = v5;
  v6 = *(v3 + 1224);
  v49 = *(v3 + 1208);
  v50 = v6;
  v51 = v4;
  v7 = *(v3 + 1304);
  v46 = &unk_1F4CEF538;
  *&v53[32] = v7;
  v52 = v43;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v47 = v38;
  v8 = v53[0];
  if (v53[0] > 3u || v53[0] == 1)
  {
    v9 = *(v3 + 280);
    if (v9)
    {
      v10 = *(*(v3 + 248) + 8 * ((v9 + *(v3 + 272) - 1) / 0x14uLL)) + 200 * ((v9 + *(v3 + 272) - 1) % 0x14uLL);
      v59 = (*(*v10 + 16))(v10);
      *&v60 = v11;
      v12 = *(*(v3 + 248) + 8 * (*(v3 + 272) / 0x14uLL)) + 200 * (*(v3 + 272) % 0x14uLL);
      v64 = (*(*v12 + 16))(v12);
      *&v65 = v13;
      v16 = CNTimeSpan::operator-(&v59, &v64, v14, v15);
      v18 = fabs(v17 + v16);
      if (v18 > 0.45)
      {
        v19 = *(v3 + 272);
        v20 = *(v3 + 280) + v19 - 1;
        v21 = *(v3 + 248);
        v22 = *(v21 + 8 * (v20 / 0x14));
        cnrotation::Inv(&v59, (*(v21 + 8 * (v19 / 0x14)) + 200 * (v19 % 0x14) + 168));
        cnrotation::Cat((v22 + 200 * (v20 % 0x14) + 168), &v59, v45);
        cnrotation::CNRotation::RotationVector(v44, v45);
        v66 = 0x100000003;
        v64 = &unk_1F4CDEB28;
        v65 = xmmword_1D0E7DCC0;
        v67 = &v68;
        v61 = 0x100000134;
        v60 = xmmword_1D0E7DD20;
        v59 = &unk_1F4CDEC90;
        v62 = &v63;
        v56 = 0x100000003;
        v55 = xmmword_1D0E7DCC0;
        v54 = &unk_1F4CDEB28;
        v57 = &v58;
        sub_1D0BFB1AC(v44, &v64, &v59, &v54, "2");
        v25 = fabs(v24 / v18);
        v26 = 0.68584315;
        if (*(v3 + 464) == 1)
        {
          v27 = *(v3 + 472);
          if (v27 > 0.000000015)
          {
            v28 = 3.26888333 / fmin(v27, 50.0);
            if (v28 <= 0.68584315)
            {
              v26 = v28;
            }

            else
            {
              v26 = 0.68584315;
            }
          }
        }

        if (v25 > v26)
        {
          if (!cnprint::CNPrinter::GetLogLevel(v23))
          {
            LOWORD(v59) = 12;
            LOBYTE(v64) = 0;
            v29 = (*(v37 + 16))(&v37);
            cnprint::CNPrinter::Print(&v59, &v64, "Mount adjustment detected, t,%.3lf,%.1lf dps vs. %.1lf dps", v30 + v29, v25 * 57.2957795, v26 * 57.2957795);
          }

          *(v3 + 1152) = (*(v37 + 16))(&v37);
          *(v3 + 1160) = v31;
        }
      }
    }

    v8 = v53[0];
  }

  if (v8 > 3 || v8 == 1)
  {
    v59 = (*(v37 + 16))(&v37);
    *&v60 = v32;
    v35 = CNTimeSpan::operator-(&v59, (v3 + 1152), v33, v34);
    if (v36 + v35 < 30.0)
    {
      v53[0] = 2;
      *&v53[8] = xmmword_1D0E87C00;
      *&v53[24] = xmmword_1D0E87C10;
    }
  }

  sub_1D0B9E5C4(v3, &v46);
}

void sub_1D0B9E560(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1D0B9E654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  if (v10)
  {
    sub_1D0B7CAB8(v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL raven::RavenConvergenceEstimator::GetEstimatorPredictAndUpdateArguments(uint64_t a1, double *a2, int8x16_t *a3, uint64_t a4, double a5, int8x16_t a6)
{
  v10 = *a3;
  *a4 = *a3;
  v11 = CNTimeSpan::operator-(a3, a2, v10, a6);
  v13 = v12 + v11;
  *(a4 + 16) = v13;
  if (v13 < 0.0)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v11))
    {
      v23 = 12;
      v22 = 0;
      v19 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "Prediction time is negative,dt,%.2lf,current_estimator_time,%.1lf", *(a4 + 16), a2[1] + *a2);
      if (*(a1 + 2735) >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = *(a1 + 2712);
      }

      cnprint::CNPrinter::Print(&v23, &v22, "%s", v20);
    }
  }

  else
  {
    v14 = raven::RavenConvergenceEstimator::AdjustDynamicModelWithMovingStateContraints(a1);
    *(a4 + 56) = v14;
    *(a4 + 64) = v14;
    *(a4 + 72) = v15;
    *(a4 + 80) = v16;
    *(a4 + 88) = v16;
    *(a4 + 96) = v17;
    *(a4 + 104) = v15 + v14 * 2.0;
    *(a4 + 112) = v17 + v16 * 2.0;
    v18 = (*(a1 + 1168) + 792);
    *(a4 + 24) = *v18;
    *(a4 + 40) = v18[1];
  }

  return v13 >= 0.0;
}

double raven::RavenConvergenceEstimator::AdjustDynamicModelWithMovingStateContraints(uint64_t a1)
{
  v2 = *(a1 + 1168);
  v3 = *(v2 + 216);
  if (*(a1 + 2000) == 1)
  {
    if (*(a1 + 2112) - 1 <= 2)
    {
      return *(v2 + qword_1D0E9D5D0[(*(a1 + 2112) - 1)]);
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v9 = 12;
    v8 = 1;
    v7 = *(a1 + 80);
    v4 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, &v7, "AdjustDynamicModelWithMovingStateContraints: WARNING: Moving State not yet available.");
    if (*(a1 + 2735) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v9, &v8, "%s", v5);
  }

  return v3;
}

uint64_t sub_1D0B9E8C4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = 768;
  if (!*(v1 + 4404))
  {
    v7 = 8;
  }

  v149 = 0x100000008;
  v148 = xmmword_1D0E84520;
  v147 = &unk_1F4CE4320;
  v150 = &v151;
  sub_1D0B894B0(&v147, v1 + v7 + 2864);
  sub_1D0B9F3C4(&v144, *v150, v150[1], v150[2]);
  v8 = 1.0;
  if (*(v6 + 1408) == 1)
  {
    v9 = *(v6 + 1520);
    if (v9 >= 0xA || ((0x37Fu >> v9) & 1) == 0)
    {
      v8 = *(*(v6 + 1168) + 536);
    }
  }

  v10 = v5[13];
  v11 = v5[7];
  if (!v145)
  {
    v11 = v5[13];
  }

  v12 = v8 * v11;
  if (v145)
  {
    v13 = v5[8];
  }

  else
  {
    v13 = v5[13];
  }

  if (v145)
  {
    v10 = v5[9];
  }

  result = 0xFFFFFFFFLL;
  if (v12 > 0.0)
  {
    v15 = v8 * v13;
    if (v15 > 0.0)
    {
      v16 = v8 * v10;
      if (v16 > 0.0)
      {
        v17 = v5[2];
        v118 = 0x600000006;
        v116 = &unk_1F4CDF278;
        v119 = &v120;
        v18 = fabs(v17);
        v117 = xmmword_1D0E7F320;
        v19 = v17 * v17;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0;
        v127 = 0u;
        v128 = 0;
        v130 = 0u;
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v137 = 0;
        v139 = 0u;
        v140 = 0;
        v142 = 0u;
        v120 = v12 * 0.333333333 * (v19 * v18);
        *&v122 = v12 * 0.5 * v19;
        v132 = *&v122;
        *&v134 = v12 * v18;
        *&v124 = v15 * 0.333333333 * (v19 * v18);
        v126 = v15 * 0.5 * v19;
        *&v136 = v126;
        v138 = v15 * v18;
        v129 = v16 * 0.333333333 * (v19 * v18);
        v131 = v16 * 0.5 * v19;
        v141 = v131;
        v143 = v16 * v18;
        sub_1D0B9F484(v115, &v116);
        if (v145 == 1)
        {
          v56 = 0x300000003;
          v55 = xmmword_1D0E76C10;
          v54 = &unk_1F4CD5DD0;
          v57 = v58;
          sub_1D0B894B0(&v54, &v146);
          v79 = 0x600000006;
          v77 = &unk_1F4CDF278;
          v80 = &v81;
          v78 = xmmword_1D0E7F320;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          *&v81 = *v57;
          v21 = &v57[SHIDWORD(v55)];
          *&v84 = *v21;
          v22 = &v57[2 * SHIDWORD(v55)];
          *&v87 = *v22;
          *(&v81 + 1) = v57[1];
          *(&v84 + 1) = v21[1];
          v23 = (2 * HIDWORD(v55)) | 1;
          *(&v87 + 1) = v57[v23];
          *&v82 = v57[2];
          *&v85 = v21[2];
          *&v88 = v22[2];
          *(&v91 + 1) = *v57;
          *(&v94 + 1) = *v21;
          *(&v97 + 1) = *v22;
          *&v92 = v57[1];
          *&v95 = v21[1];
          *&v98 = v57[v23];
          *(&v92 + 1) = v57[2];
          *(&v95 + 1) = v21[2];
          *(&v98 + 1) = v22[2];
          v69 = 0x600000006;
          v68 = xmmword_1D0E7F320;
          v67 = &unk_1F4CDF278;
          v70 = v71;
          sub_1D0B89390(&v77, &v116, &v67);
          v24 = DWORD1(v78);
          v25 = v78;
          v64 = 0x600000006;
          v59 = &unk_1F4CDF278;
          v65 = v66;
          v60 = DWORD1(v78);
          v61 = v78;
          v62 = v78 * DWORD1(v78);
          v63 = DWORD1(v78);
          if (DWORD1(v78))
          {
            v26 = 0;
            v27 = 0;
            v28 = HIDWORD(v78);
            v29 = v80;
            do
            {
              v30 = v26;
              v31 = v27;
              for (i = v25; i; --i)
              {
                v66[v31] = *(v29 + v30);
                v31 += v24;
                ++v30;
              }

              ++v27;
              v26 += v28;
            }

            while (v27 != v24);
          }

          v107 = 0x600000006;
          v106 = xmmword_1D0E7F320;
          v105 = &unk_1F4CDF278;
          v108 = v109;
          sub_1D0B89390(&v67, &v59, &v105);
          sub_1D0B894B0(v115, &v105);
        }

        v112 = 0x200000002;
        v110 = &unk_1F4CE0268;
        v111 = xmmword_1D0E83F70;
        v113 = &v114;
        if (sub_1D0BA10B0(v6, v5, &v110, COERCE_DOUBLE(0x200000002), v20))
        {
          LOWORD(v77) = 12;
          LOBYTE(v105) = 4;
          v33 = cnprint::CNLogFormatter::FormatGeneral(v6 + 2712, v5, "RavenEstimator::GetOscillatorProcessNoiseCovarianceMatrix failed");
          if (*(v6 + 2735) >= 0)
          {
            v34 = v33;
          }

          else
          {
            v34 = *(v6 + 2712);
          }

          cnprint::CNPrinter::Print(&v77, &v105, "%s", v34);
          return 0xFFFFFFFFLL;
        }

        else
        {
          v35 = 0;
          v107 = 0x800000008;
          v105 = &unk_1F4CE43B0;
          v108 = v109;
          v106 = xmmword_1D0E84510;
          memset(v109, 0, sizeof(v109));
          v36 = xmmword_1D0E7DD30;
          v37 = &v81 + 1;
          v38 = vdupq_n_s64(2uLL);
          v39 = vdupq_n_s64(6uLL);
          do
          {
            if (vmovn_s64(vcgtq_u64(v39, v36)).u8[0])
            {
              *(v37 - 1) = v35;
            }

            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v36)).i32[1])
            {
              *v37 = v35 + 1;
            }

            v35 += 2;
            v36 = vaddq_s64(v36, v38);
            v37 += 2;
          }

          while (v35 != 6);
          v101 = 0x100000008;
          v99 = &unk_1F4CE43F8;
          v102 = &v103;
          v100 = xmmword_1D0E84530;
          v103 = v81;
          v104 = v82;
          sub_1D0BA16B8(&v77, &v105, &v99, &v99);
          sub_1D0B9F65C(&v77, v115);
          *&v81 = 0x700000006;
          v74 = 0x100000008;
          v72 = &unk_1F4CE43F8;
          v75 = &v76;
          v73 = xmmword_1D0E83F60;
          v76 = 0x700000006;
          sub_1D0BA16B8(&v77, &v105, &v72, &v72);
          sub_1D0B9F65C(&v77, &v110);
          v51 = 0x800000008;
          v49 = &unk_1F4CE43B0;
          v50 = xmmword_1D0E84510;
          v52 = &v53;
          LOBYTE(v77) = 0;
          sub_1D0B9F748(&v105, &v49, &v77);
          v56 = 0x800000008;
          v55 = xmmword_1D0E84510;
          v54 = &unk_1F4CE43B0;
          v57 = v58;
          v154 = 0x100000008;
          v153 = xmmword_1D0E84520;
          v152 = &unk_1F4CE43F8;
          v155 = v156;
          v79 = 0x100000020;
          v78 = xmmword_1D0E84540;
          v77 = &unk_1F4CE3988;
          v80 = &v81;
          sub_1D0B9F868(&v49, &v152, &v77, &v54);
          v40 = DWORD1(v55);
          v41 = v55;
          v64 = 0x800000008;
          v59 = &unk_1F4CE43B0;
          v65 = v66;
          v60 = DWORD1(v55);
          v61 = v55;
          v62 = v55 * DWORD1(v55);
          v63 = DWORD1(v55);
          if (DWORD1(v55))
          {
            v42 = 0;
            v43 = 0;
            v44 = HIDWORD(v55);
            v45 = v57;
            do
            {
              v46 = v42;
              v47 = v43;
              for (j = v41; j; --j)
              {
                v66[v47] = v45[v46];
                v47 += v40;
                ++v46;
              }

              ++v43;
              v42 += v44;
            }

            while (v43 != v40);
          }

          v154 = 0x100000008;
          v153 = xmmword_1D0E84520;
          v152 = &unk_1F4CE4320;
          v155 = v156;
          v79 = 0x800000008;
          v78 = xmmword_1D0E84510;
          v77 = &unk_1F4CE43B0;
          v80 = &v81;
          v69 = 0x800000008;
          v68 = xmmword_1D0E84510;
          v67 = &unk_1F4CE43B0;
          v70 = v71;
          sub_1D0B9FACC(&v59, &v152, &v77, &v67);
          sub_1D0B894B0(v3, &v67);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D0B9F2DC(_BYTE *a1, float64_t a2, float64_t a3, double a4)
{
  v15 = *MEMORY[0x1E69E9840];
  a1[8] = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13.f64[0] = a2;
  v13.f64[1] = a3;
  v14 = a4;
  if (cnnavigation::ECEFToLLA(&v13, 1, &v10, 0, &v9))
  {
    return 0;
  }

  v5.n128_u64[0] = v10;
  v6.n128_u64[0] = v11;
  v8 = *(*a1 + 16);

  return v8(a1, v5, v6);
}

uint64_t sub_1D0B9F3C4(uint64_t a1, float64_t a2, float64_t a3, double a4)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0x300000003;
  *(a1 + 16) = &unk_1F4CD5DD0;
  *(a1 + 24) = xmmword_1D0E76C10;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_1F4CD5D90;
  sub_1D0B9F2DC(a1, a2, a3, a4);
  return a1;
}

void sub_1D0B9F448(_Unwind_Exception *a1)
{
  *v1 = &unk_1F4CD5D18;
  v1[2] = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

__n128 sub_1D0B9F484(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x600000006;
  *(a1 + 24) = 0x600000006;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDF278;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 6)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 7)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0B9F5D4(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(a2 + 8);
    v2 = *(a2 + 12);
    *(result + 8) = v3;
    *(result + 12) = v2;
    v4 = v2 * v3;
    *(result + 16) = v4;
    *(result + 20) = v3;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v9 = (v5 - 1);
      v10 = *(result + 32);
      v11 = *(a2 + 32);
      v12 = v11;
      v13 = v10;
      v14 = v9;
      do
      {
        v15 = *v12++;
        *v13++ = v15;
        --v14;
      }

      while (v14);
      v10[v9] = v11[v9];
    }

    else if (v4 >= 1)
    {
      v6 = 0;
      v7 = *(a2 + 32);
      v8 = *(result + 32);
      do
      {
        *(v8 + 4 * v6) = *(v7 + 4 * v6);
        ++v6;
      }

      while (v6 < *(result + 16));
    }
  }

  return result;
}

uint64_t sub_1D0B9F65C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 552);
        v8 = *(result + 592);
        v9 = *(v7 + 20) * *(*(result + 664) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void sub_1D0B9F748(uint64_t a1, uint64_t a2, BOOL *a3)
{
  sub_1D0B894B0(a2, a1);
  v5 = *(a2 + 12);
  dpotrf_NEWLAPACK();
  *a3 = 1;
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 32);
    v8 = v5 - 1;
    v9 = 1;
    do
    {
      ++v6;
      v10 = v9;
      v11 = v8;
      if (v6 < v5)
      {
        do
        {
          *(v7 + 8 * v10++) = 0;
          --v11;
        }

        while (v11);
      }

      --v8;
      v9 += v5 + 1;
    }

    while (v6 != v5);
  }
}

void sub_1D0B9F868(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  sub_1D0B894B0(a4, a1);
  v7 = a4[2];
  v8 = a4[3];
  v9 = a4[5];
  v10 = *(a2 + 32);
  v21 = a4[3];
  v22 = v7;
  if (v7 >= 1 && (v11 = 4 * v7, (v12 = operator new[](4 * v7, MEMORY[0x1E69E5398])) != 0))
  {
    v13 = v12;
    dgetrf_NEWLAPACK();
    memcpy(v10, v13, v11);
    MEMORY[0x1D387EC80](v13, 0x1000C8052888210);
  }

  else
  {
    LOWORD(v22) = 4;
    LOBYTE(v21) = 5;
    cnprint::CNPrinter::Print(&v22, &v21, "Error using Inv: input argument %d invalid in getrf.");
  }

  v14 = *(a3 + 28) * *(a3 + 24);
  v21 = v9;
  v22 = v8;
  if (v8 < 1)
  {
    v19 = -1;
  }

  else
  {
    v15 = 4 * v8;
    v16 = operator new[](v15, MEMORY[0x1E69E5398]);
    if (v16)
    {
      v17 = v16;
      memcpy(v16, v10, v15);
      dgetri_NEWLAPACK();
      v18 = MEMORY[0x1D387EC80](v17, 0x1000C8052888210);
      goto LABEL_11;
    }

    v19 = -4;
  }

  LOWORD(v22) = 4;
  LOBYTE(v21) = 5;
  cnprint::CNPrinter::Print(&v22, &v21, "Error using Inv: input argument %d invalid in getri.", -v19);
LABEL_11:
  v20 = **(a3 + 32);
  if (v14 < v20 && cnprint::CNPrinter::GetLogLevel(v18) <= 1)
  {
    LOWORD(v22) = 4;
    LOBYTE(v21) = 1;
    cnprint::CNPrinter::Print(&v22, &v21, "Warning: Inv optimal workspace size %d is greater than provided workspace size %d; performance may suffer.", v20, v14);
  }
}

void sub_1D0B9FACC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  sub_1D0B894B0(a4, a1);
  v8 = *(a4 + 8);
  v9 = *(a3 + 28) * *(a3 + 24);
  v24 = *(a4 + 12);
  v25 = v8;
  v10 = dgeqrf_NEWLAPACK();
  v11 = **(a3 + 32);
  if (v9 < v11 && cnprint::CNPrinter::GetLogLevel(v10) <= 1)
  {
    LOWORD(v25) = 4;
    LOBYTE(v24) = 1;
    cnprint::CNPrinter::Print(&v25, &v24, "Warning: Qr optimal workspace size %d is greater than provided workspace size %d; performance may suffer.", v11, v9);
  }

  v12 = *(a1 + 8);
  if (v12 >= *(a1 + 12))
  {
    v12 = *(a1 + 12);
  }

  a2[2] = v12;
  a2[3] = 1;
  a2[4] = v12;
  a2[5] = v12;
  v13 = *(a3 + 24);
  v14 = *(a3 + 28);
  *(a3 + 8) = v13;
  *(a3 + 12) = v14;
  *(a3 + 16) = v14 * v13;
  *(a3 + 20) = v13;
  v15 = *(a4 + 12);
  if (v15)
  {
    v16 = 0;
    v17 = *(a4 + 8);
    v18 = *(a4 + 32);
    v19 = v17 - 1;
    v20 = *(a4 + 20) + 1;
    v21 = 1;
    do
    {
      ++v16;
      v22 = v21;
      v23 = v19;
      if (v16 < v17)
      {
        do
        {
          *(v18 + 8 * v22++) = 0;
          --v23;
        }

        while (v23);
      }

      --v19;
      v21 += v20;
    }

    while (v16 != v15);
  }
}

uint64_t sub_1D0B9FC58@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (*a2 != 58 || a2[1])
  {
    __assert_rtn("operator()", "cnmatrix.h", 939, "strcmp(r, :) == 0");
  }

  v4 = *(result + 8);
  *(a4 + 24) = 0x100000002;
  *a4 = &unk_1F4CE0EA8;
  *(a4 + 8) = v4;
  *(a4 + 12) = 1;
  *(a4 + 16) = v4;
  *(a4 + 20) = v4;
  v5 = (a4 + 40);
  *(a4 + 32) = a4 + 40;
  if (v4)
  {
    v6 = *(result + 20) * a3;
    v7 = *(result + 32);
    do
    {
      *v5++ = *(v7 + 4 * v6++);
      --v4;
    }

    while (v4);
  }

  return result;
}

void *sub_1D0B9FD10(void *a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v14.__vftable) = 3;
    LOBYTE(v12) = 5;
    cnprint::CNPrinter::Print(&v14, &v12, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEE700 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEE700 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v14.__vftable = 0;
      std::bad_cast::bad_cast(&v14);
      v14.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v14);
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF7A8;

    return memcpy(a1 + 1, (v10 + 16), 0xA51uLL);
  }

  else
  {
    v12 = 3;
    v11 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v14.__vftable) = 3;
      v13 = 5;
      cnprint::CNPrinter::Print(&v14, &v13, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEE700 & 0x7FFFFFFFFFFFFFFFLL));

    return sub_1D0BAD0C8(a1);
  }
}

uint64_t cnprint::CNPrinter::GetLogLevel(cnprint::CNPrinter *this)
{
  cnprint::CNPrinter::GetCNPrinter(this);
  v3 = dword_1EC5FB8D0;
  if (!sub_1D0B7DED0(&stru_1EC5FB8D8, &v3))
  {
    return 255;
  }

  v1 = byte_1EC5FB950;
  std::timed_mutex::unlock(&stru_1EC5FB8D8);
  return v1;
}

uint64_t (**sub_1D0B9FF7C(uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

double sub_1D0B9FFD4(uint64_t a1, double result)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 40);
    if (*(a1 + 48) != v2 && *(a1 + 16) > result && *(a1 + 8) <= result)
    {
      result = result / *(a1 + 24);
      ++*(v2 + 4 * result);
      ++*(a1 + 32);
    }
  }

  return result;
}

void *sub_1D0BA002C(void *a1, uint64_t a2)
{
  sub_1D0B751F4(__p, &unk_1D0ED80C5);
  sub_1D0BA00C8(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F4CE42D8;
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void sub_1D0BA00AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BA00C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  *a1 = &unk_1F4CE4300;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v7 = *(a3 + 16);
  }

  sub_1D0BA01A8(a1, v3, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1D0BA0174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 39) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

double sub_1D0BA01A8(uint64_t a1, int a2, __int128 *a3)
{
  v5 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_1D0BC39B4(&v6, *a3, *(a3 + 1));
    a2 = v5;
  }

  else
  {
    v6 = *a3;
    v7 = *(a3 + 2);
  }

  *(a1 + 8) = a2;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  result = *&v6;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

void *sub_1D0BA029C(void *a1, void (**a2)(uint64_t))
{
  *a1 = 0;
  a1[1] = 0;
  if (*a2)
  {
    (*a2)(2);
  }

  return a1;
}

void sub_1D0BA02E4(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1D0C54E78(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_1D0BA03F0(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v1) >> 3) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x1A)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    sub_1D0C54E78(a1, v9);
  }

  a1[4] = (v5 + 26);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  sub_1D0BA02E4(a1, v10);
}

void sub_1D0BA05F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D0BA0660(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v34.__vftable) = 3;
    LOBYTE(v36[0]) = 5;
    cnprint::CNPrinter::Print(&v34, v36, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = (*(*v6 + 16))(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEF340 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF340 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v34.__vftable = 0;
      v23 = std::bad_cast::bad_cast(&v34);
      v34.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(v23);
    }

    v10 = *(a3 + 16);
    v24 = &unk_1F4CEF5F8;
    v25 = *(v10 + 16);
    v11 = *(v10 + 64);
    v12 = *(v10 + 80);
    v13 = *(v10 + 48);
    v26 = *(v10 + 32);
    v29 = v12;
    v28 = v11;
    v27 = v13;
    v14 = *(v10 + 96);
    v15 = *(v10 + 112);
    v16 = *(v10 + 128);
    v33 = *(v10 + 144);
    v32 = v16;
    v31 = v15;
    v30 = v14;
  }

  else
  {
    LOWORD(v36[0]) = 3;
    v37 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v34.__vftable) = 3;
      LOBYTE(v38) = 5;
      cnprint::CNPrinter::Print(&v34, &v38, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(v36, &v37, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF340 & 0x7FFFFFFFFFFFFFFFLL));
    v26 = 0uLL;
    v29 = 0uLL;
    v25 = 0uLL;
    v24 = &unk_1F4CEF5F8;
    v27 = 0uLL;
    v28 = 0uLL;
    *&v30 = 0;
    *(&v30 + 1) = 0x7FF8000000000000;
    *&v31 = 0;
    *(&v31 + 1) = 0x3FF0000000000000;
    v32 = 0uLL;
    v33 = 0x7FF0000000000000;
  }

  v17 = raven::RavenEstimator::HandleTurnStateEvent((v4 + 288), &v24);
  if (v18)
  {
    v38 = 12;
    v37 = 2;
    v36[0] = v24[2](&v24, v17);
    v36[1] = v19;
    (v24[3])(&v34, &v24);
    if (v35 >= 0)
    {
      v20 = &v34;
    }

    else
    {
      v20 = v34.__vftable;
    }

    v21 = cnprint::CNLogFormatter::FormatWarning(v4 + 240, v36, "Failed to handle event - %s.", v20);
    if (*(v4 + 263) >= 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = *(v4 + 240);
    }

    cnprint::CNPrinter::Print(&v38, &v37, "%s", v22);
    if (v35 < 0)
    {
      operator delete(v34.__vftable);
    }
  }
}

__n128 raven::RavenEstimator::HandleTurnStateEvent(raven::RavenEstimator *this, const raven::TurnStateEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 2288) == 1)
    {
      *(this + 144) = *(a2 + 8);
      v4 = *(a2 + 24);
      v5 = *(a2 + 40);
      v6 = *(a2 + 56);
      *(this + 148) = *(a2 + 72);
      *(this + 147) = v6;
      *(this + 146) = v5;
      *(this + 145) = v4;
      result = *(a2 + 88);
      v8 = *(a2 + 104);
      v9 = *(a2 + 120);
      *(this + 304) = *(a2 + 17);
      *(this + 151) = v9;
      *(this + 150) = v8;
      *(this + 149) = result;
    }

    else
    {
      *(this + 287) = &unk_1F4CEF5F8;
      *(this + 144) = *(a2 + 8);
      v12 = *(a2 + 24);
      v13 = *(a2 + 40);
      v14 = *(a2 + 56);
      *(this + 148) = *(a2 + 72);
      *(this + 147) = v14;
      *(this + 146) = v13;
      *(this + 145) = v12;
      result = *(a2 + 88);
      v15 = *(a2 + 104);
      v16 = *(a2 + 120);
      *(this + 304) = *(a2 + 17);
      *(this + 151) = v16;
      *(this + 150) = v15;
      *(this + 149) = result;
      *(this + 2288) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v19 = 12;
    v18 = 1;
    v17[0] = (*(*a2 + 16))(a2);
    v17[1] = v10;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v17, "Estimator not configured, failed to handle TurnStateEvent.");
    if (*(this + 2735) >= 0)
    {
      v11 = this + 2712;
    }

    else
    {
      v11 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v19, &v18, "%s", v11);
  }

  return result;
}

uint64_t cnnavigation::ECEFToLLA(float64x2_t *a1, int a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1].f64[0];
  v7 = a1->f64[1];
  v8 = vmuld_lane_f64(v7, *a1, 1) + v5.f64[0] * v5.f64[0];
  v9 = sqrt(v8 + v6 * v6);
  if (v9 <= 0.00000001)
  {
    return 1;
  }

  if (a2 == 1)
  {
    v20 = sqrt(v8);
    if (fabs(v6 / v20) >= 100000000.0)
    {
      if (v6 <= 0.0)
      {
        v31 = -1.57079633;
        if (v6 >= 0.0)
        {
          v31 = 0.0;
        }
      }

      else
      {
        v31 = 1.57079633;
      }

      *a3 = v31;
      *(a3 + 8) = 0;
      *(a3 + 16) = v9 + -6356752.31;
      if (a4)
      {
        result = 0;
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        *(a5 + 48) = vdivq_f64(v5, vdupq_lane_s64(*&v9, 0));
        *(a5 + 64) = v6 / v9;
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
        return result;
      }
    }

    else
    {
      v46 = v6 / v20;
      v52 = v20;
      __xa = *a1;
      v21 = atan2(v6, v20);
      v47 = atan2(v7, __xa.f64[0]);
      v22 = 0.0;
      v23 = 10;
      *&v24 = INFINITY;
      v25 = 6378137.0;
      v26 = INFINITY;
      do
      {
        v27 = *&v24;
        *&v24 = v22;
        v28 = v21;
        if (vabdd_f64(v22, v27) <= 0.0005 && vabdd_f64(v21, v26) <= 7.9e-11)
        {
          break;
        }

        v29 = sin(v21);
        v25 = 6378137.0 / sqrt(v29 * -0.00669437999 * v29 + 1.0);
        v21 = atan(v6 / (v52 * (v25 * -0.00669437999 / (v22 + v25) + 1.0)));
        v22 = v52 / cos(v21) - v25;
        v26 = v28;
        --v23;
      }

      while (v23);
      *a3 = v21;
      *(a3 + 8) = v47;
      *(a3 + 16) = v22;
      if (a4)
      {
        v32 = __sincos_stret(v21);
        v33 = tan(v21);
        v34 = pow(v32.__sinval * -0.00669437999 * v32.__sinval + 1.0, -1.5);
        result = 0;
        v35 = v32.__cosval * (v32.__sinval * 42697.6727) * v34;
        v36 = v52 * v32.__sinval / (v32.__cosval * v32.__cosval) - v35;
        v37 = v25 / (v25 + v22);
        v38 = v37 * -0.00669437999 + 1.0;
        v39 = v46 * 0.00669437999 / (v38 * v38);
        v40 = -(v39 * v37) / (v25 + v22);
        v41.f64[0] = v33 * v33 + 1.0 - (v36 * v40 + v22 * v39 / ((v25 + v22) * (v25 + v22)) * v35);
        v42 = vdivq_f64(__xa, vdupq_lane_s64(COERCE__INT64(v52 * v32.__cosval), 0));
        v43 = vdivq_f64(vnegq_f64(__xa), vdupq_lane_s64(*&v52, 0));
        v44 = vdivq_f64(vmlaq_n_f64(vmulq_n_f64(v42, v40), vdivq_f64(vmulq_n_f64(v43, v39), vdupq_lane_s64(COERCE__INT64(v52 * 0.00669437999), 0)), v38), vdupq_lane_s64(*&v41.f64[0], 0));
        v43.f64[0] = 1.0 / (v52 * v38);
        *(a5 + 48) = vmlaq_n_f64(v42, v44, v36);
        v41.f64[1] = v52;
        v45 = vdivq_f64(v43, v41);
        *(a5 + 64) = v36 * v45.f64[0];
        *a5 = v44;
        *(a5 + 16) = v45;
        *(a5 + 32) = __xa.f64[0] / v52 / v52;
        *(a5 + 40) = 0;
        return result;
      }
    }
  }

  else
  {
    if (a2)
    {
      return 2;
    }

    v13 = sqrt(v8);
    if (fabs(v6 / v13) >= 100000000.0)
    {
      if (v6 <= 0.0)
      {
        v30 = -1.57079633;
        if (v6 >= 0.0)
        {
          v30 = 0.0;
        }
      }

      else
      {
        v30 = 1.57079633;
      }

      *a3 = v30;
      *(a3 + 8) = 0;
      *(a3 + 16) = v9 + -6371009.0;
      if (a4)
      {
        *(a5 + 16) = 0u;
        *(a5 + 32) = 0u;
        *a5 = 0u;
        v15 = v6 / v9;
        goto LABEL_23;
      }
    }

    else
    {
      v50 = v13;
      v51 = v9;
      __x = *a1;
      *a3 = atan2(a1[1].f64[0], v13);
      v14 = atan2(v7, __x.f64[0]);
      v9 = v51;
      *(a3 + 8) = v14;
      *(a3 + 16) = v51 + -6371009.0;
      if (a4)
      {
        v15 = v6 / v51;
        v16 = vnegq_f64(__x);
        v17 = vmulq_n_f64(vdivq_f64(v16, vdupq_lane_s64(*&v51, 0)), v6 / v51);
        v16.f64[0] = v50;
        v18.f64[0] = v51;
        v18.f64[1] = v50;
        *a5 = vdivq_f64(v17, vdupq_lane_s64(*&v50, 0));
        *(a5 + 16) = vdivq_f64(vdivq_f64(v16, v18), v18);
        *(a5 + 32) = __x.f64[0] / v50 / v50;
        *(a5 + 40) = 0;
        v5 = __x;
LABEL_23:
        result = 0;
        *(a5 + 48) = vdivq_f64(v5, vdupq_lane_s64(*&v9, 0));
        *(a5 + 64) = v15;
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1D0BA1010(uint64_t a1, double a2, double a3)
{
  v5 = __sincos_stret(a2);
  v6 = __sincos_stret(a3);
  v7 = *(a1 + 48);
  *v7 = -v6.__sinval;
  v8 = *(a1 + 36);
  v9 = (v7 + 8 * v8);
  *v9 = -(v6.__cosval * v5.__sinval);
  v10 = (v7 + 16 * v8);
  *v10 = v5.__cosval * v6.__cosval;
  *(v7 + 8) = v6.__cosval;
  v9[1] = -(v6.__sinval * v5.__sinval);
  *(v7 + 8 * ((2 * v8) | 1)) = v5.__cosval * v6.__sinval;
  *(v7 + 16) = 0;
  v9[2] = v5.__cosval;
  v10[2] = v5.__sinval;
  *(a1 + 8) = 1;
  return 1;
}

uint64_t sub_1D0BA10B0(uint64_t a1, double *a2, uint64_t a3, double a4, int8x16_t a5)
{
  v94 = *a2;
  v8.i64[1] = *(&v94 + 1);
  v9 = a2[2];
  v91 = 0;
  v92 = 0.0;
  *v8.i64 = v9;
  *v10.i64 = CNTimeSpan::SetTimeSpan(&v91, 0, v8, a5);
  v12 = CNTimeSpan::operator-(a2, &v91, v10, v11);
  v93[0] = v12;
  v93[1] = v13;
  v14 = fabs(v9);
  v15 = a2[3];
  v16 = a2[4];
  v17 = v9 * v9;
  v18 = v17 * v14;
  *(a3 + 8) = xmmword_1D0E83F70;
  v19 = *(a1 + 2440);
  if ((v19 & 1) == 0)
  {
    v20 = 0;
    v23 = ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v15 >= 0.0 || (*&v15 - 1) < 0xFFFFFFFFFFFFFLL;
    v26 = ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v16 >= 0.0 || (*&v16 - 1) < 0xFFFFFFFFFFFFFLL;
    goto LABEL_51;
  }

  v20 = *(a1 + 2536);
  v23 = ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v15 >= 0.0 || (*&v15 - 1) < 0xFFFFFFFFFFFFFLL;
  v26 = ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v16 >= 0.0 || (*&v16 - 1) < 0xFFFFFFFFFFFFFLL;
  if (v20 != 1 || !v26)
  {
LABEL_51:
    v44 = 0;
    v45 = 0;
    LOBYTE(v46) = 1;
    goto LABEL_52;
  }

  v90[0] = (*(*(a1 + 2448) + 16))(a1 + 2448);
  v90[1] = v27;
  v30 = CNTimeSpan::operator-(&v94, v90, v28, v29);
  v91 = v30;
  v92 = v31;
  if (v30 < 0 || (*v32.i64 = v31, v31 < 0.0))
  {
    v30 = CNTimeSpan::operator-(&v91, v32, v33);
    v32.i64[0] = v34;
  }

  if ((*(a1 + 2440) & 1) == 0)
  {
    goto LABEL_124;
  }

  v35 = *v32.i64 + v30;
  v88[0] = (*(*(a1 + 2448) + 16))(a1 + 2448);
  v88[1] = v36;
  v12 = CNTimeSpan::operator-(v93, v88, v37, v38);
  v89[0] = v12;
  *&v89[1] = v39;
  if (v12 < 0 || (*v40.i64 = v39, v39 < 0.0))
  {
    v12 = CNTimeSpan::operator-(v89, v40, v41);
    v40.i64[0] = v42;
  }

  v43 = *v40.i64 + v12;
  if (v35 > v43)
  {
    v43 = v35;
  }

  if (v43 <= v16)
  {
    if (*(a1 + 2440))
    {
      if ((*(a1 + 2536) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      v66 = *(a1 + 2532);
      v69 = ((LODWORD(v66) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F && v66 >= 0.0 || (LODWORD(v66) - 1) < 0x7FFFFF;
      v70 = *(a1 + 2524);
      v73 = ((LODWORD(v70) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F && v70 >= 0.0 || (LODWORD(v70) - 1) < 0x7FFFFF;
      v74 = *(a1 + 2528);
      v77 = ((LODWORD(v74) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F && v74 >= 0.0 || (LODWORD(v74) - 1) < 0x7FFFFF;
      v78 = *(a1 + 2520);
      v81 = ((LODWORD(v78) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F && v78 >= 0.0 || (LODWORD(v78) - 1) < 0x7FFFFF;
      v46 = (v69 || v73) && v77 || v81;
      if ((v23 & v46) == 1)
      {
        v82 = 0.0;
        v83 = 0.0;
        if (v69)
        {
          v83 = v14 / v15 * v66 * 0.000001;
        }

        v84 = v70 * 0.001 * (v70 * 0.001);
        if (!v73)
        {
          v84 = 0.0;
        }

        if (v77)
        {
          v82 = v14 / v15 * v74 * 0.000001;
        }

        result = 0;
        v85 = v78 * 0.001 * (v78 * 0.001);
        if (!v81)
        {
          v85 = 0.0;
        }

        v86 = *(a3 + 32);
        *v86 = v83 + v84 * v14 + v85 * 0.333333333 * v18;
        v87 = v17 * (v85 * 0.5);
        v64 = &v86[*(a3 + 20)];
        *v64 = v87;
        v86[1] = v87;
        v65 = v82 + v85 * v14;
        goto LABEL_121;
      }

      v45 = 1;
      v44 = (v69 || v73) && v77 || v81;
      goto LABEL_123;
    }

LABEL_124:
    __assert_rtn("operator->", "optional.hpp", 1221, "this->is_initialized()");
  }

  v44 = 0;
  v45 = 0;
  LOBYTE(v46) = 1;
LABEL_123:
  v20 = 1;
  v26 = 1;
LABEL_52:
  LogLevel = cnprint::CNPrinter::GetLogLevel(v12);
  if (LogLevel)
  {
    if (v46)
    {
      goto LABEL_64;
    }
  }

  else
  {
    LOWORD(v91) = 12;
    LOBYTE(v90[0]) = 0;
    v52 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v93, "RavenEstimator::GetOscillatorProcessNoiseCovarianceMatrix using default xo model.  lgpms,%d,xams,%d,gorv,%d,xamvdv,%d,xamu,%d,xamv,%d", v19, v20, v23, v26, v45, v44);
    if (*(a1 + 2735) >= 0)
    {
      v53 = v52;
    }

    else
    {
      v53 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v91, v90, "%s", v53);
    if (v46)
    {
      goto LABEL_64;
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v91) = 12;
    LOBYTE(v90[0]) = 1;
    v54 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v93, "RavenEstimator::GetOscillatorProcessNoiseCovarianceMatrix encountered invalid xo model.  Using default model.");
    if (*(a1 + 2735) >= 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v91, v90, "%s", v55);
  }

LABEL_64:
  v56 = a2[5];
  v57 = a2[6];
  if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v56 > 0.0 && (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v57 > 0.0)
  {
    result = 0;
    v61 = v56 * 1000000.0 * 1000000.0 * 49.348022;
    v62 = *(a3 + 32);
    *v62 = v18 * (v61 * 0.333333333) + v57 * 1000000.0 * 1000000.0 * 1.25 * v14;
    v63 = v17 * (v61 * 0.5);
    v64 = &v62[*(a3 + 20)];
    *v64 = v63;
    v62[1] = v63;
    v65 = v14 * v61;
LABEL_121:
    v64[1] = v65;
    return result;
  }

  LOWORD(v91) = 12;
  LOBYTE(v90[0]) = 5;
  v58 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v93, "RavenEstimator::GetOscillatorProcessNoiseCovarianceMatrix called with invalid parameters xo_alpha,%.3lf,xo_gamma,%.3lf.", v56, v57);
  if (*(a1 + 2735) >= 0)
  {
    v59 = v58;
  }

  else
  {
    v59 = *(a1 + 2712);
  }

  cnprint::CNPrinter::Print(&v91, v90, "%s", v59);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0BA16B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x800000008;
  *(a1 + 8) = xmmword_1D0E84510;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE4440;
  *(a1 + 552) = a2;
  *(a1 + 584) = 0x100000008;
  *(a1 + 560) = &unk_1F4CE43F8;
  *(a1 + 568) = xmmword_1D0E84520;
  *(a1 + 592) = a1 + 600;
  *(a1 + 656) = 0x100000008;
  *(a1 + 632) = &unk_1F4CE43F8;
  *(a1 + 640) = xmmword_1D0E84520;
  *(a1 + 664) = a1 + 672;
  sub_1D0B9F5D4(a1 + 560, a3);
  sub_1D0B9F5D4(a1 + 632, a4);
  v7 = *(a1 + 576);
  v8 = *(a1 + 648);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 20);
    v12 = *(a2 + 32);
    do
    {
      if (v7)
      {
        v13 = *(a1 + 592);
        v14 = *(*(a1 + 664) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        v17 = v7;
        do
        {
          v18 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v18 + v14));
          --v17;
        }

        while (v17);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return a1;
}

__n128 sub_1D0BA1824(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000008;
  *(a1 + 24) = 0x100000008;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4320;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 8)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 2)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0BA196C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

uint64_t sub_1D0BA19BC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v240 = v3;
  v241 = v2;
  v245 = v4;
  v6 = v5;
  v7 = v1;
  if (!*(v1 + 1540))
  {
    sub_1D0B894B0(v1 + 768, v1 + 8);
    sub_1D0B894B0(v7 + 872, v7 + 112);
    sub_1D0B894B0(v7 + 1424, v7 + 664);
  }

  v8 = *(v6 + 8);
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_314;
  }

  v9 = *(v7 + 776);
  v10 = *(v7 + 780);
  v252 = 0x100000008;
  v247 = &unk_1F4CE4320;
  v253 = v254;
  v248 = v8;
  v249 = 1;
  v250 = v8;
  v251 = v8;
  if (v8 > 3)
  {
    v11 = &v254[v8];
    bzero(v254, 16 * ((v8 - 1) >> 1));
    *(v11 - 2) = 0;
    *(v11 - 1) = 0;
  }

  else if (v8)
  {
    bzero(v254, 8 * v8);
  }

  if (v9 <= v10)
  {
    LODWORD(v12) = v10;
  }

  else
  {
    LODWORD(v12) = v9;
  }

  if (v10)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v12 = 0;
  }

  else
  {
    v12 = v12;
  }

  v246 = v12;
  v14 = *(v241 + 8);
  v15 = *(v241 + 12);
  if (v14 <= v15)
  {
    v16 = *(v241 + 12);
  }

  else
  {
    v16 = *(v241 + 8);
  }

  if (v15)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v243 = v18;
  sub_1D0B9FC58(v245, ":", 0, &v291);
  v346 = v347;
  v19 = DWORD1(v292);
  *v345 = 1;
  *&v345[4] = DWORD1(v292);
  *&v345[20] = 1;
  *&v345[8] = DWORD1(v292);
  *&v345[12] = 0x200000001;
  if (DWORD1(v292))
  {
    v20 = 0;
    v21 = v294;
    v22 = v292;
    v23 = v292 - 1;
    v24 = 1;
    do
    {
      v25 = v21[v22 * v20];
      v26 = v24;
      v27 = v23;
      if (v22 >= 2)
      {
        do
        {
          v25 += v21[v26++];
          --v27;
        }

        while (v27);
      }

      v347[v20++] = v25;
      v24 += v22;
    }

    while (v20 != v19);
  }

  sub_1D0B9FC58(v245, ":", 1, &v291);
  v346 = v347;
  v28 = DWORD1(v292);
  *v345 = 1;
  *&v345[4] = DWORD1(v292);
  *&v345[20] = 1;
  *&v345[8] = DWORD1(v292);
  *&v345[12] = 0x200000001;
  if (DWORD1(v292))
  {
    v29 = 0;
    v30 = v294;
    v31 = v292;
    v32 = v292 - 1;
    v33 = 1;
    do
    {
      v34 = v30[v31 * v29];
      v35 = v33;
      v36 = v32;
      if (v31 >= 2)
      {
        do
        {
          v34 += v30[v35++];
          --v36;
        }

        while (v36);
      }

      v347[v29++] = v34;
      v33 += v31;
    }

    while (v29 != v28);
  }

  v37 = *(v7 + 3024);
  v234 = *(v7 + 3049);
  if (!*(v7 + 776) || !*(v7 + 780))
  {
    if ((v246 & 0x80000000) == 0)
    {
      *&v345[16] = 0x100000008;
      v344 = &unk_1F4CE4320;
      v346 = v347;
      *v345 = v246;
      *&v345[4] = 1;
      *&v345[8] = v246;
      *&v345[12] = v246;
      if (v246 > 3)
      {
        v38 = &v347[2 * v246];
        bzero(v347, 16 * ((v246 - 1) >> 1));
        *(v38 - 2) = 0;
        *(v38 - 1) = 0;
      }

      else if (v246)
      {
        bzero(v347, (8 * v246));
      }

      sub_1D0B894B0(v7 + 768, &v344);
      goto LABEL_44;
    }

LABEL_314:
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

LABEL_44:
  if (!*(v7 + 880) || !*(v7 + 884))
  {
    if ((v246 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
    }

    *&v345[16] = 0x800000008;
    v344 = &unk_1F4CE43B0;
    v346 = v347;
    v39 = v246 * v246;
    *v345 = v246;
    *&v345[4] = v246;
    *&v345[8] = v246 * v246;
    *&v345[12] = v246;
    if (v246 * v246 > 3)
    {
      v40 = &v347[2 * v39];
      bzero(v347, 16 * ((v39 - 1) >> 1));
      *(v40 - 2) = 0;
      *(v40 - 1) = 0;
    }

    else if (v39 >= 1)
    {
      bzero(v347, 8 * (v246 * v246));
    }

    sub_1D0B894B0(v7 + 872, &v344);
  }

  if (!*(v7 + 1432) || !*(v7 + 1436))
  {
    *&v345[16] = 0x100000008;
    *v345 = xmmword_1D0E84520;
    v344 = &unk_1F4CE4320;
    v346 = v347;
    sub_1D0B89390(v7 + 872, v7 + 768, &v344);
    sub_1D0B894B0(v7 + 1424, &v344);
  }

  if ((v246 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  *&v345[16] = 0x800000008;
  v344 = &unk_1F4CE43B0;
  v346 = v347;
  v41 = v246 * v8;
  *v345 = v8;
  *&v345[4] = v246;
  *&v345[8] = v246 * v8;
  *&v345[12] = v8;
  v230 = v246 * v8;
  if (v246 * v8 > 3)
  {
    v42 = &v347[2 * v41];
    bzero(v347, 16 * ((v41 - 1) >> 1));
    *(v42 - 2) = 0;
    *(v42 - 1) = 0;
  }

  else if (v41 >= 1)
  {
    bzero(v347, 8 * (v246 * v8));
  }

  sub_1D0B894B0(v7 + 1752, &v344);
  *&v345[16] = 0x100000008;
  v344 = &unk_1F4CE4320;
  v346 = v347;
  *v345 = v8;
  *&v345[4] = 1;
  *&v345[8] = v8;
  *&v345[12] = v8;
  if (v8 > 3)
  {
    v43 = &v347[2 * v8];
    bzero(v347, 16 * ((v8 - 1) >> 1));
    *(v43 - 2) = 0;
    *(v43 - 1) = 0;
  }

  else if (v8)
  {
    bzero(v347, 8 * v8);
  }

  v239 = v8;
  sub_1D0B894B0(v7 + 2304, &v344);
  v44 = sub_1D0B894B0(v7 + 2408, v6);
  *(v7 + 1540) = 1;
  *(v7 + 16) = v246;
  *(v7 + 20) = 1;
  *(v7 + 24) = v246;
  *(v7 + 28) = v246;
  sub_1D0BA49A0(&v342, v243, 1, v44);
  sub_1D0BA4F14(&v340, v243, 1, v45, v46);
  sub_1D0BA4F14(&v338, v243, 1, v47, v48);
  v335 = 0x100000008;
  v334 = xmmword_1D0E84520;
  v333 = &unk_1F4CE43F8;
  v336 = &v337;
  v330 = 0x100000008;
  v329 = xmmword_1D0E84520;
  v328 = &unk_1F4CE43F8;
  v331 = &v332;
  v235 = v7;
  v232 = v6;
  if (v243 < 1)
  {
LABEL_117:
    if (v234)
    {
      v95 = v243;
    }

    else
    {
      v95 = 1;
    }

    v231 = v95;
    sub_1D0BA1824(v327, v7 + 768);
    sub_1D0BA57FC(&v322, v7 + 872);
    sub_1D0BA1824(v321, v7 + 1424);
    *(v7 + 1760) = 0u;
    *(v7 + 2312) = 0u;
    *(v7 + 2416) = 0u;
    v318 = 0x800000008;
    v96 = xmmword_1D0E84510;
    v317 = xmmword_1D0E84510;
    v316 = &unk_1F4CE43B0;
    v319 = v320;
    v313 = 0x800000008;
    v311 = &unk_1F4CE43B0;
    v97 = v246 * v246;
    v314 = v315;
    LODWORD(v312) = v246;
    DWORD1(v312) = v246;
    DWORD2(v312) = v246 * v246;
    HIDWORD(v312) = v246;
    if (v246 * v246 > 3)
    {
      v99 = &v315[v97];
      bzero(v315, 16 * ((v97 - 1) >> 1));
      v96 = xmmword_1D0E84510;
      *(v99 - 2) = 0;
      *(v99 - 1) = 0;
    }

    else if (v97 >= 1)
    {
      bzero(v315, 8 * (v246 * v246));
      v96 = xmmword_1D0E84510;
    }

    if (v246)
    {
      v100 = 0;
      v101 = v246;
      v102 = v314;
      do
      {
        v102[v100] = 0x3FF0000000000000;
        v100 += v246 + 1;
        --v101;
      }

      while (v101);
    }

    v308 = 0x800000008;
    v307 = v96;
    v306 = &unk_1F4CE43B0;
    v309 = v310;
    v303 = 0x100000008;
    v302 = xmmword_1D0E84520;
    v301 = &unk_1F4CE4320;
    v304 = &v305;
    v298 = 0x100000008;
    v297 = xmmword_1D0E84520;
    v296 = &unk_1F4CE4320;
    v299 = &v300;
    if (v231 < 1)
    {
LABEL_299:
      sub_1D0B894B0(v7 + 112, &v322);
      sub_1D0B894B0(v7 + 664, v321);
      result = 0;
      *(v7 + 1540) = 0;
      return result;
    }

    v236 = 0;
    v103 = 0;
    v104 = 0;
    v229 = &v347[2 * v230];
    v244 = vdupq_n_s64(v246 - 1);
    v238 = vdupq_n_s64(v239 - 1);
    v237 = vdupq_n_s64(4uLL);
    v242 = v246;
    while (1)
    {
      if (v234)
      {
        v105 = v236;
        if (v236)
        {
          if ((v242 & 0x80000000) != 0)
          {
            __assert_rtn("Eye", "cnmatrix.h", 2094, "n >= 0");
          }

          v293 = 0x800000008;
          v291 = &unk_1F4CE43B0;
          v106 = v242 * v242;
          v294 = v295;
          LODWORD(v292) = v242;
          DWORD1(v292) = v242;
          DWORD2(v292) = v242 * v242;
          HIDWORD(v292) = v242;
          if ((v242 * v242) > 3)
          {
            bzero(v295, 16 * ((v106 - 1) >> 1));
            v152 = &v293 + v106;
            *v152 = 0;
            v152[1] = 0;
          }

          else if (v106 >= 1)
          {
            bzero(v295, 8 * v242 * v242);
          }

          if (v242)
          {
            v153 = 0;
            v154 = v294;
            v155 = v242;
            do
            {
              *&v154[2 * v153] = 0x3FF0000000000000;
              v153 += v242 + 1;
              --v155;
            }

            while (v155);
          }

          sub_1D0BA16B8(&v344, &v311, &v333, &v333);
          v105 = v236;
          sub_1D0B9F65C(&v344, &v291);
        }

        v156 = *(*(v245 + 32) + 4 * v105);
        v257 = 0x800000001;
        v255 = &unk_1F4CE13B8;
        v258 = v259;
        if (v156 == 1)
        {
          v157 = 0;
          *&v158 = 0x100000001;
          *(&v158 + 1) = 0x100000001;
          v256 = v158;
          v259[0] = 0;
          v159 = 1;
          LODWORD(v156) = 1;
        }

        else if (v156 <= 0)
        {
          v159 = 0;
          LODWORD(v156) = 0;
          v256 = 0uLL;
          v157 = 1;
        }

        else
        {
          v160 = 0;
          LODWORD(v256) = 1;
          DWORD1(v256) = v156;
          *(&v256 + 1) = v156 | 0x100000000;
          v161 = v260;
          v162 = xmmword_1D0E7DD30;
          v163 = xmmword_1D0E84440;
          v164 = vdupq_n_s64(v156 - 1);
          do
          {
            v165 = vmovn_s64(vcgeq_u64(v164, v162));
            if (vuzp1_s16(v165, *v162.i8).u8[0])
            {
              *(v161 - 3) = v160;
            }

            if (vuzp1_s16(v165, *&v162).i8[2])
            {
              *(v161 - 2) = v160 + 1;
            }

            if (vuzp1_s16(*&v162, vmovn_s64(vcgeq_u64(v164, *&v163))).i32[1])
            {
              *(v161 - 1) = v160 + 2;
              *v161 = v160 + 3;
            }

            v160 += 4;
            v166 = vdupq_n_s64(4uLL);
            v163 = vaddq_s64(v163, v166);
            v162 = vaddq_s64(v162, v166);
            v161 += 4;
          }

          while (((v156 + 3) & 0xFFFFFFFC) != v160);
          v157 = 0;
          v159 = 1;
        }

        v293 = 0x100000008;
        v291 = &unk_1F4CE43F8;
        v294 = v295;
        *&v292 = __PAIR64__(v159, v156);
        DWORD2(v292) = v156 * v159;
        HIDWORD(v292) = v156;
        if (v156)
        {
          v167 = 0;
          v168 = 0;
          do
          {
            if ((v157 & 1) == 0)
            {
              v169 = 0;
              do
              {
                v295[v168 + HIDWORD(v292) * v169] = v259[v167 + v169];
                ++v169;
              }

              while (v159 != v169);
            }

            ++v168;
            v167 += v159;
          }

          while (v168 != v156);
          v170 = v292;
          v159 = DWORD1(v292);
        }

        else
        {
          v170 = 0;
        }

        *&v345[16] = 0x100000008;
        v344 = &unk_1F4CE43F8;
        v346 = v347;
        *v345 = v170;
        *&v345[4] = v159;
        v171 = (v170 * v159);
        *&v345[8] = v171;
        *&v345[12] = v170;
        if (v171 >= 1)
        {
          v172 = v295;
          v173 = v347;
          do
          {
            v174 = *v172++;
            *v173++ = v174 + v104;
            --v171;
          }

          while (v171);
        }

        sub_1D0B9F5D4(&v333, &v344);
        v175 = *(*(v245 + 32) + 4 * (*(v245 + 20) + v105));
        v257 = 0x800000001;
        v255 = &unk_1F4CE13B8;
        v258 = v259;
        if (v175 == 1)
        {
          v176 = 0;
          *&v177 = 0x100000001;
          *(&v177 + 1) = 0x100000001;
          v256 = v177;
          v259[0] = 0;
          v178 = 1;
          LODWORD(v175) = 1;
        }

        else if (v175 <= 0)
        {
          v178 = 0;
          LODWORD(v175) = 0;
          v256 = 0uLL;
          v176 = 1;
        }

        else
        {
          v179 = 0;
          LODWORD(v256) = 1;
          DWORD1(v256) = v175;
          *(&v256 + 1) = v175 | 0x100000000;
          v180 = v260;
          v181 = xmmword_1D0E7DD30;
          v182 = xmmword_1D0E84440;
          v183 = vdupq_n_s64(v175 - 1);
          do
          {
            v184 = vmovn_s64(vcgeq_u64(v183, v181));
            if (vuzp1_s16(v184, *v181.i8).u8[0])
            {
              *(v180 - 3) = v179;
            }

            if (vuzp1_s16(v184, *&v181).i8[2])
            {
              *(v180 - 2) = v179 + 1;
            }

            if (vuzp1_s16(*&v181, vmovn_s64(vcgeq_u64(v183, *&v182))).i32[1])
            {
              *(v180 - 1) = v179 + 2;
              *v180 = v179 + 3;
            }

            v179 += 4;
            v182 = vaddq_s64(v182, v237);
            v181 = vaddq_s64(v181, v237);
            v180 += 4;
          }

          while (((v175 + 3) & 0xFFFFFFFC) != v179);
          v176 = 0;
          v178 = 1;
        }

        v293 = 0x100000008;
        v291 = &unk_1F4CE43F8;
        v294 = v295;
        *&v292 = __PAIR64__(v178, v175);
        DWORD2(v292) = v175 * v178;
        HIDWORD(v292) = v175;
        if (v175)
        {
          v185 = 0;
          v186 = 0;
          do
          {
            if ((v176 & 1) == 0)
            {
              v187 = 0;
              do
              {
                v295[v186 + HIDWORD(v292) * v187] = v259[v185 + v187];
                ++v187;
              }

              while (v178 != v187);
            }

            ++v186;
            v185 += v178;
          }

          while (v186 != v175);
          v188 = v292;
          v178 = DWORD1(v292);
        }

        else
        {
          v188 = 0;
        }

        *&v345[16] = 0x100000008;
        v344 = &unk_1F4CE43F8;
        v346 = v347;
        *v345 = v188;
        *&v345[4] = v178;
        v189 = (v188 * v178);
        *&v345[8] = v189;
        *&v345[12] = v188;
        if (v189 >= 1)
        {
          v190 = v295;
          v191 = v347;
          do
          {
            v192 = *v190++;
            *v191++ = v192 + v103;
            --v189;
          }

          while (v189);
        }

        sub_1D0B9F5D4(&v328, &v344);
        sub_1D0D8D744(v6, &v328, &v328, &v344);
        sub_1D0B894B0(&v316, &v344);
        v193 = *(v245 + 32);
        v150 = *(v193 + 4 * (*(v245 + 20) + v105));
        v242 = *(v193 + 4 * v105);
        v194 = v341;
        sub_1D0BA16B8(&v344, &v311, &v333, &v333);
        sub_1D0B9F65C(&v344, v194 + 552 * v105);
        if ((v150 & 0x80000000) != 0)
        {
          __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
        }

        *&v345[16] = 0x800000008;
        v344 = &unk_1F4CE43B0;
        v195 = v150 * v246;
        v346 = v347;
        *v345 = v246;
        *&v345[4] = v150;
        *&v345[8] = v150 * v246;
        *&v345[12] = v246;
        if ((v150 * v246) > 3)
        {
          bzero(v347, 16 * ((v195 - 1) >> 1));
          v196 = &v345[8 * v150 * v246 + 16];
          *v196 = 0;
          v196[1] = 0;
        }

        else if (v195 >= 1)
        {
          bzero(v347, 8 * v150 * v246);
        }

        sub_1D0B894B0(&v306, &v344);
        v197 = v339;
        sub_1D0D8D7EC(&v306, &v333, ":", &v344);
        sub_1D0B9F65C(&v344, v197 + 552 * v236);
        sub_1D0B894B0(&v301, v327);
        v198 = v343;
        sub_1D0BA4B2C(&v344, &v301, &v333);
        sub_1D0BA556C(&v344, v198 + 104 * v236);
        sub_1D0BA4EA4(&v247, &v328, &v344);
        sub_1D0B894B0(&v296, &v344);
        v199 = *(v245 + 32);
        v104 += *(v199 + 4 * v236);
        v103 += *(v199 + 4 * (*(v245 + 20) + v236));
        v151 = v246;
        v149 = v150 * v246;
      }

      else
      {
        sub_1D0B894B0(&v316, v6);
        *&v345[16] = 0x800000008;
        v344 = &unk_1F4CE43B0;
        v346 = v347;
        *v345 = v246;
        *&v345[4] = v239;
        *&v345[8] = v230;
        *&v345[12] = v246;
        if (v230 >= 4)
        {
          bzero(v347, 16 * ((v230 - 1) >> 1));
          *(v229 - 2) = 0;
          *(v229 - 1) = 0;
        }

        else if (v230 >= 1)
        {
          bzero(v347, 8 * v230);
        }

        sub_1D0B894B0(&v306, &v344);
        sub_1D0B894B0(&v301, v7 + 8);
        sub_1D0B894B0(&v296, &v247);
        if (v243 < 1)
        {
          v149 = v230;
          v150 = v239;
          v151 = v246;
          v242 = v246;
        }

        else
        {
          v107 = 0;
          v108 = *(v245 + 32);
          do
          {
            v109 = *(v108 + 4 * v107);
            v257 = 0x800000001;
            v255 = &unk_1F4CE13B8;
            v258 = v259;
            if (v109 == 1)
            {
              v110 = 0;
              *&v111 = 0x100000001;
              *(&v111 + 1) = 0x100000001;
              v256 = v111;
              v259[0] = 0;
              v112 = 1;
              LODWORD(v109) = 1;
            }

            else if (v109 <= 0)
            {
              v112 = 0;
              LODWORD(v109) = 0;
              v256 = 0uLL;
              v110 = 1;
            }

            else
            {
              v113 = 0;
              LODWORD(v256) = 1;
              DWORD1(v256) = v109;
              *(&v256 + 1) = v109 | 0x100000000;
              v114 = xmmword_1D0E84440;
              v115 = xmmword_1D0E7DD30;
              v116 = v260;
              v117 = vdupq_n_s64(v109 - 1);
              do
              {
                v118 = vmovn_s64(vcgeq_u64(v117, v115));
                if (vuzp1_s16(v118, *v114.i8).u8[0])
                {
                  *(v116 - 3) = v113;
                }

                if (vuzp1_s16(v118, *&v114).i8[2])
                {
                  *(v116 - 2) = v113 + 1;
                }

                if (vuzp1_s16(*&v114, vmovn_s64(vcgeq_u64(v117, *&v114))).i32[1])
                {
                  *(v116 - 1) = v113 + 2;
                  *v116 = v113 + 3;
                }

                v113 += 4;
                v119 = vdupq_n_s64(4uLL);
                v114 = vaddq_s64(v114, v119);
                v115 = vaddq_s64(v115, v119);
                v116 += 4;
              }

              while (((v109 + 3) & 0xFFFFFFFC) != v113);
              v110 = 0;
              v112 = 1;
            }

            v293 = 0x100000008;
            v291 = &unk_1F4CE43F8;
            v294 = v295;
            *&v292 = __PAIR64__(v112, v109);
            DWORD2(v292) = v109 * v112;
            HIDWORD(v292) = v109;
            if (v109)
            {
              v120 = 0;
              v121 = 0;
              do
              {
                if ((v110 & 1) == 0)
                {
                  v122 = 0;
                  do
                  {
                    v295[v121 + HIDWORD(v292) * v122] = v259[v120 + v122];
                    ++v122;
                  }

                  while (v112 != v122);
                }

                ++v121;
                v120 += v112;
              }

              while (v121 != v109);
              v123 = v292;
              v112 = DWORD1(v292);
            }

            else
            {
              v123 = 0;
            }

            *&v345[16] = 0x100000008;
            v344 = &unk_1F4CE43F8;
            v346 = v347;
            *v345 = v123;
            *&v345[4] = v112;
            v124 = (v123 * v112);
            *&v345[8] = v124;
            *&v345[12] = v123;
            if (v124 >= 1)
            {
              v125 = v295;
              v126 = v347;
              do
              {
                v127 = *v125++;
                *v126++ = v127 + v104;
                --v124;
              }

              while (v124);
            }

            sub_1D0B9F5D4(&v333, &v344);
            v128 = *(*(v245 + 32) + 4 * (*(v245 + 20) + v107));
            v257 = 0x800000001;
            v255 = &unk_1F4CE13B8;
            v258 = v259;
            if (v128 == 1)
            {
              v129 = 0;
              *&v130 = 0x100000001;
              *(&v130 + 1) = 0x100000001;
              v256 = v130;
              v259[0] = 0;
              v131 = 1;
              LODWORD(v128) = 1;
            }

            else if (v128 <= 0)
            {
              v131 = 0;
              LODWORD(v128) = 0;
              v256 = 0uLL;
              v129 = 1;
            }

            else
            {
              v132 = 0;
              LODWORD(v256) = 1;
              DWORD1(v256) = v128;
              *(&v256 + 1) = v128 | 0x100000000;
              v133 = xmmword_1D0E84440;
              v134 = xmmword_1D0E7DD30;
              v135 = v260;
              v136 = vdupq_n_s64(v128 - 1);
              do
              {
                v137 = vmovn_s64(vcgeq_u64(v136, v134));
                if (vuzp1_s16(v137, *v133.i8).u8[0])
                {
                  *(v135 - 3) = v132;
                }

                if (vuzp1_s16(v137, *&v133).i8[2])
                {
                  *(v135 - 2) = v132 + 1;
                }

                if (vuzp1_s16(*&v133, vmovn_s64(vcgeq_u64(v136, *&v133))).i32[1])
                {
                  *(v135 - 1) = v132 + 2;
                  *v135 = v132 + 3;
                }

                v132 += 4;
                v138 = vdupq_n_s64(4uLL);
                v133 = vaddq_s64(v133, v138);
                v134 = vaddq_s64(v134, v138);
                v135 += 4;
              }

              while (((v128 + 3) & 0xFFFFFFFC) != v132);
              v129 = 0;
              v131 = 1;
            }

            v293 = 0x100000008;
            v291 = &unk_1F4CE43F8;
            v294 = v295;
            *&v292 = __PAIR64__(v131, v128);
            DWORD2(v292) = v128 * v131;
            HIDWORD(v292) = v128;
            if (v128)
            {
              v139 = 0;
              v140 = 0;
              do
              {
                if ((v129 & 1) == 0)
                {
                  v141 = 0;
                  do
                  {
                    v295[v140 + HIDWORD(v292) * v141] = v259[v139 + v141];
                    ++v141;
                  }

                  while (v131 != v141);
                }

                ++v140;
                v139 += v131;
              }

              while (v140 != v128);
              v142 = v292;
              v131 = DWORD1(v292);
            }

            else
            {
              v142 = 0;
            }

            *&v345[16] = 0x100000008;
            v344 = &unk_1F4CE43F8;
            v346 = v347;
            *v345 = v142;
            *&v345[4] = v131;
            v143 = (v142 * v131);
            *&v345[8] = v143;
            *&v345[12] = v142;
            if (v143 >= 1)
            {
              v144 = v295;
              v145 = v347;
              do
              {
                v146 = *v144++;
                *v145++ = v146 + v103;
                --v143;
              }

              while (v143);
            }

            sub_1D0B9F5D4(&v328, &v344);
            v147 = v341;
            sub_1D0BA16B8(&v344, &v311, &v333, &v333);
            sub_1D0B9F65C(&v344, v147 + 552 * v107);
            v148 = v339;
            sub_1D0BA16B8(&v344, &v306, &v333, &v328);
            sub_1D0B9F65C(&v344, v148 + 552 * v107);
            v108 = *(v245 + 32);
            v104 += *(v108 + 4 * v107);
            v103 += *(v108 + 4 * (*(v245 + 20) + v107++));
          }

          while (v107 != v243);
          v149 = v230;
          v150 = v239;
          v151 = v246;
          v242 = v246;
        }
      }

      v288 = 0x800000008;
      v286 = &unk_1F4CE43B0;
      v289 = v290;
      *&v287 = __PAIR64__(v151, v150);
      *(&v287 + 1) = __PAIR64__(v150, v149);
      if (v149 > 3)
      {
        bzero(v290, 16 * ((v149 - 1) >> 1));
        v200 = &v288 + v149;
        *v200 = 0;
        v200[1] = 0;
      }

      else if (v149 >= 1)
      {
        bzero(v290, 8 * v149);
      }

      *&v345[16] = 0x1000000008;
      *v345 = xmmword_1D0E84560;
      v344 = &unk_1F4CE1788;
      v346 = v347;
      sub_1D0B8876C(&v316, &v286, &v344);
      v278 = 0x800000008;
      v277 = xmmword_1D0E84510;
      v276 = &unk_1F4CE43B0;
      v279 = v280;
      sub_1D0BA5940(&v322, &v276);
      v273 = 0x800000008;
      v272 = xmmword_1D0E84510;
      v271 = &unk_1F4CE43B0;
      v274 = v275;
      sub_1D0B89390(&v311, &v306, &v271);
      v283 = 0x800000008;
      v282 = xmmword_1D0E84510;
      v281 = &unk_1F4CE43B0;
      v284 = v285;
      sub_1D0B89390(&v276, &v271, &v281);
      v268 = 0x800000008;
      v267 = xmmword_1D0E84510;
      v266 = &unk_1F4CE43B0;
      v269 = v270;
      sub_1D0B89390(&v322, &v311, &v266);
      v257 = 0x1000000008;
      v255 = &unk_1F4CE1788;
      v256 = xmmword_1D0E84560;
      v258 = v259;
      sub_1D0B8876C(&v281, &v266, &v255);
      v293 = 0x1000000010;
      v292 = xmmword_1D0E84570;
      v291 = &unk_1F4CE17D0;
      v294 = v295;
      sub_1D0BA59C4(&v344, &v255, &v291);
      *&v345[16] = 0x100000008;
      *v345 = xmmword_1D0E84520;
      v344 = &unk_1F4CE4320;
      v346 = v347;
      sub_1D0B89390(&v316, &v296, &v344);
      v263 = 0x100000008;
      v262 = xmmword_1D0E84520;
      v261 = &unk_1F4CE4320;
      v264 = &v265;
      sub_1D0B89390(&v306, &v296, &v261);
      v268 = 0x100000008;
      v267 = xmmword_1D0E84520;
      v266 = &unk_1F4CE4320;
      v269 = v270;
      sub_1D0BA5A78(&v301, &v261, &v266);
      v273 = 0x100000008;
      v272 = xmmword_1D0E84520;
      v271 = &unk_1F4CE4320;
      v274 = v275;
      sub_1D0B89390(&v311, &v266, &v271);
      v278 = 0x100000008;
      v277 = xmmword_1D0E84520;
      v276 = &unk_1F4CE4320;
      v279 = v280;
      sub_1D0BA5A78(&v271, v327, &v276);
      v288 = 0x100000008;
      v287 = xmmword_1D0E84520;
      v286 = &unk_1F4CE4320;
      v289 = v290;
      sub_1D0B89390(&v322, &v276, &v286);
      v257 = 0x100000008;
      v255 = &unk_1F4CE4320;
      v256 = xmmword_1D0E84520;
      v258 = v259;
      sub_1D0B88838(&v286, v321, &v255);
      v283 = 0x100000010;
      v282 = xmmword_1D0E83CB0;
      v281 = &unk_1F4CDFE00;
      v284 = v285;
      sub_1D0BA59C4(&v344, &v255, &v281);
      v257 = 0x1000000010;
      v255 = &unk_1F4CE17D0;
      v256 = xmmword_1D0E84570;
      v258 = v259;
      v278 = 0x100000010;
      v277 = xmmword_1D0E83CB0;
      v276 = &unk_1F4CDFE00;
      v279 = v280;
      v288 = 0x100000010;
      v287 = xmmword_1D0E83CB0;
      v286 = &unk_1F4CDFE00;
      v289 = v290;
      *&v345[16] = 0x1000000010;
      *v345 = xmmword_1D0E84570;
      v344 = &unk_1F4CE17D0;
      v346 = v347;
      sub_1D0BA5B14(&v291, &v281, &v286, &v344, &v276, &v255);
      *&v345[16] = 0x800000001;
      v344 = &unk_1F4CE13B8;
      v346 = v347;
      v201 = v246;
      if (v246 == 1)
      {
        v202 = 0;
        *&v203 = 0x100000001;
        *(&v203 + 1) = 0x100000001;
        *v345 = v203;
        v347[0] = v150;
      }

      else
      {
        if (!v246)
        {
          *v345 = 0;
          *&v345[8] = 0;
          v202 = 1;
          goto LABEL_269;
        }

        *v345 = 1;
        *&v345[4] = v246;
        v204 = (v246 + 3) & 0xFFFFFFFC;
        v205 = v348;
        v206 = xmmword_1D0E7DD30;
        v207 = xmmword_1D0E84440;
        *&v345[8] = v246;
        *&v345[12] = 1;
        do
        {
          v208 = vmovn_s64(vcgeq_u64(v244, v206));
          if (vuzp1_s16(v208, *v206.i8).u8[0])
          {
            *(v205 - 3) = v150;
          }

          if (vuzp1_s16(v208, *&v206).i8[2])
          {
            *(v205 - 2) = v150 + 1;
          }

          if (vuzp1_s16(*&v206, vmovn_s64(vcgeq_u64(v244, *&v207))).i32[1])
          {
            *(v205 - 1) = v150 + 2;
            *v205 = v150 + 3;
          }

          v209 = vdupq_n_s64(4uLL);
          v207 = vaddq_s64(v207, v209);
          v206 = vaddq_s64(v206, v209);
          v150 += 4;
          v205 += 4;
          v204 -= 4;
        }

        while (v204);
        v202 = 0;
      }

      v201 = 1;
LABEL_269:
      v288 = 0x100000008;
      v286 = &unk_1F4CE43F8;
      v289 = v290;
      *&v287 = __PAIR64__(v201, v246);
      DWORD2(v287) = v201 * v246;
      HIDWORD(v287) = v246;
      v7 = v235;
      v6 = v232;
      if (v246)
      {
        v210 = 0;
        v211 = 0;
        do
        {
          if ((v202 & 1) == 0)
          {
            v212 = 0;
            do
            {
              v290[v211 + HIDWORD(v287) * v212] = v347[v210 + v212];
              ++v212;
            }

            while (v201 != v212);
          }

          ++v211;
          v210 += v201;
        }

        while (v211 != v246);
      }

      sub_1D0B894B0(v327, &v301);
      sub_1D0BA16B8(&v344, &v255, &v286, &v286);
      sub_1D0B894B0(&v322, &v344);
      sub_1D0BA4B2C(&v344, &v276, &v286);
      sub_1D0B894B0(v321, &v344);
      if ((v234 & 1) == 0)
      {
        *&v345[16] = 0x800000001;
        v344 = &unk_1F4CE13B8;
        v346 = v347;
        if (v239)
        {
          if (v239 == 1)
          {
            v213 = 0;
            *&v214 = 0x100000001;
            *(&v214 + 1) = 0x100000001;
            *v345 = v214;
            v347[0] = 0;
          }

          else
          {
            v216 = 0;
            *v345 = 1;
            *&v345[4] = v239;
            v217 = v348;
            v218 = xmmword_1D0E7DD30;
            v219 = xmmword_1D0E84440;
            *&v345[8] = v239;
            *&v345[12] = 1;
            do
            {
              v220 = vmovn_s64(vcgeq_u64(v238, v218));
              if (vuzp1_s16(v220, *v218.i8).u8[0])
              {
                *(v217 - 3) = v216;
              }

              if (vuzp1_s16(v220, *&v218).i8[2])
              {
                *(v217 - 2) = v216 + 1;
              }

              if (vuzp1_s16(*&v218, vmovn_s64(vcgeq_u64(v238, *&v219))).i32[1])
              {
                *(v217 - 1) = v216 + 2;
                *v217 = v216 + 3;
              }

              v216 += 4;
              v221 = vdupq_n_s64(4uLL);
              v219 = vaddq_s64(v219, v221);
              v218 = vaddq_s64(v218, v221);
              v217 += 4;
            }

            while (((v239 + 3) & 0xFFFFFFFC) != v216);
            v213 = 0;
          }

          v215 = 1;
        }

        else
        {
          v215 = 0;
          *v345 = 0;
          *&v345[8] = 0;
          v213 = 1;
        }

        v273 = 0x100000008;
        v271 = &unk_1F4CE43F8;
        v274 = v275;
        *&v272 = __PAIR64__(v215, v239);
        DWORD2(v272) = v215 * v239;
        HIDWORD(v272) = v239;
        if (v239)
        {
          v222 = 0;
          v223 = 0;
          do
          {
            if ((v213 & 1) == 0)
            {
              v224 = 0;
              do
              {
                v275[v223 + HIDWORD(v272) * v224] = v347[v222 + v224];
                ++v224;
              }

              while (v215 != v224);
            }

            ++v223;
            v222 += v215;
          }

          while (v223 != v239);
        }

        sub_1D0BA16B8(&v344, &v255, &v271, &v286);
        sub_1D0B894B0(v235 + 1752, &v344);
        sub_1D0BA4B2C(&v344, &v276, &v271);
        sub_1D0B894B0(v235 + 2304, &v344);
        sub_1D0BA16B8(&v344, &v255, &v271, &v271);
        sub_1D0B894B0(v235 + 2408, &v344);
      }

      if (++v236 == v231)
      {
        goto LABEL_299;
      }
    }
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = *(v245 + 32);
  v53 = 1;
  v233 = vdupq_n_s64(4uLL);
  do
  {
    v54 = *(v52 + 4 * v49);
    v257 = 0x800000001;
    v255 = &unk_1F4CE13B8;
    v258 = v259;
    if (v54 == 1)
    {
      v55 = 0;
      *&v56 = 0x100000001;
      *(&v56 + 1) = 0x100000001;
      v256 = v56;
      v259[0] = 0;
      v57 = 1;
      LODWORD(v54) = 1;
    }

    else if (v54 <= 0)
    {
      v57 = 0;
      LODWORD(v54) = 0;
      v256 = 0uLL;
      v55 = 1;
    }

    else
    {
      v58 = 0;
      LODWORD(v256) = 1;
      DWORD1(v256) = v54;
      *(&v256 + 1) = v54 | 0x100000000;
      v59 = v260;
      v60 = xmmword_1D0E7DD30;
      v61 = xmmword_1D0E84440;
      v62 = vdupq_n_s64(v54 - 1);
      do
      {
        v63 = vmovn_s64(vcgeq_u64(v62, v60));
        if (vuzp1_s16(v63, *v60.i8).u8[0])
        {
          *(v59 - 3) = v58;
        }

        if (vuzp1_s16(v63, *&v60).i8[2])
        {
          *(v59 - 2) = v58 + 1;
        }

        if (vuzp1_s16(*&v60, vmovn_s64(vcgeq_u64(v62, *&v61))).i32[1])
        {
          *(v59 - 1) = v58 + 2;
          *v59 = v58 + 3;
        }

        v58 += 4;
        v64 = vdupq_n_s64(4uLL);
        v61 = vaddq_s64(v61, v64);
        v60 = vaddq_s64(v60, v64);
        v59 += 4;
      }

      while (((v54 + 3) & 0xFFFFFFFC) != v58);
      v55 = 0;
      v57 = 1;
    }

    v293 = 0x100000008;
    v291 = &unk_1F4CE43F8;
    v294 = v295;
    *&v292 = __PAIR64__(v57, v54);
    DWORD2(v292) = v54 * v57;
    HIDWORD(v292) = v54;
    if (v54)
    {
      v65 = 0;
      v66 = 0;
      do
      {
        if ((v55 & 1) == 0)
        {
          v67 = 0;
          do
          {
            v295[v66 + HIDWORD(v292) * v67] = v259[v65 + v67];
            ++v67;
          }

          while (v57 != v67);
        }

        ++v66;
        v65 += v57;
      }

      while (v66 != v54);
      v68 = v292;
      v57 = DWORD1(v292);
    }

    else
    {
      v68 = 0;
    }

    *&v345[16] = 0x100000008;
    v344 = &unk_1F4CE43F8;
    v346 = v347;
    *v345 = v68;
    *&v345[4] = v57;
    v69 = (v68 * v57);
    *&v345[8] = v69;
    *&v345[12] = v68;
    if (v69 >= 1)
    {
      v70 = v295;
      v71 = v347;
      do
      {
        v72 = *v70++;
        *v71++ = v72 + v51;
        --v69;
      }

      while (v69);
    }

    sub_1D0B9F5D4(&v333, &v344);
    v73 = *(*(v245 + 32) + 4 * (*(v245 + 20) + v49));
    v257 = 0x800000001;
    v255 = &unk_1F4CE13B8;
    v258 = v259;
    if (v73 == 1)
    {
      v74 = 0;
      *&v75 = 0x100000001;
      *(&v75 + 1) = 0x100000001;
      v256 = v75;
      v259[0] = 0;
      v76 = 1;
      LODWORD(v73) = 1;
    }

    else if (v73 <= 0)
    {
      v76 = 0;
      LODWORD(v73) = 0;
      v256 = 0uLL;
      v74 = 1;
    }

    else
    {
      v77 = 0;
      LODWORD(v256) = 1;
      DWORD1(v256) = v73;
      *(&v256 + 1) = v73 | 0x100000000;
      v78 = v260;
      v79 = xmmword_1D0E7DD30;
      v80 = xmmword_1D0E84440;
      v81 = vdupq_n_s64(v73 - 1);
      do
      {
        v82 = vmovn_s64(vcgeq_u64(v81, v79));
        if (vuzp1_s16(v82, *v79.i8).u8[0])
        {
          *(v78 - 3) = v77;
        }

        if (vuzp1_s16(v82, *&v79).i8[2])
        {
          *(v78 - 2) = v77 + 1;
        }

        if (vuzp1_s16(*&v79, vmovn_s64(vcgeq_u64(v81, *&v80))).i32[1])
        {
          *(v78 - 1) = v77 + 2;
          *v78 = v77 + 3;
        }

        v77 += 4;
        v80 = vaddq_s64(v80, v233);
        v79 = vaddq_s64(v79, v233);
        v78 += 4;
      }

      while (((v73 + 3) & 0xFFFFFFFC) != v77);
      v74 = 0;
      v76 = 1;
    }

    v293 = 0x100000008;
    v291 = &unk_1F4CE43F8;
    v294 = v295;
    *&v292 = __PAIR64__(v76, v73);
    DWORD2(v292) = v73 * v76;
    HIDWORD(v292) = v73;
    if (v73)
    {
      v83 = 0;
      v84 = 0;
      do
      {
        if ((v74 & 1) == 0)
        {
          v85 = 0;
          do
          {
            v295[v84 + HIDWORD(v292) * v85] = v259[v83 + v85];
            ++v85;
          }

          while (v76 != v85);
        }

        ++v84;
        v83 += v76;
      }

      while (v84 != v73);
      v86 = v292;
      v76 = DWORD1(v292);
    }

    else
    {
      v86 = 0;
    }

    *&v345[16] = 0x100000008;
    v344 = &unk_1F4CE43F8;
    v346 = v347;
    *v345 = v86;
    *&v345[4] = v76;
    v87 = (v86 * v76);
    *&v345[8] = v87;
    *&v345[12] = v86;
    if (v87 >= 1)
    {
      v88 = v295;
      v89 = v347;
      do
      {
        v90 = *v88++;
        *v89++ = v90 + v50;
        --v87;
      }

      while (v87);
    }

    sub_1D0B9F5D4(&v328, &v344);
    v318 = 0x100000008;
    v317 = xmmword_1D0E84520;
    v316 = &unk_1F4CE4320;
    v319 = v320;
    *&v345[16] = 0x800000008;
    *v345 = xmmword_1D0E84510;
    v344 = &unk_1F4CE43B0;
    v346 = v347;
    v293 = 0x800000008;
    v292 = xmmword_1D0E84510;
    v291 = &unk_1F4CE43B0;
    v294 = v295;
    v91 = *(*(v241 + 32) + 8 * v49);
    sub_1D0BA4B2C(&v255, v235 + 768, &v333);
    v92 = sub_1D0BA4EA4(&v247, &v328, &v322);
    if (v91(&v255, &v322, *(*(v240 + 32) + 8 * v49), &v316, &v344, &v291, v92))
    {
      *(v235 + 1536) = 0;
      return 20;
    }

    sub_1D0BA4B2C(&v255, v235 + 8, &v333);
    sub_1D0BA556C(&v255, &v316);
    sub_1D0B894B0(v343 + 104 * v49, &v316);
    v257 = 0x800000008;
    v255 = &unk_1F4CE43B0;
    v256 = xmmword_1D0E84510;
    v258 = v259;
    v313 = 0x100000008;
    v311 = &unk_1F4CE43F8;
    v312 = xmmword_1D0E84520;
    v314 = v315;
    v308 = 0x100000008;
    v307 = xmmword_1D0E84520;
    v306 = &unk_1F4CE43F8;
    v309 = v310;
    v324 = 0x100000020;
    v322 = &unk_1F4CE3988;
    v323 = xmmword_1D0E84540;
    v325 = &v326;
    v93 = sub_1D0BA5174(&v344, &v311, &v306, &v322, &v255);
    sub_1D0B894B0(v341 + 552 * v49, &v255);
    *&v94 = sub_1D0B894B0(v339 + 552 * v49, &v291).n128_u64[0];
    v53 &= v93 <= v37;
    v52 = *(v245 + 32);
    v51 += *(v52 + 4 * v49);
    v50 += *(v52 + 4 * (*(v245 + 20) + v49++));
  }

  while (v49 != v243);
  v7 = v235;
  v6 = v232;
  if (v53)
  {
    goto LABEL_117;
  }

  LOWORD(v344) = 2;
  LOBYTE(v291) = 2;
  v225 = cnprint::CNLogFormatter::FormatWarning((v235 + 1704), "Predict state Jacobian matrix is not invertible.", v94);
  if (*(v235 + 1727) >= 0)
  {
    v226 = v225;
  }

  else
  {
    v226 = *(v235 + 1704);
  }

  cnprint::CNPrinter::Print(&v344, &v291, "%s", v226);
  sub_1D0B894B0(v235 + 112, v235 + 872);
  *&v345[16] = 0x100000008;
  *v345 = xmmword_1D0E84520;
  v344 = &unk_1F4CE4320;
  v346 = v347;
  sub_1D0B89390(v235 + 112, v235 + 8, &v344);
  sub_1D0B894B0(v235 + 664, &v344);
  *&v345[16] = 0x800000008;
  v344 = &unk_1F4CE43B0;
  v346 = v347;
  *v345 = v8;
  *&v345[4] = v246;
  *&v345[8] = v246 * v8;
  *&v345[12] = v8;
  if (v230 > 3)
  {
    v227 = &v347[2 * v230];
    bzero(v347, 16 * ((v230 - 1) >> 1));
    *(v227 - 2) = 0;
    *(v227 - 1) = 0;
  }

  else if (v230 >= 1)
  {
    bzero(v347, 8 * (v246 * v8));
  }

  sub_1D0B894B0(v235 + 1752, &v344);
  *&v345[16] = 0x100000008;
  v344 = &unk_1F4CE4320;
  v346 = v347;
  *v345 = v8;
  *&v345[4] = 1;
  *&v345[8] = v8;
  *&v345[12] = v8;
  if (v8 > 3)
  {
    v228 = &v347[2 * v8];
    bzero(v347, 16 * ((v8 - 1) >> 1));
    *(v228 - 2) = 0;
    *(v228 - 1) = 0;
  }

  else if (v8)
  {
    bzero(v347, 8 * v8);
  }

  sub_1D0B894B0(v235 + 2304, &v344);
  sub_1D0B894B0(v235 + 2408, v232);
  *(v235 + 1540) = 0;
  *(v235 + 1536) = 0;
  return 21;
}

void sub_1D0BA47DC(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B9356C(v11, a3);
  if ((*(*v3 + 88))(v3, v4))
  {
    raven::RavenEstimator::HandleMountStateEvent((v3 + 2968), v11);
    if (v5 && cnprint::CNPrinter::GetLogLevel(v5) <= 1)
    {
      v16 = 12;
      v15 = 1;
      v14[0] = (*(v11[0] + 16))(v11);
      v14[1] = v6;
      (*(v11[0] + 24))(v12, v11);
      if (v13 >= 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = v12[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v3 + 240, v14, "Failed to handle event - %s.", v7);
      if (*(v3 + 263) >= 0)
      {
        v8 = (v3 + 240);
      }

      else
      {
        v8 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v16, &v15, "%s", v8);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  else
  {
    LOWORD(v12[0]) = 12;
    LOBYTE(v14[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatGeneral((v3 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v3 + 263) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v12, v14, "%s", v10);
  }
}

void sub_1D0BA4980(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BA49A0(uint64_t a1, int a2, int a3, __n128 a4)
{
  v5 = 0;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE1630;
  a4.n128_u64[0] = 0x100000008;
  do
  {
    v6 = a1 + v5;
    *(v6 + 64) = 0x100000008;
    *(v6 + 40) = &unk_1F4CE4320;
    *(v6 + 48) = xmmword_1D0E84520;
    *(v6 + 72) = a1 + v5 + 80;
    v5 += 104;
  }

  while (v5 != 208);
  if (a2 < 0)
  {
    v8 = "nr >= 0";
    v9 = 419;
    goto LABEL_8;
  }

  if (a3 < 0)
  {
    v8 = "nc >= 0";
    v9 = 420;
LABEL_8:
    __assert_rtn("CNMatrix", "cnmatrix.h", v9, v8);
  }

  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  (*(*a1 + 16))(a1, a4, xmmword_1D0E84520);
  return a1;
}

void sub_1D0BA4ABC(_Unwind_Exception *a1)
{
  v1[18] = &unk_1F4CD5E28;
  v1[5] = &unk_1F4CD5E28;
  *v1 = &unk_1F4CE1688;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BA4B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000008;
  *(a1 + 8) = xmmword_1D0E84520;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE1740;
  *(a1 + 104) = a2;
  *(a1 + 136) = 0x100000008;
  *(a1 + 112) = &unk_1F4CE43F8;
  *(a1 + 120) = xmmword_1D0E84520;
  *(a1 + 144) = a1 + 152;
  sub_1D0B9F5D4(a1 + 112, a3);
  v6 = *(a1 + 120);
  v5 = *(a1 + 124);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 144);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t sub_1D0BA4C04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v6 <= v7)
  {
    v8 = *(a1 + 12);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9 && v8 == 6;
  if (v10 && ((v12 = *(a2 + 8), v13 = *(a2 + 12), v12 <= v13) ? (v14 = *(a2 + 12)) : (v14 = *(a2 + 8)), v12 ? (v15 = v13 == 0) : (v15 = 1), !v15 ? (v16 = v14 == 6) : (v16 = 0), v16))
  {
    v22 = *a3;
    v32 = 0x600000006;
    v30 = &unk_1F4CDF278;
    v31 = xmmword_1D0E7F320;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v33 = &v34;
    v34 = 0x3FF0000000000000;
    *&v38 = 0x3FF0000000000000;
    v42 = 0x3FF0000000000000;
    *&v46 = 0x3FF0000000000000;
    v50 = 0x3FF0000000000000;
    v54 = 0x3FF0000000000000;
    sub_1D0BA5090(v55, &v30);
    v23 = v56;
    v24 = v57;
    *(v57 + 24 * v56) = v22;
    *(v24 + 8 * ((4 * v23) | 1)) = v22;
    *(v24 + 40 * v23 + 16) = v22;
    v27 = 0x100000008;
    v25 = &unk_1F4CE4320;
    v26 = xmmword_1D0E84520;
    v28 = &v29;
    sub_1D0B89390(v55, a1, &v25);
    v32 = 0x100000008;
    v30 = &unk_1F4CE4320;
    v31 = xmmword_1D0E84520;
    v33 = &v34;
    sub_1D0B88838(&v25, a2, &v30);
    sub_1D0B894B0(a4, &v30);
    sub_1D0B894B0(a5, v55);
    v32 = 0x600000006;
    v30 = &unk_1F4CDF278;
    v31 = xmmword_1D0E7F320;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v33 = &v34;
    v34 = 0x3FF0000000000000;
    *&v38 = 0x3FF0000000000000;
    v42 = 0x3FF0000000000000;
    *&v46 = 0x3FF0000000000000;
    v50 = 0x3FF0000000000000;
    v54 = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v30);
    return 0;
  }

  else
  {
    v55[0] = 12;
    LOBYTE(v30) = 4;
    cnprint::CNPrinter::Print(v55, &v30, "f_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6);
    return 0xFFFFFFFFLL;
  }
}

double sub_1D0BA4EA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000008;
  *(a3 + 24) = 0x100000008;
  *a3 = &unk_1F4CE4320;
  *(a3 + 8) = v3;
  *(a3 + 12) = v4;
  *(a3 + 16) = v5;
  *(a3 + 20) = v3;
  v7 = (a3 + 40);
  *(a3 + 32) = a3 + 40;
  if (v5)
  {
    v8 = *(a2 + 32);
    v9 = *(a1 + 32);
    do
    {
      v10 = *v8++;
      result = *(v9 + 8 * v10);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0BA4F14(uint64_t a1, int a2, int a3, double a4, __n128 a5)
{
  v6 = 0;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE16B8;
  a5.n128_u64[0] = 0x800000008;
  do
  {
    v7 = a1 + v6;
    *(v7 + 64) = 0x800000008;
    *(v7 + 40) = &unk_1F4CE43B0;
    *(v7 + 48) = xmmword_1D0E84510;
    *(v7 + 72) = a1 + v6 + 80;
    v6 += 552;
  }

  while (v6 != 1104);
  if (a2 < 0)
  {
    v9 = "nr >= 0";
    v10 = 419;
    goto LABEL_8;
  }

  if (a3 < 0)
  {
    v9 = "nc >= 0";
    v10 = 420;
LABEL_8:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  (*(*a1 + 16))(a1, xmmword_1D0E84510, a5);
  return a1;
}

void sub_1D0BA502C(_Unwind_Exception *a1)
{
  v1[74] = &unk_1F4CD5E28;
  v1[5] = &unk_1F4CD5E28;
  *v1 = &unk_1F4CE1710;
  _Unwind_Resume(a1);
}

double sub_1D0BA5090(uint64_t a1, uint64_t a2)
{
  *&result = 0x800000008;
  *(a1 + 24) = 0x800000008;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE43B0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 8)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 8)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0BA5174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  sub_1D0B894B0(a5, a1);
  v10 = a5[2];
  v11 = a5[3];
  v12 = a5[5];
  v13 = *(a2 + 32);
  LODWORD(v39) = v10;
  LODWORD(v38) = v11;
  v43 = v12;
  if (v10 >= 1 && (v14 = 4 * v10, (v15 = operator new[](4 * v10, MEMORY[0x1E69E5398])) != 0))
  {
    v16 = v15;
    v42 = 0;
    dgetrf_NEWLAPACK();
    memcpy(v13, v16, v14);
    MEMORY[0x1D387EC80](v16, 0x1000C8052888210);
  }

  else
  {
    LOWORD(v39) = 4;
    LOBYTE(v38) = 5;
    cnprint::CNPrinter::Print(&v39, &v38, "Error using Inv: input argument %d invalid in getrf.");
  }

  if (v11 < 1)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 0.0;
    v18 = *(a1 + 32);
    v19 = v11;
    do
    {
      v20 = *v18++;
      v17 = v17 + fabs(v20);
      --v19;
    }

    while (v19);
    if (v11 != 1)
    {
      v21 = 1;
      v22 = v12;
      do
      {
        v23 = 0.0;
        v24 = v22;
        do
        {
          v23 = v23 + fabs(*(*(a1 + 32) + 8 * v24++));
        }

        while (v24 < v11 + v21 * v12);
        if (v23 > v17)
        {
          v17 = v23;
        }

        ++v21;
        v22 += v12;
      }

      while (v21 != v11);
    }
  }

  v38 = 0.0;
  v25 = *(a3 + 32);
  v40 = 49;
  v39 = v17;
  v42 = v12;
  v43 = v11;
  if (v11 < 1)
  {
    v29 = -2;
  }

  else
  {
    v26 = 4 * v11;
    v27 = operator new[](4 * v11, MEMORY[0x1E69E5398]);
    if (v27)
    {
      v28 = v27;
      v41 = 0;
      dgecon_NEWLAPACK();
      memcpy(v25, v28, 4 * v11);
      MEMORY[0x1D387EC80](v28, 0x1000C8052888210);
      v29 = v41;
      if ((v41 & 0x80000000) == 0)
      {
        v30 = *(a4 + 28) * *(a4 + 24);
        LODWORD(v39) = v11;
        v43 = v12;
        goto LABEL_25;
      }
    }

    else
    {
      v29 = -8;
    }
  }

  LOWORD(v39) = 4;
  LOBYTE(v43) = 5;
  cnprint::CNPrinter::Print(&v39, &v43, "Error using Inv: input argument %d invalid in gecon.", -v29);
  v30 = *(a4 + 28) * *(a4 + 24);
  LODWORD(v39) = v11;
  v43 = v12;
  if (v11 < 1)
  {
    v34 = -1;
LABEL_30:
    LOWORD(v39) = 4;
    LOBYTE(v43) = 5;
    cnprint::CNPrinter::Print(&v39, &v43, "Error using Inv: input argument %d invalid in getri.", -v34);
    goto LABEL_31;
  }

  v26 = 4 * v11;
LABEL_25:
  v31 = operator new[](v26, MEMORY[0x1E69E5398]);
  if (!v31)
  {
    v34 = -4;
    goto LABEL_30;
  }

  v32 = v31;
  memcpy(v31, v13, v26);
  v41 = 0;
  v42 = v30;
  dgetri_NEWLAPACK();
  v33 = MEMORY[0x1D387EC80](v32, 0x1000C8052888210);
  v34 = v41;
  if (v41 < 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  v35 = **(a4 + 32);
  if (v30 < v35 && cnprint::CNPrinter::GetLogLevel(v33) <= 1)
  {
    LOWORD(v39) = 4;
    LOBYTE(v43) = 1;
    cnprint::CNPrinter::Print(&v39, &v43, "Warning: Inv optimal workspace size %d is greater than provided workspace size %d; performance may suffer.", v35, v30);
  }

  v36 = v38;
  if (v34 >= 1)
  {
    sub_1D0BBBC00(a5, INFINITY);
  }

  return 1.0 / v36;
}

double sub_1D0BA556C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (v2 >= 1)
  {
    v3 = *(a2 + 32);
    v4 = *(a1 + 144);
    v5 = *(*(a1 + 104) + 32);
    v6 = *(a1 + 32);
    do
    {
      v7 = *v3++;
      result = v7;
      v9 = *v4++;
      *(v5 + 8 * v9) = result;
      *v6++ = result;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1D0BA55E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v6 <= v7)
  {
    v8 = *(a1 + 12);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9 && v8 == 2;
  if (v10 && ((v12 = *(a2 + 8), v13 = *(a2 + 12), v12 <= v13) ? (v14 = *(a2 + 12)) : (v14 = *(a2 + 8)), v12 ? (v15 = v13 == 0) : (v15 = 1), !v15 ? (v16 = v14 == 2) : (v16 = 0), v16))
  {
    v22 = *a3;
    v30 = 0x200000002;
    v28 = &unk_1F4CE0268;
    v29 = xmmword_1D0E83F70;
    v33 = 0;
    v34 = 0;
    v31 = &v32;
    v32 = 0x3FF0000000000000;
    v35 = 0x3FF0000000000000;
    sub_1D0BA5090(v36, &v28);
    *(v38 + 8 * v37) = v22;
    v25 = 0x100000008;
    v23 = &unk_1F4CE4320;
    v24 = xmmword_1D0E84520;
    v26 = &v27;
    sub_1D0B89390(v36, a1, &v23);
    v30 = 0x100000008;
    v28 = &unk_1F4CE4320;
    v29 = xmmword_1D0E84520;
    v31 = &v32;
    sub_1D0B88838(&v23, a2, &v28);
    sub_1D0B894B0(a4, &v28);
    sub_1D0B894B0(a5, v36);
    v30 = 0x200000002;
    v28 = &unk_1F4CE0268;
    v29 = xmmword_1D0E83F70;
    v33 = 0;
    v34 = 0;
    v31 = &v32;
    v32 = 0x3FF0000000000000;
    v35 = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v28);
    return 0;
  }

  else
  {
    v36[0] = 12;
    LOBYTE(v28) = 4;
    cnprint::CNPrinter::Print(v36, &v28, "f_TwoStateOscillator called with inadequate matrices.", a4, a5, a6);
    return 0xFFFFFFFFLL;
  }
}

__n128 sub_1D0BA57FC(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x800000008;
  *(a1 + 24) = 0x800000008;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE43B0;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 8)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 9)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

float64x2_t sub_1D0BA5940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  *(a2 + 8) = v3;
  *(a2 + 12) = v2;
  v4 = (v2 * v3);
  *(a2 + 16) = v4;
  *(a2 + 20) = v3;
  if (v4 > 3)
  {
    v9 = (v4 - 2);
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = (v10 + 8 * v9);
    v13 = (v4 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v10++;
      *v14++ = vnegq_f64(v15);
      --v13;
    }

    while (v13);
    result = vnegq_f64(*v12);
    *(v11 + 8 * v9) = result;
  }

  else if (v4 >= 1)
  {
    v5 = *(a1 + 32);
    v6 = *(a2 + 32);
    do
    {
      v7 = *v5++;
      result.f64[0] = -v7;
      *v6++ = -v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D0BA59C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  v5 = *(a2 + 8);
  v6 = v5 + v3;
  *(a3 + 8) = v5 + v3;
  *(a3 + 12) = v4;
  *(a3 + 16) = (v5 + v3) * v4;
  *(a3 + 20) = v5 + v3;
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *(result + 20);
    v12 = *(result + 32);
    result = *(a3 + 32);
    v13 = *(a2 + 20);
    v14 = v3;
    v15 = *(a2 + 32);
    do
    {
      v16 = v8;
      v17 = v9;
      for (i = v3; i; --i)
      {
        *(result + 8 * v17++) = *(v12 + 8 * v16++);
      }

      v19 = v7;
      v20 = v14;
      for (j = v5; j; --j)
      {
        *(result + 8 * v20++) = *(v15 + 8 * v19++);
      }

      ++v10;
      v9 += v6;
      v8 += v11;
      v14 += v6;
      v7 += v13;
    }

    while (v10 != v4);
  }

  return result;
}

float64x2_t sub_1D0BA5A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a3 + 8) = v4;
  *(a3 + 12) = v3;
  v5 = (v3 * v4);
  *(a3 + 16) = v5;
  *(a3 + 20) = v4;
  if (v5 > 3)
  {
    v13 = (v5 - 2);
    v14 = *(a1 + 32);
    v15 = *(a2 + 32);
    v16 = *(a3 + 32);
    v17 = (v15 + 8 * v13);
    v18 = (v5 - 1) >> 1;
    v19 = v14;
    v20 = v16;
    do
    {
      v21 = *v19++;
      v22 = v21;
      v23 = *v15++;
      *v20++ = vsubq_f64(v22, v23);
      --v18;
    }

    while (v18);
    result = vsubq_f64(*(v14 + 8 * v13), *v17);
    *(v16 + 8 * v13) = result;
  }

  else if (v5 >= 1)
  {
    v6 = *(a1 + 32);
    v7 = *(a2 + 32);
    v8 = *(a3 + 32);
    do
    {
      v9 = *v6++;
      v10 = v9;
      v11 = *v7++;
      result.f64[0] = v10 - v11;
      *v8++ = result.f64[0];
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0BA5B14(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  sub_1D0B894B0(a6, a1);
  v11 = *(a6 + 8);
  v12 = *(a4 + 28) * *(a4 + 24);
  v33 = *(a6 + 12);
  v34 = v11;
  v13 = dgeqrf_NEWLAPACK();
  v14 = **(a4 + 32);
  if (v12 < v14 && cnprint::CNPrinter::GetLogLevel(v13) <= 1)
  {
    LOWORD(v34) = 4;
    LOBYTE(v33) = 1;
    cnprint::CNPrinter::Print(&v34, &v33, "Warning: Qr optimal workspace size %d is greater than provided workspace size %d; performance may suffer.", v14, v12);
  }

  sub_1D0B894B0(a5, a2);
  v15 = a5[2];
  v16 = a5[3];
  v36 = 76;
  v35 = 84;
  v33 = v16;
  v34 = v15;
  result = dormqr_NEWLAPACK();
  v18 = *(a1 + 8);
  if (v18 >= *(a1 + 12))
  {
    v18 = *(a1 + 12);
  }

  a3[2] = v18;
  a3[3] = 1;
  a3[4] = v18;
  a3[5] = v18;
  v19 = *(a4 + 24);
  v20 = *(a4 + 28);
  *(a4 + 8) = v19;
  *(a4 + 12) = v20;
  *(a4 + 16) = v20 * v19;
  *(a4 + 20) = v19;
  v21 = *(a1 + 8);
  v22 = *(a2 + 12);
  a5[2] = v21;
  a5[3] = v22;
  a5[4] = v22 * v21;
  a5[5] = v21;
  v23 = *(a6 + 12);
  if (v23)
  {
    v24 = 0;
    v25 = *(a6 + 8);
    v26 = *(a6 + 32);
    v27 = v25 - 1;
    v28 = *(a6 + 20) + 1;
    v29 = 1;
    do
    {
      ++v24;
      v30 = v29;
      v31 = v27;
      if (v24 < v25)
      {
        do
        {
          *(v26 + 8 * v30++) = 0;
          --v31;
        }

        while (v31);
      }

      --v27;
      v29 += v28;
    }

    while (v24 != v23);
  }

  return result;
}

uint64_t *sub_1D0BA5D5C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0BA5E2C(result, a4);
  }

  return result;
}

void sub_1D0BA5DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_1D0BA5F70(&a9);
  _Unwind_Resume(a1);
}

void sub_1D0BA5DE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0BA5E2C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1D0BA5DE4(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t sub_1D0BA5E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        sub_1D0BC39B4(v8, *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *v8 = v9;
      }

      v4 += 32;
      v14 = v4;
      v6 += 2;
    }

    while (v7 + 32 != a3);
  }

  v12 = 1;
  sub_1D0BA5F38(v11);
  return v4;
}

uint64_t sub_1D0BA5F38(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0DA3540(a1);
  }

  return a1;
}

void sub_1D0BA5F70(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0BA196C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1D0BA5FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0x800000008;
  v19 = &unk_1F4CE43B0;
  v20 = xmmword_1D0E84510;
  v22 = &v23;
  if (*(a1 + 1540))
  {
    v16 = 0x800000008;
    v14 = &unk_1F4CE43B0;
    v15 = xmmword_1D0E84510;
    v17 = v18;
    v31 = 0x100000008;
    v30 = xmmword_1D0E84520;
    v29 = &unk_1F4CE43F8;
    v32 = v33;
    v26 = 0x100000020;
    v25 = xmmword_1D0E84540;
    v24 = &unk_1F4CE3988;
    v27 = v28;
    v3 = a1 + 872;
  }

  else
  {
    v16 = 0x800000008;
    v14 = &unk_1F4CE43B0;
    v15 = xmmword_1D0E84510;
    v17 = v18;
    v31 = 0x100000008;
    v30 = xmmword_1D0E84520;
    v29 = &unk_1F4CE43F8;
    v32 = v33;
    v26 = 0x100000020;
    v25 = xmmword_1D0E84540;
    v24 = &unk_1F4CE3988;
    v27 = v28;
    v3 = a1 + 112;
  }

  sub_1D0B9F868(v3, &v29, &v24, &v14);
  sub_1D0B894B0(&v19, &v14);
  v4 = DWORD1(v20);
  v5 = v20;
  v16 = 0x800000008;
  v14 = &unk_1F4CE43B0;
  v17 = v18;
  *&v15 = __PAIR64__(v20, DWORD1(v20));
  DWORD2(v15) = v20 * DWORD1(v20);
  HIDWORD(v15) = DWORD1(v20);
  if (DWORD1(v20))
  {
    v6 = 0;
    v7 = 0;
    v8 = HIDWORD(v20);
    v9 = v22;
    do
    {
      v10 = v6;
      v11 = v7;
      for (i = v5; i; --i)
      {
        v18[v11] = v9[v10];
        v11 += v4;
        ++v10;
      }

      ++v7;
      v6 += v8;
    }

    while (v7 != v4);
  }

  *(a2 + 24) = 0x800000008;
  *a2 = &unk_1F4CE43B0;
  *(a2 + 8) = xmmword_1D0E84510;
  *(a2 + 32) = a2 + 40;
  return sub_1D0B89390(&v19, &v14, a2);
}

void sub_1D0BA62A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9FD10(&v13, a3);
  v4 = (*(*v3 + 88))(v3);
  if ((v4 & 1) == 0)
  {
    v20 = 12;
    v19 = 2;
    v17 = (*(v13 + 16))(&v13);
    v18 = v11;
    (*(v13 + 24))(v15, &v13);
    if (v16 >= 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, &v17, "RavenConvergenceEstimatorActiveObject not configured, cannot handle event, %s", v12);
    if (*(v3 + 263) >= 0)
    {
      v10 = (v3 + 240);
    }

    else
    {
      v10 = *(v3 + 240);
    }

    goto LABEL_23;
  }

  if (!cnprint::CNPrinter::GetLogLevel(v4))
  {
    LOWORD(v17) = 12;
    LOBYTE(v20) = 0;
    v15[0] = (*(v13 + 16))(&v13);
    v15[1] = v5;
    cnprint::CNLogFormatter::FormatGeneral(v3 + 240, v15, "RavenSolutionEvent received");
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v17, &v20, "%s", v6);
  }

  if (BYTE1(v14[25]) == 2)
  {
    *(v3 + 288) = 1;
    *(v3 + 296) = *&v14[145];
    memcpy((v3 + 320), v14, 0xA51uLL);
  }

  raven::RavenConvergenceEstimator::HandleEvent((v3 + 2968), &v13);
  if (v7 && cnprint::CNPrinter::GetLogLevel(v7) <= 1)
  {
    v20 = 12;
    v19 = 1;
    v17 = (*(v13 + 16))(&v13);
    v18 = v8;
    (*(v13 + 24))(v15, &v13);
    if (v16 >= 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = v15[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, &v17, "Failed to handle event - %s.", v9);
    if (*(v3 + 263) >= 0)
    {
      v10 = (v3 + 240);
    }

    else
    {
      v10 = *(v3 + 240);
    }

LABEL_23:
    cnprint::CNPrinter::Print(&v20, &v19, "%s", v10);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }
}

void sub_1D0BA6580(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::RavenSolutionEvent *a2)
{
  if (*(this + 57) == 1 && *(a2 + 209) == 2)
  {
    if (*(a2 + 208))
    {
      if ((*(this + 58) & 1) == 0)
      {
        if (*(a2 + 1464))
        {
          v39[0] = 0u;
          v42 = 0x800000008;
          v40 = &unk_1F4CE43B0;
          v41 = xmmword_1D0E84510;
          v43 = &v44;
          v36 = 0x300000003;
          v35 = xmmword_1D0E76C10;
          v34 = &unk_1F4CD5DD0;
          v37 = &v38;
          sub_1D0DF5384(a2 + 1168, &v34);
          if (v5)
          {
            v4.f64[0] = *(*(this + 146) + 1272);
            v20 = 0x300000003;
            __p = &unk_1F4CD5DD0;
            v19 = xmmword_1D0E76C10;
            v24 = 0;
            v23 = 0u;
            v26 = 0u;
            v21 = &v22;
            v22 = 0x3FF0000000000000;
            v25 = 0x3FF0000000000000;
            v27 = 0;
            v28 = 0x3FF0000000000000;
            v4.f64[0] = v4.f64[0] * v4.f64[0];
            v31 = 0x300000003;
            v30 = xmmword_1D0E76C10;
            v29 = &unk_1F4CD5DD0;
            v32 = &v33;
            sub_1D0BC5ED4(&__p, &v29, v4);
            v6 = 0.0;
            v7 = 0.0;
            v8 = 0.0;
            if (*(a2 + 1544) != 1 || (v6 = *(a2 + 194), v7 = *(a2 + 195), v8 = *(a2 + 196), sub_1D0C4DF40(a2 + 1168, &v29), v9))
            {
              v10 = *(this + 146);
              v11 = 1.0;
              if (*(a2 + 209) != 2)
              {
                v11 = v10[315];
              }

              sub_1D0DED4B0(v39, *(a2 + 146), *(a2 + 147), &v34, &v29, *(a2 + 184), *(a2 + 185), *(a2 + 186), v6, v7, v8, v10[157], v10[158], v11);
              if (!(*(*this + 128))(this, v39))
              {
                v17 = 12;
                v16 = 3;
                v15[0] = (*(*a2 + 16))(a2);
                v15[1] = v12;
                sub_1D0DEC664(a2 + 208, &__p);
                if (v19 >= 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p;
                }

                cnprint::CNLogFormatter::FormatGeneral(this + 2712, v15, "Estimator initialized from %s solution with validity time %.3lf", p_p, *(a2 + 147) + *(a2 + 146));
                if (*(this + 2735) >= 0)
                {
                  v14 = this + 2712;
                }

                else
                {
                  v14 = *(this + 339);
                }

                cnprint::CNPrinter::Print(&v17, &v16, "%s", v14);
                if (SHIBYTE(v19) < 0)
                {
                  operator delete(__p);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D0BA68E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BA6924(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9FD10(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent(v3 + 288, v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0BA6A44(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPNTEstimator::HandleEvent(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2[209] != 2 || a2[208] == 0)
  {
    return 0;
  }

  if (!a2[1464] || a2[1544] == 0)
  {
    return 0;
  }

  if (*(a1 + 19888) == 1)
  {
    memcpy((a1 + 19904), a2 + 8, 0xA51uLL);
    return 0;
  }

  else
  {
    *(a1 + 19896) = &unk_1F4CEF7A8;
    memcpy((a1 + 19904), a2 + 8, 0xA51uLL);
    result = 0;
    *(a1 + 19888) = 1;
  }

  return result;
}

void sub_1D0BA6B3C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1D0C54E78(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_1D0B8BF18(a1, &v9);
}

void sub_1D0BA6CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void raven::RavenIonosphereEstimatorActiveObject::HandleEvent(const void **this, const raven::RavenSolutionEvent *a2)
{
  v2 = this;
  if ((this[28] & 1) == 0)
  {
    v22 = 12;
    v21 = 2;
    v6 = cnprint::CNLogFormatter::FormatGeneral(this + 239, "RavenIonosphereEstimatorActiveObject: not configured");
    goto LABEL_15;
  }

  if (*(a2 + 1464) == 1)
  {
    if ((atomic_load_explicit(&qword_1EE054F70, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054F70);
      if (this)
      {
        qword_1EE054F68 = tan(1.30899694);
        __cxa_guard_release(&qword_1EE054F70);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054F80, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054F80);
      if (this)
      {
        *&qword_1EE054F78 = *&qword_1EE054F68 * *&qword_1EE054F68;
        __cxa_guard_release(&qword_1EE054F80);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054F90, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054F90);
      if (this)
      {
        qword_1EE054F88 = tan(1.30725161);
        __cxa_guard_release(&qword_1EE054F90);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054FA0, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054FA0);
      if (this)
      {
        *&qword_1EE054F98 = *&qword_1EE054F88 * *&qword_1EE054F88;
        __cxa_guard_release(&qword_1EE054FA0);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054FB0, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054FB0);
      if (this)
      {
        qword_1EE054FA8 = tan(1.04719755);
        __cxa_guard_release(&qword_1EE054FB0);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054FC0, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054FC0);
      if (this)
      {
        *&qword_1EE054FB8 = *&qword_1EE054FA8 * *&qword_1EE054FA8;
        __cxa_guard_release(&qword_1EE054FC0);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054FD0, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054FD0);
      if (this)
      {
        qword_1EE054FC8 = tan(1.04545222);
        __cxa_guard_release(&qword_1EE054FD0);
      }
    }

    if ((atomic_load_explicit(&qword_1EE054FE0, memory_order_acquire) & 1) == 0)
    {
      this = __cxa_guard_acquire(&qword_1EE054FE0);
      if (this)
      {
        *&qword_1EE054FD8 = *&qword_1EE054FC8 * *&qword_1EE054FC8;
        __cxa_guard_release(&qword_1EE054FE0);
      }
    }

    v4 = *(a2 + 186);
    v5 = *(a2 + 185) * *(a2 + 185) + *(a2 + 184) * *(a2 + 184);
    if (fabs(v5) >= 2.22044605e-16)
    {
      v8 = v4 * v4 / v5;
    }

    else
    {
      if (fabs(v4) < 2.22044605e-16)
      {
        v22 = 12;
        v21 = 2;
        v6 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "Warning: RavenIonosphereEstimatorActiveObject: Receiver location is at the center of the earth. Cannot handle RavenSolutionEvent");
LABEL_15:
        if (*(v2 + 1935) >= 0)
        {
          v7 = v6;
        }

        else
        {
          v7 = v2[239];
        }

        cnprint::CNPrinter::Print(&v22, &v21, "%s", v7);
        return;
      }

      v8 = INFINITY;
    }

    if (v8 <= *&qword_1EE054F78)
    {
      if (v8 > *&qword_1EE054FB8 && *(v2 + 225) == 1)
      {
        if (!cnprint::CNPrinter::GetLogLevel(this))
        {
          v22 = 12;
          v21 = 0;
          v11 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "RavenIonosphereEstimatorActiveObject: Receiver location is at a high latitude, but not too high to not run the estimator; run the estimator with an adjusted elevation mask,tanlat,%.3lf,latthresh,%.3lf,tan_of_abs_lat_thresh_to_use_adjusted_elev_mask_squared,%.3lf", v8, *&qword_1EE054FB8, *&qword_1EE054F78);
          if (*(v2 + 1935) >= 0)
          {
            v12 = v11;
          }

          else
          {
            v12 = v2[239];
          }

          cnprint::CNPrinter::Print(&v22, &v21, "%s", v12);
        }

        v13 = *(v2[245] + 388);
        if (v13 < 15.0)
        {
          v13 = 15.0;
        }

        *(v2 + 254) = v13;
      }

      else
      {
        if (v8 <= *&qword_1EE054FD8)
        {
          if (!cnprint::CNPrinter::GetLogLevel(this))
          {
            v22 = 12;
            v21 = 0;
            v16 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "RavenIonosphereEstimatorActiveObject: Receiver location is at a low enough latitude to run the estimator without an adjusted elevation mask,tanlat,%.3lf,latthresh,%.3lf", v8, *&qword_1EE054FD8);
            if (*(v2 + 1935) >= 0)
            {
              v17 = v16;
            }

            else
            {
              v17 = v2[239];
            }

            cnprint::CNPrinter::Print(&v22, &v21, "%s", v17);
          }

          v18 = *(v2[245] + 388);
        }

        else
        {
          if (v8 > *&qword_1EE054F98 || (*(v2 + 225) & 1) != 0)
          {
            if (!cnprint::CNPrinter::GetLogLevel(this))
            {
              v22 = 12;
              v21 = 0;
              v14 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "RavenIonosphereEstimatorActiveObject: Do nothing. Maintain the current state. This can happen if we are within the hysteresis region,tanlat,%.3lf,tan_of_abs_lat_minus_hysteresis_adjusted_elev_mask_thresh_squared,%.3lf,tan_of_abs_lat_thresh_squared,%.3lf", v8, *&qword_1EE054F98, *&qword_1EE054FB8);
              if (*(v2 + 1935) >= 0)
              {
                v15 = v14;
              }

              else
              {
                v15 = v2[239];
              }

              cnprint::CNPrinter::Print(&v22, &v21, "%s", v15);
            }

            goto LABEL_54;
          }

          if (!cnprint::CNPrinter::GetLogLevel(this))
          {
            v22 = 12;
            v21 = 0;
            v19 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "RavenIonosphereEstimatorActiveObject: Receiver location is at a high latitude, but no longer at a prohibitively high latitude; run the estimator with an adjusted elevation mask,tanlat,%.3lf,latthresh,%.3lf", v8, *&qword_1EE054F98);
            if (*(v2 + 1935) >= 0)
            {
              v20 = v19;
            }

            else
            {
              v20 = v2[239];
            }

            cnprint::CNPrinter::Print(&v22, &v21, "%s", v20);
          }

          v18 = *(v2[245] + 388);
          if (v18 < 15.0)
          {
            v18 = 15.0;
          }
        }

        *(v2 + 254) = v18;
        *(v2 + 225) = 1;
      }
    }

    else if (*(v2 + 225) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
      {
        v22 = 12;
        v21 = 1;
        v9 = cnprint::CNLogFormatter::FormatGeneral(v2 + 239, "RavenIonosphereEstimatorActiveObject: Receiver location is at too high of a latitude to run the estimator, disabling the estimator,tanlat,%.3lf,latthresh,%.3lf", v8, *&qword_1EE054F78);
        if (*(v2 + 1935) >= 0)
        {
          v10 = v9;
        }

        else
        {
          v10 = v2[239];
        }

        cnprint::CNPrinter::Print(&v22, &v21, "%s", v10);
      }

      *(v2 + 225) = 0;
      raven::RavenIonosphereEstimator::Reset((v2 + 254));
    }
  }

LABEL_54:
  if (*(v2 + 225) == 1)
  {
    std::mutex::lock((v2 + 246));
    raven::RavenIonosphereEstimator::HandleEvent((v2 + 254), a2);

    std::mutex::unlock((v2 + 246));
  }
}