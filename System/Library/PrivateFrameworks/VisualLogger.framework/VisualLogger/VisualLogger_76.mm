void sub_2716E05DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a8)
  {
    (*(*a8 + 8))(a8, a2, a3, a4, a5);
  }

  sub_27131626C(va);
  _Unwind_Resume(a1);
}

void sub_2716E14B4(int a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v693 = &unk_28810E1F8;
      sub_2715EF504(a3, &v694, a4);
      v5 = *a2;
      v6 = v697;
      v7 = v694;
      if (!v694)
      {
        goto LABEL_889;
      }

      v8 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v7 = v694;
        v9 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v10 = v7;
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
            v7 = v10;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v7 + 96))(&v691);
      }

      else
      {
LABEL_889:
        v691 = 0;
      }

      if (v697)
      {
        v559 = v698;
        if (v698)
        {
          v560 = v700;
          v561 = v696;
          if (v701 == 1 && v696)
          {
            v562 = v694;
            v563 = v695;
            if (v695)
            {
              atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v563->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v564 = v562;
                (v563->__on_zero_shared)(v563);
                std::__shared_weak_count::__release_weak(v563);
                v562 = v564;
              }
            }

            (*(*v562 + 88))(v562, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v561 = v696;
          }

          v565 = v559 - 1;
          if (v559 != 1)
          {
            v566 = 0;
            do
            {
              if (v6)
              {
                v567 = v6;
                v568 = v561;
                do
                {
                  sub_2718388F8(v5, v568++);
                  --v567;
                }

                while (v567);
              }

              v561 += v560;
              ++v566;
            }

            while (v566 != v565);
          }

          for (; v6; --v6)
          {
            sub_2718388F8(v5, v561++);
          }
        }
      }

      goto LABEL_1156;
    case 2:
      v693 = &unk_28810DB78;
      sub_2715EFA94(a3, &v694, a4);
      v47 = *a2;
      v173 = v697;
      v174 = v694;
      if (!v694)
      {
        goto LABEL_871;
      }

      v175 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v175->__on_zero_shared)(v175);
          std::__shared_weak_count::__release_weak(v175);
        }

        v174 = v694;
        v176 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v177 = v174;
            (v176->__on_zero_shared)(v176);
            std::__shared_weak_count::__release_weak(v176);
            v174 = v177;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v174 + 96))(&v690);
      }

      else
      {
LABEL_871:
        v690 = 0;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      v548 = v698;
      if (!v698)
      {
        goto LABEL_1171;
      }

      v549 = v700;
      v302 = v696;
      if (v701 == 1 && v696)
      {
        v550 = v694;
        v551 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v551->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v552 = v550;
            (v551->__on_zero_shared)(v551);
            std::__shared_weak_count::__release_weak(v551);
            v550 = v552;
          }
        }

        (*(*v550 + 88))(v550, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v302 = v696;
      }

      v553 = v548 - 1;
      if (v553)
      {
        v554 = 0;
        v555 = 2 * v549;
        do
        {
          if (v173)
          {
            v556 = 0;
            v557 = *(v47 + 40);
            do
            {
              if (v557)
              {
                v558 = *(v47 + 24);
                LOBYTE(v691) = *(v47 + 32);
                sub_271120E64(v558, &v691, 1);
              }

              MEMORY[0x2743BE830](*(v47 + 24), v302[v556]);
              v557 = *(v47 + 40) + 1;
              *(v47 + 40) = v557;
              ++v556;
            }

            while (v173 != v556);
          }

          v302 = (v302 + v555);
          ++v554;
        }

        while (v554 != v553);
      }

      goto LABEL_1170;
    case 3:
      v693 = &unk_28810D4B8;
      sub_271683A48(a3, &v694, a4);
      v167 = *a2;
      v168 = v697;
      v169 = v694;
      if (!v694)
      {
        goto LABEL_852;
      }

      v170 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v170->__on_zero_shared)(v170);
          std::__shared_weak_count::__release_weak(v170);
        }

        v169 = v694;
        v171 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v171->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v172 = v169;
            (v171->__on_zero_shared)(v171);
            std::__shared_weak_count::__release_weak(v171);
            v169 = v172;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v169 + 96))(&v691);
      }

      else
      {
LABEL_852:
        v691 = 0;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      v537 = v698;
      if (!v698)
      {
        goto LABEL_1156;
      }

      v538 = v700;
      v539 = v696;
      if (v701 == 1 && v696)
      {
        v540 = v694;
        v541 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v541->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v542 = v540;
            (v541->__on_zero_shared)(v541);
            std::__shared_weak_count::__release_weak(v541);
            v540 = v542;
          }
        }

        (*(*v540 + 88))(v540, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v539 = v696;
      }

      v543 = v537 - 1;
      if (v537 == 1)
      {
        goto LABEL_867;
      }

      if (v168)
      {
        v544 = 0;
        do
        {
          v545 = 2 * v168;
          v546 = v539;
          do
          {
            sub_2718389E0(v167, v546);
            v546 += 2;
            v545 -= 2;
          }

          while (v545);
          v539 += 2 * v538;
          ++v544;
        }

        while (v544 != v543);
LABEL_867:
        if (v168)
        {
          v547 = 2 * v168;
          do
          {
            sub_2718389E0(v167, v539);
            v539 += 2;
            v547 -= 2;
          }

          while (v547);
        }
      }

      goto LABEL_1156;
    case 4:
      v693 = &unk_28810D378;
      sub_271683F50(a3, &v694, a4);
      v103 = *a2;
      v104 = v697;
      v105 = v694;
      if (!v694)
      {
        goto LABEL_659;
      }

      v106 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v106->__on_zero_shared)(v106);
          std::__shared_weak_count::__release_weak(v106);
        }

        v105 = v694;
        v107 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v108 = v105;
            (v107->__on_zero_shared)(v107);
            std::__shared_weak_count::__release_weak(v107);
            v105 = v108;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v105 + 96))(&v691);
      }

      else
      {
LABEL_659:
        v691 = 0;
      }

      if (v697)
      {
        v415 = v698;
        if (v698)
        {
          v416 = v700;
          v417 = v696;
          if (v701 == 1 && v696)
          {
            v418 = v694;
            v419 = v695;
            if (v695)
            {
              atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v419->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v420 = v418;
                (v419->__on_zero_shared)(v419);
                std::__shared_weak_count::__release_weak(v419);
                v418 = v420;
              }
            }

            (*(*v418 + 88))(v418, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v417 = v696;
          }

          v421 = 4 * v104;
          v422 = v415 - 1;
          if (v415 != 1)
          {
            v423 = 0;
            do
            {
              if (v104)
              {
                v424 = 4 * v104;
                v425 = v417;
                do
                {
                  sub_271838C54(v103, v425++);
                  v424 -= 4;
                }

                while (v424);
              }

              v417 += v416;
              ++v423;
            }

            while (v423 != v422);
          }

          if (v104)
          {
            do
            {
              sub_271838C54(v103, v417++);
              v421 -= 4;
            }

            while (v421);
          }
        }
      }

      goto LABEL_1156;
    case 5:
      v693 = &unk_28810D2B8;
      sub_271684458(a3, &v694, a4);
      v149 = *a2;
      v150 = v704;
      v151 = v694;
      if (!v694)
      {
        goto LABEL_801;
      }

      v152 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v152->__on_zero_shared)(v152);
          std::__shared_weak_count::__release_weak(v152);
        }

        v151 = v694;
        v153 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v154 = v151;
            (v153->__on_zero_shared)(v153);
            std::__shared_weak_count::__release_weak(v153);
            v151 = v154;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v151 + 96))(&v691);
      }

      else
      {
LABEL_801:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v504 = v699;
          if (v699)
          {
            v505 = v703;
            v506 = v696;
            if (v705 == 1 && v696)
            {
              v507 = v694;
              v508 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v508->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v509 = v507;
                  (v508->__on_zero_shared)(v508);
                  std::__shared_weak_count::__release_weak(v508);
                  v507 = v509;
                }
              }

              (*(*v507 + 88))(v507, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v506 = v696;
            }

            v510 = (2 * v150);
            v511 = v504 - 1;
            if (v511)
            {
              for (i = 0; i != v511; ++i)
              {
                if (v510)
                {
                  v513 = v510;
                  v514 = v506;
                  do
                  {
                    sub_2718388F8(v149, v514++);
                    --v513;
                  }

                  while (v513);
                }

                v506 += v505;
              }
            }

            for (; v510; --v510)
            {
              sub_2718388F8(v149, v506++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 6:
      v693 = &unk_28810D238;
      sub_2716849F0(a3, &v694, a4);
      v47 = *a2;
      v98 = v704;
      v99 = v694;
      if (!v694)
      {
        goto LABEL_640;
      }

      v100 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v100->__on_zero_shared)(v100);
          std::__shared_weak_count::__release_weak(v100);
        }

        v99 = v694;
        v101 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v102 = v99;
            (v101->__on_zero_shared)(v101);
            std::__shared_weak_count::__release_weak(v101);
            v99 = v102;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v99 + 96))(&v690);
      }

      else
      {
LABEL_640:
        v690 = 0;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      if (!v698)
      {
        goto LABEL_1171;
      }

      v404 = v699;
      if (!v699)
      {
        goto LABEL_1171;
      }

      v405 = v703;
      v302 = v696;
      if (v705 == 1 && v696)
      {
        v406 = v694;
        v407 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v407->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v408 = v406;
            (v407->__on_zero_shared)(v407);
            std::__shared_weak_count::__release_weak(v407);
            v406 = v408;
          }
        }

        (*(*v406 + 88))(v406, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v302 = v696;
      }

      v173 = (2 * v98);
      v409 = v404 - 1;
      if (v409)
      {
        v410 = 0;
        v411 = 2 * v405;
        do
        {
          if (v173)
          {
            v412 = 0;
            v413 = *(v47 + 40);
            do
            {
              if (v413)
              {
                v414 = *(v47 + 24);
                LOBYTE(v691) = *(v47 + 32);
                sub_271120E64(v414, &v691, 1);
              }

              MEMORY[0x2743BE830](*(v47 + 24), v302[v412]);
              v413 = *(v47 + 40) + 1;
              *(v47 + 40) = v413;
              ++v412;
            }

            while (v173 != v412);
          }

          v302 = (v302 + v411);
          ++v410;
        }

        while (v410 != v409);
      }

      goto LABEL_1170;
    case 7:
      v693 = &unk_28810D178;
      sub_271684F8C(a3, &v694, a4);
      v71 = *a2;
      v72 = v704;
      v73 = v694;
      if (!v694)
      {
        goto LABEL_542;
      }

      v74 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v74->__on_zero_shared)(v74);
          std::__shared_weak_count::__release_weak(v74);
        }

        v73 = v694;
        v75 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v76 = v73;
            (v75->__on_zero_shared)(v75);
            std::__shared_weak_count::__release_weak(v75);
            v73 = v76;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v73 + 96))(&v691);
      }

      else
      {
LABEL_542:
        v691 = 0;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      if (!v698)
      {
        goto LABEL_1156;
      }

      v346 = v699;
      if (!v699)
      {
        goto LABEL_1156;
      }

      v347 = v703;
      v348 = v696;
      if (v705 == 1 && v696)
      {
        v349 = v694;
        v350 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v350->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v351 = v349;
            (v350->__on_zero_shared)(v350);
            std::__shared_weak_count::__release_weak(v350);
            v349 = v351;
          }
        }

        (*(*v349 + 88))(v349, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v348 = v696;
      }

      v352 = (2 * v72);
      v353 = v346 - 1;
      if (!v353)
      {
        goto LABEL_558;
      }

      if (v352)
      {
        for (j = 0; j != v353; ++j)
        {
          v355 = 2 * v352;
          v356 = v348;
          do
          {
            sub_2718389E0(v71, v356);
            v356 += 2;
            v355 -= 2;
          }

          while (v355);
          v348 += 2 * v347;
        }

LABEL_558:
        if (v352)
        {
          v357 = 2 * v352;
          do
          {
            sub_2718389E0(v71, v348);
            v348 += 2;
            v357 -= 2;
          }

          while (v357);
        }
      }

      goto LABEL_1156;
    case 8:
      v693 = &unk_28810D0B8;
      sub_271685528(a3, &v694, a4);
      v161 = *a2;
      v162 = v704;
      v163 = v694;
      if (!v694)
      {
        goto LABEL_835;
      }

      v164 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v164->__on_zero_shared)(v164);
          std::__shared_weak_count::__release_weak(v164);
        }

        v163 = v694;
        v165 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v166 = v163;
            (v165->__on_zero_shared)(v165);
            std::__shared_weak_count::__release_weak(v165);
            v163 = v166;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v163 + 96))(&v691);
      }

      else
      {
LABEL_835:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v526 = v699;
          if (v699)
          {
            v527 = v703;
            v528 = v696;
            if (v705 == 1 && v696)
            {
              v529 = v694;
              v530 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v530->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v531 = v529;
                  (v530->__on_zero_shared)(v530);
                  std::__shared_weak_count::__release_weak(v530);
                  v529 = v531;
                }
              }

              (*(*v529 + 88))(v529, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v528 = v696;
            }

            v532 = (2 * v162);
            v533 = v526 - 1;
            if (v533)
            {
              for (k = 0; k != v533; ++k)
              {
                if (v532)
                {
                  v535 = 4 * v532;
                  v536 = v528;
                  do
                  {
                    sub_271838C54(v161, v536++);
                    v535 -= 4;
                  }

                  while (v535);
                }

                v528 += v527;
              }
            }

            if (v532)
            {
              v686 = 4 * v532;
              do
              {
                sub_271838C54(v161, v528++);
                v686 -= 4;
              }

              while (v686);
            }
          }
        }
      }

      goto LABEL_1156;
    case 9:
      v693 = &unk_28810D038;
      sub_271685AC4(a3, &v694, a4);
      v143 = *a2;
      v144 = v704;
      v145 = v694;
      if (!v694)
      {
        goto LABEL_784;
      }

      v146 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v146->__on_zero_shared)(v146);
          std::__shared_weak_count::__release_weak(v146);
        }

        v145 = v694;
        v147 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v148 = v145;
            (v147->__on_zero_shared)(v147);
            std::__shared_weak_count::__release_weak(v147);
            v145 = v148;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v145 + 96))(&v691);
      }

      else
      {
LABEL_784:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v493 = v699;
          if (v699)
          {
            v494 = v703;
            v495 = v696;
            if (v705 == 1 && v696)
            {
              v496 = v694;
              v497 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v497->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v498 = v496;
                  (v497->__on_zero_shared)(v497);
                  std::__shared_weak_count::__release_weak(v497);
                  v496 = v498;
                }
              }

              (*(*v496 + 88))(v496, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v495 = v696;
            }

            v499 = (3 * v144);
            v500 = v493 - 1;
            if (v493 != 1)
            {
              v501 = 0;
              do
              {
                if (v144)
                {
                  v502 = (3 * v144);
                  v503 = v495;
                  do
                  {
                    sub_2718388F8(v143, v503++);
                    --v502;
                  }

                  while (v502);
                }

                v495 += v494;
                ++v501;
              }

              while (v501 != v500);
            }

            if (3 * v144)
            {
              do
              {
                sub_2718388F8(v143, v495++);
                --v499;
              }

              while (v499);
            }
          }
        }
      }

      goto LABEL_1156;
    case 10:
      v693 = &unk_28810E738;
      sub_27168605C(a3, &v694, a4);
      v65 = *a2;
      v66 = v704;
      v190 = v694;
      if (!v694)
      {
        goto LABEL_942;
      }

      v191 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v191->__on_zero_shared)(v191);
          std::__shared_weak_count::__release_weak(v191);
        }

        v190 = v694;
        v192 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v192->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v193 = v190;
            (v192->__on_zero_shared)(v192);
            std::__shared_weak_count::__release_weak(v192);
            v190 = v193;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v190 + 96))(&v690);
      }

      else
      {
LABEL_942:
        v690 = 0;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      if (!v698)
      {
        goto LABEL_1171;
      }

      v591 = v699;
      if (!v699)
      {
        goto LABEL_1171;
      }

      v592 = v703;
      v336 = v696;
      if (v705 == 1 && v696)
      {
        v593 = v694;
        v594 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v594->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v595 = v593;
            (v594->__on_zero_shared)(v594);
            std::__shared_weak_count::__release_weak(v594);
            v593 = v595;
          }
        }

        (*(*v593 + 88))(v593, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v336 = v696;
      }

      v596 = v591 - 1;
      if (v596)
      {
        v597 = 0;
        v598 = 2 * v592;
        do
        {
          if (v66)
          {
            v599 = 0;
            v600 = *(v65 + 40);
            do
            {
              if (v600)
              {
                v601 = *(v65 + 24);
                LOBYTE(v691) = *(v65 + 32);
                sub_271120E64(v601, &v691, 1);
              }

              MEMORY[0x2743BE830](*(v65 + 24), v336[v599]);
              v600 = *(v65 + 40) + 1;
              *(v65 + 40) = v600;
              ++v599;
            }

            while (3 * v66 != v599);
          }

          v336 = (v336 + v598);
          ++v597;
        }

        while (v597 != v596);
      }

      goto LABEL_1169;
    case 11:
      v693 = &unk_28810E6B8;
      sub_2716865F8(a3, &v694, a4);
      v184 = *a2;
      v185 = v704;
      v186 = v694;
      if (!v694)
      {
        goto LABEL_922;
      }

      v187 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v187->__on_zero_shared)(v187);
          std::__shared_weak_count::__release_weak(v187);
        }

        v186 = v694;
        v188 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v189 = v186;
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
            v186 = v189;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v186 + 96))(&v691);
      }

      else
      {
LABEL_922:
        v691 = 0;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      if (!v698)
      {
        goto LABEL_1156;
      }

      v580 = v699;
      if (!v699)
      {
        goto LABEL_1156;
      }

      v581 = v703;
      v582 = v696;
      if (v705 == 1 && v696)
      {
        v583 = v694;
        v584 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v584->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v585 = v583;
            (v584->__on_zero_shared)(v584);
            std::__shared_weak_count::__release_weak(v584);
            v583 = v585;
          }
        }

        (*(*v583 + 88))(v583, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v582 = v696;
      }

      v586 = v580 - 1;
      if (v580 == 1)
      {
        goto LABEL_938;
      }

      if (v185)
      {
        v587 = 0;
        do
        {
          v588 = 2 * (3 * v185);
          v589 = v582;
          do
          {
            sub_2718389E0(v184, v589);
            v589 += 2;
            v588 -= 2;
          }

          while (v588);
          v582 += 2 * v581;
          ++v587;
        }

        while (v587 != v586);
LABEL_938:
        if (v185)
        {
          v590 = 2 * (3 * v185);
          do
          {
            sub_2718389E0(v184, v582);
            v582 += 2;
            v590 -= 2;
          }

          while (v590);
        }
      }

      goto LABEL_1156;
    case 12:
      v693 = &unk_28810E638;
      sub_271686B94(a3, &v694, a4);
      v29 = *a2;
      v30 = v704;
      v31 = v694;
      if (!v694)
      {
        goto LABEL_419;
      }

      v32 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v32->__on_zero_shared)(v32);
          std::__shared_weak_count::__release_weak(v32);
        }

        v31 = v694;
        v33 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v34 = v31;
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
            v31 = v34;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v31 + 96))(&v691);
      }

      else
      {
LABEL_419:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v269 = v699;
          if (v699)
          {
            v270 = v703;
            v271 = v696;
            if (v705 == 1 && v696)
            {
              v272 = v694;
              v273 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v273->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v274 = v272;
                  (v273->__on_zero_shared)(v273);
                  std::__shared_weak_count::__release_weak(v273);
                  v272 = v274;
                }
              }

              (*(*v272 + 88))(v272, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v271 = v696;
            }

            v275 = v269 - 1;
            if (v269 != 1)
            {
              v276 = 0;
              do
              {
                if (v30)
                {
                  v277 = 4 * (3 * v30);
                  v278 = v271;
                  do
                  {
                    sub_271838C54(v29, v278++);
                    v277 -= 4;
                  }

                  while (v277);
                }

                v271 += v270;
                ++v276;
              }

              while (v276 != v275);
            }

            if (3 * v30)
            {
              v679 = 4 * (3 * v30);
              do
              {
                sub_271838C54(v29, v271++);
                v679 -= 4;
              }

              while (v679);
            }
          }
        }
      }

      goto LABEL_1156;
    case 13:
      v693 = &unk_28810E5B8;
      sub_271687130(a3, &v694, a4);
      v53 = *a2;
      v54 = v704;
      v55 = v694;
      if (!v694)
      {
        goto LABEL_489;
      }

      v56 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v56->__on_zero_shared)(v56);
          std::__shared_weak_count::__release_weak(v56);
        }

        v55 = v694;
        v57 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v58 = v55;
            (v57->__on_zero_shared)(v57);
            std::__shared_weak_count::__release_weak(v57);
            v55 = v58;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v55 + 96))(&v691);
      }

      else
      {
LABEL_489:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v312 = v699;
          if (v699)
          {
            v313 = v703;
            v314 = v696;
            if (v705 == 1 && v696)
            {
              v315 = v694;
              v316 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v316->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v317 = v315;
                  (v316->__on_zero_shared)(v316);
                  std::__shared_weak_count::__release_weak(v316);
                  v315 = v317;
                }
              }

              (*(*v315 + 88))(v315, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v314 = v696;
            }

            v318 = (4 * v54);
            v319 = v312 - 1;
            if (v319)
            {
              for (m = 0; m != v319; ++m)
              {
                if (v318)
                {
                  v321 = v318;
                  v322 = v314;
                  do
                  {
                    sub_2718388F8(v53, v322++);
                    --v321;
                  }

                  while (v321);
                }

                v314 += v313;
              }
            }

            for (; v318; --v318)
            {
              sub_2718388F8(v53, v314++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 14:
      v693 = &unk_28810E538;
      sub_2716876C8(a3, &v694, a4);
      v47 = *a2;
      v48 = v704;
      v49 = v694;
      if (!v694)
      {
        goto LABEL_470;
      }

      v50 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v50->__on_zero_shared)(v50);
          std::__shared_weak_count::__release_weak(v50);
        }

        v49 = v694;
        v51 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v52 = v49;
            (v51->__on_zero_shared)(v51);
            std::__shared_weak_count::__release_weak(v51);
            v49 = v52;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v49 + 96))(&v690);
      }

      else
      {
LABEL_470:
        v690 = 0;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      if (!v698)
      {
        goto LABEL_1171;
      }

      v300 = v699;
      if (!v699)
      {
        goto LABEL_1171;
      }

      v301 = v703;
      v302 = v696;
      if (v705 == 1 && v696)
      {
        v303 = v694;
        v304 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v304->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v305 = v303;
            (v304->__on_zero_shared)(v304);
            std::__shared_weak_count::__release_weak(v304);
            v303 = v305;
          }
        }

        (*(*v303 + 88))(v303, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v302 = v696;
      }

      v173 = (4 * v48);
      v306 = v300 - 1;
      if (v306)
      {
        v307 = 0;
        v308 = 2 * v301;
        do
        {
          if (v173)
          {
            v309 = 0;
            v310 = *(v47 + 40);
            do
            {
              if (v310)
              {
                v311 = *(v47 + 24);
                LOBYTE(v691) = *(v47 + 32);
                sub_271120E64(v311, &v691, 1);
              }

              MEMORY[0x2743BE830](*(v47 + 24), v302[v309]);
              v310 = *(v47 + 40) + 1;
              *(v47 + 40) = v310;
              ++v309;
            }

            while (v173 != v309);
          }

          v302 = (v302 + v308);
          ++v307;
        }

        while (v307 != v306);
      }

      goto LABEL_1170;
    case 15:
      v693 = &unk_28810E4B8;
      sub_271687C64(a3, &v694, a4);
      v211 = *a2;
      v212 = v704;
      v213 = v694;
      if (!v694)
      {
        goto LABEL_1014;
      }

      v214 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v214->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v214->__on_zero_shared)(v214);
          std::__shared_weak_count::__release_weak(v214);
        }

        v213 = v694;
        v215 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v215->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v216 = v213;
            (v215->__on_zero_shared)(v215);
            std::__shared_weak_count::__release_weak(v215);
            v213 = v216;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v213 + 96))(&v691);
      }

      else
      {
LABEL_1014:
        v691 = 0;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      if (!v698)
      {
        goto LABEL_1156;
      }

      v634 = v699;
      if (!v699)
      {
        goto LABEL_1156;
      }

      v635 = v703;
      v636 = v696;
      if (v705 == 1 && v696)
      {
        v637 = v694;
        v638 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v638->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v639 = v637;
            (v638->__on_zero_shared)(v638);
            std::__shared_weak_count::__release_weak(v638);
            v637 = v639;
          }
        }

        (*(*v637 + 88))(v637, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v636 = v696;
      }

      v640 = (4 * v212);
      v641 = v634 - 1;
      if (!v641)
      {
        goto LABEL_1030;
      }

      if (v640)
      {
        for (n = 0; n != v641; ++n)
        {
          v643 = 2 * v640;
          v644 = v636;
          do
          {
            sub_2718389E0(v211, v644);
            v644 += 2;
            v643 -= 2;
          }

          while (v643);
          v636 += 2 * v635;
        }

LABEL_1030:
        if (v640)
        {
          v645 = 2 * v640;
          do
          {
            sub_2718389E0(v211, v636);
            v636 += 2;
            v645 -= 2;
          }

          while (v645);
        }
      }

      goto LABEL_1156;
    case 16:
      v693 = &unk_28810E438;
      sub_271688200(a3, &v694, a4);
      v155 = *a2;
      v156 = v704;
      v157 = v694;
      if (!v694)
      {
        goto LABEL_818;
      }

      v158 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v158->__on_zero_shared)(v158);
          std::__shared_weak_count::__release_weak(v158);
        }

        v157 = v694;
        v159 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v160 = v157;
            (v159->__on_zero_shared)(v159);
            std::__shared_weak_count::__release_weak(v159);
            v157 = v160;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v157 + 96))(&v691);
      }

      else
      {
LABEL_818:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v515 = v699;
          if (v699)
          {
            v516 = v703;
            v517 = v696;
            if (v705 == 1 && v696)
            {
              v518 = v694;
              v519 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v519->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v520 = v518;
                  (v519->__on_zero_shared)(v519);
                  std::__shared_weak_count::__release_weak(v519);
                  v518 = v520;
                }
              }

              (*(*v518 + 88))(v518, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v517 = v696;
            }

            v521 = (4 * v156);
            v522 = v515 - 1;
            if (v522)
            {
              for (ii = 0; ii != v522; ++ii)
              {
                if (v521)
                {
                  v524 = 4 * v521;
                  v525 = v517;
                  do
                  {
                    sub_271838C54(v155, v525++);
                    v524 -= 4;
                  }

                  while (v524);
                }

                v517 += v516;
              }
            }

            if (v521)
            {
              v685 = 4 * v521;
              do
              {
                sub_271838C54(v155, v517++);
                v685 -= 4;
              }

              while (v685);
            }
          }
        }
      }

      goto LABEL_1156;
    case 17:
      v693 = &unk_28810E3B8;
      sub_27168879C(a3, &v694, a4);
      v217 = *a2;
      v218 = v704;
      v219 = v694;
      if (!v694)
      {
        goto LABEL_1034;
      }

      v220 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v220->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v220->__on_zero_shared)(v220);
          std::__shared_weak_count::__release_weak(v220);
        }

        v219 = v694;
        v221 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v221->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v222 = v219;
            (v221->__on_zero_shared)(v221);
            std::__shared_weak_count::__release_weak(v221);
            v219 = v222;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v219 + 96))(&v691);
      }

      else
      {
LABEL_1034:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v646 = v699;
          if (v699)
          {
            v647 = v703;
            v648 = v696;
            if (v705 == 1 && v696)
            {
              v649 = v694;
              v650 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v650->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v651 = v649;
                  (v650->__on_zero_shared)(v650);
                  std::__shared_weak_count::__release_weak(v650);
                  v649 = v651;
                }
              }

              (*(*v649 + 88))(v649, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v648 = v696;
            }

            v652 = (3 * v218);
            v653 = v646 - 1;
            if (v646 != 1)
            {
              v654 = 0;
              do
              {
                if (v218)
                {
                  v655 = (3 * v218);
                  v656 = v648;
                  do
                  {
                    sub_2718388F8(v217, v656++);
                    --v655;
                  }

                  while (v655);
                }

                v648 += v647;
                ++v654;
              }

              while (v654 != v653);
            }

            if (3 * v218)
            {
              do
              {
                sub_2718388F8(v217, v648++);
                --v652;
              }

              while (v652);
            }
          }
        }
      }

      goto LABEL_1156;
    case 18:
      v693 = &unk_28810E338;
      sub_271688D34(a3, &v694, a4);
      v65 = *a2;
      v66 = v704;
      v67 = v694;
      if (!v694)
      {
        goto LABEL_523;
      }

      v68 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v68->__on_zero_shared)(v68);
          std::__shared_weak_count::__release_weak(v68);
        }

        v67 = v694;
        v69 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v70 = v67;
            (v69->__on_zero_shared)(v69);
            std::__shared_weak_count::__release_weak(v69);
            v67 = v70;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v67 + 96))(&v690);
      }

      else
      {
LABEL_523:
        v690 = 0;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      if (!v698)
      {
        goto LABEL_1171;
      }

      v334 = v699;
      if (!v699)
      {
        goto LABEL_1171;
      }

      v335 = v703;
      v336 = v696;
      if (v705 == 1 && v696)
      {
        v337 = v694;
        v338 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v338->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v339 = v337;
            (v338->__on_zero_shared)(v338);
            std::__shared_weak_count::__release_weak(v338);
            v337 = v339;
          }
        }

        (*(*v337 + 88))(v337, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v336 = v696;
      }

      v340 = v334 - 1;
      if (v340)
      {
        v341 = 0;
        v342 = 2 * v335;
        do
        {
          if (v66)
          {
            v343 = 0;
            v344 = *(v65 + 40);
            do
            {
              if (v344)
              {
                v345 = *(v65 + 24);
                LOBYTE(v691) = *(v65 + 32);
                sub_271120E64(v345, &v691, 1);
              }

              MEMORY[0x2743BE830](*(v65 + 24), v336[v343]);
              v344 = *(v65 + 40) + 1;
              *(v65 + 40) = v344;
              ++v343;
            }

            while (3 * v66 != v343);
          }

          v336 = (v336 + v342);
          ++v341;
        }

        while (v341 != v340);
      }

      goto LABEL_1169;
    case 19:
      v693 = &unk_28810E2B8;
      sub_2716892D0(a3, &v694, a4);
      v17 = *a2;
      v18 = v704;
      v19 = v694;
      if (!v694)
      {
        goto LABEL_382;
      }

      v20 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v19 = v694;
        v21 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v22 = v19;
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
            v19 = v22;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v19 + 96))(&v691);
      }

      else
      {
LABEL_382:
        v691 = 0;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      if (!v698)
      {
        goto LABEL_1156;
      }

      v247 = v699;
      if (!v699)
      {
        goto LABEL_1156;
      }

      v248 = v703;
      v249 = v696;
      if (v705 == 1 && v696)
      {
        v250 = v694;
        v251 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v251->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v252 = v250;
            (v251->__on_zero_shared)(v251);
            std::__shared_weak_count::__release_weak(v251);
            v250 = v252;
          }
        }

        (*(*v250 + 88))(v250, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v249 = v696;
      }

      v253 = v247 - 1;
      if (v247 == 1)
      {
        goto LABEL_398;
      }

      if (v18)
      {
        v254 = 0;
        do
        {
          v255 = 2 * (3 * v18);
          v256 = v249;
          do
          {
            sub_2718389E0(v17, v256);
            v256 += 2;
            v255 -= 2;
          }

          while (v255);
          v249 += 2 * v248;
          ++v254;
        }

        while (v254 != v253);
LABEL_398:
        if (v18)
        {
          v257 = 2 * (3 * v18);
          do
          {
            sub_2718389E0(v17, v249);
            v249 += 2;
            v257 -= 2;
          }

          while (v257);
        }
      }

      goto LABEL_1156;
    case 20:
      v693 = &unk_28810E178;
      sub_27168986C(a3, &v694, a4);
      v200 = *a2;
      v201 = v704;
      v202 = v694;
      if (!v694)
      {
        goto LABEL_978;
      }

      v203 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v203->__on_zero_shared)(v203);
          std::__shared_weak_count::__release_weak(v203);
        }

        v202 = v694;
        v204 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v204->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v205 = v202;
            (v204->__on_zero_shared)(v204);
            std::__shared_weak_count::__release_weak(v204);
            v202 = v205;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v202 + 96))(&v691);
      }

      else
      {
LABEL_978:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v613 = v699;
          if (v699)
          {
            v614 = v703;
            v615 = v696;
            if (v705 == 1 && v696)
            {
              v616 = v694;
              v617 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v617->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v618 = v616;
                  (v617->__on_zero_shared)(v617);
                  std::__shared_weak_count::__release_weak(v617);
                  v616 = v618;
                }
              }

              (*(*v616 + 88))(v616, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v615 = v696;
            }

            v619 = v613 - 1;
            if (v613 != 1)
            {
              v620 = 0;
              do
              {
                if (v201)
                {
                  v621 = 4 * (3 * v201);
                  v622 = v615;
                  do
                  {
                    sub_271838C54(v200, v622++);
                    v621 -= 4;
                  }

                  while (v621);
                }

                v615 += v614;
                ++v620;
              }

              while (v620 != v619);
            }

            if (3 * v201)
            {
              v687 = 4 * (3 * v201);
              do
              {
                sub_271838C54(v200, v615++);
                v687 -= 4;
              }

              while (v687);
            }
          }
        }
      }

      goto LABEL_1156;
    case 21:
      v693 = &unk_28810E0B8;
      sub_2715EFF9C(a3, &v694, a4);
      v229 = *a2;
      v230 = v704;
      v231 = v694;
      if (!v694)
      {
        goto LABEL_1071;
      }

      v232 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v232->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v232->__on_zero_shared)(v232);
          std::__shared_weak_count::__release_weak(v232);
        }

        v231 = v694;
        v233 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v233->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v234 = v231;
            (v233->__on_zero_shared)(v233);
            std::__shared_weak_count::__release_weak(v233);
            v231 = v234;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v231 + 96))(&v691);
      }

      else
      {
LABEL_1071:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v668 = v699;
          if (v699)
          {
            v669 = v703;
            v670 = v696;
            if (v705 == 1 && v696)
            {
              v671 = v694;
              v672 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v672->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v673 = v671;
                  (v672->__on_zero_shared)(v672);
                  std::__shared_weak_count::__release_weak(v672);
                  v671 = v673;
                }
              }

              (*(*v671 + 88))(v671, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v670 = v696;
            }

            v674 = (3 * v230);
            v675 = v668 - 1;
            if (v668 != 1)
            {
              v676 = 0;
              do
              {
                if (v230)
                {
                  v677 = (3 * v230);
                  v678 = v670;
                  do
                  {
                    sub_2718388F8(v229, v678++);
                    --v677;
                  }

                  while (v677);
                }

                v670 += v669;
                ++v676;
              }

              while (v676 != v675);
            }

            if (3 * v230)
            {
              do
              {
                sub_2718388F8(v229, v670++);
                --v674;
              }

              while (v674);
            }
          }
        }
      }

      goto LABEL_1156;
    case 22:
      v693 = &unk_28810DFF8;
      sub_271689E08(a3, &v694, a4);
      v65 = *a2;
      v66 = v704;
      v83 = v694;
      if (!v694)
      {
        goto LABEL_582;
      }

      v84 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v84->__on_zero_shared)(v84);
          std::__shared_weak_count::__release_weak(v84);
        }

        v83 = v694;
        v85 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v86 = v83;
            (v85->__on_zero_shared)(v85);
            std::__shared_weak_count::__release_weak(v85);
            v83 = v86;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v83 + 96))(&v690);
      }

      else
      {
LABEL_582:
        v690 = 0;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      if (!v698)
      {
        goto LABEL_1171;
      }

      v370 = v699;
      if (!v699)
      {
        goto LABEL_1171;
      }

      v371 = v703;
      v336 = v696;
      if (v705 == 1 && v696)
      {
        v372 = v694;
        v373 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v373->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v374 = v372;
            (v373->__on_zero_shared)(v373);
            std::__shared_weak_count::__release_weak(v373);
            v372 = v374;
          }
        }

        (*(*v372 + 88))(v372, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v336 = v696;
      }

      v375 = v370 - 1;
      if (v375)
      {
        v376 = 0;
        v377 = 2 * v371;
        do
        {
          if (v66)
          {
            v378 = 0;
            v379 = *(v65 + 40);
            do
            {
              if (v379)
              {
                v380 = *(v65 + 24);
                LOBYTE(v691) = *(v65 + 32);
                sub_271120E64(v380, &v691, 1);
              }

              MEMORY[0x2743BE830](*(v65 + 24), v336[v378]);
              v379 = *(v65 + 40) + 1;
              *(v65 + 40) = v379;
              ++v378;
            }

            while (3 * v66 != v378);
          }

          v336 = (v336 + v377);
          ++v376;
        }

        while (v376 != v375);
      }

