uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseMinimum(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v181);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v182);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v183);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v184);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v185);
  }

  v187 = (*a2)[1];
  v188 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v187);
    ODIE::Platform::abort(v186);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = a1[1];
  v204 = *a1;
  v205 = v17;
  v206 = *(a1 + 4);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = a1[1];
  v199 = *a1;
  *v200 = v20;
  *&v200[16] = *(a1 + 4);
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v194 = v199;
  *v195 = v20;
  *&v195[16] = *(a1 + 4);
  v196 = 0;
  v197 = 0;
  v198 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v199);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v194);
  v189 = v204;
  *v190 = v205;
  *&v190[16] = v206;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v199, &v194, &v189);
  if (v192)
  {
    v21 = v191;
    v22 = 4 * v192;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v238 = v204;
          *v239 = v205;
          *&v239[16] = v206;
          v240 = 0;
          v241 = 0;
          v242 = 0;
          v233 = v204;
          *v234 = v205;
          *&v234[16] = v206;
          v235 = 0;
          v236 = 0;
          v237 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v238);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v233);
          v228 = v204;
          *v229 = v205;
          *&v229[16] = v206;
          v230 = 0;
          v232 = 0;
          v231 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
          v210 = v204;
          v211 = v205;
          v212 = v206;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v219, &v210, v187, &v238, &v228);
          v207 = v204;
          v208 = v205;
          v209 = v206;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v210, &v207, v4, &v233, &v228);
          if (v226)
          {
            bzero(v225, 4 * v226);
          }

          if (v217)
          {
            bzero(v216, 4 * v217);
          }

          if (v23 < 1)
          {
            goto LABEL_188;
          }

          v26 = 0;
          while (1)
          {
            v27 = v226;
            if (!v226)
            {
LABEL_37:
              v34 = (v222 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v223;
            v30 = v224;
            v31 = v225;
            v32 = v227;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v217;
            if (v217)
            {
              v36 = 0;
              v37 = v214;
              v38 = v215;
              v39 = v216;
              v40 = v218;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_188;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v213 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              v43 = *v34;
              if (*(v213 + 2 * v35) < *v34)
              {
                v43 = *(v213 + 2 * v35);
              }

              *(v188 + 2 * v26) = v43;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v219);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v210);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_188;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v238 = v204;
        *v239 = v205;
        *&v239[16] = v206;
        v240 = 0;
        v241 = 0;
        v242 = 0;
        v233 = v204;
        *v234 = v205;
        *&v234[16] = v206;
        v235 = 0;
        v236 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v238);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v233);
        v228 = v204;
        *v229 = v205;
        *&v229[16] = v206;
        v230 = 0;
        v232 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
        v210 = v204;
        v211 = v205;
        v212 = v206;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v219, &v210, v187, &v238, &v228);
        v207 = v204;
        v208 = v205;
        v209 = v206;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v210, &v207, v4, &v233, &v228);
        if (v226)
        {
          bzero(v225, 4 * v226);
        }

        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v23 < 1)
        {
          goto LABEL_188;
        }

        v103 = 0;
LABEL_165:
        v104 = v226;
        if (!v226)
        {
LABEL_172:
          v111 = v222 + 2 * v104;
          goto LABEL_174;
        }

        v105 = 0;
        v106 = v223;
        v107 = v224;
        v108 = v225;
        v109 = v227;
        while (1)
        {
          v110 = *v106++;
          if (v110 != 1)
          {
            if (*v108 >= *v107)
            {
              v111 = 0;
LABEL_174:
              v112 = v217;
              if (v217)
              {
                v113 = 0;
                v114 = v214;
                v115 = v215;
                v116 = v216;
                v117 = v218;
                do
                {
                  v118 = *v114++;
                  if (v118 != 1)
                  {
                    if (*v116 >= *v115)
                    {
                      goto LABEL_188;
                    }

                    v113 += *v117 * *v116;
                  }

                  ++v117;
                  ++v115;
                  ++v116;
                  --v112;
                }

                while (v112);
              }

              if (v111)
              {
                v119 = v213 == 0;
              }

              else
              {
                v119 = 1;
              }

              if (v119)
              {
                goto LABEL_188;
              }

              __asm { FCMP            H0, #0 }

              v124 = !_ZF;
              *(v188 + v103) = v124;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v219);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v210);
              if (++v103 == v23)
              {
LABEL_188:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v210);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v219);
                goto LABEL_279;
              }

              goto LABEL_165;
            }

            v105 += *v109 * *v108;
          }

          ++v109;
          ++v107;
          ++v108;
          if (!--v104)
          {
            v104 = v105;
            goto LABEL_172;
          }
        }
      }

LABEL_90:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v187);
      v63 = 3;
      goto LABEL_286;
    }

    if (v14 <= v16)
    {
      v64 = v16;
    }

    else
    {
      v64 = v14;
    }

    if (v10 == 25)
    {
      v238 = v204;
      *v239 = v205;
      *&v239[16] = v206;
      v240 = 0;
      v241 = 0;
      v242 = 0;
      v233 = v204;
      *v234 = v205;
      *&v234[16] = v206;
      v235 = 0;
      v236 = 0;
      v237 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v64, &v238);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v64, &v233);
      v228 = v204;
      *v229 = v205;
      *&v229[16] = v206;
      v230 = 0;
      v232 = 0;
      v231 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
      v210 = v204;
      v211 = v205;
      v212 = v206;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v219, &v210, v187, &v238, &v228);
      v207 = v204;
      v208 = v205;
      v209 = v206;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v210, &v207, v4, &v233, &v228);
      if (v226)
      {
        bzero(v225, 4 * v226);
      }

      if (v217)
      {
        bzero(v216, 4 * v217);
      }

      if (v23 < 1)
      {
        goto LABEL_248;
      }

      v65 = 0;
      while (1)
      {
        v66 = v226;
        if (!v226)
        {
LABEL_108:
          v73 = (v222 + 4 * v66);
          goto LABEL_110;
        }

        v67 = 0;
        v68 = v223;
        v69 = v224;
        v70 = v225;
        v71 = v227;
        while (1)
        {
          v72 = *v68++;
          if (v72 != 1)
          {
            break;
          }

LABEL_106:
          ++v71;
          ++v69;
          ++v70;
          if (!--v66)
          {
            v66 = v67;
            goto LABEL_108;
          }
        }

        if (*v70 < *v69)
        {
          break;
        }

        v73 = 0;
LABEL_110:
        v74 = v217;
        if (v217)
        {
          v75 = 0;
          v76 = v214;
          v77 = v215;
          v78 = v216;
          v79 = v218;
          do
          {
            v80 = *v76++;
            if (v80 != 1)
            {
              if (*v78 >= *v77)
              {
                goto LABEL_248;
              }

              v75 += *v79 * *v78;
            }

            ++v79;
            ++v77;
            ++v78;
            --v74;
          }

          while (v74);
          v74 = v75;
        }

        if (v73)
        {
          v81 = v213 == 0;
        }

        else
        {
          v81 = 1;
        }

        if (!v81)
        {
          v82 = *v73;
          v83 = *(v213 + 4 * v74);
          if (v83 < v82)
          {
            v82 = v83;
          }

          *(v188 + 4 * v65) = v82;
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v219);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v210);
          if (++v65 != v23)
          {
            continue;
          }
        }

        goto LABEL_248;
      }

      v67 += *v71 * *v70;
      goto LABEL_106;
    }

    v238 = v204;
    *v239 = v205;
    *&v239[16] = v206;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v233 = v204;
    *v234 = v205;
    *&v234[16] = v206;
    v235 = 0;
    v236 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v64, &v238);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v64, &v233);
    v228 = v204;
    *v229 = v205;
    *&v229[16] = v206;
    v230 = 0;
    v232 = 0;
    v231 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
    v210 = v204;
    v211 = v205;
    v212 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v219, &v210, v187, &v238, &v228);
    v207 = v204;
    v208 = v205;
    v209 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v210, &v207, v4, &v233, &v228);
    if (v226)
    {
      bzero(v225, 4 * v226);
    }

    if (v217)
    {
      bzero(v216, 4 * v217);
    }

    if (v23 < 1)
    {
      goto LABEL_248;
    }

    v143 = 0;
LABEL_225:
    v144 = v226;
    if (!v226)
    {
LABEL_232:
      v151 = (v222 + 4 * v144);
      goto LABEL_234;
    }

    v145 = 0;
    v146 = v223;
    v147 = v224;
    v148 = v225;
    v149 = v227;
    while (1)
    {
      v150 = *v146++;
      if (v150 != 1)
      {
        if (*v148 >= *v147)
        {
          v151 = 0;
LABEL_234:
          v152 = v217;
          if (v217)
          {
            v153 = 0;
            v154 = v214;
            v155 = v215;
            v156 = v216;
            v157 = v218;
            do
            {
              v158 = *v154++;
              if (v158 != 1)
              {
                if (*v156 >= *v155)
                {
                  goto LABEL_248;
                }

                v153 += *v157 * *v156;
              }

              ++v157;
              ++v155;
              ++v156;
              --v152;
            }

            while (v152);
            v152 = v153;
          }

          if (v151)
          {
            v159 = v213 == 0;
          }

          else
          {
            v159 = 1;
          }

          if (v159)
          {
            goto LABEL_248;
          }

          v160 = *v151;
          v161 = *(v213 + 4 * v152);
          if (v161 < v160)
          {
            v160 = v161;
          }

          *(v188 + v143) = v160 != 0;
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v219);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v210);
          if (++v143 == v23)
          {
LABEL_248:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v210);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v219);
            goto LABEL_279;
          }

          goto LABEL_225;
        }

        v145 += *v149 * *v148;
      }

      ++v149;
      ++v147;
      ++v148;
      if (!--v144)
      {
        v144 = v145;
        goto LABEL_232;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v44 = v16;
      }

      else
      {
        v44 = v14;
      }

      if (v10 == 69)
      {
        v238 = v204;
        *v239 = v205;
        *&v239[16] = v206;
        v240 = 0;
        v241 = 0;
        v242 = 0;
        v233 = v204;
        *v234 = v205;
        *&v234[16] = v206;
        v235 = 0;
        v236 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v44, &v238);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v44, &v233);
        v228 = v204;
        *v229 = v205;
        *&v229[16] = v206;
        v230 = 0;
        v232 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
        v210 = v204;
        v211 = v205;
        v212 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v219, &v210, v187, &v238, &v228);
        v207 = v204;
        v208 = v205;
        v209 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v210, &v207, v4, &v233, &v228);
        if (v226)
        {
          bzero(v225, 4 * v226);
        }

        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v46 = v226;
            if (!v226)
            {
              goto LABEL_73;
            }

            v47 = 0;
            v48 = v223;
            v49 = v224;
            v50 = v225;
            v51 = v227;
            do
            {
              v52 = *v48++;
              if (v52 != 1)
              {
                if (*v50 >= *v49)
                {
                  v53 = 0;
                  goto LABEL_75;
                }

                v47 += *v51 * *v50;
              }

              ++v51;
              ++v49;
              ++v50;
              --v46;
            }

            while (v46);
            v46 = v47;
LABEL_73:
            v53 = (v222 + 4 * v46);
LABEL_75:
            v54 = v217;
            if (v217)
            {
              v55 = 0;
              v56 = v214;
              v57 = v215;
              v58 = v216;
              v59 = v218;
              do
              {
                v60 = *v56++;
                if (v60 != 1)
                {
                  if (*v58 >= *v57)
                  {
                    goto LABEL_218;
                  }

                  v55 += *v59 * *v58;
                }

                ++v59;
                ++v57;
                ++v58;
                --v54;
              }

              while (v54);
              v54 = v55;
            }

            if (v53)
            {
              v61 = v213 == 0;
            }

            else
            {
              v61 = 1;
            }

            if (v61)
            {
              break;
            }

            v62 = *v53;
            if (*(v213 + 4 * v54) < *v53)
            {
              v62 = *(v213 + 4 * v54);
            }

            *(v188 + 4 * i) = v62;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v219);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v210);
          }
        }
      }

      else
      {
        v238 = v204;
        *v239 = v205;
        *&v239[16] = v206;
        v240 = 0;
        v241 = 0;
        v242 = 0;
        v233 = v204;
        *v234 = v205;
        *&v234[16] = v206;
        v235 = 0;
        v236 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v44, &v238);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v44, &v233);
        v228 = v204;
        *v229 = v205;
        *&v229[16] = v206;
        v230 = 0;
        v232 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
        v210 = v204;
        v211 = v205;
        v212 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v219, &v210, v187, &v238, &v228);
        v207 = v204;
        v208 = v205;
        v209 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v210, &v207, v4, &v233, &v228);
        if (v226)
        {
          bzero(v225, 4 * v226);
        }

        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v126 = v226;
            if (!v226)
            {
              goto LABEL_202;
            }

            v127 = 0;
            v128 = v223;
            v129 = v224;
            v130 = v225;
            v131 = v227;
            do
            {
              v132 = *v128++;
              if (v132 != 1)
              {
                if (*v130 >= *v129)
                {
                  v133 = 0;
                  goto LABEL_204;
                }

                v127 += *v131 * *v130;
              }

              ++v131;
              ++v129;
              ++v130;
              --v126;
            }

            while (v126);
            v126 = v127;
LABEL_202:
            v133 = (v222 + 4 * v126);
LABEL_204:
            v134 = v217;
            if (v217)
            {
              v135 = 0;
              v136 = v214;
              v137 = v215;
              v138 = v216;
              v139 = v218;
              do
              {
                v140 = *v136++;
                if (v140 != 1)
                {
                  if (*v138 >= *v137)
                  {
                    goto LABEL_218;
                  }

                  v135 += *v139 * *v138;
                }

                ++v139;
                ++v137;
                ++v138;
                --v134;
              }

              while (v134);
              v134 = v135;
            }

            if (v133)
            {
              v141 = v213 == 0;
            }

            else
            {
              v141 = 1;
            }

            if (v141)
            {
              break;
            }

            v142 = *v133;
            if (*(v213 + 4 * v134) < *v133)
            {
              v142 = *(v213 + 4 * v134);
            }

            *(v188 + j) = v142 != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v219);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v210);
          }
        }
      }

