void sub_2715C2DF8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C2FEC(uint64_t *a1, int a2, unsigned int *a3, double a4)
{
  v245 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v236 = &unk_2881117D8;
      v4 = *a3 != 0;
      if (*a3 <= 0x20)
      {
        v5 = 32;
      }

      else
      {
        v5 = *a3;
      }

      v6 = *a3;
      if (a3[1])
      {
        v7 = v5;
      }

      else
      {
        v7 = 32;
      }

      *&v240 = *a3;
      *(&v240 + 1) = v4 | (v7 << 32);
      LOBYTE(v226) = 0;
      v227 = &unk_288109608;
      v228 = 0;
      if (HIDWORD(v6) && v6)
      {
        sub_2715823BC();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v6 && HIDWORD(v6))
      {
        *&v233 = sub_2715827F0(0, &v229, a4);
        *(&v233 + 1) = v87;
      }

      else
      {
        v233 = v240;
      }

      if (v232 > 2)
      {
        goto LABEL_644;
      }

      if (!v230)
      {
        goto LABEL_478;
      }

      v100 = *v230;
      v99 = v230[1];
      if (v99)
      {
        atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v99->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v99->__on_zero_shared)(v99);
          std::__shared_weak_count::__release_weak(v99);
        }
      }

      if (!v100)
      {
        goto LABEL_478;
      }

      if (v232 == 2)
      {
        v160 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v160 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v160)
        {
          goto LABEL_477;
        }

        v162 = *v160;
        v161 = v160[1];
        if (v161)
        {
          atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v161->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v161->__on_zero_shared)(v161);
            std::__shared_weak_count::__release_weak(v161);
          }
        }

        if (!v162)
        {
          goto LABEL_477;
        }
      }

      else if (v232 == 1)
      {
        v150 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v150 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v150)
        {
          goto LABEL_477;
        }

        v152 = *v150;
        v151 = v150[1];
        if (v151)
        {
          atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v151->__on_zero_shared)(v151);
            std::__shared_weak_count::__release_weak(v151);
          }
        }

        if (!v152)
        {
          goto LABEL_477;
        }
      }

      else
      {
        if (v232)
        {
LABEL_644:
          sub_2711308D4();
        }

        v101 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v101 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v101)
        {
          goto LABEL_477;
        }

        v103 = *v101;
        v102 = v101[1];
        if (v102)
        {
          atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v102->__on_zero_shared)(v102);
            std::__shared_weak_count::__release_weak(v102);
          }
        }

        if (!v103)
        {
          goto LABEL_477;
        }
      }

      sub_2717F9298(*&v243[8]);
LABEL_477:
      sub_271583B94(v241, &v227);
      v237 = v241;
      v238 = &v226;
      sub_271574524(&v237);
      sub_2717F2278(v243);
LABEL_478:
      v227 = &unk_28810A268;
      operator new();
    case 2:
      v236 = &unk_288110F28;
      v37 = *a3 != 0;
      if (*a3 <= 0x10)
      {
        v38 = 16;
      }

      else
      {
        v38 = *a3;
      }

      v39 = *a3;
      if (a3[1])
      {
        v40 = v38;
      }

      else
      {
        v40 = 16;
      }

      *&v240 = *a3;
      *(&v240 + 1) = v37 | (v40 << 32);
      LOWORD(v226) = 0;
      v227 = &unk_2881093C8;
      v228 = 0;
      if (HIDWORD(v39) && v39)
      {
        sub_271589604();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v39 && HIDWORD(v39))
      {
        *&v233 = sub_271589A38(0, &v229, a4);
        *(&v233 + 1) = v86;
      }

      else
      {
        v233 = v240;
      }

      if (v232 > 2)
      {
        goto LABEL_643;
      }

      if (!v230)
      {
        goto LABEL_468;
      }

      v95 = *v230;
      v94 = v230[1];
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v94->__on_zero_shared)(v94);
          std::__shared_weak_count::__release_weak(v94);
        }
      }

      if (!v95)
      {
        goto LABEL_468;
      }

      if (v232 == 2)
      {
        v157 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v157 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v157)
        {
          goto LABEL_467;
        }

        v159 = *v157;
        v158 = v157[1];
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
          }
        }

        if (!v159)
        {
          goto LABEL_467;
        }
      }

      else if (v232 == 1)
      {
        v147 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v147 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v147)
        {
          goto LABEL_467;
        }

        v149 = *v147;
        v148 = v147[1];
        if (v148)
        {
          atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v148->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v148->__on_zero_shared)(v148);
            std::__shared_weak_count::__release_weak(v148);
          }
        }

        if (!v149)
        {
          goto LABEL_467;
        }
      }

      else
      {
        if (v232)
        {
LABEL_643:
          sub_2711308D4();
        }

        v96 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v96 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v96)
        {
          goto LABEL_467;
        }

        v98 = *v96;
        v97 = v96[1];
        if (v97)
        {
          atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v97->__on_zero_shared)(v97);
            std::__shared_weak_count::__release_weak(v97);
          }
        }

        if (!v98)
        {
          goto LABEL_467;
        }
      }

      sub_2717F9298(*&v243[8]);
LABEL_467:
      sub_27158AFFC(v241, &v227);
      v237 = v241;
      v238 = &v226;
      sub_271574D20(&v237);
      sub_2717F2278(v243);
LABEL_468:
      v227 = &unk_288109F98;
      operator new();
    case 3:
      v236 = &unk_288110638;
      v33 = *a3 != 0;
      if (*a3 <= 0x10)
      {
        v34 = 16;
      }

      else
      {
        v34 = *a3;
      }

      v35 = *a3;
      if (a3[1])
      {
        v36 = v34;
      }

      else
      {
        v36 = 16;
      }

      *&v240 = *a3;
      *(&v240 + 1) = v33 | (v36 << 32);
      LOWORD(v226) = 0;
      v227 = &unk_288109968;
      v228 = 0;
      if (HIDWORD(v35) && v35)
      {
        sub_27158EE20();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v35 && HIDWORD(v35))
      {
        *&v233 = sub_27158F254(0, &v229, a4);
        *(&v233 + 1) = v85;
      }

      else
      {
        v233 = v240;
      }

      if (v232 > 2)
      {
        goto LABEL_642;
      }

      if (!v230)
      {
        goto LABEL_458;
      }

      v90 = *v230;
      v89 = v230[1];
      if (v89)
      {
        atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v89->__on_zero_shared)(v89);
          std::__shared_weak_count::__release_weak(v89);
        }
      }

      if (!v90)
      {
        goto LABEL_458;
      }

      if (v232 == 2)
      {
        v153 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v153 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v153)
        {
          goto LABEL_457;
        }

        v155 = *v153;
        v154 = v153[1];
        if (v154)
        {
          atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v154->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v154->__on_zero_shared)(v154);
            std::__shared_weak_count::__release_weak(v154);
          }
        }

        if (!v155)
        {
          goto LABEL_457;
        }
      }

      else if (v232 == 1)
      {
        v144 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v144 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v144)
        {
          goto LABEL_457;
        }

        v146 = *v144;
        v145 = v144[1];
        if (v145)
        {
          atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v145->__on_zero_shared)(v145);
            std::__shared_weak_count::__release_weak(v145);
          }
        }

        if (!v146)
        {
          goto LABEL_457;
        }
      }

      else
      {
        if (v232)
        {
LABEL_642:
          sub_2711308D4();
        }

        v91 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v91 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v91)
        {
          goto LABEL_457;
        }

        v93 = *v91;
        v92 = v91[1];
        if (v92)
        {
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
          }
        }

        if (!v93)
        {
          goto LABEL_457;
        }
      }

      sub_2717F9298(*&v243[8]);
LABEL_457:
      sub_271590834(v241, &v227);
      v237 = v241;
      v238 = &v226;
      sub_271575CAC(&v237, v156);
      sub_2717F2278(v243);
LABEL_458:
      v227 = &unk_288109C38;
      operator new();
    case 4:
      v236 = &unk_288110498;
      v66 = *a3 != 0;
      if (*a3 <= 8)
      {
        v67 = 8;
      }

      else
      {
        v67 = *a3;
      }

      v68 = *a3;
      if (a3[1])
      {
        v69 = v67;
      }

      else
      {
        v69 = 8;
      }

      *&v240 = *a3;
      *(&v240 + 1) = v66 | (v69 << 32);
      v226 = 0;
      v227 = &unk_2881097B8;
      v228 = 0;
      if (HIDWORD(v68) && v68)
      {
        sub_271594718();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v68 && HIDWORD(v68))
      {
        *&v233 = sub_271594B4C(0, &v229, a4);
        *(&v233 + 1) = v88;
      }

      else
      {
        v233 = v240;
      }

      if (v232 > 2)
      {
        goto LABEL_649;
      }

      if (!v230)
      {
        goto LABEL_596;
      }

      v125 = *v230;
      v124 = v230[1];
      if (v124)
      {
        atomic_fetch_add_explicit(&v124->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v124->__on_zero_shared)(v124);
          std::__shared_weak_count::__release_weak(v124);
        }
      }

      if (!v125)
      {
        goto LABEL_596;
      }

      if (v232 == 2)
      {
        v208 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v208 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v208)
        {
          goto LABEL_595;
        }

        v210 = *v208;
        v209 = v208[1];
        if (v209)
        {
          atomic_fetch_add_explicit(&v209->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v209->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v209->__on_zero_shared)(v209);
            std::__shared_weak_count::__release_weak(v209);
          }
        }

        if (!v210)
        {
          goto LABEL_595;
        }
      }

      else if (v232 == 1)
      {
        v192 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v192 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v192)
        {
          goto LABEL_595;
        }

        v194 = *v192;
        v193 = v192[1];
        if (v193)
        {
          atomic_fetch_add_explicit(&v193->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v193->__on_zero_shared)(v193);
            std::__shared_weak_count::__release_weak(v193);
          }
        }

        if (!v194)
        {
          goto LABEL_595;
        }
      }

      else
      {
        if (v232)
        {
LABEL_649:
          sub_2711308D4();
        }

        v126 = v230;
        *&v243[8] = v230;
        *&v243[16] = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v126 = *&v243[8];
        }

        *v243 = &unk_288109248;
        if (!v126)
        {
          goto LABEL_595;
        }

        v128 = *v126;
        v127 = v126[1];
        if (v127)
        {
          atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v127->__on_zero_shared)(v127);
            std::__shared_weak_count::__release_weak(v127);
          }
        }

        if (!v128)
        {
          goto LABEL_595;
        }
      }

      sub_2717F9298(*&v243[8]);
LABEL_595:
      sub_27159612C(v241, &v227);
      v237 = v241;
      v238 = &v226;
      sub_271576D2C(&v237, v211);
      sub_2717F2278(v243);
LABEL_596:
      v227 = &unk_288109BA8;
      operator new();
    case 5:
      v236 = &unk_2881103A8;
      v41 = 2 * (*a3 != 0);
      if (v41 * *a3 <= 0x20)
      {
        v42 = 32;
      }

      else
      {
        v42 = v41 * *a3;
      }

      v43 = *a3;
      v44 = HIDWORD(*a3);
      if (a3[1])
      {
        v45 = v42;
      }

      else
      {
        v45 = 32;
      }

      *v243 = 2;
      *&v243[4] = v43;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v41 & 0x1FFFFFFFFLL | ((v45 >> 1) << 33);
      *&v241[12] = *v243;
      *&v241[8] = v44;
      *&v241[20] = v45;
      *&v241[24] = v43;
      v242 = *&v243[4];
      LOBYTE(v226) = 0;
      v227 = &unk_288109578;
      v228 = 0;
      if (v44 && v43)
      {
        sub_271583EF0();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v43 && v44)
      {
        sub_271584324(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_645;
      }

      if (!v230)
      {
        goto LABEL_640;
      }

      v105 = *v230;
      v104 = v230[1];
      if (v104)
      {
        atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v104->__on_zero_shared)(v104);
          std::__shared_weak_count::__release_weak(v104);
        }
      }

      if (!v105)
      {
        goto LABEL_640;
      }

      if (v232 == 2)
      {
        v166 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v166 = v238;
        }

        v237 = &unk_288109248;
        if (!v166)
        {
          goto LABEL_495;
        }

        v168 = *v166;
        v167 = v166[1];
        if (v167)
        {
          atomic_fetch_add_explicit(&v167->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v167->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v167->__on_zero_shared)(v167);
            std::__shared_weak_count::__release_weak(v167);
          }
        }

        if (!v168)
        {
          goto LABEL_495;
        }
      }

      else
      {
        if (v232 != 1)
        {
          if (v232)
          {
LABEL_645:
            sub_2711308D4();
          }

          v106 = v230;
          v238 = v230;
          v239 = v231;
          if (v231)
          {
            atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
            v106 = v238;
          }

          v237 = &unk_288109248;
          if (v106)
          {
            v108 = *v106;
            v107 = v106[1];
            if (v107)
            {
              atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v107->__on_zero_shared)(v107);
                std::__shared_weak_count::__release_weak(v107);
              }
            }

            if (v108)
            {
              goto LABEL_494;
            }
          }

LABEL_495:
          sub_271585750(v243, &v227);
          *&v240 = v243;
          *(&v240 + 1) = &v226;
          if (*&v243[20] == 1)
          {
            sub_2715746BC(&v240);
LABEL_639:
            sub_2717F2278(&v237);
LABEL_640:
            v227 = &unk_288109B18;
            operator new();
          }

          if (!*&v243[8] || !*&v243[12] || !*&v243[16])
          {
            goto LABEL_639;
          }

          v169 = *&v243[12] - 1;
          v170 = *&v243[24];
          v171 = *v243;
          v172 = *&v243[16] - 1;
          if (*&v243[16] == 1)
          {
            v174 = v226;
          }

          else
          {
            v173 = *&v243[28];
            v174 = v226;
            if (*&v243[12] != 1)
            {
              v175 = 0;
              v176 = *v243 + 1;
              do
              {
                v177 = v176;
                v178 = v169;
                do
                {
                  *(v177 - 1) = v174;
                  v174 = v226;
                  *v177 = v226;
                  v177 += v170;
                  --v178;
                }

                while (v178);
                *(v177 - 1) = v174;
                v174 = v226;
                *v177 = v226;
                v171 += v173;
                ++v175;
                v176 += v173;
              }

              while (v175 != v172);
              goto LABEL_637;
            }

            do
            {
              *v171 = v174;
              v174 = v226;
              v171[1] = v226;
              v171 += v173;
              --v172;
            }

            while (v172);
          }

          if (!v169)
          {
LABEL_638:
            *v171 = v174;
            v171[1] = v226;
            goto LABEL_639;
          }

          do
          {
LABEL_637:
            *v171 = v174;
            v174 = v226;
            v171[1] = v226;
            v171 += v170;
            --v169;
          }

          while (v169);
          goto LABEL_638;
        }

        v163 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v163 = v238;
        }

        v237 = &unk_288109248;
        if (!v163)
        {
          goto LABEL_495;
        }

        v165 = *v163;
        v164 = v163[1];
        if (v164)
        {
          atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
          }
        }

        if (!v165)
        {
          goto LABEL_495;
        }
      }