LABEL_1169:
      v691 = v336;
      v692 = (3 * v66);
      sub_271839348(v65, &v691);
      goto LABEL_1171;
    case 23:
      v693 = &unk_28810DF78;
      sub_27168A3A4(a3, &v694, a4);
      v223 = *a2;
      v224 = v704;
      v225 = v694;
      if (!v694)
      {
        goto LABEL_1051;
      }

      v226 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v226->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v226->__on_zero_shared)(v226);
          std::__shared_weak_count::__release_weak(v226);
        }

        v225 = v694;
        v227 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v227->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v228 = v225;
            (v227->__on_zero_shared)(v227);
            std::__shared_weak_count::__release_weak(v227);
            v225 = v228;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v225 + 96))(&v691);
      }

      else
      {
LABEL_1051:
        v691 = 0;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      if (!v698)
      {
        goto LABEL_1156;
      }

      v657 = v699;
      if (!v699)
      {
        goto LABEL_1156;
      }

      v658 = v703;
      v659 = v696;
      if (v705 == 1 && v696)
      {
        v660 = v694;
        v661 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v661->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v662 = v660;
            (v661->__on_zero_shared)(v661);
            std::__shared_weak_count::__release_weak(v661);
            v660 = v662;
          }
        }

        (*(*v660 + 88))(v660, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v659 = v696;
      }

      v663 = v657 - 1;
      if (v657 == 1)
      {
        goto LABEL_1067;
      }

      if (v224)
      {
        v664 = 0;
        do
        {
          v665 = 2 * (3 * v224);
          v666 = v659;
          do
          {
            sub_2718389E0(v223, v666);
            v666 += 2;
            v665 -= 2;
          }

          while (v665);
          v659 += 2 * v658;
          ++v664;
        }

        while (v664 != v663);
LABEL_1067:
        if (v224)
        {
          v667 = 2 * (3 * v224);
          do
          {
            sub_2718389E0(v223, v659);
            v659 += 2;
            v667 -= 2;
          }

          while (v667);
        }
      }

      goto LABEL_1156;
    case 24:
      v693 = &unk_28810DEF8;
      sub_27168A940(a3, &v694, a4);
      v41 = *a2;
      v42 = v704;
      v43 = v694;
      if (!v694)
      {
        goto LABEL_453;
      }

      v44 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
        }

        v43 = v694;
        v45 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v46 = v43;
            (v45->__on_zero_shared)(v45);
            std::__shared_weak_count::__release_weak(v45);
            v43 = v46;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v43 + 96))(&v691);
      }

      else
      {
LABEL_453:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v290 = v699;
          if (v699)
          {
            v291 = v703;
            v292 = v696;
            if (v705 == 1 && v696)
            {
              v293 = v694;
              v294 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v294->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v295 = v293;
                  (v294->__on_zero_shared)(v294);
                  std::__shared_weak_count::__release_weak(v294);
                  v293 = v295;
                }
              }

              (*(*v293 + 88))(v293, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v292 = v696;
            }

            v296 = v290 - 1;
            if (v290 != 1)
            {
              v297 = 0;
              do
              {
                if (v42)
                {
                  v298 = 4 * (3 * v42);
                  v299 = v292;
                  do
                  {
                    sub_271838C54(v41, v299++);
                    v298 -= 4;
                  }

                  while (v298);
                }

                v292 += v291;
                ++v297;
              }

              while (v297 != v296);
            }

            if (3 * v42)
            {
              v680 = 4 * (3 * v42);
              do
              {
                sub_271838C54(v41, v292++);
                v680 -= 4;
              }

              while (v680);
            }
          }
        }
      }

      goto LABEL_1156;
    case 25:
      v693 = &unk_28810DE38;
      sub_27168AEDC(a3, &v694, a4);
      v23 = *a2;
      v24 = v704;
      v25 = v694;
      if (!v694)
      {
        goto LABEL_402;
      }

      v26 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }

        v25 = v694;
        v27 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v28 = v25;
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
            v25 = v28;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v25 + 96))(&v691);
      }

      else
      {
LABEL_402:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v258 = v699;
          if (v699)
          {
            v259 = v703;
            v260 = v696;
            if (v705 == 1 && v696)
            {
              v261 = v694;
              v262 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v262->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v263 = v261;
                  (v262->__on_zero_shared)(v262);
                  std::__shared_weak_count::__release_weak(v262);
                  v261 = v263;
                }
              }

              (*(*v261 + 88))(v261, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v260 = v696;
            }

            v264 = (4 * v24);
            v265 = v258 - 1;
            if (v265)
            {
              for (jj = 0; jj != v265; ++jj)
              {
                if (v264)
                {
                  v267 = v264;
                  v268 = v260;
                  do
                  {
                    sub_2718388F8(v23, v268++);
                    --v267;
                  }

                  while (v267);
                }

                v260 += v259;
              }
            }

            for (; v264; --v264)
            {
              sub_2718388F8(v23, v260++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 26:
      v693 = &unk_28810DDB8;
      sub_27168B474(a3, &v694, a4);
      v47 = *a2;
      v87 = v704;
      v88 = v694;
      if (!v694)
      {
        goto LABEL_601;
      }

      v89 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v89->__on_zero_shared)(v89);
          std::__shared_weak_count::__release_weak(v89);
        }

        v88 = v694;
        v90 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v91 = v88;
            (v90->__on_zero_shared)(v90);
            std::__shared_weak_count::__release_weak(v90);
            v88 = v91;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v88 + 96))(&v690);
      }

      else
      {
LABEL_601:
        v690 = 0;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      if (!v698)
      {
        goto LABEL_1171;
      }

      v381 = v699;
      if (!v699)
      {
        goto LABEL_1171;
      }

      v382 = v703;
      v302 = v696;
      if (v705 == 1 && v696)
      {
        v383 = v694;
        v384 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v384->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v385 = v383;
            (v384->__on_zero_shared)(v384);
            std::__shared_weak_count::__release_weak(v384);
            v383 = v385;
          }
        }

        (*(*v383 + 88))(v383, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v302 = v696;
      }

      v173 = (4 * v87);
      v386 = v381 - 1;
      if (v386)
      {
        v387 = 0;
        v388 = 2 * v382;
        do
        {
          if (v173)
          {
            v389 = 0;
            v390 = *(v47 + 40);
            do
            {
              if (v390)
              {
                v391 = *(v47 + 24);
                LOBYTE(v691) = *(v47 + 32);
                sub_271120E64(v391, &v691, 1);
              }

              MEMORY[0x2743BE830](*(v47 + 24), v302[v389]);
              v390 = *(v47 + 40) + 1;
              *(v47 + 40) = v390;
              ++v389;
            }

            while (v173 != v389);
          }

          v302 = (v302 + v388);
          ++v387;
        }

        while (v387 != v386);
      }

      goto LABEL_1170;
    case 27:
      v693 = &unk_28810DD38;
      sub_27168BA10(a3, &v694, a4);
      v11 = *a2;
      v12 = v704;
      v13 = v694;
      if (!v694)
      {
        goto LABEL_362;
      }

      v14 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        v13 = v694;
        v15 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v16 = v13;
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
            v13 = v16;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v13 + 96))(&v691);
      }

      else
      {
LABEL_362:
        v691 = 0;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      if (!v698)
      {
        goto LABEL_1156;
      }

      v235 = v699;
      if (!v699)
      {
        goto LABEL_1156;
      }

      v236 = v703;
      v237 = v696;
      if (v705 == 1 && v696)
      {
        v238 = v694;
        v239 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v239->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v240 = v238;
            (v239->__on_zero_shared)(v239);
            std::__shared_weak_count::__release_weak(v239);
            v238 = v240;
          }
        }

        (*(*v238 + 88))(v238, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v237 = v696;
      }

      v241 = (4 * v12);
      v242 = v235 - 1;
      if (!v242)
      {
        goto LABEL_378;
      }

      if (v241)
      {
        for (kk = 0; kk != v242; ++kk)
        {
          v244 = 2 * v241;
          v245 = v237;
          do
          {
            sub_2718389E0(v11, v245);
            v245 += 2;
            v244 -= 2;
          }

          while (v244);
          v237 += 2 * v236;
        }

LABEL_378:
        if (v241)
        {
          v246 = 2 * v241;
          do
          {
            sub_2718389E0(v11, v237);
            v237 += 2;
            v246 -= 2;
          }

          while (v246);
        }
      }

      goto LABEL_1156;
    case 28:
      v693 = &unk_28810DCB8;
      sub_27168BFAC(a3, &v694, a4);
      v109 = *a2;
      v110 = v704;
      v111 = v694;
      if (!v694)
      {
        goto LABEL_675;
      }

      v112 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v112->__on_zero_shared)(v112);
          std::__shared_weak_count::__release_weak(v112);
        }

        v111 = v694;
        v113 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v114 = v111;
            (v113->__on_zero_shared)(v113);
            std::__shared_weak_count::__release_weak(v113);
            v111 = v114;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v111 + 96))(&v691);
      }

      else
      {
LABEL_675:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v426 = v699;
          if (v699)
          {
            v427 = v703;
            v428 = v696;
            if (v705 == 1 && v696)
            {
              v429 = v694;
              v430 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v430->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v431 = v429;
                  (v430->__on_zero_shared)(v430);
                  std::__shared_weak_count::__release_weak(v430);
                  v429 = v431;
                }
              }

              (*(*v429 + 88))(v429, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v428 = v696;
            }

            v432 = (4 * v110);
            v433 = v426 - 1;
            if (v433)
            {
              for (mm = 0; mm != v433; ++mm)
              {
                if (v432)
                {
                  v435 = 4 * v432;
                  v436 = v428;
                  do
                  {
                    sub_271838C54(v109, v436++);
                    v435 -= 4;
                  }

                  while (v435);
                }

                v428 += v427;
              }
            }

            if (v432)
            {
              v682 = 4 * v432;
              do
              {
                sub_271838C54(v109, v428++);
                v682 -= 4;
              }

              while (v682);
            }
          }
        }
      }

      goto LABEL_1156;
    case 29:
      v693 = &unk_28810DC38;
      sub_27168C548(a3, &v694, a4);
      v35 = *a2;
      v36 = v704;
      v37 = v694;
      if (!v694)
      {
        goto LABEL_436;
      }

      v38 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v38->__on_zero_shared)(v38);
          std::__shared_weak_count::__release_weak(v38);
        }

        v37 = v694;
        v39 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v40 = v37;
            (v39->__on_zero_shared)(v39);
            std::__shared_weak_count::__release_weak(v39);
            v37 = v40;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v37 + 96))(&v691);
      }

      else
      {
LABEL_436:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v279 = v699;
          if (v699)
          {
            v280 = v703;
            v281 = v696;
            if (v705 == 1 && v696)
            {
              v282 = v694;
              v283 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v283->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v284 = v282;
                  (v283->__on_zero_shared)(v283);
                  std::__shared_weak_count::__release_weak(v283);
                  v282 = v284;
                }
              }

              (*(*v282 + 88))(v282, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v281 = v696;
            }

            v285 = (4 * v36);
            v286 = v279 - 1;
            if (v286)
            {
              for (nn = 0; nn != v286; ++nn)
              {
                if (v285)
                {
                  v288 = v285;
                  v289 = v281;
                  do
                  {
                    sub_2718388F8(v35, v289++);
                    --v288;
                  }

                  while (v288);
                }

                v281 += v280;
              }
            }

            for (; v285; --v285)
            {
              sub_2718388F8(v35, v281++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 30:
      v693 = &unk_28810DAF8;
      sub_27168CAE0(a3, &v694, a4);
      v47 = *a2;
      v127 = v704;
      v128 = v694;
      if (!v694)
      {
        goto LABEL_729;
      }

      v129 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v129->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v129->__on_zero_shared)(v129);
          std::__shared_weak_count::__release_weak(v129);
        }

        v128 = v694;
        v130 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v130->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v131 = v128;
            (v130->__on_zero_shared)(v130);
            std::__shared_weak_count::__release_weak(v130);
            v128 = v131;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v128 + 96))(&v690);
      }

      else
      {
LABEL_729:
        v690 = 0;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      if (!v698)
      {
        goto LABEL_1171;
      }

      v460 = v699;
      if (!v699)
      {
        goto LABEL_1171;
      }

      v461 = v703;
      v302 = v696;
      if (v705 == 1 && v696)
      {
        v462 = v694;
        v463 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v463->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v464 = v462;
            (v463->__on_zero_shared)(v463);
            std::__shared_weak_count::__release_weak(v463);
            v462 = v464;
          }
        }

        (*(*v462 + 88))(v462, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v302 = v696;
      }

      v173 = (4 * v127);
      v465 = v460 - 1;
      if (v465)
      {
        v466 = 0;
        v467 = 2 * v461;
        do
        {
          if (v173)
          {
            v468 = 0;
            v469 = *(v47 + 40);
            do
            {
              if (v469)
              {
                v470 = *(v47 + 24);
                LOBYTE(v691) = *(v47 + 32);
                sub_271120E64(v470, &v691, 1);
              }

              MEMORY[0x2743BE830](*(v47 + 24), v302[v468]);
              v469 = *(v47 + 40) + 1;
              *(v47 + 40) = v469;
              ++v468;
            }

            while (v173 != v468);
          }

          v302 = (v302 + v467);
          ++v466;
        }

        while (v466 != v465);
      }

      goto LABEL_1170;
    case 31:
      v693 = &unk_28810DA38;
      sub_27168D07C(a3, &v694, a4);
      v92 = *a2;
      v93 = v704;
      v94 = v694;
      if (!v694)
      {
        goto LABEL_620;
      }

      v95 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v95->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v95->__on_zero_shared)(v95);
          std::__shared_weak_count::__release_weak(v95);
        }

        v94 = v694;
        v96 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v97 = v94;
            (v96->__on_zero_shared)(v96);
            std::__shared_weak_count::__release_weak(v96);
            v94 = v97;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v94 + 96))(&v691);
      }

      else
      {
LABEL_620:
        v691 = 0;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      if (!v698)
      {
        goto LABEL_1156;
      }

      v392 = v699;
      if (!v699)
      {
        goto LABEL_1156;
      }

      v393 = v703;
      v394 = v696;
      if (v705 == 1 && v696)
      {
        v395 = v694;
        v396 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v396->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v397 = v395;
            (v396->__on_zero_shared)(v396);
            std::__shared_weak_count::__release_weak(v396);
            v395 = v397;
          }
        }

        (*(*v395 + 88))(v395, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v394 = v696;
      }

      v398 = (4 * v93);
      v399 = v392 - 1;
      if (!v399)
      {
        goto LABEL_636;
      }

      if (v398)
      {
        for (i1 = 0; i1 != v399; ++i1)
        {
          v401 = 2 * v398;
          v402 = v394;
          do
          {
            sub_2718389E0(v92, v402);
            v402 += 2;
            v401 -= 2;
          }

          while (v401);
          v394 += 2 * v393;
        }

LABEL_636:
        if (v398)
        {
          v403 = 2 * v398;
          do
          {
            sub_2718389E0(v92, v394);
            v394 += 2;
            v403 -= 2;
          }

          while (v403);
        }
      }

      goto LABEL_1156;
    case 32:
      v693 = &unk_28810D978;
      sub_27168D618(a3, &v694, a4);
      v137 = *a2;
      v138 = v704;
      v139 = v694;
      if (!v694)
      {
        goto LABEL_767;
      }

      v140 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v140->__on_zero_shared)(v140);
          std::__shared_weak_count::__release_weak(v140);
        }

        v139 = v694;
        v141 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v142 = v139;
            (v141->__on_zero_shared)(v141);
            std::__shared_weak_count::__release_weak(v141);
            v139 = v142;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v139 + 96))(&v691);
      }

      else
      {
LABEL_767:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v482 = v699;
          if (v699)
          {
            v483 = v703;
            v484 = v696;
            if (v705 == 1 && v696)
            {
              v485 = v694;
              v486 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v486->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v487 = v485;
                  (v486->__on_zero_shared)(v486);
                  std::__shared_weak_count::__release_weak(v486);
                  v485 = v487;
                }
              }

              (*(*v485 + 88))(v485, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v484 = v696;
            }

            v488 = (4 * v138);
            v489 = v482 - 1;
            if (v489)
            {
              for (i2 = 0; i2 != v489; ++i2)
              {
                if (v488)
                {
                  v491 = 4 * v488;
                  v492 = v484;
                  do
                  {
                    sub_271838C54(v137, v492++);
                    v491 -= 4;
                  }

                  while (v491);
                }

                v484 += v483;
              }
            }

            if (v488)
            {
              v684 = 4 * v488;
              do
              {
                sub_271838C54(v137, v484++);
                v684 -= 4;
              }

              while (v684);
            }
          }
        }
      }

      goto LABEL_1156;
    case 33:
      v693 = &unk_28810D8F8;
      sub_27168DBB4(a3, &v694, a4);
      v194 = *a2;
      v195 = v704;
      v196 = v694;
      if (!v694)
      {
        goto LABEL_961;
      }

      v197 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v197->__on_zero_shared)(v197);
          std::__shared_weak_count::__release_weak(v197);
        }

        v196 = v694;
        v198 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v198->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v199 = v196;
            (v198->__on_zero_shared)(v198);
            std::__shared_weak_count::__release_weak(v198);
            v196 = v199;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v196 + 96))(&v691);
      }

      else
      {
LABEL_961:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v602 = v699;
          if (v699)
          {
            v603 = v703;
            v604 = v696;
            if (v705 == 1 && v696)
            {
              v605 = v694;
              v606 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v606->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v607 = v605;
                  (v606->__on_zero_shared)(v606);
                  std::__shared_weak_count::__release_weak(v606);
                  v605 = v607;
                }
              }

              (*(*v605 + 88))(v605, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v604 = v696;
            }

            v608 = (4 * v195);
            v609 = v602 - 1;
            if (v609)
            {
              for (i3 = 0; i3 != v609; ++i3)
              {
                if (v608)
                {
                  v611 = v608;
                  v612 = v604;
                  do
                  {
                    sub_2718388F8(v194, v612++);
                    --v611;
                  }

                  while (v611);
                }

                v604 += v603;
              }
            }

            for (; v608; --v608)
            {
              sub_2718388F8(v194, v604++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 34:
      v693 = &unk_28810D878;
      sub_27168E14C(a3, &v694, a4);
      v47 = *a2;
      v132 = v704;
      v133 = v694;
      if (!v694)
      {
        goto LABEL_748;
      }

      v134 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v134->__on_zero_shared)(v134);
          std::__shared_weak_count::__release_weak(v134);
        }

        v133 = v694;
        v135 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v136 = v133;
            (v135->__on_zero_shared)(v135);
            std::__shared_weak_count::__release_weak(v135);
            v133 = v136;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v133 + 96))(&v690);
      }

      else
      {
LABEL_748:
        v690 = 0;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      if (!v698)
      {
        goto LABEL_1171;
      }

      v471 = v699;
      if (!v699)
      {
        goto LABEL_1171;
      }

      v472 = v703;
      v302 = v696;
      if (v705 == 1 && v696)
      {
        v473 = v694;
        v474 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v474->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v475 = v473;
            (v474->__on_zero_shared)(v474);
            std::__shared_weak_count::__release_weak(v474);
            v473 = v475;
          }
        }

        (*(*v473 + 88))(v473, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v302 = v696;
      }

      v173 = (4 * v132);
      v476 = v471 - 1;
      if (v476)
      {
        v477 = 0;
        v478 = 2 * v472;
        do
        {
          if (v173)
          {
            v479 = 0;
            v480 = *(v47 + 40);
            do
            {
              if (v480)
              {
                v481 = *(v47 + 24);
                LOBYTE(v691) = *(v47 + 32);
                sub_271120E64(v481, &v691, 1);
              }

              MEMORY[0x2743BE830](*(v47 + 24), v302[v479]);
              v480 = *(v47 + 40) + 1;
              *(v47 + 40) = v480;
              ++v479;
            }

            while (v173 != v479);
          }

          v302 = (v302 + v478);
          ++v477;
        }

        while (v477 != v476);
      }

      goto LABEL_1170;
    case 35:
      v693 = &unk_28810D7F8;
      sub_27168E6E8(a3, &v694, a4);
      v121 = *a2;
      v122 = v704;
      v123 = v694;
      if (!v694)
      {
        goto LABEL_709;
      }

      v124 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v124->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v124->__on_zero_shared)(v124);
          std::__shared_weak_count::__release_weak(v124);
        }

        v123 = v694;
        v125 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v126 = v123;
            (v125->__on_zero_shared)(v125);
            std::__shared_weak_count::__release_weak(v125);
            v123 = v126;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v123 + 96))(&v691);
      }

      else
      {
LABEL_709:
        v691 = 0;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      if (!v698)
      {
        goto LABEL_1156;
      }

      v448 = v699;
      if (!v699)
      {
        goto LABEL_1156;
      }

      v449 = v703;
      v450 = v696;
      if (v705 == 1 && v696)
      {
        v451 = v694;
        v452 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v452->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v453 = v451;
            (v452->__on_zero_shared)(v452);
            std::__shared_weak_count::__release_weak(v452);
            v451 = v453;
          }
        }

        (*(*v451 + 88))(v451, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v450 = v696;
      }

      v454 = (4 * v122);
      v455 = v448 - 1;
      if (!v455)
      {
        goto LABEL_725;
      }

      if (v454)
      {
        for (i4 = 0; i4 != v455; ++i4)
        {
          v457 = 2 * v454;
          v458 = v450;
          do
          {
            sub_2718389E0(v121, v458);
            v458 += 2;
            v457 -= 2;
          }

          while (v457);
          v450 += 2 * v449;
        }

LABEL_725:
        if (v454)
        {
          v459 = 2 * v454;
          do
          {
            sub_2718389E0(v121, v450);
            v450 += 2;
            v459 -= 2;
          }

          while (v459);
        }
      }

      goto LABEL_1156;
    case 36:
      v693 = &unk_28810D778;
      sub_27168EC84(a3, &v694, a4);
      v115 = *a2;
      v116 = v704;
      v117 = v694;
      if (!v694)
      {
        goto LABEL_692;
      }

      v118 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v118->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v118->__on_zero_shared)(v118);
          std::__shared_weak_count::__release_weak(v118);
        }

        v117 = v694;
        v119 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v120 = v117;
            (v119->__on_zero_shared)(v119);
            std::__shared_weak_count::__release_weak(v119);
            v117 = v120;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v117 + 96))(&v691);
      }

      else
      {
LABEL_692:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v437 = v699;
          if (v699)
          {
            v438 = v703;
            v439 = v696;
            if (v705 == 1 && v696)
            {
              v440 = v694;
              v441 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v441->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v442 = v440;
                  (v441->__on_zero_shared)(v441);
                  std::__shared_weak_count::__release_weak(v441);
                  v440 = v442;
                }
              }

              (*(*v440 + 88))(v440, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v439 = v696;
            }

            v443 = (4 * v116);
            v444 = v437 - 1;
            if (v444)
            {
              for (i5 = 0; i5 != v444; ++i5)
              {
                if (v443)
                {
                  v446 = 4 * v443;
                  v447 = v439;
                  do
                  {
                    sub_271838C54(v115, v447++);
                    v446 -= 4;
                  }

                  while (v446);
                }

                v439 += v438;
              }
            }

            if (v443)
            {
              v683 = 4 * v443;
              do
              {
                sub_271838C54(v115, v439++);
                v683 -= 4;
              }

              while (v683);
            }
          }
        }
      }

      goto LABEL_1156;
    case 37:
      v693 = &unk_28810D6B8;
      sub_27168F220(a3, &v694, a4);
      v178 = *a2;
      v179 = v704;
      v180 = v694;
      if (!v694)
      {
        goto LABEL_905;
      }

      v181 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

        v180 = v694;
        v182 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v183 = v180;
            (v182->__on_zero_shared)(v182);
            std::__shared_weak_count::__release_weak(v182);
            v180 = v183;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v180 + 96))(&v691);
      }

      else
      {
LABEL_905:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v569 = v699;
          if (v699)
          {
            v570 = v703;
            v571 = v696;
            if (v705 == 1 && v696)
            {
              v572 = v694;
              v573 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v573->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v574 = v572;
                  (v573->__on_zero_shared)(v573);
                  std::__shared_weak_count::__release_weak(v573);
                  v572 = v574;
                }
              }

              (*(*v572 + 88))(v572, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v571 = v696;
            }

            v575 = (4 * v179);
            v576 = v569 - 1;
            if (v576)
            {
              for (i6 = 0; i6 != v576; ++i6)
              {
                if (v575)
                {
                  v578 = v575;
                  v579 = v571;
                  do
                  {
                    sub_2718388F8(v178, v579++);
                    --v578;
                  }

                  while (v578);
                }

                v571 += v570;
              }
            }

            for (; v575; --v575)
            {
              sub_2718388F8(v178, v571++);
            }
          }
        }
      }

      goto LABEL_1156;
    case 38:
      v693 = &unk_28810D5F8;
      sub_27168F7B8(a3, &v694, a4);
      v47 = *a2;
      v206 = v704;
      v207 = v694;
      if (!v694)
      {
        goto LABEL_995;
      }

      v208 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v208->__on_zero_shared)(v208);
          std::__shared_weak_count::__release_weak(v208);
        }

        v207 = v694;
        v209 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v209->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v210 = v207;
            (v209->__on_zero_shared)(v209);
            std::__shared_weak_count::__release_weak(v209);
            v207 = v210;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v207 + 96))(&v690);
      }

      else
      {
LABEL_995:
        v690 = 0;
      }

      if (!v697)
      {
        goto LABEL_1171;
      }

      if (!v698)
      {
        goto LABEL_1171;
      }

      v623 = v699;
      if (!v699)
      {
        goto LABEL_1171;
      }

      v624 = v703;
      v302 = v696;
      if (v705 == 1 && v696)
      {
        v625 = v694;
        v626 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v626->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v627 = v625;
            (v626->__on_zero_shared)(v626);
            std::__shared_weak_count::__release_weak(v626);
            v625 = v627;
          }
        }

        (*(*v625 + 88))(v625, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v302 = v696;
      }

      v173 = (4 * v206);
      v628 = v623 - 1;
      if (v628)
      {
        v629 = 0;
        v630 = 2 * v624;
        do
        {
          if (v173)
          {
            v631 = 0;
            v632 = *(v47 + 40);
            do
            {
              if (v632)
              {
                v633 = *(v47 + 24);
                LOBYTE(v691) = *(v47 + 32);
                sub_271120E64(v633, &v691, 1);
              }

              MEMORY[0x2743BE830](*(v47 + 24), v302[v631]);
              v632 = *(v47 + 40) + 1;
              *(v47 + 40) = v632;
              ++v631;
            }

            while (v173 != v631);
          }

          v302 = (v302 + v630);
          ++v629;
        }

        while (v629 != v628);
      }