LABEL_218:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v210);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v219);
      goto LABEL_279;
    }

    goto LABEL_90;
  }

  if (v14 <= v16)
  {
    v84 = v16;
  }

  else
  {
    v84 = v14;
  }

  if (v10 != 70)
  {
    v238 = v204;
    *v239 = v205;
    *&v239[16] = v206;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v233 = v204;
    *v234 = v205;
    *&v234[16] = v206;
    v235 = 0;
    v236 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v84, &v238);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v84, &v233);
    v228 = v204;
    *v229 = v205;
    *&v229[16] = v206;
    v230 = 0;
    v232 = 0;
    v231 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
    v210 = v204;
    v211 = v205;
    v212 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v219, &v210, v187, &v238, &v228);
    v207 = v204;
    v208 = v205;
    v209 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v210, &v207, v4, &v233, &v228);
    if (v226)
    {
      bzero(v225, 4 * v226);
    }

    if (v217)
    {
      bzero(v216, 4 * v217);
    }

    if (v23 < 1)
    {
      goto LABEL_278;
    }

    v162 = 0;
    while (1)
    {
      v163 = v226;
      if (!v226)
      {
        goto LABEL_262;
      }

      v164 = 0;
      v165 = v223;
      v166 = v224;
      v167 = v225;
      v168 = v227;
      do
      {
        v169 = *v165++;
        if (v169 != 1)
        {
          if (*v167 >= *v166)
          {
            v170 = 0;
            goto LABEL_264;
          }

          v164 += *v168 * *v167;
        }

        ++v168;
        ++v166;
        ++v167;
        --v163;
      }

      while (v163);
      v163 = v164;
LABEL_262:
      v170 = (v222 + 8 * v163);
LABEL_264:
      v171 = v217;
      if (v217)
      {
        v172 = 0;
        v173 = v214;
        v174 = v215;
        v175 = v216;
        v176 = v218;
        do
        {
          v177 = *v173++;
          if (v177 != 1)
          {
            if (*v175 >= *v174)
            {
              goto LABEL_278;
            }

            v172 += *v176 * *v175;
          }

          ++v176;
          ++v174;
          ++v175;
          --v171;
        }

        while (v171);
        v171 = v172;
      }

      if (v170)
      {
        v178 = v213 == 0;
      }

      else
      {
        v178 = 1;
      }

      if (!v178)
      {
        v179 = *v170;
        if (*(v213 + 8 * v171) < *v170)
        {
          v179 = *(v213 + 8 * v171);
        }

        *(v188 + v162) = v179 != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v219);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v210);
        if (++v162 != v23)
        {
          continue;
        }
      }

      goto LABEL_278;
    }
  }

  v238 = v204;
  *v239 = v205;
  *&v239[16] = v206;
  v240 = 0;
  v241 = 0;
  v242 = 0;
  v233 = v204;
  *v234 = v205;
  *&v234[16] = v206;
  v235 = 0;
  v236 = 0;
  v237 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v84, &v238);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v84, &v233);
  v228 = v204;
  *v229 = v205;
  *&v229[16] = v206;
  v230 = 0;
  v232 = 0;
  v231 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
  v210 = v204;
  v211 = v205;
  v212 = v206;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v219, &v210, v187, &v238, &v228);
  v207 = v204;
  v208 = v205;
  v209 = v206;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v210, &v207, v4, &v233, &v228);
  if (v226)
  {
    bzero(v225, 4 * v226);
  }

  if (v217)
  {
    bzero(v216, 4 * v217);
  }

  if (v23 < 1)
  {
    goto LABEL_278;
  }

  for (k = 0; k != v23; ++k)
  {
    v86 = v226;
    if (!v226)
    {
LABEL_142:
      v93 = (v222 + 8 * v86);
      goto LABEL_144;
    }

    v87 = 0;
    v88 = v223;
    v89 = v224;
    v90 = v225;
    v91 = v227;
    while (1)
    {
      v92 = *v88++;
      if (v92 != 1)
      {
        break;
      }

LABEL_140:
      ++v91;
      ++v89;
      ++v90;
      if (!--v86)
      {
        v86 = v87;
        goto LABEL_142;
      }
    }

    if (*v90 < *v89)
    {
      v87 += *v91 * *v90;
      goto LABEL_140;
    }

    v93 = 0;
LABEL_144:
    v94 = v217;
    if (v217)
    {
      v95 = 0;
      v96 = v214;
      v97 = v215;
      v98 = v216;
      v99 = v218;
      do
      {
        v100 = *v96++;
        if (v100 != 1)
        {
          if (*v98 >= *v97)
          {
            goto LABEL_278;
          }

          v95 += *v99 * *v98;
        }

        ++v99;
        ++v97;
        ++v98;
        --v94;
      }

      while (v94);
      v94 = v95;
    }

    if (v93)
    {
      v101 = v213 == 0;
    }

    else
    {
      v101 = 1;
    }

    if (v101)
    {
      break;
    }

    v102 = *v93;
    if (*(v213 + 8 * v94) < *v93)
    {
      v102 = *(v213 + 8 * v94);
    }

    *(v188 + 8 * k) = v102;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v219);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v210);
  }

LABEL_278:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v210);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v219);
LABEL_279:
  if (*v229)
  {
    v219 = v228;
    v220 = *v229;
    v221 = *&v229[8];
    (*v229)(&v219, v230);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v234)
  {
    v219 = v233;
    v220 = *v234;
    v221 = *&v234[8];
    (*v234)(&v219, v235);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v239)
  {
    v219 = v238;
    v220 = *v239;
    v221 = *&v239[8];
    (*v239)(&v219, v240);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v63 = 0;
LABEL_286:
  if (*v190)
  {
    v219 = v189;
    v220 = *v190;
    v221 = *&v190[8];
    (*v190)(&v219, v191);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v195)
  {
    v219 = v194;
    v220 = *v195;
    v221 = *&v195[8];
    (*v195)(&v219, v196);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v200)
  {
    v219 = v199;
    v220 = *v200;
    v221 = *&v200[8];
    (*v200)(&v219, v201);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v63;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseMaximum(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v181);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v182);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v183);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v184);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v185);
  }

  v187 = (*a2)[1];
  v188 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v187);
    ODIE::Platform::abort(v186);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = a1[1];
  v204 = *a1;
  v205 = v17;
  v206 = *(a1 + 4);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = a1[1];
  v199 = *a1;
  *v200 = v20;
  *&v200[16] = *(a1 + 4);
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v194 = v199;
  *v195 = v20;
  *&v195[16] = *(a1 + 4);
  v196 = 0;
  v197 = 0;
  v198 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v199);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v194);
  v189 = v204;
  *v190 = v205;
  *&v190[16] = v206;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v199, &v194, &v189);
  if (v192)
  {
    v21 = v191;
    v22 = 4 * v192;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v238 = v204;
          *v239 = v205;
          *&v239[16] = v206;
          v240 = 0;
          v241 = 0;
          v242 = 0;
          v233 = v204;
          *v234 = v205;
          *&v234[16] = v206;
          v235 = 0;
          v236 = 0;
          v237 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v238);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v233);
          v228 = v204;
          *v229 = v205;
          *&v229[16] = v206;
          v230 = 0;
          v232 = 0;
          v231 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
          v210 = v204;
          v211 = v205;
          v212 = v206;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v219, &v210, v187, &v238, &v228);
          v207 = v204;
          v208 = v205;
          v209 = v206;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v210, &v207, v4, &v233, &v228);
          if (v226)
          {
            bzero(v225, 4 * v226);
          }

          if (v217)
          {
            bzero(v216, 4 * v217);
          }

          if (v23 < 1)
          {
            goto LABEL_188;
          }

          v26 = 0;
          while (1)
          {
            v27 = v226;
            if (!v226)
            {
LABEL_37:
              v34 = (v222 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v223;
            v30 = v224;
            v31 = v225;
            v32 = v227;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v217;
            if (v217)
            {
              v36 = 0;
              v37 = v214;
              v38 = v215;
              v39 = v216;
              v40 = v218;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_188;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v213 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              v43 = *v34;
              if (*v34 < *(v213 + 2 * v35))
              {
                v43 = *(v213 + 2 * v35);
              }

              *(v188 + 2 * v26) = v43;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v219);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v210);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_188;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v238 = v204;
        *v239 = v205;
        *&v239[16] = v206;
        v240 = 0;
        v241 = 0;
        v242 = 0;
        v233 = v204;
        *v234 = v205;
        *&v234[16] = v206;
        v235 = 0;
        v236 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v238);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v233);
        v228 = v204;
        *v229 = v205;
        *&v229[16] = v206;
        v230 = 0;
        v232 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
        v210 = v204;
        v211 = v205;
        v212 = v206;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v219, &v210, v187, &v238, &v228);
        v207 = v204;
        v208 = v205;
        v209 = v206;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v210, &v207, v4, &v233, &v228);
        if (v226)
        {
          bzero(v225, 4 * v226);
        }

        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v23 < 1)
        {
          goto LABEL_188;
        }

        v103 = 0;
LABEL_165:
        v104 = v226;
        if (!v226)
        {
LABEL_172:
          v111 = v222 + 2 * v104;
          goto LABEL_174;
        }

        v105 = 0;
        v106 = v223;
        v107 = v224;
        v108 = v225;
        v109 = v227;
        while (1)
        {
          v110 = *v106++;
          if (v110 != 1)
          {
            if (*v108 >= *v107)
            {
              v111 = 0;
LABEL_174:
              v112 = v217;
              if (v217)
              {
                v113 = 0;
                v114 = v214;
                v115 = v215;
                v116 = v216;
                v117 = v218;
                do
                {
                  v118 = *v114++;
                  if (v118 != 1)
                  {
                    if (*v116 >= *v115)
                    {
                      goto LABEL_188;
                    }

                    v113 += *v117 * *v116;
                  }

                  ++v117;
                  ++v115;
                  ++v116;
                  --v112;
                }

                while (v112);
              }

              if (v111)
              {
                v119 = v213 == 0;
              }

              else
              {
                v119 = 1;
              }

              if (v119)
              {
                goto LABEL_188;
              }

              __asm { FCMP            H0, #0 }

              v124 = !_ZF;
              *(v188 + v103) = v124;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v219);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v210);
              if (++v103 == v23)
              {
LABEL_188:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v210);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v219);
                goto LABEL_279;
              }

              goto LABEL_165;
            }

            v105 += *v109 * *v108;
          }

          ++v109;
          ++v107;
          ++v108;
          if (!--v104)
          {
            v104 = v105;
            goto LABEL_172;
          }
        }
      }

LABEL_90:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v187);
      v63 = 3;
      goto LABEL_286;
    }

    if (v14 <= v16)
    {
      v64 = v16;
    }

    else
    {
      v64 = v14;
    }

    if (v10 == 25)
    {
      v238 = v204;
      *v239 = v205;
      *&v239[16] = v206;
      v240 = 0;
      v241 = 0;
      v242 = 0;
      v233 = v204;
      *v234 = v205;
      *&v234[16] = v206;
      v235 = 0;
      v236 = 0;
      v237 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v64, &v238);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v64, &v233);
      v228 = v204;
      *v229 = v205;
      *&v229[16] = v206;
      v230 = 0;
      v232 = 0;
      v231 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
      v210 = v204;
      v211 = v205;
      v212 = v206;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v219, &v210, v187, &v238, &v228);
      v207 = v204;
      v208 = v205;
      v209 = v206;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v210, &v207, v4, &v233, &v228);
      if (v226)
      {
        bzero(v225, 4 * v226);
      }

      if (v217)
      {
        bzero(v216, 4 * v217);
      }

      if (v23 < 1)
      {
        goto LABEL_248;
      }

      v65 = 0;
      while (1)
      {
        v66 = v226;
        if (!v226)
        {
LABEL_108:
          v73 = (v222 + 4 * v66);
          goto LABEL_110;
        }

        v67 = 0;
        v68 = v223;
        v69 = v224;
        v70 = v225;
        v71 = v227;
        while (1)
        {
          v72 = *v68++;
          if (v72 != 1)
          {
            break;
          }

LABEL_106:
          ++v71;
          ++v69;
          ++v70;
          if (!--v66)
          {
            v66 = v67;
            goto LABEL_108;
          }
        }

        if (*v70 < *v69)
        {
          break;
        }

        v73 = 0;
LABEL_110:
        v74 = v217;
        if (v217)
        {
          v75 = 0;
          v76 = v214;
          v77 = v215;
          v78 = v216;
          v79 = v218;
          do
          {
            v80 = *v76++;
            if (v80 != 1)
            {
              if (*v78 >= *v77)
              {
                goto LABEL_248;
              }

              v75 += *v79 * *v78;
            }

            ++v79;
            ++v77;
            ++v78;
            --v74;
          }

          while (v74);
          v74 = v75;
        }

        if (v73)
        {
          v81 = v213 == 0;
        }

        else
        {
          v81 = 1;
        }

        if (!v81)
        {
          v82 = *v73;
          v83 = *(v213 + 4 * v74);
          if (v82 <= v83)
          {
            v82 = v83;
          }

          *(v188 + 4 * v65) = v82;
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v219);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v210);
          if (++v65 != v23)
          {
            continue;
          }
        }

        goto LABEL_248;
      }

      v67 += *v71 * *v70;
      goto LABEL_106;
    }

    v238 = v204;
    *v239 = v205;
    *&v239[16] = v206;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v233 = v204;
    *v234 = v205;
    *&v234[16] = v206;
    v235 = 0;
    v236 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v64, &v238);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v64, &v233);
    v228 = v204;
    *v229 = v205;
    *&v229[16] = v206;
    v230 = 0;
    v232 = 0;
    v231 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
    v210 = v204;
    v211 = v205;
    v212 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v219, &v210, v187, &v238, &v228);
    v207 = v204;
    v208 = v205;
    v209 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v210, &v207, v4, &v233, &v228);
    if (v226)
    {
      bzero(v225, 4 * v226);
    }

    if (v217)
    {
      bzero(v216, 4 * v217);
    }

    if (v23 < 1)
    {
      goto LABEL_248;
    }

    v143 = 0;