LABEL_494:
      sub_2717F9298(v238);
      goto LABEL_495;
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 30:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, "", 0, "The buffer does not support the given format", 0x2CuLL, sub_271852CA8, a4);
      abort();
    case 7:
      v236 = &unk_288110208;
      v70 = 2 * (*a3 != 0);
      if (v70 * *a3 <= 0x10)
      {
        v71 = 16;
      }

      else
      {
        v71 = v70 * *a3;
      }

      v72 = *a3;
      v73 = HIDWORD(*a3);
      if (a3[1])
      {
        v74 = v71;
      }

      else
      {
        v74 = 16;
      }

      *v243 = 2;
      *&v243[4] = v72;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v70 & 0x1FFFFFFFFLL | ((v74 >> 1) << 33);
      *&v241[12] = *v243;
      *&v241[8] = v73;
      *&v241[20] = v74;
      *&v241[24] = v72;
      v242 = *&v243[4];
      LOWORD(v226) = 0;
      v227 = &unk_2881098D8;
      v228 = 0;
      if (v73 && v72)
      {
        sub_271590B90();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v72 && v73)
      {
        sub_271590FC4(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_650;
      }

      if (!v230)
      {
        goto LABEL_606;
      }

      v130 = *v230;
      v129 = v230[1];
      if (v129)
      {
        atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v129->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v129->__on_zero_shared)(v129);
          std::__shared_weak_count::__release_weak(v129);
        }
      }

      if (!v130)
      {
        goto LABEL_606;
      }

      if (v232 == 2)
      {
        v212 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v212 = v238;
        }

        v237 = &unk_288109248;
        if (!v212)
        {
          goto LABEL_605;
        }

        v214 = *v212;
        v213 = v212[1];
        if (v213)
        {
          atomic_fetch_add_explicit(&v213->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v213->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v213->__on_zero_shared)(v213);
            std::__shared_weak_count::__release_weak(v213);
          }
        }

        if (!v214)
        {
          goto LABEL_605;
        }
      }

      else if (v232 == 1)
      {
        v199 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v199 = v238;
        }

        v237 = &unk_288109248;
        if (!v199)
        {
          goto LABEL_605;
        }

        v201 = *v199;
        v200 = v199[1];
        if (v200)
        {
          atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v200->__on_zero_shared)(v200);
            std::__shared_weak_count::__release_weak(v200);
          }
        }

        if (!v201)
        {
          goto LABEL_605;
        }
      }

      else
      {
        if (v232)
        {
LABEL_650:
          sub_2711308D4();
        }

        v131 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v131 = v238;
        }

        v237 = &unk_288109248;
        if (!v131)
        {
          goto LABEL_605;
        }

        v133 = *v131;
        v132 = v131[1];
        if (v132)
        {
          atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v132->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v132->__on_zero_shared)(v132);
            std::__shared_weak_count::__release_weak(v132);
          }
        }

        if (!v133)
        {
          goto LABEL_605;
        }
      }

      sub_2717F9298(v238);
LABEL_605:
      sub_2715926B0(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_271575FE8(&v240, v215);
      sub_2717F2278(&v237);
LABEL_606:
      v227 = &unk_288109A88;
      operator new();
    case 8:
      v236 = &unk_288110118;
      v51 = 2 * (*a3 != 0);
      if (v51 * *a3 <= 8)
      {
        v52 = 8;
      }

      else
      {
        v52 = v51 * *a3;
      }

      v53 = *a3;
      v54 = HIDWORD(*a3);
      if (a3[1])
      {
        v55 = v52;
      }

      else
      {
        v55 = 8;
      }

      *v243 = 2;
      *&v243[4] = v53;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v51 & 0x1FFFFFFFFLL | ((v55 >> 1) << 33);
      *&v241[12] = *v243;
      *&v241[8] = v54;
      *&v241[20] = v55;
      *&v241[24] = v53;
      v242 = *&v243[4];
      v226 = 0;
      v227 = &unk_288109728;
      v228 = 0;
      if (v54 && v53)
      {
        sub_271596488();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v53 && v54)
      {
        sub_2715968BC(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_646;
      }

      if (!v230)
      {
        goto LABEL_534;
      }

      v110 = *v230;
      v109 = v230[1];
      if (v109)
      {
        atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v109->__on_zero_shared)(v109);
          std::__shared_weak_count::__release_weak(v109);
        }
      }

      if (!v110)
      {
        goto LABEL_534;
      }

      if (v232 == 2)
      {
        v185 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v185 = v238;
        }

        v237 = &unk_288109248;
        if (!v185)
        {
          goto LABEL_533;
        }

        v187 = *v185;
        v186 = v185[1];
        if (v186)
        {
          atomic_fetch_add_explicit(&v186->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v186->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v186->__on_zero_shared)(v186);
            std::__shared_weak_count::__release_weak(v186);
          }
        }

        if (!v187)
        {
          goto LABEL_533;
        }
      }

      else if (v232 == 1)
      {
        v179 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v179 = v238;
        }

        v237 = &unk_288109248;
        if (!v179)
        {
          goto LABEL_533;
        }

        v181 = *v179;
        v180 = v179[1];
        if (v180)
        {
          atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v180->__on_zero_shared)(v180);
            std::__shared_weak_count::__release_weak(v180);
          }
        }

        if (!v181)
        {
          goto LABEL_533;
        }
      }

      else
      {
        if (v232)
        {
LABEL_646:
          sub_2711308D4();
        }

        v111 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v111 = v238;
        }

        v237 = &unk_288109248;
        if (!v111)
        {
          goto LABEL_533;
        }

        v113 = *v111;
        v112 = v111[1];
        if (v112)
        {
          atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v112->__on_zero_shared)(v112);
            std::__shared_weak_count::__release_weak(v112);
          }
        }

        if (!v113)
        {
          goto LABEL_533;
        }
      }

      sub_2717F9298(v238);
LABEL_533:
      sub_271597FA4(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_271576F84(&v240, v188);
      sub_2717F2278(&v237);
LABEL_534:
      v227 = &unk_2881099F8;
      operator new();
    case 17:
      v237 = &unk_288111A28;
      if (*a3)
      {
        v46 = 3;
      }

      else
      {
        v46 = 0;
      }

      if (v46 * *a3 <= 0x20)
      {
        v47 = 32;
      }

      else
      {
        v47 = v46 * *a3;
      }

      v48 = *a3;
      v49 = HIDWORD(*a3);
      if (a3[1])
      {
        v50 = v47;
      }

      else
      {
        v50 = 32;
      }

      *&v243[4] = *a3;
      *v243 = 3;
      *&v243[8] = v49;
      *v241 = 1;
      *&v241[4] = v46 | (v50 << 32);
      *&v243[12] = *v241;
      *&v243[20] = v50;
      *&v243[24] = v48;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_2881094E8;
      v228 = 0;
      if (v49 && v48)
      {
        sub_2715859F4();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v48 && v49)
      {
        sub_271585E28(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_27158664C(&v227, v241);
      v227 = &unk_28810A2F8;
      operator new();
    case 21:
      v237 = &unk_288111638;
      if (*a3)
      {
        v23 = 3;
      }

      else
      {
        v23 = 0;
      }

      if (v23 * *a3 <= 0x20)
      {
        v24 = 32;
      }

      else
      {
        v24 = v23 * *a3;
      }

      v25 = *a3;
      v26 = HIDWORD(*a3);
      if (a3[1])
      {
        v27 = v24;
      }

      else
      {
        v27 = 32;
      }

      *&v243[4] = *a3;
      *v243 = 3;
      *&v243[8] = v26;
      *v241 = 1;
      *&v241[4] = v23 | (v27 << 32);
      *&v243[12] = *v241;
      *&v243[20] = v27;
      *&v243[24] = v25;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_2881094E8;
      v228 = 0;
      if (v26 && v25)
      {
        sub_2715859F4();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v25 && v26)
      {
        sub_271585E28(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_27158664C(&v227, v241);
      v227 = &unk_28810A1D8;
      operator new();
    case 22:
      v236 = &unk_288111548;
      if (*a3)
      {
        v75 = 3;
      }

      else
      {
        v75 = 0;
      }

      if (v75 * *a3 <= 0x10)
      {
        v76 = 16;
      }

      else
      {
        v76 = v75 * *a3;
      }

      v77 = *a3;
      v78 = HIDWORD(*a3);
      if (a3[1])
      {
        v79 = v76;
      }

      else
      {
        v79 = 16;
      }

      *v243 = 3;
      *&v243[4] = v77;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v75 | (v79 << 32);
      *&v241[12] = *v243;
      *&v241[8] = v78;
      *&v241[20] = v79;
      *&v241[24] = v77;
      v242 = *&v243[4];
      LOWORD(v226) = 0;
      v227 = &unk_288109338;
      v228 = 0;
      if (v78 && v77)
      {
        sub_27158B358();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v77 && v78)
      {
        sub_27158B78C(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_651;
      }

      if (!v230)
      {
        goto LABEL_616;
      }

      v135 = *v230;
      v134 = v230[1];
      if (v134)
      {
        atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v134->__on_zero_shared)(v134);
          std::__shared_weak_count::__release_weak(v134);
        }
      }

      if (!v135)
      {
        goto LABEL_616;
      }

      if (v232 == 2)
      {
        v216 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v216 = v238;
        }

        v237 = &unk_288109248;
        if (!v216)
        {
          goto LABEL_615;
        }

        v218 = *v216;
        v217 = v216[1];
        if (v217)
        {
          atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v217->__on_zero_shared)(v217);
            std::__shared_weak_count::__release_weak(v217);
          }
        }

        if (!v218)
        {
          goto LABEL_615;
        }
      }

      else if (v232 == 1)
      {
        v205 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v205 = v238;
        }

        v237 = &unk_288109248;
        if (!v205)
        {
          goto LABEL_615;
        }

        v207 = *v205;
        v206 = v205[1];
        if (v206)
        {
          atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v206->__on_zero_shared)(v206);
            std::__shared_weak_count::__release_weak(v206);
          }
        }

        if (!v207)
        {
          goto LABEL_615;
        }
      }

      else
      {
        if (v232)
        {
LABEL_651:
          sub_2711308D4();
        }

        v136 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v136 = v238;
        }

        v237 = &unk_288109248;
        if (!v136)
        {
          goto LABEL_615;
        }

        v138 = *v136;
        v137 = v136[1];
        if (v137)
        {
          atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v137->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v137->__on_zero_shared)(v137);
            std::__shared_weak_count::__release_weak(v137);
          }
        }

        if (!v138)
        {
          goto LABEL_615;
        }
      }

      sub_2717F9298(v238);
LABEL_615:
      sub_27158CE54(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_271575070(&v240);
      sub_2717F2278(&v237);
LABEL_616:
      v227 = &unk_28810A148;
      operator new();
    case 25:
      v237 = &unk_2881112F8;
      v8 = 4 * (*a3 != 0);
      if (v8 * *a3 <= 0x20)
      {
        v9 = 32;
      }

      else
      {
        v9 = v8 * *a3;
      }

      v10 = *a3;
      v11 = HIDWORD(*a3);
      if (a3[1])
      {
        v12 = v9;
      }

      else
      {
        v12 = 32;
      }

      *&v243[4] = *a3;
      *v243 = 4;
      *&v243[8] = v11;
      *v241 = 1;
      *&v241[4] = v8 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
      *&v243[12] = *v241;
      *&v243[20] = v12;
      *&v243[24] = v10;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_288109458;
      v228 = 0;
      if (v11 && v10)
      {
        sub_2715877A0();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v10 && v11)
      {
        sub_271587BD4(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_2715883F8(&v227, v241);
      v227 = &unk_28810A0B8;
      operator new();
    case 29:
      v237 = &unk_288111018;
      v13 = 4 * (*a3 != 0);
      if (v13 * *a3 <= 0x20)
      {
        v14 = 32;
      }

      else
      {
        v14 = v13 * *a3;
      }

      v15 = *a3;
      v16 = HIDWORD(*a3);
      if (a3[1])
      {
        v17 = v14;
      }

      else
      {
        v17 = 32;
      }

      *&v243[4] = *a3;
      *v243 = 4;
      *&v243[8] = v16;
      *v241 = 1;
      *&v241[4] = v13 & 0x3FFFFFFFFLL | ((v17 >> 2) << 34);
      *&v243[12] = *v241;
      *&v243[20] = v17;
      *&v243[24] = v15;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_288109458;
      v228 = 0;
      if (v16 && v15)
      {
        sub_2715877A0();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v15 && v16)
      {
        sub_271587BD4(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_2715883F8(&v227, v241);
      v227 = &unk_28810A028;
      operator new();
    case 31:
      v236 = &unk_288110D88;
      v56 = 4 * (*a3 != 0);
      if (v56 * *a3 <= 0x10)
      {
        v57 = 16;
      }

      else
      {
        v57 = v56 * *a3;
      }

      v58 = *a3;
      v59 = HIDWORD(*a3);
      if (a3[1])
      {
        v60 = v57;
      }

      else
      {
        v60 = 16;
      }

      *v243 = 4;
      *&v243[4] = v58;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v56 & 0x3FFFFFFFFLL | ((v60 >> 2) << 34);
      *&v241[12] = *v243;
      *&v241[8] = v59;
      *&v241[20] = v60;
      *&v241[24] = v58;
      v242 = *&v243[4];
      LOWORD(v226) = 0;
      v227 = &unk_288109848;
      v228 = 0;
      if (v59 && v58)
      {
        sub_271592954();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v58 && v59)
      {
        sub_271592D88(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_647;
      }

      if (!v230)
      {
        goto LABEL_560;
      }

      v115 = *v230;
      v114 = v230[1];
      if (v114)
      {
        atomic_fetch_add_explicit(&v114->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v114->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v114->__on_zero_shared)(v114);
          std::__shared_weak_count::__release_weak(v114);
        }
      }

      if (!v115)
      {
        goto LABEL_560;
      }

      if (v232 == 2)
      {
        v195 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v195 = v238;
        }

        v237 = &unk_288109248;
        if (!v195)
        {
          goto LABEL_559;
        }

        v197 = *v195;
        v196 = v195[1];
        if (v196)
        {
          atomic_fetch_add_explicit(&v196->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v196->__on_zero_shared)(v196);
            std::__shared_weak_count::__release_weak(v196);
          }
        }

        if (!v197)
        {
          goto LABEL_559;
        }
      }

      else if (v232 == 1)
      {
        v182 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v182 = v238;
        }

        v237 = &unk_288109248;
        if (!v182)
        {
          goto LABEL_559;
        }

        v184 = *v182;
        v183 = v182[1];
        if (v183)
        {
          atomic_fetch_add_explicit(&v183->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v183->__on_zero_shared)(v183);
            std::__shared_weak_count::__release_weak(v183);
          }
        }

        if (!v184)
        {
          goto LABEL_559;
        }
      }

      else
      {
        if (v232)
        {
LABEL_647:
          sub_2711308D4();
        }

        v116 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v116 = v238;
        }

        v237 = &unk_288109248;
        if (!v116)
        {
          goto LABEL_559;
        }

        v118 = *v116;
        v117 = v116[1];
        if (v117)
        {
          atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v117->__on_zero_shared)(v117);
            std::__shared_weak_count::__release_weak(v117);
          }
        }

        if (!v118)
        {
          goto LABEL_559;
        }
      }

      sub_2717F9298(v238);
