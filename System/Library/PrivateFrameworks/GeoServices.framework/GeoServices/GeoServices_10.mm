void sub_1866DD100(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void gcl::tmesh::DecoderImpl::decodeResidual(uint64_t a1, int32x4_t *a2, unsigned int a3, _BYTE *a4, uint64_t *a5, int32x4_t *a6)
{
  if (a3)
  {
    if ((a3 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<unsigned char,geo::allocator_adapter<unsigned char,geo::codec::zone_mallocator>>::__append(uint64_t a1, size_t a2)
{
  v5 = a1 + 8;
  v3 = *(a1 + 8);
  v4 = *(v5 + 8);
  if (v4 - v3 >= a2)
  {
    if (a2)
    {
      v13 = &v3[a2];
      bzero(v3, a2);
      v3 = v13;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v6 = &v3[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = a2;
      v11 = geo::codec::zone_mallocator::instance(v3);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v11, v9);
      a2 = v10;
    }

    else
    {
      v12 = 0;
    }

    v14 = &v6[v12];
    v15 = v12 + v9;
    v16 = &v14[a2];
    bzero(v14, a2);
    v17 = *(a1 + 8);
    v18 = &v14[*a1 - v17];
    v19 = memcpy(v18, *a1, v17 - *a1);
    v20 = *a1;
    *a1 = v18;
    *(a1 + 8) = v16;
    *(a1 + 16) = v15;
    if (v20)
    {
      v21 = geo::codec::zone_mallocator::instance(v19);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v21, v20);
    }
  }
}

void std::vector<int,geo::allocator_adapter<int,geo::codec::zone_mallocator>>::__append(geo::codec::zone_mallocator *a1, unint64_t a2)
{
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v14 = 4 * a2;
      bzero(*(a1 + 1), 4 * a2);
      v4 += v14;
    }

    *(a1 + 1) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 2;
    v8 = (v6 >> 2) + a2;
    if (v8 >> 62)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v5;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = a2;
      v12 = geo::codec::zone_mallocator::instance(a1);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<int>(v12, v10);
      a2 = v11;
      v5 = *a1;
      v6 = *(a1 + 1) - *a1;
    }

    else
    {
      v13 = 0;
    }

    v15 = &v13[4 * v7];
    v16 = 4 * a2;
    v17 = &v13[4 * v10];
    bzero(v15, 4 * a2);
    v18 = memcpy(&v15[-4 * (v6 >> 2)], v5, v6);
    v19 = *a1;
    *a1 = &v15[-4 * (v6 >> 2)];
    *(a1 + 1) = &v15[v16];
    *(a1 + 2) = v17;
    if (v19)
    {
      v20 = geo::codec::zone_mallocator::instance(v18);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<int>(v20, v19);
    }
  }
}

void gcl::tmesh::DecoderImpl::decodeVertexAttributesAC(gcl::tmesh::DecoderImpl *this, int *a2, BOOL *a3)
{
  v675 = *MEMORY[0x1E69E9840];
  v642 = *(this + 960);
  v6 = v642;
  *v644 = v642;
  if (*(this + 964) == 1)
  {
    memset_pattern16(&__b, &unk_187FBF450, 4uLL);
    v7 = *(this + 959);
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = *(this + 22);
      v10 = *(this + 25);
      v11 = *(this + 683);
      v12 = *(this + 684);
      do
      {
        v20 = (v9 + 12 * v8);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = (v10 + 12 * v8);
        v25 = v24[2];
        if (v25 != -1)
        {
          v26 = a3[v22] + a3[v21] + a3[v23] + a3[*v24] + a3[v24[1]] + a3[v25] > 2;
          goto LABEL_18;
        }

        if (v23 != -1)
        {
          v26 = a3[v22] + a3[v21] + a3[v23] > 1;
LABEL_18:
          v27 = v26;
          goto LABEL_21;
        }

        if (v22 == -1)
        {
          if (v21 == -1)
          {
LABEL_37:
            v27 = 0;
            goto LABEL_21;
          }

          v27 = a3[v21];
        }

        else
        {
          if (!a3[v21])
          {
            goto LABEL_37;
          }

          v27 = a3[v22];
        }

LABEL_21:
        if (v11 >= 0x40000001)
        {
          v13 = v11;
        }

        else
        {
          v28 = *(this + 686);
          do
          {
            v12 *= 2;
            *(this + 686) = --v28;
            if (!v28)
            {
              v30 = *(this + 340);
              *(this + 340) = v30 + 1;
              v31 = *(this + 676);
              if (v30 + 1 >= v31)
              {
                v32 = 65280;
              }

              else
              {
                v32 = *(*(this + 339) + v30 + 1) << 8;
              }

              v33 = v30 + 2;
              *(this + 340) = v33;
              if (v33 < v31)
              {
                v29 = *(*(this + 339) + v33);
              }

              else
              {
                v29 = 255;
              }

              v12 |= v32 | v29;
              v28 = 16;
              *(this + 686) = 16;
            }

            v13 = 2 * v11;
            v139 = v11 >= 0x20000001;
            v11 *= 2;
          }

          while (!v139);
        }

        v14 = *(&v653[-2] + v27);
        v15 = (HIWORD(v13) * v14) & 0xFFFF0000;
        v16 = (v14 >> 7) & 0x1FE;
        v17 = v13 - v15;
        v18 = v12 >= v15;
        if (v12 >= v15)
        {
          ++v16;
        }

        *(&v653[-2] + v27) = *(this + v16 + 1376) + v14;
        if (v12 < v15)
        {
          v11 = v15;
        }

        else
        {
          v11 = v17;
        }

        if (v12 < v15)
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        v12 -= v19;
        *(this + 683) = v11;
        *(this + 684) = v12;
        a3[v8++] = v18;
      }

      while (v8 != v7);
    }

    v6 = v642;
  }

  v34 = *(this + 967);
  v641 = a2;
  if (v34 > 2)
  {
    if (v34 <= 4)
    {
      if (v34 != 3)
      {
        v674 = 0;
        v672 = 0u;
        v673 = 0u;
        v670 = 0u;
        v671 = 0u;
        v668 = 0u;
        v669 = 0u;
        v666 = 0u;
        v667 = 0u;
        v664 = 0u;
        v665 = 0u;
        v662 = 0u;
        v663 = 0u;
        v660 = 0u;
        v661 = 0u;
        __p = 0u;
        v659 = 0u;
        v656 = 0u;
        v657 = 0u;
        v654 = 0u;
        *v655 = 0u;
        __b = 0u;
        *v653 = 0u;
        gcl::polyline::ACContext::init(&__b, v642);
        gcl::polyline::ACContext::init((&v659 + 8), v642);
        gcl::polyline::ACContext::init(&v667, v642);
        memset_pattern16(&v649, &unk_187FBF450, 6uLL);
        memset_pattern16(&v647, &unk_187FBF450, 6uLL);
        v35 = v642;
        if (v642)
        {
          if ((v642 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
        }

        if (*(this + 959) >= 1)
        {
          v385 = 0;
          v386 = *(this + 964);
          v632 = v649;
          v387 = v647.u16[0];
          v639 = this + 2752;
          v617 = a2 + 4;
          __na = v386;
          while (1)
          {
            if (v386 && !a3[v385])
            {
              goto LABEL_532;
            }

            v389 = (*(this + 22) + 12 * v385);
            v390 = *v389;
            v391 = v389[1];
            v392 = v389[2];
            v393 = (*(this + 25) + 12 * v385);
            v394 = v393[2];
            if (v394 != -1)
            {
              v396 = *v393;
              v395 = v393[1];
              if (!v386 || a3[v390] && a3[v391] && a3[v392] && a3[v396] && a3[v395] && a3[v394])
              {
                break;
              }
            }

            if (v392 != -1 && (!v386 || a3[v390] && a3[v391] && a3[v392]))
            {
              v400 = *(this + 683);
              v401 = *(this + 684);
              if (v400 >= 0x40000001)
              {
                v410 = *(this + 683);
              }

              else
              {
                v402 = *(this + 686);
                do
                {
                  v401 *= 2;
                  *(this + 686) = --v402;
                  if (!v402)
                  {
                    v411 = *(this + 340);
                    *(this + 340) = v411 + 1;
                    v412 = *(this + 676);
                    if (v411 + 1 >= v412)
                    {
                      v413 = 65280;
                    }

                    else
                    {
                      v413 = *(*(this + 339) + v411 + 1) << 8;
                    }

                    v414 = v411 + 2;
                    *(this + 340) = v414;
                    if (v414 < v412)
                    {
                      v409 = *(*(this + 339) + v414);
                    }

                    else
                    {
                      v409 = 255;
                    }

                    v401 |= v413 | v409;
                    v402 = 16;
                    *(this + 686) = 16;
                  }

                  v410 = 2 * v400;
                  v139 = v400 >= 0x20000001;
                  v400 *= 2;
                }

                while (!v139);
              }

              v449 = (HIWORD(v410) * v632) & 0xFFFF0000;
              v450 = v410 - v449;
              v451 = v401 >= v449;
              v452 = v401 >= v449;
              if (v401 < v449)
              {
                v453 = (v632 >> 7) & 0x1FE;
              }

              else
              {
                v453 = ((v632 >> 7) & 0x1FE) + 1;
              }

              v454 = *&v639[2 * v453];
              if (v401 < v449)
              {
                v455 = v449;
              }

              else
              {
                v455 = v450;
              }

              if (v401 < v449)
              {
                v456 = 0;
              }

              else
              {
                v456 = v449;
              }

              v457 = 2;
              if (v451)
              {
                v457 = 4;
              }

              v458 = v401 - v456;
              *(this + 683) = v455;
              *(this + 684) = v458;
              if (v455 >= 0x40000001)
              {
                v461 = v455;
              }

              else
              {
                v459 = *(this + 686);
                do
                {
                  v458 *= 2;
                  *(this + 686) = --v459;
                  if (!v459)
                  {
                    v462 = *(this + 340);
                    *(this + 340) = v462 + 1;
                    v463 = *(this + 676);
                    if (v462 + 1 >= v463)
                    {
                      v464 = 65280;
                    }

                    else
                    {
                      v464 = *(*(this + 339) + v462 + 1) << 8;
                    }

                    v465 = v462 + 2;
                    *(this + 340) = v465;
                    if (v465 < v463)
                    {
                      v460 = *(*(this + 339) + v465);
                    }

                    else
                    {
                      v460 = 255;
                    }

                    v458 |= v464 | v460;
                    v459 = 16;
                    *(this + 686) = 16;
                  }

                  v461 = 2 * v455;
                  v139 = v455 >= 0x20000001;
                  v455 *= 2;
                }

                while (!v139);
              }

              v629 = v387;
              v466 = v390 * v35;
              v467 = v391 * v642;
              v468 = &a2[v467];
              v469 = v392 * v35;
              v470 = &a2[v469];
              v632 += v454;
              v471 = *(&v649 + v457);
              v472 = (HIWORD(v461) * v471) & 0xFFFF0000;
              v473 = (v471 >> 7) & 0x1FE;
              v474 = v461 - v472;
              if (v458 >= v472)
              {
                ++v473;
              }

              *(&v649 + v457) = *&v639[2 * v473] + v471;
              if (v458 < v472)
              {
                v475 = v472;
              }

              else
              {
                v475 = v474;
              }

              if (v458 < v472)
              {
                v476 = 0;
              }

              else
              {
                v476 = v472;
              }

              *(this + 683) = v475;
              *(this + 684) = v458 - v476;
              v477 = v452 | (2 * (v458 >= v472));
              if (v477 > 1)
              {
                if (v477 == 2)
                {
                  gcl::tmesh::ComputeGeneralizedParallelogramPrediction(&a2[v466], v468, v470, v642, (*(this + 13) + 12 * v390), (*(this + 13) + 12 * v391), (*(this + 13) + 12 * v392), (*(this + 13) + 12 * v385), 0);
                  p_b = &v667;
                  v35 = v642;
                  goto LABEL_679;
                }

                if (v35 == 2)
                {
                  gcl::tmesh::ComputeTexCoordinatesPrediction(&a2[2 * v390], &a2[2 * v391], &a2[2 * v392], (*(this + 13) + 12 * v390), (*(this + 13) + 12 * v391), (*(this + 13) + 12 * v385), 0);
                  v35 = v642;
                  goto LABEL_678;
                }

                v386 = __na;
                v387 = v629;
                if (v35)
                {
                  if (v35 >= 8)
                  {
                    v507 = 16;
                    v508 = &v617[v466];
                    v509 = &v617[v467];
                    v510 = v642 & 0x7FFFFFF8;
                    v511 = &v617[v469];
                    do
                    {
                      v512 = vsubq_s32(vaddq_s32(v509[-1], v508[-1]), v511[-1]);
                      v513 = vsubq_s32(vaddq_s32(*v509, *v508), *v511);
                      v508 += 2;
                      *(v507 - 16) = v512;
                      *v507 = v513;
                      v507 += 32;
                      v509 += 2;
                      v511 += 2;
                      v510 -= 8;
                    }

                    while (v510);
                  }

                  else
                  {
                    v514 = v642;
                    v515 = 0;
                    v516 = &a2[v469];
                    v517 = &a2[v467];
                    v518 = &a2[v466];
                    do
                    {
                      v520 = *v518++;
                      v519 = v520;
                      v521 = *v517++;
                      v522 = v521 + v519;
                      v523 = *v516++;
                      *v515++ = v522 - v523;
                      --v514;
                    }

                    while (v514);
                  }
                }
              }

              else
              {
                if (v477)
                {
                  gcl::tmesh::ComputeGeneralizedParallelogramPrediction(&a2[v466], v468, v470, v35, (*(this + 13) + 12 * v390), (*(this + 13) + 12 * v391), (*(this + 13) + 12 * v392), (*(this + 13) + 12 * v385), 0);
                  v35 = v642;
                  goto LABEL_678;
                }

                if (!v35)
                {
                  goto LABEL_678;
                }

                v386 = __na;
                v387 = v629;
                v497 = v642;
                v498 = 0;
                v499 = &a2[v469];
                v500 = &a2[v467];
                v501 = &a2[v466];
                do
                {
                  v503 = *v501++;
                  v502 = v503;
                  v504 = *v500++;
                  v505 = v504 + v502;
                  v506 = *v499++;
                  *v498++ = v505 - v506;
                  --v497;
                }

                while (v497);
              }

              goto LABEL_530;
            }

            if (v391 == -1 || v386 && (!a3[v390] || !a3[v391]))
            {
              if (v390 == -1 || v386 && !a3[v390])
              {
                v645.i8[0] = 3;
                gcl::tmesh::DecoderImpl::decodeResidual(this, 0, v35, &v645, 0, &a2[v385 * v35]);
                v35 = v642;
                goto LABEL_532;
              }

              if (v35)
              {
                memcpy(0, &a2[v390 * v642], 4 * v642);
                v35 = v642;
              }

              p_b = &__b;
            }

            else
            {
              p_b = &v659 + 1;
            }

LABEL_531:
            gcl::tmesh::DecoderImpl::decodeResidual(this, 0, v642, this + 3864, p_b, &a2[v385 * v35]);
            v35 = v642;
LABEL_532:
            if (++v385 >= *(this + 959))
            {
              goto LABEL_805;
            }
          }

          v397 = *(this + 683);
          v398 = *(this + 684);
          if (v397 >= 0x40000001)
          {
            v404 = *(this + 683);
          }

          else
          {
            v399 = *(this + 686);
            do
            {
              v398 *= 2;
              *(this + 686) = --v399;
              if (!v399)
              {
                v405 = *(this + 340);
                *(this + 340) = v405 + 1;
                v406 = *(this + 676);
                if (v405 + 1 >= v406)
                {
                  v407 = 65280;
                }

                else
                {
                  v407 = *(*(this + 339) + v405 + 1) << 8;
                }

                v408 = v405 + 2;
                *(this + 340) = v408;
                if (v408 < v406)
                {
                  v403 = *(*(this + 339) + v408);
                }

                else
                {
                  v403 = 255;
                }

                v398 |= v407 | v403;
                v399 = 16;
                *(this + 686) = 16;
              }

              v404 = 2 * v397;
              v139 = v397 >= 0x20000001;
              v397 *= 2;
            }

            while (!v139);
          }

          v415 = (HIWORD(v404) * v387) & 0xFFFF0000;
          v416 = v404 - v415;
          v417 = v398 >= v415;
          v418 = v398 >= v415;
          if (v398 < v415)
          {
            v419 = (v387 >> 7) & 0x1FE;
          }

          else
          {
            v419 = ((v387 >> 7) & 0x1FE) + 1;
          }

          v420 = *&v639[2 * v419];
          if (v398 < v415)
          {
            v421 = v415;
          }

          else
          {
            v421 = v416;
          }

          if (v398 < v415)
          {
            v422 = 0;
          }

          else
          {
            v422 = v415;
          }

          v423 = 1;
          if (v417)
          {
            v423 = 2;
          }

          v424 = v398 - v422;
          *(this + 683) = v421;
          *(this + 684) = v424;
          if (v421 >= 0x40000001)
          {
            v427 = v421;
          }

          else
          {
            v425 = *(this + 686);
            do
            {
              v424 *= 2;
              *(this + 686) = --v425;
              if (!v425)
              {
                v428 = *(this + 340);
                *(this + 340) = v428 + 1;
                v429 = *(this + 676);
                if (v428 + 1 >= v429)
                {
                  v430 = 65280;
                }

                else
                {
                  v430 = *(*(this + 339) + v428 + 1) << 8;
                }

                v431 = v428 + 2;
                *(this + 340) = v431;
                if (v431 < v429)
                {
                  v426 = *(*(this + 339) + v431);
                }

                else
                {
                  v426 = 255;
                }

                v424 |= v430 | v426;
                v425 = 16;
                *(this + 686) = 16;
              }

              v427 = 2 * v421;
              v139 = v421 >= 0x20000001;
              v421 *= 2;
            }

            while (!v139);
          }

          v620 = v396;
          v622 = v395;
          v432 = v396 * v35;
          v433 = v395 * v642;
          v434 = v394 * v35;
          v387 += v420;
          v435 = v647.u16[v423];
          v436 = (HIWORD(v427) * v435) & 0xFFFF0000;
          v437 = (v435 >> 7) & 0x1FE;
          v438 = v427 - v436;
          if (v424 >= v436)
          {
            ++v437;
          }

          v647.i16[v423] = *&v639[2 * v437] + v435;
          if (v424 < v436)
          {
            v439 = v436;
          }

          else
          {
            v439 = v438;
          }

          if (v424 < v436)
          {
            v440 = 0;
          }

          else
          {
            v440 = v436;
          }

          *(this + 683) = v439;
          *(this + 684) = v424 - v440;
          v441 = v418 | (2 * (v424 >= v436));
          if (v441 > 1)
          {
            v629 = v387;
            v442 = &a2[v390 * v642];
            v443 = &a2[v391 * v35];
            v444 = &a2[v392 * v642];
            v445 = &a2[v432];
            v446 = &a2[v433];
            v447 = &a2[v434];
            if (v441 == 2)
            {
              v448 = *(this + 13);
              v618 = v447;
              gcl::tmesh::ComputeGeneralizedParallelogramPrediction(v442, v443, v444, v35, (v448 + 12 * v390), (v448 + 12 * v391), (v448 + 12 * v392), (v448 + 12 * v385), 0);
              gcl::tmesh::ComputeGeneralizedParallelogramPrediction(v445, v446, v618, 0, (v448 + 12 * v620), (v448 + 12 * v622), (v448 + 12 * v394), (v448 + 12 * v385), 0);
              v35 = v642;
              p_b = &v667;
              a2 = v641;
LABEL_679:
              v386 = __na;
              v387 = v629;
              goto LABEL_531;
            }

            if (v35)
            {
              v478 = 0;
              do
              {
                v479 = 1431655766 * ((v445->i32[v478] + v442->i32[v478]) / 2 - (v444->i32[v478] + v447[v478]) + 2 * (v446->i32[v478] + v443->i32[v478]));
                *(4 * v478++) = HIDWORD(v479) + (v479 >> 63);
              }

              while (v642 != v478);
            }

LABEL_678:
            p_b = &v667;
            goto LABEL_679;
          }

          if (v441 && v35)
          {
            if (v35 >= 8)
            {
              v480 = 16;
              v481 = &v617[v432];
              v482 = &v617[v433];
              v483 = v642 & 0x7FFFFFF8;
              v484 = &v617[v434];
              do
              {
                v485 = vsubq_s32(vaddq_s32(v482[-1], v481[-1]), v484[-1]);
                v486 = vsubq_s32(vaddq_s32(*v482, *v481), *v484);
                v481 += 2;
                *(v480 - 16) = v485;
                *v480 = v486;
                v480 += 32;
                v482 += 2;
                v484 += 2;
                v483 -= 8;
              }

              while (v483);
            }

            else
            {
              v487 = v642;
              v488 = 0;
              v489 = &a2[v434];
              v490 = &a2[v433];
              v491 = &a2[v432];
              do
              {
                v493 = *v491++;
                v492 = v493;
                v494 = *v490++;
                v495 = v494 + v492;
                v496 = *v489++;
                *v488++ = v495 - v496;
                --v487;
              }

              while (v487);
            }
          }

LABEL_530:
          p_b = &v667;
          goto LABEL_531;
        }

        goto LABEL_805;
      }

      v674 = 0;
      v672 = 0u;
      v673 = 0u;
      v670 = 0u;
      v671 = 0u;
      v668 = 0u;
      v669 = 0u;
      v666 = 0u;
      v667 = 0u;
      v664 = 0u;
      v665 = 0u;
      v662 = 0u;
      v663 = 0u;
      v660 = 0u;
      v661 = 0u;
      __p = 0u;
      v659 = 0u;
      v656 = 0u;
      v657 = 0u;
      v654 = 0u;
      *v655 = 0u;
      __b = 0u;
      *v653 = 0u;
      gcl::polyline::ACContext::init(&__b, v642);
      gcl::polyline::ACContext::init((&v659 + 8), v642);
      gcl::polyline::ACContext::init(&v667, v642);
      v259 = v642;
      if (v642)
      {
        if ((v642 & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      if (*(this + 959) >= 1)
      {
        v349 = 0;
        v350 = *(this + 964);
        v627 = v350;
        v636 = a3;
        do
        {
          if (!v350 || a3[v349])
          {
            v352 = (*(this + 22) + 12 * v349);
            v353 = *v352;
            v354 = v352[1];
            v355 = v352[2];
            v356 = (*(this + 25) + 12 * v349);
            v357 = v356[2];
            if (v357 != -1 && ((v358 = *v356, !v350) || v636[v353] && v636[v354] && v636[v355] && v636[v358] && v636[v356[1]] && v636[v357]))
            {
              v359 = *(this + 13);
              v360 = v259;
              v361 = v356[1];
              gcl::tmesh::ComputeGeneralizedParallelogramPrediction(&v641[v353 * v259], &v641[v354 * v259], &v641[v355 * v642], v259, (v359 + 12 * v353), (v359 + 12 * v354), (v359 + 12 * v355), (v359 + 12 * v349), 0);
              v362 = &v641[(v358 * v360)];
              v363 = (v359 + 12 * v358);
              v364 = v642;
              gcl::tmesh::ComputeGeneralizedParallelogramPrediction(v362, &v641[v361 * v642], &v641[(v357 * v360)], v360, v363, (v359 + 12 * v361), (v359 + 12 * v357), (v359 + 12 * v349), 0);
              v351 = &v667;
              v367 = v641;
              v259 = v642;
              a3 = v636;
              v350 = v627;
            }

            else
            {
              v367 = v641;
              v364 = v642;
              a3 = v636;
              if (v355 != -1 && (!v350 || v636[v353] && v636[v354] && v636[v355]))
              {
                gcl::tmesh::ComputeGeneralizedParallelogramPrediction(&v641[v353 * v642], &v641[v354 * v259], &v641[v355 * v259], v259, (*(this + 13) + 12 * v353), (*(this + 13) + 12 * v354), (*(this + 13) + 12 * v355), (*(this + 13) + 12 * v349), 0);
                v259 = v642;
                v351 = &v667;
              }

              else if (v354 == -1 || v350 && (!v636[v353] || !v636[v354]))
              {
                if (v353 == -1 || v350 && !v636[v353])
                {
                  if (v259)
                  {
                    bzero(0, 4 * v642);
                    v259 = v642;
                  }

                  LOBYTE(v649) = 3;
                  gcl::tmesh::DecoderImpl::decodeResidual(this, 0, v259, &v649, 0, &v641[v349 * v259]);
                  v259 = v642;
                  goto LABEL_490;
                }

                v351 = &__b;
              }

              else
              {
                if (v259)
                {
                  v365 = v353 * v259;
                  v366 = v354 * v642;
                  if (v259 < 4)
                  {
                    v376 = v365;
                    v377 = v366;
                    v378 = v642;
                    v379 = 0;
                    v380 = &v641[v377];
                    v381 = &v641[v376];
                    do
                    {
                      v383 = *v381++;
                      v382 = v383;
                      v384 = *v380++;
                      *v379++ = (v384 + v382) / 2;
                      --v378;
                    }

                    while (v378);
                  }

                  else
                  {
                    v368 = &v641[v365];
                    v369 = 0;
                    v370 = v642 & 0x7FFFFFFC;
                    v371 = &v641[v366];
                    do
                    {
                      v372 = *v368++;
                      v373 = v372;
                      v374 = *v371++;
                      v375 = vaddq_s32(v374, v373);
                      *v369++ = vshrq_n_s32(vsraq_n_u32(v375, v375, 0x1FuLL), 1uLL);
                      v370 -= 4;
                    }

                    while (v370);
                  }
                }

                v351 = &v659 + 1;
              }
            }

            gcl::tmesh::DecoderImpl::decodeResidual(this, 0, v364, this + 3864, v351, &v367[v349 * v259]);
            v259 = v642;
          }

LABEL_490:
          ++v349;
        }

        while (v349 < *(this + 959));
      }

LABEL_805:
      if (v673)
      {
        operator delete(v673);
      }

      if (*(&v671 + 1))
      {
        operator delete(*(&v671 + 1));
      }

      if (v670)
      {
        operator delete(v670);
      }

      if (*(&v668 + 1))
      {
        operator delete(*(&v668 + 1));
      }

      if (v667)
      {
        operator delete(v667);
      }

      goto LABEL_815;
    }

    if (v34 != 5)
    {
      if (v34 != 6)
      {
        return;
      }

      v37 = ~(-1 << (*(this + 962) - 1));
      v649 = 0;
      v650 = 0;
      v651 = 0;
      gcl::tmesh::EstimateQuantizedNormals(this + 13, this + 16, &v649, v37);
      v674 = 0;
      v672 = 0u;
      v673 = 0u;
      v670 = 0u;
      v671 = 0u;
      v668 = 0u;
      v669 = 0u;
      v666 = 0u;
      v667 = 0u;
      v664 = 0u;
      v665 = 0u;
      v662 = 0u;
      v663 = 0u;
      v660 = 0u;
      v661 = 0u;
      __p = 0u;
      v659 = 0u;
      v656 = 0u;
      v657 = 0u;
      v654 = 0u;
      *v655 = 0u;
      __b = 0u;
      *v653 = 0u;
      gcl::polyline::ACContext::init(&__b, v642);
      gcl::polyline::ACContext::init((&v659 + 8), v642);
      gcl::polyline::ACContext::init(&v667, v642);
      memset_pattern16(v648, &unk_187FBF450, 6uLL);
      memset_pattern16(&v647.u64[1] + 6, &unk_187FBF450, 6uLL);
      v38 = *(this + 959);
      v39 = v642;
      if (v38 > 0)
      {
        v40 = 0;
        v41 = *(this + 964);
        v621 = v648[0];
        v626 = v647.u16[7];
        v42 = vdup_n_s32(v37);
        __n = 0x8000;
        v43 = vdup_n_s32(2 * v37);
        v630 = v649;
        v634 = this + 2752;
        v619 = 0x8000;
        v628 = v41;
        while (v41 && !a3[v40])
        {
LABEL_73:
          if (++v40 >= v38)
          {
            goto LABEL_424;
          }
        }

        v55 = (v630 + 12 * v40);
        v56 = *v55;
        v57 = v55[1].i32[0];
        v58 = (*(this + 22) + 12 * v40);
        v59 = *v58;
        v60 = v58[1];
        v61 = v58[2];
        v62 = (*(this + 25) + 12 * v40);
        v63 = v62[2];
        if (v63 != -1)
        {
          v65 = *v62;
          v64 = v62[1];
          if (!v41 || a3[v59] && a3[v60] && a3[v61] && a3[v65] && a3[v64] && a3[v63])
          {
            v66 = *&a2[v59 * v642];
            v67 = vsub_s32(v66, v42);
            v68 = vabd_s32(v66, v42);
            v69 = v37 - v68.i32[0] - v68.i32[1];
            if (v69 < 0)
            {
              v67 = vbsl_s8(vcltz_s32(v67), vrev64_s32(vsub_s32(v68, v42)), __PAIR64__(v37 - v68.i32[0], v37 - v68.i32[1]));
            }

            v70 = *(this + 683);
            v71 = *(this + 684);
            if (v70 >= 0x40000001)
            {
              v89 = *(this + 683);
            }

            else
            {
              v72 = *(this + 686);
              do
              {
                v71 *= 2;
                *(this + 686) = --v72;
                if (!v72)
                {
                  v90 = *(this + 340);
                  *(this + 340) = v90 + 1;
                  v91 = *(this + 676);
                  if (v90 + 1 >= v91)
                  {
                    v92 = 65280;
                  }

                  else
                  {
                    v92 = *(*(this + 339) + v90 + 1) << 8;
                  }

                  v93 = v90 + 2;
                  *(this + 340) = v93;
                  if (v93 < v91)
                  {
                    v88 = *(*(this + 339) + v93);
                  }

                  else
                  {
                    v88 = 255;
                  }

                  v71 |= v92 | v88;
                  v72 = 16;
                  *(this + 686) = 16;
                }

                v89 = 2 * v70;
                v139 = v70 >= 0x20000001;
                v70 *= 2;
              }

              while (!v139);
            }

            v137 = (HIWORD(v89) * v626) & 0xFFFF0000;
            v138 = v89 - v137;
            v139 = v71 >= v137;
            v140 = v71 >= v137;
            if (v71 < v137)
            {
              v141 = (v626 >> 7) & 0x1FE;
            }

            else
            {
              v141 = ((v626 >> 7) & 0x1FE) + 1;
            }

            v142 = *&v634[2 * v141];
            if (v71 < v137)
            {
              v143 = v137;
            }

            else
            {
              v143 = v138;
            }

            if (v71 < v137)
            {
              v144 = 0;
            }

            else
            {
              v144 = v137;
            }

            v145 = 1;
            if (v139)
            {
              v145 = 2;
            }

            v146 = v71 - v144;
            *(this + 683) = v143;
            *(this + 684) = v146;
            if (v143 >= 0x40000001)
            {
              v149 = v143;
            }

            else
            {
              v147 = *(this + 686);
              do
              {
                v146 *= 2;
                *(this + 686) = --v147;
                if (!v147)
                {
                  v150 = *(this + 340);
                  *(this + 340) = v150 + 1;
                  v151 = *(this + 676);
                  if (v150 + 1 >= v151)
                  {
                    v152 = 65280;
                  }

                  else
                  {
                    v152 = *(*(this + 339) + v150 + 1) << 8;
                  }

                  v153 = v150 + 2;
                  *(this + 340) = v153;
                  if (v153 < v151)
                  {
                    v148 = *(*(this + 339) + v153);
                  }

                  else
                  {
                    v148 = 255;
                  }

                  v146 |= v152 | v148;
                  v147 = 16;
                  *(this + 686) = 16;
                }

                v149 = 2 * v143;
                v139 = v143 >= 0x20000001;
                v143 *= 2;
              }

              while (!v139);
            }

            v626 += v142;
            v154 = v647.u16[v145 + 7];
            v155 = (HIWORD(v149) * v154) & 0xFFFF0000;
            v156 = (v154 >> 7) & 0x1FE;
            v157 = v149 - v155;
            if (v146 >= v155)
            {
              ++v156;
            }

            v647.i16[v145 + 7] = *&v634[2 * v156] + v154;
            if (v146 < v155)
            {
              v158 = v155;
            }

            else
            {
              v158 = v157;
            }

            if (v146 < v155)
            {
              v159 = 0;
            }

            else
            {
              v159 = v155;
            }

            *(this + 683) = v158;
            *(this + 684) = v146 - v159;
            v160 = v140 | (2 * (v146 >= v155));
            if (v160 > 1)
            {
              if (v160 != 2)
              {
                v222 = *&a2[v60 * v642];
                v223 = vsub_s32(v222, v42);
                v224 = vabd_s32(v222, v42);
                v225 = v37 - v224.i32[0] - v224.i32[1];
                if (v225 < 0)
                {
                  v223 = vbsl_s8(vcltz_s32(v223), vrev64_s32(vsub_s32(v224, v42)), __PAIR64__(v37 - v224.i32[0], v37 - v224.i32[1]));
                }

                v226 = *&a2[(v61 * v39)];
                v227 = vsub_s32(v226, v42);
                v228 = vabd_s32(v226, v42);
                v229 = v37 - v228.i32[0] - v228.i32[1];
                if (v229 < 0)
                {
                  v227 = vbsl_s8(vcltz_s32(v227), vrev64_s32(vsub_s32(v228, v42)), __PAIR64__(v37 - v228.i32[0], v37 - v228.i32[1]));
                }

                v230 = *&a2[v65 * v642];
                v231 = vsub_s32(v230, v42);
                v232 = vabd_s32(v230, v42);
                v233 = v37 - v232.i32[0] - v232.i32[1];
                if (v233 < 0)
                {
                  v231 = vbsl_s8(vcltz_s32(v231), vrev64_s32(vsub_s32(v232, v42)), __PAIR64__(v37 - v232.i32[0], v37 - v232.i32[1]));
                }

                v234 = *&a2[(v64 * v39)];
                v235 = vsub_s32(v234, v42);
                v236 = vabd_s32(v234, v42);
                v237 = v37 - v236.i32[0] - v236.i32[1];
                if (v237 < 0)
                {
                  v235 = vbsl_s8(vcltz_s32(v235), vrev64_s32(vsub_s32(v236, v42)), __PAIR64__(v37 - v236.i32[0], v37 - v236.i32[1]));
                }

                v238 = *&a2[v63 * v642];
                v239 = vsub_s32(v238, v42);
                v240 = vabd_s32(v238, v42);
                if (v37 - v240.i32[0] - v240.i32[1] < 0)
                {
                  v239 = vbsl_s8(vcltz_s32(v239), vrev64_s32(vsub_s32(v240, v42)), __PAIR64__(v37 - v240.i32[0], v37 - v240.i32[1]));
                }

                v241 = vadd_s32(v231, v67);
                v242 = vadd_s32(v235, v223);
                v243 = vmull_s32(vsub_s32(vsra_n_s32(vadd_s32(v242, v242), vsra_n_u32(v241, v241, 0x1FuLL), 1uLL), vadd_s32(v227, v239)), vdup_n_s32(0x55555556u));
                v56 = vadd_s32(vshrn_n_s64(v243, 0x20uLL), vmovn_s64(vshrq_n_u64(v243, 0x3FuLL)));
                v244 = 1431655766 * ((v233 + v69) / 2 + 2 * (v237 + v225) - (v229 + v37 - v240.i32[0] - v240.i32[1]));
                v57 = HIDWORD(v244) + (v244 >> 63);
                goto LABEL_303;
              }

              v161 = *&a2[(v65 * v39)];
              v67 = vsub_s32(v161, v42);
              v162 = vabd_s32(v161, v42);
              v163 = v37 - v162.i32[0] - v162.i32[1];
              if (v163 < 0)
              {
                v67 = vbsl_s8(vcltz_s32(v67), vrev64_s32(vsub_s32(v162, v42)), __PAIR64__(v37 - v162.i32[0], v37 - v162.i32[1]));
              }

              v164 = *&a2[(v64 * v39)];
              v165 = vsub_s32(v164, v42);
              v166 = vabd_s32(v164, v42);
              v69 = v37 - v166.i32[0] - v166.i32[1];
              if (v69 < 0)
              {
                v165 = vbsl_s8(vcltz_s32(v165), vrev64_s32(vsub_s32(v166, v42)), __PAIR64__(v37 - v166.i32[0], v37 - v166.i32[1]));
              }

              v167 = *&a2[(v63 * v39)];
              v168 = vsub_s32(v167, v42);
              v169 = vabd_s32(v167, v42);
              v170 = v37 - v169.i32[0] - v169.i32[1];
              if (v170 < 0)
              {
                v168 = vbsl_s8(vcltz_s32(v168), vrev64_s32(vsub_s32(v169, v42)), __PAIR64__(v37 - v169.i32[0], v37 - v169.i32[1]));
              }
            }

            else
            {
              if (!v160)
              {
                if (v57 * v69 + v67.i32[0] * v56.i32[0] + v67.i32[1] * v56.i32[1] < 0)
                {
                  v56 = vneg_s32(v56);
                  v57 = -v57;
                }

                goto LABEL_303;
              }

              v218 = *&a2[(v60 * v39)];
              v165 = vsub_s32(v218, v42);
              v219 = vabd_s32(v218, v42);
              v163 = v37 - v219.i32[0] - v219.i32[1];
              if (v163 < 0)
              {
                v165 = vbsl_s8(vcltz_s32(v165), vrev64_s32(vsub_s32(v219, v42)), __PAIR64__(v37 - v219.i32[0], v37 - v219.i32[1]));
              }

              v220 = *&a2[v61 * v642];
              v168 = vsub_s32(v220, v42);
              v221 = vabd_s32(v220, v42);
              v170 = v37 - v221.i32[0] - v221.i32[1];
              if (v170 < 0)
              {
                v168 = vbsl_s8(vcltz_s32(v168), vrev64_s32(vsub_s32(v221, v42)), __PAIR64__(v37 - v221.i32[0], v37 - v221.i32[1]));
              }
            }

            v56 = vsub_s32(vadd_s32(v165, v67), v168);
            v57 = v163 + v69 - v170;
LABEL_303:
            v217 = &v667;
            goto LABEL_307;
          }
        }

        if (v61 != -1 && (!v41 || a3[v59] && a3[v60] && a3[v61]))
        {
          v73 = *&a2[(v59 * v39)];
          v74 = vsub_s32(v73, v42);
          v75 = vabd_s32(v73, v42);
          v76 = v37 - v75.i32[0] - v75.i32[1];
          if (v76 < 0)
          {
            v74 = vbsl_s8(vcltz_s32(v74), vrev64_s32(vsub_s32(v75, v42)), __PAIR64__(v37 - v75.i32[0], v37 - v75.i32[1]));
          }

          v77 = *&a2[v60 * v642];
          v78 = vsub_s32(v77, v42);
          v79 = vabd_s32(v77, v42);
          v80 = v37 - v79.i32[0] - v79.i32[1];
          if (v80 < 0)
          {
            v78 = vbsl_s8(vcltz_s32(v78), vrev64_s32(vsub_s32(v79, v42)), __PAIR64__(v37 - v79.i32[0], v37 - v79.i32[1]));
          }

          v81 = *&a2[(v61 * v39)];
          v82 = vsub_s32(v81, v42);
          v83 = vabd_s32(v81, v42);
          v84 = v37 - v83.i32[0] - v83.i32[1];
          if (v84 < 0)
          {
            v82 = vbsl_s8(vcltz_s32(v82), vrev64_s32(vsub_s32(v83, v42)), __PAIR64__(v37 - v83.i32[0], v37 - v83.i32[1]));
          }

          v85 = *(this + 683);
          v86 = *(this + 684);
          if (v85 >= 0x40000001)
          {
            v95 = *(this + 683);
          }

          else
          {
            v87 = *(this + 686);
            do
            {
              v86 *= 2;
              *(this + 686) = --v87;
              if (!v87)
              {
                v96 = *(this + 340);
                *(this + 340) = v96 + 1;
                v97 = *(this + 676);
                if (v96 + 1 >= v97)
                {
                  v98 = 65280;
                }

                else
                {
                  v98 = *(*(this + 339) + v96 + 1) << 8;
                }

                v99 = v96 + 2;
                *(this + 340) = v99;
                if (v99 < v97)
                {
                  v94 = *(*(this + 339) + v99);
                }

                else
                {
                  v94 = 255;
                }

                v86 |= v98 | v94;
                v87 = 16;
                *(this + 686) = 16;
              }

              v95 = 2 * v85;
              v139 = v85 >= 0x20000001;
              v85 *= 2;
            }

            while (!v139);
          }

          v171 = (HIWORD(v95) * v621) & 0xFFFF0000;
          v172 = (v621 >> 7) & 0x1FE;
          v173 = v95 - v171;
          v174 = v86 >= v171;
          v175 = v86 >= v171;
          if (v86 >= v171)
          {
            ++v172;
          }

          v176 = *&v634[2 * v172];
          if (v86 < v171)
          {
            v177 = v171;
          }

          else
          {
            v177 = v173;
          }

          if (v86 < v171)
          {
            v178 = 0;
          }

          else
          {
            v178 = v171;
          }

          v179 = 1;
          if (v174)
          {
            v179 = 2;
          }

          v180 = v86 - v178;
          *(this + 683) = v177;
          *(this + 684) = v180;
          v181 = v648[v179];
          if (v177 >= 0x40000001)
          {
            v184 = v177;
          }

          else
          {
            v182 = *(this + 686);
            do
            {
              v180 *= 2;
              *(this + 686) = --v182;
              if (!v182)
              {
                v185 = *(this + 340);
                *(this + 340) = v185 + 1;
                v186 = *(this + 676);
                if (v185 + 1 >= v186)
                {
                  v187 = 65280;
                }

                else
                {
                  v187 = *(*(this + 339) + v185 + 1) << 8;
                }

                v188 = v185 + 2;
                *(this + 340) = v188;
                if (v188 < v186)
                {
                  v183 = *(*(this + 339) + v188);
                }

                else
                {
                  v183 = 255;
                }

                v180 |= v187 | v183;
                v182 = 16;
                *(this + 686) = 16;
              }

              v184 = 2 * v177;
              v139 = v177 >= 0x20000001;
              v177 *= 2;
            }

            while (!v139);
          }

          v189 = v176 + v621;
          v190 = (HIWORD(v184) * v181) & 0xFFFF0000;
          v191 = (v181 >> 7) & 0x1FE;
          if (v180 >= v190)
          {
            ++v191;
          }

          v648[v179] = *&v634[2 * v191] + v181;
          if (v180 < v190)
          {
            v192 = (HIWORD(v184) * v181) & 0xFFFF0000;
          }

          else
          {
            v192 = v184 - v190;
          }

          if (v180 < v190)
          {
            v193 = 0;
          }

          else
          {
            v193 = (HIWORD(v184) * v181) & 0xFFFF0000;
          }

          *(this + 683) = v192;
          *(this + 684) = v180 - v193;
          v194 = v175 | (2 * (v180 >= v190));
          v621 = v189;
          if (v194 > 1)
          {
            v195 = vsub_s32(v78, vmvn_s8(v74));
            if (v194 == 2)
            {
              v56 = vshr_n_s32(vsra_n_u32(v195, v195, 0x1FuLL), 1uLL);
              v57 = (v76 + v80 + 1) / 2;
            }

            else
            {
              v245 = vmull_s32(vadd_s32(v195, v82), vdup_n_s32(0x55555556u));
              v56 = vadd_s32(vshrn_n_s64(v245, 0x20uLL), vmovn_s64(vshrq_n_u64(v245, 0x3FuLL)));
              v57 = (v76 + v80 + v84 + 1) / 3;
            }
          }

          else if (v194)
          {
            v56 = vsub_s32(vadd_s32(v78, v74), v82);
            v57 = v80 + v76 - v84;
          }

          else if (v57 * v76 + v74.i32[0] * v56.i32[0] + v74.i32[1] * v56.i32[1] < 0)
          {
            v56 = vneg_s32(v56);
            v57 = -v57;
          }

          v217 = &v659 + 1;
LABEL_307:
          v246 = vabs_s32(v56);
          if (v57 >= 0)
          {
            v247 = v57;
          }

          else
          {
            v247 = -v57;
          }

          v248 = v246.u32[1];
          v249 = v246.i32[0];
          v251 = v246.i32[0] < v246.i32[1] || v246.i32[0] < v247;
          v252 = v56.i32[1];
          v637 = v56.i32[0];
          if (v251)
          {
            v253 = v56.i32[0];
            if (v246.i32[1] < v247)
            {
              v249 = v247;
              v254 = v56.i32[1];
LABEL_322:
              v647.i64[0] = __PAIR64__(v254, v253);
              v647.i32[2] = v249;
              gcl::tmesh::DecoderImpl::decodeResidual(this, &v647, v39, this + 3864, v217, &v645);
              v256 = *v645.i8;
              v257 = vabs_s32(*v645.i8);
              v48 = v37 - v257.i32[0] - v257.i32[1];
              if (v48 < 0)
              {
                v256 = vbsl_s8(vcltz_s32(*v645.i8), vrev64_s32(vsub_s32(v257, v42)), __PAIR64__(v37 - v257.i32[0], v37 - v257.i32[1]));
              }

              v39 = v642;
              v44 = v257.i32[1] - (v37 - v257.i32[0]);
              if (v57 >= 0)
              {
                v45 = v37 - v257.i32[0] - v257.i32[1];
              }

              else
              {
                v45 = v257.i32[1] - (v37 - v257.i32[0]);
              }

              if (v252 >= 0)
              {
                v44 = v37 - v257.i32[0] - v257.i32[1];
              }

              v46 = COERCE_DOUBLE(__PAIR64__(v44, v256.u32[0]));
              if (v248 >= v247)
              {
                v47 = v256.i32[1];
              }

              else
              {
                v47 = v45;
              }

              if (v248 < v247)
              {
                v46 = *&v256;
              }

              if (v637 < 0)
              {
                v48 = -v48;
              }

              v49 = COERCE_DOUBLE(__PAIR64__(v256.u32[1], v48));
              v50 = v256.i32[0];
              if (v251)
              {
                v50 = v47;
                *&v51 = v46;
              }

              else
              {
                *&v51 = v49;
              }

              a2 = v641;
              v52 = vrev64_s32(vabs_s32(v51));
              v53 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(v51), v52, vsub_s32(v43, v52)));
              v54 = COERCE_DOUBLE(vadd_s32(v51, v42));
              if (v50 < 0)
              {
                v54 = v53;
              }

              *&v641[v40 * v642] = v54;
              v38 = *(this + 959);
              v41 = v628;
              goto LABEL_73;
            }

            v255 = &v646;
            v249 = v246.i32[1];
            v254 = v57;
          }

          else
          {
            v255 = &v645;
            v254 = v56.i32[1];
            v253 = v57;
          }

          v255->i32[0] = v57;
          goto LABEL_322;
        }

        if (v60 == -1 || v41 && (!a3[v59] || !a3[v60]))
        {
          if (v59 == -1 || v41 && !a3[v59])
          {
            v127 = *(this + 683);
            v128 = *(this + 684);
            if (v127 >= 0x40000001)
            {
              v132 = *(this + 683);
              v130 = v619;
            }

            else
            {
              v129 = *(this + 686);
              v130 = v619;
              do
              {
                v128 *= 2;
                *(this + 686) = --v129;
                if (!v129)
                {
                  v133 = *(this + 340);
                  *(this + 340) = v133 + 1;
                  v134 = *(this + 676);
                  if (v133 + 1 >= v134)
                  {
                    v135 = 65280;
                  }

                  else
                  {
                    v135 = *(*(this + 339) + v133 + 1) << 8;
                  }

                  v136 = v133 + 2;
                  *(this + 340) = v136;
                  if (v136 < v134)
                  {
                    v131 = *(*(this + 339) + v136);
                  }

                  else
                  {
                    v131 = 255;
                  }

                  v128 |= v135 | v131;
                  v129 = 16;
                  *(this + 686) = 16;
                }

                v132 = 2 * v127;
                v139 = v127 >= 0x20000001;
                v127 *= 2;
              }

              while (!v139);
            }

            v196 = (HIWORD(v132) * v130) & 0xFFFF0000;
            v197 = v132 - v196;
            if (v128 < v196)
            {
              v198 = 0;
            }

            else
            {
              v198 = (HIWORD(v132) * v130) & 0xFFFF0000;
            }

            *(this + 684) = v128 - v198;
            v199 = v128 >= v196;
            if (v128 < v196)
            {
              v200 = (v130 >> 7) & 0x1FE;
            }

            else
            {
              v200 = ((v130 >> 7) & 0x1FE) + 1;
            }

            v619 = *&v634[2 * v200] + v130;
            if (v199)
            {
              v201 = v197;
            }

            else
            {
              v201 = v196;
            }

            *(this + 683) = v201;
            if (!v199)
            {
              goto LABEL_286;
            }

            goto LABEL_285;
          }

          v116 = *&a2[(v59 * v39)];
          v101 = vsub_s32(v116, v42);
          v117 = vabd_s32(v116, v42);
          v103 = v37 - v117.i32[0] - v117.i32[1];
          if (v103 < 0)
          {
            v101 = vbsl_s8(vcltz_s32(v101), vrev64_s32(vsub_s32(v117, v42)), __PAIR64__(v37 - v117.i32[0], v37 - v117.i32[1]));
          }

          v118 = *(this + 683);
          v119 = *(this + 684);
          if (v118 >= 0x40000001)
          {
            v122 = *(this + 683);
          }

          else
          {
            v120 = *(this + 686);
            do
            {
              v119 *= 2;
              *(this + 686) = --v120;
              if (!v120)
              {
                v123 = *(this + 340);
                *(this + 340) = v123 + 1;
                v124 = *(this + 676);
                if (v123 + 1 >= v124)
                {
                  v125 = 65280;
                }

                else
                {
                  v125 = *(*(this + 339) + v123 + 1) << 8;
                }

                v126 = v123 + 2;
                *(this + 340) = v126;
                if (v126 < v124)
                {
                  v121 = *(*(this + 339) + v126);
                }

                else
                {
                  v121 = 255;
                }

                v119 |= v125 | v121;
                v120 = 16;
                *(this + 686) = 16;
              }

              v122 = 2 * v118;
              v139 = v118 >= 0x20000001;
              v118 *= 2;
            }

            while (!v139);
          }

          v210 = (HIWORD(v122) * __n) & 0xFFFF0000;
          v211 = v122 - v210;
          if (v119 < v210)
          {
            v212 = 0;
          }

          else
          {
            v212 = (HIWORD(v122) * __n) & 0xFFFF0000;
          }

          *(this + 684) = v119 - v212;
          v213 = v119 >= v210;
          if (v119 < v210)
          {
            v214 = (__n >> 7) & 0x1FE;
          }

          else
          {
            v214 = ((__n >> 7) & 0x1FE) + 1;
          }

          v215 = *&v634[2 * v214] + __n;
          if (v213)
          {
            v216 = v211;
          }

          else
          {
            v216 = v210;
          }

          *(this + 683) = v216;
          __n = v215;
          if (v213)
          {
            v217 = &__b;
            v57 = v37 - v117.i32[0] - v117.i32[1];
            v56 = v101;
            goto LABEL_307;
          }
        }

        else
        {
          v100 = *&a2[v59 * v642];
          v101 = vsub_s32(v100, v42);
          v102 = vabd_s32(v100, v42);
          v103 = v37 - v102.i32[0] - v102.i32[1];
          if (v103 < 0)
          {
            v101 = vbsl_s8(vcltz_s32(v101), vrev64_s32(vsub_s32(v102, v42)), __PAIR64__(v37 - v102.i32[0], v37 - v102.i32[1]));
          }

          v104 = *&a2[(v60 * v39)];
          v105 = vsub_s32(v104, v42);
          v106 = vabd_s32(v104, v42);
          if (v37 - v106.i32[0] - v106.i32[1] < 0)
          {
            v105 = vbsl_s8(vcltz_s32(v105), vrev64_s32(vsub_s32(v106, v42)), __PAIR64__(v37 - v106.i32[0], v37 - v106.i32[1]));
          }

          v107 = *(this + 683);
          v108 = *(this + 684);
          if (v107 >= 0x40000001)
          {
            v111 = *(this + 683);
          }

          else
          {
            v109 = *(this + 686);
            do
            {
              v108 *= 2;
              *(this + 686) = --v109;
              if (!v109)
              {
                v112 = *(this + 340);
                *(this + 340) = v112 + 1;
                v113 = *(this + 676);
                if (v112 + 1 >= v113)
                {
                  v114 = 65280;
                }

                else
                {
                  v114 = *(*(this + 339) + v112 + 1) << 8;
                }

                v115 = v112 + 2;
                *(this + 340) = v115;
                if (v115 < v113)
                {
                  v110 = *(*(this + 339) + v115);
                }

                else
                {
                  v110 = 255;
                }

                v108 |= v114 | v110;
                v109 = 16;
                *(this + 686) = 16;
              }

              v111 = 2 * v107;
              v139 = v107 >= 0x20000001;
              v107 *= 2;
            }

            while (!v139);
          }

          v202 = (HIWORD(v111) * __n) & 0xFFFF0000;
          v203 = v111 - v202;
          if (v108 < v202)
          {
            v204 = 0;
          }

          else
          {
            v204 = (HIWORD(v111) * __n) & 0xFFFF0000;
          }

          *(this + 684) = v108 - v204;
          v205 = v108 >= v202;
          if (v108 < v202)
          {
            v206 = (__n >> 7) & 0x1FE;
          }

          else
          {
            v206 = ((__n >> 7) & 0x1FE) + 1;
          }

          v207 = *&v634[2 * v206] + __n;
          if (v205)
          {
            v208 = v203;
          }

          else
          {
            v208 = v202;
          }

          *(this + 683) = v208;
          __n = v207;
          if (v205)
          {
            v209 = vsub_s32(v105, vmvn_s8(v101));
            v56 = vshr_n_s32(vsra_n_u32(v209, v209, 0x1FuLL), 1uLL);
            v57 = (v103 + v37 - v106.i32[0] - v106.i32[1] + 1) / 2;
            goto LABEL_286;
          }
        }

        if (v57 * v103 + v101.i32[0] * v56.i32[0] + v101.i32[1] * v56.i32[1] < 0)
        {
LABEL_285:
          v56 = vneg_s32(v56);
          v57 = -v57;
        }

LABEL_286:
        v217 = &__b;
        goto LABEL_307;
      }

LABEL_424:
      if (v673)
      {
        *(&v673 + 1) = v673;
        operator delete(v673);
      }

      if (*(&v671 + 1))
      {
        *&v672 = *(&v671 + 1);
        operator delete(*(&v671 + 1));
      }

      if (v670)
      {
        *(&v670 + 1) = v670;
        operator delete(v670);
      }

      if (*(&v668 + 1))
      {
        *&v669 = *(&v668 + 1);
        operator delete(*(&v668 + 1));
      }

      if (v667)
      {
        *(&v667 + 1) = v667;
        operator delete(v667);
      }

      if (*(&v665 + 1))
      {
        *&v666 = *(&v665 + 1);
        operator delete(*(&v665 + 1));
      }

      if (v664)
      {
        *(&v664 + 1) = v664;
        operator delete(v664);
      }

      if (*(&v662 + 1))
      {
        *&v663 = *(&v662 + 1);
        operator delete(*(&v662 + 1));
      }

      if (v661)
      {
        *(&v661 + 1) = v661;
        operator delete(v661);
      }

      if (*(&v659 + 1))
      {
        *&v660 = *(&v659 + 1);
        operator delete(*(&v659 + 1));
      }

      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (*(&v656 + 1))
      {
        *&v657 = *(&v656 + 1);
        operator delete(*(&v656 + 1));
      }

      if (v655[0])
      {
        v655[1] = v655[0];
        operator delete(v655[0]);
      }

      if (v653[1])
      {
        *&v654 = v653[1];
        operator delete(v653[1]);
      }

      v318 = __b;
      if (__b)
      {
        *(&__b + 1) = __b;
LABEL_454:
        operator delete(v318);
      }

LABEL_455:
      v319 = v649;
      if (!v649)
      {
        return;
      }

      goto LABEL_834;
    }

    v260 = ~(-1 << (*(this + 962) - 1));
    v649 = 0;
    v650 = 0;
    v651 = 0;
    gcl::tmesh::EstimateQuantizedNormals(this + 13, this + 16, &v649, v260);
    *&v659 = 0;
    v657 = 0u;
    __p = 0u;
    v656 = 0u;
    v654 = 0u;
    *v655 = 0u;
    __b = 0u;
    *v653 = 0u;
    gcl::polyline::ACContext::init(&__b, v642);
    v261 = *(this + 959);
    v262 = v642;
    if (v261 < 1)
    {
LABEL_414:
      if (__p)
      {
        operator delete(__p);
      }

      if (*(&v656 + 1))
      {
        operator delete(*(&v656 + 1));
      }

      if (v655[0])
      {
        operator delete(v655[0]);
      }

      if (v653[1])
      {
        operator delete(v653[1]);
      }

      v318 = __b;
      if (__b)
      {
        goto LABEL_454;
      }

      goto LABEL_455;
    }

    v263 = 0;
    v264 = *(this + 964);
    v265 = vdup_n_s32(v260);
    v266 = vdup_n_s32(2 * v260);
    v638 = 0x8000;
    v635 = v649;
    v631 = v264;
    while (v264 && !a3[v263])
    {
LABEL_350:
      if (++v263 >= v261)
      {
        goto LABEL_414;
      }
    }

    v278 = (v635 + 12 * v263);
    v279 = *v278;
    v280 = v278[1].i32[0];
    v281 = *(*(this + 22) + 12 * v263);
    if (v281 == -1 || v264 && !a3[v281])
    {
      v291 = *(this + 683);
      v292 = *(this + 684);
      if (v291 >= 0x40000001)
      {
        v295 = *(this + 683);
      }

      else
      {
        v293 = *(this + 686);
        do
        {
          v292 *= 2;
          *(this + 686) = --v293;
          if (!v293)
          {
            v296 = *(this + 340);
            *(this + 340) = v296 + 1;
            v297 = *(this + 676);
            if (v296 + 1 >= v297)
            {
              v298 = 65280;
            }

            else
            {
              v298 = *(*(this + 339) + v296 + 1) << 8;
            }

            v299 = v296 + 2;
            *(this + 340) = v299;
            if (v299 < v297)
            {
              v294 = *(*(this + 339) + v299);
            }

            else
            {
              v294 = 255;
            }

            v292 |= v298 | v294;
            v293 = 16;
            *(this + 686) = 16;
          }

          v295 = 2 * v291;
          v139 = v291 >= 0x20000001;
          v291 *= 2;
        }

        while (!v139);
      }

      v300 = (HIWORD(v295) * v638) & 0xFFFF0000;
      v301 = v295 - v300;
      if (v292 < v300)
      {
        v302 = 0;
      }

      else
      {
        v302 = (HIWORD(v295) * v638) & 0xFFFF0000;
      }

      *(this + 684) = v292 - v302;
      v303 = v292 >= v300;
      if (v292 < v300)
      {
        v304 = (v638 >> 7) & 0x1FE;
      }

      else
      {
        v304 = ((v638 >> 7) & 0x1FE) + 1;
      }

      v638 += *(this + v304 + 1376);
      if (v303)
      {
        v305 = v301;
      }

      else
      {
        v305 = v300;
      }

      *(this + 683) = v305;
      if (v303)
      {
        goto LABEL_393;
      }
    }

    else
    {
      v282 = &a2[(v281 * v262)];
      v283 = *v282 - v260;
      v284 = v282[1] - v260;
      if (v283 >= 0)
      {
        v285 = v283;
      }

      else
      {
        v285 = -v283;
      }

      if (v284 >= 0)
      {
        v286 = v284;
      }

      else
      {
        v286 = -v284;
      }

      v287 = v260 - v285;
      v288 = v286 - v260;
      if (v283 >= 0)
      {
        v288 = v260 - v286;
      }

      v289 = v285 - v260;
      if (v284 >= 0)
      {
        v289 = v287;
      }

      v290 = v287 - v286;
      if (v290 < 0)
      {
        v283 = v288;
        v284 = v289;
      }

      if (v280 * v290 + v283 * v279.i32[0] + v284 * v279.i32[1] < 0)
      {
LABEL_393:
        v279 = vneg_s32(v279);
        v280 = -v280;
      }
    }

    v306 = vabs_s32(v279);
    if (v280 >= 0)
    {
      v307 = v280;
    }

    else
    {
      v307 = -v280;
    }

    v308 = v306.u32[1];
    v309 = v306.i32[0];
    v311 = v306.i32[0] < v306.i32[1] || v306.i32[0] < v307;
    v312 = v279.i32[1];
    v643 = v279.i32[0];
    if (v311)
    {
      v313 = v279.i32[0];
      if (v306.i32[1] < v307)
      {
        v309 = v307;
        v314 = v279.i32[1];
LABEL_409:
        v647.i64[0] = __PAIR64__(v314, v313);
        v647.i32[2] = v309;
        gcl::tmesh::DecoderImpl::decodeResidual(this, &v647, v262, this + 3864, &__b, &v645);
        v316 = *v645.i8;
        v317 = vabs_s32(*v645.i8);
        v271 = v260 - v317.i32[0] - v317.i32[1];
        if (v271 < 0)
        {
          v316 = vbsl_s8(vcltz_s32(*v645.i8), vrev64_s32(vsub_s32(v317, v265)), __PAIR64__(v260 - v317.i32[0], v260 - v317.i32[1]));
        }

        v262 = v644[0];
        v267 = v317.i32[1] - (v260 - v317.i32[0]);
        if (v280 >= 0)
        {
          v268 = v260 - v317.i32[0] - v317.i32[1];
        }

        else
        {
          v268 = v317.i32[1] - (v260 - v317.i32[0]);
        }

        if (v312 >= 0)
        {
          v267 = v260 - v317.i32[0] - v317.i32[1];
        }

        v269 = COERCE_DOUBLE(__PAIR64__(v267, v316.u32[0]));
        if (v308 >= v307)
        {
          v270 = v316.i32[1];
        }

        else
        {
          v270 = v268;
        }

        if (v308 < v307)
        {
          v269 = *&v316;
        }

        if (v643 < 0)
        {
          v271 = -v271;
        }

        v272 = COERCE_DOUBLE(__PAIR64__(v316.u32[1], v271));
        v273 = v316.i32[0];
        if (v311)
        {
          v273 = v270;
          *&v274 = v269;
        }

        else
        {
          *&v274 = v272;
        }

        a2 = v641;
        v275 = vrev64_s32(vabs_s32(v274));
        v276 = COERCE_DOUBLE(vbsl_s8(vcltz_s32(v274), v275, vsub_s32(v266, v275)));
        v277 = COERCE_DOUBLE(vadd_s32(v274, v265));
        if (v273 < 0)
        {
          v277 = v276;
        }

        *&v641[v263 * *v644] = v277;
        v261 = *(this + 959);
        v264 = v631;
        goto LABEL_350;
      }

      v315 = v648;
      v309 = v306.i32[1];
      v314 = v280;
    }

    else
    {
      v315 = &v645;
      v314 = v279.i32[1];
      v313 = v280;
    }

    v315->i32[0] = v280;
    goto LABEL_409;
  }

  if (v34)
  {
    if (v34 != 1)
    {
      if (v34 != 2)
      {
        return;
      }

      v674 = 0;
      v672 = 0u;
      v673 = 0u;
      v670 = 0u;
      v671 = 0u;
      v668 = 0u;
      v669 = 0u;
      v666 = 0u;
      v667 = 0u;
      v664 = 0u;
      v665 = 0u;
      v662 = 0u;
      v663 = 0u;
      v660 = 0u;
      v661 = 0u;
      __p = 0u;
      v659 = 0u;
      v656 = 0u;
      v657 = 0u;
      v654 = 0u;
      *v655 = 0u;
      __b = 0u;
      *v653 = 0u;
      gcl::polyline::ACContext::init(&__b, v6);
      gcl::polyline::ACContext::init((&v659 + 8), v642);
      gcl::polyline::ACContext::init(&v667, v642);
      memset_pattern16(&v649, &unk_187FBF450, 6uLL);
      v36 = v642;
      if (v642)
      {
        if ((v642 & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      if (*(this + 959) < 1)
      {
        goto LABEL_805;
      }

      v524 = 0;
      v525 = *(this + 964);
      v526 = v649;
      v640 = this + 2752;
      v633 = 4 * v642;
      __nb = a2 + 4;
      while (1)
      {
        if (v525 && !a3[v524])
        {
          goto LABEL_690;
        }

        v528 = (*(this + 22) + 12 * v524);
        v529 = *v528;
        v530 = v528[1];
        v531 = v528[2];
        v532 = (*(this + 25) + 12 * v524);
        v533 = v532[2];
        if (v533 != -1 && ((v535 = *v532, v534 = v532[1], !v525) || a3[v529] && a3[v530] && a3[v531] && a3[v535] && a3[v534] && a3[v533]))
        {
          v536 = *(this + 683);
          v537 = *(this + 684);
          if (v536 >= 0x40000001)
          {
            v543 = *(this + 683);
          }

          else
          {
            v538 = *(this + 686);
            do
            {
              v537 *= 2;
              *(this + 686) = --v538;
              if (!v538)
              {
                v544 = *(this + 340);
                *(this + 340) = v544 + 1;
                v545 = *(this + 676);
                if (v544 + 1 >= v545)
                {
                  v546 = 65280;
                }

                else
                {
                  v546 = *(*(this + 339) + v544 + 1) << 8;
                }

                v547 = v544 + 2;
                *(this + 340) = v547;
                if (v547 < v545)
                {
                  v542 = *(*(this + 339) + v547);
                }

                else
                {
                  v542 = 255;
                }

                v537 |= v546 | v542;
                v538 = 16;
                *(this + 686) = 16;
              }

              v543 = 2 * v536;
              v139 = v536 >= 0x20000001;
              v536 *= 2;
            }

            while (!v139);
          }

          v548 = (HIWORD(v543) * v526) & 0xFFFF0000;
          v549 = v543 - v548;
          v550 = v537 >= v548;
          v551 = v537 >= v548;
          if (v537 < v548)
          {
            v552 = (v526 >> 7) & 0x1FE;
          }

          else
          {
            v552 = ((v526 >> 7) & 0x1FE) + 1;
          }

          v553 = *&v640[2 * v552];
          if (v537 < v548)
          {
            v554 = v548;
          }

          else
          {
            v554 = v549;
          }

          if (v537 < v548)
          {
            v555 = 0;
          }

          else
          {
            v555 = v548;
          }

          v556 = 2;
          if (v550)
          {
            v556 = 4;
          }

          v557 = v537 - v555;
          *(this + 683) = v554;
          *(this + 684) = v557;
          if (v554 >= 0x40000001)
          {
            v560 = v554;
          }

          else
          {
            v558 = *(this + 686);
            do
            {
              v557 *= 2;
              *(this + 686) = --v558;
              if (!v558)
              {
                v561 = *(this + 340);
                *(this + 340) = v561 + 1;
                v562 = *(this + 676);
                if (v561 + 1 >= v562)
                {
                  v563 = 65280;
                }

                else
                {
                  v563 = *(*(this + 339) + v561 + 1) << 8;
                }

                *(this + 340) = v561 + 2;
                if (v561 + 2 < v562)
                {
                  v559 = *(*(this + 339) + v561 + 2);
                }

                else
                {
                  v559 = 255;
                }

                v557 |= v563 | v559;
                v558 = 16;
                *(this + 686) = 16;
              }

              v560 = 2 * v554;
              v139 = v554 >= 0x20000001;
              v554 *= 2;
            }

            while (!v139);
          }

          v526 += v553;
          v564 = *(&v649 + v556);
          v565 = (HIWORD(v560) * v564) & 0xFFFF0000;
          v566 = (v564 >> 7) & 0x1FE;
          if (v557 >= v565)
          {
            ++v566;
          }

          *(&v649 + v556) = *&v640[2 * v566] + v564;
          if (v557 < v565)
          {
            v567 = (HIWORD(v560) * v564) & 0xFFFF0000;
          }

          else
          {
            v567 = v560 - v565;
          }

          if (v557 < v565)
          {
            v568 = 0;
          }

          else
          {
            v568 = (HIWORD(v560) * v564) & 0xFFFF0000;
          }

          *(this + 683) = v567;
          *(this + 684) = v557 - v568;
          v569 = v551 | (2 * (v557 >= v565));
          v570 = v535 * v642;
          v571 = v535 * v642;
          v572 = v534 * v36;
          v573 = v533 * v642;
          if (v569 <= 1 && v569 && v36)
          {
            if (v36 < 8)
            {
              v598 = v642;
              v599 = 0;
              v600 = &a2[v573];
              v601 = &a2[v572];
              v602 = &a2[v571];
              do
              {
                v604 = *v602++;
                v603 = v604;
                v605 = *v601++;
                v606 = v605 + v603;
                v607 = *v600++;
                *v599++ = v606 - v607;
                --v598;
              }

              while (v598);
            }

            else
            {
              v591 = 16;
              v592 = &__nb[v570];
              v593 = &__nb[v572];
              v594 = v642 & 0x7FFFFFF8;
              v595 = &__nb[v573];
              do
              {
                v596 = vsubq_s32(vaddq_s32(v593[-1], v592[-1]), v595[-1]);
                v597 = vsubq_s32(vaddq_s32(*v593, *v592), *v595);
                v592 += 2;
                *(v591 - 16) = v596;
                *v591 = v597;
                v591 += 32;
                v593 += 2;
                v595 += 2;
                v594 -= 8;
              }

              while (v594);
            }
          }
        }

        else
        {
          if (v531 == -1 || v525 && (!a3[v529] || !a3[v530] || !a3[v531]))
          {
            if (v530 == -1 || v525 && (!a3[v529] || !a3[v530]))
            {
              if (v529 == -1 || v525 && !a3[v529])
              {
                if (v36)
                {
                  bzero(0, v633);
                  v36 = v642;
                }

                v647.i8[0] = 3;
                gcl::tmesh::DecoderImpl::decodeResidual(this, 0, v36, &v647, 0, &a2[v524 * v36]);
                v36 = v642;
                goto LABEL_690;
              }

              if (v36)
              {
                memcpy(0, &a2[v529 * v36], v633);
                v36 = v642;
              }

              v527 = &__b;
            }

            else
            {
              v527 = &v659 + 1;
            }

            goto LABEL_689;
          }

          if (v36)
          {
            v539 = v529 * v36;
            v540 = v530 * v36;
            v541 = v531 * v642;
            if (v36 >= 8)
            {
              v574 = 16;
              v575 = &__nb[v539];
              v576 = &__nb[v540];
              v577 = v642 & 0x7FFFFFF8;
              v578 = &__nb[v541];
              do
              {
                v579 = vsubq_s32(vaddq_s32(v576[-1], v575[-1]), v578[-1]);
                v580 = vsubq_s32(vaddq_s32(*v576, *v575), *v578);
                v575 += 2;
                *(v574 - 16) = v579;
                *v574 = v580;
                v574 += 32;
                v576 += 2;
                v578 += 2;
                v577 -= 8;
              }

              while (v577);
            }

            else
            {
              v581 = v642;
              v582 = 0;
              v583 = &a2[v541];
              v584 = &a2[v540];
              v585 = &a2[v539];
              do
              {
                v587 = *v585++;
                v586 = v587;
                v588 = *v584++;
                v589 = v588 + v586;
                v590 = *v583++;
                *v582++ = v589 - v590;
                --v581;
              }

              while (v581);
            }
          }
        }

        v527 = &v667;
LABEL_689:
        gcl::tmesh::DecoderImpl::decodeResidual(this, 0, v36, this + 3864, v527, &a2[v524 * v36]);
        v36 = v642;
LABEL_690:
        if (++v524 >= *(this + 959))
        {
          goto LABEL_805;
        }
      }
    }

    v674 = 0;
    v672 = 0u;
    v673 = 0u;
    v670 = 0u;
    v671 = 0u;
    v668 = 0u;
    v669 = 0u;
    v666 = 0u;
    v667 = 0u;
    v664 = 0u;
    v665 = 0u;
    v662 = 0u;
    v663 = 0u;
    v660 = 0u;
    v661 = 0u;
    __p = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v654 = 0u;
    *v655 = 0u;
    __b = 0u;
    *v653 = 0u;
    gcl::polyline::ACContext::init(&__b, v6);
    gcl::polyline::ACContext::init((&v659 + 8), v642);
    gcl::polyline::ACContext::init(&v667, v642);
    if (v642)
    {
      if ((v642 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v608 = 0;
    if (*(this + 959) < 1)
    {
      goto LABEL_805;
    }

    v609 = 0;
    v610 = *(this + 964);
    while (1)
    {
      if (v610)
      {
        if (!a3[v609])
        {
          goto LABEL_786;
        }

        v611 = (*(this + 22) + 12 * v609);
        v612 = *v611;
        v613 = v611[1];
        v614 = v611[2];
        if (v614 == -1 || !a3[v612] || !a3[v613] || !a3[v614])
        {
          if (v613 == -1 || !a3[v612] || !a3[v613])
          {
            if (v612 == -1 || !a3[v612])
            {
LABEL_798:
              LOBYTE(v649) = 3;
              gcl::tmesh::DecoderImpl::decodeResidual(this, 0, v608, &v649, 0, &a2[v609 * v608]);
              v608 = v642;
              goto LABEL_786;
            }

            goto LABEL_804;
          }

LABEL_802:
          v616 = &v659 + 1;
          goto LABEL_785;
        }
      }

      else
      {
        v615 = (*(this + 22) + 12 * v609);
        if (v615[2] == -1)
        {
          if (v615[1] == -1)
          {
            if (*v615 == -1)
            {
              goto LABEL_798;
            }

LABEL_804:
            v616 = &__b;
            goto LABEL_785;
          }

          goto LABEL_802;
        }
      }

      v616 = &v667;
LABEL_785:
      gcl::tmesh::DecoderImpl::decodeResidual(this, 0, v642, this + 3864, v616, &a2[v609 * v608]);
      v608 = v642;
LABEL_786:
      if (++v609 >= *(this + 959))
      {
        goto LABEL_805;
      }
    }
  }

  v665 = 0u;
  v666 = 0u;
  v663 = 0u;
  v664 = 0u;
  v661 = 0u;
  v662 = 0u;
  v659 = 0u;
  v660 = 0u;
  v657 = 0u;
  __p = 0u;
  v656 = 0u;
  v654 = 0u;
  *v655 = 0u;
  __b = 0u;
  *v653 = 0u;
  gcl::polyline::ACContext::init(&__b, v6);
  gcl::polyline::ACContext::init((&v659 + 8), v6);
  v258 = v6;
  if (v6)
  {
    if ((v642 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  if (*(this + 959) >= 1)
  {
    v320 = 0;
    v321 = *(this + 964);
    v322 = 4 * v642;
    do
    {
      if (v321)
      {
        if (!a3[v320])
        {
          goto LABEL_461;
        }

        v324 = (*(this + 22) + 12 * v320);
        v325 = *v324;
        v326 = v324[1];
        if (v326 == -1 || !a3[v325] || !a3[v326])
        {
          if (v325 == -1 || !a3[v325])
          {
LABEL_469:
            if (v258)
            {
              bzero(0, v322);
              v258 = v642;
            }

            LOBYTE(v649) = 3;
            gcl::tmesh::DecoderImpl::decodeResidual(this, 0, v642, &v649, 0, &a2[v320 * v258]);
            v258 = v642;
            goto LABEL_461;
          }

          goto LABEL_477;
        }
      }

      else
      {
        v327 = (*(this + 22) + 12 * v320);
        v325 = *v327;
        v326 = v327[1];
        if (v326 == -1)
        {
          if (v325 == -1)
          {
            goto LABEL_469;
          }

LABEL_477:
          if (v642)
          {
            memcpy(0, &a2[v325 * v258], v322);
            v258 = v642;
          }

          v323 = &__b;
          goto LABEL_460;
        }
      }

      v323 = &v659 + 1;
      if (v642)
      {
        v328 = v325 * v642;
        v329 = v326 * v258;
        if (v258 >= 4)
        {
          v331 = &a2[v328];
          v332 = 0;
          v333 = v642 & 0x7FFFFFFC;
          v334 = &a2[v329];
          do
          {
            v335 = *v331;
            v331 += 4;
            v336 = v335;
            v337 = *v334;
            v334 += 4;
            v338 = vaddq_s32(v337, v336);
            *v332++ = vshrq_n_s32(vsraq_n_u32(v338, v338, 0x1FuLL), 1uLL);
            v333 -= 4;
          }

          while (v333);
          v330 = v642 & 0x7FFFFFFC;
          v323 = &v659 + 1;
          if (v330 == v642)
          {
            goto LABEL_460;
          }
        }

        else
        {
          v330 = 0;
        }

        v339 = v328;
        v340 = v329;
        v341 = v642 - v330;
        v342 = v330;
        v343 = (4 * v330);
        v344 = &a2[v330 + v340];
        v345 = &a2[v339 + v342];
        do
        {
          v347 = *v345++;
          v346 = v347;
          v348 = *v344++;
          *v343++ = (v348 + v346) / 2;
          --v341;
        }

        while (v341);
        v323 = &v659 + 1;
      }

LABEL_460:
      gcl::tmesh::DecoderImpl::decodeResidual(this, 0, v258, this + 3864, v323, &a2[v320 * v258]);
      v258 = v642;
LABEL_461:
      ++v320;
    }

    while (v320 < *(this + 959));
  }

LABEL_815:
  if (*(&v665 + 1))
  {
    operator delete(*(&v665 + 1));
  }

  if (v664)
  {
    operator delete(v664);
  }

  if (*(&v662 + 1))
  {
    operator delete(*(&v662 + 1));
  }

  if (v661)
  {
    operator delete(v661);
  }

  if (*(&v659 + 1))
  {
    operator delete(*(&v659 + 1));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*(&v656 + 1))
  {
    operator delete(*(&v656 + 1));
  }

  if (v655[0])
  {
    operator delete(v655[0]);
  }

  if (v653[1])
  {
    operator delete(v653[1]);
  }

  v319 = __b;
  if (__b)
  {
LABEL_834:
    operator delete(v319);
  }
}

void sub_1866E3770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  operator delete(v67);
  if (STACK[0x280])
  {
    operator delete(STACK[0x280]);
    v69 = STACK[0x268];
    if (STACK[0x268])
    {
LABEL_31:
      operator delete(v69);
      v70 = STACK[0x250];
      if (STACK[0x250])
      {
LABEL_32:
        operator delete(v70);
        v71 = STACK[0x238];
        if (STACK[0x238])
        {
LABEL_33:
          operator delete(v71);
          v72 = STACK[0x220];
          if (!STACK[0x220])
          {
LABEL_7:
            if (STACK[0x208])
            {
              operator delete(STACK[0x208]);
              v73 = a67;
              if (!a67)
              {
LABEL_9:
                v74 = a66;
                if (!a66)
                {
                  goto LABEL_10;
                }

                goto LABEL_22;
              }
            }

            else
            {
              v73 = a67;
              if (!a67)
              {
                goto LABEL_9;
              }
            }

            operator delete(v73);
            v74 = a66;
            if (!a66)
            {
LABEL_10:
              v75 = a65;
              if (!a65)
              {
                goto LABEL_11;
              }

              goto LABEL_23;
            }

LABEL_22:
            operator delete(v74);
            v75 = a65;
            if (!a65)
            {
LABEL_11:
              v76 = a62;
              if (!a62)
              {
                goto LABEL_12;
              }

              goto LABEL_24;
            }

LABEL_23:
            operator delete(v75);
            v76 = a62;
            if (!a62)
            {
LABEL_12:
              v77 = a59;
              if (!a59)
              {
                goto LABEL_13;
              }

              goto LABEL_25;
            }

LABEL_24:
            operator delete(v76);
            v77 = a59;
            if (!a59)
            {
LABEL_13:
              v78 = a56;
              if (!a56)
              {
                goto LABEL_14;
              }

              goto LABEL_26;
            }

LABEL_25:
            operator delete(v77);
            v78 = a56;
            if (!a56)
            {
LABEL_14:
              v79 = a53;
              if (!a53)
              {
                goto LABEL_15;
              }

              goto LABEL_27;
            }

LABEL_26:
            operator delete(v78);
            v79 = a53;
            if (!a53)
            {
LABEL_15:
              v80 = a50;
              if (!a50)
              {
                goto LABEL_17;
              }

              goto LABEL_16;
            }

LABEL_27:
            operator delete(v79);
            v80 = a50;
            if (!a50)
            {
LABEL_17:
              if (a47)
              {
                operator delete(a47);
              }

              _Unwind_Resume(a1);
            }

LABEL_16:
            operator delete(v80);
            goto LABEL_17;
          }

LABEL_6:
          operator delete(v72);
          goto LABEL_7;
        }

LABEL_5:
        v72 = STACK[0x220];
        if (!STACK[0x220])
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

LABEL_4:
      v71 = STACK[0x238];
      if (STACK[0x238])
      {
        goto LABEL_33;
      }

      goto LABEL_5;
    }
  }

  else
  {
    v69 = STACK[0x268];
    if (STACK[0x268])
    {
      goto LABEL_31;
    }
  }

  v70 = STACK[0x250];
  if (STACK[0x250])
  {
    goto LABEL_32;
  }

  goto LABEL_4;
}

void std::vector<gm::Matrix<int,3,1>,geo::allocator_adapter<gm::Matrix<int,3,1>,geo::codec::zone_mallocator>>::__append(char **result, unint64_t a2)
{
  v2 = result[1];
  v3 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 2) >= a2)
  {
    result[1] = &v2[12 * (12 * a2 / 0xC)];
  }

  else
  {
    v4 = *result;
    v5 = v2 - *result;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = a2;
      v11 = result;
      v12 = geo::codec::zone_mallocator::instance(result);
      v13 = pthread_rwlock_rdlock((v12 + 32));
      if (v13)
      {
        geo::read_write_lock::logFailure(v13, "read lock", v14);
      }

      v15 = malloc_type_zone_malloc(*v12, 12 * v9, 0x10000403E1C8BA9uLL);
      atomic_fetch_add((v12 + 24), 1u);
      v16 = pthread_rwlock_unlock((v12 + 32));
      if (v16)
      {
        geo::read_write_lock::logFailure(v16, "unlock", v17);
      }

      result = v11;
      v4 = *v11;
      v2 = v11[1];
      v5 = v2 - *v11;
      a2 = v10;
    }

    else
    {
      v15 = 0;
    }

    v18 = &v15[12 * v6];
    v19 = &v18[12 * (12 * a2 / 0xC)];
    v20 = &v18[-v5];
    if (v4 != v2)
    {
      v21 = v20;
      do
      {
        v22 = *v4;
        *(v21 + 2) = *(v4 + 2);
        *v21 = v22;
        v21 += 12;
        v4 += 12;
      }

      while (v4 != v2);
      v4 = *result;
    }

    *result = v20;
    result[1] = v19;
    result[2] = &v15[12 * v9];
    if (v4)
    {
      v23 = geo::codec::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<int,3,1>>(v23, v4);
    }
  }
}

void sub_1866E42F4(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
  }

  _Unwind_Resume(a1);
}

uint64_t __GetDataForKey_block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindIntParameter:"@tiles_key_a" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 60);
  v10 = *(*(a1 + 48) + 8);
  v33 = *(v10 + 40);
  v11 = [v8 bindIntParameter:"@tiles_key_b" toValue:v9 inStatement:a2 error:&v33];
  objc_storeStrong((v10 + 40), v33);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v14 = *(*(a1 + 48) + 8);
  v32 = *(v14 + 40);
  v15 = [v12 bindIntParameter:"@tiles_key_c" toValue:v13 inStatement:a2 error:&v32];
  objc_storeStrong((v14 + 40), v32);
  if (!v15)
  {
    return 0;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 68);
  v18 = *(*(a1 + 48) + 8);
  v31 = *(v18 + 40);
  v19 = [v16 bindIntParameter:"@tiles_key_d" toValue:v17 inStatement:a2 error:&v31];
  objc_storeStrong((v18 + 40), v31);
  if (!v19)
  {
    return 0;
  }

  v20 = sqlite3_step(a2);
  if (v20 == 100)
  {
    while (1)
    {
      [*(a1 + 32) intForColumn:0 inStatment:a2];
      [*(a1 + 32) int64ForColumn:1 inStatment:a2];
      v21 = [*(a1 + 32) blobForColumn:2 inStatment:a2];
      v22 = [*(a1 + 32) UUIDForColumn:3 inStatment:a2];
      v23 = [*(a1 + 32) stringForColumn:4 inStatment:a2];
      [*(a1 + 32) intForColumn:5 inStatment:a2];
      [*(a1 + 32) intForColumn:6 inStatment:a2];
      if (((*(*(a1 + 40) + 16))() & 1) == 0)
      {
        break;
      }

      v24 = sqlite3_step(a2);

      if (v24 != 100)
      {
        goto LABEL_10;
      }
    }

    v25 = 1;
    goto LABEL_14;
  }

  v24 = v20;
LABEL_10:
  if (v24 != 101)
  {
    v26 = *(a1 + 32);
    v27 = *(*(a1 + 48) + 8);
    v30 = *(v27 + 40);
    [v26 reportSQLiteErrorCode:v24 method:@"step" error:&v30];
    v28 = v30;
    v25 = 0;
    v21 = *(v27 + 40);
    *(v27 + 40) = v28;
LABEL_14:

    return v25;
  }

  return 1;
}

void std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,geo::codec::zone_mallocator>>::reserve(geo::codec::zone_mallocator *result, unint64_t a2)
{
  if (a2 > (*(result + 2) - *result) >> 3)
  {
    v3 = *(result + 1) - *result;
    v5 = geo::codec::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v5, a2);
    v7 = &v6[v3];
    v8 = &v6[8 * a2];
    v9 = *(result + 1) - *result;
    v10 = &v6[v3 - v9];
    v11 = memcpy(v10, *result, v9);
    v12 = *result;
    *result = v10;
    *(result + 1) = v7;
    *(result + 2) = v8;
    if (v12)
    {
      v13 = geo::codec::zone_mallocator::instance(v11);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v13, v12);
    }
  }
}

uint64_t geo::codec::_decodeMaterialModifiers(void *a1, uint64_t a2)
{
  v56 = 0;
  VarUint32 = geo::codec::chapterReadVarUint32(a1, &v56 + 1);
  if (!VarUint32)
  {
    v7 = 7829;
    goto LABEL_6;
  }

  v5 = HIDWORD(v56);
  if (HIDWORD(v56))
  {
    v6 = a1[6];
    if ((v6 + 1) > a1[7])
    {
      v7 = 7834;
      goto LABEL_6;
    }

    v9 = *(a1[5] + v6);
    a1[6] = v6 + 1;
    VarUint32 = geo::codec::chapterReadVarUint32(a1, &v56);
    if (!VarUint32)
    {
      v7 = 7835;
      goto LABEL_6;
    }

    v36 = v56;
    if (v56)
    {
      v37 = a1[7];
      v38 = a1[6] + 2;
      do
      {
        if (v38 - 1 > v37)
        {
          v7 = 7839;
          goto LABEL_6;
        }

        a1[6] = v38 - 1;
        if (v38 > v37)
        {
          v7 = 7840;
          goto LABEL_6;
        }

        a1[6] = v38;
        v38 += 2;
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *a2;
  v11 = *(*a2 + 2128);
  v12 = *(*a2 + 2120);
  v13 = v11 - v12;
  v14 = (v11 - v12) >> 4;
  v15 = v5 - v14;
  if (v5 <= v14)
  {
    if (v5 < v14)
    {
      v10[266] = v12 + 16 * v5;
    }
  }

  else
  {
    v16 = v10[267];
    if (v15 <= (v16 - v11) >> 4)
    {
      bzero(*(*a2 + 2128), 16 * v15);
      v10[266] = v11 + 16 * v15;
    }

    else
    {
      v17 = v16 - v12;
      v18 = v17 >> 3;
      if (v17 >> 3 <= v5)
      {
        v18 = v5;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v19 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      v20 = geo::codec::zone_mallocator::instance(VarUint32);
      v21 = pthread_rwlock_rdlock((v20 + 32));
      if (v21)
      {
        geo::read_write_lock::logFailure(v21, "read lock", v22);
      }

      v23 = malloc_type_zone_malloc(*v20, 16 * v19, 0x100004099076E91uLL);
      atomic_fetch_add((v20 + 24), 1u);
      v24 = pthread_rwlock_unlock((v20 + 32));
      if (v24)
      {
        geo::read_write_lock::logFailure(v24, "unlock", v25);
      }

      v26 = &v23[v13];
      v27 = 16 * v15;
      v28 = &v23[16 * v19];
      bzero(v26, v27);
      v29 = &v26[v27];
      v30 = v10[265];
      v31 = v10[266] - v30;
      v32 = &v26[-v31];
      v33 = memcpy(&v26[-v31], v30, v31);
      v34 = v10[265];
      v10[265] = v32;
      v10[266] = v29;
      v10[267] = v28;
      if (v34)
      {
        v35 = geo::codec::zone_mallocator::instance(v33);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsDaVinciMaterialModifier>(v35, v34);
      }
    }

    LODWORD(v5) = HIDWORD(v56);
  }

  result = 1;
  if (v5)
  {
    v39 = 0;
    while (1)
    {
      v40 = *(*a2 + 2120);
      v7 = 7875;
      if (v9 > 3)
      {
        if (v9 == 4)
        {
          v48 = a1[6];
          v41 = a1[7];
          v43 = v48 + 4;
          if (v48 + 4 > v41)
          {
            v7 = 7863;
            goto LABEL_6;
          }

          v44 = a1[5];
          v45 = *(v44 + v48);
        }

        else
        {
          if (v9 != 8)
          {
            goto LABEL_6;
          }

          v46 = a1[6];
          v41 = a1[7];
          v43 = v46 + 8;
          if (v46 + 8 > v41)
          {
            v7 = 7869;
            goto LABEL_6;
          }

          v44 = a1[5];
          v45 = *(v44 + v46);
        }
      }

      else if (v9 == 1)
      {
        v47 = a1[6];
        v41 = a1[7];
        v43 = v47 + 1;
        if (v47 + 1 > v41)
        {
          v7 = 7851;
LABEL_6:
          fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v7);
          return 0;
        }

        v44 = a1[5];
        v45 = *(v44 + v47);
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_6;
        }

        v42 = a1[6];
        v41 = a1[7];
        v43 = v42 + 2;
        if (v42 + 2 > v41)
        {
          v7 = 7857;
          goto LABEL_6;
        }

        v44 = a1[5];
        v45 = *(v44 + v42);
      }

      a1[6] = v43;
      *(v40 + v39) = v45;
      if (v45)
      {
        *(v40 + v39 + 12) = 1;
        if ((v45 & 4) == 0)
        {
LABEL_52:
          if ((v45 & 2) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_56;
        }
      }

      else if ((v45 & 4) == 0)
      {
        goto LABEL_52;
      }

      *(v40 + v39 + 13) = 1;
      if ((v45 & 2) == 0)
      {
        goto LABEL_36;
      }

LABEL_56:
      if (v43 + 1 > v41)
      {
        v7 = 7889;
        goto LABEL_6;
      }

      *(v40 + v39 + 8) = *(v44 + v43);
      v49 = a1[6];
      v50 = a1[7];
      a1[6] = v49 + 1;
      if (v49 + 2 > v50)
      {
        v7 = 7890;
        goto LABEL_6;
      }

      *(v40 + v39 + 9) = *(a1[5] + v49 + 1);
      v51 = a1[6];
      v52 = a1[7];
      a1[6] = v51 + 1;
      if (v51 + 2 > v52)
      {
        v7 = 7891;
        goto LABEL_6;
      }

      v53 = v40 + v39;
      *(v53 + 10) = *(a1[5] + v51 + 1);
      v54 = a1[6];
      v55 = a1[7];
      a1[6] = v54 + 1;
      if (v54 + 2 > v55)
      {
        v7 = 7892;
        goto LABEL_6;
      }

      *(v53 + 11) = *(a1[5] + v54 + 1);
      ++a1[6];
LABEL_36:
      v39 += 16;
      if (16 * v5 == v39)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_1866E4ABC(_Unwind_Exception *a1)
{
  v3 = pthread_rwlock_unlock((v1 + 32));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "unlock", v4);
  }

  _Unwind_Resume(a1);
}

void sub_1866FB8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, void *a49, void *__p, void *a51, void *a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, std::__shared_weak_count *a62)
{
  if (a49)
  {
    operator delete(a49);
    if (__p)
    {
LABEL_3:
      operator delete(__p);
      if (a51)
      {
LABEL_7:
        operator delete(a51);
        if (a52)
        {
LABEL_10:
          operator delete(a52);
          if (a53)
          {
LABEL_13:
            operator delete(a53);
            if (a57)
            {
LABEL_16:
              operator delete(a57);
              v64 = *(v62 - 184);
              if (v64)
              {
LABEL_25:
                v70 = *v64;
                *v64 = 0;
                if (v70)
                {
                  v71 = *v70;
                  *v70 = 0;
                  if (v71)
                  {
                    v72 = v71[13];
                    if (v72)
                    {
                      v71[14] = v72;
                      operator delete(v72);
                    }

                    v73 = v71[10];
                    if (v73)
                    {
                      v71[11] = v73;
                      operator delete(v73);
                    }

                    MEMORY[0x18CFD1E40](v71, 0x1070C40ADA6D0DELL);
                  }

                  MEMORY[0x18CFD1E40](v70, 0x20C4093837F09);
                }

                MEMORY[0x18CFD1E40](v64, 0x20C4093837F09);
                v65 = *(v62 - 208);
                if (v65)
                {
LABEL_34:
                  operator delete(v65);
                  v66 = STACK[0x1228];
                  if (STACK[0x1228])
                  {
LABEL_35:
                    v74 = *v66;
                    *v66 = 0;
                    if (v74)
                    {
                      v75 = *v74;
                      *v74 = 0;
                      if (v75)
                      {
                        v76 = v75[13];
                        if (v76)
                        {
                          v75[14] = v76;
                          operator delete(v76);
                        }

                        v77 = v75[10];
                        if (v77)
                        {
                          v75[11] = v77;
                          operator delete(v77);
                        }

                        MEMORY[0x18CFD1E40](v75, 0x1070C40ADA6D0DELL);
                      }

                      MEMORY[0x18CFD1E40](v74, 0x20C4093837F09);
                    }

                    MEMORY[0x18CFD1E40](v66, 0x20C4093837F09);
                    v67 = STACK[0x1210];
                    if (STACK[0x1210])
                    {
LABEL_44:
                      operator delete(v67);
                      v68 = STACK[0x228];
                      if (STACK[0x228])
                      {
LABEL_45:
                        v78 = *v68;
                        *v68 = 0;
                        if (v78)
                        {
                          v79 = *v78;
                          *v78 = 0;
                          if (v79)
                          {
                            v80 = v79[13];
                            if (v80)
                            {
                              v79[14] = v80;
                              operator delete(v80);
                            }

                            v81 = v79[10];
                            if (v81)
                            {
                              v79[11] = v81;
                              operator delete(v81);
                            }

                            MEMORY[0x18CFD1E40](v79, 0x1070C40ADA6D0DELL);
                          }

                          MEMORY[0x18CFD1E40](v78, 0x20C4093837F09);
                        }

                        MEMORY[0x18CFD1E40](v68, 0x20C4093837F09);
                        v69 = STACK[0x210];
                        if (STACK[0x210])
                        {
                          goto LABEL_54;
                        }

                        goto LABEL_55;
                      }

LABEL_23:
                      v69 = STACK[0x210];
                      if (STACK[0x210])
                      {
LABEL_54:
                        operator delete(v69);
                      }

LABEL_55:
                      if (a62)
                      {
                        if (!atomic_fetch_add(&a62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (a62->__on_zero_shared)(a62);
                          std::__shared_weak_count::__release_weak(a62);
                          _Unwind_Resume(a1);
                        }
                      }

                      _Unwind_Resume(a1);
                    }

LABEL_22:
                    v68 = STACK[0x228];
                    if (STACK[0x228])
                    {
                      goto LABEL_45;
                    }

                    goto LABEL_23;
                  }

LABEL_21:
                  v67 = STACK[0x1210];
                  if (STACK[0x1210])
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_22;
                }

LABEL_20:
                v66 = STACK[0x1228];
                if (STACK[0x1228])
                {
                  goto LABEL_35;
                }

                goto LABEL_21;
              }

LABEL_19:
              v65 = *(v62 - 208);
              if (v65)
              {
                goto LABEL_34;
              }

              goto LABEL_20;
            }

LABEL_18:
            v64 = *(v62 - 184);
            if (v64)
            {
              goto LABEL_25;
            }

            goto LABEL_19;
          }

LABEL_15:
          if (a57)
          {
            goto LABEL_16;
          }

          goto LABEL_18;
        }

LABEL_12:
        if (a53)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }

LABEL_9:
      if (a52)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else if (__p)
  {
    goto LABEL_3;
  }

  if (a51)
  {
    goto LABEL_7;
  }

  goto LABEL_9;
}

uint64_t geo::codec::_postDecoding(uint64_t a1)
{
  v630 = *MEMORY[0x1E69E9840];
  v389 = a1;
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  if (v2 != v3)
  {
    v4 = 0xCF3CF3CF3CF3CF3DLL * ((v2 - v3) >> 3);
    if (v4 <= 1)
    {
      v5 = 0;
LABEL_7:
      v8 = v4 - v5;
      v9 = (v3 + 168 * v5 + 144);
      do
      {
        *(v9 - 3) = 0;
        *v9 = 0;
        v9 += 84;
        --v8;
      }

      while (v8);
      goto LABEL_9;
    }

    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v6 = (v3 + 312);
    v7 = v4 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v6 - 45) = 0;
      *(v6 - 3) = 0;
      *(v6 - 84) = 0;
      *v6 = 0;
      v6 += 168;
      v7 -= 2;
    }

    while (v7);
    if (v4 != v5)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  v10 = *(v1 + 728);
  if (v10)
  {
    v11 = 0;
    v12 = *(v1 + 736);
    do
    {
      v13 = v3 + 168 * *(*(v12 + 8 * v11) + 4);
      v14 = *(v13 + 144);
      *(v13 + 132) = v11 - v14;
      *(v13 + 144) = v14 + 1;
      ++v11;
    }

    while (v10 != v11);
  }

  v15 = *(v1 + 5) & 0x3F;
  if (v15 < 7 || *(v1 + 704) || v2 == v3)
  {
    goto LABEL_433;
  }

  v426 = 0u;
  v427 = 0;
  v428 = 0;
  v429 = 0u;
  v430 = 0;
  v431 = 0u;
  v432 = 0;
  v433 = 0u;
  v434 = 0;
  v435 = 0u;
  v436 = 0u;
  v437 = 0;
  v438 = 0u;
  v439 = 0;
  v441 = 0;
  v440 = 0u;
  v443 = 0;
  v442 = 0u;
  v445 = 0;
  v444 = 0u;
  v447 = 0;
  v446 = 0u;
  v449 = 0;
  v448 = 0u;
  v451 = 0;
  v450 = 0u;
  v453 = 0;
  v452 = 0u;
  v455 = 0;
  v454 = 0u;
  v457 = 0;
  v456 = 0u;
  v459 = 0;
  v458 = 0u;
  v461 = 0;
  v460 = 0u;
  v463 = 0;
  v462 = 0u;
  v465 = 0;
  v464 = 0u;
  v467 = 0;
  v466 = 0u;
  v469 = 0;
  v468 = 0u;
  v471 = 0;
  v470 = 0u;
  v473 = 0;
  v472 = 0u;
  v475 = 0;
  v474 = 0u;
  v477 = 0;
  v476 = 0u;
  v479 = 0;
  v478 = 0u;
  v481 = 0;
  v480 = 0u;
  v483 = 0;
  v482 = 0u;
  v485 = 0;
  v484 = 0u;
  v487 = 0;
  v486 = 0u;
  v489 = 0;
  v488 = 0u;
  v491 = 0;
  v490 = 0u;
  v493 = 0;
  v492 = 0u;
  v495 = 0;
  v494 = 0u;
  v497 = 0;
  v496 = 0u;
  v499 = 0;
  v498 = 0u;
  v501 = 0;
  v500 = 0u;
  v503 = 0;
  v502 = 0u;
  v505 = 0;
  v504 = 0u;
  v507 = 0;
  v506 = 0u;
  v509 = 0;
  v508 = 0u;
  v511 = 0;
  v510 = 0u;
  v513 = 0;
  v512 = 0u;
  v515 = 0;
  v514 = 0u;
  v517 = 0;
  v516 = 0u;
  v519 = 0;
  v518 = 0u;
  v521 = 0;
  v520 = 0u;
  v523 = 0;
  v522 = 0u;
  v525 = 0;
  v524 = 0u;
  v527 = 0;
  v526 = 0u;
  v529 = 0;
  v528 = 0u;
  v531 = 0;
  v530 = 0u;
  v533 = 0;
  v532 = 0u;
  v535 = 0;
  v534 = 0u;
  v537 = 0;
  v536 = 0u;
  v539 = 0;
  v538 = 0u;
  v541 = 0;
  v540 = 0u;
  v543 = 0;
  v542 = 0u;
  v545 = 0;
  v544 = 0u;
  v547 = 0;
  v546 = 0u;
  v549 = 0;
  v548 = 0u;
  v551 = 0;
  v550 = 0u;
  v553 = 0;
  v552 = 0u;
  v555 = 0;
  v554 = 0u;
  v557 = 0;
  v556 = 0u;
  v559 = 0;
  v558 = 0u;
  v561 = 0;
  v560 = 0u;
  v563 = 0;
  v562 = 0u;
  v565 = 0;
  v564 = 0u;
  v567 = 0;
  v566 = 0u;
  v569 = 0;
  v568 = 0u;
  v571 = 0;
  v570 = 0u;
  v573 = 0;
  v572 = 0u;
  v575 = 0;
  v574 = 0u;
  v577 = 0;
  v576 = 0u;
  v579 = 0;
  v578 = 0u;
  v581 = 0;
  v580 = 0u;
  v583 = 0;
  v582 = 0u;
  v585 = 0;
  v584 = 0u;
  v587 = 0;
  v586 = 0u;
  v589 = 0;
  v588 = 0u;
  v591 = 0;
  v590 = 0u;
  v593 = 0;
  v592 = 0u;
  v595 = 0;
  v594 = 0u;
  v597 = 0;
  v596 = 0u;
  v599 = 0;
  v598 = 0u;
  v601 = 0;
  v600 = 0u;
  v603 = 0;
  v602 = 0u;
  v605 = 0;
  v604 = 0u;
  v607 = 0;
  v606 = 0u;
  v609 = 0;
  v608 = 0u;
  v611 = 0;
  v610 = 0u;
  v613 = 0;
  v612 = 0u;
  v615 = 0;
  v614 = 0u;
  v617 = 0;
  v616 = 0u;
  v619 = 0;
  v618 = 0u;
  v621 = 0;
  v620 = 0u;
  v623 = 0;
  v622 = 0u;
  v625 = 0;
  v624 = 0u;
  v395 = v15;
  if (v15 >= 0xA)
  {
    if (v15 == 10)
    {
      v16 = 0;
      v17 = 1;
    }

    else
    {
      v16 = v15 > 0xC;
      if (v15 <= 0xC)
      {
        v17 = 3;
      }

      else
      {
        v17 = 7;
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = *a1;
  v19 = *(*a1 + 32);
  v20 = *(*a1 + 40);
  if (v20 == v19)
  {
    goto LABEL_36;
  }

  v21 = 0xCF3CF3CF3CF3CF3DLL * ((v20 - v19) >> 3);
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 0xCF3CF3CF3CF3CF3DLL * ((v20 - v19) >> 3);
  }

  if (v21 <= 1)
  {
    v23 = 0;
    v24 = 0;
LABEL_31:
    v29 = v22 - v24;
    v30 = (v19 + 168 * v24 + 96);
    do
    {
      v31 = *v30;
      v30 += 42;
      v23 = (v23 + v31);
      --v29;
    }

    while (v29);
    goto LABEL_33;
  }

  v25 = 0;
  v26 = 0;
  v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
  v27 = (v19 + 264);
  v28 = v22 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    a1 = *v27;
    v25 += *(v27 - 42);
    v26 += a1;
    v27 += 84;
    v28 -= 2;
  }

  while (v28);
  v23 = (v26 + v25);
  if (v21 != v24)
  {
    goto LABEL_31;
  }

LABEL_33:
  if (!v23)
  {
LABEL_36:
    v410 = 0;
    v34 = 0;
    v388 = 0;
    goto LABEL_37;
  }

  if (v23 > 0x555555555555555)
  {
    std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
  }

  v32 = std::__allocate_at_least[abi:ne200100]<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::FeatureInfo,geo::codec::zone_mallocator>>(v23);
  v34 = &v32[48 * v33];
  v35 = 48 * ((48 * v23 - 48) / 0x30uLL) + 48;
  bzero(v32, v35);
  v388 = v32;
  v410 = &v32[v35];
  v18 = *v389;
  v19 = *(*v389 + 32);
  v20 = *(*v389 + 40);
LABEL_37:
  v402 = v18[365];
  v403 = v18[364];
  if (v20 == v19)
  {
    v153 = 0;
    v147 = v410;
    if (!(0xAAAAAAAAAAAAAAABLL * ((v410 - v388) >> 4)))
    {
      goto LABEL_169;
    }

    goto LABEL_160;
  }

  v387 = 0;
  v36 = 0;
  v381 = v34;
  v382 = *(v18[100] + 32);
  v385 = !v16;
  v37 = vdup_n_s32(0xBB03126F);
  v38 = vdup_n_s32(0x3B03126Fu);
  __asm { FMOV            V10.2S, #10.0 }

  v383 = v18;
  v43 = v18;
  v44 = v410;
  v384 = v17;
  do
  {
    v45 = (v19 + 168 * v36);
    v46 = HIBYTE(v45[6].__vftable);
    if (v46 <= v17)
    {
      goto LABEL_500;
    }

    _ZF = v46 == 8;
    v47 = v385;
    if (!_ZF)
    {
      v47 = 1;
    }

    if ((v47 & 1) == 0 && (BYTE1(v45[3].__vftable) || LOBYTE(v45[3].__vftable)))
    {
LABEL_500:
      v48 = LODWORD(v45[4].__vftable);
      if (v48)
      {
        v49 = 0;
        while (1)
        {
          if (v49 >= v48)
          {
            goto LABEL_51;
          }

          v408 = v49;
          a1 = geo::codec::vertexPoolForFeature(v45);
          if (a1)
          {
            break;
          }

LABEL_50:
          v49 = v408;
LABEL_51:
          ++v49;
          v48 = LODWORD(v45[4].__vftable);
          if (v49 >= v48)
          {
            v43 = *v389;
            goto LABEL_40;
          }
        }

        v50 = *(a1 + 32);
        v49 = v408;
        if (!v50)
        {
          goto LABEL_51;
        }

        v51 = v408 + HIDWORD(v45[3].__shared_weak_owners_);
        if (*(a1 + 40) <= v51)
        {
          goto LABEL_51;
        }

        v52 = *(v50 + 16 * v51);
        if (v52 >= *(a1 + 16) || (v53 = *(v50 + 16 * v51 + 8), v406 = v53 - 2, v53 < 2))
        {
          v44 = v410;
          goto LABEL_51;
        }

        v386 = v36;
        if (v403 == v402)
        {
          log = 0;
        }

        else
        {
          log = (v383[364] + 16 * *(v382 + 16 * v408 + 16 * HIDWORD(v45[3].__shared_weak_owners_)));
        }

        v54 = v45;
        v55 = *(a1 + 8);
        v56 = (v388 + 48 * v387);
        __src = v54;
        *v56 = v54;
        *(v56 + 2) = v408;
        v57 = v53 - 1;
        v58 = v56[2];
        v59 = v56[3];
        v60 = (v59 - v58);
        v61 = 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 5);
        v400 = v57;
        v62 = v57 - v61;
        if (v57 <= v61)
        {
          v79 = v387;
          if (v57 < v61)
          {
            v56[3] = &v58[4 * v57];
          }

          goto LABEL_85;
        }

        v63 = v56[4];
        v64 = v388 + 48 * v387;
        if (0xAAAAAAAAAAAAAAABLL * ((v63 - v59) >> 5) >= v62)
        {
          v85 = 96 * ((96 * v62 - 96) / 0x60) + 96;
          bzero(v59, v85);
          *(v64 + 3) = v59 + v85;
          v79 = v387;
        }

        else
        {
          if (v57 > 0x2AAAAAAAAAAAAAALL)
          {
            std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
          }

          v65 = 0xAAAAAAAAAAAAAAABLL * ((v63 - v58) >> 5);
          v66 = 2 * v65;
          if (2 * v65 <= v57)
          {
            v66 = v57;
          }

          if (v65 >= 0x155555555555555)
          {
            v67 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v67 = v66;
          }

          v68 = geo::codec::zone_mallocator::instance(a1);
          v69 = pthread_rwlock_rdlock((v68 + 32));
          if (v69)
          {
            geo::read_write_lock::logFailure(v69, "read lock", v70);
          }

          v71 = malloc_type_zone_malloc(*v68, 96 * v67, 0x102004029C71177uLL);
          atomic_fetch_add((v68 + 24), 1u);
          v72 = pthread_rwlock_unlock((v68 + 32));
          if (v72)
          {
            geo::read_write_lock::logFailure(v72, "unlock", v73);
          }

          v74 = &v60[v71];
          v75 = 96 * ((96 * v62 - 96) / 0x60) + 96;
          bzero(&v60[v71], v75);
          a1 = *(v64 + 2);
          v76 = *(v64 + 3);
          v77 = &v60[v71 + a1 - v76];
          if (v76 == a1)
          {
            v84 = (v388 + 48 * v387);
            v79 = v387;
          }

          else
          {
            v78 = &v74[a1 - v76];
            v79 = v387;
            do
            {
              v80 = *(a1 + 16);
              *v78 = *a1;
              *(v78 + 1) = v80;
              v81 = *(a1 + 32);
              v82 = *(a1 + 48);
              v83 = *(a1 + 80);
              *(v78 + 4) = *(a1 + 64);
              *(v78 + 5) = v83;
              *(v78 + 2) = v81;
              *(v78 + 3) = v82;
              a1 += 96;
              v78 += 96;
            }

            while (a1 != v76);
            v84 = (v388 + 48 * v387);
            a1 = *(v64 + 2);
          }

          v84[2] = v77;
          v84[3] = &v74[v75];
          v84[4] = (v71 + 96 * v67);
          v56 = v84;
          if (!a1)
          {
            goto LABEL_85;
          }

          std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](a1);
        }

        v56 = (v388 + 48 * v387);
LABEL_85:
        v86 = 0;
        v87 = 0;
        v387 = v79 + 1;
        v88 = 0.0;
        v396 = v56;
        v398 = v55 + 8 * v52;
        v44 = v410;
        do
        {
          v89 = &v56[2][4 * v86];
          *v89 = __src;
          *(v89 + 56) = v408;
          *(v89 + 60) = v87;
          v90 = (v87 + 1);
          v91 = *(v398 + 8 * v90);
          v92 = *(v398 + 8 * v86);
          v93 = vmaxnm_f32(v91, v92);
          v94 = vminnm_f32(v91, v92);
          v95 = vcgt_f32(v94, v93);
          v96 = v95.i8[0] | v95.i8[4];
          v97 = vadd_f32(v94, v37);
          v98 = vadd_f32(v93, v38);
          if (v96)
          {
            v99 = -1;
          }

          else
          {
            v99 = 0;
          }

          v100 = vdup_n_s32(v99);
          *&v101 = vbsl_s8(v100, v94, v97);
          *(&v101 + 1) = vbsl_s8(v100, v93, v98);
          *(v89 + 8) = v101;
          v102 = vmin_s32(vmax_s32(vcvt_s32_f32(vmul_f32(*&v101, _D10)), 0), 0x900000009);
          v103 = vmax_s32(vcvt_s32_f32(vmul_f32(*(&v101 + 8), _D10)), 0);
          v104 = vmin_s32(v103, 0x900000009);
          *(v89 + 24) = v102;
          *(v89 + 32) = v104;
          v105 = *(v398 + 8 * v86);
          v106 = vsub_f32(*(v398 + 8 * v90), v105);
          *(v89 + 40) = v105;
          *(v89 + 48) = v106;
          v107 = sqrtf(vaddv_f32(vmul_f32(v106, v106)));
          *(v89 + 76) = v107;
          *(v89 + 80) = v88;
          if (v403 != v402)
          {
            *(v89 + 84) = fmaxf(fabsf(*(&log[2 * v86].isa + 1)), fabsf(*(&log[2 * v86 + 1].isa + 1)));
            *(v89 + 88) = fmaxf(fabsf(*(&log[2 * v90].isa + 1)), fabsf(*(&log[2 * v90 + 1].isa + 1)));
          }

          *(v89 + 64) = 0.002 / v107;
          if (v87)
          {
            v108 = 0.0;
          }

          else
          {
            v108 = -(0.002 / v107);
          }

          if (v406 == v86)
          {
            v109 = (0.002 / v107) + 1.0;
          }

          else
          {
            v109 = 1.0;
          }

          *(v89 + 68) = v108;
          *(v89 + 72) = v109;
          v110 = vcgt_u32(v102, v103);
          if (((v110.i32[0] | v110.i32[1]) & 1) == 0)
          {
            v111 = v102.i32[1];
            v112 = v104.i32[0];
            v113 = v104.i32[1];
            v114 = &v426 + 32 * (v102.i32[0] + 10 * v102.i32[1]) + 8;
            v412 = v90;
            do
            {
              v115 = *(v89 + 24);
              if (v115 <= v112)
              {
                __dst = v111;
                v116 = v115 - 1;
                v418 = v114;
                do
                {
                  v119 = *v114;
                  v118 = *(v114 + 1);
                  if (*v114 < v118)
                  {
                    *v119 = v89;
                    v117 = v119 + 1;
                  }

                  else
                  {
                    v120 = *(v114 - 1);
                    v121 = v119 - v120;
                    v122 = (v119 - v120) >> 3;
                    v123 = v122 + 1;
                    if ((v122 + 1) >> 61)
                    {
                      std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
                    }

                    v124 = v118 - v120;
                    if (v124 >> 2 > v123)
                    {
                      v123 = v124 >> 2;
                    }

                    if (v124 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v125 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v125 = v123;
                    }

                    if (v125)
                    {
                      v126 = geo::codec::zone_mallocator::instance(a1);
                      v127 = pthread_rwlock_rdlock((v126 + 32));
                      if (v127)
                      {
                        {
                          geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
                        }

                        v128 = geo::read_write_lock::logFailure(int,char const*)::log;
                        if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
                        {
                          buf = 136315394;
                          v627 = "read lock";
                          v628 = 1024;
                          v629 = v127;
                          _os_log_fault_impl(&dword_18660C000, v128, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
                        }
                      }

                      v129 = malloc_type_zone_malloc(*v126, 8 * v125, 0x2004093837F09uLL);
                      atomic_fetch_add((v126 + 24), 1u);
                      v130 = pthread_rwlock_unlock((v126 + 32));
                      if (v130)
                      {
                        {
                          geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
                        }

                        v131 = geo::read_write_lock::logFailure(int,char const*)::log;
                        if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
                        {
                          buf = 136315394;
                          v627 = "unlock";
                          v628 = 1024;
                          v629 = v130;
                          _os_log_fault_impl(&dword_18660C000, v131, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
                        }
                      }

                      v120 = *(v114 - 1);
                      v121 = *v114 - v120;
                      v132 = v121 >> 3;
                    }

                    else
                    {
                      v129 = 0;
                      v132 = (v119 - v120) >> 3;
                    }

                    v133 = &v129[8 * v122];
                    v134 = &v133[-v132];
                    *v133 = v89;
                    v117 = v133 + 1;
                    a1 = memcpy(v134, v120, v121);
                    v135 = *(v114 - 1);
                    *(v114 - 1) = v134;
                    *v114 = v117;
                    *(v114 + 1) = &v129[8 * v125];
                    if (v135)
                    {
                      v136 = geo::codec::zone_mallocator::instance(a1);
                      v137 = pthread_rwlock_rdlock((v136 + 32));
                      if (v137)
                      {
                        {
                          geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
                        }

                        v138 = geo::read_write_lock::logFailure(int,char const*)::log;
                        if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
                        {
                          buf = 136315394;
                          v627 = "read lock";
                          v628 = 1024;
                          v629 = v137;
                          _os_log_fault_impl(&dword_18660C000, v138, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
                        }
                      }

                      atomic_fetch_add((v136 + 24), 0xFFFFFFFF);
                      malloc_zone_free(*v136, v135);
                      a1 = pthread_rwlock_unlock((v136 + 32));
                      if (a1)
                      {
                        v139 = a1;
                        {
                          geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
                        }

                        v140 = geo::read_write_lock::logFailure(int,char const*)::log;
                        a1 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
                        if (a1)
                        {
                          buf = 136315394;
                          v627 = "unlock";
                          v628 = 1024;
                          v629 = v139;
                          _os_log_fault_impl(&dword_18660C000, v140, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
                        }
                      }
                    }
                  }

                  *v114 = v117;
                  v114 += 32;
                  v112 = *(v89 + 32);
                  ++v116;
                }

                while (v116 < v112);
                v113 = *(v89 + 36);
                v44 = v410;
                v90 = v412;
                v111 = __dst;
                v114 = v418;
              }

              v114 += 320;
              v229 = v111++ < v113;
            }

            while (v229);
            v107 = *(v89 + 76);
          }

          v88 = v107 + v88;
          v86 = v90;
          v87 = v90;
          v56 = v396;
        }

        while (v400 > v90);
        v17 = v384;
        v36 = v386;
        v45 = __src;
        goto LABEL_50;
      }
    }

LABEL_40:
    ++v36;
    v19 = v43[4];
  }

  while (v36 < 0xCF3CF3CF3CF3CF3DLL * ((v43[5] - v19) >> 3));
  v141 = v44 - v388;
  v142 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v388) >> 4);
  v143 = v387 - v142;
  if (v387 > v142)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v381 - v44) >> 4) >= v143)
    {
      bzero(v44, 48 * ((48 * v143 - 48) / 0x30) + 48);
      v147 = v44 + 48 * ((48 * v143 - 48) / 0x30) + 48;
    }

    else
    {
      if (v387 > 0x555555555555555)
      {
        std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
      }

      v144 = 0x5555555555555556 * ((v381 - v388) >> 4);
      if (v144 <= v387)
      {
        v144 = v387;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v381 - v388) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v145 = 0x555555555555555;
      }

      else
      {
        v145 = v144;
      }

      v146 = std::__allocate_at_least[abi:ne200100]<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::FeatureInfo,geo::codec::zone_mallocator>>(v145);
      bzero(v146 + v141, 48 * ((48 * v143 - 48) / 0x30) + 48);
      v147 = v146 + 48 * ((48 * v143 - 48) / 0x30) + v141 + 48;
      if (v388 != v410)
      {
        v148 = v388;
        v149 = v146;
        do
        {
          v150 = *v148;
          *(v149 + 2) = *(v148 + 2);
          *v149 = v150;
          *(v149 + 3) = 0;
          *(v149 + 4) = 0;
          *(v149 + 2) = 0;
          *(v149 + 40) = *(v148 + 40);
          *(v149 + 1) = *(v148 + 1);
          *(v149 + 4) = *(v148 + 4);
          *(v148 + 2) = 0;
          *(v148 + 3) = 0;
          *(v148 + 4) = 0;
          v148 = (v148 + 48);
          v149 = (v149 + 48);
        }

        while (v148 != v410);
        v151 = v388;
        do
        {
          v152 = *(v151 + 2);
          if (v152)
          {
            *(v151 + 3) = v152;
            std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](v152);
          }

          v151 = (v151 + 48);
        }

        while (v151 != v410);
      }

      a1 = v388;
      if (v388)
      {
        std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::FeatureInfo,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](v388);
      }

      v388 = v146;
    }

    goto LABEL_169;
  }

  v147 = v44;
  v153 = v387;
  if (v142 <= v387)
  {
    goto LABEL_169;
  }

LABEL_160:
  for (i = v388 + 48 * v153; v147 != i; v147 -= 48)
  {
    a1 = *(v147 - 32);
    if (a1)
    {
      *(v147 - 24) = a1;
      std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](a1);
    }
  }

  v147 = i;
LABEL_169:
  v411 = v147;
  if (v388 == v147)
  {
    v397 = 0;
    v299 = 0;
    __srca = 0;
    __dsta = 0;
    goto LABEL_403;
  }

  v397 = 0;
  v399 = 0;
  v401 = 0;
  __dsta = 0;
  v155 = 0;
  v390 = 0;
  __srca = 0;
  v156 = v388;
  while (2)
  {
    v157 = *(v156 + 2);
    if (*(v156 + 3) == v157)
    {
      goto LABEL_173;
    }

    v407 = v156;
    v158 = 0;
    v409 = 0;
    loga = __srca;
    do
    {
      v160 = (v157 + 96 * v158);
      v161 = *(v160 + 7);
      v162 = *(v160 + 9);
      v419 = v160;
      if (v161 <= v162)
      {
        v163 = *(v160 + 6);
        v164 = *(v160 + 8);
        if (v163 <= v164)
        {
          v176 = &v426 + 20 * v161 + 2 * v163;
          v165 = __dsta;
          while (1)
          {
            v415 = v161;
            v177 = *(v160 + 6);
            v413 = v176;
            if (v177 <= v164)
            {
              break;
            }

LABEL_195:
            v176 = v413 + 20;
            v161 = v415 + 1;
            if (v415 >= v162)
            {
              goto LABEL_181;
            }
          }

          while (1)
          {
            v179 = *v176;
            v178 = *(v176 + 1);
            v180 = v178 - *v176;
            v181 = v180 >> 3;
            if (v180 >> 3 >= 1)
            {
              break;
            }

LABEL_199:
            v176 += 2;
            v164 = *(v160 + 8);
            v229 = v177++ < v164;
            if (!v229)
            {
              v162 = *(v160 + 9);
              goto LABEL_195;
            }
          }

          if (v155 - v165 >= v180)
          {
            if (v179 != v178)
            {
              a1 = memmove(v165, *v176, v178 - *v176);
            }

            v165 = (v165 + v180);
            goto LABEL_199;
          }

          v182 = v165 - __dsta;
          v183 = v165 - __dsta;
          v184 = v181 + v183;
          if ((v181 + v183) >> 61)
          {
            std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
          }

          if ((v155 - __dsta) >> 2 > v184)
          {
            v184 = (v155 - __dsta) >> 2;
          }

          if ((v155 - __dsta) >= 0x7FFFFFFFFFFFFFF8)
          {
            v185 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v185 = v184;
          }

          if (v185)
          {
            v186 = geo::codec::zone_mallocator::instance(a1);
            v187 = pthread_rwlock_rdlock((v186 + 32));
            if (v187)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v188 = geo::read_write_lock::logFailure(int,char const*)::log;
              if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
              {
                buf = 136315394;
                v627 = "read lock";
                v628 = 1024;
                v629 = v187;
                _os_log_fault_impl(&dword_18660C000, v188, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
              }
            }

            v189 = malloc_type_zone_malloc(*v186, 8 * v185, 0x2004093837F09uLL);
            atomic_fetch_add((v186 + 24), 1u);
            v190 = pthread_rwlock_unlock((v186 + 32));
            if (v190)
            {
              v191 = v190;
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v192 = geo::read_write_lock::logFailure(int,char const*)::log;
              if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
              {
                buf = 136315394;
                v627 = "unlock";
                v628 = 1024;
                v629 = v191;
                _os_log_fault_impl(&dword_18660C000, v192, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
              }
            }
          }

          else
          {
            v189 = 0;
          }

          v193 = &v189[8 * v183];
          v165 = (v193 + v180);
          if ((v180 - 8) >= 0x18)
          {
            v160 = v419;
            if ((&v189[v182] - v179) >= 0x20)
            {
              v194 = ((v180 - 8) >> 3) + 1;
              v195 = v194 & 0x3FFFFFFFFFFFFFFCLL;
              v196 = &v193[v195];
              v197 = (v179 + 2);
              v198 = v193 + 2;
              v199 = v194 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v200 = *v197;
                *(v198 - 1) = *(v197 - 1);
                *v198 = v200;
                v197 += 2;
                v198 += 2;
                v199 -= 4;
              }

              while (v199);
              if (v194 == (v194 & 0x3FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_230;
              }

              v179 = (v179 + v195 * 8);
              v193 = v196;
            }
          }

          else
          {
            v160 = v419;
          }

          do
          {
            v201 = *v179++;
            *v193++ = v201;
          }

          while (v193 != v165);
LABEL_230:
          v155 = &v189[8 * v185];
          a1 = memcpy(v189, __dsta, v182);
          if (!__dsta)
          {
            goto LABEL_198;
          }

          v202 = geo::codec::zone_mallocator::instance(a1);
          v203 = pthread_rwlock_rdlock((v202 + 32));
          if (v203)
          {
            {
              geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
            }

            v204 = geo::read_write_lock::logFailure(int,char const*)::log;
            if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
            {
              buf = 136315394;
              v627 = "read lock";
              v628 = 1024;
              v629 = v203;
              _os_log_fault_impl(&dword_18660C000, v204, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
            }
          }

          atomic_fetch_add((v202 + 24), 0xFFFFFFFF);
          malloc_zone_free(*v202, __dsta);
          a1 = pthread_rwlock_unlock((v202 + 32));
          if (a1)
          {
            v205 = a1;
            {
              geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
            }

            v206 = geo::read_write_lock::logFailure(int,char const*)::log;
            a1 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
            if (a1)
            {
              buf = 136315394;
              v627 = "unlock";
              v628 = 1024;
              v629 = v205;
              _os_log_fault_impl(&dword_18660C000, v206, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
            }

            __dsta = v189;
            v160 = v419;
          }

          else
          {
LABEL_198:
            __dsta = v189;
          }

          goto LABEL_199;
        }
      }

      v165 = __dsta;
LABEL_181:
      v166 = 126 - 2 * __clz(v165 - __dsta);
      if (v165 == __dsta)
      {
        v167 = 0;
      }

      else
      {
        v167 = v166;
      }

      a1 = std::__introsort<std::_ClassicAlgPolicy,geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::$_0::operator() const(geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem const*,std::vector<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem*,geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem*,geo::codec::zone_mallocator>> &)::{lambda(geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem const*,geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem const*)#1} &,geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem**,false>(__dsta, v165, v167, 1);
      if (v165 != __dsta)
      {
        v169 = __dsta + 1;
        while (v169 != v165)
        {
          v170 = v169 - 1;
          v171 = *(v169 - 1);
          v172 = *v169++;
          if (v171 == v172)
          {
            v173 = v170 + 2;
            if (v170 + 2 == v165)
            {
              v147 = v411;
            }

            else
            {
              v147 = v411;
              do
              {
                v174 = v171;
                v171 = *v173;
                if (v174 != *v173)
                {
                  v170[1] = v171;
                  ++v170;
                }

                ++v173;
              }

              while (v173 != v165);
            }

            v175 = v170 + 1;
            goto LABEL_250;
          }
        }
      }

      v175 = v165;
      v147 = v411;
LABEL_250:
      v207 = v175;
      if (v175 != __dsta)
      {
        v209 = *v160;
        v207 = __dsta;
        while (1)
        {
          v210 = *v207;
          if (**v207 == v209)
          {
            break;
          }

          v168.n128_u32[0] = *(v160 + 4);
          if (v168.n128_f32[0] <= v210[2])
          {
            break;
          }

          v168.n128_u32[0] = *(v160 + 2);
          if (v168.n128_f32[0] >= v210[4])
          {
            break;
          }

          v168.n128_u32[0] = *(v160 + 5);
          if (v168.n128_f32[0] <= v210[3])
          {
            break;
          }

          v168.n128_u32[0] = *(v160 + 3);
          if (v168.n128_f32[0] >= v210[5])
          {
            break;
          }

          if (++v207 == v175)
          {
            v207 = v175;
            break;
          }
        }

        if (v175 != v207)
        {
          for (j = v207 + 1; j != v175; ++j)
          {
            v212 = *j;
            if (**j != v209)
            {
              v168.n128_u32[0] = *(v160 + 4);
              if (v168.n128_f32[0] > v212[2])
              {
                v168.n128_u32[0] = *(v160 + 2);
                if (v168.n128_f32[0] < v212[4])
                {
                  v168.n128_u32[0] = *(v160 + 5);
                  if (v168.n128_f32[0] > v212[3])
                  {
                    v168.n128_u32[0] = *(v160 + 3);
                    if (v168.n128_f32[0] < v212[5])
                    {
                      *v207++ = v212;
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v207 != v165)
      {
        v165 = v207;
      }

      v208 = __dsta;
      if (__dsta != v165)
      {
        v159 = v409 + 1;
        while (1)
        {
          v213 = *v208;
          v168.n128_u32[0] = *(v160 + 4);
          if (v168.n128_f32[0] <= (*v208)[2])
          {
            goto LABEL_275;
          }

          v168.n128_u32[0] = *(v160 + 2);
          if (v168.n128_f32[0] >= v213[4])
          {
            goto LABEL_275;
          }

          v168.n128_u32[0] = *(v160 + 5);
          if (v168.n128_f32[0] <= v213[3])
          {
            goto LABEL_275;
          }

          v168.n128_u32[0] = *(v160 + 3);
          if (v168.n128_f32[0] >= v213[5])
          {
            goto LABEL_275;
          }

          v214 = *(v160 + 12);
          v215 = *(v160 + 13);
          v217 = v213[12];
          v216 = v213[13];
          v168.n128_f32[0] = -((v217 * v215) - (v216 * v214));
          if (fabsf(v168.n128_f32[0]) >= 0.00000011921)
          {
            v168.n128_f32[0] = 1.0 / v168.n128_f32[0];
            v223 = *(v160 + 10) - v213[10];
            v224 = *(v160 + 11) - v213[11];
            v225 = -((v223 * v216) - (v224 * v217)) * v168.n128_f32[0];
            if (*(v160 + 17) > v225)
            {
              goto LABEL_275;
            }

            if (*(v160 + 18) < v225)
            {
              goto LABEL_275;
            }

            v168.n128_f32[0] = -((v223 * v215) - (v224 * v214)) * v168.n128_f32[0];
            if (v213[17] > v168.n128_f32[0] || v213[18] < v168.n128_f32[0])
            {
              goto LABEL_275;
            }

            v222 = fminf(fmaxf(v225, 0.0), 1.0);
            v168.n128_f32[0] = fminf(fmaxf(v168.n128_f32[0], 0.0), 1.0);
            goto LABEL_306;
          }

          if (v395 < 0xF)
          {
            goto LABEL_275;
          }

          v218 = *(v160 + 10);
          v219 = v213[10];
          if (vabds_f32(v218, v219) >= 0.002)
          {
            break;
          }

          v220 = *(v160 + 11);
          v221 = v213[11];
          v222 = 0.0;
          v168.n128_u64[0] = 0;
          if (vabds_f32(v220, v221) >= 0.002)
          {
            goto LABEL_291;
          }

LABEL_306:
          v236 = *(v160 + 16);
          v237 = 0.0;
          v238 = v409;
          if (fabsf(v222) > v236)
          {
            v239 = 1.0;
            if (fabsf(v222 + -1.0) <= v236 || (v239 = v222, v238 = v409, v237 = v222, v222 >= 1.0))
            {
              v237 = v239 + -1.0;
              v238 = v409 + 1;
            }
          }

          v240 = *(v407 + 2);
          v241 = *(v407 + 3);
          if (0xAAAAAAAAAAAAAAABLL * ((v241 - v240) >> 5) <= v238)
          {
            v242 = *(v241 - 16) + *(v241 - 20);
          }

          else
          {
            v242 = *(v240 + 96 * v238 + 80) + (*(v240 + 96 * v238 + 76) * v237);
          }

          if (v403 == v402)
          {
            v244 = *v213;
            v168.n128_u16[0] = *(v244 + 148);
            v168.n128_f32[0] = v168.n128_u32[0];
            v243 = v168.n128_f32[0] * 1000.0;
          }

          else
          {
            v243 = v213[21] + ((v213[22] - v213[21]) * v168.n128_f32[0]);
            v244 = *v213;
          }

          v245 = *(v407 + 2);
          v246 = *(v244 + 151);
          if (loga < v390)
          {
            loga->isa = 0;
            LODWORD(loga[1].isa) = v245;
            HIDWORD(loga[1].isa) = v238;
            *&loga[2].isa = v237;
            *(&loga[2].isa + 1) = v242;
            LOBYTE(loga[3].isa) = v246;
            *(&loga[3].isa + 1) = v243;
            loga += 4;
          }

          else
          {
            v247 = *(v407 + 2);
            v414 = v155;
            v248 = loga - __srca;
            v249 = (loga - __srca) >> 5;
            v250 = v249 + 1;
            if ((v249 + 1) >> 59)
            {
              std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
            }

            if ((v390 - __srca) >> 4 > v250)
            {
              v250 = (v390 - __srca) >> 4;
            }

            if ((v390 - __srca) >= 0x7FFFFFFFFFFFFFE0)
            {
              v250 = 0x7FFFFFFFFFFFFFFLL;
            }

            v416 = v250;
            if (v250)
            {
              v251 = geo::codec::zone_mallocator::instance(a1);
              v252 = pthread_rwlock_rdlock((v251 + 32));
              if (v252)
              {
                {
                  geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
                }

                logb = geo::read_write_lock::logFailure(int,char const*)::log;
                if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
                {
                  buf = 136315394;
                  v627 = "read lock";
                  v628 = 1024;
                  v629 = v252;
                  _os_log_fault_impl(&dword_18660C000, logb, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
                }
              }

              v253 = malloc_type_zone_malloc(*v251, 32 * v416, 0x10600405AEC3A25uLL);
              atomic_fetch_add((v251 + 24), 1u);
              v254 = pthread_rwlock_unlock((v251 + 32));
              if (v254)
              {
                logc = v254;
                {
                  geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
                }

                v255 = geo::read_write_lock::logFailure(int,char const*)::log;
                if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
                {
                  buf = 136315394;
                  v627 = "unlock";
                  v628 = 1024;
                  v629 = logc;
                  _os_log_fault_impl(&dword_18660C000, v255, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
                }
              }
            }

            else
            {
              v253 = 0;
            }

            v256 = &v253[4 * v249];
            *v256 = 0;
            *(v256 + 2) = v247;
            *(v256 + 3) = v238;
            *(v256 + 4) = v237;
            *(v256 + 5) = v242;
            v256[24] = v246;
            *(v256 + 25) = v424;
            v256[27] = v425;
            v390 = &v253[4 * v416];
            loga = (v256 + 32);
            *(v256 + 7) = v243;
            a1 = memcpy(v253, __srca, v248);
            if (!__srca)
            {
              __srca = v253;
              v147 = v411;
              v155 = v414;
              v160 = v419;
              goto LABEL_275;
            }

            v155 = v414;
            v160 = v419;
            v257 = geo::codec::zone_mallocator::instance(a1);
            v258 = pthread_rwlock_rdlock((v257 + 32));
            if (v258)
            {
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v259 = geo::read_write_lock::logFailure(int,char const*)::log;
              if (os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT))
              {
                buf = 136315394;
                v627 = "read lock";
                v628 = 1024;
                v629 = v258;
                _os_log_fault_impl(&dword_18660C000, v259, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
              }
            }

            atomic_fetch_add((v257 + 24), 0xFFFFFFFF);
            malloc_zone_free(*v257, __srca);
            a1 = pthread_rwlock_unlock((v257 + 32));
            if (a1)
            {
              v260 = a1;
              {
                geo::read_write_lock::logFailure(int,char const*)::log = os_log_create("com.apple.GeoStdLib", "Locking");
              }

              v261 = geo::read_write_lock::logFailure(int,char const*)::log;
              a1 = os_log_type_enabled(geo::read_write_lock::logFailure(int,char const*)::log, OS_LOG_TYPE_FAULT);
              if (a1)
              {
                buf = 136315394;
                v627 = "unlock";
                v628 = 1024;
                v629 = v260;
                _os_log_fault_impl(&dword_18660C000, v261, OS_LOG_TYPE_FAULT, "Read/write lock %s resulted in non-zero value %d", &buf, 0x12u);
              }
            }

            __srca = v253;
          }

          v147 = v411;
LABEL_275:
          if (++v208 == v165)
          {
            goto LABEL_177;
          }
        }

        v221 = v213[11];
        v220 = *(v160 + 11);
LABEL_291:
        v226 = v219 + v217;
        v227 = v221 + v216;
        v228 = vabds_f32(v220, v227);
        v168.n128_u64[0] = 0;
        v229 = vabds_f32(v218, v226) < 0.002 && v228 < 0.002;
        if (v229)
        {
          v222 = 0.0;
        }

        else
        {
          v230 = v218 + v214;
          v231 = v220 + v215;
          v232 = vabds_f32(v220 + v215, v221);
          v222 = 1.0;
          if (vabds_f32(v230, v219) >= 0.002 || v232 >= 0.002)
          {
            v234 = vabds_f32(v231, v227);
            if (vabds_f32(v230, v226) >= 0.002 || v234 >= 0.002)
            {
              goto LABEL_275;
            }
          }
        }

        goto LABEL_306;
      }

      v159 = v409 + 1;
LABEL_177:
      v158 = v159;
      v157 = *(v407 + 2);
      v409 = v159;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(v407 + 3) - v157) >> 5) > v159);
    if (__srca != loga)
    {
      v262 = loga - __srca;
      v263 = (loga - __srca) >> 5;
      std::__introsort<std::_ClassicAlgPolicy,geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::$_1 &,geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentCrossing *,false>(__srca, loga, 126 - 2 * __clz(v263), 1, v168);
      if (v263 < 2)
      {
        v271 = 1;
        _CF = v263 <= 1;
        v273 = 1 - v263;
        if (!v263)
        {
          goto LABEL_366;
        }
      }

      else
      {
        v264 = 0;
        v265 = v263 - 1;
        v266 = &__srca[7].isa + 1;
        do
        {
          v269 = &__srca[4 * v264];
          if (*(v266 - 5) == *(v269 + 2) && vabds_f32(v269[5], *(v266 - 2)) <= 0.002)
          {
            v270 = *(v266 - 4);
            if (v270 >= *(v269 + 24))
            {
              LOBYTE(v270) = *(v269 + 24);
            }

            *(v269 + 24) = v270;
            v269[7] = fmaxf(v269[7], *v266);
          }

          else
          {
            ++v264;
            v267 = *(v266 - 3);
            v268 = &__srca[4 * v264];
            *&v268->isa = *(v266 - 7);
            *&v268[2].isa = v267;
          }

          v266 += 8;
          --v265;
        }

        while (v265);
        v271 = v264 + 1;
        _CF = v271 >= v263;
        v273 = v271 - v263;
        if (v271 > v263)
        {
LABEL_366:
          if (v273 <= (v390 - loga) >> 5)
          {
            bzero(loga, 32 * v273);
            v275 = &loga[4 * v273];
          }

          else
          {
            if (v271 >> 59)
            {
              std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
            }

            if ((v390 - __srca) >> 4 > v271)
            {
              v271 = (v390 - __srca) >> 4;
            }

            if ((v390 - __srca) >= 0x7FFFFFFFFFFFFFE0)
            {
              v276 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v276 = v271;
            }

            v277 = geo::codec::zone_mallocator::instance(a1);
            v278 = pthread_rwlock_rdlock((v277 + 32));
            if (v278)
            {
              geo::read_write_lock::logFailure(v278, "read lock", v279);
            }

            v280 = malloc_type_zone_malloc(*v277, 32 * v276, 0x10600405AEC3A25uLL);
            atomic_fetch_add((v277 + 24), 1u);
            v281 = pthread_rwlock_unlock((v277 + 32));
            if (v281)
            {
              geo::read_write_lock::logFailure(v281, "unlock", v282);
            }

            v390 = &v280[32 * v276];
            bzero(&v280[v262], 32 * v273);
            v275 = &v280[32 * v273 + v262];
            a1 = memcpy(&v280[v262 + -32 * v263], __srca, v262);
            if (__srca)
            {
              std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentCrossing,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](__srca);
            }

            __srca = &v280[v262 + -32 * v263];
          }

LABEL_381:
          v283 = *v407;
          if (!*(*v407 + 136))
          {
            *(v283 + 136) = -1431655765 * ((v401 - v397) >> 2);
          }

          v284 = __srca;
          *(v283 + 146) += (v275 - __srca) >> 5;
          if (v275 == __srca)
          {
LABEL_171:
            v147 = v411;
            goto LABEL_172;
          }

          while (2)
          {
            v285 = v155;
            isa = v284[1].isa;
            isa_high = HIDWORD(v284[1].isa);
            v288 = v284[2].isa;
            v289 = v284[3].isa;
            v290 = (*(&v284[3].isa + 1) * 10.0);
            if (v401 < v399)
            {
              *v401 = isa;
              *(v401 + 1) = isa_high;
              *(v401 + 1) = v288;
              v401[8] = v289;
              v401[9] = v290;
              v401 += 12;
            }

            else
            {
              v291 = v401 - v397;
              v292 = 0xAAAAAAAAAAAAAAABLL * ((v401 - v397) >> 2) + 1;
              if (v292 > 0x1555555555555555)
              {
                std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v399 - v397) >> 2) > v292)
              {
                v292 = 0x5555555555555556 * ((v399 - v397) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v399 - v397) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v293 = 0x1555555555555555;
              }

              else
              {
                v293 = v292;
              }

              if (v293)
              {
                v294 = geo::codec::zone_mallocator::instance(a1);
                v295 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsLineCrossing>(v294, v293);
              }

              else
              {
                v295 = 0;
              }

              v296 = &v295[4 * ((v401 - v397) >> 2)];
              *v296 = isa;
              *(v296 + 1) = isa_high;
              *(v296 + 1) = v288;
              v296[8] = v289;
              v296[9] = v290;
              v399 = &v295[12 * v293];
              v401 = v296 + 12;
              v297 = &v296[12 * (v291 / -12)];
              a1 = memcpy(v297, v397, v291);
              if (v397)
              {
                v298 = geo::codec::zone_mallocator::instance(a1);
                v155 = v285;
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsLineCrossing>(v298, v397);
                v397 = v297;
LABEL_387:
                v284 += 4;
                if (v284 == v275)
                {
                  goto LABEL_171;
                }

                continue;
              }

              v397 = v297;
            }

            break;
          }

          v155 = v285;
          goto LABEL_387;
        }
      }

      v274 = &__srca[4 * v271];
      if (_CF)
      {
        v275 = loga;
      }

      else
      {
        v275 = v274;
      }

      goto LABEL_381;
    }

LABEL_172:
    v156 = v407;
LABEL_173:
    v156 = (v156 + 48);
    if (v156 != v147)
    {
      continue;
    }

    break;
  }

  v299 = v401;
LABEL_403:
  v300 = geo::codec::zone_mallocator::instance(a1);
  v301 = v299 - v397;
  v302 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsLineCrossing>(v300, 0xAAAAAAAAAAAAAAABLL * (v301 >> 2));
  v303 = *v389;
  *(*v389 + 752) = v302;
  if (v302)
  {
    *(v303 + 744) = 0xAAAAAAAAAAAAAAABLL * (v301 >> 2);
    memcpy(v302, v397, v301);
    v304 = v411;
    goto LABEL_416;
  }

  v306 = v303 + 32;
  v305 = *(v303 + 32);
  v307 = *(v306 + 8) - v305;
  v304 = v411;
  if (v307)
  {
    v308 = 0xCF3CF3CF3CF3CF3DLL * (v307 >> 3);
    if (v308 <= 1)
    {
      v309 = 1;
    }

    else
    {
      v309 = 0xCF3CF3CF3CF3CF3DLL * (v307 >> 3);
    }

    if (v308 <= 1)
    {
      v310 = 0;
      goto LABEL_414;
    }

    v310 = v309 & 0xFFFFFFFFFFFFFFFELL;
    v311 = (v305 + 314);
    v312 = v309 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v311 - 84) = 0;
      *v311 = 0;
      v311 += 168;
      v312 -= 2;
    }

    while (v312);
    if (v308 != v310)
    {
LABEL_414:
      v313 = v309 - v310;
      v314 = (v305 + 168 * v310 + 146);
      do
      {
        *v314 = 0;
        v314 += 84;
        --v313;
      }

      while (v313);
    }
  }

LABEL_416:
  if (__dsta)
  {
    std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem *,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](__dsta);
  }

  v315 = __srca;
  if (__srca)
  {
    std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentCrossing,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](__srca);
  }

  if (v397)
  {
    v316 = geo::codec::zone_mallocator::instance(v315);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsLineCrossing>(v316, v397);
  }

  if (v388)
  {
    for (; v304 != v388; v304 = (v304 - 48))
    {
      v318 = *(v304 - 4);
      if (v318)
      {
        *(v304 - 3) = v318;
        std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](v318);
      }
    }

    std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::FeatureInfo,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](v388);
  }

  v317 = 3200;
  do
  {
    a1 = *(&v426 + v317 - 32);
    if (a1)
    {
      *(&v426 + v317 - 24) = a1;
      std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem *,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](a1);
    }

    v317 -= 32;
  }

  while (v317);
  v1 = *v389;
LABEL_433:
  if (*(v1 + 696))
  {
    v319 = *(v1 + 688);
    v320 = geo::codec::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsConnectivityOverpass>(v320, v319);
    v321 = *v389;
    *(v321 + 688) = 0;
    v322 = *(v321 + 704);
    v324 = geo::codec::zone_mallocator::instance(v323);
    v325 = pthread_rwlock_rdlock((v324 + 32));
    if (v325)
    {
      geo::read_write_lock::logFailure(v325, "read lock", v326);
    }

    v327 = malloc_type_zone_calloc(*v324, v322, 0x20uLL, 0x10500405F586273uLL);
    atomic_fetch_add((v324 + 24), 1u);
    v328 = pthread_rwlock_unlock((v324 + 32));
    if (v328)
    {
      geo::read_write_lock::logFailure(v328, "unlock", v329);
    }

    v330 = *(*v389 + 704);
    v331 = geo::codec::zone_mallocator::instance(v328);
    v332 = pthread_rwlock_rdlock((v331 + 32));
    if (v332)
    {
      geo::read_write_lock::logFailure(v332, "read lock", v333);
    }

    v334 = malloc_type_zone_calloc(*v331, v330, 2uLL, 0x1000040BDFB0063uLL);
    atomic_fetch_add((v331 + 24), 1u);
    v335 = pthread_rwlock_unlock((v331 + 32));
    if (v335)
    {
      geo::read_write_lock::logFailure(v335, "unlock", v336);
    }

    v337 = *v389;
    *(*v389 + 688) = v334;
    if (v327)
    {
      if (v334)
      {
        if (v337[88])
        {
          v338 = 0;
          v339 = 0;
          while (1)
          {
            v343 = v337[87];
            if (*(v343 + v338))
            {
              v344 = *(v343 + v338 + 4);
              if (v337[91] <= v344 || (v345 = (v337[90] + 16 * v344), v346 = v345[1], v348 = v337 + 4, v347 = v337[4], 0xCF3CF3CF3CF3CF3DLL * ((v348[1] - v347) >> 3) <= v346) || (v349 = v347 + 168 * v346, v350 = v345[2], v350 >= *(v349 + 96)) || (v351 = geo::codec::vertexPoolForFeature(v349)) == 0 || (shared_owners = v351[1].__shared_owners_) == 0 || (v353 = *(v349 + 92) + v350, v351[1].__shared_weak_owners_ <= v353) || (v354 = *(shared_owners + 16 * v353), v354 >= v351->__shared_weak_owners_) || (v355 = *(shared_owners + 16 * v353 + 8), v356 = v345[3], v355 <= v356))
              {
                geo::codec::deallocate<geo::codec::_findOverpasses(std::shared_ptr<geo::codec::VectorTile> const&)::JunctionInfo>(v327);
                v357 = *(*v389 + 688);
                v359 = geo::codec::zone_mallocator::instance(v358);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsConnectivityOverpass>(v359, v357);
                *(*v389 + 688) = 0;
                fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 9355);
                return 0;
              }

              v340 = v351->__shared_owners_ + 8 * v354;
              v341 = (v327 + v338);
              *v341 = v339;
              v341[1] = *(v349 + 16);
              *(v341 + 20) = *(v340 + 8 * v356);
              v337 = *v389;
            }

            ++v339;
            v342 = v337[88];
            v338 += 32;
            if (v339 >= v342)
            {
              goto LABEL_462;
            }
          }
        }

        v342 = 0;
LABEL_462:
        v417 = v327;
        qsort(v327, v342, 0x20uLL, geo::codec::_findOverpasses(std::shared_ptr<geo::codec::VectorTile> const&)::$_0::__invoke);
        __dstb = *(*v389 + 704);
        if (__dstb != 1)
        {
          v365 = 0;
          v420 = 0;
          v366 = *(*v389 + 688);
          v367 = v327;
          v368 = (v327 + 56);
          v369 = __dstb - 1;
          do
          {
            v370 = *v367;
            if (!*(v366 + 2 * *v367) && (*(v367 + 16) & 1) == 0 && v365 + 1 < __dstb)
            {
              v371 = *(v367 + 5);
              v372 = v368;
              v373 = v369;
              do
              {
                if ((*(v372 - 1) - v371) > 0.00018311)
                {
                  break;
                }

                if (vabds_f32(*(v367 + 6), *v372) <= 0.00018311)
                {
                  v375 = *(v367 + 1);
                  if (v375 && (v376 = *(v372 - 2)) != 0 && !strcmp(v375, v376) || (v374 = *(v372 - 3), *(v366 + 2 * v374)) || *(v366 + 2 * v370))
                  {
                    *(v372 - 8) = 1;
                  }

                  else
                  {
                    *(v366 + 2 * v370) = ++v420;
                    *(v366 + 2 * v374) = v420;
                  }
                }

                v372 += 8;
                --v373;
              }

              while (v373);
            }

            ++v365;
            v367 = (v367 + 32);
            --v369;
            v368 += 8;
          }

          while (v365 != __dstb - 1);
        }

        geo::codec::deallocate<geo::codec::_findOverpasses(std::shared_ptr<geo::codec::VectorTile> const&)::JunctionInfo>(v417);
        v1 = *v389;
        goto LABEL_481;
      }

      v361 = v327;
    }

    else
    {
      v361 = 0;
    }

    geo::codec::deallocate<geo::codec::_findOverpasses(std::shared_ptr<geo::codec::VectorTile> const&)::JunctionInfo>(v361);
    v362 = *(*v389 + 688);
    v364 = geo::codec::zone_mallocator::instance(v363);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsConnectivityOverpass>(v364, v362);
    v1 = *v389;
    *(*v389 + 688) = 0;
  }

LABEL_481:
  v377 = *(v1 + 864);
  v378 = *(v1 + 872) - v377;
  if (v378 - 1 >= 0)
  {
    v379 = 0;
    v380 = (v377 + (v378 - 1));
    do
    {
      if (*v380)
      {
        if (*v380 != 32 || (v379 & 1) == 0)
        {
          v379 = 0;
          goto LABEL_485;
        }

        *v380 = 0;
      }

      v379 = 1;
LABEL_485:
      --v378;
      --v380;
    }

    while (v378 > 0);
  }

  return 1;
}

void sub_186701014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, geo::codec::zone_mallocator *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a18)
  {
    for (i = a31; i != a18; i -= 48)
    {
      v43 = *(i - 32);
      if (v43)
      {
        *(i - 24) = v43;
        std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](v43);
      }
    }

    std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::FeatureInfo,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](a18);
  }

  v41 = 3200;
  while (1)
  {
    v42 = *(&a39 + v41 - 32);
    if (v42)
    {
      *(&a39 + v41 - 24) = v42;
      std::allocator_traits<geo::allocator_adapter<geo::codec::_findCrossings(std::shared_ptr<geo::codec::VectorTile> const&)::SegmentItem *,geo::codec::zone_mallocator>>::deallocate[abi:ne200100](v42);
    }

    v41 -= 32;
    if (!v41)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

geo::codec::zone_mallocator *geo::codec::VectorTile::_tileBoundsForBuildings(geo::codec::VectorTile *this, double a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v66 = (this + 2440);
  v5 = *(this + 305);
  if (v5 == *(this + 306))
  {
    v65 = *(this + 291);
    v67 = *(this + 284);
    v8 = *(this + 289);
    v9 = (-13107 * ((*(this + 586) - *(this + 584)) >> 3));
    if (v9 > (*(this + 307) - v5) >> 4)
    {
      v10 = geo::codec::zone_mallocator::instance(this);
      v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Box<float,2>>(v10, v9);
      v12 = v11 + 16 * v9;
      v13 = *(this + 306);
      v14 = *(this + 305);
      v15 = v11 + v14 - v13;
      if (v14 != v13)
      {
        v16 = (v11 + v14 - v13);
        do
        {
          v17 = *v14;
          v14 += 16;
          *v16++ = v17;
        }

        while (v14 != v13);
        v14 = *v66;
      }

      *(this + 305) = v15;
      *(this + 306) = v11;
      *(this + 307) = v12;
      if (v14)
      {
        v18 = geo::codec::zone_mallocator::instance(v11);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Box<float,2>>(v18, v14);
      }
    }

    v19 = *(this + 292);
    v20 = v67;
    if (-13107 * ((*(this + 586) - v19) >> 3))
    {
      v21 = 0;
      do
      {
        v23.i32[1] = 2139095039;
        v68 = xmmword_187FBCF80;
        v24 = v19 + 40 * v21;
        v25 = *(v24 + 34);
        if (*(v24 + 34))
        {
          v26 = 0;
          v27 = v65 + 20 * *(v24 + 32);
          v23.i32[0] = -8388609;
          a3.i32[0] = 2139095039;
          a4.i32[0] = 2139095039;
          a5.i32[0] = -8388609;
          do
          {
            v28 = (v8 + 8 * *(v27 + 20 * v26 + 12));
            v29 = *(v28 + 2);
            if (*(v28 + 2))
            {
              v30 = *v28;
              if (v29 > 8 && ((v31 = (v20 + 12 * v30), &v68 < v67 - 4 + 12 * (v29 + v30)) ? (v32 = v31 >= &v69) : (v32 = 1), v32))
              {
                v33 = v29 & 7;
                if ((v29 & 7) == 0)
                {
                  v33 = 8;
                }

                v34 = vdupq_lane_s32(*a5.f32, 0);
                v35 = v29 - v33;
                v36 = vdupq_lane_s32(*a4.f32, 0);
                v37 = vdupq_lane_s32(*v23.f32, 0);
                v38 = v35;
                v39 = vdupq_lane_s32(*a3.f32, 0);
                v40 = v34;
                v41 = v36;
                v42 = v37;
                v43 = v39;
                do
                {
                  v44 = v31;
                  v31 += 24;
                  v70 = vld3q_f32(v44);
                  v44 += 12;
                  v39 = vminnmq_f32(v70.val[0], v39);
                  v71 = vld3q_f32(v44);
                  v43 = vminnmq_f32(v71.val[0], v43);
                  v37 = vmaxnmq_f32(v37, v70.val[0]);
                  v42 = vmaxnmq_f32(v42, v71.val[0]);
                  v36 = vminnmq_f32(v70.val[1], v36);
                  v41 = vminnmq_f32(v71.val[1], v41);
                  v34 = vmaxnmq_f32(v34, v70.val[1]);
                  v40 = vmaxnmq_f32(v40, v71.val[1]);
                  v38 -= 8;
                }

                while (v38);
                a5 = vmaxnmq_f32(v34, v40);
                a5.f32[0] = vmaxnmvq_f32(a5);
                a4 = vminnmq_f32(v36, v41);
                a4.f32[0] = vminnmvq_f32(a4);
                v23 = vmaxnmq_f32(v37, v42);
                v23.f32[0] = vmaxnmvq_f32(v23);
                a3 = vminnmq_f32(v39, v43);
                a3.f32[0] = vminnmvq_f32(a3);
              }

              else
              {
                v35 = 0;
              }

              v45 = v29 - v35;
              v46 = (v67 + 4 + 12 * v35 + 12 * v30);
              do
              {
                v47 = *(v46 - 1);
                v48 = *v46;
                a3.f32[0] = fminf(v47, a3.f32[0]);
                v23.f32[0] = fmaxf(v23.f32[0], v47);
                a4.f32[0] = fminf(*v46, a4.f32[0]);
                *&v68 = __PAIR64__(a4.u32[0], a3.u32[0]);
                a5.f32[0] = fmaxf(a5.f32[0], v48);
                *(&v68 + 1) = __PAIR64__(a5.u32[0], v23.u32[0]);
                v46 += 3;
                --v45;
              }

              while (v45);
            }

            ++v26;
          }

          while (v26 != v25);
        }

        v49 = *(this + 306);
        v50 = *(this + 307);
        if (v49 < v50)
        {
          *v49 = v68;
          v22 = v49 + 1;
        }

        else
        {
          v51 = (v49 - *v66) >> 4;
          v52 = v51 + 1;
          if ((v51 + 1) >> 60)
          {
            std::vector<zilch::GeoCoordinates>::__throw_length_error[abi:ne200100]();
          }

          v53 = v50 - *v66;
          if (v53 >> 3 > v52)
          {
            v52 = v53 >> 3;
          }

          if (v53 >= 0x7FFFFFFFFFFFFFF0)
          {
            v54 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = v52;
          }

          if (v54)
          {
            v55 = geo::codec::zone_mallocator::instance(&v68);
            v56 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Box<float,2>>(v55, v54);
          }

          else
          {
            v56 = 0;
          }

          v57 = (v56 + 16 * v51);
          *v57 = v68;
          v58 = *(this + 306);
          v59 = *(this + 305);
          v60 = v57 + v59 - v58;
          if (v59 != v58)
          {
            v61 = (v57 + v59 - v58);
            do
            {
              v62 = *v59;
              v59 += 16;
              *v61++ = v62;
            }

            while (v59 != v58);
            v59 = *v66;
          }

          v63 = v56 + 16 * v54;
          *(this + 305) = v60;
          v22 = v57 + 1;
          *(this + 306) = v57 + 1;
          *(this + 307) = v63;
          if (v59)
          {
            v64 = geo::codec::zone_mallocator::instance(v56);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Box<float,2>>(v64, v59);
          }
        }

        *(this + 306) = v22;
        ++v21;
        v19 = *(this + 292);
        v20 = v67;
      }

      while (v21 < (-13107 * ((*(this + 586) - v19) >> 3)));
    }
  }

  return v66;
}

uint64_t std::__function::__value_func<std::unordered_set<unsigned long long> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,zilch::HuffmanCode::KeyInfo>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

double GEOCalculateDistanceHighPrecision(double a1, double a2, double a3, double a4)
{
  v8 = sin(a1 * 0.0174532925) * -21000.0 + 6378160.0;

  return GEOCalculateDistanceRadius(a1, a2, a3, a4, v8);
}

uint64_t geo::codec::_readLabelPlacementMetadata(geo::codec::zone_mallocator *a1, void *a2)
{
  v2 = *(a1 + 1);
  if (!v2)
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  while (*(*a1 + 16 * v3) != 141)
  {
    v3 = ++v4;
    if (v2 <= v4)
    {
      return 1;
    }
  }

  v6 = geo::codec::chapterAt(a1, v4, 141, (*a2 + 1920));
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v11 = v7[6];
  v12 = v7[7];
  v13 = v12 - v11;
  if (v12 < v11)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6594;
LABEL_27:
    v30 = fprintf(v14, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v15);
    v16 = 0;
LABEL_28:
    v31 = 0;
    goto LABEL_29;
  }

  v18 = (v7[5] + v11);
  v7[1] = v18;
  *(v7 + 32) = 1;
  v7[2] = v13;
  v7[3] = 0;
  v19 = 8 * v13;
  if (!(8 * v13) || (v20 = *v18, v7[3] = 5, v21 = v20 >> 3, v21 + 6 > v19))
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6598;
    goto LABEL_27;
  }

  v22 = 0;
  v23 = v21 + 1;
  v24 = 5;
  do
  {
    v25 = 8 - (v24 & 7);
    if (v23 < v25)
    {
      v25 = v23;
    }

    v22 = (v18[v24 >> 3] >> (8 - (v24 & 7) - v25)) & ~(-1 << v25) | (v22 << v25);
    v24 += v25;
    v7[3] = v24;
    v23 -= v25;
  }

  while (v23);
  *(v7 + 16) = v22;
  if (v24 + 5 > v19)
  {
    goto LABEL_26;
  }

  v26 = 0;
  v27 = 5;
  do
  {
    v28 = 8 - (v24 & 7);
    if (v27 < v28)
    {
      v28 = v27;
    }

    v26 = (v18[v24 >> 3] >> (8 - (v24 & 7) - v28)) & ~(-1 << v28) | (v26 << v28);
    v24 += v28;
    v7[3] = v24;
    v27 -= v28;
  }

  while (v27);
  v29 = (v26 + 1);
  if (v24 + v29 > v19)
  {
LABEL_26:
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6600;
    goto LABEL_27;
  }

  if (v26 != -1)
  {
    do
    {
      v41 = 8 - (v24 & 7);
      if (v29 < v41)
      {
        v41 = v29;
      }

      v24 += v41;
      v29 -= v41;
    }

    while (v29);
    v7[3] = v24;
  }

  if (v24 + 5 > v19)
  {
    goto LABEL_52;
  }

  v42 = 0;
  v43 = 5;
  do
  {
    v44 = 8 - (v24 & 7);
    if (v43 < v44)
    {
      v44 = v43;
    }

    v42 = (v18[v24 >> 3] >> (8 - (v24 & 7) - v44)) & ~(-1 << v44) | (v42 << v44);
    v24 += v44;
    v7[3] = v24;
    v43 -= v44;
  }

  while (v43);
  v45 = (v42 + 1);
  if (v24 + v45 > v19)
  {
LABEL_52:
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6602;
    goto LABEL_27;
  }

  if (v42 == -1)
  {
    goto LABEL_59;
  }

  v46 = 0;
  do
  {
    v47 = 8 - (v24 & 7);
    if (v45 < v47)
    {
      v47 = v45;
    }

    v46 = (v18[v24 >> 3] >> (8 - (v24 & 7) - v47)) & ~(-1 << v47) | (v46 << v47);
    v24 += v47;
    v7[3] = v24;
    v45 -= v47;
  }

  while (v45);
  if ((v46 - 5) < 0xFFFFFFFE)
  {
    goto LABEL_59;
  }

  if (v24 + 5 > v19)
  {
    goto LABEL_66;
  }

  v48 = 0;
  v49 = 5;
  do
  {
    v50 = 8 - (v24 & 7);
    if (v49 < v50)
    {
      v50 = v49;
    }

    v48 = (v18[v24 >> 3] >> (8 - (v24 & 7) - v50)) & ~(-1 << v50) | (v48 << v50);
    v24 += v50;
    v7[3] = v24;
    v49 -= v50;
  }

  while (v49);
  v51 = (v48 + 1);
  if (v24 + v51 > v19)
  {
LABEL_66:
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6608;
    goto LABEL_27;
  }

  if (v48 != -1)
  {
    v52 = 0;
    do
    {
      v53 = 8 - (v24 & 7);
      if (v51 < v53)
      {
        v53 = v51;
      }

      v52 = (v18[v24 >> 3] >> (8 - (v24 & 7) - v53)) & ~(-1 << v53) | (v52 << v53);
      v24 += v53;
      v7[3] = v24;
      v51 -= v53;
    }

    while (v51);
    if (v52)
    {
      goto LABEL_59;
    }
  }

  v299 = (v7 + 1);
  v55 = *(*a2 + 32);
  v54 = *(*a2 + 40);
  v56 = geo::codec::zone_mallocator::instance(v50);
  v57 = pthread_rwlock_rdlock((v56 + 32));
  if (v57)
  {
    geo::read_write_lock::logFailure(v57, "read lock", v58);
  }

  v16 = malloc_type_zone_calloc(*v56, 1uLL, 0x18uLL, 0x1000040DF5B2F9BuLL);
  atomic_fetch_add((v56 + 24), 1u);
  v59 = pthread_rwlock_unlock((v56 + 32));
  if (v59)
  {
    geo::read_write_lock::logFailure(v59, "unlock", v60);
  }

  v61 = *a2;
  *(*a2 + 1816) = v16;
  if (!v16)
  {
    v30 = fprintf(*MEMORY[0x1E69E9848], "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", 6616);
    goto LABEL_28;
  }

  *v16 = 0;
  v62 = v7[3];
  v63 = v62 + 1;
  v64 = 8 * v7[2];
  if (v62 + 1 > v64)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6620;
    goto LABEL_27;
  }

  v65 = v7[1];
  v66 = *(v65 + (v62 >> 3));
  v7[3] = v63;
  if (((v66 >> (~v62 & 7)) & 1) == 0)
  {
LABEL_59:
    v16 = 1;
    goto LABEL_38;
  }

  if (v62 + 65 > v64)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6626;
    goto LABEL_27;
  }

  v67 = 0;
  v68 = 1022611261 * ((v54 - v55) >> 3);
  v69 = 64;
  do
  {
    v70 = 8 - (v63 & 7);
    if (v69 < v70)
    {
      v70 = v69;
    }

    v67 = (*(v65 + (v63 >> 3)) >> (8 - (v63 & 7) - v70)) & ~(-1 << v70) | (v67 << v70);
    v63 += v70;
    v7[3] = v63;
    v69 -= v70;
  }

  while (v69);
  if (v63 + 6 > v64)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6628;
    goto LABEL_27;
  }

  v71 = 0;
  v72 = 6;
  do
  {
    v73 = 8 - (v63 & 7);
    if (v72 < v73)
    {
      v73 = v72;
    }

    v71 = (*(v65 + (v63 >> 3)) >> (8 - (v63 & 7) - v73)) & ~(-1 << v73) | (v71 << v73);
    v63 += v73;
    v7[3] = v63;
    v72 -= v73;
  }

  while (v72);
  if (v63 + 5 > v64)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6630;
    goto LABEL_27;
  }

  v74 = 0;
  v75 = (v71 + 1);
  v76 = 5;
  do
  {
    v77 = 8 - (v63 & 7);
    if (v76 < v77)
    {
      v77 = v76;
    }

    v74 = (*(v65 + (v63 >> 3)) >> (8 - (v63 & 7) - v77)) & ~(-1 << v77) | (v74 << v77);
    v63 += v77;
    v7[3] = v63;
    v76 -= v77;
  }

  while (v76);
  if (v63 + 5 > v64)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6632;
    goto LABEL_27;
  }

  v78 = 0;
  v79 = (v74 + 1);
  v80 = 5;
  do
  {
    v81 = 8 - (v63 & 7);
    if (v80 < v81)
    {
      v81 = v80;
    }

    v78 = (*(v65 + (v63 >> 3)) >> (8 - (v63 & 7) - v81)) & ~(-1 << v81) | (v78 << v81);
    v63 += v81;
    v7[3] = v63;
    v80 -= v81;
  }

  while (v80);
  if (v63 + 5 > v64)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6634;
    goto LABEL_27;
  }

  v82 = 0;
  v296 = v78 + 1;
  v83 = 5;
  do
  {
    v84 = 8 - (v63 & 7);
    if (v83 < v84)
    {
      v84 = v83;
    }

    v82 = (*(v65 + (v63 >> 3)) >> (8 - (v63 & 7) - v84)) & ~(-1 << v84) | (v82 << v84);
    v63 += v84;
    v7[3] = v63;
    v83 -= v84;
  }

  while (v83);
  if (v63 + 5 > v64)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6636;
    goto LABEL_27;
  }

  v85 = 0;
  v292 = (v82 + 1);
  v86 = 5;
  do
  {
    v87 = 8 - (v63 & 7);
    if (v86 < v87)
    {
      v87 = v86;
    }

    v85 = (*(v65 + (v63 >> 3)) >> (8 - (v63 & 7) - v87)) & ~(-1 << v87) | (v85 << v87);
    v63 += v87;
    v7[3] = v63;
    v86 -= v87;
  }

  while (v86);
  if (v63 + 5 > v64)
  {
    goto LABEL_124;
  }

  v88 = 0;
  v289 = v85 + 1;
  v89 = 5;
  do
  {
    v90 = 8 - (v63 & 7);
    if (v89 < v90)
    {
      v90 = v89;
    }

    v88 = (*(v65 + (v63 >> 3)) >> (8 - (v63 & 7) - v90)) & ~(-1 << v90) | (v88 << v90);
    v63 += v90;
    v7[3] = v63;
    v89 -= v90;
  }

  while (v89);
  v91 = (v88 + 1);
  if (v63 + v91 > v64)
  {
LABEL_124:
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6640;
    goto LABEL_27;
  }

  if (v88 == -1)
  {
    v92 = 0;
  }

  else
  {
    LODWORD(v92) = 0;
    do
    {
      v93 = 8 - (v63 & 7);
      if (v91 < v93)
      {
        v93 = v91;
      }

      v92 = (*(v65 + (v63 >> 3)) >> (8 - (v63 & 7) - v93)) & ~(-1 << v93) | (v92 << v93);
      v63 += v93;
      v7[3] = v63;
      v91 -= v93;
    }

    while (v91);
  }

  v94 = v63 + v92;
  if (v94 > v64)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6641;
    goto LABEL_27;
  }

  v7[3] = v94;
  if (v94 + 5 > v64)
  {
    goto LABEL_140;
  }

  v95 = 0;
  v96 = 5;
  do
  {
    v97 = 8 - (v94 & 7);
    if (v96 < v97)
    {
      v97 = v96;
    }

    v95 = (*(v65 + (v94 >> 3)) >> (8 - (v94 & 7) - v97)) & ~(-1 << v97) | (v95 << v97);
    v94 += v97;
    v7[3] = v94;
    v96 -= v97;
  }

  while (v96);
  v98 = (v95 + 1);
  if (v94 + v98 > v64)
  {
LABEL_140:
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6648;
    goto LABEL_27;
  }

  if (v95 == -1)
  {
    goto LABEL_212;
  }

  LODWORD(count) = 0;
  do
  {
    v99 = 8 - (v94 & 7);
    if (v98 < v99)
    {
      v99 = v98;
    }

    count = (*(v65 + (v94 >> 3)) >> (8 - (v94 & 7) - v99)) & ~(-1 << v99) | (count << v99);
    v94 += v99;
    v7[3] = v94;
    v98 -= v99;
  }

  while (v98);
  if (!count)
  {
LABEL_212:
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6649;
    goto LABEL_27;
  }

  *(v61 + 1824) = count;
  v100 = geo::codec::zone_mallocator::instance(v97);
  v101 = pthread_rwlock_rdlock((v100 + 32));
  if (v101)
  {
    geo::read_write_lock::logFailure(v101, "read lock", v102);
  }

  v285 = malloc_type_zone_calloc(*v100, count, 0x30uLL, 0x100004064842E6AuLL);
  atomic_fetch_add((v100 + 24), 1u);
  v103 = pthread_rwlock_unlock((v100 + 32));
  if (v103)
  {
    geo::read_write_lock::logFailure(v103, "unlock", v104);
  }

  *(*a2 + 1832) = v285;
  if (!v285)
  {
    v14 = *MEMORY[0x1E69E9848];
    v15 = 6652;
    goto LABEL_27;
  }

  v286 = geo::codec::zone_mallocator::instance(v103);
  v105 = pthread_rwlock_rdlock((v286 + 32));
  if (v105)
  {
    geo::read_write_lock::logFailure(v105, "read lock", v106);
  }

  v31 = malloc_type_zone_calloc(*v286, count, 0x18uLL, 0x102004024DAA5DEuLL);
  atomic_fetch_add((v286 + 24), 1u);
  v107 = pthread_rwlock_unlock((v286 + 32));
  if (v107)
  {
    geo::read_write_lock::logFailure(v107, "unlock", v108);
  }

  if (!v31)
  {
    v152 = *MEMORY[0x1E69E9848];
    v153 = 6655;
    goto LABEL_222;
  }

  v109 = 0;
  v110 = count;
  v111 = 1.0 / ~(-1 << v289);
  v112 = *a2;
  *(*(*a2 + 1816) + 8) = v111;
  v113 = *(v112 + 1832);
  v114 = v7[3];
  v115 = 8 * v7[2];
  if (count <= 1)
  {
    v110 = 1;
  }

  v116 = v31;
  do
  {
    if (v114 + v75 > v115)
    {
      v152 = *MEMORY[0x1E69E9848];
      v153 = 6666;
      goto LABEL_222;
    }

    v117 = 0;
    if (v75)
    {
      v118 = *v299;
      v119 = v75;
      do
      {
        v120 = 8 - (v114 & 7);
        if (v119 < v120)
        {
          v120 = v119;
        }

        v117 = (*(v118 + (v114 >> 3)) >> (8 - (v114 & 7) - v120)) & ~(-1 << v120) | (v117 << v120);
        v114 += v120;
        v7[3] = v114;
        v119 -= v120;
      }

      while (v119);
    }

    v67 += v117;
    *(v113 + 24) = v67;
    if (v114 + v79 > v115)
    {
      v152 = *MEMORY[0x1E69E9848];
      v153 = 6671;
      goto LABEL_222;
    }

    v121 = 0;
    if (v79)
    {
      v122 = *v299;
      v123 = v79;
      do
      {
        v124 = 8 - (v114 & 7);
        if (v123 < v124)
        {
          v124 = v123;
        }

        v121 = (*(v122 + (v114 >> 3)) >> (8 - (v114 & 7) - v124)) & ~(-1 << v124) | (v121 << v124);
        v114 += v124;
        v7[3] = v114;
        v123 -= v124;
      }

      while (v123);
    }

    v125 = v121 * (1.0 / ~(-1 << v296));
    *v113 = v125;
    *v116 = v113;
    if (v125 > 0.0)
    {
      v116[2] = v111 / v125;
    }

    v126 = v114 + 1;
    if (v114 + 1 > v115)
    {
      v153 = 6680;
      goto LABEL_221;
    }

    v127 = v7[1];
    v128 = *(v127 + (v114 >> 3));
    v7[3] = v126;
    if ((v128 >> (~v114 & 7)))
    {
      if (v126 + v292 > v115)
      {
        goto LABEL_218;
      }

      if (v292)
      {
        v129 = 0;
        v130 = v292;
        do
        {
          v131 = 8 - (v126 & 7);
          if (v130 < v131)
          {
            v131 = v130;
          }

          v129 = (*(v127 + (v126 >> 3)) >> (8 - (v126 & 7) - v131)) & ~(-1 << v131) | (v129 << v131);
          v126 += v131;
          v7[3] = v126;
          v130 -= v131;
        }

        while (v130);
        v132 = v116[2] * v129;
        *(v113 + 8) = v132;
        if (v126 + v292 > v115)
        {
LABEL_218:
          v153 = 6682;
          goto LABEL_221;
        }

        v133 = 0;
        v134 = (v113 + 16);
        v135 = v292;
        do
        {
          v136 = 8 - (v126 & 7);
          if (v135 < v136)
          {
            v136 = v135;
          }

          v133 = (*(v127 + (v126 >> 3)) >> (8 - (v126 & 7) - v136)) & ~(-1 << v136) | (v133 << v136);
          v126 += v136;
          v7[3] = v126;
          v135 -= v136;
        }

        while (v135);
        v137 = v116[2] * v133;
        *v134 = v137;
        v138 = v132 + -1.0;
        v139 = v137 + -1.0;
      }

      else
      {
        *(v113 + 16) = 0;
        v134 = (v113 + 16);
        *(v113 + 8) = 0;
        v139 = -1.0;
        v138 = -1.0;
      }

      v140 = v116[2] * 0.6;
      if (fabs(v138) < v140)
      {
        *(v113 + 8) = 0x3FF0000000000000;
      }

      if (fabs(v139) < v140)
      {
        *v134 = 1.0;
      }
    }

    else
    {
      *(v113 + 8) = xmmword_187FBF380;
    }

    if (v126 + 5 > v115)
    {
      v153 = 6688;
      goto LABEL_221;
    }

    v141 = 0;
    v142 = 5;
    do
    {
      v143 = 8 - (v126 & 7);
      if (v142 < v143)
      {
        v143 = v142;
      }

      v141 = (*(v127 + (v126 >> 3)) >> (8 - (v126 & 7) - v143)) & ~(-1 << v143) | (v141 << v143);
      v126 += v143;
      v7[3] = v126;
      v142 -= v143;
    }

    while (v142);
    *(v116 + 2) = v141 + 1;
    if (v126 + 5 > v115)
    {
      v153 = 6689;
      goto LABEL_221;
    }

    v144 = 0;
    v114 = v126;
    v145 = 5;
    do
    {
      v146 = 8 - (v114 & 7);
      if (v145 < v146)
      {
        v146 = v145;
      }

      v144 = (*(v127 + (v114 >> 3)) >> (8 - (v114 & 7) - v146)) & ~(-1 << v146) | (v144 << v146);
      v114 += v146;
      v7[3] = v114;
      v145 -= v146;
    }

    while (v145);
    v147 = (v144 + 1);
    *(v116 + 3) = v147;
    ++v109;
    v113 += 48;
    v116 += 3;
  }

  while (v109 != v110);
  if (v114 + 5 > v115)
  {
    goto LABEL_211;
  }

  v148 = 0;
  v149 = 5;
  do
  {
    v150 = 8 - (v114 & 7);
    if (v149 < v150)
    {
      v150 = v149;
    }

    v148 = (*(v127 + (v114 >> 3)) >> (8 - (v114 & 7) - v150)) & ~(-1 << v150) | (v148 << v150);
    v114 += v150;
    v7[3] = v114;
    v149 -= v150;
  }

  while (v149);
  v151 = (v148 + 1);
  if (v114 + v151 > v115)
  {
LABEL_211:
    v152 = *MEMORY[0x1E69E9848];
    v153 = 6694;
    goto LABEL_222;
  }

  v154 = 0;
  if (v148 != -1)
  {
    do
    {
      v155 = 8 - (v114 & 7);
      if (v151 < v155)
      {
        v155 = v151;
      }

      v154 = (*(v127 + (v114 >> 3)) >> (8 - (v114 & 7) - v155)) & ~(-1 << v155) | (v154 << v155);
      v114 += v155;
      v7[3] = v114;
      v151 -= v155;
    }

    while (v151);
  }

  *(v112 + 1840) = v154;
  v156 = geo::codec::zone_mallocator::instance(v147);
  v157 = pthread_rwlock_rdlock((v156 + 32));
  if (v157)
  {
    geo::read_write_lock::logFailure(v157, "read lock", v158);
  }

  v297 = malloc_type_zone_calloc(*v156, v154, 0x28uLL, 0x1000040FAFC2D09uLL);
  atomic_fetch_add((v156 + 24), 1u);
  v159 = pthread_rwlock_unlock((v156 + 32));
  if (v159)
  {
    geo::read_write_lock::logFailure(v159, "unlock", v160);
  }

  v161 = *a2;
  *(*a2 + 1848) = v297;
  if (!v297)
  {
    v152 = *MEMORY[0x1E69E9848];
    v153 = 6697;
    goto LABEL_222;
  }

  v163 = v7[2];
  v162 = v7[3];
  v164 = 8 * v163;
  if (v162 + 5 > 8 * v163)
  {
    v152 = *MEMORY[0x1E69E9848];
    v153 = 6700;
    goto LABEL_222;
  }

  v165 = 0;
  v166 = *v299;
  v167 = 5;
  do
  {
    v168 = 8 - (v162 & 7);
    if (v167 < v168)
    {
      v168 = v167;
    }

    v165 = (*(v166 + (v162 >> 3)) >> (8 - (v162 & 7) - v168)) & ~(-1 << v168) | (v165 << v168);
    v162 += v168;
    v7[3] = v162;
    v167 -= v168;
  }

  while (v167);
  if (v162 + 5 > v164)
  {
    v152 = *MEMORY[0x1E69E9848];
    v153 = 6702;
    goto LABEL_222;
  }

  v169 = 0;
  v293 = (v165 + 1);
  v170 = 5;
  do
  {
    v171 = 8 - (v162 & 7);
    if (v170 < v171)
    {
      v171 = v170;
    }

    v169 = (*(v166 + (v162 >> 3)) >> (8 - (v162 & 7) - v171)) & ~(-1 << v171) | (v169 << v171);
    v162 += v171;
    v7[3] = v162;
    v170 -= v171;
  }

  while (v170);
  if (v162 + 5 > v164)
  {
    v152 = *MEMORY[0x1E69E9848];
    v153 = 6704;
    goto LABEL_222;
  }

  v172 = 0;
  v283 = (v169 + 1);
  v173 = 5;
  do
  {
    v174 = 8 - (v162 & 7);
    if (v173 < v174)
    {
      v174 = v173;
    }

    v172 = (*(v166 + (v162 >> 3)) >> (8 - (v162 & 7) - v174)) & ~(-1 << v174) | (v172 << v174);
    v162 += v174;
    v7[3] = v162;
    v173 -= v174;
  }

  while (v173);
  if (v162 + 5 > v164)
  {
    v152 = *MEMORY[0x1E69E9848];
    v153 = 6706;
    goto LABEL_222;
  }

  v175 = 0;
  v279 = (v172 + 1);
  v176 = 5;
  do
  {
    v30 = 8 - (v162 & 7);
    if (v176 < v30)
    {
      v30 = v176;
    }

    v175 = (*(v166 + (v162 >> 3)) >> (8 - (v162 & 7) - v30)) & ~(-1 << v30) | (v175 << v30);
    v162 += v30;
    v7[3] = v162;
    v176 -= v30;
  }

  while (v176);
  v273 = 0;
  v287 = 0;
  v281 = (v175 + 1);
  v290 = *(v161 + 1832);
  v277 = v31;
  do
  {
    *(v290 + 32) = v287;
    if (v162 + v293 > 8 * v163)
    {
      v153 = 6715;
      goto LABEL_221;
    }

    if (v293)
    {
      v177 = 0;
      v178 = v293;
      do
      {
        if (v178 >= 8 - (v162 & 7))
        {
          v179 = 8 - (v162 & 7);
        }

        else
        {
          v179 = v178;
        }

        v180 = v177 << v179;
        v177 = (*(v166 + (v162 >> 3)) >> (8 - (v162 & 7) - v179)) & ~(-1 << v179) | (v177 << v179);
        v162 += v179;
        v7[3] = v162;
        v178 -= v179;
      }

      while (v178);
      if (v177 + v287 > v154)
      {
LABEL_323:
        v153 = 6716;
        goto LABEL_221;
      }

      if (HIWORD(v180))
      {
        v153 = 6717;
        goto LABEL_221;
      }

      *(v290 + 42) = v177;
      if (v177)
      {
        for (i = 0; i != v177; ++i)
        {
          v181 = 8 * v163;
          if (v162 + v283 > v181)
          {
            v153 = 6722;
            goto LABEL_221;
          }

          v182 = v283;
          if (v283)
          {
            v182 = 0;
            v183 = v283;
            do
            {
              v184 = 8 - (v162 & 7);
              if (v183 < v184)
              {
                v184 = v183;
              }

              v182 = (*(v166 + (v162 >> 3)) >> (8 - (v162 & 7) - v184)) & ~(-1 << v184) | (v182 << v184);
              v162 += v184;
              v7[3] = v162;
              v183 -= v184;
            }

            while (v183);
          }

          if (v182 >= v68)
          {
            v153 = 6723;
            goto LABEL_221;
          }

          *v297 = v182;
          if (v162 + v279 > v181)
          {
            v153 = 6727;
            goto LABEL_221;
          }

          LOWORD(v185) = v279;
          if (v279)
          {
            v185 = 0;
            v186 = v279;
            do
            {
              if (v186 >= 8 - (v162 & 7))
              {
                v187 = 8 - (v162 & 7);
              }

              else
              {
                v187 = v186;
              }

              v188 = v185 << v187;
              v185 = (*(v166 + (v162 >> 3)) >> (8 - (v162 & 7) - v187)) & ~(-1 << v187) | (v185 << v187);
              v162 += v187;
              v7[3] = v162;
              v186 -= v187;
            }

            while (v186);
            if (HIWORD(v188))
            {
              v153 = 6728;
              goto LABEL_221;
            }
          }

          *(v297 + 12) = v185;
          v189 = v162 + 1;
          if (v162 + 1 > v181)
          {
            v153 = 6732;
            goto LABEL_221;
          }

          v190 = *(v166 + (v162 >> 3));
          v7[3] = v189;
          v297[31] = (v190 >> (~v162 & 7)) & 1;
          v191 = v162 + 2;
          if (v162 + 2 > v181)
          {
            v153 = 6736;
            goto LABEL_221;
          }

          v192 = *(v166 + (v189 >> 3));
          v7[3] = v191;
          v297[30] = (v192 >> (~v189 & 7)) & 1;
          v193 = v162 + 3;
          if (v193 > v181)
          {
            v153 = 6740;
            goto LABEL_221;
          }

          v194 = *(v166 + (v191 >> 3));
          v7[3] = v193;
          if ((v194 >> (~v191 & 7)))
          {
            v30 = geo::codec::decodeLabelLineRangeUsingTileLine(v299, v297 + 1, v277);
            if ((v30 & 1) == 0)
            {
              v153 = 6742;
              goto LABEL_221;
            }
          }

          else
          {
            *(v297 + 8) = *(v290 + 8);
          }

          v163 = v7[2];
          v195 = v7[3];
          v162 = v195 + 1;
          v196 = 8 * v163;
          if (v195 + 1 > 8 * v163)
          {
            v153 = 6748;
            goto LABEL_221;
          }

          v166 = v7[1];
          v197 = *(v166 + (v195 >> 3));
          v7[3] = v162;
          if ((v197 >> (~v195 & 7)))
          {
            v297[32] = 1;
            if (v162 + v281 > v196)
            {
              v153 = 6753;
              goto LABEL_221;
            }

            if (!v281)
            {
              *(v297 + 13) = 0;
              v203 = v162 + v281 > v196;
LABEL_332:
              if (v203)
              {
                v153 = 6758;
              }

              else
              {
                v153 = 6760;
              }

              goto LABEL_221;
            }

            v198 = 0;
            v199 = v281;
            do
            {
              if (v199 >= 8 - (v162 & 7))
              {
                v200 = 8 - (v162 & 7);
              }

              else
              {
                v200 = v199;
              }

              v201 = v198 << v200;
              v198 = (*(v166 + (v162 >> 3)) >> (8 - (v162 & 7) - v200)) & ~(-1 << v200) | (v198 << v200);
              v162 += v200;
              v7[3] = v162;
              v199 -= v200;
            }

            while (v199);
            if (HIWORD(v201))
            {
              v153 = 6754;
              goto LABEL_221;
            }

            *(v297 + 13) = v198;
            v202 = v162 + v281 > v196;
            v203 = v202;
            if (v202)
            {
              goto LABEL_332;
            }

            v204 = 0;
            v205 = v281;
            do
            {
              if (v205 >= 8 - (v162 & 7))
              {
                v206 = 8 - (v162 & 7);
              }

              else
              {
                v206 = v205;
              }

              v207 = v204 << v206;
              v204 = (*(v166 + (v162 >> 3)) >> (8 - (v162 & 7) - v206)) & ~(-1 << v206) | (v204 << v206);
              v162 += v206;
              v7[3] = v162;
              v205 -= v206;
            }

            while (v205);
            if (HIWORD(v207))
            {
              v153 = 6759;
              goto LABEL_221;
            }

            v208 = v204 >= v198;
            v209 = v204 - v198;
            if (v209 == 0 || !v208)
            {
              v153 = 6760;
              goto LABEL_221;
            }

            *(v297 + 14) = v209 + 1;
          }

          v297 += 40;
        }
      }
    }

    else
    {
      if (v287 > v154)
      {
        goto LABEL_323;
      }

      v177 = 0;
      *(v290 + 42) = 0;
    }

    v287 += v177;
    v290 += 48;
    v277 += 24;
    ++v273;
  }

  while (v273 < count);
  if (v287 != v154)
  {
    v152 = *MEMORY[0x1E69E9848];
    v153 = 6766;
    goto LABEL_222;
  }

  v210 = 8 * v163;
  v211 = v162 + 1;
  if (v162 + 1 > 8 * v163)
  {
    v152 = *MEMORY[0x1E69E9848];
    v153 = 6770;
    goto LABEL_222;
  }

  v212 = *(v166 + (v162 >> 3));
  v7[3] = v211;
  v213 = (1 << (~v162 & 7)) & v212;
  v214 = *a2;
  *(*(*a2 + 1816) + 1) = v213 != 0;
  if (!v213)
  {
LABEL_445:
    v272 = v7[6] + (v211 >> 3);
    if ((v211 & 7) != 0)
    {
      ++v272;
    }

    v7[6] = v272;
    *(v7 + 32) = 0;
    v16 = 1;
    goto LABEL_29;
  }

  v215 = v162 + 2;
  if (v162 + 2 > v210)
  {
    v153 = 6774;
    goto LABEL_221;
  }

  v216 = *(v166 + (v211 >> 3));
  v7[3] = v215;
  if (((v216 >> (~v211 & 7)) & 1) == 0)
  {
    v211 = v162 + 2;
    goto LABEL_445;
  }

  if (v162 + 7 > v210)
  {
    goto LABEL_348;
  }

  v217 = 0;
  v218 = 5;
  do
  {
    v219 = 8 - (v215 & 7);
    if (v218 < v219)
    {
      v219 = v218;
    }

    v217 = (*(v166 + (v215 >> 3)) >> (8 - (v215 & 7) - v219)) & ~(-1 << v219) | (v217 << v219);
    v215 += v219;
    v7[3] = v215;
    v218 -= v219;
  }

  while (v218);
  v220 = (v217 + 1);
  if (v215 + v220 > v210)
  {
LABEL_348:
    v153 = 6778;
    goto LABEL_221;
  }

  v221 = 0;
  if (v217 != -1)
  {
    do
    {
      v222 = 8 - (v215 & 7);
      if (v220 < v222)
      {
        v222 = v220;
      }

      v221 = (*(v166 + (v215 >> 3)) >> (8 - (v215 & 7) - v222)) & ~(-1 << v222) | (v221 << v222);
      v215 += v222;
      v7[3] = v215;
      v220 -= v222;
    }

    while (v220);
  }

  *(v214 + 1856) = v221;
  v223 = geo::codec::zone_mallocator::instance(v219);
  v224 = pthread_rwlock_rdlock((v223 + 32));
  if (v224)
  {
    geo::read_write_lock::logFailure(v224, "read lock", v225);
  }

  v294 = malloc_type_zone_calloc(*v223, v221, 0x18uLL, 0x1000040DF5B2F9BuLL);
  atomic_fetch_add((v223 + 24), 1u);
  v226 = pthread_rwlock_unlock((v223 + 32));
  if (v226)
  {
    geo::read_write_lock::logFailure(v226, "unlock", v227);
  }

  v228 = *a2;
  *(*a2 + 1864) = v294;
  if (!v294)
  {
    v153 = 6781;
    goto LABEL_221;
  }

  v229 = v7[2];
  v230 = v7[3];
  v231 = 8 * v229;
  if (v230 + 5 > 8 * v229)
  {
    v153 = 6784;
    goto LABEL_221;
  }

  v232 = 0;
  v233 = *v299;
  v234 = 5;
  do
  {
    v235 = 8 - (v230 & 7);
    if (v234 < v235)
    {
      v235 = v234;
    }

    v232 = (*(v233 + (v230 >> 3)) >> (8 - (v230 & 7) - v235)) & ~(-1 << v235) | (v232 << v235);
    v230 += v235;
    v7[3] = v230;
    v234 -= v235;
  }

  while (v234);
  if (v230 + 5 > v231)
  {
    v153 = 6786;
    goto LABEL_221;
  }

  v236 = 0;
  v288 = (v232 + 1);
  v237 = 5;
  do
  {
    v238 = 8 - (v230 & 7);
    if (v237 < v238)
    {
      v238 = v237;
    }

    v236 = (*(v233 + (v230 >> 3)) >> (8 - (v230 & 7) - v238)) & ~(-1 << v238) | (v236 << v238);
    v230 += v238;
    v7[3] = v230;
    v237 -= v238;
  }

  while (v237);
  if (v230 + 5 > v231)
  {
    v153 = 6788;
    goto LABEL_221;
  }

  v239 = 0;
  v284 = (v236 + 1);
  v240 = 5;
  do
  {
    v241 = 8 - (v230 & 7);
    if (v240 < v241)
    {
      v241 = v240;
    }

    v239 = (*(v233 + (v230 >> 3)) >> (8 - (v230 & 7) - v241)) & ~(-1 << v241) | (v239 << v241);
    v230 += v241;
    v7[3] = v230;
    v240 -= v241;
  }

  while (v240);
  if (v230 + 3 > v231)
  {
    v153 = 6790;
    goto LABEL_221;
  }

  v242 = 0;
  v282 = (v239 + 1);
  v243 = 3;
  do
  {
    v244 = 8 - (v230 & 7);
    if (v243 < v244)
    {
      v244 = v243;
    }

    v242 = (*(v233 + (v230 >> 3)) >> (8 - (v230 & 7) - v244)) & ~(-1 << v244) | (v242 << v244);
    v230 += v244;
    v7[3] = v230;
    v243 -= v244;
  }

  while (v243);
  if (v230 + 5 > v231)
  {
    goto LABEL_390;
  }

  v245 = 0;
  v280 = (v242 + 1);
  v246 = 5;
  do
  {
    v247 = 8 - (v230 & 7);
    if (v246 < v247)
    {
      v247 = v246;
    }

    v30 = (-1 << v247);
    v245 = (*(v233 + (v230 >> 3)) >> (8 - (v230 & 7) - v247)) & ~v30 | (v245 << v247);
    v230 += v247;
    v7[3] = v230;
    v246 -= v247;
  }

  while (v246);
  v248 = (v245 + 1);
  if (v230 + v248 > v231)
  {
LABEL_390:
    v153 = 6794;
    goto LABEL_221;
  }

  if (v245 == -1)
  {
    v249 = 0;
  }

  else
  {
    LODWORD(v249) = 0;
    do
    {
      v250 = 8 - (v230 & 7);
      if (v248 < v250)
      {
        v250 = v248;
      }

      v30 = (-1 << v250);
      v249 = (*(v233 + (v230 >> 3)) >> (8 - (v230 & 7) - v250)) & ~v30 | (v249 << v250);
      v230 += v250;
      v7[3] = v230;
      v248 -= v250;
    }

    while (v248);
  }

  v251 = v230 + v249;
  if (v230 + v249 > v231)
  {
    v153 = 6795;
    goto LABEL_221;
  }

  v276 = 0;
  v298 = 0;
  v7[3] = v251;
  v291 = *(v228 + 1832);
  v278 = v31;
  while (1)
  {
    v211 = v251 + 1;
    v252 = 8 * v229;
    if (v251 + 1 > 8 * v229)
    {
      v153 = 6803;
      goto LABEL_221;
    }

    v253 = v7[1];
    v254 = *(v253 + (v251 >> 3));
    v7[3] = v211;
    if (((v254 >> (~v251 & 7)) & 1) == 0)
    {
      goto LABEL_444;
    }

    *(v291 + 36) = v298;
    if (v211 + v288 > v252)
    {
      v153 = 6810;
      goto LABEL_221;
    }

    if (v288)
    {
      v255 = 0;
      v256 = v288;
      do
      {
        if (v256 >= 8 - (v211 & 7))
        {
          v257 = 8 - (v211 & 7);
        }

        else
        {
          v257 = v256;
        }

        v258 = v255 << v257;
        v255 = (*(v253 + (v211 >> 3)) >> (8 - (v211 & 7) - v257)) & ~(-1 << v257) | (v255 << v257);
        v211 += v257;
        v7[3] = v211;
        v256 -= v257;
      }

      while (v256);
      if (HIWORD(v258))
      {
        v153 = 6811;
        goto LABEL_221;
      }
    }

    else
    {
      v255 = 0;
    }

    v274 = v255 + v298;
    if (v255 + v298 > v221)
    {
      v153 = 6812;
      goto LABEL_221;
    }

    if (v211 + v282 > v252)
    {
      v153 = 6815;
      goto LABEL_221;
    }

    if (v282)
    {
      v259 = 0;
      v260 = v282;
      do
      {
        v261 = 8 - (v211 & 7);
        if (v260 < v261)
        {
          v261 = v260;
        }

        v259 = (*(v253 + (v211 >> 3)) >> (8 - (v211 & 7) - v261)) & ~(-1 << v261) | (v259 << v261);
        v211 += v261;
        v7[3] = v211;
        v260 -= v261;
      }

      while (v260);
    }

    else
    {
      v259 = 0;
    }

    if (v255)
    {
      break;
    }

LABEL_442:
    *(v291 + 40) = v298 - *(v291 + 36);
    v7[3] = v211;
    v211 += v259;
    if (v211 > 8 * v229)
    {
      v153 = 6839;
      goto LABEL_221;
    }

    v7[3] = v211;
LABEL_444:
    v291 += 48;
    v278 += 24;
    v251 = v211;
    if (++v276 >= count)
    {
      goto LABEL_445;
    }
  }

  v262 = 0;
  v263 = v211;
  while (1)
  {
    if (v263 + v284 > 8 * v229)
    {
      v153 = 6821;
      goto LABEL_221;
    }

    if (v284)
    {
      v264 = 0;
      v265 = *v299;
      v266 = v284;
      do
      {
        v267 = 8 - (v263 & 7);
        if (v266 < v267)
        {
          v267 = v266;
        }

        v264 = (*(v265 + (v263 >> 3)) >> (8 - (v263 & 7) - v267)) & ~(-1 << v267) | (v264 << v267);
        v263 += v267;
        v7[3] = v263;
        v266 -= v267;
      }

      while (v266);
      if (v264)
      {
        goto LABEL_442;
      }
    }

    *v294 = 0;
    v30 = geo::codec::decodeLabelLineRangeUsingTileLine(v299, v294 + 1, v278);
    if (!v30)
    {
      v153 = 6827;
      goto LABEL_221;
    }

    v229 = v7[2];
    v263 = v7[3];
    if (v263 + v280 > 8 * v229)
    {
      break;
    }

    if (v280)
    {
      v268 = 0;
      v269 = *v299;
      v270 = v280;
      do
      {
        v271 = 8 - (v263 & 7);
        if (v270 < v271)
        {
          v271 = v270;
        }

        v268 = (*(v269 + (v263 >> 3)) >> (8 - (v263 & 7) - v271)) & ~(-1 << v271) | (v268 << v271);
        v263 += v271;
        v7[3] = v263;
        v270 -= v271;
      }

      while (v270);
    }

    else
    {
      LOBYTE(v268) = 0;
    }

    *(v294 + 1) = v268;
    v294 += 3;
    ++v298;
    if (++v262 == v255)
    {
      v298 = v274;
      goto LABEL_442;
    }
  }

  v153 = 6829;