LABEL_225:
    v144 = v226;
    if (!v226)
    {
LABEL_232:
      v151 = (v222 + 4 * v144);
      goto LABEL_234;
    }

    v145 = 0;
    v146 = v223;
    v147 = v224;
    v148 = v225;
    v149 = v227;
    while (1)
    {
      v150 = *v146++;
      if (v150 != 1)
      {
        if (*v148 >= *v147)
        {
          v151 = 0;
LABEL_234:
          v152 = v217;
          if (v217)
          {
            v153 = 0;
            v154 = v214;
            v155 = v215;
            v156 = v216;
            v157 = v218;
            do
            {
              v158 = *v154++;
              if (v158 != 1)
              {
                if (*v156 >= *v155)
                {
                  goto LABEL_248;
                }

                v153 += *v157 * *v156;
              }

              ++v157;
              ++v155;
              ++v156;
              --v152;
            }

            while (v152);
            v152 = v153;
          }

          if (v151)
          {
            v159 = v213 == 0;
          }

          else
          {
            v159 = 1;
          }

          if (v159)
          {
            goto LABEL_248;
          }

          v160 = *v151;
          v161 = *(v213 + 4 * v152);
          if (v160 <= v161)
          {
            v160 = v161;
          }

          *(v188 + v143) = v160 != 0;
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v219);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v210);
          if (++v143 == v23)
          {
LABEL_248:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v210);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v219);
            goto LABEL_279;
          }

          goto LABEL_225;
        }

        v145 += *v149 * *v148;
      }

      ++v149;
      ++v147;
      ++v148;
      if (!--v144)
      {
        v144 = v145;
        goto LABEL_232;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v44 = v16;
      }

      else
      {
        v44 = v14;
      }

      if (v10 == 69)
      {
        v238 = v204;
        *v239 = v205;
        *&v239[16] = v206;
        v240 = 0;
        v241 = 0;
        v242 = 0;
        v233 = v204;
        *v234 = v205;
        *&v234[16] = v206;
        v235 = 0;
        v236 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v44, &v238);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v44, &v233);
        v228 = v204;
        *v229 = v205;
        *&v229[16] = v206;
        v230 = 0;
        v232 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
        v210 = v204;
        v211 = v205;
        v212 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v219, &v210, v187, &v238, &v228);
        v207 = v204;
        v208 = v205;
        v209 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v210, &v207, v4, &v233, &v228);
        if (v226)
        {
          bzero(v225, 4 * v226);
        }

        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v46 = v226;
            if (!v226)
            {
              goto LABEL_73;
            }

            v47 = 0;
            v48 = v223;
            v49 = v224;
            v50 = v225;
            v51 = v227;
            do
            {
              v52 = *v48++;
              if (v52 != 1)
              {
                if (*v50 >= *v49)
                {
                  v53 = 0;
                  goto LABEL_75;
                }

                v47 += *v51 * *v50;
              }

              ++v51;
              ++v49;
              ++v50;
              --v46;
            }

            while (v46);
            v46 = v47;
LABEL_73:
            v53 = (v222 + 4 * v46);
LABEL_75:
            v54 = v217;
            if (v217)
            {
              v55 = 0;
              v56 = v214;
              v57 = v215;
              v58 = v216;
              v59 = v218;
              do
              {
                v60 = *v56++;
                if (v60 != 1)
                {
                  if (*v58 >= *v57)
                  {
                    goto LABEL_218;
                  }

                  v55 += *v59 * *v58;
                }

                ++v59;
                ++v57;
                ++v58;
                --v54;
              }

              while (v54);
              v54 = v55;
            }

            if (v53)
            {
              v61 = v213 == 0;
            }

            else
            {
              v61 = 1;
            }

            if (v61)
            {
              break;
            }

            v62 = *v53;
            if (*v53 < *(v213 + 4 * v54))
            {
              v62 = *(v213 + 4 * v54);
            }

            *(v188 + 4 * i) = v62;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v219);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v210);
          }
        }
      }

      else
      {
        v238 = v204;
        *v239 = v205;
        *&v239[16] = v206;
        v240 = 0;
        v241 = 0;
        v242 = 0;
        v233 = v204;
        *v234 = v205;
        *&v234[16] = v206;
        v235 = 0;
        v236 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v44, &v238);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v44, &v233);
        v228 = v204;
        *v229 = v205;
        *&v229[16] = v206;
        v230 = 0;
        v232 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
        v210 = v204;
        v211 = v205;
        v212 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v219, &v210, v187, &v238, &v228);
        v207 = v204;
        v208 = v205;
        v209 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v210, &v207, v4, &v233, &v228);
        if (v226)
        {
          bzero(v225, 4 * v226);
        }

        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v126 = v226;
            if (!v226)
            {
              goto LABEL_202;
            }

            v127 = 0;
            v128 = v223;
            v129 = v224;
            v130 = v225;
            v131 = v227;
            do
            {
              v132 = *v128++;
              if (v132 != 1)
              {
                if (*v130 >= *v129)
                {
                  v133 = 0;
                  goto LABEL_204;
                }

                v127 += *v131 * *v130;
              }

              ++v131;
              ++v129;
              ++v130;
              --v126;
            }

            while (v126);
            v126 = v127;
LABEL_202:
            v133 = (v222 + 4 * v126);
LABEL_204:
            v134 = v217;
            if (v217)
            {
              v135 = 0;
              v136 = v214;
              v137 = v215;
              v138 = v216;
              v139 = v218;
              do
              {
                v140 = *v136++;
                if (v140 != 1)
                {
                  if (*v138 >= *v137)
                  {
                    goto LABEL_218;
                  }

                  v135 += *v139 * *v138;
                }

                ++v139;
                ++v137;
                ++v138;
                --v134;
              }

              while (v134);
              v134 = v135;
            }

            if (v133)
            {
              v141 = v213 == 0;
            }

            else
            {
              v141 = 1;
            }

            if (v141)
            {
              break;
            }

            v142 = *v133;
            if (*v133 < *(v213 + 4 * v134))
            {
              v142 = *(v213 + 4 * v134);
            }

            *(v188 + j) = v142 != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v219);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v210);
          }
        }
      }

LABEL_218:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v210);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v219);
      goto LABEL_279;
    }

    goto LABEL_90;
  }

  if (v14 <= v16)
  {
    v84 = v16;
  }

  else
  {
    v84 = v14;
  }

  if (v10 != 70)
  {
    v238 = v204;
    *v239 = v205;
    *&v239[16] = v206;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v233 = v204;
    *v234 = v205;
    *&v234[16] = v206;
    v235 = 0;
    v236 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v84, &v238);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v84, &v233);
    v228 = v204;
    *v229 = v205;
    *&v229[16] = v206;
    v230 = 0;
    v232 = 0;
    v231 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
    v210 = v204;
    v211 = v205;
    v212 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v219, &v210, v187, &v238, &v228);
    v207 = v204;
    v208 = v205;
    v209 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v210, &v207, v4, &v233, &v228);
    if (v226)
    {
      bzero(v225, 4 * v226);
    }

    if (v217)
    {
      bzero(v216, 4 * v217);
    }

    if (v23 < 1)
    {
      goto LABEL_278;
    }

    v162 = 0;
    while (1)
    {
      v163 = v226;
      if (!v226)
      {
        goto LABEL_262;
      }

      v164 = 0;
      v165 = v223;
      v166 = v224;
      v167 = v225;
      v168 = v227;
      do
      {
        v169 = *v165++;
        if (v169 != 1)
        {
          if (*v167 >= *v166)
          {
            v170 = 0;
            goto LABEL_264;
          }

          v164 += *v168 * *v167;
        }

        ++v168;
        ++v166;
        ++v167;
        --v163;
      }

      while (v163);
      v163 = v164;
LABEL_262:
      v170 = (v222 + 8 * v163);
LABEL_264:
      v171 = v217;
      if (v217)
      {
        v172 = 0;
        v173 = v214;
        v174 = v215;
        v175 = v216;
        v176 = v218;
        do
        {
          v177 = *v173++;
          if (v177 != 1)
          {
            if (*v175 >= *v174)
            {
              goto LABEL_278;
            }

            v172 += *v176 * *v175;
          }

          ++v176;
          ++v174;
          ++v175;
          --v171;
        }

        while (v171);
        v171 = v172;
      }

      if (v170)
      {
        v178 = v213 == 0;
      }

      else
      {
        v178 = 1;
      }

      if (!v178)
      {
        v179 = *v170;
        if (*v170 < *(v213 + 8 * v171))
        {
          v179 = *(v213 + 8 * v171);
        }

        *(v188 + v162) = v179 != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v219);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v210);
        if (++v162 != v23)
        {
          continue;
        }
      }

      goto LABEL_278;
    }
  }

  v238 = v204;
  *v239 = v205;
  *&v239[16] = v206;
  v240 = 0;
  v241 = 0;
  v242 = 0;
  v233 = v204;
  *v234 = v205;
  *&v234[16] = v206;
  v235 = 0;
  v236 = 0;
  v237 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v84, &v238);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v84, &v233);
  v228 = v204;
  *v229 = v205;
  *&v229[16] = v206;
  v230 = 0;
  v232 = 0;
  v231 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
  v210 = v204;
  v211 = v205;
  v212 = v206;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v219, &v210, v187, &v238, &v228);
  v207 = v204;
  v208 = v205;
  v209 = v206;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v210, &v207, v4, &v233, &v228);
  if (v226)
  {
    bzero(v225, 4 * v226);
  }

  if (v217)
  {
    bzero(v216, 4 * v217);
  }

  if (v23 < 1)
  {
    goto LABEL_278;
  }

  for (k = 0; k != v23; ++k)
  {
    v86 = v226;
    if (!v226)
    {
LABEL_142:
      v93 = (v222 + 8 * v86);
      goto LABEL_144;
    }

    v87 = 0;
    v88 = v223;
    v89 = v224;
    v90 = v225;
    v91 = v227;
    while (1)
    {
      v92 = *v88++;
      if (v92 != 1)
      {
        break;
      }

LABEL_140:
      ++v91;
      ++v89;
      ++v90;
      if (!--v86)
      {
        v86 = v87;
        goto LABEL_142;
      }
    }

    if (*v90 < *v89)
    {
      v87 += *v91 * *v90;
      goto LABEL_140;
    }

    v93 = 0;
LABEL_144:
    v94 = v217;
    if (v217)
    {
      v95 = 0;
      v96 = v214;
      v97 = v215;
      v98 = v216;
      v99 = v218;
      do
      {
        v100 = *v96++;
        if (v100 != 1)
        {
          if (*v98 >= *v97)
          {
            goto LABEL_278;
          }

          v95 += *v99 * *v98;
        }

        ++v99;
        ++v97;
        ++v98;
        --v94;
      }

      while (v94);
      v94 = v95;
    }

    if (v93)
    {
      v101 = v213 == 0;
    }

    else
    {
      v101 = 1;
    }

    if (v101)
    {
      break;
    }

    v102 = *v93;
    if (*v93 < *(v213 + 8 * v94))
    {
      v102 = *(v213 + 8 * v94);
    }

    *(v188 + 8 * k) = v102;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v219);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v210);
  }

LABEL_278:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v210);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v219);
LABEL_279:
  if (*v229)
  {
    v219 = v228;
    v220 = *v229;
    v221 = *&v229[8];
    (*v229)(&v219, v230);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v234)
  {
    v219 = v233;
    v220 = *v234;
    v221 = *&v234[8];
    (*v234)(&v219, v235);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v239)
  {
    v219 = v238;
    v220 = *v239;
    v221 = *&v239[8];
    (*v239)(&v219, v240);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v63 = 0;
LABEL_286:
  if (*v190)
  {
    v219 = v189;
    v220 = *v190;
    v221 = *&v190[8];
    (*v190)(&v219, v191);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v195)
  {
    v219 = v194;
    v220 = *v195;
    v221 = *&v195[8];
    (*v195)(&v219, v196);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v200)
  {
    v219 = v199;
    v220 = *v200;
    v221 = *&v200[8];
    (*v200)(&v219, v201);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v63;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseModulo(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t **a4)
{
  v4 = a2[1][1];
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v181);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v182);
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v183);
  }

  v9 = *(v8 + 24);
  if (*(v9 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v184);
  }

  v10 = *(v9 + 24);
  if (v10 != v7 && v10 != 16)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Output scalar tag is different than input's and is not BOOL. Unsupported operation.");
    return 2;
  }

  v11 = **a2;
  if (*(v11 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v185);
  }

  v187 = (*a2)[1];
  v188 = (*a4)[1];
  v12 = *a2[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.", v187);
    ODIE::Platform::abort(v186);
  }

  v13 = *(v11 + 40);
  v14 = *(v11 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 32);
  v17 = a1[1];
  v204 = *a1;
  v205 = v17;
  v206 = *(a1 + 4);
  if (v14 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;
  v20 = a1[1];
  v199 = *a1;
  *v200 = v20;
  *&v200[16] = *(a1 + 4);
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v194 = v199;
  *v195 = v20;
  *&v195[16] = *(a1 + 4);
  v196 = 0;
  v197 = 0;
  v198 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v18, &v199);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v19, &v194);
  v189 = v204;
  *v190 = v205;
  *&v190[16] = v206;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v199, &v194, &v189);
  if (v192)
  {
    v21 = v191;
    v22 = 4 * v192;
    v23 = 1;
    do
    {
      v24 = *v21++;
      v23 *= v24;
      v22 -= 4;
    }

    while (v22);
  }

  else
  {
    v23 = 1;
  }

  if (v7 <= 68)
  {
    if (v7 != 25)
    {
      if (v7 == 68)
      {
        if (v14 <= v16)
        {
          v25 = v16;
        }

        else
        {
          v25 = v14;
        }

        if (v10 == 68)
        {
          v238 = v204;
          *v239 = v205;
          *&v239[16] = v206;
          v240 = 0;
          v241 = 0;
          v242 = 0;
          v233 = v204;
          *v234 = v205;
          *&v234[16] = v206;
          v235 = 0;
          v236 = 0;
          v237 = 0;
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v238);
          ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v233);
          v228 = v204;
          *v229 = v205;
          *&v229[16] = v206;
          v230 = 0;
          v232 = 0;
          v231 = 0;
          ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
          v210 = v204;
          v211 = v205;
          v212 = v206;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v219, &v210, v187, &v238, &v228);
          v207 = v204;
          v208 = v205;
          v209 = v206;
          _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v210, &v207, v4, &v233, &v228);
          if (v226)
          {
            bzero(v225, 4 * v226);
          }

          if (v217)
          {
            bzero(v216, 4 * v217);
          }

          if (v23 < 1)
          {
            goto LABEL_181;
          }

          v26 = 0;
          while (1)
          {
            v27 = v226;
            if (!v226)
            {
LABEL_37:
              v34 = (v222 + 2 * v27);
              goto LABEL_39;
            }

            v28 = 0;
            v29 = v223;
            v30 = v224;
            v31 = v225;
            v32 = v227;
            while (1)
            {
              v33 = *v29++;
              if (v33 != 1)
              {
                break;
              }

LABEL_35:
              ++v32;
              ++v30;
              ++v31;
              if (!--v27)
              {
                v27 = v28;
                goto LABEL_37;
              }
            }

            if (*v31 < *v30)
            {
              break;
            }

            v34 = 0;
LABEL_39:
            v35 = v217;
            if (v217)
            {
              v36 = 0;
              v37 = v214;
              v38 = v215;
              v39 = v216;
              v40 = v218;
              do
              {
                v41 = *v37++;
                if (v41 != 1)
                {
                  if (*v39 >= *v38)
                  {
                    goto LABEL_181;
                  }

                  v36 += *v40 * *v39;
                }

                ++v40;
                ++v38;
                ++v39;
                --v35;
              }

              while (v35);
              v35 = v36;
            }

            if (v34)
            {
              _ZF = v213 == 0;
            }

            else
            {
              _ZF = 1;
            }

            if (!_ZF)
            {
              _H0 = *v34;
              _H1 = *(v213 + 2 * v35);
              __asm
              {
                FCVT            S1, H1; float
                FCVT            S0, H0; float
              }

              _S0 = fmodf(_S0, _S1);
              __asm { FCVT            H0, S0 }

              *(v188 + 2 * v26) = LOWORD(_S0);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v219);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v210);
              if (++v26 != v23)
              {
                continue;
              }
            }

            goto LABEL_181;
          }

          v28 += *v32 * *v31;
          goto LABEL_35;
        }

        v238 = v204;
        *v239 = v205;
        *&v239[16] = v206;
        v240 = 0;
        v241 = 0;
        v242 = 0;
        v233 = v204;
        *v234 = v205;
        *&v234[16] = v206;
        v235 = 0;
        v236 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v25, &v238);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v25, &v233);
        v228 = v204;
        *v229 = v205;
        *&v229[16] = v206;
        v230 = 0;
        v232 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
        v210 = v204;
        v211 = v205;
        v212 = v206;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v219, &v210, v187, &v238, &v228);
        v207 = v204;
        v208 = v205;
        v209 = v206;
        _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(&v210, &v207, v4, &v233, &v228);
        if (v226)
        {
          bzero(v225, 4 * v226);
        }

        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v23 < 1)
        {
          goto LABEL_181;
        }

        v106 = 0;