LABEL_1170:
      v691 = v302;
      v692 = v173;
      sub_271839348(v47, &v691);
LABEL_1171:
      v688 = v690;
      v690 = 0;
      if (!v688)
      {
        goto LABEL_1158;
      }

      goto LABEL_1157;
    case 39:
      v693 = &unk_28810D578;
      sub_27168FD54(a3, &v694, a4);
      v77 = *a2;
      v78 = v704;
      v79 = v694;
      if (!v694)
      {
        goto LABEL_562;
      }

      v80 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v80->__on_zero_shared)(v80);
          std::__shared_weak_count::__release_weak(v80);
        }

        v79 = v694;
        v81 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v82 = v79;
            (v81->__on_zero_shared)(v81);
            std::__shared_weak_count::__release_weak(v81);
            v79 = v82;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v79 + 96))(&v691);
      }

      else
      {
LABEL_562:
        v691 = 0;
      }

      if (!v697)
      {
        goto LABEL_1156;
      }

      if (!v698)
      {
        goto LABEL_1156;
      }

      v358 = v699;
      if (!v699)
      {
        goto LABEL_1156;
      }

      v359 = v703;
      v360 = v696;
      if (v705 == 1 && v696)
      {
        v361 = v694;
        v362 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v362->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v363 = v361;
            (v362->__on_zero_shared)(v362);
            std::__shared_weak_count::__release_weak(v362);
            v361 = v363;
          }
        }

        (*(*v361 + 88))(v361, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v360 = v696;
      }

      v364 = (4 * v78);
      v365 = v358 - 1;
      if (!v365)
      {
        goto LABEL_578;
      }

      if (v364)
      {
        for (i7 = 0; i7 != v365; ++i7)
        {
          v367 = 2 * v364;
          v368 = v360;
          do
          {
            sub_2718389E0(v77, v368);
            v368 += 2;
            v367 -= 2;
          }

          while (v367);
          v360 += 2 * v359;
        }

LABEL_578:
        if (v364)
        {
          v369 = 2 * v364;
          do
          {
            sub_2718389E0(v77, v360);
            v360 += 2;
            v369 -= 2;
          }

          while (v369);
        }
      }