LABEL_559:
      sub_271594474(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_2715767EC(&v240, v198);
      sub_2717F2278(&v237);
LABEL_560:
      v227 = &unk_288109F08;
      operator new();
    case 32:
      v236 = &unk_288110C98;
      v80 = 4 * (*a3 != 0);
      if (v80 * *a3 <= 8)
      {
        v81 = 8;
      }

      else
      {
        v81 = v80 * *a3;
      }

      v82 = *a3;
      v83 = HIDWORD(*a3);
      if (a3[1])
      {
        v84 = v81;
      }

      else
      {
        v84 = 8;
      }

      *v243 = 4;
      *&v243[4] = v82;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v80 & 0x3FFFFFFFFLL | ((v84 >> 2) << 34);
      *&v241[12] = *v243;
      *&v241[8] = v83;
      *&v241[20] = v84;
      *&v241[24] = v82;
      v242 = *&v243[4];
      v226 = 0;
      v227 = &unk_288109698;
      v228 = 0;
      if (v83 && v82)
      {
        sub_271598248();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v82 && v83)
      {
        sub_27159867C(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_652;
      }

      if (!v230)
      {
        goto LABEL_634;
      }

      v140 = *v230;
      v139 = v230[1];
      if (v139)
      {
        atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }
      }

      if (!v140)
      {
        goto LABEL_634;
      }

      if (v232 == 2)
      {
        v222 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v222 = v238;
        }

        v237 = &unk_288109248;
        if (!v222)
        {
          goto LABEL_633;
        }

        v224 = *v222;
        v223 = v222[1];
        if (v223)
        {
          atomic_fetch_add_explicit(&v223->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v223->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v223->__on_zero_shared)(v223);
            std::__shared_weak_count::__release_weak(v223);
          }
        }

        if (!v224)
        {
          goto LABEL_633;
        }
      }

      else if (v232 == 1)
      {
        v219 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v219 = v238;
        }

        v237 = &unk_288109248;
        if (!v219)
        {
          goto LABEL_633;
        }

        v221 = *v219;
        v220 = v219[1];
        if (v220)
        {
          atomic_fetch_add_explicit(&v220->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v220->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v220->__on_zero_shared)(v220);
            std::__shared_weak_count::__release_weak(v220);
          }
        }

        if (!v221)
        {
          goto LABEL_633;
        }
      }

      else
      {
        if (v232)
        {
LABEL_652:
          sub_2711308D4();
        }

        v141 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v141 = v238;
        }

        v237 = &unk_288109248;
        if (!v141)
        {
          goto LABEL_633;
        }

        v143 = *v141;
        v142 = v141[1];
        if (v142)
        {
          atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v142->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v142->__on_zero_shared)(v142);
            std::__shared_weak_count::__release_weak(v142);
          }
        }

        if (!v143)
        {
          goto LABEL_633;
        }
      }

      sub_2717F9298(v238);
LABEL_633:
      sub_271599D64(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_271577500(&v240, v225);
      sub_2717F2278(&v237);
LABEL_634:
      v227 = &unk_288109E78;
      operator new();
    case 33:
      v237 = &unk_288110BC8;
      v28 = 4 * (*a3 != 0);
      if (v28 * *a3 <= 0x20)
      {
        v29 = 32;
      }

      else
      {
        v29 = v28 * *a3;
      }

      v30 = *a3;
      v31 = HIDWORD(*a3);
      if (a3[1])
      {
        v32 = v29;
      }

      else
      {
        v32 = 32;
      }

      *&v243[4] = *a3;
      *v243 = 4;
      *&v243[8] = v31;
      *v241 = 1;
      *&v241[4] = v28 & 0x3FFFFFFFFLL | ((v32 >> 2) << 34);
      *&v243[12] = *v241;
      *&v243[20] = v32;
      *&v243[24] = v30;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_288109458;
      v228 = 0;
      if (v31 && v30)
      {
        sub_2715877A0();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v30 && v31)
      {
        sub_271587BD4(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_2715883F8(&v227, v241);
      v227 = &unk_288109DE8;
      operator new();
    case 37:
      v237 = &unk_2881108C8;
      v18 = 4 * (*a3 != 0);
      if (v18 * *a3 <= 0x20)
      {
        v19 = 32;
      }

      else
      {
        v19 = v18 * *a3;
      }

      v20 = *a3;
      v21 = HIDWORD(*a3);
      if (a3[1])
      {
        v22 = v19;
      }

      else
      {
        v22 = 32;
      }

      *&v243[4] = *a3;
      *v243 = 4;
      *&v243[8] = v21;
      *v241 = 1;
      *&v241[4] = v18 & 0x3FFFFFFFFLL | ((v22 >> 2) << 34);
      *&v243[12] = *v241;
      *&v243[20] = v22;
      *&v243[24] = v20;
      v244 = *&v241[4];
      v241[0] = 0;
      v227 = &unk_288109458;
      v228 = 0;
      if (v21 && v20)
      {
        sub_2715877A0();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v20 && v21)
      {
        sub_271587BD4(0, &v229, &v233);
      }

      else
      {
        v233 = *v243;
        v234 = *&v243[16];
        v235 = v244;
      }

      sub_2715883F8(&v227, v241);
      v227 = &unk_288109D58;
      operator new();
    case 38:
      v236 = &unk_2881107D8;
      v61 = 4 * (*a3 != 0);
      if (v61 * *a3 <= 0x10)
      {
        v62 = 16;
      }

      else
      {
        v62 = v61 * *a3;
      }

      v63 = *a3;
      v64 = HIDWORD(*a3);
      if (a3[1])
      {
        v65 = v62;
      }

      else
      {
        v65 = 16;
      }

      *v243 = 4;
      *&v243[4] = v63;
      *v241 = *v243;
      *v243 = 1;
      *&v243[4] = v61 & 0x3FFFFFFFFLL | ((v65 >> 2) << 34);
      *&v241[12] = *v243;
      *&v241[8] = v64;
      *&v241[20] = v65;
      *&v241[24] = v63;
      v242 = *&v243[4];
      LOWORD(v226) = 0;
      v227 = &unk_2881092A8;
      v228 = 0;
      if (v64 && v63)
      {
        sub_27158D080();
      }

      v230 = 0;
      v231 = 0;
      v229 = &unk_288109288;
      v232 = 0;
      if (v63 && v64)
      {
        sub_27158D4B4(0, &v229, &v233);
      }

      else
      {
        v233 = *v241;
        v234 = *&v241[16];
        v235 = v242;
      }

      if (v232 > 2)
      {
        goto LABEL_648;
      }

      if (!v230)
      {
        goto LABEL_578;
      }

      v120 = *v230;
      v119 = v230[1];
      if (v119)
      {
        atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v119->__on_zero_shared)(v119);
          std::__shared_weak_count::__release_weak(v119);
        }
      }

      if (!v120)
      {
        goto LABEL_578;
      }

      if (v232 == 2)
      {
        v202 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v202 = v238;
        }

        v237 = &unk_288109248;
        if (!v202)
        {
          goto LABEL_577;
        }

        v204 = *v202;
        v203 = v202[1];
        if (v203)
        {
          atomic_fetch_add_explicit(&v203->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v203->__on_zero_shared)(v203);
            std::__shared_weak_count::__release_weak(v203);
          }
        }

        if (!v204)
        {
          goto LABEL_577;
        }
      }

      else if (v232 == 1)
      {
        v189 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v189 = v238;
        }

        v237 = &unk_288109248;
        if (!v189)
        {
          goto LABEL_577;
        }

        v191 = *v189;
        v190 = v189[1];
        if (v190)
        {
          atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v190->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v190->__on_zero_shared)(v190);
            std::__shared_weak_count::__release_weak(v190);
          }
        }

        if (!v191)
        {
          goto LABEL_577;
        }
      }

      else
      {
        if (v232)
        {
LABEL_648:
          sub_2711308D4();
        }

        v121 = v230;
        v238 = v230;
        v239 = v231;
        if (v231)
        {
          atomic_fetch_add_explicit((v231 + 8), 1uLL, memory_order_relaxed);
          v121 = v238;
        }

        v237 = &unk_288109248;
        if (!v121)
        {
          goto LABEL_577;
        }

        v123 = *v121;
        v122 = v121[1];
        if (v122)
        {
          atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v122->__on_zero_shared)(v122);
            std::__shared_weak_count::__release_weak(v122);
          }
        }

        if (!v123)
        {
          goto LABEL_577;
        }
      }

      sub_2717F9298(v238);
LABEL_577:
      sub_27158EB7C(v243, &v227);
      *&v240 = v243;
      *(&v240 + 1) = &v226;
      sub_2715758B0(&v240);
      sub_2717F2278(&v237);
LABEL_578:
      v227 = &unk_288109CC8;
      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8, a4);
      abort();
  }
}

void sub_2715C7298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_271599008(va);
  _Unwind_Resume(a1);
}

void sub_2715C7394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_271584B48(va);
  _Unwind_Resume(a1);
}

void sub_2715C73B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F1CC4((v3 - 136));
  sub_271582F7C(va);
  _Unwind_Resume(a1);
}

void sub_2715C7578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_2717F2278(va1);
  sub_271584B48(va);
  _Unwind_Resume(a1);
}

void sub_2715C7594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C7FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C80E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C81E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C82E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C83EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C84F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C85F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C86F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C87FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C8900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C8A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C8B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C8B38(_BYTE *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[8] = 0;
  operator new();
}

void sub_2715C8C48(_Unwind_Exception *a1)
{
  sub_2715CB200(*(v1 + 176));
  std::mutex::~mutex(v4);
  sub_27157C440(v3);
  sub_27112F828(v2);
  if (*(v1 + 24) == 1)
  {
    sub_27181A92C((v1 + 16));
    if (*(v1 + 8) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 8) != 1)
  {
    goto LABEL_3;
  }

  sub_27181A638(v1);
  _Unwind_Resume(a1);
}

void sub_2715C8DD4(_Unwind_Exception *a1)
{
  sub_2715CB200(*(v1 + 176));
  std::mutex::~mutex(v5);
  sub_27157C440(v4);
  sub_27112F828(v3);
  if (*(v1 + 24) == 1)
  {
    sub_27181A92C(v2);
    if (*(v1 + 8) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 8) != 1)
  {
    goto LABEL_3;
  }

  sub_27181A638(v1);
  _Unwind_Resume(a1);
}

void sub_2715C8E3C(_BYTE *a1, uint64_t a2, int a3, int a4)
{
  *a1 = 0;
  a1[8] = 0;
  a1[16] = 0;
  a1[24] = 0;
  operator new();
}

void sub_2715C8FE4(_Unwind_Exception *a1)
{
  sub_2715CB200(*v5);
  std::mutex::~mutex(v4);
  sub_27157C440(v3);
  sub_27112F828(v1 + 32);
  if (*(v1 + 24) == 1)
  {
    sub_27181A92C(v2);
    if (*(v1 + 8) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 8) != 1)
  {
    goto LABEL_3;
  }

  sub_27181A638(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2715C9054(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *a2;
  v5 = (a1 + 48);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 88) = 0;
  v6 = a1 + 88;
  *(v6 - 24) = 1;
  *(v6 + 16) = 850045863;
  *(v6 - 16) = 0;
  *(v6 - 8) = 0;
  *(v6 + 8) = 0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 96) = 0;
  *(v6 + 88) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = v6 + 88;
  if (atomic_load_explicit(v6, memory_order_acquire) != -1)
  {
    v18 = v19;
    v20.__r_.__value_.__r.__words[0] = &v18;
    std::__call_once(v6, &v20, nullsub_310);
  }

  if (a3 == 1)
  {
    v7 = sub_2715D0DE8();
    if ((sub_27180B444(v5, v7, v8) & 1) == 0)
    {
      v15 = v9;
      __cxa_allocate_exception(0x10uLL);
      sub_27112B400(v19, "CFDictionary cannot be used to create dict::Dictionary. It must only hold trivially serializable types: Boolean, Number, String, Array or Dictionary values");
      v16 = CFCopyTypeIDDescription(v15);
      sub_2715C965C(&v17, v16, 0);
    }
  }

  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v10 && (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (!v11)
    {
      return a1;
    }
  }

  else if (!v11)
  {
    return a1;
  }

  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  if (v12 && (atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else if (!v13)
  {
    goto LABEL_16;
  }

  if (!CFDictionaryGetCount(*v5))
  {
LABEL_16:
    operator new();
  }

  return a1;
}

void sub_2715C9374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a17 == 1 && a16 < 0)
  {
    operator delete(a11);
  }

  sub_27112F828(&a9);
  if (a23 < 0)
  {
    operator delete(a18);
    if ((v35 & 1) == 0)
    {
LABEL_11:
      sub_2715CB200(*(v29 + 176));
      std::mutex::~mutex(v33);
      sub_27157C440(v32);
      sub_27112F828(v31);
      if (*(v29 + 24) == 1)
      {
        sub_27181A92C(v30);
        if (*(v29 + 8) != 1)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }
      }

      else if (*(v29 + 8) != 1)
      {
        goto LABEL_13;
      }

      sub_27181A638(v29);
      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_11;
  }

  __cxa_free_exception(v34);
  goto LABEL_11;
}