LABEL_157:
        v107 = v226;
        if (!v226)
        {
LABEL_164:
          v114 = (v222 + 2 * v107);
          goto LABEL_166;
        }

        v108 = 0;
        v109 = v223;
        v110 = v224;
        v111 = v225;
        v112 = v227;
        while (1)
        {
          v113 = *v109++;
          if (v113 != 1)
          {
            if (*v111 >= *v110)
            {
              v114 = 0;
LABEL_166:
              v115 = v217;
              if (v217)
              {
                v116 = 0;
                v117 = v214;
                v118 = v215;
                v119 = v216;
                v120 = v218;
                do
                {
                  v121 = *v117++;
                  if (v121 != 1)
                  {
                    if (*v119 >= *v118)
                    {
                      goto LABEL_181;
                    }

                    v116 += *v120 * *v119;
                  }

                  ++v120;
                  ++v118;
                  ++v119;
                  --v115;
                }

                while (v115);
                v115 = v116;
              }

              if (v114)
              {
                v122 = v213 == 0;
              }

              else
              {
                v122 = 1;
              }

              if (v122)
              {
                goto LABEL_181;
              }

              _H0 = *v114;
              _H1 = *(v213 + 2 * v115);
              __asm
              {
                FCVT            S1, H1; float
                FCVT            S0, H0; float
              }

              _S0 = fmodf(_S0, _S1);
              __asm
              {
                FCVT            H0, S0
                FCMP            H0, #0
              }

              v128 = !_ZF;
              *(v188 + v106) = v128;
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v219);
              _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(&v210);
              if (++v106 == v23)
              {
LABEL_181:
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v210);
                _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(&v219);
                goto LABEL_266;
              }

              goto LABEL_157;
            }

            v108 += *v112 * *v111;
          }

          ++v112;
          ++v110;
          ++v111;
          if (!--v107)
          {
            v107 = v108;
            goto LABEL_164;
          }
        }
      }

LABEL_86:
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseBinary.cpp", "valueInferenceElementwiseBinary", "Unexpected data type encountered.", v187);
      v69 = 3;
      goto LABEL_273;
    }

    if (v14 <= v16)
    {
      v70 = v16;
    }

    else
    {
      v70 = v14;
    }

    if (v10 == 25)
    {
      v238 = v204;
      *v239 = v205;
      *&v239[16] = v206;
      v240 = 0;
      v241 = 0;
      v242 = 0;
      v233 = v204;
      *v234 = v205;
      *&v234[16] = v206;
      v235 = 0;
      v236 = 0;
      v237 = 0;
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v70, &v238);
      ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v70, &v233);
      v228 = v204;
      *v229 = v205;
      *&v229[16] = v206;
      v230 = 0;
      v232 = 0;
      v231 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
      v210 = v204;
      v211 = v205;
      v212 = v206;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v219, &v210, v187, &v238, &v228);
      v207 = v204;
      v208 = v205;
      v209 = v206;
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v210, &v207, v4, &v233, &v228);
      if (v226)
      {
        bzero(v225, 4 * v226);
      }

      if (v217)
      {
        bzero(v216, 4 * v217);
      }

      if (v23 < 1)
      {
        goto LABEL_237;
      }

      v71 = 0;
      while (1)
      {
        v72 = v226;
        if (!v226)
        {
LABEL_104:
          v79 = (v222 + 4 * v72);
          goto LABEL_106;
        }

        v73 = 0;
        v74 = v223;
        v75 = v224;
        v76 = v225;
        v77 = v227;
        while (1)
        {
          v78 = *v74++;
          if (v78 != 1)
          {
            break;
          }

LABEL_102:
          ++v77;
          ++v75;
          ++v76;
          if (!--v72)
          {
            v72 = v73;
            goto LABEL_104;
          }
        }

        if (*v76 < *v75)
        {
          break;
        }

        v79 = 0;
LABEL_106:
        v80 = v217;
        if (v217)
        {
          v81 = 0;
          v82 = v214;
          v83 = v215;
          v84 = v216;
          v85 = v218;
          do
          {
            v86 = *v82++;
            if (v86 != 1)
            {
              if (*v84 >= *v83)
              {
                goto LABEL_237;
              }

              v81 += *v85 * *v84;
            }

            ++v85;
            ++v83;
            ++v84;
            --v80;
          }

          while (v80);
          v80 = v81;
        }

        if (v79)
        {
          v87 = v213 == 0;
        }

        else
        {
          v87 = 1;
        }

        if (!v87)
        {
          *(v188 + 4 * v71) = *v79 % *(v213 + 4 * v80);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v219);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v210);
          if (++v71 != v23)
          {
            continue;
          }
        }

        goto LABEL_237;
      }

      v73 += *v77 * *v76;
      goto LABEL_102;
    }

    v238 = v204;
    *v239 = v205;
    *&v239[16] = v206;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v233 = v204;
    *v234 = v205;
    *&v234[16] = v206;
    v235 = 0;
    v236 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v70, &v238);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v70, &v233);
    v228 = v204;
    *v229 = v205;
    *&v229[16] = v206;
    v230 = 0;
    v232 = 0;
    v231 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
    v210 = v204;
    v211 = v205;
    v212 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v219, &v210, v187, &v238, &v228);
    v207 = v204;
    v208 = v205;
    v209 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(&v210, &v207, v4, &v233, &v228);
    if (v226)
    {
      bzero(v225, 4 * v226);
    }

    if (v217)
    {
      bzero(v216, 4 * v217);
    }

    if (v23 < 1)
    {
      goto LABEL_237;
    }

    v146 = 0;
LABEL_216:
    v147 = v226;
    if (!v226)
    {
LABEL_223:
      v154 = (v222 + 4 * v147);
      goto LABEL_225;
    }

    v148 = 0;
    v149 = v223;
    v150 = v224;
    v151 = v225;
    v152 = v227;
    while (1)
    {
      v153 = *v149++;
      if (v153 != 1)
      {
        if (*v151 >= *v150)
        {
          v154 = 0;
LABEL_225:
          v155 = v217;
          if (v217)
          {
            v156 = 0;
            v157 = v214;
            v158 = v215;
            v159 = v216;
            v160 = v218;
            do
            {
              v161 = *v157++;
              if (v161 != 1)
              {
                if (*v159 >= *v158)
                {
                  goto LABEL_237;
                }

                v156 += *v160 * *v159;
              }

              ++v160;
              ++v158;
              ++v159;
              --v155;
            }

            while (v155);
            v155 = v156;
          }

          if (v154)
          {
            v162 = v213 == 0;
          }

          else
          {
            v162 = 1;
          }

          if (v162 || (*(v188 + v146) = *v154 % *(v213 + 4 * v155) != 0, ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v219), ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(&v210), ++v146, v146 == v23))
          {
LABEL_237:
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v210);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(&v219);
            goto LABEL_266;
          }

          goto LABEL_216;
        }

        v148 += *v152 * *v151;
      }

      ++v152;
      ++v150;
      ++v151;
      if (!--v147)
      {
        v147 = v148;
        goto LABEL_223;
      }
    }
  }

  if (v7 != 70)
  {
    if (v7 == 69)
    {
      if (v14 <= v16)
      {
        v51 = v16;
      }

      else
      {
        v51 = v14;
      }

      if (v10 == 69)
      {
        v238 = v204;
        *v239 = v205;
        *&v239[16] = v206;
        v240 = 0;
        v241 = 0;
        v242 = 0;
        v233 = v204;
        *v234 = v205;
        *&v234[16] = v206;
        v235 = 0;
        v236 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v51, &v238);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v51, &v233);
        v228 = v204;
        *v229 = v205;
        *&v229[16] = v206;
        v230 = 0;
        v232 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
        v210 = v204;
        v211 = v205;
        v212 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v219, &v210, v187, &v238, &v228);
        v207 = v204;
        v208 = v205;
        v209 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v210, &v207, v4, &v233, &v228);
        if (v226)
        {
          bzero(v225, 4 * v226);
        }

        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v23 >= 1)
        {
          for (i = 0; i != v23; ++i)
          {
            v53 = v226;
            if (!v226)
            {
              goto LABEL_71;
            }

            v54 = 0;
            v55 = v223;
            v56 = v224;
            v57 = v225;
            v58 = v227;
            do
            {
              v59 = *v55++;
              if (v59 != 1)
              {
                if (*v57 >= *v56)
                {
                  v60 = 0;
                  goto LABEL_73;
                }

                v54 += *v58 * *v57;
              }

              ++v58;
              ++v56;
              ++v57;
              --v53;
            }

            while (v53);
            v53 = v54;
LABEL_71:
            v60 = (v222 + 4 * v53);
LABEL_73:
            v61 = v217;
            if (v217)
            {
              v62 = 0;
              v63 = v214;
              v64 = v215;
              v65 = v216;
              v66 = v218;
              do
              {
                v67 = *v63++;
                if (v67 != 1)
                {
                  if (*v65 >= *v64)
                  {
                    goto LABEL_209;
                  }

                  v62 += *v66 * *v65;
                }

                ++v66;
                ++v64;
                ++v65;
                --v61;
              }

              while (v61);
              v61 = v62;
            }

            if (v60)
            {
              v68 = v213 == 0;
            }

            else
            {
              v68 = 1;
            }

            if (v68)
            {
              break;
            }

            *(v188 + 4 * i) = fmodf(*v60, *(v213 + 4 * v61));
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v219);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v210);
          }
        }
      }

      else
      {
        v238 = v204;
        *v239 = v205;
        *&v239[16] = v206;
        v240 = 0;
        v241 = 0;
        v242 = 0;
        v233 = v204;
        *v234 = v205;
        *&v234[16] = v206;
        v235 = 0;
        v236 = 0;
        v237 = 0;
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v51, &v238);
        ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v51, &v233);
        v228 = v204;
        *v229 = v205;
        *&v229[16] = v206;
        v230 = 0;
        v232 = 0;
        v231 = 0;
        ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
        v210 = v204;
        v211 = v205;
        v212 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v219, &v210, v187, &v238, &v228);
        v207 = v204;
        v208 = v205;
        v209 = v206;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(&v210, &v207, v4, &v233, &v228);
        if (v226)
        {
          bzero(v225, 4 * v226);
        }

        if (v217)
        {
          bzero(v216, 4 * v217);
        }

        if (v23 >= 1)
        {
          for (j = 0; j != v23; ++j)
          {
            v130 = v226;
            if (!v226)
            {
              goto LABEL_195;
            }

            v131 = 0;
            v132 = v223;
            v133 = v224;
            v134 = v225;
            v135 = v227;
            do
            {
              v136 = *v132++;
              if (v136 != 1)
              {
                if (*v134 >= *v133)
                {
                  v137 = 0;
                  goto LABEL_197;
                }

                v131 += *v135 * *v134;
              }

              ++v135;
              ++v133;
              ++v134;
              --v130;
            }

            while (v130);
            v130 = v131;
LABEL_195:
            v137 = (v222 + 4 * v130);
LABEL_197:
            v138 = v217;
            if (v217)
            {
              v139 = 0;
              v140 = v214;
              v141 = v215;
              v142 = v216;
              v143 = v218;
              do
              {
                v144 = *v140++;
                if (v144 != 1)
                {
                  if (*v142 >= *v141)
                  {
                    goto LABEL_209;
                  }

                  v139 += *v143 * *v142;
                }

                ++v143;
                ++v141;
                ++v142;
                --v138;
              }

              while (v138);
              v138 = v139;
            }

            if (v137)
            {
              v145 = v213 == 0;
            }

            else
            {
              v145 = 1;
            }

            if (v145)
            {
              break;
            }

            *(v188 + j) = fmodf(*v137, *(v213 + 4 * v138)) != 0.0;
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v219);
            ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(&v210);
          }
        }
      }

