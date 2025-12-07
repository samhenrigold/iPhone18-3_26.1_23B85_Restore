void sub_27169F294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = a22;
  a22 = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_271317FB8(&a12);
  _Unwind_Resume(a1);
}

void sub_2716A016C(int a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      sub_2715EF504(a3, &v691, a4);
      v5 = *a2;
      v6 = v694;
      v7 = v691;
      if (!v691)
      {
        goto LABEL_860;
      }

      v8 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v7 = v691;
        v9 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v10 = v7;
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
            v7 = v10;
          }
        }
      }

      if (BYTE1(v698) == 1)
      {
        (*(*v7 + 96))(&v703);
      }

      else
      {
LABEL_860:
        v703 = 0;
      }

      if (v694)
      {
        v484 = v695;
        if (v695)
        {
          v485 = v693;
          if (v698 == 1 && v693)
          {
            v486 = v691;
            v487 = v692;
            if (v692)
            {
              atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v487->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v488 = v486;
                (v487->__on_zero_shared)(v487);
                std::__shared_weak_count::__release_weak(v487);
                v486 = v488;
              }
            }

            (*(*v486 + 88))(v486, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v485 = v693;
          }

          if (v484 != 1)
          {
            v704 = v485;
            v705 = v6;
            sub_271828638(v5, &v704);
          }

          v704 = v485;
          v705 = v6;
          sub_271828638(v5, &v704);
        }
      }

      goto LABEL_1313;
    case 2:
      sub_2715EFA94(a3, &v691, a4);
      v155 = *a2;
      v156 = v694;
      v157 = v691;
      if (!v691)
      {
        goto LABEL_848;
      }

      v158 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v158->__on_zero_shared)(v158);
          std::__shared_weak_count::__release_weak(v158);
        }

        v157 = v691;
        v159 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v160 = v157;
            (v159->__on_zero_shared)(v159);
            std::__shared_weak_count::__release_weak(v159);
            v157 = v160;
          }
        }
      }

      if (BYTE1(v698) == 1)
      {
        (*(*v157 + 96))(&v703);
      }

      else
      {
LABEL_848:
        v703 = 0;
      }

      if (v694)
      {
        v479 = v695;
        if (v695)
        {
          v480 = v693;
          if (v698 == 1 && v693)
          {
            v481 = v691;
            v482 = v692;
            if (v692)
            {
              atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v482->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v483 = v481;
                (v482->__on_zero_shared)(v482);
                std::__shared_weak_count::__release_weak(v482);
                v481 = v483;
              }
            }

            (*(*v481 + 88))(v481, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v480 = v693;
          }

          if (v479 != 1)
          {
            v704 = v480;
            v705 = v156;
            sub_27182976C(v155, &v704);
          }

          v704 = v480;
          v705 = v156;
          sub_27182976C(v155, &v704);
        }
      }

      goto LABEL_1313;
    case 3:
      sub_271683A48(a3, &v691, a4);
      v149 = *a2;
      v150 = v694;
      v151 = v691;
      if (!v691)
      {
        goto LABEL_835;
      }

      v152 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v152->__on_zero_shared)(v152);
          std::__shared_weak_count::__release_weak(v152);
        }

        v151 = v691;
        v153 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v154 = v151;
            (v153->__on_zero_shared)(v153);
            std::__shared_weak_count::__release_weak(v153);
            v151 = v154;
          }
        }
      }

      if (BYTE1(v698) == 1)
      {
        (*(*v151 + 96))(&v703);
      }

      else
      {
LABEL_835:
        v703 = 0;
      }

      if (v694)
      {
        v471 = v695;
        if (v695)
        {
          v472 = v697;
          v473 = v693;
          if (v698 == 1 && v693)
          {
            v474 = v691;
            v475 = v692;
            if (v692)
            {
              atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v475->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v476 = v474;
                (v475->__on_zero_shared)(v475);
                std::__shared_weak_count::__release_weak(v475);
                v474 = v476;
              }
            }

            (*(*v474 + 88))(v474, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v473 = v693;
          }

          v477 = v471 - 1;
          if (v477)
          {
            v478 = 2 * v472;
            do
            {
              v704 = v473;
              v705 = v150;
              sub_271829F14(v149, &v704);
              v473 += v478;
              --v477;
            }

            while (v477);
          }

          v704 = v473;
          v705 = v150;
          sub_271829F14(v149, &v704);
        }
      }

      goto LABEL_1313;
    case 4:
      sub_271683F50(a3, &v691, a4);
      v93 = *a2;
      v94 = v694;
      v95 = v691;
      if (!v691)
      {
        goto LABEL_642;
      }

      v96 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v96->__on_zero_shared)(v96);
          std::__shared_weak_count::__release_weak(v96);
        }

        v95 = v691;
        v97 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v98 = v95;
            (v97->__on_zero_shared)(v97);
            std::__shared_weak_count::__release_weak(v97);
            v95 = v98;
          }
        }
      }

      if (BYTE1(v698) == 1)
      {
        (*(*v95 + 96))(&v703);
      }

      else
      {
LABEL_642:
        v703 = 0;
      }

      if (v694)
      {
        v363 = v695;
        if (v695)
        {
          v364 = v697;
          v365 = v693;
          if (v698 == 1 && v693)
          {
            v366 = v691;
            v367 = v692;
            if (v692)
            {
              atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v367->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v368 = v366;
                (v367->__on_zero_shared)(v367);
                std::__shared_weak_count::__release_weak(v367);
                v366 = v368;
              }
            }

            (*(*v366 + 88))(v366, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v365 = v693;
          }

          v369 = v363 - 1;
          if (v369)
          {
            v370 = 4 * v364;
            do
            {
              v704 = v365;
              v705 = v94;
              sub_27182A338(v93, &v704);
              v365 += v370;
              --v369;
            }

            while (v369);
          }

          v704 = v365;
          v705 = v94;
          sub_27182A338(v93, &v704);
        }
      }

      goto LABEL_1313;
    case 5:
      sub_271684458(a3, &v691, a4);
      v11 = *a2;
      v134 = v700;
      v135 = v691;
      if (!v691)
      {
        goto LABEL_780;
      }

      v136 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v136->__on_zero_shared)(v136);
          std::__shared_weak_count::__release_weak(v136);
        }

        v135 = v691;
        v137 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v137->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v138 = v135;
            (v137->__on_zero_shared)(v137);
            std::__shared_weak_count::__release_weak(v137);
            v135 = v138;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v135 + 96))(&v703);
      }

      else
      {
LABEL_780:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v440 = v696;
          if (v696)
          {
            v441 = v699;
            v442 = v693;
            if (v701 == 1 && v693)
            {
              v443 = v691;
              v444 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v444->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v445 = v443;
                  (v444->__on_zero_shared)(v444);
                  std::__shared_weak_count::__release_weak(v444);
                  v443 = v445;
                }
              }

              (*(*v443 + 88))(v443, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v442 = v693;
            }

            v446 = v440 - 1;
            if (v440 != 1)
            {
              if (v134)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v442;
                v705 = 2;
                sub_271828638(v11, &v704);
              }

              v442 += v441 + v441 * (v440 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v651 = *(v11 + 56);
                *(v11 + 40) = *(v651 - 8);
                *(v11 + 56) = v651 - 8;
                --v446;
              }

              while (v446);
            }

            sub_2718285F0(v11);
            if (v134)
            {
              v704 = v442;
              v705 = 2;
              sub_271828638(v11, &v704);
            }

            v652 = *(v11 + 56);
            *(v11 + 40) = *(v652 - 8);
            *(v11 + 56) = v652 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 6:
      sub_2716849F0(a3, &v691, a4);
      v11 = *a2;
      v88 = v700;
      v89 = v691;
      if (!v691)
      {
        goto LABEL_627;
      }

      v90 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v90->__on_zero_shared)(v90);
          std::__shared_weak_count::__release_weak(v90);
        }

        v89 = v691;
        v91 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v92 = v89;
            (v91->__on_zero_shared)(v91);
            std::__shared_weak_count::__release_weak(v91);
            v89 = v92;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v89 + 96))(&v703);
      }

      else
      {
LABEL_627:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v356 = v696;
          if (v696)
          {
            v357 = v699;
            v358 = v693;
            if (v701 == 1 && v693)
            {
              v359 = v691;
              v360 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v360->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v361 = v359;
                  (v360->__on_zero_shared)(v360);
                  std::__shared_weak_count::__release_weak(v360);
                  v359 = v361;
                }
              }

              (*(*v359 + 88))(v359, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v358 = v693;
            }

            v362 = v356 - 1;
            if (v362)
            {
              if (v88)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v358;
                v705 = 2;
                sub_27182976C(v11, &v704);
              }

              v627 = 2 * v357;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v628 = *(v11 + 56);
                *(v11 + 40) = *(v628 - 8);
                *(v11 + 56) = v628 - 8;
                v358 += v627;
                --v362;
              }

              while (v362);
            }

            sub_2718285F0(v11);
            if (v88)
            {
              v704 = v358;
              v705 = 2;
              sub_27182976C(v11, &v704);
            }

            v629 = *(v11 + 56);
            *(v11 + 40) = *(v629 - 8);
            *(v11 + 56) = v629 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 7:
      sub_271684F8C(a3, &v691, a4);
      v11 = *a2;
      v63 = v700;
      v64 = v691;
      if (!v691)
      {
        goto LABEL_537;
      }

      v65 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v65->__on_zero_shared)(v65);
          std::__shared_weak_count::__release_weak(v65);
        }

        v64 = v691;
        v66 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v67 = v64;
            (v66->__on_zero_shared)(v66);
            std::__shared_weak_count::__release_weak(v66);
            v64 = v67;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v64 + 96))(&v703);
      }

      else
      {
LABEL_537:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v306 = v696;
          if (v696)
          {
            v307 = v698;
            v308 = v699;
            v309 = v693;
            if (v701 == 1 && v693)
            {
              v310 = v691;
              v311 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v311->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v312 = v310;
                  (v311->__on_zero_shared)(v311);
                  std::__shared_weak_count::__release_weak(v311);
                  v310 = v312;
                }
              }

              (*(*v310 + 88))(v310, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v309 = v693;
            }

            v313 = v306 - 1;
            if (v313)
            {
              if (v63)
              {
                for (i = 0; i != v313; ++i)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v315 = 0;
                  v316 = v63;
                  do
                  {
                    v704 = v309 + 2 * v315;
                    v705 = 2;
                    sub_271829F14(v11, &v704);
                    v315 += v307;
                    --v316;
                  }

                  while (v316);
                  v317 = *(v11 + 56);
                  *(v11 + 40) = *(v317 - 8);
                  *(v11 + 56) = v317 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v309 += 2 * v308;
                }
              }

              else
              {
                v610 = 2 * v308;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v611 = *(v11 + 56);
                  *(v11 + 40) = *(v611 - 8);
                  *(v11 + 56) = v611 - 8;
                  v309 += v610;
                  --v313;
                }

                while (v313);
              }
            }

            sub_2718285F0(v11);
            if (v63)
            {
              v612 = 0;
              do
              {
                v704 = v309 + 2 * v612;
                v705 = 2;
                sub_271829F14(v11, &v704);
                v612 += v307;
                --v63;
              }

              while (v63);
            }

            v613 = *(v11 + 56);
            *(v11 + 40) = *(v613 - 8);
            *(v11 + 56) = v613 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 8:
      sub_271685528(a3, &v691, a4);
      v11 = *a2;
      v144 = v700;
      v145 = v691;
      if (!v691)
      {
        goto LABEL_815;
      }

      v146 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v146->__on_zero_shared)(v146);
          std::__shared_weak_count::__release_weak(v146);
        }

        v145 = v691;
        v147 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v148 = v145;
            (v147->__on_zero_shared)(v147);
            std::__shared_weak_count::__release_weak(v147);
            v145 = v148;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v145 + 96))(&v703);
      }

      else
      {
LABEL_815:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v459 = v696;
          if (v696)
          {
            v460 = v698;
            v461 = v699;
            v462 = v693;
            if (v701 == 1 && v693)
            {
              v463 = v691;
              v464 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v464->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v465 = v463;
                  (v464->__on_zero_shared)(v464);
                  std::__shared_weak_count::__release_weak(v464);
                  v463 = v465;
                }
              }

              (*(*v463 + 88))(v463, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v462 = v693;
            }

            v466 = v459 - 1;
            if (v466)
            {
              if (v144)
              {
                for (j = 0; j != v466; ++j)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v468 = 0;
                  v469 = v144;
                  do
                  {
                    v704 = v462 + 4 * v468;
                    v705 = 2;
                    sub_27182A338(v11, &v704);
                    v468 += v460;
                    --v469;
                  }

                  while (v469);
                  v470 = *(v11 + 56);
                  *(v11 + 40) = *(v470 - 8);
                  *(v11 + 56) = v470 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v462 += 4 * v461;
                }
              }

              else
              {
                v657 = 4 * v461;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v658 = *(v11 + 56);
                  *(v11 + 40) = *(v658 - 8);
                  *(v11 + 56) = v658 - 8;
                  v462 += v657;
                  --v466;
                }

                while (v466);
              }
            }

            sub_2718285F0(v11);
            if (v144)
            {
              v659 = 0;
              do
              {
                v704 = v462 + 4 * v659;
                v705 = 2;
                sub_27182A338(v11, &v704);
                v659 += v460;
                --v144;
              }

              while (v144);
            }

            v660 = *(v11 + 56);
            *(v11 + 40) = *(v660 - 8);
            *(v11 + 56) = v660 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 9:
      sub_271685AC4(a3, &v691, a4);
      v11 = *a2;
      v129 = v700;
      v130 = v691;
      if (!v691)
      {
        goto LABEL_765;
      }

      v131 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v131->__on_zero_shared)(v131);
          std::__shared_weak_count::__release_weak(v131);
        }

        v130 = v691;
        v132 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v132->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v133 = v130;
            (v132->__on_zero_shared)(v132);
            std::__shared_weak_count::__release_weak(v132);
            v130 = v133;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v130 + 96))(&v703);
      }

      else
      {
LABEL_765:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v433 = v696;
          if (v696)
          {
            v434 = v699;
            v435 = v693;
            if (v701 == 1 && v693)
            {
              v436 = v691;
              v437 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v437->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v438 = v436;
                  (v437->__on_zero_shared)(v437);
                  std::__shared_weak_count::__release_weak(v437);
                  v436 = v438;
                }
              }

              (*(*v436 + 88))(v436, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v435 = v693;
            }

            v439 = v433 - 1;
            if (v433 != 1)
            {
              if (v129)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v435;
                v705 = 3;
                sub_271828638(v11, &v704);
              }

              v435 += v434 + v434 * (v433 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v649 = *(v11 + 56);
                *(v11 + 40) = *(v649 - 8);
                *(v11 + 56) = v649 - 8;
                --v439;
              }

              while (v439);
            }

            sub_2718285F0(v11);
            if (v129)
            {
              v704 = v435;
              v705 = 3;
              sub_271828638(v11, &v704);
            }

            v650 = *(v11 + 56);
            *(v11 + 40) = *(v650 - 8);
            *(v11 + 56) = v650 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 10:
      sub_27168605C(a3, &v691, a4);
      v11 = *a2;
      v171 = v700;
      v172 = v691;
      if (!v691)
      {
        goto LABEL_907;
      }

      v173 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v173->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v173->__on_zero_shared)(v173);
          std::__shared_weak_count::__release_weak(v173);
        }

        v172 = v691;
        v174 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v174->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v175 = v172;
            (v174->__on_zero_shared)(v174);
            std::__shared_weak_count::__release_weak(v174);
            v172 = v175;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v172 + 96))(&v703);
      }

      else
      {
LABEL_907:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v508 = v696;
          if (v696)
          {
            v509 = v699;
            v510 = v693;
            if (v701 == 1 && v693)
            {
              v511 = v691;
              v512 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v512->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v513 = v511;
                  (v512->__on_zero_shared)(v512);
                  std::__shared_weak_count::__release_weak(v512);
                  v511 = v513;
                }
              }

              (*(*v511 + 88))(v511, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v510 = v693;
            }

            v514 = v508 - 1;
            if (v514)
            {
              if (v171)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v510;
                v705 = 3;
                sub_27182976C(v11, &v704);
              }

              v666 = 2 * v509;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v667 = *(v11 + 56);
                *(v11 + 40) = *(v667 - 8);
                *(v11 + 56) = v667 - 8;
                v510 += v666;
                --v514;
              }

              while (v514);
            }

            sub_2718285F0(v11);
            if (v171)
            {
              v704 = v510;
              v705 = 3;
              sub_27182976C(v11, &v704);
            }

            v668 = *(v11 + 56);
            *(v11 + 40) = *(v668 - 8);
            *(v11 + 56) = v668 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 11:
      sub_2716865F8(a3, &v691, a4);
      v11 = *a2;
      v166 = v700;
      v167 = v691;
      if (!v691)
      {
        goto LABEL_887;
      }

      v168 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v168->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v168->__on_zero_shared)(v168);
          std::__shared_weak_count::__release_weak(v168);
        }

        v167 = v691;
        v169 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v170 = v167;
            (v169->__on_zero_shared)(v169);
            std::__shared_weak_count::__release_weak(v169);
            v167 = v170;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v167 + 96))(&v703);
      }

      else
      {
LABEL_887:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v496 = v696;
          if (v696)
          {
            v497 = v698;
            v498 = v699;
            v499 = v693;
            if (v701 == 1 && v693)
            {
              v500 = v691;
              v501 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v502 = v500;
                  (v501->__on_zero_shared)(v501);
                  std::__shared_weak_count::__release_weak(v501);
                  v500 = v502;
                }
              }

              (*(*v500 + 88))(v500, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v499 = v693;
            }

            v503 = v496 - 1;
            if (v503)
            {
              if (v166)
              {
                for (k = 0; k != v503; ++k)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v505 = 0;
                  v506 = v166;
                  do
                  {
                    v704 = v499 + 2 * v505;
                    v705 = 3;
                    sub_271829F14(v11, &v704);
                    v505 += v497;
                    --v506;
                  }

                  while (v506);
                  v507 = *(v11 + 56);
                  *(v11 + 40) = *(v507 - 8);
                  *(v11 + 56) = v507 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v499 += 2 * v498;
                }
              }

              else
              {
                v662 = 2 * v498;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v663 = *(v11 + 56);
                  *(v11 + 40) = *(v663 - 8);
                  *(v11 + 56) = v663 - 8;
                  v499 += v662;
                  --v503;
                }

                while (v503);
              }
            }

            sub_2718285F0(v11);
            if (v166)
            {
              v664 = 0;
              do
              {
                v704 = v499 + 2 * v664;
                v705 = 3;
                sub_271829F14(v11, &v704);
                v664 += v497;
                --v166;
              }

              while (v166);
            }

            v665 = *(v11 + 56);
            *(v11 + 40) = *(v665 - 8);
            *(v11 + 56) = v665 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 12:
      sub_271686B94(a3, &v691, a4);
      v11 = *a2;
      v27 = v700;
      v28 = v691;
      if (!v691)
      {
        goto LABEL_417;
      }

      v29 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v28 = v691;
        v30 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v31 = v28;
            (v30->__on_zero_shared)(v30);
            std::__shared_weak_count::__release_weak(v30);
            v28 = v31;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v28 + 96))(&v703);
      }

      else
      {
LABEL_417:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v242 = v696;
          if (v696)
          {
            v243 = v698;
            v244 = v699;
            v245 = v693;
            if (v701 == 1 && v693)
            {
              v246 = v691;
              v247 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v247->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v248 = v246;
                  (v247->__on_zero_shared)(v247);
                  std::__shared_weak_count::__release_weak(v247);
                  v246 = v248;
                }
              }

              (*(*v246 + 88))(v246, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v245 = v693;
            }

            v249 = v242 - 1;
            if (v249)
            {
              if (v27)
              {
                for (m = 0; m != v249; ++m)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v251 = 0;
                  v252 = v27;
                  do
                  {
                    v704 = v245 + 4 * v251;
                    v705 = 3;
                    sub_27182A338(v11, &v704);
                    v251 += v243;
                    --v252;
                  }

                  while (v252);
                  v253 = *(v11 + 56);
                  *(v11 + 40) = *(v253 - 8);
                  *(v11 + 56) = v253 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v245 += 4 * v244;
                }
              }

              else
              {
                v589 = 4 * v244;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v590 = *(v11 + 56);
                  *(v11 + 40) = *(v590 - 8);
                  *(v11 + 56) = v590 - 8;
                  v245 += v589;
                  --v249;
                }

                while (v249);
              }
            }

            sub_2718285F0(v11);
            if (v27)
            {
              v591 = 0;
              do
              {
                v704 = v245 + 4 * v591;
                v705 = 3;
                sub_27182A338(v11, &v704);
                v591 += v243;
                --v27;
              }

              while (v27);
            }

            v592 = *(v11 + 56);
            *(v11 + 40) = *(v592 - 8);
            *(v11 + 56) = v592 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 13:
      sub_271687130(a3, &v691, a4);
      v11 = *a2;
      v47 = v700;
      v48 = v691;
      if (!v691)
      {
        goto LABEL_487;
      }

      v49 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        v48 = v691;
        v50 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v51 = v48;
            (v50->__on_zero_shared)(v50);
            std::__shared_weak_count::__release_weak(v50);
            v48 = v51;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v48 + 96))(&v703);
      }

      else
      {
LABEL_487:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v280 = v696;
          if (v696)
          {
            v281 = v699;
            v282 = v693;
            if (v701 == 1 && v693)
            {
              v283 = v691;
              v284 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v284->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v285 = v283;
                  (v284->__on_zero_shared)(v284);
                  std::__shared_weak_count::__release_weak(v284);
                  v283 = v285;
                }
              }

              (*(*v283 + 88))(v283, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v282 = v693;
            }

            v286 = v280 - 1;
            if (v280 != 1)
            {
              if (v47)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v282;
                v705 = 4;
                sub_271828638(v11, &v704);
              }

              v282 += v281 + v281 * (v280 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v602 = *(v11 + 56);
                *(v11 + 40) = *(v602 - 8);
                *(v11 + 56) = v602 - 8;
                --v286;
              }

              while (v286);
            }

            sub_2718285F0(v11);
            if (v47)
            {
              v704 = v282;
              v705 = 4;
              sub_271828638(v11, &v704);
            }

            v603 = *(v11 + 56);
            *(v11 + 40) = *(v603 - 8);
            *(v11 + 56) = v603 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 14:
      sub_2716876C8(a3, &v691, a4);
      v11 = *a2;
      v42 = v700;
      v43 = v691;
      if (!v691)
      {
        goto LABEL_472;
      }

      v44 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
        }

        v43 = v691;
        v45 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v46 = v43;
            (v45->__on_zero_shared)(v45);
            std::__shared_weak_count::__release_weak(v45);
            v43 = v46;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v43 + 96))(&v703);
      }

      else
      {
LABEL_472:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v273 = v696;
          if (v696)
          {
            v274 = v699;
            v275 = v693;
            if (v701 == 1 && v693)
            {
              v276 = v691;
              v277 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v277->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v278 = v276;
                  (v277->__on_zero_shared)(v277);
                  std::__shared_weak_count::__release_weak(v277);
                  v276 = v278;
                }
              }

              (*(*v276 + 88))(v276, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v275 = v693;
            }

            v279 = v273 - 1;
            if (v279)
            {
              if (v42)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v275;
                v705 = 4;
                sub_27182976C(v11, &v704);
              }

              v599 = 2 * v274;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v600 = *(v11 + 56);
                *(v11 + 40) = *(v600 - 8);
                *(v11 + 56) = v600 - 8;
                v275 += v599;
                --v279;
              }

              while (v279);
            }

            sub_2718285F0(v11);
            if (v42)
            {
              v704 = v275;
              v705 = 4;
              sub_27182976C(v11, &v704);
            }

            v601 = *(v11 + 56);
            *(v11 + 40) = *(v601 - 8);
            *(v11 + 56) = v601 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 15:
      sub_271687C64(a3, &v691, a4);
      v11 = *a2;
      v191 = v700;
      v192 = v691;
      if (!v691)
      {
        goto LABEL_972;
      }

      v193 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v193->__on_zero_shared)(v193);
          std::__shared_weak_count::__release_weak(v193);
        }

        v192 = v691;
        v194 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v195 = v192;
            (v194->__on_zero_shared)(v194);
            std::__shared_weak_count::__release_weak(v194);
            v192 = v195;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v192 + 96))(&v703);
      }

      else
      {
LABEL_972:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v541 = v696;
          if (v696)
          {
            v542 = v698;
            v543 = v699;
            v544 = v693;
            if (v701 == 1 && v693)
            {
              v545 = v691;
              v546 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v546->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v547 = v545;
                  (v546->__on_zero_shared)(v546);
                  std::__shared_weak_count::__release_weak(v546);
                  v545 = v547;
                }
              }

              (*(*v545 + 88))(v545, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v544 = v693;
            }

            v548 = v541 - 1;
            if (v548)
            {
              if (v191)
              {
                for (n = 0; n != v548; ++n)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v550 = 0;
                  v551 = v191;
                  do
                  {
                    v704 = v544 + 2 * v550;
                    v705 = 4;
                    sub_271829F14(v11, &v704);
                    v550 += v542;
                    --v551;
                  }

                  while (v551);
                  v552 = *(v11 + 56);
                  *(v11 + 40) = *(v552 - 8);
                  *(v11 + 56) = v552 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v544 += 2 * v543;
                }
              }

              else
              {
                v677 = 2 * v543;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v678 = *(v11 + 56);
                  *(v11 + 40) = *(v678 - 8);
                  *(v11 + 56) = v678 - 8;
                  v544 += v677;
                  --v548;
                }

                while (v548);
              }
            }

            sub_2718285F0(v11);
            if (v191)
            {
              v679 = 0;
              do
              {
                v704 = v544 + 2 * v679;
                v705 = 4;
                sub_271829F14(v11, &v704);
                v679 += v542;
                --v191;
              }

              while (v191);
            }

            v680 = *(v11 + 56);
            *(v11 + 40) = *(v680 - 8);
            *(v11 + 56) = v680 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 16:
      sub_271688200(a3, &v691, a4);
      v11 = *a2;
      v139 = v700;
      v140 = v691;
      if (!v691)
      {
        goto LABEL_795;
      }

      v141 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v141->__on_zero_shared)(v141);
          std::__shared_weak_count::__release_weak(v141);
        }

        v140 = v691;
        v142 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v142->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v143 = v140;
            (v142->__on_zero_shared)(v142);
            std::__shared_weak_count::__release_weak(v142);
            v140 = v143;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v140 + 96))(&v703);
      }

      else
      {
LABEL_795:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v447 = v696;
          if (v696)
          {
            v448 = v698;
            v449 = v699;
            v450 = v693;
            if (v701 == 1 && v693)
            {
              v451 = v691;
              v452 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v452->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v453 = v451;
                  (v452->__on_zero_shared)(v452);
                  std::__shared_weak_count::__release_weak(v452);
                  v451 = v453;
                }
              }

              (*(*v451 + 88))(v451, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v450 = v693;
            }

            v454 = v447 - 1;
            if (v454)
            {
              if (v139)
              {
                for (ii = 0; ii != v454; ++ii)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v456 = 0;
                  v457 = v139;
                  do
                  {
                    v704 = v450 + 4 * v456;
                    v705 = 4;
                    sub_27182A338(v11, &v704);
                    v456 += v448;
                    --v457;
                  }

                  while (v457);
                  v458 = *(v11 + 56);
                  *(v11 + 40) = *(v458 - 8);
                  *(v11 + 56) = v458 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v450 += 4 * v449;
                }
              }

              else
              {
                v653 = 4 * v449;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v654 = *(v11 + 56);
                  *(v11 + 40) = *(v654 - 8);
                  *(v11 + 56) = v654 - 8;
                  v450 += v653;
                  --v454;
                }

                while (v454);
              }
            }

            sub_2718285F0(v11);
            if (v139)
            {
              v655 = 0;
              do
              {
                v704 = v450 + 4 * v655;
                v705 = 4;
                sub_27182A338(v11, &v704);
                v655 += v448;
                --v139;
              }

              while (v139);
            }

            v656 = *(v11 + 56);
            *(v11 + 40) = *(v656 - 8);
            *(v11 + 56) = v656 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 17:
      sub_27168879C(a3, &v691, a4);
      v11 = *a2;
      v196 = v700;
      v197 = v691;
      if (!v691)
      {
        goto LABEL_992;
      }

      v198 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v198->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v198->__on_zero_shared)(v198);
          std::__shared_weak_count::__release_weak(v198);
        }

        v197 = v691;
        v199 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v200 = v197;
            (v199->__on_zero_shared)(v199);
            std::__shared_weak_count::__release_weak(v199);
            v197 = v200;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v197 + 96))(&v703);
      }

      else
      {
LABEL_992:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v553 = v696;
          if (v696)
          {
            v554 = v699;
            v555 = v693;
            if (v701 == 1 && v693)
            {
              v556 = v691;
              v557 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v557->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v558 = v556;
                  (v557->__on_zero_shared)(v557);
                  std::__shared_weak_count::__release_weak(v557);
                  v556 = v558;
                }
              }

              (*(*v556 + 88))(v556, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v555 = v693;
            }

            v559 = v553 - 1;
            if (v553 != 1)
            {
              if (v196)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v555;
                v705 = 3;
                sub_271828638(v11, &v704);
              }

              v555 += v554 + v554 * (v553 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v683 = *(v11 + 56);
                *(v11 + 40) = *(v683 - 8);
                *(v11 + 56) = v683 - 8;
                --v559;
              }

              while (v559);
            }

            sub_2718285F0(v11);
            if (v196)
            {
              v704 = v555;
              v705 = 3;
              sub_271828638(v11, &v704);
            }

            v684 = *(v11 + 56);
            *(v11 + 40) = *(v684 - 8);
            *(v11 + 56) = v684 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 18:
      sub_271688D34(a3, &v691, a4);
      v11 = *a2;
      v58 = v700;
      v59 = v691;
      if (!v691)
      {
        goto LABEL_522;
      }

      v60 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v60->__on_zero_shared)(v60);
          std::__shared_weak_count::__release_weak(v60);
        }

        v59 = v691;
        v61 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v62 = v59;
            (v61->__on_zero_shared)(v61);
            std::__shared_weak_count::__release_weak(v61);
            v59 = v62;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v59 + 96))(&v703);
      }

      else
      {
LABEL_522:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v299 = v696;
          if (v696)
          {
            v300 = v699;
            v301 = v693;
            if (v701 == 1 && v693)
            {
              v302 = v691;
              v303 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v303->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v304 = v302;
                  (v303->__on_zero_shared)(v303);
                  std::__shared_weak_count::__release_weak(v303);
                  v302 = v304;
                }
              }

              (*(*v302 + 88))(v302, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v301 = v693;
            }

            v305 = v299 - 1;
            if (v305)
            {
              if (v58)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v301;
                v705 = 3;
                sub_27182976C(v11, &v704);
              }

              v607 = 2 * v300;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v608 = *(v11 + 56);
                *(v11 + 40) = *(v608 - 8);
                *(v11 + 56) = v608 - 8;
                v301 += v607;
                --v305;
              }

              while (v305);
            }

            sub_2718285F0(v11);
            if (v58)
            {
              v704 = v301;
              v705 = 3;
              sub_27182976C(v11, &v704);
            }

            v609 = *(v11 + 56);
            *(v11 + 40) = *(v609 - 8);
            *(v11 + 56) = v609 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 19:
      sub_2716892D0(a3, &v691, a4);
      v11 = *a2;
      v17 = v700;
      v18 = v691;
      if (!v691)
      {
        goto LABEL_382;
      }

      v19 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v691;
        v20 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v18 + 96))(&v703);
      }

      else
      {
LABEL_382:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v223 = v696;
          if (v696)
          {
            v224 = v698;
            v225 = v699;
            v226 = v693;
            if (v701 == 1 && v693)
            {
              v227 = v691;
              v228 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v228->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v229 = v227;
                  (v228->__on_zero_shared)(v228);
                  std::__shared_weak_count::__release_weak(v228);
                  v227 = v229;
                }
              }

              (*(*v227 + 88))(v227, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v226 = v693;
            }

            v230 = v223 - 1;
            if (v230)
            {
              if (v17)
              {
                for (jj = 0; jj != v230; ++jj)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v232 = 0;
                  v233 = v17;
                  do
                  {
                    v704 = v226 + 2 * v232;
                    v705 = 3;
                    sub_271829F14(v11, &v704);
                    v232 += v224;
                    --v233;
                  }

                  while (v233);
                  v234 = *(v11 + 56);
                  *(v11 + 40) = *(v234 - 8);
                  *(v11 + 56) = v234 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v226 += 2 * v225;
                }
              }

              else
              {
                v583 = 2 * v225;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v584 = *(v11 + 56);
                  *(v11 + 40) = *(v584 - 8);
                  *(v11 + 56) = v584 - 8;
                  v226 += v583;
                  --v230;
                }

                while (v230);
              }
            }

            sub_2718285F0(v11);
            if (v17)
            {
              v585 = 0;
              do
              {
                v704 = v226 + 2 * v585;
                v705 = 3;
                sub_271829F14(v11, &v704);
                v585 += v224;
                --v17;
              }

              while (v17);
            }

            v586 = *(v11 + 56);
            *(v11 + 40) = *(v586 - 8);
            *(v11 + 56) = v586 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 20:
      sub_27168986C(a3, &v691, a4);
      v11 = *a2;
      v181 = v700;
      v182 = v691;
      if (!v691)
      {
        goto LABEL_937;
      }

      v183 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v183->__on_zero_shared)(v183);
          std::__shared_weak_count::__release_weak(v183);
        }

        v182 = v691;
        v184 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v184->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v185 = v182;
            (v184->__on_zero_shared)(v184);
            std::__shared_weak_count::__release_weak(v184);
            v182 = v185;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v182 + 96))(&v703);
      }

      else
      {
LABEL_937:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v522 = v696;
          if (v696)
          {
            v523 = v698;
            v524 = v699;
            v525 = v693;
            if (v701 == 1 && v693)
            {
              v526 = v691;
              v527 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v527->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v528 = v526;
                  (v527->__on_zero_shared)(v527);
                  std::__shared_weak_count::__release_weak(v527);
                  v526 = v528;
                }
              }

              (*(*v526 + 88))(v526, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v525 = v693;
            }

            v529 = v522 - 1;
            if (v529)
            {
              if (v181)
              {
                for (kk = 0; kk != v529; ++kk)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v531 = 0;
                  v532 = v181;
                  do
                  {
                    v704 = v525 + 4 * v531;
                    v705 = 3;
                    sub_27182A338(v11, &v704);
                    v531 += v523;
                    --v532;
                  }

                  while (v532);
                  v533 = *(v11 + 56);
                  *(v11 + 40) = *(v533 - 8);
                  *(v11 + 56) = v533 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v525 += 4 * v524;
                }
              }

              else
              {
                v670 = 4 * v524;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v671 = *(v11 + 56);
                  *(v11 + 40) = *(v671 - 8);
                  *(v11 + 56) = v671 - 8;
                  v525 += v670;
                  --v529;
                }

                while (v529);
              }
            }

            sub_2718285F0(v11);
            if (v181)
            {
              v672 = 0;
              do
              {
                v704 = v525 + 4 * v672;
                v705 = 3;
                sub_27182A338(v11, &v704);
                v672 += v523;
                --v181;
              }

              while (v181);
            }

            v673 = *(v11 + 56);
            *(v11 + 40) = *(v673 - 8);
            *(v11 + 56) = v673 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 21:
      sub_2715EFF9C(a3, &v691, a4);
      v11 = *a2;
      v206 = v700;
      v207 = v691;
      if (!v691)
      {
        goto LABEL_1027;
      }

      v208 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v208->__on_zero_shared)(v208);
          std::__shared_weak_count::__release_weak(v208);
        }

        v207 = v691;
        v209 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v209->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v210 = v207;
            (v209->__on_zero_shared)(v209);
            std::__shared_weak_count::__release_weak(v209);
            v207 = v210;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v207 + 96))(&v703);
      }

      else
      {
LABEL_1027:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v572 = v696;
          if (v696)
          {
            v573 = v699;
            v574 = v693;
            if (v701 == 1 && v693)
            {
              v575 = v691;
              v576 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v576->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v577 = v575;
                  (v576->__on_zero_shared)(v576);
                  std::__shared_weak_count::__release_weak(v576);
                  v575 = v577;
                }
              }

              (*(*v575 + 88))(v575, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v574 = v693;
            }

            v578 = v572 - 1;
            if (v572 != 1)
            {
              if (v206)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v574;
                v705 = 3;
                sub_271828638(v11, &v704);
              }

              v574 += v573 + v573 * (v572 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v689 = *(v11 + 56);
                *(v11 + 40) = *(v689 - 8);
                *(v11 + 56) = v689 - 8;
                --v578;
              }

              while (v578);
            }

            sub_2718285F0(v11);
            if (v206)
            {
              v704 = v574;
              v705 = 3;
              sub_271828638(v11, &v704);
            }

            v690 = *(v11 + 56);
            *(v11 + 40) = *(v690 - 8);
            *(v11 + 56) = v690 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 22:
      sub_271689E08(a3, &v691, a4);
      v11 = *a2;
      v73 = v700;
      v74 = v691;
      if (!v691)
      {
        goto LABEL_577;
      }

      v75 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v75->__on_zero_shared)(v75);
          std::__shared_weak_count::__release_weak(v75);
        }

        v74 = v691;
        v76 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v77 = v74;
            (v76->__on_zero_shared)(v76);
            std::__shared_weak_count::__release_weak(v76);
            v74 = v77;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v74 + 96))(&v703);
      }

      else
      {
LABEL_577:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v330 = v696;
          if (v696)
          {
            v331 = v699;
            v332 = v693;
            if (v701 == 1 && v693)
            {
              v333 = v691;
              v334 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v334->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v335 = v333;
                  (v334->__on_zero_shared)(v334);
                  std::__shared_weak_count::__release_weak(v334);
                  v333 = v335;
                }
              }

              (*(*v333 + 88))(v333, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v332 = v693;
            }

            v336 = v330 - 1;
            if (v336)
            {
              if (v73)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v332;
                v705 = 3;
                sub_27182976C(v11, &v704);
              }

              v617 = 2 * v331;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v618 = *(v11 + 56);
                *(v11 + 40) = *(v618 - 8);
                *(v11 + 56) = v618 - 8;
                v332 += v617;
                --v336;
              }

              while (v336);
            }

            sub_2718285F0(v11);
            if (v73)
            {
              v704 = v332;
              v705 = 3;
              sub_27182976C(v11, &v704);
            }

            v619 = *(v11 + 56);
            *(v11 + 40) = *(v619 - 8);
            *(v11 + 56) = v619 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 23:
      sub_27168A3A4(a3, &v691, a4);
      v11 = *a2;
      v201 = v700;
      v202 = v691;
      if (!v691)
      {
        goto LABEL_1007;
      }

      v203 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v203->__on_zero_shared)(v203);
          std::__shared_weak_count::__release_weak(v203);
        }

        v202 = v691;
        v204 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v204->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v205 = v202;
            (v204->__on_zero_shared)(v204);
            std::__shared_weak_count::__release_weak(v204);
            v202 = v205;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v202 + 96))(&v703);
      }

      else
      {
LABEL_1007:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v560 = v696;
          if (v696)
          {
            v561 = v698;
            v562 = v699;
            v563 = v693;
            if (v701 == 1 && v693)
            {
              v564 = v691;
              v565 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v565->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v566 = v564;
                  (v565->__on_zero_shared)(v565);
                  std::__shared_weak_count::__release_weak(v565);
                  v564 = v566;
                }
              }

              (*(*v564 + 88))(v564, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v563 = v693;
            }

            v567 = v560 - 1;
            if (v567)
            {
              if (v201)
              {
                for (mm = 0; mm != v567; ++mm)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v569 = 0;
                  v570 = v201;
                  do
                  {
                    v704 = v563 + 2 * v569;
                    v705 = 3;
                    sub_271829F14(v11, &v704);
                    v569 += v561;
                    --v570;
                  }

                  while (v570);
                  v571 = *(v11 + 56);
                  *(v11 + 40) = *(v571 - 8);
                  *(v11 + 56) = v571 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v563 += 2 * v562;
                }
              }

              else
              {
                v685 = 2 * v562;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v686 = *(v11 + 56);
                  *(v11 + 40) = *(v686 - 8);
                  *(v11 + 56) = v686 - 8;
                  v563 += v685;
                  --v567;
                }

                while (v567);
              }
            }

            sub_2718285F0(v11);
            if (v201)
            {
              v687 = 0;
              do
              {
                v704 = v563 + 2 * v687;
                v705 = 3;
                sub_271829F14(v11, &v704);
                v687 += v561;
                --v201;
              }

              while (v201);
            }

            v688 = *(v11 + 56);
            *(v11 + 40) = *(v688 - 8);
            *(v11 + 56) = v688 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 24:
      sub_27168A940(a3, &v691, a4);
      v11 = *a2;
      v37 = v700;
      v38 = v691;
      if (!v691)
      {
        goto LABEL_452;
      }

      v39 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v39->__on_zero_shared)(v39);
          std::__shared_weak_count::__release_weak(v39);
        }

        v38 = v691;
        v40 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v41 = v38;
            (v40->__on_zero_shared)(v40);
            std::__shared_weak_count::__release_weak(v40);
            v38 = v41;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v38 + 96))(&v703);
      }

      else
      {
LABEL_452:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v261 = v696;
          if (v696)
          {
            v262 = v698;
            v263 = v699;
            v264 = v693;
            if (v701 == 1 && v693)
            {
              v265 = v691;
              v266 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v266->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v267 = v265;
                  (v266->__on_zero_shared)(v266);
                  std::__shared_weak_count::__release_weak(v266);
                  v265 = v267;
                }
              }

              (*(*v265 + 88))(v265, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v264 = v693;
            }

            v268 = v261 - 1;
            if (v268)
            {
              if (v37)
              {
                for (nn = 0; nn != v268; ++nn)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v270 = 0;
                  v271 = v37;
                  do
                  {
                    v704 = v264 + 4 * v270;
                    v705 = 3;
                    sub_27182A338(v11, &v704);
                    v270 += v262;
                    --v271;
                  }

                  while (v271);
                  v272 = *(v11 + 56);
                  *(v11 + 40) = *(v272 - 8);
                  *(v11 + 56) = v272 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v264 += 4 * v263;
                }
              }

              else
              {
                v595 = 4 * v263;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v596 = *(v11 + 56);
                  *(v11 + 40) = *(v596 - 8);
                  *(v11 + 56) = v596 - 8;
                  v264 += v595;
                  --v268;
                }

                while (v268);
              }
            }

            sub_2718285F0(v11);
            if (v37)
            {
              v597 = 0;
              do
              {
                v704 = v264 + 4 * v597;
                v705 = 3;
                sub_27182A338(v11, &v704);
                v597 += v262;
                --v37;
              }

              while (v37);
            }

            v598 = *(v11 + 56);
            *(v11 + 40) = *(v598 - 8);
            *(v11 + 56) = v598 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 25:
      sub_27168AEDC(a3, &v691, a4);
      v11 = *a2;
      v22 = v700;
      v23 = v691;
      if (!v691)
      {
        goto LABEL_402;
      }

      v24 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }

        v23 = v691;
        v25 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v26 = v23;
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
            v23 = v26;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v23 + 96))(&v703);
      }

      else
      {
LABEL_402:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v235 = v696;
          if (v696)
          {
            v236 = v699;
            v237 = v693;
            if (v701 == 1 && v693)
            {
              v238 = v691;
              v239 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v239->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v240 = v238;
                  (v239->__on_zero_shared)(v239);
                  std::__shared_weak_count::__release_weak(v239);
                  v238 = v240;
                }
              }

              (*(*v238 + 88))(v238, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v237 = v693;
            }

            v241 = v235 - 1;
            if (v235 != 1)
            {
              if (v22)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v237;
                v705 = 4;
                sub_271828638(v11, &v704);
              }

              v237 += v236 + v236 * (v235 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v587 = *(v11 + 56);
                *(v11 + 40) = *(v587 - 8);
                *(v11 + 56) = v587 - 8;
                --v241;
              }

              while (v241);
            }

            sub_2718285F0(v11);
            if (v22)
            {
              v704 = v237;
              v705 = 4;
              sub_271828638(v11, &v704);
            }

            v588 = *(v11 + 56);
            *(v11 + 40) = *(v588 - 8);
            *(v11 + 56) = v588 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 26:
      sub_27168B474(a3, &v691, a4);
      v11 = *a2;
      v78 = v700;
      v79 = v691;
      if (!v691)
      {
        goto LABEL_592;
      }

      v80 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v80->__on_zero_shared)(v80);
          std::__shared_weak_count::__release_weak(v80);
        }

        v79 = v691;
        v81 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v82 = v79;
            (v81->__on_zero_shared)(v81);
            std::__shared_weak_count::__release_weak(v81);
            v79 = v82;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v79 + 96))(&v703);
      }

      else
      {
LABEL_592:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v337 = v696;
          if (v696)
          {
            v338 = v699;
            v339 = v693;
            if (v701 == 1 && v693)
            {
              v340 = v691;
              v341 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v341->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v342 = v340;
                  (v341->__on_zero_shared)(v341);
                  std::__shared_weak_count::__release_weak(v341);
                  v340 = v342;
                }
              }

              (*(*v340 + 88))(v340, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v339 = v693;
            }

            v343 = v337 - 1;
            if (v343)
            {
              if (v78)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v339;
                v705 = 4;
                sub_27182976C(v11, &v704);
              }

              v620 = 2 * v338;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v621 = *(v11 + 56);
                *(v11 + 40) = *(v621 - 8);
                *(v11 + 56) = v621 - 8;
                v339 += v620;
                --v343;
              }

              while (v343);
            }

            sub_2718285F0(v11);
            if (v78)
            {
              v704 = v339;
              v705 = 4;
              sub_27182976C(v11, &v704);
            }

            v622 = *(v11 + 56);
            *(v11 + 40) = *(v622 - 8);
            *(v11 + 56) = v622 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 27:
      sub_27168BA10(a3, &v691, a4);
      v11 = *a2;
      v12 = v700;
      v13 = v691;
      if (!v691)
      {
        goto LABEL_362;
      }

      v14 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        v13 = v691;
        v15 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v16 = v13;
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
            v13 = v16;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v13 + 96))(&v703);
      }

      else
      {
LABEL_362:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v211 = v696;
          if (v696)
          {
            v212 = v698;
            v213 = v699;
            v214 = v693;
            if (v701 == 1 && v693)
            {
              v215 = v691;
              v216 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v216->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v217 = v215;
                  (v216->__on_zero_shared)(v216);
                  std::__shared_weak_count::__release_weak(v216);
                  v215 = v217;
                }
              }

              (*(*v215 + 88))(v215, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v214 = v693;
            }

            v218 = v211 - 1;
            if (v218)
            {
              if (v12)
              {
                for (i1 = 0; i1 != v218; ++i1)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v220 = 0;
                  v221 = v12;
                  do
                  {
                    v704 = v214 + 2 * v220;
                    v705 = 4;
                    sub_271829F14(v11, &v704);
                    v220 += v212;
                    --v221;
                  }

                  while (v221);
                  v222 = *(v11 + 56);
                  *(v11 + 40) = *(v222 - 8);
                  *(v11 + 56) = v222 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v214 += 2 * v213;
                }
              }

              else
              {
                v579 = 2 * v213;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v580 = *(v11 + 56);
                  *(v11 + 40) = *(v580 - 8);
                  *(v11 + 56) = v580 - 8;
                  v214 += v579;
                  --v218;
                }

                while (v218);
              }
            }

            sub_2718285F0(v11);
            if (v12)
            {
              v581 = 0;
              do
              {
                v704 = v214 + 2 * v581;
                v705 = 4;
                sub_271829F14(v11, &v704);
                v581 += v212;
                --v12;
              }

              while (v12);
            }

            v582 = *(v11 + 56);
            *(v11 + 40) = *(v582 - 8);
            *(v11 + 56) = v582 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 28:
      sub_27168BFAC(a3, &v691, a4);
      v11 = *a2;
      v99 = v700;
      v100 = v691;
      if (!v691)
      {
        goto LABEL_655;
      }

      v101 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v101->__on_zero_shared)(v101);
          std::__shared_weak_count::__release_weak(v101);
        }

        v100 = v691;
        v102 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v103 = v100;
            (v102->__on_zero_shared)(v102);
            std::__shared_weak_count::__release_weak(v102);
            v100 = v103;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v100 + 96))(&v703);
      }

      else
      {
LABEL_655:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v371 = v696;
          if (v696)
          {
            v372 = v698;
            v373 = v699;
            v374 = v693;
            if (v701 == 1 && v693)
            {
              v375 = v691;
              v376 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v376->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v377 = v375;
                  (v376->__on_zero_shared)(v376);
                  std::__shared_weak_count::__release_weak(v376);
                  v375 = v377;
                }
              }

              (*(*v375 + 88))(v375, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v374 = v693;
            }

            v378 = v371 - 1;
            if (v378)
            {
              if (v99)
              {
                for (i2 = 0; i2 != v378; ++i2)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v380 = 0;
                  v381 = v99;
                  do
                  {
                    v704 = v374 + 4 * v380;
                    v705 = 4;
                    sub_27182A338(v11, &v704);
                    v380 += v372;
                    --v381;
                  }

                  while (v381);
                  v382 = *(v11 + 56);
                  *(v11 + 40) = *(v382 - 8);
                  *(v11 + 56) = v382 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v374 += 4 * v373;
                }
              }

              else
              {
                v630 = 4 * v373;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v631 = *(v11 + 56);
                  *(v11 + 40) = *(v631 - 8);
                  *(v11 + 56) = v631 - 8;
                  v374 += v630;
                  --v378;
                }

                while (v378);
              }
            }

            sub_2718285F0(v11);
            if (v99)
            {
              v632 = 0;
              do
              {
                v704 = v374 + 4 * v632;
                v705 = 4;
                sub_27182A338(v11, &v704);
                v632 += v372;
                --v99;
              }

              while (v99);
            }

            v633 = *(v11 + 56);
            *(v11 + 40) = *(v633 - 8);
            *(v11 + 56) = v633 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 29:
      sub_27168C548(a3, &v691, a4);
      v11 = *a2;
      v32 = v700;
      v33 = v691;
      if (!v691)
      {
        goto LABEL_437;
      }

      v34 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v34->__on_zero_shared)(v34);
          std::__shared_weak_count::__release_weak(v34);
        }

        v33 = v691;
        v35 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v36 = v33;
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
            v33 = v36;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v33 + 96))(&v703);
      }

      else
      {
LABEL_437:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v254 = v696;
          if (v696)
          {
            v255 = v699;
            v256 = v693;
            if (v701 == 1 && v693)
            {
              v257 = v691;
              v258 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v258->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v259 = v257;
                  (v258->__on_zero_shared)(v258);
                  std::__shared_weak_count::__release_weak(v258);
                  v257 = v259;
                }
              }

              (*(*v257 + 88))(v257, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v256 = v693;
            }

            v260 = v254 - 1;
            if (v254 != 1)
            {
              if (v32)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v256;
                v705 = 4;
                sub_271828638(v11, &v704);
              }

              v256 += v255 + v255 * (v254 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v593 = *(v11 + 56);
                *(v11 + 40) = *(v593 - 8);
                *(v11 + 56) = v593 - 8;
                --v260;
              }

              while (v260);
            }

            sub_2718285F0(v11);
            if (v32)
            {
              v704 = v256;
              v705 = 4;
              sub_271828638(v11, &v704);
            }

            v594 = *(v11 + 56);
            *(v11 + 40) = *(v594 - 8);
            *(v11 + 56) = v594 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 30:
      sub_27168CAE0(a3, &v691, a4);
      v11 = *a2;
      v114 = v700;
      v115 = v691;
      if (!v691)
      {
        goto LABEL_715;
      }

      v116 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v116->__on_zero_shared)(v116);
          std::__shared_weak_count::__release_weak(v116);
        }

        v115 = v691;
        v117 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v118 = v115;
            (v117->__on_zero_shared)(v117);
            std::__shared_weak_count::__release_weak(v117);
            v115 = v118;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v115 + 96))(&v703);
      }

      else
      {
LABEL_715:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v407 = v696;
          if (v696)
          {
            v408 = v699;
            v409 = v693;
            if (v701 == 1 && v693)
            {
              v410 = v691;
              v411 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v412 = v410;
                  (v411->__on_zero_shared)(v411);
                  std::__shared_weak_count::__release_weak(v411);
                  v410 = v412;
                }
              }

              (*(*v410 + 88))(v410, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v409 = v693;
            }

            v413 = v407 - 1;
            if (v413)
            {
              if (v114)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v409;
                v705 = 4;
                sub_27182976C(v11, &v704);
              }

              v640 = 2 * v408;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v641 = *(v11 + 56);
                *(v11 + 40) = *(v641 - 8);
                *(v11 + 56) = v641 - 8;
                v409 += v640;
                --v413;
              }

              while (v413);
            }

            sub_2718285F0(v11);
            if (v114)
            {
              v704 = v409;
              v705 = 4;
              sub_27182976C(v11, &v704);
            }

            v642 = *(v11 + 56);
            *(v11 + 40) = *(v642 - 8);
            *(v11 + 56) = v642 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 31:
      sub_27168D07C(a3, &v691, a4);
      v11 = *a2;
      v83 = v700;
      v84 = v691;
      if (!v691)
      {
        goto LABEL_607;
      }

      v85 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v691;
        v86 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v84 + 96))(&v703);
      }

      else
      {
LABEL_607:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v344 = v696;
          if (v696)
          {
            v345 = v698;
            v346 = v699;
            v347 = v693;
            if (v701 == 1 && v693)
            {
              v348 = v691;
              v349 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v349->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v350 = v348;
                  (v349->__on_zero_shared)(v349);
                  std::__shared_weak_count::__release_weak(v349);
                  v348 = v350;
                }
              }

              (*(*v348 + 88))(v348, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v347 = v693;
            }

            v351 = v344 - 1;
            if (v351)
            {
              if (v83)
              {
                for (i3 = 0; i3 != v351; ++i3)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v353 = 0;
                  v354 = v83;
                  do
                  {
                    v704 = v347 + 2 * v353;
                    v705 = 4;
                    sub_271829F14(v11, &v704);
                    v353 += v345;
                    --v354;
                  }

                  while (v354);
                  v355 = *(v11 + 56);
                  *(v11 + 40) = *(v355 - 8);
                  *(v11 + 56) = v355 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v347 += 2 * v346;
                }
              }

              else
              {
                v623 = 2 * v346;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v624 = *(v11 + 56);
                  *(v11 + 40) = *(v624 - 8);
                  *(v11 + 56) = v624 - 8;
                  v347 += v623;
                  --v351;
                }

                while (v351);
              }
            }

            sub_2718285F0(v11);
            if (v83)
            {
              v625 = 0;
              do
              {
                v704 = v347 + 2 * v625;
                v705 = 4;
                sub_271829F14(v11, &v704);
                v625 += v345;
                --v83;
              }

              while (v83);
            }

            v626 = *(v11 + 56);
            *(v11 + 40) = *(v626 - 8);
            *(v11 + 56) = v626 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 32:
      sub_27168D618(a3, &v691, a4);
      v11 = *a2;
      v124 = v700;
      v125 = v691;
      if (!v691)
      {
        goto LABEL_745;
      }

      v126 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v126->__on_zero_shared)(v126);
          std::__shared_weak_count::__release_weak(v126);
        }

        v125 = v691;
        v127 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v128 = v125;
            (v127->__on_zero_shared)(v127);
            std::__shared_weak_count::__release_weak(v127);
            v125 = v128;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v125 + 96))(&v703);
      }

      else
      {
LABEL_745:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v421 = v696;
          if (v696)
          {
            v422 = v698;
            v423 = v699;
            v424 = v693;
            if (v701 == 1 && v693)
            {
              v425 = v691;
              v426 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v426->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v427 = v425;
                  (v426->__on_zero_shared)(v426);
                  std::__shared_weak_count::__release_weak(v426);
                  v425 = v427;
                }
              }

              (*(*v425 + 88))(v425, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v424 = v693;
            }

            v428 = v421 - 1;
            if (v428)
            {
              if (v124)
              {
                for (i4 = 0; i4 != v428; ++i4)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v430 = 0;
                  v431 = v124;
                  do
                  {
                    v704 = v424 + 4 * v430;
                    v705 = 4;
                    sub_27182A338(v11, &v704);
                    v430 += v422;
                    --v431;
                  }

                  while (v431);
                  v432 = *(v11 + 56);
                  *(v11 + 40) = *(v432 - 8);
                  *(v11 + 56) = v432 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v424 += 4 * v423;
                }
              }

              else
              {
                v645 = 4 * v423;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v646 = *(v11 + 56);
                  *(v11 + 40) = *(v646 - 8);
                  *(v11 + 56) = v646 - 8;
                  v424 += v645;
                  --v428;
                }

                while (v428);
              }
            }

            sub_2718285F0(v11);
            if (v124)
            {
              v647 = 0;
              do
              {
                v704 = v424 + 4 * v647;
                v705 = 4;
                sub_27182A338(v11, &v704);
                v647 += v422;
                --v124;
              }

              while (v124);
            }

            v648 = *(v11 + 56);
            *(v11 + 40) = *(v648 - 8);
            *(v11 + 56) = v648 - 8;
            if (*(v11 + 88) == 1)
            {
LABEL_1312:
              *(v11 + 88) = 0;
            }
          }
        }
      }

      goto LABEL_1313;
    case 33:
      sub_27168DBB4(a3, &v691, a4);
      v52 = *a2;
      v176 = v700;
      v177 = v691;
      if (!v691)
      {
        goto LABEL_922;
      }

      v178 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v178->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v178->__on_zero_shared)(v178);
          std::__shared_weak_count::__release_weak(v178);
        }

        v177 = v691;
        v179 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v179->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v180 = v177;
            (v179->__on_zero_shared)(v179);
            std::__shared_weak_count::__release_weak(v179);
            v177 = v180;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v177 + 96))(&v703);
      }

      else
      {
LABEL_922:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v515 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v516 = v699;
      v517 = v693;
      if (v701 == 1 && v693)
      {
        v518 = v691;
        v519 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v519->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v520 = v518;
            (v519->__on_zero_shared)(v519);
            std::__shared_weak_count::__release_weak(v519);
            v518 = v520;
          }
        }

        (*(*v518 + 88))(v518, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v517 = v693;
      }

      v521 = v515 - 1;
      if (v515 != 1)
      {
        if (v176)
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v704 = v517;
          v705 = 4;
          sub_271828638(v52, &v704);
        }

        v517 += v516 + v516 * (v515 - 2);
        do
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v669 = *(v52 + 56);
          *(v52 + 40) = *(v669 - 8);
          *(v52 + 56) = v669 - 8;
          --v521;
        }

        while (v521);
      }

      sub_2718285F0(v52);
      if (v176)
      {
        v704 = v517;
        v705 = 4;
        sub_271828638(v52, &v704);
      }

      return;
    case 34:
      sub_27168E14C(a3, &v691, a4);
      v52 = *a2;
      v119 = v700;
      v120 = v691;
      if (!v691)
      {
        goto LABEL_730;
      }

      v121 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
        }

        v120 = v691;
        v122 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v123 = v120;
            (v122->__on_zero_shared)(v122);
            std::__shared_weak_count::__release_weak(v122);
            v120 = v123;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v120 + 96))(&v703);
      }

      else
      {
LABEL_730:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v414 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v415 = v699;
      v416 = v693;
      if (v701 == 1 && v693)
      {
        v417 = v691;
        v418 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v418->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v419 = v417;
            (v418->__on_zero_shared)(v418);
            std::__shared_weak_count::__release_weak(v418);
            v417 = v419;
          }
        }

        (*(*v417 + 88))(v417, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v416 = v693;
      }

      v420 = v414 - 1;
      if (v420)
      {
        if (v119)
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v704 = v416;
          v705 = 4;
          sub_27182976C(v52, &v704);
        }

        v643 = 2 * v415;
        do
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v644 = *(v52 + 56);
          *(v52 + 40) = *(v644 - 8);
          *(v52 + 56) = v644 - 8;
          v416 += v643;
          --v420;
        }

        while (v420);
      }

      sub_2718285F0(v52);
      if (v119)
      {
        v704 = v416;
        v705 = 4;
        sub_27182976C(v52, &v704);
      }

      return;
    case 35:
      sub_27168E6E8(a3, &v691, a4);
      v52 = *a2;
      v109 = v700;
      v110 = v691;
      if (!v691)
      {
        goto LABEL_695;
      }

      v111 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v111->__on_zero_shared)(v111);
          std::__shared_weak_count::__release_weak(v111);
        }

        v110 = v691;
        v112 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v113 = v110;
            (v112->__on_zero_shared)(v112);
            std::__shared_weak_count::__release_weak(v112);
            v110 = v113;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v110 + 96))(&v703);
      }

      else
      {
LABEL_695:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v395 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v396 = v698;
      v397 = v699;
      v398 = v693;
      if (v701 == 1 && v693)
      {
        v399 = v691;
        v400 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v400->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v401 = v399;
            (v400->__on_zero_shared)(v400);
            std::__shared_weak_count::__release_weak(v400);
            v399 = v401;
          }
        }

        (*(*v399 + 88))(v399, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v398 = v693;
      }

      v402 = v395 - 1;
      if (v402)
      {
        if (v109)
        {
          for (i5 = 0; i5 != v402; ++i5)
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v404 = 0;
            v405 = v109;
            do
            {
              v704 = v398 + 2 * v404;
              v705 = 4;
              sub_271829F14(v52, &v704);
              v404 += v396;
              --v405;
            }

            while (v405);
            v406 = *(v52 + 56);
            *(v52 + 40) = *(v406 - 8);
            *(v52 + 56) = v406 - 8;
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v398 += 2 * v397;
          }
        }

        else
        {
          v637 = 2 * v397;
          do
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v638 = *(v52 + 56);
            *(v52 + 40) = *(v638 - 8);
            *(v52 + 56) = v638 - 8;
            v398 += v637;
            --v402;
          }

          while (v402);
        }
      }

      sub_2718285F0(v52);
      if (v109)
      {
        v639 = 0;
        do
        {
          v704 = v398 + 2 * v639;
          v705 = 4;
          sub_271829F14(v52, &v704);
          v639 += v396;
          --v109;
        }

        while (v109);
      }

      break;
    case 36:
      sub_27168EC84(a3, &v691, a4);
      v52 = *a2;
      v104 = v700;
      v105 = v691;
      if (!v691)
      {
        goto LABEL_675;
      }

      v106 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v106->__on_zero_shared)(v106);
          std::__shared_weak_count::__release_weak(v106);
        }

        v105 = v691;
        v107 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
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
        (*(*v105 + 96))(&v703);
      }

      else
      {
LABEL_675:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v383 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v384 = v698;
      v385 = v699;
      v386 = v693;
      if (v701 == 1 && v693)
      {
        v387 = v691;
        v388 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v388->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v389 = v387;
            (v388->__on_zero_shared)(v388);
            std::__shared_weak_count::__release_weak(v388);
            v387 = v389;
          }
        }

        (*(*v387 + 88))(v387, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v386 = v693;
      }

      v390 = v383 - 1;
      if (v390)
      {
        if (v104)
        {
          for (i6 = 0; i6 != v390; ++i6)
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v392 = 0;
            v393 = v104;
            do
            {
              v704 = v386 + 4 * v392;
              v705 = 4;
              sub_27182A338(v52, &v704);
              v392 += v384;
              --v393;
            }

            while (v393);
            v394 = *(v52 + 56);
            *(v52 + 40) = *(v394 - 8);
            *(v52 + 56) = v394 - 8;
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v386 += 4 * v385;
          }
        }

        else
        {
          v634 = 4 * v385;
          do
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v635 = *(v52 + 56);
            *(v52 + 40) = *(v635 - 8);
            *(v52 + 56) = v635 - 8;
            v386 += v634;
            --v390;
          }

          while (v390);
        }
      }

      sub_2718285F0(v52);
      if (v104)
      {
        v636 = 0;
        do
        {
          v704 = v386 + 4 * v636;
          v705 = 4;
          sub_27182A338(v52, &v704);
          v636 += v384;
          --v104;
        }

        while (v104);
      }

      break;
    case 37:
      sub_27168F220(a3, &v691, a4);
      v52 = *a2;
      v161 = v700;
      v162 = v691;
      if (!v691)
      {
        goto LABEL_872;
      }

      v163 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v163->__on_zero_shared)(v163);
          std::__shared_weak_count::__release_weak(v163);
        }

        v162 = v691;
        v164 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v165 = v162;
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
            v162 = v165;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v162 + 96))(&v703);
      }

      else
      {
LABEL_872:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v489 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v490 = v699;
      v491 = v693;
      if (v701 == 1 && v693)
      {
        v492 = v691;
        v493 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v493->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v494 = v492;
            (v493->__on_zero_shared)(v493);
            std::__shared_weak_count::__release_weak(v493);
            v492 = v494;
          }
        }

        (*(*v492 + 88))(v492, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v491 = v693;
      }

      v495 = v489 - 1;
      if (v489 != 1)
      {
        if (v161)
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v704 = v491;
          v705 = 4;
          sub_271828638(v52, &v704);
        }

        v491 += v490 + v490 * (v489 - 2);
        do
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v661 = *(v52 + 56);
          *(v52 + 40) = *(v661 - 8);
          *(v52 + 56) = v661 - 8;
          --v495;
        }

        while (v495);
      }

      sub_2718285F0(v52);
      if (v161)
      {
        v704 = v491;
        v705 = 4;
        sub_271828638(v52, &v704);
      }

      return;
    case 38:
      sub_27168F7B8(a3, &v691, a4);
      v52 = *a2;
      v186 = v700;
      v187 = v691;
      if (!v691)
      {
        goto LABEL_957;
      }

      v188 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v188->__on_zero_shared)(v188);
          std::__shared_weak_count::__release_weak(v188);
        }

        v187 = v691;
        v189 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v189->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v190 = v187;
            (v189->__on_zero_shared)(v189);
            std::__shared_weak_count::__release_weak(v189);
            v187 = v190;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v187 + 96))(&v703);
      }

      else
      {
LABEL_957:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v534 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v535 = v699;
      v536 = v693;
      if (v701 == 1 && v693)
      {
        v537 = v691;
        v538 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v538->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v539 = v537;
            (v538->__on_zero_shared)(v538);
            std::__shared_weak_count::__release_weak(v538);
            v537 = v539;
          }
        }

        (*(*v537 + 88))(v537, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v536 = v693;
      }

      v540 = v534 - 1;
      if (v540)
      {
        if (v186)
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v704 = v536;
          v705 = 4;
          sub_27182976C(v52, &v704);
        }

        v674 = 2 * v535;
        do
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v675 = *(v52 + 56);
          *(v52 + 40) = *(v675 - 8);
          *(v52 + 56) = v675 - 8;
          v536 += v674;
          --v540;
        }

        while (v540);
      }

      sub_2718285F0(v52);
      if (v186)
      {
        v704 = v536;
        v705 = 4;
        sub_27182976C(v52, &v704);
      }

      return;
    case 39:
      sub_27168FD54(a3, &v691, a4);
      v52 = *a2;
      v68 = v700;
      v69 = v691;
      if (!v691)
      {
        goto LABEL_557;
      }

      v70 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v70->__on_zero_shared)(v70);
          std::__shared_weak_count::__release_weak(v70);
        }

        v69 = v691;
        v71 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v72 = v69;
            (v71->__on_zero_shared)(v71);
            std::__shared_weak_count::__release_weak(v71);
            v69 = v72;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v69 + 96))(&v703);
      }

      else
      {
LABEL_557:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v318 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v319 = v698;
      v320 = v699;
      v321 = v693;
      if (v701 == 1 && v693)
      {
        v322 = v691;
        v323 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v323->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v324 = v322;
            (v323->__on_zero_shared)(v323);
            std::__shared_weak_count::__release_weak(v323);
            v322 = v324;
          }
        }

        (*(*v322 + 88))(v322, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v321 = v693;
      }

      v325 = v318 - 1;
      if (v325)
      {
        if (v68)
        {
          for (i7 = 0; i7 != v325; ++i7)
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v327 = 0;
            v328 = v68;
            do
            {
              v704 = v321 + 2 * v327;
              v705 = 4;
              sub_271829F14(v52, &v704);
              v327 += v319;
              --v328;
            }

            while (v328);
            v329 = *(v52 + 56);
            *(v52 + 40) = *(v329 - 8);
            *(v52 + 56) = v329 - 8;
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v321 += 2 * v320;
          }
        }

        else
        {
          v614 = 2 * v320;
          do
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v615 = *(v52 + 56);
            *(v52 + 40) = *(v615 - 8);
            *(v52 + 56) = v615 - 8;
            v321 += v614;
            --v325;
          }

          while (v325);
        }
      }

      sub_2718285F0(v52);
      if (v68)
      {
        v616 = 0;
        do
        {
          v704 = v321 + 2 * v616;
          v705 = 4;
          sub_271829F14(v52, &v704);
          v616 += v319;
          --v68;
        }

        while (v68);
      }

      break;
    case 40:
      sub_2716902F0(a3, &v691, a4);
      v52 = *a2;
      v53 = v700;
      v54 = v691;
      if (!v691)
      {
        goto LABEL_502;
      }

      v55 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v54 = v691;
        v56 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v57 = v54;
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
            v54 = v57;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v54 + 96))(&v703);
      }

      else
      {
LABEL_502:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v287 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v288 = v698;
      v289 = v699;
      v290 = v693;
      if (v701 == 1 && v693)
      {
        v291 = v691;
        v292 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v292->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v293 = v291;
            (v292->__on_zero_shared)(v292);
            std::__shared_weak_count::__release_weak(v292);
            v291 = v293;
          }
        }

        (*(*v291 + 88))(v291, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v290 = v693;
      }

      v294 = v287 - 1;
      if (v294)
      {
        if (v53)
        {
          for (i8 = 0; i8 != v294; ++i8)
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v296 = 0;
            v297 = v53;
            do
            {
              v704 = v290 + 4 * v296;
              v705 = 4;
              sub_27182A338(v52, &v704);
              v296 += v288;
              --v297;
            }

            while (v297);
            v298 = *(v52 + 56);
            *(v52 + 40) = *(v298 - 8);
            *(v52 + 56) = v298 - 8;
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v290 += 4 * v289;
          }
        }

        else
        {
          v604 = 4 * v289;
          do
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v605 = *(v52 + 56);
            *(v52 + 40) = *(v605 - 8);
            *(v52 + 56) = v605 - 8;
            v290 += v604;
            --v294;
          }

          while (v294);
        }
      }

      sub_2718285F0(v52);
      if (v53)
      {
        v606 = 0;
        do
        {
          v704 = v290 + 4 * v606;
          v705 = 4;
          sub_27182A338(v52, &v704);
          v606 += v288;
          --v53;
        }

        while (v53);
      }

      break;
    default:
      return;
  }

  v676 = *(v52 + 56);
  *(v52 + 40) = *(v676 - 8);
  *(v52 + 56) = v676 - 8;
  if (*(v52 + 88) == 1)
  {
    *(v52 + 88) = 0;
  }