LABEL_1156:
      v688 = v691;
      v691 = 0;
      if (v688)
      {
LABEL_1157:
        (*(*v688 + 8))(v688);
      }

LABEL_1158:
      v689 = v695;
      if (v695)
      {
        if (!atomic_fetch_add(&v695->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v689->__on_zero_shared)(v689);
          std::__shared_weak_count::__release_weak(v689);
        }
      }

      return;
    case 40:
      v693 = &unk_28810D438;
      sub_2716902F0(a3, &v694, a4);
      v59 = *a2;
      v60 = v704;
      v61 = v694;
      if (!v694)
      {
        goto LABEL_506;
      }

      v62 = v695;
      if (v695)
      {
        atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v62->__on_zero_shared)(v62);
          std::__shared_weak_count::__release_weak(v62);
        }

        v61 = v694;
        v63 = v695;
        if (v695)
        {
          atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v64 = v61;
            (v63->__on_zero_shared)(v63);
            std::__shared_weak_count::__release_weak(v63);
            v61 = v64;
          }
        }
      }

      if (v706 == 1)
      {
        (*(*v61 + 96))(&v691);
      }

      else
      {
LABEL_506:
        v691 = 0;
      }

      if (v697)
      {
        if (v698)
        {
          v323 = v699;
          if (v699)
          {
            v324 = v703;
            v325 = v696;
            if (v705 == 1 && v696)
            {
              v326 = v694;
              v327 = v695;
              if (v695)
              {
                atomic_fetch_add_explicit(&v695->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v327->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v328 = v326;
                  (v327->__on_zero_shared)(v327);
                  std::__shared_weak_count::__release_weak(v327);
                  v326 = v328;
                }
              }

              (*(*v326 + 88))(v326, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v325 = v696;
            }

            v329 = (4 * v60);
            v330 = v323 - 1;
            if (v330)
            {
              for (i8 = 0; i8 != v330; ++i8)
              {
                if (v329)
                {
                  v332 = 4 * v329;
                  v333 = v325;
                  do
                  {
                    sub_271838C54(v59, v333++);
                    v332 -= 4;
                  }

                  while (v332);
                }

                v325 += v324;
              }
            }

            if (v329)
            {
              v681 = 4 * v329;
              do
              {
                sub_271838C54(v59, v325++);
                v681 -= 4;
              }

              while (v681);
            }
          }
        }
      }

      goto LABEL_1156;
    default:
      return;
  }
}