LABEL_209:
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v210);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(&v219);
      goto LABEL_266;
    }

    goto LABEL_86;
  }

  if (v14 <= v16)
  {
    v88 = v16;
  }

  else
  {
    v88 = v14;
  }

  if (v10 != 70)
  {
    v238 = v204;
    *v239 = v205;
    *&v239[16] = v206;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v233 = v204;
    *v234 = v205;
    *&v234[16] = v206;
    v235 = 0;
    v236 = 0;
    v237 = 0;
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v88, &v238);
    ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v88, &v233);
    v228 = v204;
    *v229 = v205;
    *&v229[16] = v206;
    v230 = 0;
    v232 = 0;
    v231 = 0;
    ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
    v210 = v204;
    v211 = v205;
    v212 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v219, &v210, v187, &v238, &v228);
    v207 = v204;
    v208 = v205;
    v209 = v206;
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v210, &v207, v4, &v233, &v228);
    if (v226)
    {
      bzero(v225, 4 * v226);
    }

    if (v217)
    {
      bzero(v216, 4 * v217);
    }

    if (v23 < 1)
    {
      goto LABEL_265;
    }

    v163 = 0;
    while (1)
    {
      v164 = v226;
      if (!v226)
      {
        goto LABEL_251;
      }

      v165 = 0;
      v166 = v223;
      v167 = v224;
      v168 = v225;
      v169 = v227;
      do
      {
        v170 = *v166++;
        if (v170 != 1)
        {
          if (*v168 >= *v167)
          {
            v171 = 0;
            goto LABEL_253;
          }

          v165 += *v169 * *v168;
        }

        ++v169;
        ++v167;
        ++v168;
        --v164;
      }

      while (v164);
      v164 = v165;
LABEL_251:
      v171 = (v222 + 8 * v164);
LABEL_253:
      v172 = v217;
      if (v217)
      {
        v173 = 0;
        v174 = v214;
        v175 = v215;
        v176 = v216;
        v177 = v218;
        do
        {
          v178 = *v174++;
          if (v178 != 1)
          {
            if (*v176 >= *v175)
            {
              goto LABEL_265;
            }

            v173 += *v177 * *v176;
          }

          ++v177;
          ++v175;
          ++v176;
          --v172;
        }

        while (v172);
        v172 = v173;
      }

      if (v171)
      {
        v179 = v213 == 0;
      }

      else
      {
        v179 = 1;
      }

      if (!v179)
      {
        *(v188 + v163) = fmod(*v171, *(v213 + 8 * v172)) != 0.0;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v219);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v210);
        if (++v163 != v23)
        {
          continue;
        }
      }

      goto LABEL_265;
    }
  }

  v238 = v204;
  *v239 = v205;
  *&v239[16] = v206;
  v240 = 0;
  v241 = 0;
  v242 = 0;
  v233 = v204;
  *v234 = v205;
  *&v234[16] = v206;
  v235 = 0;
  v236 = 0;
  v237 = 0;
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v13, v14, v88, &v238);
  ODIE::Kernels::Core::CPU::Utils::equalizeRanks(v15, v16, v88, &v233);
  v228 = v204;
  *v229 = v205;
  *&v229[16] = v206;
  v230 = 0;
  v232 = 0;
  v231 = 0;
  ODIE::Kernels::Core::CPU::Utils::broadcastShapes(&v238, &v233, &v228);
  v210 = v204;
  v211 = v205;
  v212 = v206;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v219, &v210, v187, &v238, &v228);
  v207 = v204;
  v208 = v205;
  v209 = v206;
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(&v210, &v207, v4, &v233, &v228);
  if (v226)
  {
    bzero(v225, 4 * v226);
  }

  if (v217)
  {
    bzero(v216, 4 * v217);
  }

  if (v23 < 1)
  {
    goto LABEL_265;
  }

  for (k = 0; k != v23; ++k)
  {
    v90 = v226;
    if (!v226)
    {
LABEL_136:
      v97 = (v222 + 8 * v90);
      goto LABEL_138;
    }

    v91 = 0;
    v92 = v223;
    v93 = v224;
    v94 = v225;
    v95 = v227;
    while (1)
    {
      v96 = *v92++;
      if (v96 != 1)
      {
        break;
      }

LABEL_134:
      ++v95;
      ++v93;
      ++v94;
      if (!--v90)
      {
        v90 = v91;
        goto LABEL_136;
      }
    }

    if (*v94 < *v93)
    {
      v91 += *v95 * *v94;
      goto LABEL_134;
    }

    v97 = 0;
LABEL_138:
    v98 = v217;
    if (v217)
    {
      v99 = 0;
      v100 = v214;
      v101 = v215;
      v102 = v216;
      v103 = v218;
      do
      {
        v104 = *v100++;
        if (v104 != 1)
        {
          if (*v102 >= *v101)
          {
            goto LABEL_265;
          }

          v99 += *v103 * *v102;
        }

        ++v103;
        ++v101;
        ++v102;
        --v98;
      }

      while (v98);
      v98 = v99;
    }

    if (v97)
    {
      v105 = v213 == 0;
    }

    else
    {
      v105 = 1;
    }

    if (v105)
    {
      break;
    }

    *(v188 + 8 * k) = fmod(*v97, *(v213 + 8 * v98));
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v219);
    ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(&v210);
  }

LABEL_265:
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v210);
  ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(&v219);
LABEL_266:
  if (*v229)
  {
    v219 = v228;
    v220 = *v229;
    v221 = *&v229[8];
    (*v229)(&v219, v230);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v234)
  {
    v219 = v233;
    v220 = *v234;
    v221 = *&v234[8];
    (*v234)(&v219, v235);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v239)
  {
    v219 = v238;
    v220 = *v239;
    v221 = *&v239[8];
    (*v239)(&v219, v240);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v69 = 0;
LABEL_273:
  if (*v190)
  {
    v219 = v189;
    v220 = *v190;
    v221 = *&v190[8];
    (*v190)(&v219, v191);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v195)
  {
    v219 = v194;
    v220 = *v195;
    v221 = *&v195[8];
    (*v195)(&v219, v196);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  if (*v200)
  {
    v219 = v199;
    v220 = *v200;
    v221 = *&v200[8];
    (*v200)(&v219, v201);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  return v69;
}

void ODIE::Kernels::Core::CPU::registerElementwiseBinaryKernels(_OWORD **a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = "coreml.add";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseAdd;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.divide";
  v5 = 27;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseDivide;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.equal";
  v5 = 25;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinaryComparison;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseEqual;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.floor_divide";
  v5 = 39;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseFloorDivide;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.greater";
  v5 = 29;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinaryComparison;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseGreater;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.maximum";
  v5 = 29;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseMaximum;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.minimum";
  v5 = 29;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseMinimum;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.modulo";
  v5 = 27;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseModulo;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.mul";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseMul;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.not_equal";
  v5 = 33;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinaryComparison;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseNotEqual;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.pow";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwisePow;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.sub";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBinary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseSub;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
}

void *ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::next(void *result)
{
  v1 = result[20];
  if (v1 - 1 >= 0)
  {
    v2 = result[27];
    v3 = result[19];
    v4 = v2 - 1;
    v5 = result[20];
    while (1)
    {
      v6 = v4[v5];
      v7 = v3[v5 - 1];
      if (v6 >= v7)
      {
        break;
      }

      v8 = v6 + 1;
      if (v8 != v7)
      {
        v2[v5 - 1] = v8;
        return result;
      }

      v4[v5--] = 0;
      if (v5 <= 0)
      {
        for (; v1; --v1)
        {
          v9 = *v3++;
          *v2++ = v9;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::TensorIterator(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2[1];
  v8 = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = a3;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 4);
  *(a1 + 88) = 0;
  v12 = a1 + 88;
  *(a1 + 80) = v11;
  *(a1 + 64) = v10;
  *(a1 + 48) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v13 = *a2;
  v14 = *(a2 + 4);
  *(a1 + 128) = a2[1];
  *(a1 + 112) = v13;
  *(a1 + 144) = v14;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v15 = *a2;
  v16 = *(a2 + 4);
  *(a1 + 192) = a2[1];
  *(a1 + 176) = v15;
  *(a1 + 208) = v16;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v17 = *a2;
  v18 = *(a2 + 4);
  *(a1 + 256) = a2[1];
  *(a1 + 240) = v17;
  *(a1 + 272) = v18;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  ODIE::Common::Vector<int>::insert<false,int *>((a1 + 48), 0, *(a4 + 40), (*(a4 + 40) + 4 * *(a4 + 48)));
  ODIE::Common::Vector<int>::insert<false,int *>((v12 + 24), *(v12 + 64), *(a5 + 40), (*(a5 + 40) + 4 * *(a5 + 48)));
  v19 = *(v12 + 72);
  v28 = 0;
  ODIE::Common::Vector<int>::resize(v12 + 88, v19, &v28);
  v20 = *(v12 + 72);
  v27 = 1;
  ODIE::Common::Vector<int>::resize(v12 + 152, v20, &v27);
  v21 = *(v12 + 200) - 2;
  if (v21 >= 0)
  {
    v22 = *(v12 + 192);
    v23 = 4 * (*(v12 + 200) - 2);
    v24 = *(v22 + 4 * v21 + 4);
    v25 = *v12 + 4;
    do
    {
      v24 *= *(v25 + v23);
      *(v22 + v23) = v24;
      v23 -= 4;
    }

    while (v23 != -4);
  }

  return a1;
}

void ODIE::Common::Vector<int>::insert<false,int *>(void *result, char *__dst, _BYTE *__src, _BYTE *a4)
{
  v8 = a4 - __src;
  v9 = result[5];
  v10 = result[6] + ((a4 - __src) >> 2);
  v11 = v9;
  v12 = __dst;
  if (result[7] < v10)
  {
    if (v9)
    {
      v13 = -v9 & v9;
    }

    else
    {
      v13 = 4;
    }

    v14 = *(result + 1);
    v20 = *result;
    *v21 = v14;
    *&v21[16] = result[4];
    v15 = odie_alloc_aligned(&v20, 4 * v10, v13, 0);
    v9 = v15;
    v11 = result[5];
    if (v15 == v11)
    {
      v12 = __dst;
    }

    else
    {
      v16 = (__dst - v11);
      if (__dst != v11)
      {
        memmove(v15, v11, __dst - v11);
        v11 = result[5];
      }

      v12 = &v16[v9];
    }
  }

  v17 = &v11[4 * result[6]];
  if (v17 != __dst)
  {
    memmove((v9 + 4 * v10 - (v17 - __dst)), __dst, v17 - __dst);
  }

  if (a4 != __src)
  {
    memmove(v12, __src, v8);
  }

  if (v9 != result[5])
  {
    result[5] = v9;
    v18 = result[2];
    if (v18)
    {
      v20 = *result;
      *v21 = v18;
      *&v21[8] = *(result + 3);
      v18(&v20);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }
  }

  v19 = result[7];
  if (v10 > v19)
  {
    v19 = v10;
  }

  result[6] = v10;
  result[7] = v19;
}

__int128 *ODIE::Kernels::Core::CPU::Utils::TensorIterator<float>::~TensorIterator(__int128 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 27);
    v15 = *a1;
    v16 = v2;
    v17 = *(a1 + 24);
    v2(&v15, v3);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *(a1 + 35);
    v15 = *a1;
    v16 = v4;
    v17 = *(a1 + 24);
    v4(&v15, v5);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 35);
    v15 = a1[15];
    v16 = v6;
    v17 = *(a1 + 264);
    v6(&v15, v7);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 27);
    v15 = a1[11];
    v16 = v8;
    v17 = *(a1 + 200);
    v8(&v15, v9);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 19);
    v15 = a1[7];
    v16 = v10;
    v17 = *(a1 + 136);
    v10(&v15, v11);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 20) = 0;
  *(a1 + 21) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(a1 + 11);
    v15 = a1[3];
    v16 = v12;
    v17 = *(a1 + 72);
    v12(&v15, v13);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  return a1;
}

void *ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::next(void *result)
{
  v1 = result[20];
  if (v1 - 1 >= 0)
  {
    v2 = result[27];
    v3 = result[19];
    v4 = v2 - 1;
    v5 = result[20];
    while (1)
    {
      v6 = v4[v5];
      v7 = v3[v5 - 1];
      if (v6 >= v7)
      {
        break;
      }

      v8 = v6 + 1;
      if (v8 != v7)
      {
        v2[v5 - 1] = v8;
        return result;
      }

      v4[v5--] = 0;
      if (v5 <= 0)
      {
        for (; v1; --v1)
        {
          v9 = *v3++;
          *v2++ = v9;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::TensorIterator(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2[1];
  v8 = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = a3;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 4);
  *(a1 + 88) = 0;
  v12 = a1 + 88;
  *(a1 + 80) = v11;
  *(a1 + 64) = v10;
  *(a1 + 48) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v13 = *a2;
  v14 = *(a2 + 4);
  *(a1 + 128) = a2[1];
  *(a1 + 112) = v13;
  *(a1 + 144) = v14;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v15 = *a2;
  v16 = *(a2 + 4);
  *(a1 + 192) = a2[1];
  *(a1 + 176) = v15;
  *(a1 + 208) = v16;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v17 = *a2;
  v18 = *(a2 + 4);
  *(a1 + 256) = a2[1];
  *(a1 + 240) = v17;
  *(a1 + 272) = v18;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  ODIE::Common::Vector<int>::insert<false,int *>((a1 + 48), 0, *(a4 + 40), (*(a4 + 40) + 4 * *(a4 + 48)));
  ODIE::Common::Vector<int>::insert<false,int *>((v12 + 24), *(v12 + 64), *(a5 + 40), (*(a5 + 40) + 4 * *(a5 + 48)));
  v19 = *(v12 + 72);
  v28 = 0;
  ODIE::Common::Vector<int>::resize(v12 + 88, v19, &v28);
  v20 = *(v12 + 72);
  v27 = 1;
  ODIE::Common::Vector<int>::resize(v12 + 152, v20, &v27);
  v21 = *(v12 + 200) - 2;
  if (v21 >= 0)
  {
    v22 = *(v12 + 192);
    v23 = 4 * (*(v12 + 200) - 2);
    v24 = *(v22 + 4 * v21 + 4);
    v25 = *v12 + 4;
    do
    {
      v24 *= *(v25 + v23);
      *(v22 + v23) = v24;
      v23 -= 4;
    }

    while (v23 != -4);
  }

  return a1;
}

__int128 *ODIE::Kernels::Core::CPU::Utils::TensorIterator<double>::~TensorIterator(__int128 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 27);
    v15 = *a1;
    v16 = v2;
    v17 = *(a1 + 24);
    v2(&v15, v3);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *(a1 + 35);
    v15 = *a1;
    v16 = v4;
    v17 = *(a1 + 24);
    v4(&v15, v5);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 35);
    v15 = a1[15];
    v16 = v6;
    v17 = *(a1 + 264);
    v6(&v15, v7);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 27);
    v15 = a1[11];
    v16 = v8;
    v17 = *(a1 + 200);
    v8(&v15, v9);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 19);
    v15 = a1[7];
    v16 = v10;
    v17 = *(a1 + 136);
    v10(&v15, v11);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 20) = 0;
  *(a1 + 21) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(a1 + 11);
    v15 = a1[3];
    v16 = v12;
    v17 = *(a1 + 72);
    v12(&v15, v13);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  return a1;
}