LABEL_221:
  v152 = *MEMORY[0x1E69E9848];
LABEL_222:
  v30 = fprintf(v152, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v153);
  v16 = 0;
LABEL_29:
  v32 = geo::codec::zone_mallocator::instance(v30);
  v33 = pthread_rwlock_rdlock((v32 + 32));
  if (v33)
  {
    geo::read_write_lock::logFailure(v33, "read lock", v34);
  }

  if (v31)
  {
    atomic_fetch_add((v32 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*v32, v31);
  v35 = pthread_rwlock_unlock((v32 + 32));
  if (v35)
  {
    geo::read_write_lock::logFailure(v35, "unlock", v36);
  }

  if (*v7)
  {
    v37 = v7[5];
    v38 = geo::codec::zone_mallocator::instance(v35);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v38, v37);
  }

  v39 = geo::codec::zone_mallocator::instance(v35);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v39, v7);
LABEL_38:
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  v300 = 141;
  v301 = &v300;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v9 + 1920), &v300, &v301) + 4) = ((rep - v10.__d_.__rep_) / 1000) * 0.001;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  return v16;
}

void sub_186703934(_Unwind_Exception *a1)
{
  v7 = pthread_rwlock_unlock((v3 + 32));
  if (v7)
  {
    geo::read_write_lock::logFailure(v7, "unlock", v8);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *(v5 - 96) = 141;
  *(v5 - 88) = v5 - 96;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v4 + 1920), v5 - 96, (v5 - 88)) + 4) = ((rep - v2) / 1000) * 0.001;
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t geo::codec::_readRoadNetwork(geo::codec::zone_mallocator *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = 0;
  v6 = 0;
  while (*(*a1 + 16 * v5) != 135)
  {
    v5 = ++v6;
    if (v3 <= v6)
    {
      goto LABEL_13;
    }
  }

  v7 = geo::codec::chapterAt(a1, v6, 135, (*a3 + 1920));
  if (v7)
  {
    v8 = v7;
    v9 = a3[1];
    v40 = *a3;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v42 = 0;
    if (geo::codec::decodePointCharacteristics(a1, 51, (*a3 + 1208), (*a3 + 1216), (*a3 + 1240), (*a3 + 1248), (*a3 + 1920)))
    {
      if (geo::codec::chapterReadVarUint32(v8, &v42))
      {
        v12 = v8[6];
        v11 = v8[7];
        v13 = v11 >= v12;
        v14 = v11 - v12;
        if (v13)
        {
          v8[1] = v8[5] + v12;
          *(v8 + 32) = 1;
          v8[2] = v14;
          v8[3] = 0;
          v32 = *a3;
          v33 = *(*a3 + 32);
          v34 = *(*a3 + 40);
          v35 = 0xCF3CF3CF3CF3CF3DLL * ((v34 - v33) >> 3);
          v36 = v42 - v35;
          if (v42 <= v35)
          {
            if (v42 < v35)
            {
              for (i = v33 + 168 * v42; v34 != i; v34 -= 168)
              {
                v38 = *(v34 - 136);
                if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v38->__on_zero_shared)(v38, v36);
                  std::__shared_weak_count::__release_weak(v38);
                }

                v39 = *(v34 - 160);
                if (v39)
                {
                  std::__shared_weak_count::__release_weak(v39);
                }
              }

              *(v32 + 40) = i;
            }
          }

          else
          {
            std::vector<GeoCodecsRoadFeature,geo::allocator_adapter<GeoCodecsRoadFeature,geo::codec::zone_mallocator>>::__append((*a3 + 32), v36);
          }

          geo::codec::attributesForFeatureType(&__key, 1);
        }

        v15 = *MEMORY[0x1E69E9848];
        v16 = 6894;
      }

      else
      {
        v15 = *MEMORY[0x1E69E9848];
        v16 = 6892;
      }
    }

    else
    {
      v15 = *MEMORY[0x1E69E9848];
      v16 = 6890;
    }

    v19 = fprintf(v15, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v16);
    v17 = 0;
    v20 = geo::codec::zone_mallocator::instance(v19);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v20, 0);
    v22 = geo::codec::zone_mallocator::instance(v21);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v22, 0);
    v24 = geo::codec::zone_mallocator::instance(v23);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned int>(v24, 0);
    v26 = geo::codec::zone_mallocator::instance(v25);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsVectorTileRawPoint>(v26, 0);
    if (*v8)
    {
      v28 = v8[5];
      v29 = geo::codec::zone_mallocator::instance(v27);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v29, v28);
    }

    v30 = geo::codec::zone_mallocator::instance(v27);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v30, v8);
    rep = std::chrono::steady_clock::now().__d_.__rep_;
    __p[0] = 135;
    *&__key = __p;
    *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v40 + 1920), __p, &__key) + 4) = ((rep - v10.__d_.__rep_) / 1000) * 0.001;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  else
  {
LABEL_13:
    v17 = 1;
  }

  return v17 & 1;
}