uint64_t sub_2715C9484(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = -1;
  if (*(a2 + 23) < 0)
  {
    sub_271127178(&v5, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 2);
  }

  v7 = 1;
  v8 = &v5;
  v9 = ", but contains ";
  v10 = &v5;
  v11 = ", but contains ";
  v12 = ", but contains ";
  sub_2714C5198(&v10, &v5);
  if (*(a3 + 24) == 1)
  {
    v8 = &v5;
    v9 = a3;
    v10 = &v5;
    v11 = a3;
    v12 = a3;
    if (v7 != -1)
    {
      v13 = &v8;
      (off_288133960[v7])(&v13, &v5);
      goto LABEL_9;
    }

LABEL_13:
    sub_2711308D4();
  }

  v8 = &v5;
  v9 = "nullopt";
  v10 = &v5;
  v11 = "nullopt";
  v12 = "nullopt";
  if (v7 == -1)
  {
    goto LABEL_13;
  }

  v13 = &v8;
  (*(&off_288133990 + v7))(&v13, &v5);
LABEL_9:
  if (v7 == -1)
  {
    sub_2711308D4();
  }

  v8 = &v13;
  result = (off_2881339A8[v7])(&v8, &v5);
  if (v7 != -1)
  {
    return (off_288133978[v7])(&v8, &v5);
  }

  return result;
}

void sub_2715C965C(void *a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_2715CB2C0(&v4, cf);
}

uint64_t sub_2715C971C(uint64_t a1, std::mutex **a2)
{
  if (a2)
  {
    v4 = 0;
    LOBYTE(v11) = 0;
    v13 = 0;
    v5 = *(a1 + 32);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!*(a1 + 184))
    {
      v8 = 0uLL;
      v9 = 1;
      if (a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = &v11;
      }

      sub_2715C9874(&v10, a1, &v8, v7);
    }

    v5 = *(*(a1 + 168) + 56);
    if ((v4 & 1) == 0)
    {
      return v5;
    }

    goto LABEL_13;
  }

  std::mutex::lock((a1 + 104));
  v11 = (a1 + 104);
  v4 = 1;
  v12 = 1;
  v13 = 1;
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return v5;
  }

LABEL_13:
  std::mutex::unlock(v11);
  return v5;
}

void sub_2715C984C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::mutex *a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a17 & 1) != 0 && a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C9874(void *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if ((*(a2 + 96) & 1) != 0 || *(a2 + 24) == 1)
  {
    v7 = a2;
    v8 = &v9;
    v9 = a4;
    if (atomic_load_explicit((a2 + 80), memory_order_acquire) != -1)
    {
      v11 = &v7;
      v10 = &v11;
      std::__call_once((a2 + 80), &v10, sub_2715CB904);
    }

    sub_2718195E0(a3, &v6);
  }

  v7 = a2;
  v8 = &v9;
  v9 = a4;
  if (atomic_load_explicit((a2 + 72), memory_order_acquire) != -1)
  {
    v11 = &v7;
    v10 = &v11;
    std::__call_once((a2 + 72), &v10, sub_2715CB600);
  }

  sub_271818E78(*a2, a3, &v6);
}

void sub_2715C9BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2715CA6A0(&a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715C9BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715C9C00(uint64_t a1, uint64_t *a2)
{
  v32 = (a1 + 104);
  v33 = 1;
  std::mutex::lock((a1 + 104));
  v4 = *(a1 + 176);
  if (!v4)
  {
    goto LABEL_49;
  }

  v5 = *(a2 + 8);
  v6 = *a2;
  v7 = *(a2 + 16);
  if (v5)
  {
    v8 = a1 + 176;
    do
    {
      if (*(v4 + 40) == 1)
      {
        v12 = *(v4 + 32);
        v13 = v12 == v6;
        if (v12 >= v6)
        {
          v9 = 1;
        }

        else
        {
          v9 = -1;
        }

        if (v13)
        {
          v14 = *(v4 + 48);
          v15 = v14 == v7;
          v9 = v14 >= v7 ? 1 : -1;
          if (v15)
          {
            v9 = 0;
          }
        }
      }

      else
      {
        v9 = -1;
      }

      v10 = v9 & 0x80;
      v13 = v10 == 0;
      v11 = v10 >> 4;
      if (v13)
      {
        v8 = v4;
      }

      v4 = *(v4 + v11);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 176;
    do
    {
      v16 = v4;
      if ((*(v4 + 40) & 1) != 0 || (v17 = *(v4 + 48), v18 = v17 >= v7, v13 = v17 == v7, v16 = v4, v13) || (v18 ? (v19 = 0) : (v19 = 1), v16 = (v4 + 8 * v19), v18))
      {
        v8 = v4;
      }

      v4 = *v16;
    }

    while (*v16);
  }

  if (v8 == a1 + 176)
  {
LABEL_49:
    sub_2715C9874(&v31, a1, a2, &v32);
  }

  if (a2[1] & 1) != 0 && (*(v8 + 40))
  {
    v20 = *(v8 + 32);
    v21 = v6 == v20;
    if (v6 >= v20)
    {
      v22 = 1;
    }

    else
    {
      v22 = -1;
    }

    if (!v21)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v23 = v5 & 1;
  v24 = *(v8 + 40) & ~v5 & 1;
  v22 = -1;
  if (!v24)
  {
    v22 = 1;
  }

  if (v24 == v23)
  {
LABEL_41:
    v25 = *(v8 + 48);
    v26 = *(a2 + 16);
    v18 = v26 >= v25;
    v27 = v26 == v25;
    v28 = -1;
    if (v18)
    {
      v28 = 1;
    }

    if (v27)
    {
      v22 = 0;
    }

    else
    {
      v22 = v28;
    }
  }

LABEL_47:
  if (v22 < 0)
  {
    goto LABEL_49;
  }

  v29 = *(v8 + 56);
  std::mutex::unlock(v32);
  return v29;
}

void sub_2715C9DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  if (a12)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715C9DF4(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    v5 = a2;
    sub_2715CBDD8(&v6, &v5, (a1 + 16));
  }

  if (*(a1 + 8) == 1)
  {
    v5 = a2;
    sub_2715CC004(&v6, &v5, a1);
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    v5 = a2;
    sub_27157CA00(&v6, &v5, (a1 + 48));
  }

  v3 = *(v2 + 8);
  if (*(v2 + 23) >= 0)
  {
    v4 = *(v2 + 23);
  }

  else
  {
    v2 = *v2;
    v4 = v3;
  }

  sub_271120E64(a2, v2, v4);
}

uint64_t sub_2715C9EC0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1 && *(a2 + 96) == 1)
  {
    v4 = (a1 + 80);
    v9 = a1;
    v10 = &v11;
    v11 = 0;
    if (atomic_load_explicit((a1 + 80), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once(v4, &v12, sub_2715CB904);
    }

    v10 = &v11;
    v11 = 0;
    v9 = a2;
    if (atomic_load_explicit((a2 + 80), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once((a2 + 80), &v12, sub_2715CB904);
    }

    return sub_27181AD90(*(a1 + 16), *(a2 + 16));
  }

  else if (*(a1 + 64) == 1 && *(a2 + 64) == 1)
  {
    v6 = (a1 + 48);
    v7 = a2 + 48;

    return sub_27157BD28(v6, v7);
  }

  else
  {
    v8 = (a1 + 72);
    v9 = a1;
    v10 = &v11;
    v11 = 0;
    if (atomic_load_explicit((a1 + 72), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once(v8, &v12, sub_2715CB600);
    }

    v10 = &v11;
    v11 = 0;
    v9 = a2;
    if (atomic_load_explicit((a2 + 72), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once((a2 + 72), &v12, sub_2715CB600);
    }

    return sub_27181A984(*a1, *a2);
  }
}

void sub_2715CA184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27181A92C(va);
  MEMORY[0x2743BF050](v3, v4);
  _Unwind_Resume(a1);
}

uint64_t **sub_2715CA1BC(uint64_t **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2715CA718(v2);
    MEMORY[0x2743BF050](v4, 0x10E2C40590DAB7CLL);
    return v3;
  }

  return v1;
}

void sub_2715CA320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CA1BC(va);
  _Unwind_Resume(a1);
}

void sub_2715CA334(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2743BF050](v16, v17, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void sub_2715CA4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2715CA1BC(&a12);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2715CA510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_27112F828(va);
  MEMORY[0x2743BF050](v12, 0x10E2C40590DAB7CLL);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2715CA558(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 72);
  v4[0] = v1;
  v4[1] = &v5;
  v5 = 0;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v7 = v4;
    v6 = &v7;
    std::__call_once(v2, &v6, sub_2715CB600);
  }

  return v1;
}

uint64_t sub_2715CA5C8(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 80);
  v4[0] = v1;
  v4[1] = &v5;
  v5 = 0;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v7 = v4;
    v6 = &v7;
    std::__call_once(v2, &v6, sub_2715CB904);
  }

  return v1 + 16;
}

uint64_t sub_2715CA638(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 88);
  v4 = v1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, sub_2715CBC08);
  }

  return v1 + 48;
}

uint64_t sub_2715CA6A0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t *sub_2715CA718(uint64_t *a1)
{
  sub_2715CB200(a1[22]);
  std::mutex::~mutex((a1 + 13));
  if (*(a1 + 64) == 1)
  {
    v2 = a1[7];
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 24) != 1)
    {
      goto LABEL_11;
    }
  }

  else if (*(a1 + 24) != 1)
  {
    goto LABEL_11;
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    sub_2715CC40C(v4 + 1, *v4);
    MEMORY[0x2743BF050](v4, 0x1022C40B06DCE69);
  }

LABEL_11:
  if (*(a1 + 8) == 1)
  {
    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      sub_2715CA870(v5 + 1, *v5);
      MEMORY[0x2743BF050](v5, 0x1022C40B06DCE69);
    }
  }

  return a1;
}