void *ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::next(void *result)
{
  v1 = result[20];
  if (v1 - 1 >= 0)
  {
    v2 = result[27];
    v3 = result[19];
    v4 = v2 - 1;
    v5 = result[20];
    while (1)
    {
      v6 = v4[v5];
      v7 = v3[v5 - 1];
      if (v6 >= v7)
      {
        break;
      }

      v8 = v6 + 1;
      if (v8 != v7)
      {
        v2[v5 - 1] = v8;
        return result;
      }

      v4[v5--] = 0;
      if (v5 <= 0)
      {
        for (; v1; --v1)
        {
          v9 = *v3++;
          *v2++ = v9;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::TensorIterator(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2[1];
  v8 = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = a3;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 4);
  *(a1 + 88) = 0;
  v12 = a1 + 88;
  *(a1 + 80) = v11;
  *(a1 + 64) = v10;
  *(a1 + 48) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v13 = *a2;
  v14 = *(a2 + 4);
  *(a1 + 128) = a2[1];
  *(a1 + 112) = v13;
  *(a1 + 144) = v14;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v15 = *a2;
  v16 = *(a2 + 4);
  *(a1 + 192) = a2[1];
  *(a1 + 176) = v15;
  *(a1 + 208) = v16;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v17 = *a2;
  v18 = *(a2 + 4);
  *(a1 + 256) = a2[1];
  *(a1 + 240) = v17;
  *(a1 + 272) = v18;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  ODIE::Common::Vector<int>::insert<false,int *>((a1 + 48), 0, *(a4 + 40), (*(a4 + 40) + 4 * *(a4 + 48)));
  ODIE::Common::Vector<int>::insert<false,int *>((v12 + 24), *(v12 + 64), *(a5 + 40), (*(a5 + 40) + 4 * *(a5 + 48)));
  v19 = *(v12 + 72);
  v28 = 0;
  ODIE::Common::Vector<int>::resize(v12 + 88, v19, &v28);
  v20 = *(v12 + 72);
  v27 = 1;
  ODIE::Common::Vector<int>::resize(v12 + 152, v20, &v27);
  v21 = *(v12 + 200) - 2;
  if (v21 >= 0)
  {
    v22 = *(v12 + 192);
    v23 = 4 * (*(v12 + 200) - 2);
    v24 = *(v22 + 4 * v21 + 4);
    v25 = *v12 + 4;
    do
    {
      v24 *= *(v25 + v23);
      *(v22 + v23) = v24;
      v23 -= 4;
    }

    while (v23 != -4);
  }

  return a1;
}

__int128 *ODIE::Kernels::Core::CPU::Utils::TensorIterator<int>::~TensorIterator(__int128 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 27);
    v15 = *a1;
    v16 = v2;
    v17 = *(a1 + 24);
    v2(&v15, v3);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *(a1 + 35);
    v15 = *a1;
    v16 = v4;
    v17 = *(a1 + 24);
    v4(&v15, v5);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 35);
    v15 = a1[15];
    v16 = v6;
    v17 = *(a1 + 264);
    v6(&v15, v7);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 27);
    v15 = a1[11];
    v16 = v8;
    v17 = *(a1 + 200);
    v8(&v15, v9);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 19);
    v15 = a1[7];
    v16 = v10;
    v17 = *(a1 + 136);
    v10(&v15, v11);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 20) = 0;
  *(a1 + 21) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(a1 + 11);
    v15 = a1[3];
    v16 = v12;
    v17 = *(a1 + 72);
    v12(&v15, v13);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  return a1;
}

void *_ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_E4nextEv(void *result)
{
  v1 = result[20];
  if (v1 - 1 >= 0)
  {
    v2 = result[27];
    v3 = result[19];
    v4 = v2 - 1;
    v5 = result[20];
    while (1)
    {
      v6 = v4[v5];
      v7 = v3[v5 - 1];
      if (v6 >= v7)
      {
        break;
      }

      v8 = v6 + 1;
      if (v8 != v7)
      {
        v2[v5 - 1] = v8;
        return result;
      }

      v4[v5--] = 0;
      if (v5 <= 0)
      {
        for (; v1; --v1)
        {
          v9 = *v3++;
          *v2++ = v9;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t _ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_EC2ENS_6Common9AllocatorEPKDF16_RNS6_6VectorIiEESC_(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2[1];
  v8 = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = a3;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 4);
  *(a1 + 88) = 0;
  v12 = a1 + 88;
  *(a1 + 80) = v11;
  *(a1 + 64) = v10;
  *(a1 + 48) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v13 = *a2;
  v14 = *(a2 + 4);
  *(a1 + 128) = a2[1];
  *(a1 + 112) = v13;
  *(a1 + 144) = v14;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v15 = *a2;
  v16 = *(a2 + 4);
  *(a1 + 192) = a2[1];
  *(a1 + 176) = v15;
  *(a1 + 208) = v16;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v17 = *a2;
  v18 = *(a2 + 4);
  *(a1 + 256) = a2[1];
  *(a1 + 240) = v17;
  *(a1 + 272) = v18;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  ODIE::Common::Vector<int>::insert<false,int *>((a1 + 48), 0, *(a4 + 40), (*(a4 + 40) + 4 * *(a4 + 48)));
  ODIE::Common::Vector<int>::insert<false,int *>((v12 + 24), *(v12 + 64), *(a5 + 40), (*(a5 + 40) + 4 * *(a5 + 48)));
  v19 = *(v12 + 72);
  v28 = 0;
  ODIE::Common::Vector<int>::resize(v12 + 88, v19, &v28);
  v20 = *(v12 + 72);
  v27 = 1;
  ODIE::Common::Vector<int>::resize(v12 + 152, v20, &v27);
  v21 = *(v12 + 200) - 2;
  if (v21 >= 0)
  {
    v22 = *(v12 + 192);
    v23 = 4 * (*(v12 + 200) - 2);
    v24 = *(v22 + 4 * v21 + 4);
    v25 = *v12 + 4;
    do
    {
      v24 *= *(v25 + v23);
      *(v22 + v23) = v24;
      v23 -= 4;
    }

    while (v23 != -4);
  }

  return a1;
}

__int128 *_ZN4ODIE7Kernels4Core3CPU5Utils14TensorIteratorIDF16_ED2Ev(__int128 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 27);
    v15 = *a1;
    v16 = v2;
    v17 = *(a1 + 24);
    v2(&v15, v3);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *(a1 + 35);
    v15 = *a1;
    v16 = v4;
    v17 = *(a1 + 24);
    v4(&v15, v5);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 35);
    v15 = a1[15];
    v16 = v6;
    v17 = *(a1 + 264);
    v6(&v15, v7);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 27);
    v15 = a1[11];
    v16 = v8;
    v17 = *(a1 + 200);
    v8(&v15, v9);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 19);
    v15 = a1[7];
    v16 = v10;
    v17 = *(a1 + 136);
    v10(&v15, v11);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 20) = 0;
  *(a1 + 21) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(a1 + 11);
    v15 = a1[3];
    v16 = v12;
    v17 = *(a1 + 72);
    v12(&v15, v13);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  return a1;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceElementwiseBoolean(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  if (a3 == 2 && (v4 = **a2, *(v4 + 8) == 2) && *(*a2[1] + 8) == 2)
  {
    v7 = a1[1];
    v38 = *a1;
    v39 = v7;
    v40 = *(a1 + 4);
    v8 = *a2[1];
    if (*(v8 + 8) != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
      ODIE::Platform::abort(v20);
    }

    v33 = v38;
    *v34 = v39;
    v28 = v38;
    *v29 = v39;
    *&v34[16] = v40;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    *&v29[16] = v40;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v23 = v38;
    *v24 = v39;
    *&v24[16] = v40;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v9 = ODIE::Kernels::Core::CPU::Utils::broadcastShapesForTypes(v4, v8, &v33, &v28, &v23);
    v10 = odie_alloc_aligned(&v38, 4 * v26, 4, 0);
    v11 = v26;
    if (v26)
    {
      v12 = v25;
      v13 = v10;
      v14 = v26;
      do
      {
        v15 = *v12++;
        *v13++ = v15;
        --v14;
      }

      while (v14);
    }

    *&v42[16] = *(a1 + 4);
    v16 = a1[1];
    v41 = *a1;
    *v42 = v16;
    ODIE::Common::NDArrayType::create(&v41, *(v4 + 24), v9, v10, v11, *(v4 + 48), *(v4 + 32), &v21);
    if ((v22 & 1) == 0)
    {
      ODIE::Platform::abort(v17);
    }

    *a4 = v21;
    if (*v24)
    {
      v41 = v23;
      *v42 = *v24;
      *&v42[8] = *&v24[8];
      (*v24)(&v41, v25);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }

    if (*v29)
    {
      v23 = v28;
      *v24 = *v29;
      *&v24[8] = *&v29[8];
      (*v29)(&v23, v30);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }

    if (*v34)
    {
      v28 = v33;
      *v29 = *v34;
      *&v29[8] = *&v34[8];
      (*v34)(&v28, v35);
    }

    else
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
    }

    return 0;
  }

  else
  {
    v18 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "elementwise BOOL op expects 2 NDArrayType inputs.");
  }

  return v18;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceAnd(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return ODIE::Kernels::Core::CPU::valueInferenceElementwiseBoolean(a2, a3, a4, a5, 0, v7);
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseBoolean(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  if (a2 != 2 || *(**a1 + 8) != 2 || *(*a1[1] + 8) != 2)
  {
    v51 = "elementwise BOOL op expects 2 NDArrayType inputs.";
LABEL_80:
    v52 = "validateOperandsAreNdArrayType";
    v53 = "%s";
    v56 = v51;
    goto LABEL_81;
  }

  if (a4 != 1 || (v8 = *a3, v9 = **a3, *(v9 + 8) != 2))
  {
    v51 = "elementwise BOOL op expects 1 NDArrayType output.";
    goto LABEL_80;
  }

  v11 = a5;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = 1;
  while (1)
  {
    v16 = v12;
    v17 = a1[v13];
    if (*(*v17 + 16))
    {
      if (!v17[1])
      {
        break;
      }
    }

    v12 = 1;
    v14 = v15;
    v13 = 1;
    v15 = 0;
    if (v16)
    {
      goto LABEL_10;
    }
  }

  v49 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v13);
  if ((v14 & 1) == 0)
  {
    v8 = *a3;
    v9 = **a3;
LABEL_10:
    v18 = v8[1];
    if (*(v9 + 16))
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
      v20 = a1[1];
      v21 = v20[1];
      v23 = **a1;
      v22 = (*a1)[1];
      if (*(v23 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v54);
      }

      v24 = *v20;
      if (*(*v20 + 8) != 2)
      {
        odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
        ODIE::Platform::abort(v55);
      }

      v25 = a6[1];
      v84 = *a6;
      *v85 = v25;
      *&v85[16] = *(a6 + 4);
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v26 = a6[1];
      v79 = *a6;
      *v80 = v26;
      *&v80[16] = *(a6 + 4);
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v74 = v79;
      *v75 = v26;
      *&v75[16] = *(a6 + 4);
      v76 = 0;
      v78 = 0;
      v77 = 0;
      ODIE::Kernels::Core::CPU::Utils::broadcastShapesForTypes(v23, v24, &v84, &v79, &v74);
      v27 = a6[1];
      v59[0] = *a6;
      v59[1] = v27;
      v60 = *(a6 + 4);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<BOOL>::TensorIterator(&v66, v59, v22, &v84, &v74);
      v28 = a6[1];
      v57[0] = *a6;
      v57[1] = v28;
      v58 = *(a6 + 4);
      ODIE::Kernels::Core::CPU::Utils::TensorIterator<BOOL>::TensorIterator(v59, v57, v21, &v79, &v74);
      if (v77)
      {
        v29 = v76;
        v30 = 4 * v77;
        v31 = 1;
        do
        {
          v32 = *v29++;
          v31 *= v32;
          v30 -= 4;
        }

        while (v30);
        if (v31 < 1)
        {
LABEL_68:
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<BOOL>::~TensorIterator(v59);
          ODIE::Kernels::Core::CPU::Utils::TensorIterator<BOOL>::~TensorIterator(&v66);
          if (*v75)
          {
            v66 = v74;
            v67 = *v75;
            v68 = *&v75[8];
            (*v75)(&v66, v76);
          }

          else
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
          }

          if (*v80)
          {
            v66 = v79;
            v67 = *v80;
            v68 = *&v80[8];
            (*v80)(&v66, v81);
          }

          else
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
          }

          if (*v85)
          {
            v66 = v84;
            v67 = *v85;
            v68 = *&v85[8];
            (*v85)(&v66, v86);
          }

          else
          {
            odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
          }

          return 0;
        }
      }

      else
      {
        v31 = 1;
      }

      v33 = 0;
      while (1)
      {
        v34 = v72;
        if (v11 == 2)
        {
          if (v72)
          {
            v38 = 0;
            v39 = 0;
            do
            {
              if (*(v70 + 4 * v38) != 1)
              {
                v39 += *(v73 + 4 * v38) * *(v71 + 4 * v38);
              }

              ++v38;
            }

            while (v72 != v38);
            v34 = v39;
          }

          v40 = v64;
          if (v64)
          {
            v41 = 0;
            v42 = 0;
            do
            {
              if (*(v62 + 4 * v41) != 1)
              {
                v42 += *(v65 + 4 * v41) * *(v63 + 4 * v41);
              }

              ++v41;
            }

            while (v64 != v41);
            v40 = v42;
          }

          v37 = *(v69 + v34) != *(v61 + v40);
          goto LABEL_67;
        }

        if (v11 != 1)
        {
          break;
        }

        if (v72)
        {
          v35 = 0;
          v36 = 0;
          do
          {
            if (*(v70 + 4 * v35) != 1)
            {
              v36 += *(v73 + 4 * v35) * *(v71 + 4 * v35);
            }

            ++v35;
          }

          while (v72 != v35);
          v34 = v36;
        }

        if ((*(v69 + v34) & 1) == 0)
        {
          v45 = v64;
          if (v64)
          {
            v48 = 0;
            v47 = 0;
            do
            {
              if (*(v62 + 4 * v48) != 1)
              {
                v47 += *(v65 + 4 * v48) * *(v63 + 4 * v48);
              }

              ++v48;
            }

            while (v64 != v48);
            goto LABEL_64;
          }

          goto LABEL_65;
        }

        v37 = 1;
LABEL_67:
        *(v18 + v33) = v37 & 1;
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<BOOL>::next(&v66);
        ODIE::Kernels::Core::CPU::Utils::TensorIterator<BOOL>::next(v59);
        if (++v33 == v31)
        {
          goto LABEL_68;
        }
      }

      if (v72)
      {
        v43 = 0;
        v44 = 0;
        do
        {
          if (*(v70 + 4 * v43) != 1)
          {
            v44 += *(v73 + 4 * v43) * *(v71 + 4 * v43);
          }

          ++v43;
        }

        while (v72 != v43);
        v34 = v44;
      }

      if (*(v69 + v34) != 1)
      {
        v37 = 0;
        goto LABEL_67;
      }

      v45 = v64;
      if (v64)
      {
        v46 = 0;
        v47 = 0;
        do
        {
          if (*(v62 + 4 * v46) != 1)
          {
            v47 += *(v65 + 4 * v46) * *(v63 + 4 * v46);
          }

          ++v46;
        }

        while (v64 != v46);
LABEL_64:
        v45 = v47;
      }