void sub_2716E7348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a8)
  {
    (*(*a8 + 8))(a8, a2, a3, a4, a5);
  }

  sub_27131626C(va);
  _Unwind_Resume(a1);
}

void sub_2716E8220(int a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      v705 = &unk_28810E1F8;
      sub_2715EF504(a3, &v706, a4);
      v5 = *a2;
      v6 = v709;
      v7 = v706;
      if (!v706)
      {
        goto LABEL_934;
      }

      v8 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v7 = v706;
        v9 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v10 = v7;
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
            v7 = v10;
          }
        }
      }

      if (v714 == 1)
      {
        (*(*v7 + 96))(&v719);
      }

      else
      {
LABEL_934:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      v580 = v710;
      if (!v710)
      {
        break;
      }

      v581 = v712;
      v582 = v708;
      if (v713 == 1 && v708)
      {
        v583 = v706;
        v584 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v584->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v585 = v583;
            (v584->__on_zero_shared)(v584);
            std::__shared_weak_count::__release_weak(v584);
            v583 = v585;
          }
        }

        (*(*v583 + 88))(v583, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v582 = v708;
      }

      v586 = v580 - 1;
      if (v580 == 1)
      {
        goto LABEL_949;
      }

      if (v6)
      {
        v587 = 0;
        do
        {
          v588 = v6;
          v589 = v582;
          do
          {
            (*(*v5 + 80))(v5, v589);
            v589 = (v589 + 1);
            --v588;
          }

          while (v588);
          v582 = (v582 + v581);
          ++v587;
        }

        while (v587 != v586);
LABEL_949:
        if (v6)
        {
          do
          {
            (*(*v5 + 80))(v5, v582);
            v582 = (v582 + 1);
            --v6;
          }

          while (v6);
        }
      }

      break;
    case 2:
      v705 = &unk_28810DB78;
      sub_2715EFA94(a3, &v706, a4);
      v179 = *a2;
      v180 = v709;
      v181 = v706;
      if (!v706)
      {
        goto LABEL_915;
      }

      v182 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v182->__on_zero_shared)(v182);
          std::__shared_weak_count::__release_weak(v182);
        }

        v181 = v706;
        v183 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v184 = v181;
            (v183->__on_zero_shared)(v183);
            std::__shared_weak_count::__release_weak(v183);
            v181 = v184;
          }
        }
      }

      if (v714 == 1)
      {
        (*(*v181 + 96))(&v719);
      }

      else
      {
LABEL_915:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      v569 = v710;
      if (!v710)
      {
        break;
      }

      v570 = v712;
      v571 = v708;
      if (v713 == 1 && v708)
      {
        v572 = v706;
        v573 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v573->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v574 = v572;
            (v573->__on_zero_shared)(v573);
            std::__shared_weak_count::__release_weak(v573);
            v572 = v574;
          }
        }

        (*(*v572 + 88))(v572, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v571 = v708;
      }

      v575 = v569 - 1;
      if (v569 == 1)
      {
        goto LABEL_930;
      }

      if (v180)
      {
        v576 = 0;
        do
        {
          v577 = 2 * v180;
          v578 = v571;
          do
          {
            (*(*v179 + 96))(v179, v578++);
            v577 -= 2;
          }

          while (v577);
          v571 += v570;
          ++v576;
        }

        while (v576 != v575);
LABEL_930:
        if (v180)
        {
          v579 = 2 * v180;
          do
          {
            (*(*v179 + 96))(v179, v571++);
            v579 -= 2;
          }

          while (v579);
        }
      }

      break;
    case 3:
      v705 = &unk_28810D4B8;
      sub_271683A48(a3, &v706, a4);
      v173 = *a2;
      v174 = v709;
      v175 = v706;
      if (!v706)
      {
        goto LABEL_896;
      }

      v176 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v176->__on_zero_shared)(v176);
          std::__shared_weak_count::__release_weak(v176);
        }

        v175 = v706;
        v177 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v177->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v178 = v175;
            (v177->__on_zero_shared)(v177);
            std::__shared_weak_count::__release_weak(v177);
            v175 = v178;
          }
        }
      }

      if (v714 == 1)
      {
        (*(*v175 + 96))(&v719);
      }

      else
      {
LABEL_896:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      v558 = v710;
      if (!v710)
      {
        break;
      }

      v559 = v712;
      v560 = v708;
      if (v713 == 1 && v708)
      {
        v561 = v706;
        v562 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v562->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v563 = v561;
            (v562->__on_zero_shared)(v562);
            std::__shared_weak_count::__release_weak(v562);
            v561 = v563;
          }
        }

        (*(*v561 + 88))(v561, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v560 = v708;
      }

      v564 = v558 - 1;
      if (!v564)
      {
        goto LABEL_911;
      }

      if (v174)
      {
        v565 = 0;
        v566 = 2 * v559;
        do
        {
          for (i = 0; i != v174; ++i)
          {
            v704 = v560[i];
            (*(*v173 + 96))(v173, &v704);
          }

          v560 = (v560 + v566);
          ++v565;
        }

        while (v565 != v564);
LABEL_911:
        if (v174)
        {
          v568 = 2 * v174;
          do
          {
            v704 = *v560;
            (*(*v173 + 96))(v173, &v704);
            ++v560;
            v568 -= 2;
          }

          while (v568);
        }
      }

      break;
    case 4:
      v705 = &unk_28810D378;
      sub_271683F50(a3, &v706, a4);
      v107 = *a2;
      v108 = v709;
      v109 = v706;
      if (!v706)
      {
        goto LABEL_679;
      }

      v110 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v110->__on_zero_shared)(v110);
          std::__shared_weak_count::__release_weak(v110);
        }

        v109 = v706;
        v111 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v112 = v109;
            (v111->__on_zero_shared)(v111);
            std::__shared_weak_count::__release_weak(v111);
            v109 = v112;
          }
        }
      }

      if (v714 == 1)
      {
        (*(*v109 + 96))(&v719);
      }

      else
      {
LABEL_679:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      v429 = v710;
      if (!v710)
      {
        break;
      }

      v430 = v712;
      v431 = v708;
      if (v713 == 1 && v708)
      {
        v432 = v706;
        v433 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v433->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v434 = v432;
            (v433->__on_zero_shared)(v433);
            std::__shared_weak_count::__release_weak(v433);
            v432 = v434;
          }
        }

        (*(*v432 + 88))(v432, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v431 = v708;
      }

      v435 = v429 - 1;
      if (v429 == 1)
      {
        goto LABEL_694;
      }

      if (v108)
      {
        v436 = 0;
        do
        {
          v437 = 4 * v108;
          v438 = v431;
          do
          {
            (*(*v107 + 128))(v107, v438);
            v438 += 2;
            v437 -= 4;
          }

          while (v437);
          v431 += 2 * v430;
          ++v436;
        }

        while (v436 != v435);
LABEL_694:
        if (v108)
        {
          v439 = 4 * v108;
          do
          {
            (*(*v107 + 128))(v107, v431);
            v431 += 2;
            v439 -= 4;
          }

          while (v439);
        }
      }

      break;
    case 5:
      v705 = &unk_28810D2B8;
      sub_271684458(a3, &v706, a4);
      v155 = *a2;
      v156 = v716;
      v157 = v706;
      if (!v706)
      {
        goto LABEL_837;
      }

      v158 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v158->__on_zero_shared)(v158);
          std::__shared_weak_count::__release_weak(v158);
        }

        v157 = v706;
        v159 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v160 = v157;
            (v159->__on_zero_shared)(v159);
            std::__shared_weak_count::__release_weak(v159);
            v157 = v160;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v157 + 96))(&v719);
      }

      else
      {
LABEL_837:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v523 = v711;
      if (!v711)
      {
        break;
      }

      v524 = v715;
      v525 = v708;
      if (v717 == 1 && v708)
      {
        v526 = v706;
        v527 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v527->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v528 = v526;
            (v527->__on_zero_shared)(v527);
            std::__shared_weak_count::__release_weak(v527);
            v526 = v528;
          }
        }

        (*(*v526 + 88))(v526, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v525 = v708;
      }

      v529 = (2 * v156);
      v530 = v523 - 1;
      if (!v530)
      {
        goto LABEL_853;
      }

      if (v529)
      {
        for (j = 0; j != v530; ++j)
        {
          v532 = v529;
          v533 = v525;
          do
          {
            (*(*v155 + 80))(v155, v533);
            v533 = (v533 + 1);
            --v532;
          }

          while (v532);
          v525 = (v525 + v524);
        }

LABEL_853:
        if (v529)
        {
          do
          {
            (*(*v155 + 80))(v155, v525);
            v525 = (v525 + 1);
            --v529;
          }

          while (v529);
        }
      }

      break;
    case 6:
      v705 = &unk_28810D238;
      sub_2716849F0(a3, &v706, a4);
      v101 = *a2;
      v102 = v716;
      v103 = v706;
      if (!v706)
      {
        goto LABEL_659;
      }

      v104 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v104->__on_zero_shared)(v104);
          std::__shared_weak_count::__release_weak(v104);
        }

        v103 = v706;
        v105 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v106 = v103;
            (v105->__on_zero_shared)(v105);
            std::__shared_weak_count::__release_weak(v105);
            v103 = v106;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v103 + 96))(&v719);
      }

      else
      {
LABEL_659:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v417 = v711;
      if (!v711)
      {
        break;
      }

      v418 = v715;
      v419 = v708;
      if (v717 == 1 && v708)
      {
        v420 = v706;
        v421 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v421->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v422 = v420;
            (v421->__on_zero_shared)(v421);
            std::__shared_weak_count::__release_weak(v421);
            v420 = v422;
          }
        }

        (*(*v420 + 88))(v420, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v419 = v708;
      }

      v423 = (2 * v102);
      v424 = v417 - 1;
      if (!v424)
      {
        goto LABEL_675;
      }

      if (v423)
      {
        for (k = 0; k != v424; ++k)
        {
          v426 = 2 * v423;
          v427 = v419;
          do
          {
            (*(*v101 + 96))(v101, v427++);
            v426 -= 2;
          }

          while (v426);
          v419 += v418;
        }

LABEL_675:
        if (v423)
        {
          v428 = 2 * v423;
          do
          {
            (*(*v101 + 96))(v101, v419++);
            v428 -= 2;
          }

          while (v428);
        }
      }

      break;
    case 7:
      v705 = &unk_28810D178;
      sub_271684F8C(a3, &v706, a4);
      v71 = *a2;
      v72 = v716;
      v73 = v706;
      if (!v706)
      {
        goto LABEL_559;
      }

      v74 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v74->__on_zero_shared)(v74);
          std::__shared_weak_count::__release_weak(v74);
        }

        v73 = v706;
        v75 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v76 = v73;
            (v75->__on_zero_shared)(v75);
            std::__shared_weak_count::__release_weak(v75);
            v73 = v76;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v73 + 96))(&v719);
      }

      else
      {
LABEL_559:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v358 = v711;
      if (!v711)
      {
        break;
      }

      v359 = v715;
      v360 = v708;
      if (v717 == 1 && v708)
      {
        v361 = v706;
        v362 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v362->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v363 = v361;
            (v362->__on_zero_shared)(v362);
            std::__shared_weak_count::__release_weak(v362);
            v361 = v363;
          }
        }

        (*(*v361 + 88))(v361, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v360 = v708;
      }

      v364 = (2 * v72);
      v365 = v358 - 1;
      if (!v365)
      {
        goto LABEL_575;
      }

      if (v364)
      {
        v366 = 0;
        v367 = 2 * v359;
        do
        {
          v368 = 0;
          do
          {
            v704 = v360[v368];
            (*(*v71 + 96))(v71, &v704);
            ++v368;
          }

          while (v364 != v368);
          v360 = (v360 + v367);
          ++v366;
        }

        while (v366 != v365);
LABEL_575:
        if (v364)
        {
          v369 = 2 * v364;
          do
          {
            v704 = *v360;
            (*(*v71 + 96))(v71, &v704);
            ++v360;
            v369 -= 2;
          }

          while (v369);
        }
      }

      break;
    case 8:
      v705 = &unk_28810D0B8;
      sub_271685528(a3, &v706, a4);
      v167 = *a2;
      v168 = v716;
      v169 = v706;
      if (!v706)
      {
        goto LABEL_876;
      }

      v170 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v170->__on_zero_shared)(v170);
          std::__shared_weak_count::__release_weak(v170);
        }

        v169 = v706;
        v171 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v171->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v172 = v169;
            (v171->__on_zero_shared)(v171);
            std::__shared_weak_count::__release_weak(v171);
            v169 = v172;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v169 + 96))(&v719);
      }

      else
      {
LABEL_876:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v546 = v711;
      if (!v711)
      {
        break;
      }

      v547 = v715;
      v548 = v708;
      if (v717 == 1 && v708)
      {
        v549 = v706;
        v550 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v550->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v551 = v549;
            (v550->__on_zero_shared)(v550);
            std::__shared_weak_count::__release_weak(v550);
            v549 = v551;
          }
        }

        (*(*v549 + 88))(v549, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v548 = v708;
      }

      v552 = (2 * v168);
      v553 = v546 - 1;
      if (!v553)
      {
        goto LABEL_892;
      }

      if (v552)
      {
        for (m = 0; m != v553; ++m)
        {
          v555 = 4 * v552;
          v556 = v548;
          do
          {
            (*(*v167 + 128))(v167, v556);
            v556 += 2;
            v555 -= 4;
          }

          while (v555);
          v548 += 2 * v547;
        }

LABEL_892:
        if (v552)
        {
          v557 = 4 * v552;
          do
          {
            (*(*v167 + 128))(v167, v548);
            v548 += 2;
            v557 -= 4;
          }

          while (v557);
        }
      }

      break;
    case 9:
      v705 = &unk_28810D038;
      sub_271685AC4(a3, &v706, a4);
      v149 = *a2;
      v150 = v716;
      v151 = v706;
      if (!v706)
      {
        goto LABEL_818;
      }

      v152 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v152->__on_zero_shared)(v152);
          std::__shared_weak_count::__release_weak(v152);
        }

        v151 = v706;
        v153 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v154 = v151;
            (v153->__on_zero_shared)(v153);
            std::__shared_weak_count::__release_weak(v153);
            v151 = v154;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v151 + 96))(&v719);
      }

      else
      {
LABEL_818:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v512 = v711;
      if (!v711)
      {
        break;
      }

      v513 = v715;
      v514 = v708;
      if (v717 == 1 && v708)
      {
        v515 = v706;
        v516 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v516->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v517 = v515;
            (v516->__on_zero_shared)(v516);
            std::__shared_weak_count::__release_weak(v516);
            v515 = v517;
          }
        }

        (*(*v515 + 88))(v515, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v514 = v708;
      }

      v518 = (3 * v150);
      v519 = v512 - 1;
      if (v512 == 1)
      {
        goto LABEL_834;
      }

      if (v150)
      {
        v520 = 0;
        do
        {
          v521 = (3 * v150);
          v522 = v514;
          do
          {
            (*(*v149 + 80))(v149, v522);
            v522 = (v522 + 1);
            --v521;
          }

          while (v521);
          v514 = (v514 + v513);
          ++v520;
        }

        while (v520 != v519);
LABEL_834:
        if (v150)
        {
          do
          {
            (*(*v149 + 80))(v149, v514);
            v514 = (v514 + 1);
            --v518;
          }

          while (v518);
        }
      }

      break;
    case 10:
      v705 = &unk_28810E738;
      sub_27168605C(a3, &v706, a4);
      v197 = *a2;
      v198 = v716;
      v199 = v706;
      if (!v706)
      {
        goto LABEL_991;
      }

      v200 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v200->__on_zero_shared)(v200);
          std::__shared_weak_count::__release_weak(v200);
        }

        v199 = v706;
        v201 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v201->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v202 = v199;
            (v201->__on_zero_shared)(v201);
            std::__shared_weak_count::__release_weak(v201);
            v199 = v202;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v199 + 96))(&v719);
      }

      else
      {
LABEL_991:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v612 = v711;
      if (!v711)
      {
        break;
      }

      v613 = v715;
      v614 = v708;
      if (v717 == 1 && v708)
      {
        v615 = v706;
        v616 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v616->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v617 = v615;
            (v616->__on_zero_shared)(v616);
            std::__shared_weak_count::__release_weak(v616);
            v615 = v617;
          }
        }

        (*(*v615 + 88))(v615, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v614 = v708;
      }

      v618 = v612 - 1;
      if (v612 == 1)
      {
        goto LABEL_1007;
      }

      if (v198)
      {
        v619 = 0;
        do
        {
          v620 = 2 * (3 * v198);
          v621 = v614;
          do
          {
            (*(*v197 + 96))(v197, v621++);
            v620 -= 2;
          }

          while (v620);
          v614 += v613;
          ++v619;
        }

        while (v619 != v618);
LABEL_1007:
        if (v198)
        {
          v622 = 2 * (3 * v198);
          do
          {
            (*(*v197 + 96))(v197, v614++);
            v622 -= 2;
          }

          while (v622);
        }
      }

      break;
    case 11:
      v705 = &unk_28810E6B8;
      sub_2716865F8(a3, &v706, a4);
      v191 = *a2;
      v192 = v716;
      v193 = v706;
      if (!v706)
      {
        goto LABEL_971;
      }

      v194 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v194->__on_zero_shared)(v194);
          std::__shared_weak_count::__release_weak(v194);
        }

        v193 = v706;
        v195 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v195->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v196 = v193;
            (v195->__on_zero_shared)(v195);
            std::__shared_weak_count::__release_weak(v195);
            v193 = v196;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v193 + 96))(&v719);
      }

      else
      {
LABEL_971:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v601 = v711;
      if (!v711)
      {
        break;
      }

      v602 = v715;
      v603 = v708;
      if (v717 == 1 && v708)
      {
        v604 = v706;
        v605 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v605->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v606 = v604;
            (v605->__on_zero_shared)(v605);
            std::__shared_weak_count::__release_weak(v605);
            v604 = v606;
          }
        }

        (*(*v604 + 88))(v604, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v603 = v708;
      }

      v607 = v601 - 1;
      if (!v607)
      {
        goto LABEL_987;
      }

      if (v192)
      {
        v608 = 0;
        v609 = 2 * v602;
        do
        {
          v610 = 0;
          do
          {
            v704 = v603[v610];
            (*(*v191 + 96))(v191, &v704);
            ++v610;
          }

          while (3 * v192 != v610);
          v603 = (v603 + v609);
          ++v608;
        }

        while (v608 != v607);
LABEL_987:
        if (v192)
        {
          v611 = 2 * (3 * v192);
          do
          {
            v704 = *v603;
            (*(*v191 + 96))(v191, &v704);
            ++v603;
            v611 -= 2;
          }

          while (v611);
        }
      }

      break;
    case 12:
      v705 = &unk_28810E638;
      sub_271686B94(a3, &v706, a4);
      v29 = *a2;
      v30 = v716;
      v31 = v706;
      if (!v706)
      {
        goto LABEL_421;
      }

      v32 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v32->__on_zero_shared)(v32);
          std::__shared_weak_count::__release_weak(v32);
        }

        v31 = v706;
        v33 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v34 = v31;
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
            v31 = v34;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v31 + 96))(&v719);
      }

      else
      {
LABEL_421:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v279 = v711;
      if (!v711)
      {
        break;
      }

      v280 = v715;
      v281 = v708;
      if (v717 == 1 && v708)
      {
        v282 = v706;
        v283 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v283->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v284 = v282;
            (v283->__on_zero_shared)(v283);
            std::__shared_weak_count::__release_weak(v283);
            v282 = v284;
          }
        }

        (*(*v282 + 88))(v282, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v281 = v708;
      }

      v285 = v279 - 1;
      if (v279 == 1)
      {
        goto LABEL_437;
      }

      if (v30)
      {
        v286 = 0;
        do
        {
          v287 = 4 * (3 * v30);
          v288 = v281;
          do
          {
            (*(*v29 + 128))(v29, v288);
            v288 += 2;
            v287 -= 4;
          }

          while (v287);
          v281 += 2 * v280;
          ++v286;
        }

        while (v286 != v285);
LABEL_437:
        if (v30)
        {
          v289 = 4 * (3 * v30);
          do
          {
            (*(*v29 + 128))(v29, v281);
            v281 += 2;
            v289 -= 4;
          }

          while (v289);
        }
      }

      break;
    case 13:
      v705 = &unk_28810E5B8;
      sub_271687130(a3, &v706, a4);
      v53 = *a2;
      v54 = v716;
      v55 = v706;
      if (!v706)
      {
        goto LABEL_500;
      }

      v56 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v56->__on_zero_shared)(v56);
          std::__shared_weak_count::__release_weak(v56);
        }

        v55 = v706;
        v57 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v58 = v55;
            (v57->__on_zero_shared)(v57);
            std::__shared_weak_count::__release_weak(v57);
            v55 = v58;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v55 + 96))(&v719);
      }

      else
      {
LABEL_500:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v324 = v711;
      if (!v711)
      {
        break;
      }

      v325 = v715;
      v326 = v708;
      if (v717 == 1 && v708)
      {
        v327 = v706;
        v328 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v328->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v329 = v327;
            (v328->__on_zero_shared)(v328);
            std::__shared_weak_count::__release_weak(v328);
            v327 = v329;
          }
        }

        (*(*v327 + 88))(v327, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v326 = v708;
      }

      v330 = (4 * v54);
      v331 = v324 - 1;
      if (!v331)
      {
        goto LABEL_516;
      }

      if (v330)
      {
        for (n = 0; n != v331; ++n)
        {
          v333 = v330;
          v334 = v326;
          do
          {
            (*(*v53 + 80))(v53, v334);
            v334 = (v334 + 1);
            --v333;
          }

          while (v333);
          v326 = (v326 + v325);
        }

LABEL_516:
        if (v330)
        {
          do
          {
            (*(*v53 + 80))(v53, v326);
            v326 = (v326 + 1);
            --v330;
          }

          while (v330);
        }
      }

      break;
    case 14:
      v705 = &unk_28810E538;
      sub_2716876C8(a3, &v706, a4);
      v47 = *a2;
      v48 = v716;
      v49 = v706;
      if (!v706)
      {
        goto LABEL_480;
      }

      v50 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v50->__on_zero_shared)(v50);
          std::__shared_weak_count::__release_weak(v50);
        }

        v49 = v706;
        v51 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v52 = v49;
            (v51->__on_zero_shared)(v51);
            std::__shared_weak_count::__release_weak(v51);
            v49 = v52;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v49 + 96))(&v719);
      }

      else
      {
LABEL_480:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v312 = v711;
      if (!v711)
      {
        break;
      }

      v313 = v715;
      v314 = v708;
      if (v717 == 1 && v708)
      {
        v315 = v706;
        v316 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v316->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v317 = v315;
            (v316->__on_zero_shared)(v316);
            std::__shared_weak_count::__release_weak(v316);
            v315 = v317;
          }
        }

        (*(*v315 + 88))(v315, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v314 = v708;
      }

      v318 = (4 * v48);
      v319 = v312 - 1;
      if (!v319)
      {
        goto LABEL_496;
      }

      if (v318)
      {
        for (ii = 0; ii != v319; ++ii)
        {
          v321 = 2 * v318;
          v322 = v314;
          do
          {
            (*(*v47 + 96))(v47, v322++);
            v321 -= 2;
          }

          while (v321);
          v314 += v313;
        }

LABEL_496:
        if (v318)
        {
          v323 = 2 * v318;
          do
          {
            (*(*v47 + 96))(v47, v314++);
            v323 -= 2;
          }

          while (v323);
        }
      }

      break;
    case 15:
      v705 = &unk_28810E4B8;
      sub_271687C64(a3, &v706, a4);
      v221 = *a2;
      v222 = v716;
      v223 = v706;
      if (!v706)
      {
        goto LABEL_1070;
      }

      v224 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v224->__on_zero_shared)(v224);
          std::__shared_weak_count::__release_weak(v224);
        }

        v223 = v706;
        v225 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v225->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v226 = v223;
            (v225->__on_zero_shared)(v225);
            std::__shared_weak_count::__release_weak(v225);
            v223 = v226;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v223 + 96))(&v719);
      }

      else
      {
LABEL_1070:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v657 = v711;
      if (!v711)
      {
        break;
      }

      v658 = v715;
      v659 = v708;
      if (v717 == 1 && v708)
      {
        v660 = v706;
        v661 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v661->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v662 = v660;
            (v661->__on_zero_shared)(v661);
            std::__shared_weak_count::__release_weak(v661);
            v660 = v662;
          }
        }

        (*(*v660 + 88))(v660, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v659 = v708;
      }

      v663 = (4 * v222);
      v664 = v657 - 1;
      if (!v664)
      {
        goto LABEL_1086;
      }

      if (v663)
      {
        v665 = 0;
        v666 = 2 * v658;
        do
        {
          v667 = 0;
          do
          {
            v704 = v659[v667];
            (*(*v221 + 96))(v221, &v704);
            ++v667;
          }

          while (v663 != v667);
          v659 = (v659 + v666);
          ++v665;
        }

        while (v665 != v664);
LABEL_1086:
        if (v663)
        {
          v668 = 2 * v663;
          do
          {
            v704 = *v659;
            (*(*v221 + 96))(v221, &v704);
            ++v659;
            v668 -= 2;
          }

          while (v668);
        }
      }

      break;
    case 16:
      v705 = &unk_28810E438;
      sub_271688200(a3, &v706, a4);
      v161 = *a2;
      v162 = v716;
      v163 = v706;
      if (!v706)
      {
        goto LABEL_856;
      }

      v164 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v164->__on_zero_shared)(v164);
          std::__shared_weak_count::__release_weak(v164);
        }

        v163 = v706;
        v165 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v165->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v166 = v163;
            (v165->__on_zero_shared)(v165);
            std::__shared_weak_count::__release_weak(v165);
            v163 = v166;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v163 + 96))(&v719);
      }

      else
      {
LABEL_856:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v534 = v711;
      if (!v711)
      {
        break;
      }

      v535 = v715;
      v536 = v708;
      if (v717 == 1 && v708)
      {
        v537 = v706;
        v538 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v538->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v539 = v537;
            (v538->__on_zero_shared)(v538);
            std::__shared_weak_count::__release_weak(v538);
            v537 = v539;
          }
        }

        (*(*v537 + 88))(v537, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v536 = v708;
      }

      v540 = (4 * v162);
      v541 = v534 - 1;
      if (!v541)
      {
        goto LABEL_872;
      }

      if (v540)
      {
        for (jj = 0; jj != v541; ++jj)
        {
          v543 = 4 * v540;
          v544 = v536;
          do
          {
            (*(*v161 + 128))(v161, v544);
            v544 += 2;
            v543 -= 4;
          }

          while (v543);
          v536 += 2 * v535;
        }

LABEL_872:
        if (v540)
        {
          v545 = 4 * v540;
          do
          {
            (*(*v161 + 128))(v161, v536);
            v536 += 2;
            v545 -= 4;
          }

          while (v545);
        }
      }

      break;
    case 17:
      v705 = &unk_28810E3B8;
      sub_27168879C(a3, &v706, a4);
      v227 = *a2;
      v228 = v716;
      v229 = v706;
      if (!v706)
      {
        goto LABEL_1090;
      }

      v230 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v230->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v230->__on_zero_shared)(v230);
          std::__shared_weak_count::__release_weak(v230);
        }

        v229 = v706;
        v231 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v231->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v232 = v229;
            (v231->__on_zero_shared)(v231);
            std::__shared_weak_count::__release_weak(v231);
            v229 = v232;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v229 + 96))(&v719);
      }

      else
      {
LABEL_1090:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v669 = v711;
      if (!v711)
      {
        break;
      }

      v670 = v715;
      v671 = v708;
      if (v717 == 1 && v708)
      {
        v672 = v706;
        v673 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v673->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v674 = v672;
            (v673->__on_zero_shared)(v673);
            std::__shared_weak_count::__release_weak(v673);
            v672 = v674;
          }
        }

        (*(*v672 + 88))(v672, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v671 = v708;
      }

      v675 = (3 * v228);
      v676 = v669 - 1;
      if (v669 == 1)
      {
        goto LABEL_1106;
      }

      if (v228)
      {
        v677 = 0;
        do
        {
          v678 = (3 * v228);
          v679 = v671;
          do
          {
            (*(*v227 + 80))(v227, v679);
            v679 = (v679 + 1);
            --v678;
          }

          while (v678);
          v671 = (v671 + v670);
          ++v677;
        }

        while (v677 != v676);
LABEL_1106:
        if (v228)
        {
          do
          {
            (*(*v227 + 80))(v227, v671);
            v671 = (v671 + 1);
            --v675;
          }

          while (v675);
        }
      }

      break;
    case 18:
      v705 = &unk_28810E338;
      sub_271688D34(a3, &v706, a4);
      v65 = *a2;
      v66 = v716;
      v67 = v706;
      if (!v706)
      {
        goto LABEL_539;
      }

      v68 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v68->__on_zero_shared)(v68);
          std::__shared_weak_count::__release_weak(v68);
        }

        v67 = v706;
        v69 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v70 = v67;
            (v69->__on_zero_shared)(v69);
            std::__shared_weak_count::__release_weak(v69);
            v67 = v70;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v67 + 96))(&v719);
      }

      else
      {
LABEL_539:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v347 = v711;
      if (!v711)
      {
        break;
      }

      v348 = v715;
      v349 = v708;
      if (v717 == 1 && v708)
      {
        v350 = v706;
        v351 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v351->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v352 = v350;
            (v351->__on_zero_shared)(v351);
            std::__shared_weak_count::__release_weak(v351);
            v350 = v352;
          }
        }

        (*(*v350 + 88))(v350, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v349 = v708;
      }

      v353 = v347 - 1;
      if (v347 == 1)
      {
        goto LABEL_555;
      }

      if (v66)
      {
        v354 = 0;
        do
        {
          v355 = 2 * (3 * v66);
          v356 = v349;
          do
          {
            (*(*v65 + 96))(v65, v356++);
            v355 -= 2;
          }

          while (v355);
          v349 += v348;
          ++v354;
        }

        while (v354 != v353);
LABEL_555:
        if (v66)
        {
          v357 = 2 * (3 * v66);
          do
          {
            (*(*v65 + 96))(v65, v349++);
            v357 -= 2;
          }

          while (v357);
        }
      }

      break;
    case 19:
      v705 = &unk_28810E2B8;
      sub_2716892D0(a3, &v706, a4);
      v17 = *a2;
      v18 = v716;
      v19 = v706;
      if (!v706)
      {
        goto LABEL_382;
      }

      v20 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v19 = v706;
        v21 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v22 = v19;
            (v21->__on_zero_shared)(v21);
            std::__shared_weak_count::__release_weak(v21);
            v19 = v22;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v19 + 96))(&v719);
      }

      else
      {
LABEL_382:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v257 = v711;
      if (!v711)
      {
        break;
      }

      v258 = v715;
      v259 = v708;
      if (v717 == 1 && v708)
      {
        v260 = v706;
        v261 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v261->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v262 = v260;
            (v261->__on_zero_shared)(v261);
            std::__shared_weak_count::__release_weak(v261);
            v260 = v262;
          }
        }

        (*(*v260 + 88))(v260, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v259 = v708;
      }

      v263 = v257 - 1;
      if (!v263)
      {
        goto LABEL_398;
      }

      if (v18)
      {
        v264 = 0;
        v265 = 2 * v258;
        do
        {
          v266 = 0;
          do
          {
            v704 = v259[v266];
            (*(*v17 + 96))(v17, &v704);
            ++v266;
          }

          while (3 * v18 != v266);
          v259 = (v259 + v265);
          ++v264;
        }

        while (v264 != v263);
LABEL_398:
        if (v18)
        {
          v267 = 2 * (3 * v18);
          do
          {
            v704 = *v259;
            (*(*v17 + 96))(v17, &v704);
            ++v259;
            v267 -= 2;
          }

          while (v267);
        }
      }

      break;
    case 20:
      v705 = &unk_28810E178;
      sub_27168986C(a3, &v706, a4);
      v209 = *a2;
      v210 = v716;
      v211 = v706;
      if (!v706)
      {
        goto LABEL_1030;
      }

      v212 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v212->__on_zero_shared)(v212);
          std::__shared_weak_count::__release_weak(v212);
        }

        v211 = v706;
        v213 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v213->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v214 = v211;
            (v213->__on_zero_shared)(v213);
            std::__shared_weak_count::__release_weak(v213);
            v211 = v214;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v211 + 96))(&v719);
      }

      else
      {
LABEL_1030:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v634 = v711;
      if (!v711)
      {
        break;
      }

      v635 = v715;
      v636 = v708;
      if (v717 == 1 && v708)
      {
        v637 = v706;
        v638 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v638->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v639 = v637;
            (v638->__on_zero_shared)(v638);
            std::__shared_weak_count::__release_weak(v638);
            v637 = v639;
          }
        }

        (*(*v637 + 88))(v637, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v636 = v708;
      }

      v640 = v634 - 1;
      if (v634 == 1)
      {
        goto LABEL_1046;
      }

      if (v210)
      {
        v641 = 0;
        do
        {
          v642 = 4 * (3 * v210);
          v643 = v636;
          do
          {
            (*(*v209 + 128))(v209, v643);
            v643 += 2;
            v642 -= 4;
          }

          while (v642);
          v636 += 2 * v635;
          ++v641;
        }

        while (v641 != v640);
LABEL_1046:
        if (v210)
        {
          v644 = 4 * (3 * v210);
          do
          {
            (*(*v209 + 128))(v209, v636);
            v636 += 2;
            v644 -= 4;
          }

          while (v644);
        }
      }

      break;
    case 21:
      v705 = &unk_28810E0B8;
      sub_2715EFF9C(a3, &v706, a4);
      v239 = *a2;
      v240 = v716;
      v241 = v706;
      if (!v706)
      {
        goto LABEL_1129;
      }

      v242 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v242->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v242->__on_zero_shared)(v242);
          std::__shared_weak_count::__release_weak(v242);
        }

        v241 = v706;
        v243 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v243->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v244 = v241;
            (v243->__on_zero_shared)(v243);
            std::__shared_weak_count::__release_weak(v243);
            v241 = v244;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v241 + 96))(&v719);
      }

      else
      {
LABEL_1129:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v691 = v711;
      if (!v711)
      {
        break;
      }

      v692 = v715;
      v693 = v708;
      if (v717 == 1 && v708)
      {
        v694 = v706;
        v695 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v695->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v696 = v694;
            (v695->__on_zero_shared)(v695);
            std::__shared_weak_count::__release_weak(v695);
            v694 = v696;
          }
        }

        (*(*v694 + 88))(v694, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v693 = v708;
      }

      v697 = (3 * v240);
      v698 = v691 - 1;
      if (v691 == 1)
      {
        goto LABEL_1145;
      }

      if (v240)
      {
        v699 = 0;
        do
        {
          v700 = (3 * v240);
          v701 = v693;
          do
          {
            (*(*v239 + 80))(v239, v701);
            v701 = (v701 + 1);
            --v700;
          }

          while (v700);
          v693 = (v693 + v692);
          ++v699;
        }

        while (v699 != v698);
LABEL_1145:
        if (v240)
        {
          do
          {
            (*(*v239 + 80))(v239, v693);
            v693 = (v693 + 1);
            --v697;
          }

          while (v697);
        }
      }

      break;
    case 22:
      v705 = &unk_28810DFF8;
      sub_271689E08(a3, &v706, a4);
      v83 = *a2;
      v84 = v716;
      v85 = v706;
      if (!v706)
      {
        goto LABEL_599;
      }

      v86 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v86->__on_zero_shared)(v86);
          std::__shared_weak_count::__release_weak(v86);
        }

        v85 = v706;
        v87 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v87->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v88 = v85;
            (v87->__on_zero_shared)(v87);
            std::__shared_weak_count::__release_weak(v87);
            v85 = v88;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v85 + 96))(&v719);
      }

      else
      {
LABEL_599:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v382 = v711;
      if (!v711)
      {
        break;
      }

      v383 = v715;
      v384 = v708;
      if (v717 == 1 && v708)
      {
        v385 = v706;
        v386 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v386->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v387 = v385;
            (v386->__on_zero_shared)(v386);
            std::__shared_weak_count::__release_weak(v386);
            v385 = v387;
          }
        }

        (*(*v385 + 88))(v385, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v384 = v708;
      }

      v388 = v382 - 1;
      if (v382 == 1)
      {
        goto LABEL_615;
      }

      if (v84)
      {
        v389 = 0;
        do
        {
          v390 = 2 * (3 * v84);
          v391 = v384;
          do
          {
            (*(*v83 + 96))(v83, v391++);
            v390 -= 2;
          }

          while (v390);
          v384 += v383;
          ++v389;
        }

        while (v389 != v388);
LABEL_615:
        if (v84)
        {
          v392 = 2 * (3 * v84);
          do
          {
            (*(*v83 + 96))(v83, v384++);
            v392 -= 2;
          }

          while (v392);
        }
      }

      break;
    case 23:
      v705 = &unk_28810DF78;
      sub_27168A3A4(a3, &v706, a4);
      v233 = *a2;
      v234 = v716;
      v235 = v706;
      if (!v706)
      {
        goto LABEL_1109;
      }

      v236 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v236->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v236->__on_zero_shared)(v236);
          std::__shared_weak_count::__release_weak(v236);
        }

        v235 = v706;
        v237 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v237->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v238 = v235;
            (v237->__on_zero_shared)(v237);
            std::__shared_weak_count::__release_weak(v237);
            v235 = v238;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v235 + 96))(&v719);
      }

      else
      {
LABEL_1109:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v680 = v711;
      if (!v711)
      {
        break;
      }

      v681 = v715;
      v682 = v708;
      if (v717 == 1 && v708)
      {
        v683 = v706;
        v684 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v684->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v685 = v683;
            (v684->__on_zero_shared)(v684);
            std::__shared_weak_count::__release_weak(v684);
            v683 = v685;
          }
        }

        (*(*v683 + 88))(v683, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v682 = v708;
      }

      v686 = v680 - 1;
      if (!v686)
      {
        goto LABEL_1125;
      }

      if (v234)
      {
        v687 = 0;
        v688 = 2 * v681;
        do
        {
          v689 = 0;
          do
          {
            v704 = v682[v689];
            (*(*v233 + 96))(v233, &v704);
            ++v689;
          }

          while (3 * v234 != v689);
          v682 = (v682 + v688);
          ++v687;
        }

        while (v687 != v686);
LABEL_1125:
        if (v234)
        {
          v690 = 2 * (3 * v234);
          do
          {
            v704 = *v682;
            (*(*v233 + 96))(v233, &v704);
            ++v682;
            v690 -= 2;
          }

          while (v690);
        }
      }

      break;
    case 24:
      v705 = &unk_28810DEF8;
      sub_27168A940(a3, &v706, a4);
      v41 = *a2;
      v42 = v716;
      v43 = v706;
      if (!v706)
      {
        goto LABEL_460;
      }

      v44 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
        }

        v43 = v706;
        v45 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v46 = v43;
            (v45->__on_zero_shared)(v45);
            std::__shared_weak_count::__release_weak(v45);
            v43 = v46;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v43 + 96))(&v719);
      }

      else
      {
LABEL_460:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v301 = v711;
      if (!v711)
      {
        break;
      }

      v302 = v715;
      v303 = v708;
      if (v717 == 1 && v708)
      {
        v304 = v706;
        v305 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v305->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v306 = v304;
            (v305->__on_zero_shared)(v305);
            std::__shared_weak_count::__release_weak(v305);
            v304 = v306;
          }
        }

        (*(*v304 + 88))(v304, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v303 = v708;
      }

      v307 = v301 - 1;
      if (v301 == 1)
      {
        goto LABEL_476;
      }

      if (v42)
      {
        v308 = 0;
        do
        {
          v309 = 4 * (3 * v42);
          v310 = v303;
          do
          {
            (*(*v41 + 128))(v41, v310);
            v310 += 2;
            v309 -= 4;
          }

          while (v309);
          v303 += 2 * v302;
          ++v308;
        }

        while (v308 != v307);
LABEL_476:
        if (v42)
        {
          v311 = 4 * (3 * v42);
          do
          {
            (*(*v41 + 128))(v41, v303);
            v303 += 2;
            v311 -= 4;
          }

          while (v311);
        }
      }

      break;
    case 25:
      v705 = &unk_28810DE38;
      sub_27168AEDC(a3, &v706, a4);
      v23 = *a2;
      v24 = v716;
      v25 = v706;
      if (!v706)
      {
        goto LABEL_402;
      }

      v26 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }

        v25 = v706;
        v27 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v28 = v25;
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
            v25 = v28;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v25 + 96))(&v719);
      }

      else
      {
LABEL_402:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v268 = v711;
      if (!v711)
      {
        break;
      }

      v269 = v715;
      v270 = v708;
      if (v717 == 1 && v708)
      {
        v271 = v706;
        v272 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v272->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v273 = v271;
            (v272->__on_zero_shared)(v272);
            std::__shared_weak_count::__release_weak(v272);
            v271 = v273;
          }
        }

        (*(*v271 + 88))(v271, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v270 = v708;
      }

      v274 = (4 * v24);
      v275 = v268 - 1;
      if (!v275)
      {
        goto LABEL_418;
      }

      if (v274)
      {
        for (kk = 0; kk != v275; ++kk)
        {
          v277 = v274;
          v278 = v270;
          do
          {
            (*(*v23 + 80))(v23, v278);
            v278 = (v278 + 1);
            --v277;
          }

          while (v277);
          v270 = (v270 + v269);
        }

LABEL_418:
        if (v274)
        {
          do
          {
            (*(*v23 + 80))(v23, v270);
            v270 = (v270 + 1);
            --v274;
          }

          while (v274);
        }
      }

      break;
    case 26:
      v705 = &unk_28810DDB8;
      sub_27168B474(a3, &v706, a4);
      v89 = *a2;
      v90 = v716;
      v91 = v706;
      if (!v706)
      {
        goto LABEL_619;
      }

      v92 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v92->__on_zero_shared)(v92);
          std::__shared_weak_count::__release_weak(v92);
        }

        v91 = v706;
        v93 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v94 = v91;
            (v93->__on_zero_shared)(v93);
            std::__shared_weak_count::__release_weak(v93);
            v91 = v94;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v91 + 96))(&v719);
      }

      else
      {
LABEL_619:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v393 = v711;
      if (!v711)
      {
        break;
      }

      v394 = v715;
      v395 = v708;
      if (v717 == 1 && v708)
      {
        v396 = v706;
        v397 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v397->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v398 = v396;
            (v397->__on_zero_shared)(v397);
            std::__shared_weak_count::__release_weak(v397);
            v396 = v398;
          }
        }

        (*(*v396 + 88))(v396, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v395 = v708;
      }

      v399 = (4 * v90);
      v400 = v393 - 1;
      if (!v400)
      {
        goto LABEL_635;
      }

      if (v399)
      {
        for (mm = 0; mm != v400; ++mm)
        {
          v402 = 2 * v399;
          v403 = v395;
          do
          {
            (*(*v89 + 96))(v89, v403++);
            v402 -= 2;
          }

          while (v402);
          v395 += v394;
        }

LABEL_635:
        if (v399)
        {
          v404 = 2 * v399;
          do
          {
            (*(*v89 + 96))(v89, v395++);
            v404 -= 2;
          }

          while (v404);
        }
      }

      break;
    case 27:
      v705 = &unk_28810DD38;
      sub_27168BA10(a3, &v706, a4);
      v11 = *a2;
      v12 = v716;
      v13 = v706;
      if (!v706)
      {
        goto LABEL_362;
      }

      v14 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        v13 = v706;
        v15 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v16 = v13;
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
            v13 = v16;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v13 + 96))(&v719);
      }

      else
      {
LABEL_362:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v245 = v711;
      if (!v711)
      {
        break;
      }

      v246 = v715;
      v247 = v708;
      if (v717 == 1 && v708)
      {
        v248 = v706;
        v249 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v249->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v250 = v248;
            (v249->__on_zero_shared)(v249);
            std::__shared_weak_count::__release_weak(v249);
            v248 = v250;
          }
        }

        (*(*v248 + 88))(v248, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v247 = v708;
      }

      v251 = (4 * v12);
      v252 = v245 - 1;
      if (!v252)
      {
        goto LABEL_378;
      }

      if (v251)
      {
        v253 = 0;
        v254 = 2 * v246;
        do
        {
          v255 = 0;
          do
          {
            v704 = v247[v255];
            (*(*v11 + 96))(v11, &v704);
            ++v255;
          }

          while (v251 != v255);
          v247 = (v247 + v254);
          ++v253;
        }

        while (v253 != v252);
LABEL_378:
        if (v251)
        {
          v256 = 2 * v251;
          do
          {
            v704 = *v247;
            (*(*v11 + 96))(v11, &v704);
            ++v247;
            v256 -= 2;
          }

          while (v256);
        }
      }

      break;
    case 28:
      v705 = &unk_28810DCB8;
      sub_27168BFAC(a3, &v706, a4);
      v113 = *a2;
      v114 = v716;
      v115 = v706;
      if (!v706)
      {
        goto LABEL_698;
      }

      v116 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v116->__on_zero_shared)(v116);
          std::__shared_weak_count::__release_weak(v116);
        }

        v115 = v706;
        v117 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v118 = v115;
            (v117->__on_zero_shared)(v117);
            std::__shared_weak_count::__release_weak(v117);
            v115 = v118;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v115 + 96))(&v719);
      }

      else
      {
LABEL_698:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v440 = v711;
      if (!v711)
      {
        break;
      }

      v441 = v715;
      v442 = v708;
      if (v717 == 1 && v708)
      {
        v443 = v706;
        v444 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v444->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v445 = v443;
            (v444->__on_zero_shared)(v444);
            std::__shared_weak_count::__release_weak(v444);
            v443 = v445;
          }
        }

        (*(*v443 + 88))(v443, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v442 = v708;
      }

      v446 = (4 * v114);
      v447 = v440 - 1;
      if (!v447)
      {
        goto LABEL_714;
      }

      if (v446)
      {
        for (nn = 0; nn != v447; ++nn)
        {
          v449 = 4 * v446;
          v450 = v442;
          do
          {
            (*(*v113 + 128))(v113, v450);
            v450 += 2;
            v449 -= 4;
          }

          while (v449);
          v442 += 2 * v441;
        }

LABEL_714:
        if (v446)
        {
          v451 = 4 * v446;
          do
          {
            (*(*v113 + 128))(v113, v442);
            v442 += 2;
            v451 -= 4;
          }

          while (v451);
        }
      }

      break;
    case 29:
      v705 = &unk_28810DC38;
      sub_27168C548(a3, &v706, a4);
      v35 = *a2;
      v36 = v716;
      v37 = v706;
      if (!v706)
      {
        goto LABEL_441;
      }

      v38 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v38->__on_zero_shared)(v38);
          std::__shared_weak_count::__release_weak(v38);
        }

        v37 = v706;
        v39 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v40 = v37;
            (v39->__on_zero_shared)(v39);
            std::__shared_weak_count::__release_weak(v39);
            v37 = v40;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v37 + 96))(&v719);
      }

      else
      {
LABEL_441:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v290 = v711;
      if (!v711)
      {
        break;
      }

      v291 = v715;
      v292 = v708;
      if (v717 == 1 && v708)
      {
        v293 = v706;
        v294 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v294->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v295 = v293;
            (v294->__on_zero_shared)(v294);
            std::__shared_weak_count::__release_weak(v294);
            v293 = v295;
          }
        }

        (*(*v293 + 88))(v293, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v292 = v708;
      }

      v296 = (4 * v36);
      v297 = v290 - 1;
      if (!v297)
      {
        goto LABEL_457;
      }

      if (v296)
      {
        for (i1 = 0; i1 != v297; ++i1)
        {
          v299 = v296;
          v300 = v292;
          do
          {
            (*(*v35 + 80))(v35, v300);
            v300 = (v300 + 1);
            --v299;
          }

          while (v299);
          v292 = (v292 + v291);
        }

LABEL_457:
        if (v296)
        {
          do
          {
            (*(*v35 + 80))(v35, v292);
            v292 = (v292 + 1);
            --v296;
          }

          while (v296);
        }
      }

      break;
    case 30:
      v705 = &unk_28810DAF8;
      sub_27168CAE0(a3, &v706, a4);
      v131 = *a2;
      v132 = v716;
      v133 = v706;
      if (!v706)
      {
        goto LABEL_758;
      }

      v134 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v134->__on_zero_shared)(v134);
          std::__shared_weak_count::__release_weak(v134);
        }

        v133 = v706;
        v135 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v135->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v136 = v133;
            (v135->__on_zero_shared)(v135);
            std::__shared_weak_count::__release_weak(v135);
            v133 = v136;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v133 + 96))(&v719);
      }

      else
      {
LABEL_758:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v476 = v711;
      if (!v711)
      {
        break;
      }

      v477 = v715;
      v478 = v708;
      if (v717 == 1 && v708)
      {
        v479 = v706;
        v480 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v480->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v481 = v479;
            (v480->__on_zero_shared)(v480);
            std::__shared_weak_count::__release_weak(v480);
            v479 = v481;
          }
        }

        (*(*v479 + 88))(v479, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v478 = v708;
      }

      v482 = (4 * v132);
      v483 = v476 - 1;
      if (!v483)
      {
        goto LABEL_774;
      }

      if (v482)
      {
        for (i2 = 0; i2 != v483; ++i2)
        {
          v485 = 2 * v482;
          v486 = v478;
          do
          {
            (*(*v131 + 96))(v131, v486++);
            v485 -= 2;
          }

          while (v485);
          v478 += v477;
        }

LABEL_774:
        if (v482)
        {
          v487 = 2 * v482;
          do
          {
            (*(*v131 + 96))(v131, v478++);
            v487 -= 2;
          }

          while (v487);
        }
      }

      break;
    case 31:
      v705 = &unk_28810DA38;
      sub_27168D07C(a3, &v706, a4);
      v95 = *a2;
      v96 = v716;
      v97 = v706;
      if (!v706)
      {
        goto LABEL_639;
      }

      v98 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v98->__on_zero_shared)(v98);
          std::__shared_weak_count::__release_weak(v98);
        }

        v97 = v706;
        v99 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v99->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v100 = v97;
            (v99->__on_zero_shared)(v99);
            std::__shared_weak_count::__release_weak(v99);
            v97 = v100;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v97 + 96))(&v719);
      }

      else
      {
LABEL_639:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v405 = v711;
      if (!v711)
      {
        break;
      }

      v406 = v715;
      v407 = v708;
      if (v717 == 1 && v708)
      {
        v408 = v706;
        v409 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v409->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v410 = v408;
            (v409->__on_zero_shared)(v409);
            std::__shared_weak_count::__release_weak(v409);
            v408 = v410;
          }
        }

        (*(*v408 + 88))(v408, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v407 = v708;
      }

      v411 = (4 * v96);
      v412 = v405 - 1;
      if (!v412)
      {
        goto LABEL_655;
      }

      if (v411)
      {
        v413 = 0;
        v414 = 2 * v406;
        do
        {
          v415 = 0;
          do
          {
            v704 = v407[v415];
            (*(*v95 + 96))(v95, &v704);
            ++v415;
          }

          while (v411 != v415);
          v407 = (v407 + v414);
          ++v413;
        }

        while (v413 != v412);
LABEL_655:
        if (v411)
        {
          v416 = 2 * v411;
          do
          {
            v704 = *v407;
            (*(*v95 + 96))(v95, &v704);
            ++v407;
            v416 -= 2;
          }

          while (v416);
        }
      }

      break;
    case 32:
      v705 = &unk_28810D978;
      sub_27168D618(a3, &v706, a4);
      v143 = *a2;
      v144 = v716;
      v145 = v706;
      if (!v706)
      {
        goto LABEL_798;
      }

      v146 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v146->__on_zero_shared)(v146);
          std::__shared_weak_count::__release_weak(v146);
        }

        v145 = v706;
        v147 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v148 = v145;
            (v147->__on_zero_shared)(v147);
            std::__shared_weak_count::__release_weak(v147);
            v145 = v148;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v145 + 96))(&v719);
      }

      else
      {
LABEL_798:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v500 = v711;
      if (!v711)
      {
        break;
      }

      v501 = v715;
      v502 = v708;
      if (v717 == 1 && v708)
      {
        v503 = v706;
        v504 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v504->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v505 = v503;
            (v504->__on_zero_shared)(v504);
            std::__shared_weak_count::__release_weak(v504);
            v503 = v505;
          }
        }

        (*(*v503 + 88))(v503, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v502 = v708;
      }

      v506 = (4 * v144);
      v507 = v500 - 1;
      if (!v507)
      {
        goto LABEL_814;
      }

      if (v506)
      {
        for (i3 = 0; i3 != v507; ++i3)
        {
          v509 = 4 * v506;
          v510 = v502;
          do
          {
            (*(*v143 + 128))(v143, v510);
            v510 += 2;
            v509 -= 4;
          }

          while (v509);
          v502 += 2 * v501;
        }

LABEL_814:
        if (v506)
        {
          v511 = 4 * v506;
          do
          {
            (*(*v143 + 128))(v143, v502);
            v502 += 2;
            v511 -= 4;
          }

          while (v511);
        }
      }

      break;
    case 33:
      v705 = &unk_28810D8F8;
      sub_27168DBB4(a3, &v706, a4);
      v203 = *a2;
      v204 = v716;
      v205 = v706;
      if (!v706)
      {
        goto LABEL_1011;
      }

      v206 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v206->__on_zero_shared)(v206);
          std::__shared_weak_count::__release_weak(v206);
        }

        v205 = v706;
        v207 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v207->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v208 = v205;
            (v207->__on_zero_shared)(v207);
            std::__shared_weak_count::__release_weak(v207);
            v205 = v208;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v205 + 96))(&v719);
      }

      else
      {
LABEL_1011:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v623 = v711;
      if (!v711)
      {
        break;
      }

      v624 = v715;
      v625 = v708;
      if (v717 == 1 && v708)
      {
        v626 = v706;
        v627 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v627->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v628 = v626;
            (v627->__on_zero_shared)(v627);
            std::__shared_weak_count::__release_weak(v627);
            v626 = v628;
          }
        }

        (*(*v626 + 88))(v626, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v625 = v708;
      }

      v629 = (4 * v204);
      v630 = v623 - 1;
      if (!v630)
      {
        goto LABEL_1027;
      }

      if (v629)
      {
        for (i4 = 0; i4 != v630; ++i4)
        {
          v632 = v629;
          v633 = v625;
          do
          {
            (*(*v203 + 80))(v203, v633);
            v633 = (v633 + 1);
            --v632;
          }

          while (v632);
          v625 = (v625 + v624);
        }

LABEL_1027:
        if (v629)
        {
          do
          {
            (*(*v203 + 80))(v203, v625);
            v625 = (v625 + 1);
            --v629;
          }

          while (v629);
        }
      }

      break;
    case 34:
      v705 = &unk_28810D878;
      sub_27168E14C(a3, &v706, a4);
      v137 = *a2;
      v138 = v716;
      v139 = v706;
      if (!v706)
      {
        goto LABEL_778;
      }

      v140 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v140->__on_zero_shared)(v140);
          std::__shared_weak_count::__release_weak(v140);
        }

        v139 = v706;
        v141 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v142 = v139;
            (v141->__on_zero_shared)(v141);
            std::__shared_weak_count::__release_weak(v141);
            v139 = v142;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v139 + 96))(&v719);
      }

      else
      {
LABEL_778:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v488 = v711;
      if (!v711)
      {
        break;
      }

      v489 = v715;
      v490 = v708;
      if (v717 == 1 && v708)
      {
        v491 = v706;
        v492 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v492->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v493 = v491;
            (v492->__on_zero_shared)(v492);
            std::__shared_weak_count::__release_weak(v492);
            v491 = v493;
          }
        }

        (*(*v491 + 88))(v491, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v490 = v708;
      }

      v494 = (4 * v138);
      v495 = v488 - 1;
      if (!v495)
      {
        goto LABEL_794;
      }

      if (v494)
      {
        for (i5 = 0; i5 != v495; ++i5)
        {
          v497 = 2 * v494;
          v498 = v490;
          do
          {
            (*(*v137 + 96))(v137, v498++);
            v497 -= 2;
          }

          while (v497);
          v490 += v489;
        }

LABEL_794:
        if (v494)
        {
          v499 = 2 * v494;
          do
          {
            (*(*v137 + 96))(v137, v490++);
            v499 -= 2;
          }

          while (v499);
        }
      }

      break;
    case 35:
      v705 = &unk_28810D7F8;
      sub_27168E6E8(a3, &v706, a4);
      v125 = *a2;
      v126 = v716;
      v127 = v706;
      if (!v706)
      {
        goto LABEL_738;
      }

      v128 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v128->__on_zero_shared)(v128);
          std::__shared_weak_count::__release_weak(v128);
        }

        v127 = v706;
        v129 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v129->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v130 = v127;
            (v129->__on_zero_shared)(v129);
            std::__shared_weak_count::__release_weak(v129);
            v127 = v130;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v127 + 96))(&v719);
      }

      else
      {
LABEL_738:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v464 = v711;
      if (!v711)
      {
        break;
      }

      v465 = v715;
      v466 = v708;
      if (v717 == 1 && v708)
      {
        v467 = v706;
        v468 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v468->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v469 = v467;
            (v468->__on_zero_shared)(v468);
            std::__shared_weak_count::__release_weak(v468);
            v467 = v469;
          }
        }

        (*(*v467 + 88))(v467, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v466 = v708;
      }

      v470 = (4 * v126);
      v471 = v464 - 1;
      if (!v471)
      {
        goto LABEL_754;
      }

      if (v470)
      {
        v472 = 0;
        v473 = 2 * v465;
        do
        {
          v474 = 0;
          do
          {
            v704 = v466[v474];
            (*(*v125 + 96))(v125, &v704);
            ++v474;
          }

          while (v470 != v474);
          v466 = (v466 + v473);
          ++v472;
        }

        while (v472 != v471);
LABEL_754:
        if (v470)
        {
          v475 = 2 * v470;
          do
          {
            v704 = *v466;
            (*(*v125 + 96))(v125, &v704);
            ++v466;
            v475 -= 2;
          }

          while (v475);
        }
      }

      break;
    case 36:
      v705 = &unk_28810D778;
      sub_27168EC84(a3, &v706, a4);
      v119 = *a2;
      v120 = v716;
      v121 = v706;
      if (!v706)
      {
        goto LABEL_718;
      }

      v122 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v122->__on_zero_shared)(v122);
          std::__shared_weak_count::__release_weak(v122);
        }

        v121 = v706;
        v123 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v124 = v121;
            (v123->__on_zero_shared)(v123);
            std::__shared_weak_count::__release_weak(v123);
            v121 = v124;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v121 + 96))(&v719);
      }

      else
      {
LABEL_718:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v452 = v711;
      if (!v711)
      {
        break;
      }

      v453 = v715;
      v454 = v708;
      if (v717 == 1 && v708)
      {
        v455 = v706;
        v456 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v456->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v457 = v455;
            (v456->__on_zero_shared)(v456);
            std::__shared_weak_count::__release_weak(v456);
            v455 = v457;
          }
        }

        (*(*v455 + 88))(v455, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v454 = v708;
      }

      v458 = (4 * v120);
      v459 = v452 - 1;
      if (!v459)
      {
        goto LABEL_734;
      }

      if (v458)
      {
        for (i6 = 0; i6 != v459; ++i6)
        {
          v461 = 4 * v458;
          v462 = v454;
          do
          {
            (*(*v119 + 128))(v119, v462);
            v462 += 2;
            v461 -= 4;
          }

          while (v461);
          v454 += 2 * v453;
        }

LABEL_734:
        if (v458)
        {
          v463 = 4 * v458;
          do
          {
            (*(*v119 + 128))(v119, v454);
            v454 += 2;
            v463 -= 4;
          }

          while (v463);
        }
      }

      break;
    case 37:
      v705 = &unk_28810D6B8;
      sub_27168F220(a3, &v706, a4);
      v185 = *a2;
      v186 = v716;
      v187 = v706;
      if (!v706)
      {
        goto LABEL_952;
      }

      v188 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v188->__on_zero_shared)(v188);
          std::__shared_weak_count::__release_weak(v188);
        }

        v187 = v706;
        v189 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v189->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v190 = v187;
            (v189->__on_zero_shared)(v189);
            std::__shared_weak_count::__release_weak(v189);
            v187 = v190;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v187 + 96))(&v719);
      }

      else
      {
LABEL_952:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v590 = v711;
      if (!v711)
      {
        break;
      }

      v591 = v715;
      v592 = v708;
      if (v717 == 1 && v708)
      {
        v593 = v706;
        v594 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v594->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v595 = v593;
            (v594->__on_zero_shared)(v594);
            std::__shared_weak_count::__release_weak(v594);
            v593 = v595;
          }
        }

        (*(*v593 + 88))(v593, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v592 = v708;
      }

      v596 = (4 * v186);
      v597 = v590 - 1;
      if (!v597)
      {
        goto LABEL_968;
      }

      if (v596)
      {
        for (i7 = 0; i7 != v597; ++i7)
        {
          v599 = v596;
          v600 = v592;
          do
          {
            (*(*v185 + 80))(v185, v600);
            v600 = (v600 + 1);
            --v599;
          }

          while (v599);
          v592 = (v592 + v591);
        }

LABEL_968:
        if (v596)
        {
          do
          {
            (*(*v185 + 80))(v185, v592);
            v592 = (v592 + 1);
            --v596;
          }

          while (v596);
        }
      }

      break;
    case 38:
      v705 = &unk_28810D5F8;
      sub_27168F7B8(a3, &v706, a4);
      v215 = *a2;
      v216 = v716;
      v217 = v706;
      if (!v706)
      {
        goto LABEL_1050;
      }

      v218 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v218->__on_zero_shared)(v218);
          std::__shared_weak_count::__release_weak(v218);
        }

        v217 = v706;
        v219 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v219->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v220 = v217;
            (v219->__on_zero_shared)(v219);
            std::__shared_weak_count::__release_weak(v219);
            v217 = v220;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v217 + 96))(&v719);
      }

      else
      {
LABEL_1050:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v645 = v711;
      if (!v711)
      {
        break;
      }

      v646 = v715;
      v647 = v708;
      if (v717 == 1 && v708)
      {
        v648 = v706;
        v649 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v649->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v650 = v648;
            (v649->__on_zero_shared)(v649);
            std::__shared_weak_count::__release_weak(v649);
            v648 = v650;
          }
        }

        (*(*v648 + 88))(v648, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v647 = v708;
      }

      v651 = (4 * v216);
      v652 = v645 - 1;
      if (!v652)
      {
        goto LABEL_1066;
      }

      if (v651)
      {
        for (i8 = 0; i8 != v652; ++i8)
        {
          v654 = 2 * v651;
          v655 = v647;
          do
          {
            (*(*v215 + 96))(v215, v655++);
            v654 -= 2;
          }

          while (v654);
          v647 += v646;
        }

LABEL_1066:
        if (v651)
        {
          v656 = 2 * v651;
          do
          {
            (*(*v215 + 96))(v215, v647++);
            v656 -= 2;
          }

          while (v656);
        }
      }

      break;
    case 39:
      v705 = &unk_28810D578;
      sub_27168FD54(a3, &v706, a4);
      v77 = *a2;
      v78 = v716;
      v79 = v706;
      if (!v706)
      {
        goto LABEL_579;
      }

      v80 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v80->__on_zero_shared)(v80);
          std::__shared_weak_count::__release_weak(v80);
        }

        v79 = v706;
        v81 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v82 = v79;
            (v81->__on_zero_shared)(v81);
            std::__shared_weak_count::__release_weak(v81);
            v79 = v82;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v79 + 96))(&v719);
      }

      else
      {
LABEL_579:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v370 = v711;
      if (!v711)
      {
        break;
      }

      v371 = v715;
      v372 = v708;
      if (v717 == 1 && v708)
      {
        v373 = v706;
        v374 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v374->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v375 = v373;
            (v374->__on_zero_shared)(v374);
            std::__shared_weak_count::__release_weak(v374);
            v373 = v375;
          }
        }

        (*(*v373 + 88))(v373, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v372 = v708;
      }

      v376 = (4 * v78);
      v377 = v370 - 1;
      if (!v377)
      {
        goto LABEL_595;
      }

      if (v376)
      {
        v378 = 0;
        v379 = 2 * v371;
        do
        {
          v380 = 0;
          do
          {
            v704 = v372[v380];
            (*(*v77 + 96))(v77, &v704);
            ++v380;
          }

          while (v376 != v380);
          v372 = (v372 + v379);
          ++v378;
        }

        while (v378 != v377);
LABEL_595:
        if (v376)
        {
          v381 = 2 * v376;
          do
          {
            v704 = *v372;
            (*(*v77 + 96))(v77, &v704);
            ++v372;
            v381 -= 2;
          }

          while (v381);
        }
      }

      break;
    case 40:
      v705 = &unk_28810D438;
      sub_2716902F0(a3, &v706, a4);
      v59 = *a2;
      v60 = v716;
      v61 = v706;
      if (!v706)
      {
        goto LABEL_519;
      }

      v62 = v707;
      if (v707)
      {
        atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v62->__on_zero_shared)(v62);
          std::__shared_weak_count::__release_weak(v62);
        }

        v61 = v706;
        v63 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v64 = v61;
            (v63->__on_zero_shared)(v63);
            std::__shared_weak_count::__release_weak(v63);
            v61 = v64;
          }
        }
      }

      if (v718 == 1)
      {
        (*(*v61 + 96))(&v719);
      }

      else
      {
LABEL_519:
        v719 = 0;
      }

      if (!v709)
      {
        break;
      }

      if (!v710)
      {
        break;
      }

      v335 = v711;
      if (!v711)
      {
        break;
      }

      v336 = v715;
      v337 = v708;
      if (v717 == 1 && v708)
      {
        v338 = v706;
        v339 = v707;
        if (v707)
        {
          atomic_fetch_add_explicit(&v707->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v339->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v340 = v338;
            (v339->__on_zero_shared)(v339);
            std::__shared_weak_count::__release_weak(v339);
            v338 = v340;
          }
        }

        (*(*v338 + 88))(v338, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v337 = v708;
      }

      v341 = (4 * v60);
      v342 = v335 - 1;
      if (!v342)
      {
        goto LABEL_535;
      }

      if (v341)
      {
        for (i9 = 0; i9 != v342; ++i9)
        {
          v344 = 4 * v341;
          v345 = v337;
          do
          {
            (*(*v59 + 128))(v59, v345);
            v345 += 2;
            v344 -= 4;
          }

          while (v344);
          v337 += 2 * v336;
        }

LABEL_535:
        if (v341)
        {
          v346 = 4 * v341;
          do
          {
            (*(*v59 + 128))(v59, v337);
            v337 += 2;
            v346 -= 4;
          }

          while (v346);
        }
      }

      break;
    default:
      return;
  }

  v702 = v719;
  v719 = 0;
  if (v702)
  {
    (*(*v702 + 8))(v702);
  }

  v703 = v707;
  if (v707)
  {
    if (!atomic_fetch_add(&v707->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v703->__on_zero_shared)(v703);
      std::__shared_weak_count::__release_weak(v703);
    }
  }
}