void sub_2715CA870(void ***a1, int a2)
{
  v2 = a1;
  __p = 0;
  v68 = 0;
  v69 = 0;
  if (a2 == 1)
  {
    v6 = (*a1)[2];
    if (v6)
    {
      if (!(v6 >> 60))
      {
        operator new();
      }

LABEL_114:
      sub_2715CB01C();
    }

    v3 = 0;
    v9 = *v2 + 8;
    v10 = **v2;
    if (v10 != v9)
    {
      do
      {
        if (v3 >= v69)
        {
          v3 = sub_2715CB034(&__p, (v10 + 7));
        }

        else
        {
          *v3 = *(v10 + 56);
          v3[1] = v10[8];
          *(v10 + 56) = 0;
          v10[8] = 0;
          v3 += 2;
        }

        v68 = v3;
        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
      }

      while (v13 != v9);
    }
  }

  else
  {
    v3 = 0;
    if (a2 == 2)
    {
      v4 = **v2;
      v5 = *(*v2 + 8);
      if (v5 != v4)
      {
        if (((v5 - v4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_114;
      }

      v3 = 0;
      v8 = **v2;
      v7 = *(*v2 + 8);
      while (v8 != v7)
      {
        if (v3 < v69)
        {
          *v3 = *v8;
          v3[1] = *(v8 + 8);
          *v8 = 0;
          *(v8 + 8) = 0;
          v3 += 2;
        }

        else
        {
          v3 = sub_2715CB034(&__p, v8);
        }

        v68 = v3;
        v8 += 16;
      }
    }
  }

  v11 = __p;
  if (__p != v3)
  {
    v63 = v2;
    do
    {
      v65 = *(v3 - 16);
      v66 = *(v3 - 1);
      *(v3 - 16) = 0;
      *(v3 - 1) = 0;
      v16 = v68 - 2;
      sub_2715CA870(v68 - 1, *(v68 - 16));
      v68 = v16;
      if (v65 == 1)
      {
        v15 = v66;
        v32 = v66 + 1;
        v33 = *v66;
        if (*v66 != v66 + 1)
        {
          do
          {
            if (v16 >= v69)
            {
              v34 = __p;
              v35 = (v16 - __p) >> 4;
              v36 = v35 + 1;
              if ((v35 + 1) >> 60)
              {
                goto LABEL_114;
              }

              v37 = v69 - __p;
              if ((v69 - __p) >> 3 > v36)
              {
                v36 = v37 >> 3;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF0)
              {
                v38 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 60))
                {
                  operator new();
                }

LABEL_115:
                sub_2711270EC();
              }

              v39 = (v16 - __p) >> 4;
              v40 = 16 * v35;
              *v40 = *(v33 + 56);
              *(v40 + 8) = v33[8];
              *(v33 + 56) = 0;
              v33[8] = 0;
              v41 = (v40 - 16 * v39);
              if (v34 != v16)
              {
                v42 = v34;
                v43 = v41;
                do
                {
                  *v43 = *v42;
                  v43[1] = v42[1];
                  *v42 = 0;
                  v42[1] = 0;
                  v42 += 2;
                  v43 += 2;
                }

                while (v42 != v16);
                v44 = v34;
                do
                {
                  v45 = *v44;
                  v44 += 2;
                  sub_2715CA870(v34 + 1, v45);
                  v34 = v44;
                }

                while (v44 != v16);
                v34 = __p;
              }

              v16 = (v40 + 16);
              __p = v41;
              v68 = (v40 + 16);
              v69 = 0;
              if (v34)
              {
                operator delete(v34);
              }
            }

            else
            {
              *v16 = *(v33 + 56);
              *(v16 + 1) = v33[8];
              *(v33 + 56) = 0;
              v33[8] = 0;
              v16 += 16;
            }

            v68 = v16;
            v46 = v33[1];
            if (v46)
            {
              do
              {
                v47 = v46;
                v46 = *v46;
              }

              while (v46);
            }

            else
            {
              do
              {
                v47 = v33[2];
                v14 = *v47 == v33;
                v33 = v47;
              }

              while (!v14);
            }

            v33 = v47;
          }

          while (v47 != v32);
          v15 = v66;
        }

        sub_2715CB170(v15, v15[1]);
        *v15 = v15 + 1;
        v15[2] = 0;
        v15[1] = 0;
      }

      else if (v65 == 2)
      {
        v17 = v66;
        v18 = *v66;
        v19 = v66[1];
        if (*v66 != v19)
        {
          do
          {
            if (v16 < v69)
            {
              *v16 = *v18;
              *(v16 + 1) = v18[1];
              *v18 = 0;
              v18[1] = 0;
              v16 += 16;
            }

            else
            {
              v20 = __p;
              v21 = (v16 - __p) >> 4;
              v22 = v21 + 1;
              if ((v21 + 1) >> 60)
              {
                goto LABEL_114;
              }

              v23 = v69 - __p;
              if ((v69 - __p) >> 3 > v22)
              {
                v22 = v23 >> 3;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF0)
              {
                v24 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                if (!(v24 >> 60))
                {
                  operator new();
                }

                goto LABEL_115;
              }

              v25 = 16 * v21;
              *v25 = *v18;
              *(v25 + 8) = v18[1];
              *v18 = 0;
              v18[1] = 0;
              v26 = v68;
              v27 = (16 * v21 + v20 - v68);
              if (v20 != v68)
              {
                v28 = v20;
                v29 = v25 + v20 - v68;
                do
                {
                  *v29 = *v28;
                  *(v29 + 8) = v28[1];
                  *v28 = 0;
                  v28[1] = 0;
                  v28 += 2;
                  v29 += 16;
                }

                while (v28 != v26);
                v30 = v20;
                do
                {
                  v31 = *v30;
                  v30 += 2;
                  sub_2715CA870(v20 + 1, v31);
                  v20 = v30;
                }

                while (v30 != v26);
                v20 = __p;
              }

              v16 = (v25 + 16);
              __p = v27;
              v68 = v16;
              v69 = 0;
              if (v20)
              {
                operator delete(v20);
              }
            }

            v68 = v16;
            v18 += 2;
          }

          while (v18 != v19);
          v17 = v66;
          v18 = *v66;
          v48 = v66[1];
          if (v48 != *v66)
          {
            v49 = (v48 - 8);
            do
            {
              v50 = v49 - 1;
              sub_2715CA870(v49, *(v49 - 8));
              v49 -= 2;
            }

            while (v50 != v18);
          }
        }

        v17[1] = v18;
      }

      sub_2715CA870(&v66, v65);
      v11 = __p;
      v3 = v68;
    }

    while (__p != v68);
    v2 = v63;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      sub_2715CB170(*v2, *(*v2 + 8));
LABEL_105:
      v51 = *v2;
      goto LABEL_106;
    }

    if (a2 != 2)
    {
      goto LABEL_107;
    }

    v51 = *v2;
    v52 = **v2;
    if (!v52)
    {
      goto LABEL_106;
    }

    v53 = v51[1];
    v54 = **v2;
    if (v53 != v52)
    {
      v55 = *v2;
      v56 = v53 - 1;
      do
      {
        v57 = v56 - 1;
        sub_2715CA870(v56, *(v56 - 8));
        v56 -= 2;
      }

      while (v57 != v52);
      v51 = v55;
      v54 = *v55;
    }

    v51[1] = v52;
    v58 = v54;
LABEL_104:
    operator delete(v58);
    goto LABEL_105;
  }

  if (a2 == 3)
  {
    v51 = *v2;
    if (*(*v2 + 23) < 0)
    {
      v58 = *v51;
      goto LABEL_104;
    }
  }

  else
  {
    if (a2 != 8)
    {
      goto LABEL_107;
    }

    v51 = *v2;
    v59 = **v2;
    if (v59)
    {
      v51[1] = v59;
      v58 = v59;
      goto LABEL_104;
    }
  }

LABEL_106:
  operator delete(v51);
  v11 = __p;
LABEL_107:
  if (v11)
  {
    v60 = v11;
    if (v68 != v11)
    {
      v61 = v68 - 1;
      do
      {
        v62 = v61 - 1;
        sub_2715CA870(v61, *(v61 - 8));
        v61 -= 2;
      }

      while (v62 != v11);
      v60 = __p;
    }

    v68 = v11;
    operator delete(v60);
  }
}