LABEL_1313:
  v681 = v703;
  v703 = 0;
  if (v681)
  {
    (*(*v681 + 8))(v681);
  }

  v682 = v692;
  if (v692 && !atomic_fetch_add(&v692->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v682->__on_zero_shared)(v682);
    std::__shared_weak_count::__release_weak(v682);
  }
}

void sub_2716A7AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27131626C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271317FB8(va);
  _Unwind_Resume(a1);
}

void sub_2716A7AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271312A04(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271310EE8(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27132560C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271315268(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271320E00(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27130CB34(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27130D8DC(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271324668(va);
  _Unwind_Resume(a1);
}

void sub_2716A7B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27130557C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271306464(va);
  _Unwind_Resume(a1);
}

void sub_2716A7BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27130B044(va);
  _Unwind_Resume(a1);
}

void sub_2716A7BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271311C5C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713082D0(va);
  _Unwind_Resume(a1);
}

void sub_2716A7BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27130BDEC(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271320058(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271321B48(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27131E084(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713228F0(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271323664(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27131C594(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27130735C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271309070(va);
  _Unwind_Resume(a1);
}

void sub_2716A7CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27131F088(va);
  _Unwind_Resume(a1);
}

void sub_2716A7CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27131AA78(va);
  _Unwind_Resume(a1);
}

void sub_2716A7CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271317210(va);
  _Unwind_Resume(a1);
}

void sub_2716A7CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713263B4(va);
  _Unwind_Resume(a1);
}

void sub_2716A7CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27130A074(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27131374C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271327128(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27130F3F8(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271310140(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271318D2C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27131D33C(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27130E650(va);
  _Unwind_Resume(a1);
}

void sub_2716A7D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271319D30(va);
  _Unwind_Resume(a1);
}

void sub_2716A7DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2713144F4(va);
  _Unwind_Resume(a1);
}

void sub_2716A7DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27131B820(va);
  _Unwind_Resume(a1);
}

void sub_2716A7DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271304654(va);
  _Unwind_Resume(a1);
}

void sub_2716A7DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a20;
  a20 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_27131626C(&a10);
  _Unwind_Resume(a1);
}

void sub_2716A8AD4(int a1, uint64_t *a2, uint64_t a3, __n128 a4)
{
  switch(a1)
  {
    case 0:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
    case 1:
      sub_2715EF504(a3, &v691, a4);
      v5 = *a2;
      v6 = v694;
      v7 = v691;
      if (!v691)
      {
        goto LABEL_860;
      }

      v8 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        v7 = v691;
        v9 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v10 = v7;
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
            v7 = v10;
          }
        }
      }

      if (BYTE1(v698) == 1)
      {
        (*(*v7 + 96))(&v703);
      }

      else
      {
LABEL_860:
        v703 = 0;
      }

      if (v694)
      {
        v484 = v695;
        if (v695)
        {
          v485 = v693;
          if (v698 == 1 && v693)
          {
            v486 = v691;
            v487 = v692;
            if (v692)
            {
              atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v487->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v488 = v486;
                (v487->__on_zero_shared)(v487);
                std::__shared_weak_count::__release_weak(v487);
                v486 = v488;
              }
            }

            (*(*v486 + 88))(v486, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v485 = v693;
          }

          if (v484 != 1)
          {
            v704 = v485;
            v705 = v6;
            sub_271828638(v5, &v704);
          }

          v704 = v485;
          v705 = v6;
          sub_271828638(v5, &v704);
        }
      }

      goto LABEL_1313;
    case 2:
      sub_2715EFA94(a3, &v691, a4);
      v155 = *a2;
      v156 = v694;
      v157 = v691;
      if (!v691)
      {
        goto LABEL_848;
      }

      v158 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v158->__on_zero_shared)(v158);
          std::__shared_weak_count::__release_weak(v158);
        }

        v157 = v691;
        v159 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v160 = v157;
            (v159->__on_zero_shared)(v159);
            std::__shared_weak_count::__release_weak(v159);
            v157 = v160;
          }
        }
      }

      if (BYTE1(v698) == 1)
      {
        (*(*v157 + 96))(&v703);
      }

      else
      {
LABEL_848:
        v703 = 0;
      }

      if (v694)
      {
        v479 = v695;
        if (v695)
        {
          v480 = v693;
          if (v698 == 1 && v693)
          {
            v481 = v691;
            v482 = v692;
            if (v692)
            {
              atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v482->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v483 = v481;
                (v482->__on_zero_shared)(v482);
                std::__shared_weak_count::__release_weak(v482);
                v481 = v483;
              }
            }

            (*(*v481 + 88))(v481, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v480 = v693;
          }

          if (v479 != 1)
          {
            v704 = v480;
            v705 = v156;
            sub_27182976C(v155, &v704);
          }

          v704 = v480;
          v705 = v156;
          sub_27182976C(v155, &v704);
        }
      }

      goto LABEL_1313;
    case 3:
      sub_271683A48(a3, &v691, a4);
      v149 = *a2;
      v150 = v694;
      v151 = v691;
      if (!v691)
      {
        goto LABEL_835;
      }

      v152 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v152->__on_zero_shared)(v152);
          std::__shared_weak_count::__release_weak(v152);
        }

        v151 = v691;
        v153 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v154 = v151;
            (v153->__on_zero_shared)(v153);
            std::__shared_weak_count::__release_weak(v153);
            v151 = v154;
          }
        }
      }

      if (BYTE1(v698) == 1)
      {
        (*(*v151 + 96))(&v703);
      }

      else
      {
LABEL_835:
        v703 = 0;
      }

      if (v694)
      {
        v471 = v695;
        if (v695)
        {
          v472 = v697;
          v473 = v693;
          if (v698 == 1 && v693)
          {
            v474 = v691;
            v475 = v692;
            if (v692)
            {
              atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v475->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v476 = v474;
                (v475->__on_zero_shared)(v475);
                std::__shared_weak_count::__release_weak(v475);
                v474 = v476;
              }
            }

            (*(*v474 + 88))(v474, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v473 = v693;
          }

          v477 = v471 - 1;
          if (v477)
          {
            v478 = 2 * v472;
            do
            {
              v704 = v473;
              v705 = v150;
              sub_271829F14(v149, &v704);
              v473 += v478;
              --v477;
            }

            while (v477);
          }

          v704 = v473;
          v705 = v150;
          sub_271829F14(v149, &v704);
        }
      }

      goto LABEL_1313;
    case 4:
      sub_271683F50(a3, &v691, a4);
      v93 = *a2;
      v94 = v694;
      v95 = v691;
      if (!v691)
      {
        goto LABEL_642;
      }

      v96 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v96->__on_zero_shared)(v96);
          std::__shared_weak_count::__release_weak(v96);
        }

        v95 = v691;
        v97 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v98 = v95;
            (v97->__on_zero_shared)(v97);
            std::__shared_weak_count::__release_weak(v97);
            v95 = v98;
          }
        }
      }

      if (BYTE1(v698) == 1)
      {
        (*(*v95 + 96))(&v703);
      }

      else
      {
LABEL_642:
        v703 = 0;
      }

      if (v694)
      {
        v363 = v695;
        if (v695)
        {
          v364 = v697;
          v365 = v693;
          if (v698 == 1 && v693)
          {
            v366 = v691;
            v367 = v692;
            if (v692)
            {
              atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v367->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v368 = v366;
                (v367->__on_zero_shared)(v367);
                std::__shared_weak_count::__release_weak(v367);
                v366 = v368;
              }
            }

            (*(*v366 + 88))(v366, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v365 = v693;
          }

          v369 = v363 - 1;
          if (v369)
          {
            v370 = 4 * v364;
            do
            {
              v704 = v365;
              v705 = v94;
              sub_27182A338(v93, &v704);
              v365 += v370;
              --v369;
            }

            while (v369);
          }

          v704 = v365;
          v705 = v94;
          sub_27182A338(v93, &v704);
        }
      }

      goto LABEL_1313;
    case 5:
      sub_271684458(a3, &v691, a4);
      v11 = *a2;
      v134 = v700;
      v135 = v691;
      if (!v691)
      {
        goto LABEL_780;
      }

      v136 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v136->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v136->__on_zero_shared)(v136);
          std::__shared_weak_count::__release_weak(v136);
        }

        v135 = v691;
        v137 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v137->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v138 = v135;
            (v137->__on_zero_shared)(v137);
            std::__shared_weak_count::__release_weak(v137);
            v135 = v138;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v135 + 96))(&v703);
      }

      else
      {
LABEL_780:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v440 = v696;
          if (v696)
          {
            v441 = v699;
            v442 = v693;
            if (v701 == 1 && v693)
            {
              v443 = v691;
              v444 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v444->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v445 = v443;
                  (v444->__on_zero_shared)(v444);
                  std::__shared_weak_count::__release_weak(v444);
                  v443 = v445;
                }
              }

              (*(*v443 + 88))(v443, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v442 = v693;
            }

            v446 = v440 - 1;
            if (v440 != 1)
            {
              if (v134)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v442;
                v705 = 2;
                sub_271828638(v11, &v704);
              }

              v442 += v441 + v441 * (v440 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v651 = *(v11 + 56);
                *(v11 + 40) = *(v651 - 8);
                *(v11 + 56) = v651 - 8;
                --v446;
              }

              while (v446);
            }

            sub_2718285F0(v11);
            if (v134)
            {
              v704 = v442;
              v705 = 2;
              sub_271828638(v11, &v704);
            }

            v652 = *(v11 + 56);
            *(v11 + 40) = *(v652 - 8);
            *(v11 + 56) = v652 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 6:
      sub_2716849F0(a3, &v691, a4);
      v11 = *a2;
      v88 = v700;
      v89 = v691;
      if (!v691)
      {
        goto LABEL_627;
      }

      v90 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v90->__on_zero_shared)(v90);
          std::__shared_weak_count::__release_weak(v90);
        }

        v89 = v691;
        v91 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v92 = v89;
            (v91->__on_zero_shared)(v91);
            std::__shared_weak_count::__release_weak(v91);
            v89 = v92;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v89 + 96))(&v703);
      }

      else
      {
LABEL_627:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v356 = v696;
          if (v696)
          {
            v357 = v699;
            v358 = v693;
            if (v701 == 1 && v693)
            {
              v359 = v691;
              v360 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v360->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v361 = v359;
                  (v360->__on_zero_shared)(v360);
                  std::__shared_weak_count::__release_weak(v360);
                  v359 = v361;
                }
              }

              (*(*v359 + 88))(v359, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v358 = v693;
            }

            v362 = v356 - 1;
            if (v362)
            {
              if (v88)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v358;
                v705 = 2;
                sub_27182976C(v11, &v704);
              }

              v627 = 2 * v357;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v628 = *(v11 + 56);
                *(v11 + 40) = *(v628 - 8);
                *(v11 + 56) = v628 - 8;
                v358 += v627;
                --v362;
              }

              while (v362);
            }

            sub_2718285F0(v11);
            if (v88)
            {
              v704 = v358;
              v705 = 2;
              sub_27182976C(v11, &v704);
            }

            v629 = *(v11 + 56);
            *(v11 + 40) = *(v629 - 8);
            *(v11 + 56) = v629 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 7:
      sub_271684F8C(a3, &v691, a4);
      v11 = *a2;
      v63 = v700;
      v64 = v691;
      if (!v691)
      {
        goto LABEL_537;
      }

      v65 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v65->__on_zero_shared)(v65);
          std::__shared_weak_count::__release_weak(v65);
        }

        v64 = v691;
        v66 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v67 = v64;
            (v66->__on_zero_shared)(v66);
            std::__shared_weak_count::__release_weak(v66);
            v64 = v67;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v64 + 96))(&v703);
      }

      else
      {
LABEL_537:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v306 = v696;
          if (v696)
          {
            v307 = v698;
            v308 = v699;
            v309 = v693;
            if (v701 == 1 && v693)
            {
              v310 = v691;
              v311 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v311->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v312 = v310;
                  (v311->__on_zero_shared)(v311);
                  std::__shared_weak_count::__release_weak(v311);
                  v310 = v312;
                }
              }

              (*(*v310 + 88))(v310, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v309 = v693;
            }

            v313 = v306 - 1;
            if (v313)
            {
              if (v63)
              {
                for (i = 0; i != v313; ++i)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v315 = 0;
                  v316 = v63;
                  do
                  {
                    v704 = v309 + 2 * v315;
                    v705 = 2;
                    sub_271829F14(v11, &v704);
                    v315 += v307;
                    --v316;
                  }

                  while (v316);
                  v317 = *(v11 + 56);
                  *(v11 + 40) = *(v317 - 8);
                  *(v11 + 56) = v317 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v309 += 2 * v308;
                }
              }

              else
              {
                v610 = 2 * v308;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v611 = *(v11 + 56);
                  *(v11 + 40) = *(v611 - 8);
                  *(v11 + 56) = v611 - 8;
                  v309 += v610;
                  --v313;
                }

                while (v313);
              }
            }

            sub_2718285F0(v11);
            if (v63)
            {
              v612 = 0;
              do
              {
                v704 = v309 + 2 * v612;
                v705 = 2;
                sub_271829F14(v11, &v704);
                v612 += v307;
                --v63;
              }

              while (v63);
            }

            v613 = *(v11 + 56);
            *(v11 + 40) = *(v613 - 8);
            *(v11 + 56) = v613 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 8:
      sub_271685528(a3, &v691, a4);
      v11 = *a2;
      v144 = v700;
      v145 = v691;
      if (!v691)
      {
        goto LABEL_815;
      }

      v146 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v146->__on_zero_shared)(v146);
          std::__shared_weak_count::__release_weak(v146);
        }

        v145 = v691;
        v147 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v148 = v145;
            (v147->__on_zero_shared)(v147);
            std::__shared_weak_count::__release_weak(v147);
            v145 = v148;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v145 + 96))(&v703);
      }

      else
      {
LABEL_815:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v459 = v696;
          if (v696)
          {
            v460 = v698;
            v461 = v699;
            v462 = v693;
            if (v701 == 1 && v693)
            {
              v463 = v691;
              v464 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v464->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v465 = v463;
                  (v464->__on_zero_shared)(v464);
                  std::__shared_weak_count::__release_weak(v464);
                  v463 = v465;
                }
              }

              (*(*v463 + 88))(v463, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v462 = v693;
            }

            v466 = v459 - 1;
            if (v466)
            {
              if (v144)
              {
                for (j = 0; j != v466; ++j)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v468 = 0;
                  v469 = v144;
                  do
                  {
                    v704 = v462 + 4 * v468;
                    v705 = 2;
                    sub_27182A338(v11, &v704);
                    v468 += v460;
                    --v469;
                  }

                  while (v469);
                  v470 = *(v11 + 56);
                  *(v11 + 40) = *(v470 - 8);
                  *(v11 + 56) = v470 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v462 += 4 * v461;
                }
              }

              else
              {
                v657 = 4 * v461;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v658 = *(v11 + 56);
                  *(v11 + 40) = *(v658 - 8);
                  *(v11 + 56) = v658 - 8;
                  v462 += v657;
                  --v466;
                }

                while (v466);
              }
            }

            sub_2718285F0(v11);
            if (v144)
            {
              v659 = 0;
              do
              {
                v704 = v462 + 4 * v659;
                v705 = 2;
                sub_27182A338(v11, &v704);
                v659 += v460;
                --v144;
              }

              while (v144);
            }

            v660 = *(v11 + 56);
            *(v11 + 40) = *(v660 - 8);
            *(v11 + 56) = v660 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 9:
      sub_271685AC4(a3, &v691, a4);
      v11 = *a2;
      v129 = v700;
      v130 = v691;
      if (!v691)
      {
        goto LABEL_765;
      }

      v131 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v131->__on_zero_shared)(v131);
          std::__shared_weak_count::__release_weak(v131);
        }

        v130 = v691;
        v132 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v132->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v133 = v130;
            (v132->__on_zero_shared)(v132);
            std::__shared_weak_count::__release_weak(v132);
            v130 = v133;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v130 + 96))(&v703);
      }

      else
      {
LABEL_765:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v433 = v696;
          if (v696)
          {
            v434 = v699;
            v435 = v693;
            if (v701 == 1 && v693)
            {
              v436 = v691;
              v437 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v437->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v438 = v436;
                  (v437->__on_zero_shared)(v437);
                  std::__shared_weak_count::__release_weak(v437);
                  v436 = v438;
                }
              }

              (*(*v436 + 88))(v436, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v435 = v693;
            }

            v439 = v433 - 1;
            if (v433 != 1)
            {
              if (v129)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v435;
                v705 = 3;
                sub_271828638(v11, &v704);
              }

              v435 += v434 + v434 * (v433 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v649 = *(v11 + 56);
                *(v11 + 40) = *(v649 - 8);
                *(v11 + 56) = v649 - 8;
                --v439;
              }

              while (v439);
            }

            sub_2718285F0(v11);
            if (v129)
            {
              v704 = v435;
              v705 = 3;
              sub_271828638(v11, &v704);
            }

            v650 = *(v11 + 56);
            *(v11 + 40) = *(v650 - 8);
            *(v11 + 56) = v650 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 10:
      sub_27168605C(a3, &v691, a4);
      v11 = *a2;
      v171 = v700;
      v172 = v691;
      if (!v691)
      {
        goto LABEL_907;
      }

      v173 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v173->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v173->__on_zero_shared)(v173);
          std::__shared_weak_count::__release_weak(v173);
        }

        v172 = v691;
        v174 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v174->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v175 = v172;
            (v174->__on_zero_shared)(v174);
            std::__shared_weak_count::__release_weak(v174);
            v172 = v175;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v172 + 96))(&v703);
      }

      else
      {
LABEL_907:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v508 = v696;
          if (v696)
          {
            v509 = v699;
            v510 = v693;
            if (v701 == 1 && v693)
            {
              v511 = v691;
              v512 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v512->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v513 = v511;
                  (v512->__on_zero_shared)(v512);
                  std::__shared_weak_count::__release_weak(v512);
                  v511 = v513;
                }
              }

              (*(*v511 + 88))(v511, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v510 = v693;
            }

            v514 = v508 - 1;
            if (v514)
            {
              if (v171)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v510;
                v705 = 3;
                sub_27182976C(v11, &v704);
              }

              v666 = 2 * v509;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v667 = *(v11 + 56);
                *(v11 + 40) = *(v667 - 8);
                *(v11 + 56) = v667 - 8;
                v510 += v666;
                --v514;
              }

              while (v514);
            }

            sub_2718285F0(v11);
            if (v171)
            {
              v704 = v510;
              v705 = 3;
              sub_27182976C(v11, &v704);
            }

            v668 = *(v11 + 56);
            *(v11 + 40) = *(v668 - 8);
            *(v11 + 56) = v668 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 11:
      sub_2716865F8(a3, &v691, a4);
      v11 = *a2;
      v166 = v700;
      v167 = v691;
      if (!v691)
      {
        goto LABEL_887;
      }

      v168 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v168->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v168->__on_zero_shared)(v168);
          std::__shared_weak_count::__release_weak(v168);
        }

        v167 = v691;
        v169 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v170 = v167;
            (v169->__on_zero_shared)(v169);
            std::__shared_weak_count::__release_weak(v169);
            v167 = v170;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v167 + 96))(&v703);
      }

      else
      {
LABEL_887:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v496 = v696;
          if (v696)
          {
            v497 = v698;
            v498 = v699;
            v499 = v693;
            if (v701 == 1 && v693)
            {
              v500 = v691;
              v501 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v501->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v502 = v500;
                  (v501->__on_zero_shared)(v501);
                  std::__shared_weak_count::__release_weak(v501);
                  v500 = v502;
                }
              }

              (*(*v500 + 88))(v500, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v499 = v693;
            }

            v503 = v496 - 1;
            if (v503)
            {
              if (v166)
              {
                for (k = 0; k != v503; ++k)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v505 = 0;
                  v506 = v166;
                  do
                  {
                    v704 = v499 + 2 * v505;
                    v705 = 3;
                    sub_271829F14(v11, &v704);
                    v505 += v497;
                    --v506;
                  }

                  while (v506);
                  v507 = *(v11 + 56);
                  *(v11 + 40) = *(v507 - 8);
                  *(v11 + 56) = v507 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v499 += 2 * v498;
                }
              }

              else
              {
                v662 = 2 * v498;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v663 = *(v11 + 56);
                  *(v11 + 40) = *(v663 - 8);
                  *(v11 + 56) = v663 - 8;
                  v499 += v662;
                  --v503;
                }

                while (v503);
              }
            }

            sub_2718285F0(v11);
            if (v166)
            {
              v664 = 0;
              do
              {
                v704 = v499 + 2 * v664;
                v705 = 3;
                sub_271829F14(v11, &v704);
                v664 += v497;
                --v166;
              }

              while (v166);
            }

            v665 = *(v11 + 56);
            *(v11 + 40) = *(v665 - 8);
            *(v11 + 56) = v665 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 12:
      sub_271686B94(a3, &v691, a4);
      v11 = *a2;
      v27 = v700;
      v28 = v691;
      if (!v691)
      {
        goto LABEL_417;
      }

      v29 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v29->__on_zero_shared)(v29);
          std::__shared_weak_count::__release_weak(v29);
        }

        v28 = v691;
        v30 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v31 = v28;
            (v30->__on_zero_shared)(v30);
            std::__shared_weak_count::__release_weak(v30);
            v28 = v31;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v28 + 96))(&v703);
      }

      else
      {
LABEL_417:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v242 = v696;
          if (v696)
          {
            v243 = v698;
            v244 = v699;
            v245 = v693;
            if (v701 == 1 && v693)
            {
              v246 = v691;
              v247 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v247->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v248 = v246;
                  (v247->__on_zero_shared)(v247);
                  std::__shared_weak_count::__release_weak(v247);
                  v246 = v248;
                }
              }

              (*(*v246 + 88))(v246, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v245 = v693;
            }

            v249 = v242 - 1;
            if (v249)
            {
              if (v27)
              {
                for (m = 0; m != v249; ++m)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v251 = 0;
                  v252 = v27;
                  do
                  {
                    v704 = v245 + 4 * v251;
                    v705 = 3;
                    sub_27182A338(v11, &v704);
                    v251 += v243;
                    --v252;
                  }

                  while (v252);
                  v253 = *(v11 + 56);
                  *(v11 + 40) = *(v253 - 8);
                  *(v11 + 56) = v253 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v245 += 4 * v244;
                }
              }

              else
              {
                v589 = 4 * v244;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v590 = *(v11 + 56);
                  *(v11 + 40) = *(v590 - 8);
                  *(v11 + 56) = v590 - 8;
                  v245 += v589;
                  --v249;
                }

                while (v249);
              }
            }

            sub_2718285F0(v11);
            if (v27)
            {
              v591 = 0;
              do
              {
                v704 = v245 + 4 * v591;
                v705 = 3;
                sub_27182A338(v11, &v704);
                v591 += v243;
                --v27;
              }

              while (v27);
            }

            v592 = *(v11 + 56);
            *(v11 + 40) = *(v592 - 8);
            *(v11 + 56) = v592 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 13:
      sub_271687130(a3, &v691, a4);
      v11 = *a2;
      v47 = v700;
      v48 = v691;
      if (!v691)
      {
        goto LABEL_487;
      }

      v49 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        v48 = v691;
        v50 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v51 = v48;
            (v50->__on_zero_shared)(v50);
            std::__shared_weak_count::__release_weak(v50);
            v48 = v51;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v48 + 96))(&v703);
      }

      else
      {
LABEL_487:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v280 = v696;
          if (v696)
          {
            v281 = v699;
            v282 = v693;
            if (v701 == 1 && v693)
            {
              v283 = v691;
              v284 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v284->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v285 = v283;
                  (v284->__on_zero_shared)(v284);
                  std::__shared_weak_count::__release_weak(v284);
                  v283 = v285;
                }
              }

              (*(*v283 + 88))(v283, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v282 = v693;
            }

            v286 = v280 - 1;
            if (v280 != 1)
            {
              if (v47)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v282;
                v705 = 4;
                sub_271828638(v11, &v704);
              }

              v282 += v281 + v281 * (v280 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v602 = *(v11 + 56);
                *(v11 + 40) = *(v602 - 8);
                *(v11 + 56) = v602 - 8;
                --v286;
              }

              while (v286);
            }

            sub_2718285F0(v11);
            if (v47)
            {
              v704 = v282;
              v705 = 4;
              sub_271828638(v11, &v704);
            }

            v603 = *(v11 + 56);
            *(v11 + 40) = *(v603 - 8);
            *(v11 + 56) = v603 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 14:
      sub_2716876C8(a3, &v691, a4);
      v11 = *a2;
      v42 = v700;
      v43 = v691;
      if (!v691)
      {
        goto LABEL_472;
      }

      v44 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
        }

        v43 = v691;
        v45 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v46 = v43;
            (v45->__on_zero_shared)(v45);
            std::__shared_weak_count::__release_weak(v45);
            v43 = v46;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v43 + 96))(&v703);
      }

      else
      {
LABEL_472:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v273 = v696;
          if (v696)
          {
            v274 = v699;
            v275 = v693;
            if (v701 == 1 && v693)
            {
              v276 = v691;
              v277 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v277->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v278 = v276;
                  (v277->__on_zero_shared)(v277);
                  std::__shared_weak_count::__release_weak(v277);
                  v276 = v278;
                }
              }

              (*(*v276 + 88))(v276, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v275 = v693;
            }

            v279 = v273 - 1;
            if (v279)
            {
              if (v42)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v275;
                v705 = 4;
                sub_27182976C(v11, &v704);
              }

              v599 = 2 * v274;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v600 = *(v11 + 56);
                *(v11 + 40) = *(v600 - 8);
                *(v11 + 56) = v600 - 8;
                v275 += v599;
                --v279;
              }

              while (v279);
            }

            sub_2718285F0(v11);
            if (v42)
            {
              v704 = v275;
              v705 = 4;
              sub_27182976C(v11, &v704);
            }

            v601 = *(v11 + 56);
            *(v11 + 40) = *(v601 - 8);
            *(v11 + 56) = v601 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 15:
      sub_271687C64(a3, &v691, a4);
      v11 = *a2;
      v191 = v700;
      v192 = v691;
      if (!v691)
      {
        goto LABEL_972;
      }

      v193 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v193->__on_zero_shared)(v193);
          std::__shared_weak_count::__release_weak(v193);
        }

        v192 = v691;
        v194 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v195 = v192;
            (v194->__on_zero_shared)(v194);
            std::__shared_weak_count::__release_weak(v194);
            v192 = v195;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v192 + 96))(&v703);
      }

      else
      {
LABEL_972:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v541 = v696;
          if (v696)
          {
            v542 = v698;
            v543 = v699;
            v544 = v693;
            if (v701 == 1 && v693)
            {
              v545 = v691;
              v546 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v546->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v547 = v545;
                  (v546->__on_zero_shared)(v546);
                  std::__shared_weak_count::__release_weak(v546);
                  v545 = v547;
                }
              }

              (*(*v545 + 88))(v545, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v544 = v693;
            }

            v548 = v541 - 1;
            if (v548)
            {
              if (v191)
              {
                for (n = 0; n != v548; ++n)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v550 = 0;
                  v551 = v191;
                  do
                  {
                    v704 = v544 + 2 * v550;
                    v705 = 4;
                    sub_271829F14(v11, &v704);
                    v550 += v542;
                    --v551;
                  }

                  while (v551);
                  v552 = *(v11 + 56);
                  *(v11 + 40) = *(v552 - 8);
                  *(v11 + 56) = v552 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v544 += 2 * v543;
                }
              }

              else
              {
                v677 = 2 * v543;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v678 = *(v11 + 56);
                  *(v11 + 40) = *(v678 - 8);
                  *(v11 + 56) = v678 - 8;
                  v544 += v677;
                  --v548;
                }

                while (v548);
              }
            }

            sub_2718285F0(v11);
            if (v191)
            {
              v679 = 0;
              do
              {
                v704 = v544 + 2 * v679;
                v705 = 4;
                sub_271829F14(v11, &v704);
                v679 += v542;
                --v191;
              }

              while (v191);
            }

            v680 = *(v11 + 56);
            *(v11 + 40) = *(v680 - 8);
            *(v11 + 56) = v680 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 16:
      sub_271688200(a3, &v691, a4);
      v11 = *a2;
      v139 = v700;
      v140 = v691;
      if (!v691)
      {
        goto LABEL_795;
      }

      v141 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v141->__on_zero_shared)(v141);
          std::__shared_weak_count::__release_weak(v141);
        }

        v140 = v691;
        v142 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v142->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v143 = v140;
            (v142->__on_zero_shared)(v142);
            std::__shared_weak_count::__release_weak(v142);
            v140 = v143;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v140 + 96))(&v703);
      }

      else
      {
LABEL_795:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v447 = v696;
          if (v696)
          {
            v448 = v698;
            v449 = v699;
            v450 = v693;
            if (v701 == 1 && v693)
            {
              v451 = v691;
              v452 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v452->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v453 = v451;
                  (v452->__on_zero_shared)(v452);
                  std::__shared_weak_count::__release_weak(v452);
                  v451 = v453;
                }
              }

              (*(*v451 + 88))(v451, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v450 = v693;
            }

            v454 = v447 - 1;
            if (v454)
            {
              if (v139)
              {
                for (ii = 0; ii != v454; ++ii)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v456 = 0;
                  v457 = v139;
                  do
                  {
                    v704 = v450 + 4 * v456;
                    v705 = 4;
                    sub_27182A338(v11, &v704);
                    v456 += v448;
                    --v457;
                  }

                  while (v457);
                  v458 = *(v11 + 56);
                  *(v11 + 40) = *(v458 - 8);
                  *(v11 + 56) = v458 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v450 += 4 * v449;
                }
              }

              else
              {
                v653 = 4 * v449;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v654 = *(v11 + 56);
                  *(v11 + 40) = *(v654 - 8);
                  *(v11 + 56) = v654 - 8;
                  v450 += v653;
                  --v454;
                }

                while (v454);
              }
            }

            sub_2718285F0(v11);
            if (v139)
            {
              v655 = 0;
              do
              {
                v704 = v450 + 4 * v655;
                v705 = 4;
                sub_27182A338(v11, &v704);
                v655 += v448;
                --v139;
              }

              while (v139);
            }

            v656 = *(v11 + 56);
            *(v11 + 40) = *(v656 - 8);
            *(v11 + 56) = v656 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 17:
      sub_27168879C(a3, &v691, a4);
      v11 = *a2;
      v196 = v700;
      v197 = v691;
      if (!v691)
      {
        goto LABEL_992;
      }

      v198 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v198->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v198->__on_zero_shared)(v198);
          std::__shared_weak_count::__release_weak(v198);
        }

        v197 = v691;
        v199 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v200 = v197;
            (v199->__on_zero_shared)(v199);
            std::__shared_weak_count::__release_weak(v199);
            v197 = v200;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v197 + 96))(&v703);
      }

      else
      {
LABEL_992:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v553 = v696;
          if (v696)
          {
            v554 = v699;
            v555 = v693;
            if (v701 == 1 && v693)
            {
              v556 = v691;
              v557 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v557->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v558 = v556;
                  (v557->__on_zero_shared)(v557);
                  std::__shared_weak_count::__release_weak(v557);
                  v556 = v558;
                }
              }

              (*(*v556 + 88))(v556, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v555 = v693;
            }

            v559 = v553 - 1;
            if (v553 != 1)
            {
              if (v196)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v555;
                v705 = 3;
                sub_271828638(v11, &v704);
              }

              v555 += v554 + v554 * (v553 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v683 = *(v11 + 56);
                *(v11 + 40) = *(v683 - 8);
                *(v11 + 56) = v683 - 8;
                --v559;
              }

              while (v559);
            }

            sub_2718285F0(v11);
            if (v196)
            {
              v704 = v555;
              v705 = 3;
              sub_271828638(v11, &v704);
            }

            v684 = *(v11 + 56);
            *(v11 + 40) = *(v684 - 8);
            *(v11 + 56) = v684 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 18:
      sub_271688D34(a3, &v691, a4);
      v11 = *a2;
      v58 = v700;
      v59 = v691;
      if (!v691)
      {
        goto LABEL_522;
      }

      v60 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v60->__on_zero_shared)(v60);
          std::__shared_weak_count::__release_weak(v60);
        }

        v59 = v691;
        v61 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v62 = v59;
            (v61->__on_zero_shared)(v61);
            std::__shared_weak_count::__release_weak(v61);
            v59 = v62;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v59 + 96))(&v703);
      }

      else
      {
LABEL_522:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v299 = v696;
          if (v696)
          {
            v300 = v699;
            v301 = v693;
            if (v701 == 1 && v693)
            {
              v302 = v691;
              v303 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v303->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v304 = v302;
                  (v303->__on_zero_shared)(v303);
                  std::__shared_weak_count::__release_weak(v303);
                  v302 = v304;
                }
              }

              (*(*v302 + 88))(v302, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v301 = v693;
            }

            v305 = v299 - 1;
            if (v305)
            {
              if (v58)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v301;
                v705 = 3;
                sub_27182976C(v11, &v704);
              }

              v607 = 2 * v300;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v608 = *(v11 + 56);
                *(v11 + 40) = *(v608 - 8);
                *(v11 + 56) = v608 - 8;
                v301 += v607;
                --v305;
              }

              while (v305);
            }

            sub_2718285F0(v11);
            if (v58)
            {
              v704 = v301;
              v705 = 3;
              sub_27182976C(v11, &v704);
            }

            v609 = *(v11 + 56);
            *(v11 + 40) = *(v609 - 8);
            *(v11 + 56) = v609 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 19:
      sub_2716892D0(a3, &v691, a4);
      v11 = *a2;
      v17 = v700;
      v18 = v691;
      if (!v691)
      {
        goto LABEL_382;
      }

      v19 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v691;
        v20 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v18 + 96))(&v703);
      }

      else
      {
LABEL_382:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v223 = v696;
          if (v696)
          {
            v224 = v698;
            v225 = v699;
            v226 = v693;
            if (v701 == 1 && v693)
            {
              v227 = v691;
              v228 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v228->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v229 = v227;
                  (v228->__on_zero_shared)(v228);
                  std::__shared_weak_count::__release_weak(v228);
                  v227 = v229;
                }
              }

              (*(*v227 + 88))(v227, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v226 = v693;
            }

            v230 = v223 - 1;
            if (v230)
            {
              if (v17)
              {
                for (jj = 0; jj != v230; ++jj)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v232 = 0;
                  v233 = v17;
                  do
                  {
                    v704 = v226 + 2 * v232;
                    v705 = 3;
                    sub_271829F14(v11, &v704);
                    v232 += v224;
                    --v233;
                  }

                  while (v233);
                  v234 = *(v11 + 56);
                  *(v11 + 40) = *(v234 - 8);
                  *(v11 + 56) = v234 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v226 += 2 * v225;
                }
              }

              else
              {
                v583 = 2 * v225;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v584 = *(v11 + 56);
                  *(v11 + 40) = *(v584 - 8);
                  *(v11 + 56) = v584 - 8;
                  v226 += v583;
                  --v230;
                }

                while (v230);
              }
            }

            sub_2718285F0(v11);
            if (v17)
            {
              v585 = 0;
              do
              {
                v704 = v226 + 2 * v585;
                v705 = 3;
                sub_271829F14(v11, &v704);
                v585 += v224;
                --v17;
              }

              while (v17);
            }

            v586 = *(v11 + 56);
            *(v11 + 40) = *(v586 - 8);
            *(v11 + 56) = v586 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 20:
      sub_27168986C(a3, &v691, a4);
      v11 = *a2;
      v181 = v700;
      v182 = v691;
      if (!v691)
      {
        goto LABEL_937;
      }

      v183 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v183->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v183->__on_zero_shared)(v183);
          std::__shared_weak_count::__release_weak(v183);
        }

        v182 = v691;
        v184 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v184->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v185 = v182;
            (v184->__on_zero_shared)(v184);
            std::__shared_weak_count::__release_weak(v184);
            v182 = v185;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v182 + 96))(&v703);
      }

      else
      {
LABEL_937:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v522 = v696;
          if (v696)
          {
            v523 = v698;
            v524 = v699;
            v525 = v693;
            if (v701 == 1 && v693)
            {
              v526 = v691;
              v527 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v527->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v528 = v526;
                  (v527->__on_zero_shared)(v527);
                  std::__shared_weak_count::__release_weak(v527);
                  v526 = v528;
                }
              }

              (*(*v526 + 88))(v526, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v525 = v693;
            }

            v529 = v522 - 1;
            if (v529)
            {
              if (v181)
              {
                for (kk = 0; kk != v529; ++kk)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v531 = 0;
                  v532 = v181;
                  do
                  {
                    v704 = v525 + 4 * v531;
                    v705 = 3;
                    sub_27182A338(v11, &v704);
                    v531 += v523;
                    --v532;
                  }

                  while (v532);
                  v533 = *(v11 + 56);
                  *(v11 + 40) = *(v533 - 8);
                  *(v11 + 56) = v533 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v525 += 4 * v524;
                }
              }

              else
              {
                v670 = 4 * v524;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v671 = *(v11 + 56);
                  *(v11 + 40) = *(v671 - 8);
                  *(v11 + 56) = v671 - 8;
                  v525 += v670;
                  --v529;
                }

                while (v529);
              }
            }

            sub_2718285F0(v11);
            if (v181)
            {
              v672 = 0;
              do
              {
                v704 = v525 + 4 * v672;
                v705 = 3;
                sub_27182A338(v11, &v704);
                v672 += v523;
                --v181;
              }

              while (v181);
            }

            v673 = *(v11 + 56);
            *(v11 + 40) = *(v673 - 8);
            *(v11 + 56) = v673 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 21:
      sub_2715EFF9C(a3, &v691, a4);
      v11 = *a2;
      v206 = v700;
      v207 = v691;
      if (!v691)
      {
        goto LABEL_1027;
      }

      v208 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v208->__on_zero_shared)(v208);
          std::__shared_weak_count::__release_weak(v208);
        }

        v207 = v691;
        v209 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v209->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v210 = v207;
            (v209->__on_zero_shared)(v209);
            std::__shared_weak_count::__release_weak(v209);
            v207 = v210;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v207 + 96))(&v703);
      }

      else
      {
LABEL_1027:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v572 = v696;
          if (v696)
          {
            v573 = v699;
            v574 = v693;
            if (v701 == 1 && v693)
            {
              v575 = v691;
              v576 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v576->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v577 = v575;
                  (v576->__on_zero_shared)(v576);
                  std::__shared_weak_count::__release_weak(v576);
                  v575 = v577;
                }
              }

              (*(*v575 + 88))(v575, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v574 = v693;
            }

            v578 = v572 - 1;
            if (v572 != 1)
            {
              if (v206)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v574;
                v705 = 3;
                sub_271828638(v11, &v704);
              }

              v574 += v573 + v573 * (v572 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v689 = *(v11 + 56);
                *(v11 + 40) = *(v689 - 8);
                *(v11 + 56) = v689 - 8;
                --v578;
              }

              while (v578);
            }

            sub_2718285F0(v11);
            if (v206)
            {
              v704 = v574;
              v705 = 3;
              sub_271828638(v11, &v704);
            }

            v690 = *(v11 + 56);
            *(v11 + 40) = *(v690 - 8);
            *(v11 + 56) = v690 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 22:
      sub_271689E08(a3, &v691, a4);
      v11 = *a2;
      v73 = v700;
      v74 = v691;
      if (!v691)
      {
        goto LABEL_577;
      }

      v75 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v75->__on_zero_shared)(v75);
          std::__shared_weak_count::__release_weak(v75);
        }

        v74 = v691;
        v76 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v77 = v74;
            (v76->__on_zero_shared)(v76);
            std::__shared_weak_count::__release_weak(v76);
            v74 = v77;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v74 + 96))(&v703);
      }

      else
      {
LABEL_577:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v330 = v696;
          if (v696)
          {
            v331 = v699;
            v332 = v693;
            if (v701 == 1 && v693)
            {
              v333 = v691;
              v334 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v334->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v335 = v333;
                  (v334->__on_zero_shared)(v334);
                  std::__shared_weak_count::__release_weak(v334);
                  v333 = v335;
                }
              }

              (*(*v333 + 88))(v333, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v332 = v693;
            }

            v336 = v330 - 1;
            if (v336)
            {
              if (v73)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v332;
                v705 = 3;
                sub_27182976C(v11, &v704);
              }

              v617 = 2 * v331;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v618 = *(v11 + 56);
                *(v11 + 40) = *(v618 - 8);
                *(v11 + 56) = v618 - 8;
                v332 += v617;
                --v336;
              }

              while (v336);
            }

            sub_2718285F0(v11);
            if (v73)
            {
              v704 = v332;
              v705 = 3;
              sub_27182976C(v11, &v704);
            }

            v619 = *(v11 + 56);
            *(v11 + 40) = *(v619 - 8);
            *(v11 + 56) = v619 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 23:
      sub_27168A3A4(a3, &v691, a4);
      v11 = *a2;
      v201 = v700;
      v202 = v691;
      if (!v691)
      {
        goto LABEL_1007;
      }

      v203 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v203->__on_zero_shared)(v203);
          std::__shared_weak_count::__release_weak(v203);
        }

        v202 = v691;
        v204 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v204->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v205 = v202;
            (v204->__on_zero_shared)(v204);
            std::__shared_weak_count::__release_weak(v204);
            v202 = v205;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v202 + 96))(&v703);
      }

      else
      {
LABEL_1007:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v560 = v696;
          if (v696)
          {
            v561 = v698;
            v562 = v699;
            v563 = v693;
            if (v701 == 1 && v693)
            {
              v564 = v691;
              v565 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v565->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v566 = v564;
                  (v565->__on_zero_shared)(v565);
                  std::__shared_weak_count::__release_weak(v565);
                  v564 = v566;
                }
              }

              (*(*v564 + 88))(v564, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v563 = v693;
            }

            v567 = v560 - 1;
            if (v567)
            {
              if (v201)
              {
                for (mm = 0; mm != v567; ++mm)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v569 = 0;
                  v570 = v201;
                  do
                  {
                    v704 = v563 + 2 * v569;
                    v705 = 3;
                    sub_271829F14(v11, &v704);
                    v569 += v561;
                    --v570;
                  }

                  while (v570);
                  v571 = *(v11 + 56);
                  *(v11 + 40) = *(v571 - 8);
                  *(v11 + 56) = v571 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v563 += 2 * v562;
                }
              }

              else
              {
                v685 = 2 * v562;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v686 = *(v11 + 56);
                  *(v11 + 40) = *(v686 - 8);
                  *(v11 + 56) = v686 - 8;
                  v563 += v685;
                  --v567;
                }

                while (v567);
              }
            }

            sub_2718285F0(v11);
            if (v201)
            {
              v687 = 0;
              do
              {
                v704 = v563 + 2 * v687;
                v705 = 3;
                sub_271829F14(v11, &v704);
                v687 += v561;
                --v201;
              }

              while (v201);
            }

            v688 = *(v11 + 56);
            *(v11 + 40) = *(v688 - 8);
            *(v11 + 56) = v688 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 24:
      sub_27168A940(a3, &v691, a4);
      v11 = *a2;
      v37 = v700;
      v38 = v691;
      if (!v691)
      {
        goto LABEL_452;
      }

      v39 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v39->__on_zero_shared)(v39);
          std::__shared_weak_count::__release_weak(v39);
        }

        v38 = v691;
        v40 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v41 = v38;
            (v40->__on_zero_shared)(v40);
            std::__shared_weak_count::__release_weak(v40);
            v38 = v41;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v38 + 96))(&v703);
      }

      else
      {
LABEL_452:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v261 = v696;
          if (v696)
          {
            v262 = v698;
            v263 = v699;
            v264 = v693;
            if (v701 == 1 && v693)
            {
              v265 = v691;
              v266 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v266->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v267 = v265;
                  (v266->__on_zero_shared)(v266);
                  std::__shared_weak_count::__release_weak(v266);
                  v265 = v267;
                }
              }

              (*(*v265 + 88))(v265, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v264 = v693;
            }

            v268 = v261 - 1;
            if (v268)
            {
              if (v37)
              {
                for (nn = 0; nn != v268; ++nn)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v270 = 0;
                  v271 = v37;
                  do
                  {
                    v704 = v264 + 4 * v270;
                    v705 = 3;
                    sub_27182A338(v11, &v704);
                    v270 += v262;
                    --v271;
                  }

                  while (v271);
                  v272 = *(v11 + 56);
                  *(v11 + 40) = *(v272 - 8);
                  *(v11 + 56) = v272 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v264 += 4 * v263;
                }
              }

              else
              {
                v595 = 4 * v263;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v596 = *(v11 + 56);
                  *(v11 + 40) = *(v596 - 8);
                  *(v11 + 56) = v596 - 8;
                  v264 += v595;
                  --v268;
                }

                while (v268);
              }
            }

            sub_2718285F0(v11);
            if (v37)
            {
              v597 = 0;
              do
              {
                v704 = v264 + 4 * v597;
                v705 = 3;
                sub_27182A338(v11, &v704);
                v597 += v262;
                --v37;
              }

              while (v37);
            }

            v598 = *(v11 + 56);
            *(v11 + 40) = *(v598 - 8);
            *(v11 + 56) = v598 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 25:
      sub_27168AEDC(a3, &v691, a4);
      v11 = *a2;
      v22 = v700;
      v23 = v691;
      if (!v691)
      {
        goto LABEL_402;
      }

      v24 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v24->__on_zero_shared)(v24);
          std::__shared_weak_count::__release_weak(v24);
        }

        v23 = v691;
        v25 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v26 = v23;
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
            v23 = v26;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v23 + 96))(&v703);
      }

      else
      {
LABEL_402:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v235 = v696;
          if (v696)
          {
            v236 = v699;
            v237 = v693;
            if (v701 == 1 && v693)
            {
              v238 = v691;
              v239 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v239->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v240 = v238;
                  (v239->__on_zero_shared)(v239);
                  std::__shared_weak_count::__release_weak(v239);
                  v238 = v240;
                }
              }

              (*(*v238 + 88))(v238, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v237 = v693;
            }

            v241 = v235 - 1;
            if (v235 != 1)
            {
              if (v22)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v237;
                v705 = 4;
                sub_271828638(v11, &v704);
              }

              v237 += v236 + v236 * (v235 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v587 = *(v11 + 56);
                *(v11 + 40) = *(v587 - 8);
                *(v11 + 56) = v587 - 8;
                --v241;
              }

              while (v241);
            }

            sub_2718285F0(v11);
            if (v22)
            {
              v704 = v237;
              v705 = 4;
              sub_271828638(v11, &v704);
            }

            v588 = *(v11 + 56);
            *(v11 + 40) = *(v588 - 8);
            *(v11 + 56) = v588 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 26:
      sub_27168B474(a3, &v691, a4);
      v11 = *a2;
      v78 = v700;
      v79 = v691;
      if (!v691)
      {
        goto LABEL_592;
      }

      v80 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v80->__on_zero_shared)(v80);
          std::__shared_weak_count::__release_weak(v80);
        }

        v79 = v691;
        v81 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v82 = v79;
            (v81->__on_zero_shared)(v81);
            std::__shared_weak_count::__release_weak(v81);
            v79 = v82;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v79 + 96))(&v703);
      }

      else
      {
LABEL_592:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v337 = v696;
          if (v696)
          {
            v338 = v699;
            v339 = v693;
            if (v701 == 1 && v693)
            {
              v340 = v691;
              v341 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v341->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v342 = v340;
                  (v341->__on_zero_shared)(v341);
                  std::__shared_weak_count::__release_weak(v341);
                  v340 = v342;
                }
              }

              (*(*v340 + 88))(v340, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v339 = v693;
            }

            v343 = v337 - 1;
            if (v343)
            {
              if (v78)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v339;
                v705 = 4;
                sub_27182976C(v11, &v704);
              }

              v620 = 2 * v338;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v621 = *(v11 + 56);
                *(v11 + 40) = *(v621 - 8);
                *(v11 + 56) = v621 - 8;
                v339 += v620;
                --v343;
              }

              while (v343);
            }

            sub_2718285F0(v11);
            if (v78)
            {
              v704 = v339;
              v705 = 4;
              sub_27182976C(v11, &v704);
            }

            v622 = *(v11 + 56);
            *(v11 + 40) = *(v622 - 8);
            *(v11 + 56) = v622 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 27:
      sub_27168BA10(a3, &v691, a4);
      v11 = *a2;
      v12 = v700;
      v13 = v691;
      if (!v691)
      {
        goto LABEL_362;
      }

      v14 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        v13 = v691;
        v15 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v16 = v13;
            (v15->__on_zero_shared)(v15);
            std::__shared_weak_count::__release_weak(v15);
            v13 = v16;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v13 + 96))(&v703);
      }

      else
      {
LABEL_362:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v211 = v696;
          if (v696)
          {
            v212 = v698;
            v213 = v699;
            v214 = v693;
            if (v701 == 1 && v693)
            {
              v215 = v691;
              v216 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v216->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v217 = v215;
                  (v216->__on_zero_shared)(v216);
                  std::__shared_weak_count::__release_weak(v216);
                  v215 = v217;
                }
              }

              (*(*v215 + 88))(v215, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v214 = v693;
            }

            v218 = v211 - 1;
            if (v218)
            {
              if (v12)
              {
                for (i1 = 0; i1 != v218; ++i1)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v220 = 0;
                  v221 = v12;
                  do
                  {
                    v704 = v214 + 2 * v220;
                    v705 = 4;
                    sub_271829F14(v11, &v704);
                    v220 += v212;
                    --v221;
                  }

                  while (v221);
                  v222 = *(v11 + 56);
                  *(v11 + 40) = *(v222 - 8);
                  *(v11 + 56) = v222 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v214 += 2 * v213;
                }
              }

              else
              {
                v579 = 2 * v213;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v580 = *(v11 + 56);
                  *(v11 + 40) = *(v580 - 8);
                  *(v11 + 56) = v580 - 8;
                  v214 += v579;
                  --v218;
                }

                while (v218);
              }
            }

            sub_2718285F0(v11);
            if (v12)
            {
              v581 = 0;
              do
              {
                v704 = v214 + 2 * v581;
                v705 = 4;
                sub_271829F14(v11, &v704);
                v581 += v212;
                --v12;
              }

              while (v12);
            }

            v582 = *(v11 + 56);
            *(v11 + 40) = *(v582 - 8);
            *(v11 + 56) = v582 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 28:
      sub_27168BFAC(a3, &v691, a4);
      v11 = *a2;
      v99 = v700;
      v100 = v691;
      if (!v691)
      {
        goto LABEL_655;
      }

      v101 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v101->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v101->__on_zero_shared)(v101);
          std::__shared_weak_count::__release_weak(v101);
        }

        v100 = v691;
        v102 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v103 = v100;
            (v102->__on_zero_shared)(v102);
            std::__shared_weak_count::__release_weak(v102);
            v100 = v103;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v100 + 96))(&v703);
      }

      else
      {
LABEL_655:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v371 = v696;
          if (v696)
          {
            v372 = v698;
            v373 = v699;
            v374 = v693;
            if (v701 == 1 && v693)
            {
              v375 = v691;
              v376 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v376->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v377 = v375;
                  (v376->__on_zero_shared)(v376);
                  std::__shared_weak_count::__release_weak(v376);
                  v375 = v377;
                }
              }

              (*(*v375 + 88))(v375, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v374 = v693;
            }

            v378 = v371 - 1;
            if (v378)
            {
              if (v99)
              {
                for (i2 = 0; i2 != v378; ++i2)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v380 = 0;
                  v381 = v99;
                  do
                  {
                    v704 = v374 + 4 * v380;
                    v705 = 4;
                    sub_27182A338(v11, &v704);
                    v380 += v372;
                    --v381;
                  }

                  while (v381);
                  v382 = *(v11 + 56);
                  *(v11 + 40) = *(v382 - 8);
                  *(v11 + 56) = v382 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v374 += 4 * v373;
                }
              }

              else
              {
                v630 = 4 * v373;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v631 = *(v11 + 56);
                  *(v11 + 40) = *(v631 - 8);
                  *(v11 + 56) = v631 - 8;
                  v374 += v630;
                  --v378;
                }

                while (v378);
              }
            }

            sub_2718285F0(v11);
            if (v99)
            {
              v632 = 0;
              do
              {
                v704 = v374 + 4 * v632;
                v705 = 4;
                sub_27182A338(v11, &v704);
                v632 += v372;
                --v99;
              }

              while (v99);
            }

            v633 = *(v11 + 56);
            *(v11 + 40) = *(v633 - 8);
            *(v11 + 56) = v633 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 29:
      sub_27168C548(a3, &v691, a4);
      v11 = *a2;
      v32 = v700;
      v33 = v691;
      if (!v691)
      {
        goto LABEL_437;
      }

      v34 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v34->__on_zero_shared)(v34);
          std::__shared_weak_count::__release_weak(v34);
        }

        v33 = v691;
        v35 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v36 = v33;
            (v35->__on_zero_shared)(v35);
            std::__shared_weak_count::__release_weak(v35);
            v33 = v36;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v33 + 96))(&v703);
      }

      else
      {
LABEL_437:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v254 = v696;
          if (v696)
          {
            v255 = v699;
            v256 = v693;
            if (v701 == 1 && v693)
            {
              v257 = v691;
              v258 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v258->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v259 = v257;
                  (v258->__on_zero_shared)(v258);
                  std::__shared_weak_count::__release_weak(v258);
                  v257 = v259;
                }
              }

              (*(*v257 + 88))(v257, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v256 = v693;
            }

            v260 = v254 - 1;
            if (v254 != 1)
            {
              if (v32)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v256;
                v705 = 4;
                sub_271828638(v11, &v704);
              }

              v256 += v255 + v255 * (v254 - 2);
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v593 = *(v11 + 56);
                *(v11 + 40) = *(v593 - 8);
                *(v11 + 56) = v593 - 8;
                --v260;
              }

              while (v260);
            }

            sub_2718285F0(v11);
            if (v32)
            {
              v704 = v256;
              v705 = 4;
              sub_271828638(v11, &v704);
            }

            v594 = *(v11 + 56);
            *(v11 + 40) = *(v594 - 8);
            *(v11 + 56) = v594 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 30:
      sub_27168CAE0(a3, &v691, a4);
      v11 = *a2;
      v114 = v700;
      v115 = v691;
      if (!v691)
      {
        goto LABEL_715;
      }

      v116 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v116->__on_zero_shared)(v116);
          std::__shared_weak_count::__release_weak(v116);
        }

        v115 = v691;
        v117 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v118 = v115;
            (v117->__on_zero_shared)(v117);
            std::__shared_weak_count::__release_weak(v117);
            v115 = v118;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v115 + 96))(&v703);
      }

      else
      {
LABEL_715:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v407 = v696;
          if (v696)
          {
            v408 = v699;
            v409 = v693;
            if (v701 == 1 && v693)
            {
              v410 = v691;
              v411 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v411->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v412 = v410;
                  (v411->__on_zero_shared)(v411);
                  std::__shared_weak_count::__release_weak(v411);
                  v410 = v412;
                }
              }

              (*(*v410 + 88))(v410, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v409 = v693;
            }

            v413 = v407 - 1;
            if (v413)
            {
              if (v114)
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v704 = v409;
                v705 = 4;
                sub_27182976C(v11, &v704);
              }

              v640 = 2 * v408;
              do
              {
                sub_2715DF0F0(v11 + 48, (v11 + 40));
                *(v11 + 40) = sub_27182815C(v11);
                if (*(v11 + 88) == 1)
                {
                  *(v11 + 88) = 0;
                }

                v641 = *(v11 + 56);
                *(v11 + 40) = *(v641 - 8);
                *(v11 + 56) = v641 - 8;
                v409 += v640;
                --v413;
              }

              while (v413);
            }

            sub_2718285F0(v11);
            if (v114)
            {
              v704 = v409;
              v705 = 4;
              sub_27182976C(v11, &v704);
            }

            v642 = *(v11 + 56);
            *(v11 + 40) = *(v642 - 8);
            *(v11 + 56) = v642 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 31:
      sub_27168D07C(a3, &v691, a4);
      v11 = *a2;
      v83 = v700;
      v84 = v691;
      if (!v691)
      {
        goto LABEL_607;
      }

      v85 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v691;
        v86 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v84 + 96))(&v703);
      }

      else
      {
LABEL_607:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v344 = v696;
          if (v696)
          {
            v345 = v698;
            v346 = v699;
            v347 = v693;
            if (v701 == 1 && v693)
            {
              v348 = v691;
              v349 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v349->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v350 = v348;
                  (v349->__on_zero_shared)(v349);
                  std::__shared_weak_count::__release_weak(v349);
                  v348 = v350;
                }
              }

              (*(*v348 + 88))(v348, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v347 = v693;
            }

            v351 = v344 - 1;
            if (v351)
            {
              if (v83)
              {
                for (i3 = 0; i3 != v351; ++i3)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v353 = 0;
                  v354 = v83;
                  do
                  {
                    v704 = v347 + 2 * v353;
                    v705 = 4;
                    sub_271829F14(v11, &v704);
                    v353 += v345;
                    --v354;
                  }

                  while (v354);
                  v355 = *(v11 + 56);
                  *(v11 + 40) = *(v355 - 8);
                  *(v11 + 56) = v355 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v347 += 2 * v346;
                }
              }

              else
              {
                v623 = 2 * v346;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v624 = *(v11 + 56);
                  *(v11 + 40) = *(v624 - 8);
                  *(v11 + 56) = v624 - 8;
                  v347 += v623;
                  --v351;
                }

                while (v351);
              }
            }

            sub_2718285F0(v11);
            if (v83)
            {
              v625 = 0;
              do
              {
                v704 = v347 + 2 * v625;
                v705 = 4;
                sub_271829F14(v11, &v704);
                v625 += v345;
                --v83;
              }

              while (v83);
            }

            v626 = *(v11 + 56);
            *(v11 + 40) = *(v626 - 8);
            *(v11 + 56) = v626 - 8;
            if (*(v11 + 88) == 1)
            {
              goto LABEL_1312;
            }
          }
        }
      }

      goto LABEL_1313;
    case 32:
      sub_27168D618(a3, &v691, a4);
      v11 = *a2;
      v124 = v700;
      v125 = v691;
      if (!v691)
      {
        goto LABEL_745;
      }

      v126 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v126->__on_zero_shared)(v126);
          std::__shared_weak_count::__release_weak(v126);
        }

        v125 = v691;
        v127 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v128 = v125;
            (v127->__on_zero_shared)(v127);
            std::__shared_weak_count::__release_weak(v127);
            v125 = v128;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v125 + 96))(&v703);
      }

      else
      {
LABEL_745:
        v703 = 0;
      }

      if (v694)
      {
        if (v695)
        {
          v421 = v696;
          if (v696)
          {
            v422 = v698;
            v423 = v699;
            v424 = v693;
            if (v701 == 1 && v693)
            {
              v425 = v691;
              v426 = v692;
              if (v692)
              {
                atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v426->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v427 = v425;
                  (v426->__on_zero_shared)(v426);
                  std::__shared_weak_count::__release_weak(v426);
                  v425 = v427;
                }
              }

              (*(*v425 + 88))(v425, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v424 = v693;
            }

            v428 = v421 - 1;
            if (v428)
            {
              if (v124)
              {
                for (i4 = 0; i4 != v428; ++i4)
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v430 = 0;
                  v431 = v124;
                  do
                  {
                    v704 = v424 + 4 * v430;
                    v705 = 4;
                    sub_27182A338(v11, &v704);
                    v430 += v422;
                    --v431;
                  }

                  while (v431);
                  v432 = *(v11 + 56);
                  *(v11 + 40) = *(v432 - 8);
                  *(v11 + 56) = v432 - 8;
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v424 += 4 * v423;
                }
              }

              else
              {
                v645 = 4 * v423;
                do
                {
                  sub_2715DF0F0(v11 + 48, (v11 + 40));
                  *(v11 + 40) = sub_27182815C(v11);
                  if (*(v11 + 88) == 1)
                  {
                    *(v11 + 88) = 0;
                  }

                  v646 = *(v11 + 56);
                  *(v11 + 40) = *(v646 - 8);
                  *(v11 + 56) = v646 - 8;
                  v424 += v645;
                  --v428;
                }

                while (v428);
              }
            }

            sub_2718285F0(v11);
            if (v124)
            {
              v647 = 0;
              do
              {
                v704 = v424 + 4 * v647;
                v705 = 4;
                sub_27182A338(v11, &v704);
                v647 += v422;
                --v124;
              }

              while (v124);
            }

            v648 = *(v11 + 56);
            *(v11 + 40) = *(v648 - 8);
            *(v11 + 56) = v648 - 8;
            if (*(v11 + 88) == 1)
            {
LABEL_1312:
              *(v11 + 88) = 0;
            }
          }
        }
      }

      goto LABEL_1313;
    case 33:
      sub_27168DBB4(a3, &v691, a4);
      v52 = *a2;
      v176 = v700;
      v177 = v691;
      if (!v691)
      {
        goto LABEL_922;
      }

      v178 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v178->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v178->__on_zero_shared)(v178);
          std::__shared_weak_count::__release_weak(v178);
        }

        v177 = v691;
        v179 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v179->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v180 = v177;
            (v179->__on_zero_shared)(v179);
            std::__shared_weak_count::__release_weak(v179);
            v177 = v180;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v177 + 96))(&v703);
      }

      else
      {
LABEL_922:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v515 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v516 = v699;
      v517 = v693;
      if (v701 == 1 && v693)
      {
        v518 = v691;
        v519 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v519->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v520 = v518;
            (v519->__on_zero_shared)(v519);
            std::__shared_weak_count::__release_weak(v519);
            v518 = v520;
          }
        }

        (*(*v518 + 88))(v518, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v517 = v693;
      }

      v521 = v515 - 1;
      if (v515 != 1)
      {
        if (v176)
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v704 = v517;
          v705 = 4;
          sub_271828638(v52, &v704);
        }

        v517 += v516 + v516 * (v515 - 2);
        do
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v669 = *(v52 + 56);
          *(v52 + 40) = *(v669 - 8);
          *(v52 + 56) = v669 - 8;
          --v521;
        }

        while (v521);
      }

      sub_2718285F0(v52);
      if (v176)
      {
        v704 = v517;
        v705 = 4;
        sub_271828638(v52, &v704);
      }

      return;
    case 34:
      sub_27168E14C(a3, &v691, a4);
      v52 = *a2;
      v119 = v700;
      v120 = v691;
      if (!v691)
      {
        goto LABEL_730;
      }

      v121 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
        }

        v120 = v691;
        v122 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v123 = v120;
            (v122->__on_zero_shared)(v122);
            std::__shared_weak_count::__release_weak(v122);
            v120 = v123;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v120 + 96))(&v703);
      }

      else
      {
LABEL_730:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v414 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v415 = v699;
      v416 = v693;
      if (v701 == 1 && v693)
      {
        v417 = v691;
        v418 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v418->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v419 = v417;
            (v418->__on_zero_shared)(v418);
            std::__shared_weak_count::__release_weak(v418);
            v417 = v419;
          }
        }

        (*(*v417 + 88))(v417, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v416 = v693;
      }

      v420 = v414 - 1;
      if (v420)
      {
        if (v119)
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v704 = v416;
          v705 = 4;
          sub_27182976C(v52, &v704);
        }

        v643 = 2 * v415;
        do
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v644 = *(v52 + 56);
          *(v52 + 40) = *(v644 - 8);
          *(v52 + 56) = v644 - 8;
          v416 += v643;
          --v420;
        }

        while (v420);
      }

      sub_2718285F0(v52);
      if (v119)
      {
        v704 = v416;
        v705 = 4;
        sub_27182976C(v52, &v704);
      }

      return;
    case 35:
      sub_27168E6E8(a3, &v691, a4);
      v52 = *a2;
      v109 = v700;
      v110 = v691;
      if (!v691)
      {
        goto LABEL_695;
      }

      v111 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v111->__on_zero_shared)(v111);
          std::__shared_weak_count::__release_weak(v111);
        }

        v110 = v691;
        v112 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v113 = v110;
            (v112->__on_zero_shared)(v112);
            std::__shared_weak_count::__release_weak(v112);
            v110 = v113;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v110 + 96))(&v703);
      }

      else
      {
LABEL_695:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v395 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v396 = v698;
      v397 = v699;
      v398 = v693;
      if (v701 == 1 && v693)
      {
        v399 = v691;
        v400 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v400->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v401 = v399;
            (v400->__on_zero_shared)(v400);
            std::__shared_weak_count::__release_weak(v400);
            v399 = v401;
          }
        }

        (*(*v399 + 88))(v399, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v398 = v693;
      }

      v402 = v395 - 1;
      if (v402)
      {
        if (v109)
        {
          for (i5 = 0; i5 != v402; ++i5)
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v404 = 0;
            v405 = v109;
            do
            {
              v704 = v398 + 2 * v404;
              v705 = 4;
              sub_271829F14(v52, &v704);
              v404 += v396;
              --v405;
            }

            while (v405);
            v406 = *(v52 + 56);
            *(v52 + 40) = *(v406 - 8);
            *(v52 + 56) = v406 - 8;
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v398 += 2 * v397;
          }
        }

        else
        {
          v637 = 2 * v397;
          do
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v638 = *(v52 + 56);
            *(v52 + 40) = *(v638 - 8);
            *(v52 + 56) = v638 - 8;
            v398 += v637;
            --v402;
          }

          while (v402);
        }
      }

      sub_2718285F0(v52);
      if (v109)
      {
        v639 = 0;
        do
        {
          v704 = v398 + 2 * v639;
          v705 = 4;
          sub_271829F14(v52, &v704);
          v639 += v396;
          --v109;
        }

        while (v109);
      }

      break;
    case 36:
      sub_27168EC84(a3, &v691, a4);
      v52 = *a2;
      v104 = v700;
      v105 = v691;
      if (!v691)
      {
        goto LABEL_675;
      }

      v106 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v106->__on_zero_shared)(v106);
          std::__shared_weak_count::__release_weak(v106);
        }

        v105 = v691;
        v107 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
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
        (*(*v105 + 96))(&v703);
      }

      else
      {
LABEL_675:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v383 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v384 = v698;
      v385 = v699;
      v386 = v693;
      if (v701 == 1 && v693)
      {
        v387 = v691;
        v388 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v388->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v389 = v387;
            (v388->__on_zero_shared)(v388);
            std::__shared_weak_count::__release_weak(v388);
            v387 = v389;
          }
        }

        (*(*v387 + 88))(v387, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v386 = v693;
      }

      v390 = v383 - 1;
      if (v390)
      {
        if (v104)
        {
          for (i6 = 0; i6 != v390; ++i6)
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v392 = 0;
            v393 = v104;
            do
            {
              v704 = v386 + 4 * v392;
              v705 = 4;
              sub_27182A338(v52, &v704);
              v392 += v384;
              --v393;
            }

            while (v393);
            v394 = *(v52 + 56);
            *(v52 + 40) = *(v394 - 8);
            *(v52 + 56) = v394 - 8;
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v386 += 4 * v385;
          }
        }

        else
        {
          v634 = 4 * v385;
          do
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v635 = *(v52 + 56);
            *(v52 + 40) = *(v635 - 8);
            *(v52 + 56) = v635 - 8;
            v386 += v634;
            --v390;
          }

          while (v390);
        }
      }

      sub_2718285F0(v52);
      if (v104)
      {
        v636 = 0;
        do
        {
          v704 = v386 + 4 * v636;
          v705 = 4;
          sub_27182A338(v52, &v704);
          v636 += v384;
          --v104;
        }

        while (v104);
      }

      break;
    case 37:
      sub_27168F220(a3, &v691, a4);
      v52 = *a2;
      v161 = v700;
      v162 = v691;
      if (!v691)
      {
        goto LABEL_872;
      }

      v163 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v163->__on_zero_shared)(v163);
          std::__shared_weak_count::__release_weak(v163);
        }

        v162 = v691;
        v164 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v165 = v162;
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
            v162 = v165;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v162 + 96))(&v703);
      }

      else
      {
LABEL_872:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v489 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v490 = v699;
      v491 = v693;
      if (v701 == 1 && v693)
      {
        v492 = v691;
        v493 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v493->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v494 = v492;
            (v493->__on_zero_shared)(v493);
            std::__shared_weak_count::__release_weak(v493);
            v492 = v494;
          }
        }

        (*(*v492 + 88))(v492, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v491 = v693;
      }

      v495 = v489 - 1;
      if (v489 != 1)
      {
        if (v161)
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v704 = v491;
          v705 = 4;
          sub_271828638(v52, &v704);
        }

        v491 += v490 + v490 * (v489 - 2);
        do
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v661 = *(v52 + 56);
          *(v52 + 40) = *(v661 - 8);
          *(v52 + 56) = v661 - 8;
          --v495;
        }

        while (v495);
      }

      sub_2718285F0(v52);
      if (v161)
      {
        v704 = v491;
        v705 = 4;
        sub_271828638(v52, &v704);
      }

      return;
    case 38:
      sub_27168F7B8(a3, &v691, a4);
      v52 = *a2;
      v186 = v700;
      v187 = v691;
      if (!v691)
      {
        goto LABEL_957;
      }

      v188 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v188->__on_zero_shared)(v188);
          std::__shared_weak_count::__release_weak(v188);
        }

        v187 = v691;
        v189 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v189->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v190 = v187;
            (v189->__on_zero_shared)(v189);
            std::__shared_weak_count::__release_weak(v189);
            v187 = v190;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v187 + 96))(&v703);
      }

      else
      {
LABEL_957:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v534 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v535 = v699;
      v536 = v693;
      if (v701 == 1 && v693)
      {
        v537 = v691;
        v538 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v538->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v539 = v537;
            (v538->__on_zero_shared)(v538);
            std::__shared_weak_count::__release_weak(v538);
            v537 = v539;
          }
        }

        (*(*v537 + 88))(v537, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v536 = v693;
      }

      v540 = v534 - 1;
      if (v540)
      {
        if (v186)
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v704 = v536;
          v705 = 4;
          sub_27182976C(v52, &v704);
        }

        v674 = 2 * v535;
        do
        {
          sub_2715DF0F0(v52 + 48, (v52 + 40));
          *(v52 + 40) = sub_27182815C(v52);
          if (*(v52 + 88) == 1)
          {
            *(v52 + 88) = 0;
          }

          v675 = *(v52 + 56);
          *(v52 + 40) = *(v675 - 8);
          *(v52 + 56) = v675 - 8;
          v536 += v674;
          --v540;
        }

        while (v540);
      }

      sub_2718285F0(v52);
      if (v186)
      {
        v704 = v536;
        v705 = 4;
        sub_27182976C(v52, &v704);
      }

      return;
    case 39:
      sub_27168FD54(a3, &v691, a4);
      v52 = *a2;
      v68 = v700;
      v69 = v691;
      if (!v691)
      {
        goto LABEL_557;
      }

      v70 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v70->__on_zero_shared)(v70);
          std::__shared_weak_count::__release_weak(v70);
        }

        v69 = v691;
        v71 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v72 = v69;
            (v71->__on_zero_shared)(v71);
            std::__shared_weak_count::__release_weak(v71);
            v69 = v72;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v69 + 96))(&v703);
      }

      else
      {
LABEL_557:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v318 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v319 = v698;
      v320 = v699;
      v321 = v693;
      if (v701 == 1 && v693)
      {
        v322 = v691;
        v323 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v323->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v324 = v322;
            (v323->__on_zero_shared)(v323);
            std::__shared_weak_count::__release_weak(v323);
            v322 = v324;
          }
        }

        (*(*v322 + 88))(v322, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v321 = v693;
      }

      v325 = v318 - 1;
      if (v325)
      {
        if (v68)
        {
          for (i7 = 0; i7 != v325; ++i7)
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v327 = 0;
            v328 = v68;
            do
            {
              v704 = v321 + 2 * v327;
              v705 = 4;
              sub_271829F14(v52, &v704);
              v327 += v319;
              --v328;
            }

            while (v328);
            v329 = *(v52 + 56);
            *(v52 + 40) = *(v329 - 8);
            *(v52 + 56) = v329 - 8;
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v321 += 2 * v320;
          }
        }

        else
        {
          v614 = 2 * v320;
          do
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v615 = *(v52 + 56);
            *(v52 + 40) = *(v615 - 8);
            *(v52 + 56) = v615 - 8;
            v321 += v614;
            --v325;
          }

          while (v325);
        }
      }

      sub_2718285F0(v52);
      if (v68)
      {
        v616 = 0;
        do
        {
          v704 = v321 + 2 * v616;
          v705 = 4;
          sub_271829F14(v52, &v704);
          v616 += v319;
          --v68;
        }

        while (v68);
      }

      break;
    case 40:
      sub_2716902F0(a3, &v691, a4);
      v52 = *a2;
      v53 = v700;
      v54 = v691;
      if (!v691)
      {
        goto LABEL_502;
      }

      v55 = v692;
      if (v692)
      {
        atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v54 = v691;
        v56 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v57 = v54;
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
            v54 = v57;
          }
        }
      }

      if (v702 == 1)
      {
        (*(*v54 + 96))(&v703);
      }

      else
      {
LABEL_502:
        v703 = 0;
      }

      if (!v694)
      {
        goto LABEL_1313;
      }

      if (!v695)
      {
        goto LABEL_1313;
      }

      v287 = v696;
      if (!v696)
      {
        goto LABEL_1313;
      }

      v288 = v698;
      v289 = v699;
      v290 = v693;
      if (v701 == 1 && v693)
      {
        v291 = v691;
        v292 = v692;
        if (v692)
        {
          atomic_fetch_add_explicit(&v692->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v292->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v293 = v291;
            (v292->__on_zero_shared)(v292);
            std::__shared_weak_count::__release_weak(v292);
            v291 = v293;
          }
        }

        (*(*v291 + 88))(v291, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v290 = v693;
      }

      v294 = v287 - 1;
      if (v294)
      {
        if (v53)
        {
          for (i8 = 0; i8 != v294; ++i8)
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v296 = 0;
            v297 = v53;
            do
            {
              v704 = v290 + 4 * v296;
              v705 = 4;
              sub_27182A338(v52, &v704);
              v296 += v288;
              --v297;
            }

            while (v297);
            v298 = *(v52 + 56);
            *(v52 + 40) = *(v298 - 8);
            *(v52 + 56) = v298 - 8;
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v290 += 4 * v289;
          }
        }

        else
        {
          v604 = 4 * v289;
          do
          {
            sub_2715DF0F0(v52 + 48, (v52 + 40));
            *(v52 + 40) = sub_27182815C(v52);
            if (*(v52 + 88) == 1)
            {
              *(v52 + 88) = 0;
            }

            v605 = *(v52 + 56);
            *(v52 + 40) = *(v605 - 8);
            *(v52 + 56) = v605 - 8;
            v290 += v604;
            --v294;
          }

          while (v294);
        }
      }

      sub_2718285F0(v52);
      if (v53)
      {
        v606 = 0;
        do
        {
          v704 = v290 + 4 * v606;
          v705 = 4;
          sub_27182A338(v52, &v704);
          v606 += v288;
          --v53;
        }

        while (v53);
      }

      break;
    default:
      return;
  }

  v676 = *(v52 + 56);
  *(v52 + 40) = *(v676 - 8);
  *(v52 + 56) = v676 - 8;
  if (*(v52 + 88) == 1)
  {
    *(v52 + 88) = 0;
  }

LABEL_1313:
  v681 = v703;
  v703 = 0;
  if (v681)
  {
    (*(*v681 + 8))(v681);
  }

  v682 = v692;
  if (v692 && !atomic_fetch_add(&v692->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v682->__on_zero_shared)(v682);
    std::__shared_weak_count::__release_weak(v682);
  }
}