void sub_186707C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, void *a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (*(&a31 + 1) && !atomic_fetch_add((*(&a31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&a31 + 1) + 16))(*(&a31 + 1), a2, a3, a4, a5, a6, a7, a8);
    std::__shared_weak_count::__release_weak(*(&a31 + 1));
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *(v37 - 96) = 135;
  a34 = (v37 - 96);
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((a29 + 1920), v37 - 96, &a34) + 4) = ((rep - a22) / 1000) * 0.001;
  if (a23)
  {
    if (!atomic_fetch_add(&a23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (a23->__on_zero_shared)(a23);
      std::__shared_weak_count::__release_weak(a23);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t geo::codec::_readModernBuildings(geo::codec::zone_mallocator *a1, uint64_t a2, uint64_t a3, char **a4, unint64_t *a5)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a1 + 1);
  if (!v5)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  while (*(*a1 + 16 * v8) != a2)
  {
    v8 = ++v9;
    if (v5 <= v9)
    {
      return 1;
    }
  }

  v12 = a2;
  v13 = geo::codec::chapterAt(a1, v9, a2, (*a5 + 1920));
  if (!v13)
  {
    return 1;
  }

  v14 = v13;
  v16 = *a5;
  v15 = a5[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v12;
  v18.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v158[0] = 0;
  v158[1] = 0;
  v20 = v14[6];
  v19 = v14[7];
  v21 = v19 >= v20;
  v22 = v19 - v20;
  if (v21)
  {
    *(v14 + 32) = 1;
    v23 = v14[5] + v20;
    v14[2] = v22;
    v14[3] = 0;
    v14[1] = v23;
  }

  if ((geo::codec::decodeSectionEncoding((v14 + 1), a3, 0, 0, 0) & 1) == 0)
  {
    v31 = *MEMORY[0x1E69E9848];
    v32 = 2932;
    goto LABEL_25;
  }

  v24 = v14[3];
  v25 = 8 * v14[2];
  if (v24 + 5 > v25)
  {
    goto LABEL_21;
  }

  v26 = 0;
  v27 = v14[1];
  v28 = 5;
  do
  {
    v29 = 8 - (v24 & 7);
    if (v28 < v29)
    {
      v29 = v28;
    }

    v26 = (*(v27 + (v24 >> 3)) >> (8 - (v24 & 7) - v29)) & ~(-1 << v29) | (v26 << v29);
    v24 += v29;
    v14[3] = v24;
    v28 -= v29;
  }

  while (v28);
  v30 = (v26 + 1);
  if (v24 + v30 > v25)
  {
LABEL_21:
    v31 = *MEMORY[0x1E69E9848];
    v32 = 2933;
    goto LABEL_25;
  }

  if (v26 == -1)
  {
    v41 = 1;
  }

  else
  {
    v39 = 0;
    do
    {
      v40 = 8 - (v24 & 7);
      if (v30 < v40)
      {
        v40 = v30;
      }

      v39 = (*(v27 + (v24 >> 3)) >> (8 - (v24 & 7) - v40)) & ~(-1 << v40) | (v39 << v40);
      v24 += v40;
      v14[3] = v24;
      v30 -= v40;
    }

    while (v30);
    v41 = v39 == 0;
  }

  if (v24 + 5 > v25)
  {
    goto LABEL_46;
  }

  v42 = 0;
  v43 = 5;
  do
  {
    v44 = 8 - (v24 & 7);
    if (v43 < v44)
    {
      v44 = v43;
    }

    v42 = (*(v27 + (v24 >> 3)) >> (8 - (v24 & 7) - v44)) & ~(-1 << v44) | (v42 << v44);
    v24 += v44;
    v14[3] = v24;
    v43 -= v44;
  }

  while (v43);
  v45 = (v42 + 1);
  if (v24 + v45 > v25)
  {
LABEL_46:
    v31 = *MEMORY[0x1E69E9848];
    v32 = 2934;
    goto LABEL_25;
  }

  v46 = 0;
  if (v42 != -1)
  {
    do
    {
      if (v45 >= 8 - (v24 & 7))
      {
        v47 = 8 - (v24 & 7);
      }

      else
      {
        v47 = v45;
      }

      v48 = v46 << v47;
      v46 = (*(v27 + (v24 >> 3)) >> (8 - (v24 & 7) - v47)) & ~(-1 << v47) | (v46 << v47);
      v24 += v47;
      v14[3] = v24;
      v45 -= v47;
    }

    while (v45);
    if (v48 >= 0x10000)
    {
      v31 = *MEMORY[0x1E69E9848];
      v32 = 2937;
      goto LABEL_25;
    }
  }

  v155 = v41;
  v49 = v46;
  v50 = a4[1];
  v51 = 0xF0F0F0F0F0F0F0F1 * ((v50 - *a4) >> 3);
  v52 = v46 - v51;
  if (v46 <= v51)
  {
    if (v46 < v51)
    {
      v148 = v16;
      v150 = v46;
      v53 = &(*a4)[136 * v46];
      while (v50 != v53)
      {
        v54 = *(v50 - 13);
        if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v54->__on_zero_shared)(v54, v52);
          std::__shared_weak_count::__release_weak(v54);
        }

        v55 = *(v50 - 16);
        if (v55)
        {
          std::__shared_weak_count::__release_weak(v55);
        }

        v50 -= 136;
      }

      a4[1] = v53;
      v16 = v148;
      v49 = v150;
    }
  }

  else
  {
    std::vector<GeoCodecsBuildingFootprintFeature,geo::allocator_adapter<GeoCodecsBuildingFootprintFeature,geo::codec::zone_mallocator>>::__append(a4, v52);
  }

  v156 = *a3;
  v154 = *(*a3 + 40);
  v56 = 4 * v154;
  v57 = *a5;
  v58 = *(*a5 + 312);
  v59 = *(*a5 + 320);
  if (v58 == v59)
  {
    std::vector<char,geo::allocator_adapter<char,geo::codec::zone_mallocator>>::resize((v57 + 312), 4 * v154);
    v61 = 0;
  }

  else
  {
    v60 = v59 - v58;
    std::vector<char,geo::allocator_adapter<char,geo::codec::zone_mallocator>>::resize((v57 + 312), v59 - v58 + v56);
    v61 = v60 >> 2;
  }

  v62 = *a5;
  if (!*(*a5 + 312))
  {
    v31 = *MEMORY[0x1E69E9848];
    v32 = 2954;
    goto LABEL_25;
  }

  v153 = v61;
  v152 = *(*a5 + 312);
  v63 = *(v62 + 344);
  v64 = *(v62 + 352);
  if (v63 == v64)
  {
    std::vector<char,geo::allocator_adapter<char,geo::codec::zone_mallocator>>::resize((v62 + 344), v56);
    v66 = 0;
  }

  else
  {
    v65 = v64 - v63;
    std::vector<char,geo::allocator_adapter<char,geo::codec::zone_mallocator>>::resize((v62 + 344), v64 - v63 + v56);
    v66 = v65 >> 2;
  }

  v67 = *(*a5 + 344);
  if (!v67)
  {
    v31 = *MEMORY[0x1E69E9848];
    v32 = 2964;
    goto LABEL_25;
  }

  v68 = v14[3];
  v69 = 8 * v14[2];
  if (v68 + 4 > v69)
  {
    v31 = *MEMORY[0x1E69E9848];
    v32 = 2975;
    goto LABEL_25;
  }

  LODWORD(v70) = 0;
  v71 = v14[1];
  v72 = 4;
  do
  {
    v73 = 8 - (v68 & 7);
    if (v72 < v73)
    {
      v73 = v72;
    }

    v70 = (*(v71 + (v68 >> 3)) >> (8 - (v68 & 7) - v73)) & ~(-1 << v73) | (v70 << v73);
    v68 += v73;
    v14[3] = v68;
    v72 -= v73;
  }

  while (v72);
  if (v68 + 4 > v69)
  {
    v31 = *MEMORY[0x1E69E9848];
    v32 = 2976;
    goto LABEL_25;
  }

  v151 = v49;
  LODWORD(v49) = 0;
  v74 = 4;
  do
  {
    v75 = 8 - (v68 & 7);
    if (v74 < v75)
    {
      v75 = v74;
    }

    v49 = (*(v71 + (v68 >> 3)) >> (8 - (v68 & 7) - v75)) & ~(-1 << v75) | (v49 << v75);
    v68 += v75;
    v14[3] = v68;
    v74 -= v75;
  }

  while (v74);
  if (v68 + 4 > v69)
  {
    v31 = *MEMORY[0x1E69E9848];
    v32 = 2977;
    goto LABEL_25;
  }

  LODWORD(v76) = 0;
  v77 = 4;
  do
  {
    v78 = 8 - (v68 & 7);
    if (v77 < v78)
    {
      v78 = v77;
    }

    v76 = (*(v71 + (v68 >> 3)) >> (8 - (v68 & 7) - v78)) & ~(-1 << v78) | (v76 << v78);
    v68 += v78;
    v14[3] = v68;
    v77 -= v78;
  }

  while (v77);
  if (v68 + 4 > v69)
  {
    v31 = *MEMORY[0x1E69E9848];
    v32 = 2978;
LABEL_25:
    v34 = fprintf(v31, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v32);
    v10 = 0;
    if (!*v14)
    {
      goto LABEL_27;
    }

LABEL_26:
    v35 = v14[5];
    v36 = geo::codec::zone_mallocator::instance(v34);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v36, v35);
    goto LABEL_27;
  }

  v145 = v67;
  v146 = v66;
  v149 = v16;
  LODWORD(v16) = 0;
  v79 = 4;
  do
  {
    v80 = 8 - (v68 & 7);
    if (v79 < v80)
    {
      v80 = v79;
    }

    v16 = (*(v71 + (v68 >> 3)) >> (8 - (v68 & 7) - v80)) & ~(-1 << v80) | (v16 << v80);
    v68 += v80;
    v14[3] = v68;
    v79 -= v80;
  }

  while (v79);
  v144 = v16;
  if (v68 + 4 > v69)
  {
    v81 = *MEMORY[0x1E69E9848];
    v82 = 2979;
    goto LABEL_209;
  }

  LODWORD(v83) = 0;
  v84 = 4;
  do
  {
    v85 = 8 - (v68 & 7);
    if (v84 < v85)
    {
      v85 = v84;
    }

    v83 = (*(v71 + (v68 >> 3)) >> (8 - (v68 & 7) - v85)) & ~(-1 << v85) | (v83 << v85);
    v68 += v85;
    v14[3] = v68;
    v84 -= v85;
  }

  while (v84);
  v143 = v83;
  v86 = v68 + 1;
  if (v68 + 1 > v69)
  {
    v81 = *MEMORY[0x1E69E9848];
    v82 = 2980;
    goto LABEL_209;
  }

  v87 = *(v71 + (v68 >> 3));
  v14[3] = v86;
  v88 = v68 + 2;
  if (v68 + 2 > v69)
  {
    v81 = *MEMORY[0x1E69E9848];
    v82 = 2981;
    goto LABEL_209;
  }

  v89 = *(v71 + (v86 >> 3));
  v14[3] = v88;
  v90 = v68 + 3;
  if (v68 + 3 > v69)
  {
    v81 = *MEMORY[0x1E69E9848];
    v82 = 2982;
    goto LABEL_209;
  }

  v91 = *(v71 + (v88 >> 3));
  v14[3] = v90;
  v92 = v68 + 4;
  if (v68 + 4 > v69)
  {
    v81 = *MEMORY[0x1E69E9848];
    v82 = 2983;
    goto LABEL_209;
  }

  v93 = *(v71 + (v90 >> 3));
  v14[3] = v92;
  if (!v151)
  {
LABEL_195:
    v130 = v14[6] + (v92 >> 3);
    if ((v92 & 7) != 0)
    {
      ++v130;
    }

    v14[6] = v130;
    *(v14 + 32) = 0;
    geo::codec::attributesForFeatureType(&v157, 4);
  }

  v138 = 0;
  v140 = 0;
  v137 = (1 << (~v68 & 7)) & v87;
  v135 = (1 << (~v86 & 7)) & v89;
  v133 = (1 << (~v90 & 7)) & v93;
  v134 = (1 << (~v88 & 7)) & v91;
  while (1)
  {
    v139 = &(*a4)[136 * v138];
    *(v139 + 112) = 0;
    v95 = *a5;
    v94 = a5[1];
    if (v94)
    {
      atomic_fetch_add_explicit((v94 + 16), 1uLL, memory_order_relaxed);
    }

    v96 = *(v139 + 8);
    *v139 = v95;
    *(v139 + 8) = v94;
    if (v96)
    {
      std::__shared_weak_count::__release_weak(v96);
    }

    *(v139 + 76) = xmmword_187FBCF80;
    v97 = v14[2];
    v98 = v14[3];
    if (v155)
    {
      v142 = 8 * v97;
    }

    else
    {
      v142 = 8 * v97;
      if (v98 + v144 > 8 * v97)
      {
        v82 = 2996;
        goto LABEL_208;
      }

      if (v144)
      {
        v99 = 0;
        v100 = v14[1];
        v101 = v144;
        do
        {
          v102 = 8 - (v98 & 7);
          if (v101 < v102)
          {
            v102 = v101;
          }

          v99 = (*(v100 + (v98 >> 3)) >> (8 - (v98 & 7) - v102)) & ~(-1 << v102) | (v99 << v102);
          v98 += v102;
          v14[3] = v98;
          v101 -= v102;
        }

        while (v101);
        if (v99)
        {
          for (i = 0; i != v99; ++i)
          {
            if (v98 + v143 > v142)
            {
              v82 = 2999;
              goto LABEL_208;
            }

            if (v143)
            {
              v104 = v143;
              v105 = v98;
              do
              {
                v106 = 8 - (v105 & 7);
                if (v104 < v106)
                {
                  v106 = v104;
                }

                v105 += v106;
                v104 -= v106;
              }

              while (v104);
              v98 = v105;
              v14[3] = v105;
            }
          }
        }
      }
    }

    if (v98 + v70 > v142)
    {
      v82 = 3004;
      goto LABEL_208;
    }

    if (v70)
    {
      v147 = 0;
      v107 = v14[1];
      v108 = v70;
      do
      {
        v109 = 8 - (v98 & 7);
        if (v108 < v109)
        {
          v109 = v108;
        }

        v147 = (*(v107 + (v98 >> 3)) >> (8 - (v98 & 7) - v109)) & ~(-1 << v109) | (v147 << v109);
        v98 += v109;
        v14[3] = v98;
        v108 -= v109;
      }

      while (v108);
    }

    else
    {
      v147 = 0;
    }

    v136 = v140 + v147;
    if (v136 > v154)
    {
      v82 = 3005;
      goto LABEL_208;
    }

    *(v139 + 92) = v140;
    *(v139 + 96) = v147;
    *(v139 + 112) = v153;
    if (v137)
    {
      if (v147)
      {
        for (j = 0; j != v147; ++j)
        {
          if (v98 + v49 > v142)
          {
            v82 = 3014;
            goto LABEL_208;
          }

          v111 = 0;
          if (v49)
          {
            v112 = v14[1];
            v113 = v49;
            do
            {
              v114 = 8 - (v98 & 7);
              if (v113 < v114)
              {
                v114 = v113;
              }

              v111 = (*(v112 + (v98 >> 3)) >> (8 - (v98 & 7) - v114)) & ~(-1 << v114) | (v111 << v114);
              v98 += v114;
              v14[3] = v98;
              v113 -= v114;
            }

            while (v113);
          }

          *(v152 + 4 * v153) = v111 / ~(-1 << *v156);
          v141 = ++v153;
        }

        goto LABEL_162;
      }
    }

    else if (v147)
    {
      v132 = 4 * v147;
      bzero((v152 + 4 * v153), v132);
      v131 = v147 - 1;
      v141 = v153 + v131 + 1;
      *(v139 + 120) = v146;
      if (!v135)
      {
        goto LABEL_178;
      }

      goto LABEL_164;
    }

    v141 = v153;
LABEL_162:
    *(v139 + 120) = v146;
    if (!v135)
    {
      if (v147)
      {
        v131 = v147 - 1;
        v132 = 4 * v147;
LABEL_178:
        bzero((v145 + 4 * v146), v132);
        v146 += v131 + 1;
      }

LABEL_179:
      v153 = v141;
      goto LABEL_181;
    }

    if (!v147)
    {
      goto LABEL_179;
    }

LABEL_164:
    for (k = 0; k != v147; ++k)
    {
      v118 = v98 + 1;
      if (v98 + 1 > v142)
      {
        v82 = 3027;
        goto LABEL_208;
      }

      v119 = v14[1];
      v120 = *(v119 + (v98 >> 3));
      v14[3] = v118;
      if ((v120 >> (~v98 & 7)))
      {
        if (v118 + v76 > v142)
        {
          v82 = 3030;
          goto LABEL_208;
        }

        v121 = 0;
        if (v76)
        {
          v122 = v76;
          do
          {
            v123 = 8 - (v118 & 7);
            if (v122 < v123)
            {
              v123 = v122;
            }

            v121 = (*(v119 + (v118 >> 3)) >> (8 - (v118 & 7) - v123)) & ~(-1 << v123) | (v121 << v123);
            v118 += v123;
            v14[3] = v118;
            v122 -= v123;
          }

          while (v122);
        }

        v116 = v121;
      }

      else
      {
        v116 = 0.0;
      }

      v98 = v118;
      v117 = v146 + 1;
      *(v145 + 4 * v146++) = v116 / ~(-1 << *v156);
    }

    v153 = v141;
    v146 = v117;
LABEL_181:
    *(v139 + 128) = 0;
    if (v134)
    {
      if (v98 + 1 > v142)
      {
        v82 = 3043;
        goto LABEL_208;
      }

      v124 = *(v14[1] + (v98 >> 3));
      v14[3] = v98 + 1;
      *(v139 + 128) = (v124 >> (~v98++ & 7)) & 1;
    }

    *(v139 + 40) = 0;
    if (!v133)
    {
      v92 = v98;
      goto LABEL_194;
    }

    v92 = v98 + 1;
    if (v98 + 1 > v142)
    {
      v82 = 3050;
      goto LABEL_208;
    }

    v125 = v14[1];
    v126 = *(v125 + (v98 >> 3));
    v14[3] = v92;
    if ((v126 >> (~v98 & 7)))
    {
      break;
    }

LABEL_194:
    v140 = v136;
    if (++v138 == v151)
    {
      goto LABEL_195;
    }
  }

  if (v98 + 65 <= v142)
  {
    v127 = 0;
    v128 = 64;
    do
    {
      v129 = 8 - (v92 & 7);
      if (v128 < v129)
      {
        v129 = v128;
      }

      v127 = (*(v125 + (v92 >> 3)) >> (8 - (v92 & 7) - v129)) & ~(-1 << v129) | (v127 << v129);
      v92 += v129;
      v14[3] = v92;
      v128 -= v129;
    }

    while (v128);
    *(v139 + 40) = v127;
    goto LABEL_194;
  }

  v82 = 3052;
LABEL_208:
  v81 = *MEMORY[0x1E69E9848];
LABEL_209:
  v34 = fprintf(v81, "%s:%d VMP4 Parse: Decode error here\n", "/Library/Caches/com.apple.xbs/Sources/GeoServices/geo/GeoCodecs/GeoCodecs/VMP4/VMP4Decoder.cpp", v82);
  v10 = 0;
  v16 = v149;
  if (*v14)
  {
    goto LABEL_26;
  }

LABEL_27:
  v37 = geo::codec::zone_mallocator::instance(v34);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VMP4Chapter>(v37, v14);
  if (v158[1] && !atomic_fetch_add((v158[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v158[1] + 16))(v158[1]);
    std::__shared_weak_count::__release_weak(v158[1]);
  }

  rep = std::chrono::steady_clock::now().__d_.__rep_;
  *&v157 = v17;
  v158[0] = &v157;
  *(std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__emplace_unique_key_args<std::variant<ChapterType,DetailType>,std::piecewise_construct_t const&,std::tuple<std::variant<ChapterType,DetailType> const&>,std::tuple<>>((v16 + 1920), &v157, v158) + 4) = ((rep - v18.__d_.__rep_) / 1000) * 0.001;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  return v10;
}