LABEL_65:
      v37 = *(v61 + v45);
      goto LABEL_67;
    }

    v52 = "validateOperandsHaveData";
    v53 = "Operand %lld does not have data bound.";
    v56 = 0;
LABEL_81:
    v49 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v52, v53, a5, a6, v56);
  }

  return v49;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceOr(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return ODIE::Kernels::Core::CPU::valueInferenceElementwiseBoolean(a2, a3, a4, a5, 1, v7);
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceXor(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return ODIE::Kernels::Core::CPU::valueInferenceElementwiseBoolean(a2, a3, a4, a5, 2, v7);
}

void ODIE::Kernels::Core::CPU::registerElementwiseBooleanKernels(_OWORD **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14[40] = 0;
  v15 = "coreml.and";
  v16 = 21;
  v17 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBoolean;
  v18 = ODIE::Kernels::Core::CPU::valueInferenceAnd;
  v19 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v14, 1);
  v8[40] = 0;
  v9 = "coreml.or";
  v10 = 19;
  v11 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBoolean;
  v12 = ODIE::Kernels::Core::CPU::valueInferenceOr;
  v13 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v8, 1);
  v2[40] = 0;
  v3 = "coreml.xor";
  v4 = 21;
  v5 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseBoolean;
  v6 = ODIE::Kernels::Core::CPU::valueInferenceXor;
  v7 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  ODIE::Common::String::~String(v8);
  ODIE::Common::String::~String(v14);
}

void *ODIE::Kernels::Core::CPU::Utils::TensorIterator<BOOL>::next(void *result)
{
  v1 = result[20];
  if (v1 - 1 >= 0)
  {
    v2 = result[27];
    v3 = result[19];
    v4 = v2 - 1;
    v5 = result[20];
    while (1)
    {
      v6 = v4[v5];
      v7 = v3[v5 - 1];
      if (v6 >= v7)
      {
        break;
      }

      v8 = v6 + 1;
      if (v8 != v7)
      {
        v2[v5 - 1] = v8;
        return result;
      }

      v4[v5--] = 0;
      if (v5 <= 0)
      {
        for (; v1; --v1)
        {
          v9 = *v3++;
          *v2++ = v9;
        }

        return result;
      }
    }
  }

  return result;
}

uint64_t ODIE::Kernels::Core::CPU::Utils::TensorIterator<BOOL>::TensorIterator(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2[1];
  v8 = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = a3;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 4);
  *(a1 + 88) = 0;
  v12 = a1 + 88;
  *(a1 + 80) = v11;
  *(a1 + 64) = v10;
  *(a1 + 48) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v13 = *a2;
  v14 = *(a2 + 4);
  *(a1 + 128) = a2[1];
  *(a1 + 112) = v13;
  *(a1 + 144) = v14;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v15 = *a2;
  v16 = *(a2 + 4);
  *(a1 + 192) = a2[1];
  *(a1 + 176) = v15;
  *(a1 + 208) = v16;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v17 = *a2;
  v18 = *(a2 + 4);
  *(a1 + 256) = a2[1];
  *(a1 + 240) = v17;
  *(a1 + 272) = v18;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  ODIE::Common::Vector<int>::insert<false,int *>((a1 + 48), 0, *(a4 + 40), (*(a4 + 40) + 4 * *(a4 + 48)));
  ODIE::Common::Vector<int>::insert<false,int *>((v12 + 24), *(v12 + 64), *(a5 + 40), (*(a5 + 40) + 4 * *(a5 + 48)));
  v19 = *(v12 + 72);
  v28 = 0;
  ODIE::Common::Vector<int>::resize(v12 + 88, v19, &v28);
  v20 = *(v12 + 72);
  v27 = 1;
  ODIE::Common::Vector<int>::resize(v12 + 152, v20, &v27);
  v21 = *(v12 + 200) - 2;
  if (v21 >= 0)
  {
    v22 = *(v12 + 192);
    v23 = 4 * (*(v12 + 200) - 2);
    v24 = *(v22 + 4 * v21 + 4);
    v25 = *v12 + 4;
    do
    {
      v24 *= *(v25 + v23);
      *(v22 + v23) = v24;
      v23 -= 4;
    }

    while (v23 != -4);
  }

  return a1;
}