void ***sub_2715CB034(void ****a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2715CB01C();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = 16 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = (16 * v2 + *a1 - v9);
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = (16 * v2 + *a1 - v9);
    do
    {
      *v12 = *v11;
      *(v12 + 1) = *(v11 + 1);
      *v11 = 0;
      *(v11 + 1) = 0;
      v11 += 16;
      v12 += 16;
    }

    while (v11 != v9);
    v13 = v8;
    do
    {
      v14 = *v13;
      v13 += 16;
      sub_2715CA870(v8 + 1, v14);
      v8 = v13;
    }

    while (v13 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = (16 * v2 + 16);
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return (16 * v2 + 16);
}

void sub_2715CB170(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_2715CB170(a1, *a2);
    sub_2715CB170(a1, *(a2 + 1));
    sub_2715CA870(a2 + 8, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_2715CB200(void *a1)
{
  if (a1)
  {
    sub_2715CB200(*a1);
    sub_2715CB200(a1[1]);
    v2 = a1[8];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void sub_2715CB4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2715CB544(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715CB57C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2715CB5A0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2715CB600(uint64_t ****a1)
{
  v1 = **a1;
  v3 = *v1;
  v2 = v1[1];
  if (!*(v3 + 32) && *(v3 + 24) != 1)
  {
    sub_271150BA0(&v5, v3 + 48);
  }

  v4 = sub_2715C971C(v3, *v2);
  sub_271819F10(v4);
}

void sub_2715CB8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x2743BF050](v4, v3);
  sub_27181A638(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CB8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CB8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27181A638(va);
  _Unwind_Resume(a1);
}

void sub_2715CB904(uint64_t ***a1)
{
  v1 = **a1;
  v3 = *v1;
  v2 = v1[1];
  if (!*(v3 + 32) && *(v3 + 8) != 1)
  {
    sub_271150BA0(&v5, v3 + 48);
  }

  v4 = sub_2715C971C(v3, *v2);
  sub_27181A058(v4);
}

void sub_2715CBBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x2743BF050](v4, v3);
  sub_27181A92C(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CBBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CBBF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27181A92C(va);
  _Unwind_Resume(a1);
}

void sub_2715CBC08(uint64_t ***a1)
{
  v1 = ***a1;
  if (*(v1 + 96) == 1)
  {
    v2 = ***a1;
    v3 = &v4;
    v4 = 0;
    if (atomic_load_explicit((v1 + 80), memory_order_acquire) != -1)
    {
      v6 = &v2;
      v5 = &v6;
      std::__call_once((v1 + 80), &v5, sub_2715CB904);
    }

    v6 = *(v1 + 16);
    sub_2715D28CC();
  }

  v2 = ***a1;
  v3 = &v4;
  v4 = 0;
  if (atomic_load_explicit((v1 + 72), memory_order_acquire) != -1)
  {
    v6 = &v2;
    v5 = &v6;
    std::__call_once((v1 + 72), &v5, sub_2715CB600);
  }

  v6 = *v1;
  sub_2715D27C0();
}

void sub_2715CBFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715CC1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715CC250(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881339D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715CC2A4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_2715CC2C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t *sub_2715CC2F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2715CA718(result);

    JUMPOUT(0x2743BF050);
  }

  return result;
}

uint64_t sub_2715CC33C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2715CC39C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = v3;
      v3 -= 5;
      sub_2715CC40C(v5 - 1, *(v5 - 16));
      if (*(v5 - 17) < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_2715CC40C(void ***a1, int a2)
{
  v2 = a1;
  __p = 0;
  v66 = 0;
  v67 = 0;
  if (a2 == 1)
  {
    v6 = (*a1)[1] - **a1;
    if (v6)
    {
      if (!((0xCCCCCCCCCCCCCCCDLL * (v6 >> 3)) >> 60))
      {
        operator new();
      }

LABEL_111:
      sub_2715CB01C();
    }

    v3 = 0;
    v9 = **v2;
    v10 = (*v2)[1];
    if (v9 != v10)
    {
      v11 = v9 + 24;
      do
      {
        if (v3 < v67)
        {
          *v3 = *v11;
          v3[1] = *(v11 + 8);
          *v11 = 0;
          *(v11 + 8) = 0;
          v3 += 2;
        }

        else
        {
          v3 = sub_2715CCBD8(&__p, v11);
        }

        v66 = v3;
        v12 = v11 + 16;
        v11 += 40;
      }

      while (v12 != v10);
    }
  }

  else
  {
    v3 = 0;
    if (a2 == 2)
    {
      v4 = **v2;
      v5 = (*v2)[1];
      if (v5 != v4)
      {
        if (((v5 - v4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_111;
      }

      v3 = 0;
      v8 = **v2;
      v7 = (*v2)[1];
      while (v8 != v7)
      {
        if (v3 < v67)
        {
          *v3 = *v8;
          v3[1] = *(v8 + 8);
          *v8 = 0;
          *(v8 + 8) = 0;
          v3 += 2;
        }

        else
        {
          v3 = sub_2715CCBD8(&__p, v8);
        }

        v66 = v3;
        v8 += 16;
      }
    }
  }

  v13 = __p;
  if (__p == v3)
  {
    goto LABEL_81;
  }

  v61 = v2;
  do
  {
    v63 = *(v3 - 16);
    v64 = *(v3 - 1);
    *(v3 - 16) = 0;
    *(v3 - 1) = 0;
    v14 = v66 - 2;
    sub_2715CC40C(v66 - 1, *(v66 - 16));
    v66 = v14;
    if (v63 == 1)
    {
      v15 = v64;
      v16 = *v64;
      v30 = v64[1];
      if (*v64 != v30)
      {
        do
        {
          if (v14 < v67)
          {
            *v14 = *(v16 + 24);
            *(v14 + 1) = v16[4];
            *(v16 + 24) = 0;
            v16[4] = 0;
            v14 += 16;
          }

          else
          {
            v31 = __p;
            v32 = (v14 - __p) >> 4;
            v33 = v32 + 1;
            if ((v32 + 1) >> 60)
            {
              goto LABEL_111;
            }

            v34 = v67 - __p;
            if ((v67 - __p) >> 3 > v33)
            {
              v33 = v34 >> 3;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF0)
            {
              v35 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              if (!(v35 >> 60))
              {
                operator new();
              }

LABEL_112:
              sub_2711270EC();
            }

            v36 = (v14 - __p) >> 4;
            v37 = 16 * v32;
            *v37 = *(v16 + 24);
            *(v37 + 8) = v16[4];
            *(v16 + 24) = 0;
            v16[4] = 0;
            v38 = (v37 - 16 * v36);
            if (v31 != v14)
            {
              v39 = v31;
              v40 = v38;
              do
              {
                *v40 = *v39;
                v40[1] = v39[1];
                *v39 = 0;
                v39[1] = 0;
                v39 += 2;
                v40 += 2;
              }

              while (v39 != v14);
              v41 = v31;
              do
              {
                v42 = *v41;
                v41 += 2;
                sub_2715CC40C(v31 + 1, v42);
                v31 = v41;
              }

              while (v41 != v14);
              v31 = __p;
            }

            v14 = (v37 + 16);
            __p = v38;
            v66 = (v37 + 16);
            v67 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          v66 = v14;
          v16 += 5;
        }

        while (v16 != v30);
        v15 = v64;
        v16 = *v64;
        v30 = v64[1];
      }

      while (v30 != v16)
      {
        v46 = v30;
        v30 -= 5;
        sub_2715CC40C(v46 - 1, *(v46 - 16));
        if (*(v46 - 17) < 0)
        {
          operator delete(*v30);
        }
      }

      goto LABEL_23;
    }

    if (v63 == 2)
    {
      v15 = v64;
      v16 = *v64;
      v17 = v64[1];
      if (*v64 != v17)
      {
        do
        {
          if (v14 < v67)
          {
            *v14 = *v16;
            *(v14 + 1) = v16[1];
            *v16 = 0;
            v16[1] = 0;
            v14 += 16;
          }

          else
          {
            v18 = __p;
            v19 = (v14 - __p) >> 4;
            v20 = v19 + 1;
            if ((v19 + 1) >> 60)
            {
              goto LABEL_111;
            }

            v21 = v67 - __p;
            if ((v67 - __p) >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF0)
            {
              v22 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              if (!(v22 >> 60))
              {
                operator new();
              }

              goto LABEL_112;
            }

            v23 = 16 * v19;
            *v23 = *v16;
            *(v23 + 8) = v16[1];
            *v16 = 0;
            v16[1] = 0;
            v24 = v66;
            v25 = (16 * v19 + v18 - v66);
            if (v18 != v66)
            {
              v26 = v18;
              v27 = v23 + v18 - v66;
              do
              {
                *v27 = *v26;
                *(v27 + 8) = v26[1];
                *v26 = 0;
                v26[1] = 0;
                v26 += 2;
                v27 += 16;
              }

              while (v26 != v24);
              v28 = v18;
              do
              {
                v29 = *v28;
                v28 += 2;
                sub_2715CC40C(v18 + 1, v29);
                v18 = v28;
              }

              while (v28 != v24);
              v18 = __p;
            }

            v14 = (v23 + 16);
            __p = v25;
            v66 = v14;
            v67 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          v66 = v14;
          v16 += 2;
        }

        while (v16 != v17);
        v15 = v64;
        v16 = *v64;
        v43 = v64[1];
        if (v43 != *v64)
        {
          v44 = (v43 - 8);
          do
          {
            v45 = v44 - 1;
            sub_2715CC40C(v44, *(v44 - 8));
            v44 -= 2;
          }

          while (v45 != v16);
        }
      }

LABEL_23:
      v15[1] = v16;
    }

    sub_2715CC40C(&v64, v63);
    v13 = __p;
    v3 = v66;
  }

  while (__p != v66);
  v2 = v61;
LABEL_81:
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v47 = *v2;
      if ((*(*v2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_103;
      }

      v55 = *v47;
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_104;
      }

      v47 = *v2;
      v54 = **v2;
      if (!v54)
      {
        goto LABEL_103;
      }

      v47[1] = v54;
      v55 = v54;
    }

LABEL_102:
    operator delete(v55);
    v47 = *v2;
    goto LABEL_103;
  }

  if (a2 == 1)
  {
    v47 = *v2;
    v48 = **v2;
    if (!v48)
    {
      goto LABEL_103;
    }

    v56 = v47[1];
    v50 = **v2;
    if (v56 != v48)
    {
      v51 = *v2;
      do
      {
        v57 = v56;
        v56 -= 5;
        sub_2715CC40C(v57 - 1, *(v57 - 16));
        if (*(v57 - 17) < 0)
        {
          operator delete(*v56);
        }
      }

      while (v56 != v48);
LABEL_88:
      v47 = v51;
      v50 = *v51;
    }

LABEL_99:
    v47[1] = v48;
    v55 = v50;
    goto LABEL_102;
  }

  if (a2 == 2)
  {
    v47 = *v2;
    v48 = **v2;
    if (v48)
    {
      v49 = v47[1];
      v50 = **v2;
      if (v49 != v48)
      {
        v51 = *v2;
        v52 = (v49 - 1);
        do
        {
          v53 = v52 - 1;
          sub_2715CC40C(v52, *(v52 - 8));
          v52 -= 2;
        }

        while (v53 != v48);
        goto LABEL_88;
      }

      goto LABEL_99;
    }

LABEL_103:
    operator delete(v47);
    v13 = __p;
  }

LABEL_104:
  if (v13)
  {
    v58 = v13;
    if (v66 != v13)
    {
      v59 = v66 - 1;
      do
      {
        v60 = v59 - 1;
        sub_2715CC40C(v59, *(v59 - 8));
        v59 -= 2;
      }

      while (v60 != v13);
      v58 = __p;
    }

    v66 = v13;
    operator delete(v58);
  }
}

void ***sub_2715CCBD8(void ****a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2715CB01C();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = 16 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = (16 * v2 + *a1 - v9);
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = (16 * v2 + *a1 - v9);
    do
    {
      *v12 = *v11;
      *(v12 + 1) = *(v11 + 1);
      *v11 = 0;
      *(v11 + 1) = 0;
      v11 += 16;
      v12 += 16;
    }

    while (v11 != v9);
    v13 = v8;
    do
    {
      v14 = *v13;
      v13 += 16;
      sub_2715CC40C(v8 + 1, v14);
      v8 = v13;
    }

    while (v13 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = (16 * v2 + 16);
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return (16 * v2 + 16);
}

uint64_t *sub_2715CCD14(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_2715CA870((v1 + 64), *(v1 + 56));
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_2715CCD74(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = sub_2715C9EC0(v3, v5);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    result = v8;
  }

  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      return v9;
    }
  }

  return result;
}

void sub_2715CCE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112F828(&a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2715CCEA0(uint64_t a1, unint64_t a2)
{
  sub_27180B5AC(a2, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v17;
  v12 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = v19;
  v5 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v2 = v4 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if ((v7 == 0) == (v4 != 0))
    {
      goto LABEL_17;
    }
  }

  else if (*(&v7 + 1) != *(&v4 + 1))
  {
LABEL_17:
    sub_27180B2D8(&v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return sub_2715D2C8C(&v13);
}

void sub_2715CDAAC(_Unwind_Exception *a1)
{
  sub_27112F828(v1 - 224);
  sub_27112F828(&v3);
  sub_2715CDAE4(&v4);
  sub_2715CDAE4(&v5);
  sub_2715D2C8C(&v6);
  _Unwind_Resume(a1);
}

uint64_t sub_2715CDAE4(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void *sub_2715CDBAC(uint64_t a1, unint64_t a2)
{
  sub_27180B5AC(a2, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v17;
  v12 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = v19;
  v5 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v2 = v4 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if ((v7 == 0) == (v4 != 0))
    {
      goto LABEL_17;
    }
  }

  else if (*(&v7 + 1) != *(&v4 + 1))
  {
LABEL_17:
    sub_27180B2D8(&v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return sub_2715D2C8C(&v13);
}

void sub_2715CE7B8(_Unwind_Exception *a1)
{
  sub_27112F828(v1 - 224);
  sub_27112F828(&v3);
  sub_2715CDAE4(&v4);
  sub_2715CDAE4(&v5);
  sub_2715D2C8C(&v6);
  _Unwind_Resume(a1);
}

void sub_2715CE7F0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    if (v2 == 6)
    {
      theArray[0] = 0;
      sub_2715D613C(a1, theArray);
      LOBYTE(__p[0]) = 3;
      operator new();
    }

    if ((v2 - 5) <= 1)
    {
      theArray[0] = 0;
      sub_2715D6290(a1, theArray);
      LOBYTE(__p[0]) = 8;
      operator new();
    }

    if (*a1 <= 2u)
    {
      if (v2 == 1)
      {
        __p[1] = 0;
        v9 = 0;
        __p[0] = &__p[1];
        sub_271810FE4(__p);
      }

      if (v2 == 2)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        sub_271809D88(__p, Mutable);
      }
    }

    else
    {
      switch(v2)
      {
        case 3:
          __p[0] = 0;
          __p[1] = 0;
          v9 = 0;
          sub_2715D666C(a1, __p);
          if (v9 >= 0)
          {
            v4 = __p;
          }

          else
          {
            v4 = __p[0];
          }

          if (v9 >= 0)
          {
            v5 = HIBYTE(v9);
          }

          else
          {
            v5 = __p[1];
          }

          v6 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v4, v5, 0x8000100u, 0);
          sub_2715CB2C0(theArray, v6);
        case 4:
          LOBYTE(__p[0]) = 0;
          sub_2715D6558(a1, __p);
          v7 = MEMORY[0x277CBED28];
          if (!LOBYTE(__p[0]))
          {
            v7 = MEMORY[0x277CBED10];
          }

          sub_271809A48(__p, *v7);
        case 7:
          theArray[0] = 0;
          sub_2715D63E4(a1, theArray);
          LOBYTE(__p[0]) = 12;
          operator new();
      }
    }
  }
}

void sub_2715CF188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CF19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27112F828(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2715CF254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CF268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112F828(&a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CF288(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    if (v2 == 6)
    {
      theArray[0] = 0;
      sub_2715D693C(a1, theArray);
      LOBYTE(__p[0]) = 3;
      operator new();
    }

    if ((v2 - 5) <= 1)
    {
      theArray[0] = 0;
      sub_2715D6A90(a1, theArray);
      LOBYTE(__p[0]) = 8;
      operator new();
    }

    if (*a1 <= 2u)
    {
      if (v2 == 1)
      {
        __p[1] = 0;
        v9 = 0;
        __p[0] = &__p[1];
        sub_271810FE4(__p);
      }

      if (v2 == 2)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        sub_271809D88(__p, Mutable);
      }
    }

    else
    {
      switch(v2)
      {
        case 3:
          __p[0] = 0;
          __p[1] = 0;
          v9 = 0;
          sub_2715D6E6C(a1, __p);
          if (v9 >= 0)
          {
            v4 = __p;
          }

          else
          {
            v4 = __p[0];
          }

          if (v9 >= 0)
          {
            v5 = HIBYTE(v9);
          }

          else
          {
            v5 = __p[1];
          }

          v6 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v4, v5, 0x8000100u, 0);
          sub_2715CB2C0(theArray, v6);
        case 4:
          LOBYTE(__p[0]) = 0;
          sub_2715D6D58(a1, __p);
          v7 = MEMORY[0x277CBED28];
          if (!LOBYTE(__p[0]))
          {
            v7 = MEMORY[0x277CBED10];
          }

          sub_271809A48(__p, *v7);
        case 7:
          theArray[0] = 0;
          sub_2715D6BE4(a1, theArray);
          LOBYTE(__p[0]) = 12;
          operator new();
      }
    }
  }
}

void sub_2715CFC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CFC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27112F828(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2715CFD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715CFD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27112F828(&a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715CFD34(uint64_t result, int a2)
{
  if (*result == 1)
  {
    v2 = *(result + 8);
    if (*(v2 + 16))
    {
      v17 = xmmword_27189C8C0;
      v3 = *v2;
      v16[0] = result;
      v16[1] = v3;
      v15 = xmmword_27189C8C0;
      v14[0] = result;
      v14[1] = (v2 + 8);
      result = sub_2715D7290(v16, v14);
      if ((result & 1) == 0)
      {
        v4 = *MEMORY[0x277CBECE8];
        v5 = sub_2715D7024(v16);
        if (*(v5 + 23) < 0)
        {
          sub_271127178(__p, *v5, *(v5 + 8));
        }

        else
        {
          v6 = *v5;
          v13 = *(v5 + 16);
          *__p = v6;
        }

        v7 = sub_2715D75EC(v16);
        v11[0] = 0;
        v11[1] = 0;
        sub_2715CE7F0(v7, v11);
        if (v13 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if (v13 >= 0)
        {
          v9 = HIBYTE(v13);
        }

        else
        {
          v9 = __p[1];
        }

        v10 = CFStringCreateWithBytes(v4, v8, v9, 0x8000100u, 0);
        sub_2715CB2C0(&v18, v10);
      }
    }
  }

  return result;
}

void sub_2715CFFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715D0010(uint64_t result, int a2)
{
  if (*result == 1)
  {
    v2 = *(result + 8);
    v3 = *v2;
    if (*v2 != v2[1])
    {
      v18 = xmmword_27189C8C0;
      v17[0] = result;
      v17[1] = v3;
      v16 = xmmword_27189C8C0;
      v4 = v2[1];
      v15[0] = result;
      v15[1] = v4;
      result = sub_2715D7838(v17, v15);
      if ((result & 1) == 0)
      {
        v5 = *MEMORY[0x277CBECE8];
        v6 = sub_2715D7768(v17);
        if (*(v6 + 23) < 0)
        {
          sub_271127178(__p, *v6, *(v6 + 8));
        }

        else
        {
          v7 = *v6;
          v14 = *(v6 + 16);
          *__p = v7;
        }

        v8 = sub_2715D7944(v17);
        v12[0] = 0;
        v12[1] = 0;
        sub_2715CF288(v8, v12);
        if (v14 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if (v14 >= 0)
        {
          v10 = HIBYTE(v14);
        }

        else
        {
          v10 = __p[1];
        }

        v11 = CFStringCreateWithBytes(v5, v9, v10, 0x8000100u, 0);
        sub_2715CB2C0(&v19, v11);
      }
    }
  }

  return result;
}

void sub_2715D0288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715D02C8(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v4 = 0;
  sub_271150BA0(&v2, a1);
}

void sub_2715D0434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void ***sub_2715D0464(unsigned __int8 *a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_2715D3EEC(a1);
    sub_27112B400(&v11, v10);
    sub_2714D199C("cannot use operator[] with a numeric argument with ", &v11, &v12);
    sub_2715D3D50(305, &v12, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v4 = *(a1 + 1);
  v6 = *v4;
  v5 = v4[1];
  v7 = (v5 - *v4) >> 4;
  if (v7 <= a2)
  {
    v12.__r_.__value_.__s.__data_[0] = 0;
    v12.__r_.__value_.__l.__size_ = 0;
    sub_2715D890C(v4, v5, a2 - v7 + 1, &v12);
    sub_2715CA870(&v12.__r_.__value_.__l.__size_, v12.__r_.__value_.__s.__data_[0]);
    v6 = **(a1 + 1);
  }

  return &v6[2 * a2];
}

void sub_2715D05AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_2715D060C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v4 = 0;
  sub_271150BA0(&v2, a1);
}

void sub_2715D0778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void ***sub_2715D07A8(unsigned __int8 *a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_2715D3EEC(a1);
    sub_27112B400(&v11, v10);
    sub_2714D199C("cannot use operator[] with a numeric argument with ", &v11, &v12);
    sub_2715D3D50(305, &v12, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v4 = *(a1 + 1);
  v6 = *v4;
  v5 = v4[1];
  v7 = (v5 - *v4) >> 4;
  if (v7 <= a2)
  {
    v12.__r_.__value_.__s.__data_[0] = 0;
    v12.__r_.__value_.__l.__size_ = 0;
    sub_2715D8CAC(v4, v5, a2 - v7 + 1, &v12);
    sub_2715CC40C(&v12.__r_.__value_.__l.__size_, v12.__r_.__value_.__s.__data_[0]);
    v6 = **(a1 + 1);
  }

  return &v6[2 * a2];
}

void sub_2715D08F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_2715D0950(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  TypeID = CFNumberGetTypeID();
  if (CFGetTypeID(v3) == TypeID)
  {
    *a2 = 0;
LABEL_7:
    *(a2 + 120) = 1;
    return;
  }

  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v7 = CFStringGetTypeID();
  if (CFGetTypeID(v6) == v7)
  {
    *a2 = 1;
    goto LABEL_7;
  }

  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v9 = CFBooleanGetTypeID();
  if (CFGetTypeID(v8) == v9)
  {
    v10 = 2;
LABEL_17:
    *a2 = v10;
    goto LABEL_7;
  }

  v11 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v12 = CFArrayGetTypeID();
  if (CFGetTypeID(v11) == v12)
  {
    v10 = 3;
    goto LABEL_17;
  }

  v13 = *a1;
  if (*a1)
  {
    v14 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v13) == v14)
    {
      v10 = 4;
      goto LABEL_17;
    }

    v15 = *a1;
  }

  else
  {
LABEL_18:
    v15 = 0;
  }

  v16 = CFGetTypeID(v15);
  sub_271812CBC(v16, &v24);
  v19 = v17->__r_.__value_.__r.__words[0];
  size = v17->__r_.__value_.__l.__size_;
  v25[0] = v17->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
  v20 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    sub_271127178(v26, v19, size);
  }

  else
  {
    v26[0] = v19;
    v26[1] = size;
    *v27 = v25[0];
    *&v27[3] = *(v25 + 3);
    v28 = v20;
  }

  v29 = 1;
  LOBYTE(v30) = 0;
  v34 = 0;
  v35 = 1;
  sub_2711CBCA8(22, v26, &v36);
  *a2 = v36;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v46 != 1)
  {
    *(a2 + 120) = 0;
    goto LABEL_32;
  }

  *(a2 + 40) = 0;
  v21 = v39;
  if (v39 == 1)
  {
    *(a2 + 16) = __p;
    *(a2 + 32) = v38;
    v38 = 0;
    __p = 0uLL;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v22 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v45 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v22 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v45 & 1) == 0)
    {
LABEL_25:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (!v21)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }
  }

  v23 = v42;
  *(v22 + 16) = v41;
  *v22 = v40;
  v40 = 0uLL;
  *(a2 + 72) = v23;
  *(a2 + 80) = v43;
  *(a2 + 96) = v44;
  v41 = 0;
  v43 = 0uLL;
  v44 = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v21)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

LABEL_32:
  if (v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v26[0]);
    }
  }

  if ((v20 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_45:
    operator delete(v24.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v19);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_45;
  }
}

void sub_2715D0CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  operator delete(v16);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2715D0DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_27112E024(va);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2715D0DE8()
{
  if ((atomic_load_explicit(&qword_28087C200, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_28087C200))
  {
    return &qword_28087C1D8;
  }

  qword_28087C1D8 = CFBooleanGetTypeID();
  qword_28087C1E0 = CFStringGetTypeID();
  qword_28087C1E8 = CFNumberGetTypeID();
  qword_28087C1F0 = CFArrayGetTypeID();
  qword_28087C1F8 = CFDictionaryGetTypeID();
  __cxa_guard_release(&qword_28087C200);
  return &qword_28087C1D8;
}

void sub_2715D114C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2743BF050](v3, 0x10B2C40EED050F3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2715D1178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271137AE8(va);
  _Unwind_Resume(a1);
}

void sub_2715D1194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271137AE8(&a10);
    _Unwind_Resume(a1);
  }

  sub_271137AE8(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D11E0(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    operator delete(*result);
    return v3;
  }

  v2 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v2;
  if (*(v2 + 23) < 0)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_2715D127C(const UInt8 **a1@<X0>, void *a2@<X8>)
{
  v4 = (a1[1] - *a1) >> 3;
  v27 = 0uLL;
  v26 = 0;
  sub_2715D2DE0(&v26, 0xAAAAAAAAAAAAAAABLL * v4);
  v5 = *a1;
  v6 = MEMORY[0x277CBECE8];
  if (*a1 != a1[1])
  {
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *a1;
    }

    else
    {
      v8 = *v5;
    }

    if (v7 >= 0)
    {
      v9 = v5[23];
    }

    else
    {
      v9 = *(v5 + 1);
    }

    v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0);
    sub_2715CB2C0(&v22, v10);
  }

  v11 = v26;
  __p = v26;
  v21 = v27;
  v25 = v27;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3);
  v27 = 0uLL;
  v26 = 0;
  sub_2715D2DE0(&v26, v12);
  v13 = a1[3];
  v14 = a1[4];
  if (v13 == v14)
  {
    v20 = v21;
  }

  else
  {
    do
    {
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      *&v28 = v15;
      *(&v28 + 1) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v27;
      if (v27 < *(&v27 + 1))
      {
        *v27 = v15;
        *(v17 + 8) = *(&v28 + 1);
        *&v27 = v17 + 16;
      }

      else
      {
        v18 = sub_2715D2FE0(&v26, &v28);
        v19 = *(&v28 + 1);
        *&v27 = v18;
        if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      v13 += 24;
    }

    while (v13 != v14);
    v11 = __p;
    v20 = v25;
  }

  v22 = v26;
  v23 = v27;
  sub_27180A890((v20 - v11) >> 4, (v27 - v26) >> 4, *v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150], a2);
}

void sub_2715D1720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, char *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_271347F18(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, char *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_271347F18(va1);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D1758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D176C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_27112F828(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D1788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, char *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_27112F828(v11 - 96);
  sub_271347F18(va1);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D17AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  sub_27112F828(v19 - 96);
  sub_27112F828(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D17D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D18C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_27112F828(&a10);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_27112F828(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_27112F828(&a10);
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  __cxa_free_exception(v18);
  sub_27112F828(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D1938(uint64_t a1, unint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v5 = *a2;
  v4 = *(a2 + 8);
  if (!v4 || (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  Count = CFDictionaryGetCount(*a2);
  v7 = Count;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < Count)
  {
    if (Count < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

LABEL_9:
  sub_27143B384((a1 + 24), v7);
  sub_27180B5AC(a2, &v19);
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v23;
  v18 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v25;
  v11 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v13)
  {
    v8 = v10 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if ((v13 == 0) == (v10 != 0))
    {
      goto LABEL_25;
    }
  }

  else if (*(&v13 + 1) != *(&v10 + 1))
  {
LABEL_25:
    sub_27180B2D8(&v13);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_2715D2C8C(&v19);
  return a1;
}

void sub_2715D1EB8(_Unwind_Exception *a1)
{
  sub_271392A1C((v1 + 24));
  sub_27137F4D0(v1);
  _Unwind_Resume(a1);
}

void sub_2715D1ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v32 + 8) = v33;
  sub_2715D11E0(&__p);
  sub_2715CDAE4(&a24);
  sub_2715CDAE4(&a32);
  sub_2715D2C8C((v34 - 176));
  sub_271392A1C((v32 + 24));
  sub_27137F4D0(v32);
  _Unwind_Resume(a1);
}

void sub_2715D1F68(const UInt8 **a1@<X0>, void *a2@<X8>)
{
  v4 = (a1[1] - *a1) >> 3;
  v27 = 0uLL;
  v26 = 0;
  sub_2715D2DE0(&v26, 0xAAAAAAAAAAAAAAABLL * v4);
  v5 = *a1;
  v6 = MEMORY[0x277CBECE8];
  if (*a1 != a1[1])
  {
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *a1;
    }

    else
    {
      v8 = *v5;
    }

    if (v7 >= 0)
    {
      v9 = v5[23];
    }

    else
    {
      v9 = *(v5 + 1);
    }

    v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0);
    sub_2715CB2C0(&v22, v10);
  }

  v11 = v26;
  __p = v26;
  v21 = v27;
  v25 = v27;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3);
  v27 = 0uLL;
  v26 = 0;
  sub_2715D2DE0(&v26, v12);
  v13 = a1[3];
  v14 = a1[4];
  if (v13 == v14)
  {
    v20 = v21;
  }

  else
  {
    do
    {
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      *&v28 = v15;
      *(&v28 + 1) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v27;
      if (v27 < *(&v27 + 1))
      {
        *v27 = v15;
        *(v17 + 8) = *(&v28 + 1);
        *&v27 = v17 + 16;
      }

      else
      {
        v18 = sub_2715D2FE0(&v26, &v28);
        v19 = *(&v28 + 1);
        *&v27 = v18;
        if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      v13 += 24;
    }

    while (v13 != v14);
    v11 = __p;
    v20 = v25;
  }

  v22 = v26;
  v23 = v27;
  sub_27180A890((v20 - v11) >> 4, (v27 - v26) >> 4, *v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150], a2);
}

void sub_2715D240C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, char *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_271347F18(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D2428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, char *);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_271347F18(va1);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D2444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D2458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  sub_27112F828(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D2474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, char *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_27112F828(v11 - 96);
  sub_271347F18(va1);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

void sub_2715D2498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  sub_27112F828(v19 - 96);
  sub_27112F828(va);
  sub_271347F18(va1);
  _Unwind_Resume(a1);
}

void sub_2715D24BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_271347F18(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_2715D24D0@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v22 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  v8 = *(a1 + 23);
  v9 = a1[1];
  if (v8 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  *(a5 + 8) = 0;
  if (v8 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v12 != a2)
  {
    v12 = (*(*v12 + 16))(v12);
LABEL_10:
    v15 = v12;
    goto LABEL_12;
  }

  v15 = v14;
  (*(*v12 + 24))(v12, v14);
LABEL_12:
  sub_2715D904C(v10, v10 + v11, v14, v16, v6, v5);
  sub_2715D91B4(v16, 1, a5);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v17 != v16)
  {
    if (v17)
    {
      (*(*v17 + 40))();
    }

    result = v15;
    if (v15 != v14)
    {
      goto LABEL_20;
    }

    return (*(*result + 32))(result);
  }

  (*(*v17 + 32))(v17);
  result = v15;
  if (v15 == v14)
  {
    return (*(*result + 32))(result);
  }

LABEL_20:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_2715D2704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_2715E1D60(va1);
  sub_2715D2734(va);
  sub_2715CA870(v4, *v3);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D2734(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_2715D27C0()
{
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  sub_271810FE4(&v2);
}

void sub_2715D28CC()
{
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  sub_271810FE4(&v2);
}

uint64_t *sub_2715D29D8(uint64_t *a1, _WORD *a2)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_2714A56E0(a1, &v21);
  v4 = SHIBYTE(v23);
  v5 = v21;
  v6 = v22;
  if (v23 < 0)
  {
    v7 = v21;
  }

  else
  {
    v6 = HIBYTE(v23);
    v7 = &v21;
  }

  if (v6 > 5)
  {
    if (v6 == 10)
    {
      v15 = *v7;
      v16 = *(v7 + 4);
      if (v15 == 0x616E6F6974636944 && v16 == 31090)
      {
        *a2 = (&off_279E2F940 - &off_279E2F900) >> 4;
        if ((v4 & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_39;
      }

      if (*v7 == 1651340622 && *(v7 + 2) == 29285)
      {
        *a2 = 0;
        if ((v4 & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_38;
      }

      v12 = *v7;
      v13 = *(v7 + 2);
      if (v12 == 1769108563 && v13 == 26478)
      {
        *a2 = (&off_279E2F910 - &off_279E2F900) >> 4;
        if ((v4 & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_38;
      }
    }

LABEL_39:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_39;
    }

    v8 = *v7;
    v9 = *(v7 + 4);
    if (v8 != 1634890305 || v9 != 121)
    {
      goto LABEL_39;
    }

    *a2 = (&off_279E2F930 - &off_279E2F900) >> 4;
    if (v4 < 0)
    {
      goto LABEL_38;
    }

    return a1;
  }

  if (*v7 != 1819242306)
  {
    goto LABEL_39;
  }

  *a2 = (&off_279E2F920 - &off_279E2F900) >> 4;
  if ((v4 & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_38:
  operator delete(v5);
  return a1;
}

void sub_2715D2C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      if (a20 < 0)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void *sub_2715D2C8C(void *a1)
{
  v2 = a1[13];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[11];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[6];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[4];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_2715D2DE0(uint64_t *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    sub_2715D2F28();
  }
}

void sub_2715D2F40(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  operator new();
}

void sub_2715D2FB4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

_OWORD *sub_2715D2FE0(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2715D2F28();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = (16 * v2);
  v8 = *a2;
  *a2 = 0uLL;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 == v10;
  v12 = (v7 + *a1 - v10);
  *v7 = v8;
  v13 = v7 + 1;
  if (!v11)
  {
    v14 = v9;
    v15 = v12;
    do
    {
      *v15++ = *v14;
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
    }

    while (v14 != v10);
    do
    {
      v16 = v9[1];
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v13;
}

uint64_t sub_2715D3148(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_2715CA870((v4 + 8), v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2715D31A0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_2715CA870(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

uint64_t *sub_2715D3208(unsigned __int8 *a1, const void **a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_2715D3EEC(a1);
    sub_27112B400(&v7, v6);
    sub_2714D199C("cannot use operator[] with a string argument with ", &v7, &v8);
    sub_2715D3D50(305, &v8, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v3 = *(a1 + 1);
  v8.__r_.__value_.__r.__words[0] = a2;
  return sub_2715D3F68(v3, a2, &unk_271893D81, &v8) + 7;
}

void sub_2715D331C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_2715D3B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *__p, uint64_t a32)
{
  sub_2715CA870((v32 + 8), 7);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
    sub_27112F828(&a26);
    sub_27112F828(&a24);
    _Unwind_Resume(a1);
  }

  sub_27112F828(&a26);
  sub_27112F828(&a24);
  _Unwind_Resume(a1);
}

void sub_2715D3C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  sub_2715CA870((v33 + 8), 3);
  if (a33 == 1 && a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2715D3C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_27112E024(va);
  sub_27112F828(&a25);
  _Unwind_Resume(a1);
}

void sub_2715D3CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D3D50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v13 = 10;
  strcpy(__p, "type_error");
  sub_2715D429C(__p, a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_288108F10;
  *(a3 + 8) = v4;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_288109010;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2715D3E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const char *sub_2715D3EEC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_279E2F950[v1];
  }
}

void sub_2715D3F14(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t *sub_2715D3F68(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_27:
    operator new();
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v8 = v4;
      v11 = v4[4];
      v9 = v4 + 4;
      v10 = v11;
      v12 = *(v9 + 23);
      v13 = v12 >= 0 ? v9 : v10;
      v14 = v12 >= 0 ? *(v9 + 23) : v9[1];
      v15 = (v14 >= v7 ? v7 : v14);
      v16 = memcmp(v6, v13, v15);
      if (v16)
      {
        break;
      }

      if (v7 >= v14)
      {
        goto LABEL_22;
      }

LABEL_8:
      v4 = *v8;
      if (!*v8)
      {
        goto LABEL_27;
      }
    }

    if (v16 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v17 = memcmp(v13, v6, v15);
    if (v17)
    {
      if ((v17 & 0x80000000) == 0)
      {
        return v8;
      }

      goto LABEL_26;
    }

    if (v14 >= v7)
    {
      return v8;
    }

LABEL_26:
    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_27;
    }
  }
}

void sub_2715D4104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2715CCD14(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2715D4118(uint64_t *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        operator new();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

void sub_2715D429C(const void **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (v5 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v5 + 16 >= 0x17)
  {
    operator new();
  }

  v23[0] = 0;
  HIBYTE(v23[0]) = v5 + 16;
  *__p = *"[json.exception.";
  if (v5)
  {
    if ((v4 & 0x80u) == 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    memmove(v23, v7, v5);
  }

  *(v23 + v5) = 0;
  v8 = SHIBYTE(v23[0]);
  if ((SHIBYTE(v23[0]) & 0x8000000000000000) != 0)
  {
    v8 = __p[1];
    v10 = ((v23[0] & 0x7FFFFFFFFFFFFFFFLL) - 1);
    if (v10 == __p[1])
    {
      if ((v23[0] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

LABEL_17:
      operator new();
    }

    v9 = __p[0];
  }

  else
  {
    v9 = __p;
    if (SHIBYTE(v23[0]) == 22)
    {
      goto LABEL_17;
    }
  }

  *(v8 + v9) = 46;
  v11 = v8 + 1;
  if (SHIBYTE(v23[0]) < 0)
  {
    __p[1] = v11;
  }

  else
  {
    HIBYTE(v23[0]) = v11 & 0x7F;
  }

  *(v11 + v9) = 0;
  *&v24.__r_.__value_.__l.__data_ = *__p;
  v24.__r_.__value_.__r.__words[2] = v23[0];
  __p[1] = 0;
  v23[0] = 0;
  __p[0] = 0;
  std::to_string(&v21, a2);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v21;
  }

  else
  {
    v12 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v24, v12, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v26 = v14->__r_.__value_.__r.__words[2];
  v25 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = SHIBYTE(v26);
  if ((SHIBYTE(v26) & 0x8000000000000000) != 0)
  {
    v17 = *(&v25 + 1);
    v18 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v18 - *(&v25 + 1)) < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v26 & 0x7FFFFFFFFFFFFFFFLL) < *(&v25 + 1) + 2 - v18)
      {
        sub_271120DA8();
      }

LABEL_33:
      operator new();
    }

    v19 = v25;
    *(v25 + *(&v25 + 1)) = 8285;
    v20 = v17 + 2;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((SHIBYTE(v26) - 21) < 2)
    {
      goto LABEL_33;
    }

    v19 = &v25;
    *(&v25 + SHIBYTE(v26)) = 8285;
    v20 = v16 + 2;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_35:
      HIBYTE(v26) = v20 & 0x7F;
      goto LABEL_38;
    }
  }

  *(&v25 + 1) = v20;
LABEL_38:
  *(v19 + v20) = 0;
  *a3 = v25;
  *(a3 + 16) = v26;
  v26 = 0;
  v25 = 0uLL;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_40:
      if ((SHIBYTE(v23[0]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_44:
      operator delete(__p[0]);
      return;
    }
  }

  else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23[0]) < 0)
  {
    goto LABEL_44;
  }
}

void sub_2715D46D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p)
{
  if (v30 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if (a28 < 0)
      {
LABEL_8:
        operator delete(a23);
        if ((a21 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }

LABEL_10:
      if ((a21 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_11:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if (a28 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

__n128 sub_2715D476C@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_2715D47D4(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_2715D4828(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715D4890(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_2715D48F8(unsigned __int8 *a1, __int128 *a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_2715D3EEC(a1);
    sub_27112B400(&v8, v7);
    sub_2714D199C("cannot use operator[] with a string argument with ", &v8, &v9);
    sub_2715D3D50(305, &v9, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v3 = *(a1 + 1);
  v9.__r_.__value_.__s.__data_[0] = 0;
  v9.__r_.__value_.__l.__size_ = 0;
  v4 = sub_2715D546C(v3, a2, &v9);
  sub_2715CC40C(&v9.__r_.__value_.__l.__size_, v9.__r_.__value_.__s.__data_[0]);
  return v4 + 3;
}

void sub_2715D4A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void sub_2715D5220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *__p, uint64_t a32)
{
  sub_2715CC40C((v32 + 8), 7);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
    sub_27112F828(&a26);
    sub_27112F828(&a24);
    _Unwind_Resume(a1);
  }

  sub_27112F828(&a26);
  sub_27112F828(&a24);
  _Unwind_Resume(a1);
}

void sub_2715D534C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  sub_2715CC40C((v33 + 8), 3);
  if (a33 == 1 && a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2715D53B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D53E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D53F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_27112E024(va);
  sub_27112F828(&a25);
  _Unwind_Resume(a1);
}

void sub_2715D5414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D5428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D543C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_27112F828(va1);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_2715D5458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_2715D546C(void **a1, __int128 *a2, unsigned __int8 *a3)
{
  v7 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_17:
    if (v6 >= a1[2])
    {
      v15 = sub_2715D55B4(a1, a2, a3);
    }

    else
    {
      if (*(a2 + 23) < 0)
      {
        sub_271127178(v6, *a2, *(a2 + 1));
      }

      else
      {
        v14 = *a2;
        *(v6 + 16) = *(a2 + 2);
        *v6 = v14;
      }

      sub_2715D5748(v6 + 24, a3);
      v15 = v6 + 40;
      a1[1] = (v6 + 40);
    }

    a1[1] = v15;
    return (v15 - 40);
  }

  else
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 1);
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      v11 = *(v7 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = v7[1];
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? v7 : *v7;
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v7 += 5;
      if (v7 == v6)
      {
        goto LABEL_17;
      }
    }
  }

  return v7;
}

void sub_2715D5594(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

int64_t sub_2715D55B4(void **a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v3 > 0x666666666666666)
  {
    sub_2715CB01C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v7 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_271127178(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  sub_2715D5748(v7 + 24, a3);
  v8 = a1[1];
  v9 = (v7 + *a1 - v8);
  sub_2715D5D3C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  a1[1] = (v7 + 40);
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7 + 40;
}

void sub_2715D5710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    sub_2715D5E98(va);
    _Unwind_Resume(a1);
  }

  sub_2715D5E98(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D5748(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  *a1 = v2;
  *(a1 + 8) = 0;
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        operator new();
      }

      if (v2 == 2)
      {
        operator new();
      }

      return a1;
    }

    if (v2 == 3)
    {
      operator new();
    }

    v3 = a2[8];
LABEL_12:
    *(a1 + 8) = v3;
    return a1;
  }

  if (v2 < 8)
  {
    v3 = *(a2 + 1);
    goto LABEL_12;
  }

  if (v2 == 8)
  {
    operator new();
  }

  return a1;
}

void sub_2715D5A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715D5A9C(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_2715D5A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2715CC39C(va);
  v10[1] = v11;
  sub_2715D5A9C(&a9);
  operator delete(v10);
  _Unwind_Resume(a1);
}

void ***sub_2715D5A9C(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = v4;
          v4 -= 5;
          sub_2715CC40C(v6 - 1, *(v6 - 16));
          if (*(v6 - 17) < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_2715D5B3C(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    sub_2715CB01C();
  }
}

void sub_2715D5C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2715D5CD4(va);
  *(v10 + 8) = v11;
  sub_2715D5C48(&a9);
  _Unwind_Resume(a1);
}

void ***sub_2715D5C48(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 1;
        do
        {
          v7 = v6 - 1;
          sub_2715CC40C(v6, *(v6 - 8));
          v6 -= 2;
        }

        while (v7 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_2715D5CD4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_2715CC40C(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

void sub_2715D5D3C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v9 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_271127178(v4, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        *(v4 + 16) = *(v7 + 2);
        *v4 = v8;
      }

      sub_2715D5748(v4 + 24, v7 + 24);
      v7 = (v7 + 40);
      v4 = v9 + 40;
      v9 += 40;
    }

    while (v7 != a3);
    do
    {
      sub_2715CC40C(v6 + 4, *(v6 + 24));
      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      v6 = (v6 + 40);
    }

    while (v6 != a3);
  }
}

void sub_2715D5E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_2715CC39C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2715D5E98(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_2715CC40C((i - 8), *(i - 16));
    if (*(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2715D5F0C(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_2715D3EEC(a1);
    sub_27112B400(&v6, v5);
    sub_2714D199C("cannot use operator[] with a numeric argument with ", &v6, &v7);
    sub_2715D3D50(305, &v7, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_2715D5FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_2715D6024(void *a1, const void *a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_27143C19C(&v3, a2);
}

double sub_2715D613C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    goto LABEL_4;
  }

  if (v2 != 7)
  {
    if (v2 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
    }

LABEL_4:
    *a2 = *(a1 + 1);
    return result;
  }

  result = *(a1 + 1);
  *a2 = result;
  return result;
}

void sub_2715D6220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

double sub_2715D6290(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    goto LABEL_4;
  }

  if (v2 != 7)
  {
    if (v2 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
    }

LABEL_4:
    *a2 = *(a1 + 1);
    return result;
  }

  result = *(a1 + 1);
  *a2 = result;
  return result;
}

void sub_2715D6374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

double sub_2715D63E4(double *a1, double *a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 5:
      result = *(a1 + 1);
      *a2 = result;
      break;
    case 7:
      result = a1[1];
      *a2 = result;
      break;
    case 6:
      result = *(a1 + 1);
      *a2 = result;
      break;
    default:
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  return result;
}

void sub_2715D64E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_2715D6558(unsigned __int8 *result, _BYTE *a2)
{
  if (*result != 4)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_2715D3EEC(v2);
    sub_27112B400(&v5, v4);
    sub_2714D199C("type must be BOOLean, but is ", &v5, &v6);
    sub_2715D3D50(302, &v6, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  *a2 = result[8];
  return result;
}

void sub_2715D660C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void **sub_2715D666C(void **result, uint64_t a2)
{
  if (*result != 3)
  {
    v10 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_2715D3EEC(v10);
    sub_27112B400(&v13, v12);
    sub_2714D199C("type must be string, but is ", &v13, &v14);
    sub_2715D3D50(302, &v14, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v2 = result[1];
  if (v2 != a2)
  {
    v3 = v2[23];
    if (*(a2 + 23) < 0)
    {
      if (v3 >= 0)
      {
        v5 = result[1];
      }

      else
      {
        v5 = *v2;
      }

      if (v3 >= 0)
      {
        v6 = v2[23];
      }

      else
      {
        v6 = *(v2 + 1);
      }

      return sub_2711289F8(a2, v5, v6);
    }

    else if ((v2[23] & 0x80) != 0)
    {
      v7 = *(v2 + 1);
      v9 = *v2;

      return sub_271128928(a2, v9, v7);
    }

    else
    {
      v4 = *v2;
      *(a2 + 16) = *(v2 + 2);
      *a2 = v4;
    }
  }

  return result;
}

void sub_2715D67B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2715D6824(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_2715D3EEC(a1);
    sub_27112B400(&v6, v5);
    sub_2714D199C("cannot use operator[] with a numeric argument with ", &v6, &v7);
    sub_2715D3D50(305, &v7, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_2715D68DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

double sub_2715D693C(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    goto LABEL_4;
  }

  if (v2 != 7)
  {
    if (v2 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
    }

LABEL_4:
    *a2 = *(a1 + 1);
    return result;
  }

  result = *(a1 + 1);
  *a2 = result;
  return result;
}

void sub_2715D6A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

double sub_2715D6A90(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    goto LABEL_4;
  }

  if (v2 != 7)
  {
    if (v2 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
    }

LABEL_4:
    *a2 = *(a1 + 1);
    return result;
  }

  result = *(a1 + 1);
  *a2 = result;
  return result;
}

void sub_2715D6B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

double sub_2715D6BE4(double *a1, double *a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 5:
      result = *(a1 + 1);
      *a2 = result;
      break;
    case 7:
      result = a1[1];
      *a2 = result;
      break;
    case 6:
      result = *(a1 + 1);
      *a2 = result;
      break;
    default:
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_2715D3EEC(a1);
      sub_27112B400(&v7, v6);
      sub_2714D199C("type must be number, but is ", &v7, &v8);
      sub_2715D3D50(302, &v8, exception);
      __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  return result;
}

void sub_2715D6CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_2715D6D58(unsigned __int8 *result, _BYTE *a2)
{
  if (*result != 4)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_2715D3EEC(v2);
    sub_27112B400(&v5, v4);
    sub_2714D199C("type must be BOOLean, but is ", &v5, &v6);
    sub_2715D3D50(302, &v6, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  *a2 = result[8];
  return result;
}

void sub_2715D6E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void **sub_2715D6E6C(void **result, uint64_t a2)
{
  if (*result != 3)
  {
    v10 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_2715D3EEC(v10);
    sub_27112B400(&v13, v12);
    sub_2714D199C("type must be string, but is ", &v13, &v14);
    sub_2715D3D50(302, &v14, exception);
    __cxa_throw(exception, &unk_28811C3A8, sub_2715D3F14);
  }

  v2 = result[1];
  if (v2 != a2)
  {
    v3 = v2[23];
    if (*(a2 + 23) < 0)
    {
      if (v3 >= 0)
      {
        v5 = result[1];
      }

      else
      {
        v5 = *v2;
      }

      if (v3 >= 0)
      {
        v6 = v2[23];
      }

      else
      {
        v6 = *(v2 + 1);
      }

      return sub_2711289F8(a2, v5, v6);
    }

    else if ((v2[23] & 0x80) != 0)
    {
      v7 = *(v2 + 1);
      v9 = *v2;

      return sub_271128928(a2, v9, v7);
    }

    else
    {
      v4 = *v2;
      *(a2 + 16) = *(v2 + 2);
      *a2 = v4;
    }
  }

  return result;
}

void sub_2715D6FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2715D7024(uint64_t a1)
{
  if (**a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v3, "cannot use key() for non-object iterators");
    sub_2715D739C(207, v3, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  return *(a1 + 8) + 32;
}

void sub_2715D70C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_2715D70F8(uint64_t a1, void *key, uint64_t a3)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  if (v6 && (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!v7)
    {
      return;
    }
  }

  else if (!v7)
  {
    return;
  }

  if (!CFDictionaryContainsKey(*a1, key))
  {
    sub_2714421A8(&value, a3);
  }
}

BOOL sub_2715D7290(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v7, "cannot compare iterators of different containers");
    sub_2715D739C(212, v7, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_2715D7360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_2715D739C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 16;
  strcpy(__p, "invalid_iterator");
  sub_2715D429C(__p, a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*__p);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_288108F10;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_288108F98;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2715D74E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2715D7530(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_2715D7584(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x2743BF050);
}

_BYTE *sub_2715D75EC(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 56);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v6, "cannot get value");
    sub_2715D739C(214, v6, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  if (*(a1 + 24))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v6, "cannot get value");
    sub_2715D739C(214, v6, v4);
    __cxa_throw(v4, &unk_28811C360, sub_2715D7530);
  }

  return result;
}

void sub_2715D7724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715D7768(uint64_t a1)
{
  if (**a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v3, "cannot use key() for non-object iterators");
    sub_2715D739C(207, v3, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  return *(a1 + 8);
}

void sub_2715D7800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

BOOL sub_2715D7838(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v7, "cannot compare iterators of different containers");
    sub_2715D739C(212, v7, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_2715D7908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_2715D7944(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 24);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v6, "cannot get value");
    sub_2715D739C(214, v6, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  if (*(a1 + 24))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v6, "cannot get value");
    sub_2715D739C(214, v6, v4);
    __cxa_throw(v4, &unk_28811C360, sub_2715D7530);
  }

  return result;
}