__int128 *ODIE::Kernels::Core::CPU::Utils::TensorIterator<BOOL>::~TensorIterator(__int128 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *(a1 + 27);
    v15 = *a1;
    v16 = v2;
    v17 = *(a1 + 24);
    v2(&v15, v3);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *(a1 + 35);
    v15 = *a1;
    v16 = v4;
    v17 = *(a1 + 24);
    v4(&v15, v5);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 35);
    v15 = a1[15];
    v16 = v6;
    v17 = *(a1 + 264);
    v6(&v15, v7);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 27);
    v15 = a1[11];
    v16 = v8;
    v17 = *(a1 + 200);
    v8(&v15, v9);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 28) = 0;
  *(a1 + 29) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 19);
    v15 = a1[7];
    v16 = v10;
    v17 = *(a1 + 136);
    v10(&v15, v11);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 20) = 0;
  *(a1 + 21) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(a1 + 11);
    v15 = a1[3];
    v16 = v12;
    v17 = *(a1 + 72);
    v12(&v15, v13);
  }

  else
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/Common/CAPI/memory_allocator.cpp", "odie_dealloc", "Invalid dealloc callback");
  }

  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  return a1;
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v5 = **a2;
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v8);
  }

  v10 = *(a1 + 32);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  ODIE::Common::NDArrayType::create(v9, *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 32), *(v5 + 48), *(v5 + 32), &v11);
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  result = 0;
  *a4 = v11;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseNot(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = v29 ^ 1;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v20 = *v13++;
          *v11++ = LODWORD(v20) == 0;
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v13 = (v13 + 2);
            __asm { FCMP            H2, #0 }

            if (_ZF)
            {
              LOWORD(v26) = COERCE_UNSIGNED_INT(1.0);
            }

            else
            {
              v26 = COERCE_SHORT_FLOAT(0);
            }

            *v11 = v26;
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v27 = *v13++;
            if (v27 == 0.0)
            {
              v28 = 1.0;
            }

            else
            {
              v28 = 0.0;
            }

            *v11++ = v28;
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            if (v18 == 0.0)
            {
              v19 = 1.0;
            }

            else
            {
              v19 = 0.0;
            }

            *v11 = v19;
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseSqrt(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = sqrt(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = sqrt(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0 }

            _S0 = sqrtf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = sqrtf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = sqrt(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseRsqrt(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = 1.0 / sqrt(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = (1.0 / sqrt(v19));
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H1 = v20;
            __asm { FCVT            S1, H1 }

            _S1 = 1.0 / sqrtf(_S1);
            __asm { FCVT            H1, S1 }

            *v11 = LOWORD(_S1);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = 1.0 / sqrtf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = 1.0 / sqrt(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseReLu(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v24);
  }

  ODIE::Common::NDArrayType::getNumElements(&v27, v7);
  if ((v27 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v27;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v25);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v26);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v27 >= 1)
      {
        do
        {
          v22 = *v13++;
          *v11 = v22;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v27 >= 1)
      {
        do
        {
          v19 = *v13;
          v13 += 4;
          *v11++ = v19 & ~(v19 >> 31);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v27 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 += 2;
            *v11 = fmaxl(v20, COERCE_SHORT_FLOAT(0));
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v27 >= 1)
        {
          do
          {
            v21 = *v13;
            v13 += 4;
            *v11++ = fmaxf(v21, 0.0);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v27 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 8;
            *v11 = fmax(v18, 0.0);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseSilu(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = v29 / (exp(((v29 << 31) >> 31)) + 1.0) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = (v19 / (exp(-v19) + 1.0));
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S9, H0 }

            _S0 = _S9 / (expf(-_S9) + 1.0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = v28 / (expf(-v28) + 1.0);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = v18 / (exp(-v18) + 1.0);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseSigmoid(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = 1.0 / (exp((v29 << 31 >> 31)) + 1.0) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = (1.0 / (exp(-LODWORD(v19)) + 1.0));
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0 }

            _S0 = 1.0 / (expf(-_S0) + 1.0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = 1.0 / (expf(-v28) + 1.0);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = 1.0 / (exp(-v18) + 1.0);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseLog(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = log(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = log(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = logf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = logf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = log(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseExp(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = exp(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = exp(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = expf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = expf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = exp(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseErf(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = erf(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = erf(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = erff(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = erff(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = erf(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseSin(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = sin(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = sin(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = sinf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = sinf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = sin(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseCos(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = cos(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = cos(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = cosf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = cosf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = cos(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseTan(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = tan(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = tan(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = tanf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = tanf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = tan(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseSinh(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = sinh(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = sinh(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = sinhf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = sinhf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = sinh(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseCosh(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = cosh(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = cosh(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = coshf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = coshf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = cosh(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseTanh(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = tanh(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = tanh(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = tanhf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = tanhf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = tanh(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseAsin(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = asin(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = asin(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = asinf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = asinf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = asin(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseAcos(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = acos(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = acos(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = acosf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = acosf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = acos(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseAtan(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = atan(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = atan(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = atanf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = atanf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = atan(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseAsinh(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = asinh(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = asinh(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = asinhf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = asinhf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = asinh(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseAcosh(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = acosh(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = acosh(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = acoshf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = acoshf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = acosh(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceElementwiseAtanh(uint64_t a1, ODIE::Common::NDArrayType ***a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  {
    return 1;
  }

  v7 = **a2;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v31);
  }

  ODIE::Common::NDArrayType::getNumElements(&v34, v7);
  if ((v34 & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v8);
  }

  v9 = v34;
  v10 = *a2;
  v11 = (*a4)[1];
  v14 = v10;
  v12 = *v10;
  v13 = v14[1];
  if (*(v12 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v32);
  }

  v15 = *(v12 + 24);
  if (*(v15 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v33);
  }

  v16 = *(v15 + 24);
  v17 = 1;
  if (v16 <= 67)
  {
    if (v16 == 16)
    {
      if (v34 >= 1)
      {
        do
        {
          v29 = *v13;
          v13 = (v13 + 1);
          *v11 = atanh(v29) != 0.0;
          v11 = (v11 + 1);
          --v9;
        }

        while (v9);
      }

      return 0;
    }

    if (v16 == 25)
    {
      if (v34 >= 1)
      {
        do
        {
          v19 = *v13++;
          *v11++ = atanh(v19);
          --v9;
        }

        while (v9);
      }

      return 0;
    }
  }

  else
  {
    switch(v16)
    {
      case 'D':
        if (v34 >= 1)
        {
          do
          {
            v20 = *v13;
            v13 = (v13 + 2);
            _H0 = v20;
            __asm { FCVT            S0, H0; float }

            _S0 = atanhf(_S0);
            __asm { FCVT            H0, S0 }

            *v11 = LOWORD(_S0);
            v11 = (v11 + 2);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'E':
        if (v34 >= 1)
        {
          do
          {
            v28 = *v13++;
            *v11++ = atanhf(v28);
            --v9;
          }

          while (v9);
        }

        return 0;
      case 'F':
        if (v34 >= 1)
        {
          do
          {
            v18 = *v13;
            v13 += 2;
            *v11 = atanh(v18);
            v11 += 2;
            --v9;
          }

          while (v9);
        }

        return 0;
    }
  }

  return v17;
}

void ODIE::Kernels::Core::CPU::registerElementwiseUnaryKernels(_OWORD **a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = "coreml.not";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseNot;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.sqrt";
  v5 = 23;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseSqrt;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.rsqrt";
  v5 = 25;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseRsqrt;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.log";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseLog;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.erf";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseErf;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.exp";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseExp;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.relu";
  v5 = 23;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseReLu;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.sigmoid";
  v5 = 29;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseSigmoid;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.silu";
  v5 = 23;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseSilu;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.sin";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseSin;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.cos";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseCos;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.tan";
  v5 = 21;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseTan;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.sinh";
  v5 = 23;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseSinh;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.cosh";
  v5 = 23;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseCosh;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.tanh";
  v5 = 23;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseTanh;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.asin";
  v5 = 23;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseAsin;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.acos";
  v5 = 23;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseAcos;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.atan";
  v5 = 23;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseAtan;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.asinh";
  v5 = 25;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseAsinh;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.acosh";
  v5 = 25;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseAcosh;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
  v3 = 0;
  v4 = "coreml.atanh";
  v5 = 25;
  v6 = ODIE::Kernels::Core::CPU::typeInferenceElementwiseUnary;
  v7 = ODIE::Kernels::Core::CPU::valueInferenceElementwiseAtanh;
  v8 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v2, 1);
  ODIE::Common::String::~String(v2);
}

BOOL anonymous namespace::validateElementwiseUnary(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v5 = 1;
  v6 = "Expect one input and one output for Unary kernel";
  if (a2 != 1 || a4 != 1)
  {
    goto LABEL_15;
  }

  if (*(**a1 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v18);
  }

  if (*(**a3 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v19);
  }

  v7 = **a1;
  if (*(v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v20);
  }

  v8 = **a3;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v21);
  }

  v9 = *(v7 + 32);
  if (v9 != *(v8 + 32))
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseUnary.cpp", "validateElementwiseUnary", "Input and output of Unary kernel must have same ranks");
    return v5;
  }

  if (v9 >= 1)
  {
    v10 = *(v7 + 40);
    v11 = *(v8 + 40);
    if (*v10 == *v11)
    {
      v12 = 0;
      v13 = v10 + 1;
      v14 = v11 + 1;
      while (v9 - 1 != v12)
      {
        v15 = v13[v12];
        v16 = v14[v12++];
        if (v15 != v16)
        {
          v5 = v12 < v9;
          goto LABEL_14;
        }
      }

      return 0;
    }

LABEL_14:
    v6 = "Every dim of input and output of Unary kernel must be the same";
LABEL_15:
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/ElementwiseUnary.cpp", "validateElementwiseUnary", v6);
    return v5;
  }

  return 0;
}

void ODIE::Kernels::Core::CPU::registerErrorKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.error";
  v3 = 25;
  v4 = 0;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceError;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceFill(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  v5 = *a2[1];
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v10);
  }

  v6 = (*a2)[1];
  v7 = *(**a2 + 16);
  v12 = *(a1 + 32);
  v8 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v8;
  ODIE::Common::NDArrayType::create(v11, *(v5 + 24), v7 >> 2, v6, v7 >> 2, &ODIE::Common::Constants::kDefaultDimOrdering, (v7 >> 2), &v13);
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  result = 0;
  *a4 = v13;
  return result;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceFill(uint64_t a1, uint64_t a2, uint64_t a3, ODIE::Common::NDArrayType ***a4)
{
  v4 = (*a4)[1];
  v5 = **(a2 + 8);
  if (*(v5 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v45);
  }

  v6 = *(v5 + 24);
  if (*(v6 + 8) != 1)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    return 2;
  }

  v7 = *(v6 + 24);
  v8 = **a4;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v46);
  }

  v9 = *(*(a2 + 8) + 8);
  ODIE::Common::NDArrayType::getNumElements(&__len, v8);
  if ((__len & 0x100000000) == 0)
  {
    ODIE::Platform::abort(v10);
  }

  result = 1;
  if (v7 <= 25)
  {
    if (v7 == 16)
    {
      if (__len >= 1)
      {
        memset(v4, *v9, __len);
      }
    }

    else
    {
      if (v7 != 25)
      {
        return result;
      }

      if (__len >= 1)
      {
        v20 = *v9;
        v21 = (__len + 3) & 0xFFFFFFFC;
        v22 = vdupq_n_s64(__len - 1);
        v23 = xmmword_25D0A04F0;
        v24 = xmmword_25D0A0500;
        v25 = (v4 + 8);
        v26 = vdupq_n_s64(4uLL);
        do
        {
          v27 = vmovn_s64(vcgeq_u64(v22, v24));
          if (vuzp1_s16(v27, *v22.i8).u8[0])
          {
            *(v25 - 2) = v20;
          }

          if (vuzp1_s16(v27, *&v22).i8[2])
          {
            *(v25 - 1) = v20;
          }

          if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v23))).i32[1])
          {
            *v25 = v20;
            v25[1] = v20;
          }

          v23 = vaddq_s64(v23, v26);
          v24 = vaddq_s64(v24, v26);
          v25 += 4;
          v21 -= 4;
        }

        while (v21);
      }
    }
  }

  else
  {
    switch(v7)
    {
      case 26:
        if (__len >= 1)
        {
          v28 = *v9;
          v29 = (__len + 1) & 0xFFFFFFFE;
          v30 = vdupq_n_s64(__len - 1);
          v31 = xmmword_25D0A0500;
          v32 = (v4 + 8);
          v33 = vdupq_n_s64(2uLL);
          do
          {
            v34 = vmovn_s64(vcgeq_u64(v30, v31));
            if (v34.i8[0])
            {
              *(v32 - 1) = v28;
            }

            if (v34.i8[4])
            {
              *v32 = v28;
            }

            v31 = vaddq_s64(v31, v33);
            v32 += 2;
            v29 -= 2;
          }

          while (v29);
        }

        break;
      case 68:
        if (__len >= 1)
        {
          v11.i16[0] = *v9;
          v35 = (__len + 7) & 0xFFFFFFF8;
          v36 = vdupq_n_s64(__len - 1);
          v37 = xmmword_25D0A0520;
          v38 = xmmword_25D0A0530;
          v39 = xmmword_25D0A04F0;
          v40 = xmmword_25D0A0500;
          v41 = (v4 + 8);
          v42 = vdupq_n_s64(8uLL);
          do
          {
            v43 = vmovn_s64(vcgeq_u64(v36, v40));
            if (vuzp1_s8(vuzp1_s16(v43, v11), v11).u8[0])
            {
              *(v41 - 4) = v11.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(v43, v11), *&v11).i8[1])
            {
              *(v41 - 3) = v11.i16[0];
            }

            if (vuzp1_s8(vuzp1_s16(v11, vmovn_s64(vcgeq_u64(v36, *&v39))), *&v11).i8[2])
            {
              *(v41 - 2) = v11.i16[0];
              *(v41 - 1) = v11.i16[0];
            }

            v44 = vmovn_s64(vcgeq_u64(v36, v38));
            if (vuzp1_s8(*&v11, vuzp1_s16(v44, v11)).i32[1])
            {
              *v41 = v11.i16[0];
            }

            if (vuzp1_s8(*&v11, vuzp1_s16(v44, v11)).i8[5])
            {
              v41[1] = v11.i16[0];
            }

            if (vuzp1_s8(*&v11, vuzp1_s16(v11, vmovn_s64(vcgeq_u64(v36, *&v37)))).i8[6])
            {
              v41[2] = v11.i16[0];
              v41[3] = v11.i16[0];
            }

            v38 = vaddq_s64(v38, v42);
            v39 = vaddq_s64(v39, v42);
            v40 = vaddq_s64(v40, v42);
            v41 += 8;
            v37 = vaddq_s64(v37, v42);
            v35 -= 8;
          }

          while (v35);
        }

        break;
      case 69:
        if (__len >= 1)
        {
          v11.i32[0] = *v9;
          v13 = (__len + 3) & 0xFFFFFFFC;
          v14 = vdupq_n_s64(__len - 1);
          v15 = xmmword_25D0A04F0;
          v16 = xmmword_25D0A0500;
          v17 = (v4 + 8);
          v18 = vdupq_n_s64(4uLL);
          do
          {
            v19 = vmovn_s64(vcgeq_u64(v14, v16));
            if (vuzp1_s16(v19, v11).u8[0])
            {
              *(v17 - 2) = v11.i32[0];
            }

            if (vuzp1_s16(v19, v11).i8[2])
            {
              *(v17 - 1) = v11.i32[0];
            }

            if (vuzp1_s16(v11, vmovn_s64(vcgeq_u64(v14, *&v15))).i32[1])
            {
              *v17 = v11.i32[0];
              v17[1] = v11.i32[0];
            }

            v15 = vaddq_s64(v15, v18);
            v16 = vaddq_s64(v16, v18);
            v17 += 4;
            v13 -= 4;
          }

          while (v13);
        }

        break;
      default:
        return result;
    }
  }

  return 0;
}

void ODIE::Kernels::Core::CPU::registerFillKernels(_OWORD **a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1[40] = 0;
  v2 = "coreml.fill";
  v3 = 23;
  v4 = ODIE::Kernels::Core::CPU::typeInferenceFill;
  v5 = ODIE::Kernels::Core::CPU::valueInferenceFill;
  v6 = 0;
  ODIE::Registration::KernelRegistry::addKernel(a1, v1, 1);
  ODIE::Common::String::~String(v1);
}

uint64_t ODIE::Kernels::Core::CPU::typeInferenceScatterNd(__int128 *a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a2[1];
  v7 = a2[2];
  v8 = **a2;
  if (*(v8 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v25);
  }

  v9 = *(v8 + 40);
  v10 = *(v8 + 32);
  v11 = *v6;
  if (*(*v6 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v26);
  }

  v12 = *(v11 + 40);
  v13 = *(v11 + 32);
  v14 = *v7;
  if (*(*v7 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v27);
  }

  v15 = *(v14 + 40);
  v16 = *(v14 + 32);
  result = v30;
  if (BYTE4(v30) == 1)
  {
    if (v30 != v16)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/GatherScatter.cpp", "typeInferenceScatterNd", "coreml.scatter_nd: updates rank %d != expected rank %d");
      return 3;
    }

    if (v16 >= 1)
    {
      v18 = 0;
      while (*(v15 + 4 * v18) == v33[v18])
      {
        if (v16 == ++v18)
        {
          goto LABEL_10;
        }
      }

      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/GatherScatter.cpp", "typeInferenceScatterNd", "coreml.scatter_nd: updates shape[%d] = %d, expected %d");
      return 3;
    }

LABEL_10:
    v19 = a1[1];
    v30 = *a1;
    v31 = v19;
    v32 = *(a1 + 4);
    v20 = odie_alloc_aligned(&v30, 4 * v10, 4, 0);
    if (v10 >= 1)
    {
      v21 = v20;
      v22 = v10;
      do
      {
        v23 = *v9++;
        *v21++ = v23;
        --v22;
      }

      while (v22);
    }

    v32 = *(a1 + 4);
    v24 = a1[1];
    v30 = *a1;
    v31 = v24;
    ODIE::Common::NDArrayType::create(&v30, *(v8 + 24), v10, v20, v10, &ODIE::Common::Constants::kDefaultDimOrdering, v10, &v28);
    if (v29)
    {
      result = 0;
      *a4 = v28;
    }

    else
    {
      return v28;
    }
  }

  return result;
}

void anonymous namespace::inferGatherScatterShape(uint64_t result, _DWORD *a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = a2[a3 - 1];
  if (v7 > a5)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/GatherScatter.cpp", "inferGatherScatterShape", "%s: innermost index dim length %d > input rank %d");
LABEL_12:
    v12 = 0;
    LODWORD(v8) = 3;
    goto LABEL_9;
  }

  if (v7 < 0)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/GatherScatter.cpp", "inferGatherScatterShape", "%s: inner most index dim length is unknown. Cannot do type inference as slice rank cannot be determined.");
    goto LABEL_12;
  }

  v8 = (a3 - 1 + a5 - v7);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v7 - a3 + 1;
    do
    {
      v11 = (a4 + 4 * (v10 + v9));
      if (v9 <= a3 - 2)
      {
        v11 = a2;
      }

      *(a6 + 4 * v9++) = *v11;
      ++a2;
    }

    while (v8 != v9);
  }

  v12 = 1;
LABEL_9:
  *result = v8;
  *(result + 4) = v12;
}

uint64_t ODIE::Kernels::Core::CPU::valueInferenceScatterNd(__int128 *a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (a3 != 3 || *(**a2 + 8) != 2)
  {
    v36 = "scatter_nd expects 3 NDArrayType inputs.";
LABEL_32:
    v37 = "validateOperandsAreNdArrayType";
    v38 = "%s";
    v43 = v36;
LABEL_33:
    v12 = 1;
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", v37, v38, a5, v43);
    return v12;
  }

  v9 = 1;
  do
  {
    if (v9 == 3)
    {
      goto LABEL_7;
    }

    v10 = *(*a2[v9++] + 8);
  }

  while (v10 == 2);
  v11 = v9 - 2;
  v12 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsAreNdArrayType", "%s", "scatter_nd expects 3 NDArrayType inputs.");
  if (v11 < 2)
  {
    return v12;
  }

LABEL_7:
  if (a5 != 1 || (v13 = *a4, v14 = **a4, *(v14 + 8) != 2))
  {
    v36 = "scatter_nd expects 1 NDArrayType output.";
    goto LABEL_32;
  }

  v15 = 0;
  v16 = 1;
  while (1)
  {
    v17 = a2[v15];
    if (*(*v17 + 16))
    {
      if (!v17[1])
      {
        break;
      }
    }

    v16 = v15++ < 2;
    if (v15 == 3)
    {
      goto LABEL_13;
    }
  }

  v12 = 1;
  odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Utils/NDArrayUtils.hpp", "validateOperandsHaveData", "Operand %lld does not have data bound.", v15);
  if (v16)
  {
    return v12;
  }

  v13 = *a4;
  v14 = **a4;
LABEL_13:
  if (*(v14 + 16) && !v13[1])
  {
    v37 = "validateOperandsHaveData";
    v38 = "Operand %lld does not have data bound.";
    v43 = 0;
    goto LABEL_33;
  }

  v18 = a2[1];
  v19 = a2[2];
  v20 = **a2;
  if (*(v20 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v39);
  }

  v21 = (*a2)[1];
  v22 = *v18;
  if (*(*v18 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v40);
  }

  v23 = *v19;
  if (*(*v19 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v41);
  }

  v24 = v19[1];
  v25 = *v13;
  if (*(*v13 + 8) != 2)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/Types/Type.hpp", "as", "Mismatch in Type.");
    ODIE::Platform::abort(v42);
  }

  v26 = *(v25 + 16);
  v27 = *(v20 + 16);
  if (v26 != v27)
  {
    odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/GatherScatter.cpp", "valueInferenceScatterNd", "coreml.scatter_nd: output size = %lld input size = %lld", *(v25 + 16), v27);
    return 3;
  }

  v28 = v13[1];
  memcpy(v28, v21, v26);
  v29 = *(*(v22 + 24) + 16);
  if (v29 == 4)
  {
    v33 = v18[1];
    v34 = a1[1];
    v44 = *a1;
    v45 = v34;
    v46 = *(a1 + 4);
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    if (v29 != 2)
    {
      odie_log(1, "/Library/Caches/com.apple.xbs/Sources/OnDeviceInferenceEngine/CoreKernels/GatherScatter.cpp", "valueInferenceScatterNd", "Unexpected indices data type encountered in scatter_nd");
      return 2;
    }

    v30 = v18[1];
    v31 = a1[1];
    v44 = *a1;
    v45 = v31;
    v46 = *(a1 + 4);
    if (!v32)
    {
      return 0;
    }
  }

  return v32;
}