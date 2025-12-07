uint64_t sub_1C0D4EB2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, _DWORD *a7, uint64_t a8, void *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20)
{
  v21 = v20;
  v22 = a19;
  v24 = a15;
  v23 = a16;
  v25 = a14;
  v26 = a11;
  v27 = a2 >> 62;
  v28 = a10;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      v29 = a6 >> 62;
      if ((a6 >> 62) > 1)
      {
        if (v29 != 2)
        {
          result = ccrng();
          if (result)
          {
            v32 = a11;
            v71 = a11 >> 62;
            v34 = a16;
            if ((a11 >> 62) <= 1)
            {
              v36 = a20;
              v35 = a12;
              v23 = a10;
              if (!v71 || !__OFSUB__(HIDWORD(a10), a10))
              {
                goto LABEL_207;
              }

              goto LABEL_582;
            }

            goto LABEL_117;
          }

          goto LABEL_630;
        }

        v116 = a14;
        v117 = a10;
        v25 = a15;
        v47 = *(a5 + 16);
        v28 = sub_1C0D7812C();
        if (v28)
        {
          v48 = sub_1C0D7815C();
          if (__OFSUB__(v47, v48))
          {
LABEL_572:
            __break(1u);
LABEL_573:
            __break(1u);
            goto LABEL_574;
          }

          v28 += v47 - v48;
        }

        v21 = v20;
        sub_1C0D7814C();
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v22 = a19;
          v34 = a16;
          v49 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v49)
            {
              goto LABEL_259;
            }

            goto LABEL_265;
          }

LABEL_125:
          v24 = v25;
          if (v49 == 2)
          {
            v25 = v116;
            v55 = *(v117 + 24);
            if (!__OFSUB__(v55, *(v117 + 16)))
            {
              goto LABEL_266;
            }

            __break(1u);
            goto LABEL_129;
          }

LABEL_265:
          v25 = v116;
          goto LABEL_266;
        }

        goto LABEL_632;
      }

      if (!v29)
      {
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v33 = a11 >> 62;
          v34 = a16;
          if ((a11 >> 62) <= 1)
          {
            v36 = a20;
            v35 = a12;
            v23 = a10;
            if (!v33)
            {
              goto LABEL_191;
            }

LABEL_183:
            if (!__OFSUB__(HIDWORD(v23), v23))
            {
              goto LABEL_191;
            }

            goto LABEL_580;
          }

          v36 = a20;
          v35 = a12;
          v23 = a10;
          if (v33 != 2 || (v46 = *(a10 + 24), !__OFSUB__(v46, *(a10 + 16))))
          {
LABEL_191:
            if (v35)
            {
              v81 = v24 >> 62;
              if ((v24 >> 62) <= 1)
              {
                if (!v81)
                {
                  goto LABEL_224;
                }

                goto LABEL_223;
              }

              if (v81 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
LABEL_224:
                if (v34)
                {
                  v85 = v22 >> 62;
                  if ((v22 >> 62) <= 1)
                  {
                    if (!v85)
                    {
                      goto LABEL_304;
                    }

                    goto LABEL_303;
                  }

                  if (v85 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                  {
LABEL_304:
                    if (!v36)
                    {
                      __break(1u);
LABEL_306:
                      if (!__OFSUB__(HIDWORD(a18), a18))
                      {
                        goto LABEL_307;
                      }

                      goto LABEL_593;
                    }

LABEL_509:
                    *a7 = ccspake_verifier_initialize();
                    sub_1C0CF448C(a3, a4);
                    sub_1C0CF448C(a5, a6);
                    goto LABEL_564;
                  }

                  __break(1u);
LABEL_232:
                  if (!__OFSUB__(HIDWORD(v25), v25))
                  {
                    goto LABEL_233;
                  }

LABEL_585:
                  __break(1u);
                  goto LABEL_586;
                }

LABEL_645:
                __break(1u);
                goto LABEL_646;
              }

              __break(1u);
LABEL_199:
              if (v35)
              {
                v82 = v24 >> 62;
                if ((v24 >> 62) <= 1)
                {
                  if (v82)
                  {
                    goto LABEL_232;
                  }

LABEL_233:
                  if (v34)
                  {
                    v86 = v22 >> 62;
                    if ((v22 >> 62) <= 1)
                    {
                      if (v86)
                      {
                        goto LABEL_306;
                      }

LABEL_307:
                      if (v36)
                      {
                        *a7 = ccspake_verifier_initialize();
                        sub_1C0CF448C(a3, a4);
                        sub_1C0CF448C(a5, v26);
LABEL_564:
                        sub_1C0CF448C(v23, v32);
                        sub_1C0CF448C(v25, v24);
                        return sub_1C0CF448C(a18, v22);
                      }

                      goto LABEL_655;
                    }

                    if (v86 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                    {
                      goto LABEL_307;
                    }

                    __break(1u);
LABEL_241:
                    if (!__OFSUB__(HIDWORD(v25), v25))
                    {
                      goto LABEL_242;
                    }

LABEL_586:
                    __break(1u);
                    goto LABEL_587;
                  }

LABEL_646:
                  __break(1u);
                  goto LABEL_647;
                }

                if (v82 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                {
                  goto LABEL_233;
                }

                __break(1u);
LABEL_207:
                if (v35)
                {
                  v83 = v24 >> 62;
                  if ((v24 >> 62) <= 1)
                  {
                    if (v83)
                    {
                      goto LABEL_241;
                    }

LABEL_242:
                    if (v34)
                    {
                      v87 = v22 >> 62;
                      if ((v22 >> 62) <= 1)
                      {
                        if (v87 && __OFSUB__(HIDWORD(a18), a18))
                        {
                          goto LABEL_594;
                        }

                        goto LABEL_310;
                      }

                      if (v87 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                      {
LABEL_310:
                        if (v36)
                        {
                          goto LABEL_509;
                        }

                        __break(1u);
                        goto LABEL_312;
                      }

                      __break(1u);
LABEL_250:
                      if (!__OFSUB__(HIDWORD(v25), v25))
                      {
                        goto LABEL_251;
                      }

LABEL_587:
                      __break(1u);
LABEL_588:
                      __break(1u);
                      goto LABEL_589;
                    }

LABEL_647:
                    __break(1u);
                    goto LABEL_648;
                  }

                  if (v83 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                  {
                    goto LABEL_242;
                  }

                  __break(1u);
                  goto LABEL_215;
                }

LABEL_639:
                __break(1u);
LABEL_640:
                __break(1u);
                goto LABEL_641;
              }

LABEL_638:
              __break(1u);
              goto LABEL_639;
            }

LABEL_637:
            __break(1u);
            goto LABEL_638;
          }

          __break(1u);
          goto LABEL_113;
        }

        __break(1u);
LABEL_629:
        __break(1u);
LABEL_630:
        __break(1u);
LABEL_631:
        __break(1u);
LABEL_632:
        __break(1u);
LABEL_633:
        __break(1u);
        goto LABEL_634;
      }

      v116 = a14;
      v117 = a10;
      v64 = a5;
      if (a5 <= a5 >> 32)
      {
        v25 = a15;
        v28 = sub_1C0D7812C();
        if (!v28)
        {
LABEL_69:
          v21 = v20;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_642:
            __break(1u);
            goto LABEL_643;
          }

          v32 = a11;
          v22 = a19;
          v34 = a16;
          v66 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v66)
            {
              v25 = a14;
              if (__OFSUB__(HIDWORD(a10), a10))
              {
LABEL_602:
                __break(1u);
                goto LABEL_603;
              }

              goto LABEL_378;
            }

            goto LABEL_377;
          }

LABEL_145:
          v24 = v25;
          if (v66 != 2)
          {
LABEL_377:
            v25 = v116;
LABEL_378:
            v23 = v117;
            if (!v35)
            {
LABEL_663:
              __break(1u);
              goto LABEL_664;
            }

            v99 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v99)
              {
LABEL_440:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_611:
                  __break(1u);
                  goto LABEL_612;
                }
              }

LABEL_441:
              if (!v34)
              {
LABEL_673:
                __break(1u);
                goto LABEL_674;
              }

              v104 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (v104)
                {
LABEL_498:
                  if (__OFSUB__(HIDWORD(a18), a18))
                  {
LABEL_618:
                    __break(1u);
                    goto LABEL_619;
                  }
                }

LABEL_499:
                if (!v31)
                {
LABEL_681:
                  __break(1u);
                  goto LABEL_682;
                }

                if (v28)
                {
                  goto LABEL_509;
                }

                __break(1u);
                goto LABEL_502;
              }

              if (v104 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_499;
              }

              __break(1u);
              goto LABEL_449;
            }

            if (v99 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_441;
            }

            __break(1u);
            goto LABEL_386;
          }

          v25 = v116;
          v78 = *(v117 + 24);
          if (!__OFSUB__(v78, *(v117 + 16)))
          {
            goto LABEL_378;
          }

          __break(1u);
LABEL_149:
          v25 = v116;
          if (v78 != 2)
          {
LABEL_386:
            v23 = v117;
LABEL_387:
            if (!v35)
            {
LABEL_664:
              __break(1u);
              goto LABEL_665;
            }

            v100 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v100)
              {
LABEL_449:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_612:
                  __break(1u);
                  goto LABEL_613;
                }
              }

LABEL_450:
              if (!v34)
              {
LABEL_674:
                __break(1u);
                goto LABEL_675;
              }

              v105 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (v105)
                {
LABEL_502:
                  if (__OFSUB__(HIDWORD(a18), a18))
                  {
LABEL_619:
                    __break(1u);
LABEL_620:
                    __break(1u);
LABEL_621:
                    __break(1u);
                    goto LABEL_622;
                  }
                }

LABEL_503:
                if (!v36)
                {
LABEL_682:
                  __break(1u);
                  goto LABEL_683;
                }

                if (!v21)
                {
LABEL_684:
                  __break(1u);
                  goto LABEL_685;
                }

LABEL_505:
                *a7 = ccspake_verifier_initialize();
                sub_1C0CF448C(a3, a4);
                v109 = a5;
                v110 = v28;
LABEL_563:
                sub_1C0CF448C(v109, v110);
                goto LABEL_564;
              }

              if (v105 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_503;
              }

              __break(1u);
              goto LABEL_458;
            }

            if (v100 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_450;
            }

            __break(1u);
            goto LABEL_395;
          }

          v23 = v117;
          v63 = *(v117 + 24);
          if (!__OFSUB__(v63, *(v117 + 16)))
          {
            goto LABEL_387;
          }

          __break(1u);
          goto LABEL_153;
        }

        v65 = sub_1C0D7815C();
        if (!__OFSUB__(v64, v65))
        {
          v28 += v64 - v65;
          goto LABEL_69;
        }

        goto LABEL_575;
      }

      goto LABEL_568;
    }

    v115 = v20;
    v41 = a1;
    if (a1 <= a1 >> 32)
    {
      v116 = a14;
      v117 = a10;
      v25 = a15;
      v42 = sub_1C0D7812C();
      if (!v42)
      {
        v21 = 0;
        goto LABEL_51;
      }

      v43 = v42;
      v44 = sub_1C0D7815C();
      if (!__OFSUB__(v41, v44))
      {
        v21 = v41 - v44 + v43;
LABEL_51:
        sub_1C0D7814C();
        v28 = a6;
        v59 = a6 >> 62;
        if ((a6 >> 62) > 1)
        {
          if (v59 != 2)
          {
            result = ccrng();
            if (!result)
            {
LABEL_643:
              __break(1u);
              goto LABEL_644;
            }

            v22 = a19;
            v32 = a11;
            v34 = a16;
            v78 = a11 >> 62;
            v24 = a15;
            v36 = a20;
            v35 = a12;
            if ((a11 >> 62) <= 1)
            {
              v25 = a14;
              if (v78)
              {
                v23 = a10;
                if (__OFSUB__(HIDWORD(a10), a10))
                {
LABEL_603:
                  __break(1u);
                  goto LABEL_604;
                }

                goto LABEL_387;
              }

              goto LABEL_386;
            }

            goto LABEL_149;
          }

          v61 = *(a5 + 16);
          v28 = sub_1C0D7812C();
          if (v28)
          {
            v62 = sub_1C0D7815C();
            if (__OFSUB__(v61, v62))
            {
LABEL_577:
              __break(1u);
              goto LABEL_578;
            }

            v28 += v61 - v62;
          }

          v32 = a11;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_653:
            __break(1u);
            goto LABEL_654;
          }

          v22 = a19;
          v34 = a16;
          v63 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v63)
            {
LABEL_467:
              v25 = v116;
              if (__OFSUB__(HIDWORD(v117), v117))
              {
LABEL_614:
                __break(1u);
                goto LABEL_615;
              }

              goto LABEL_472;
            }

            goto LABEL_471;
          }

LABEL_153:
          v24 = v25;
          if (v63 == 2)
          {
            v25 = v116;
            v74 = *(v117 + 24);
            if (!__OFSUB__(v74, *(v117 + 16)))
            {
              goto LABEL_472;
            }

            __break(1u);
LABEL_157:
            v24 = v25;
            if (v74 == 2)
            {
              v25 = v116;
              v77 = *(v117 + 24);
              if (!__OFSUB__(v77, *(v117 + 16)))
              {
                goto LABEL_481;
              }

              __break(1u);
              goto LABEL_161;
            }

LABEL_480:
            v25 = v116;
            goto LABEL_481;
          }

LABEL_471:
          v25 = v116;
LABEL_472:
          v23 = v117;
          if (!v35)
          {
LABEL_676:
            __break(1u);
            goto LABEL_677;
          }

          v107 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (v107 && __OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_621;
            }

            goto LABEL_511;
          }

          if (v107 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
LABEL_511:
            if (!v34)
            {
LABEL_686:
              __break(1u);
              goto LABEL_687;
            }

            v111 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (!v111)
              {
LABEL_540:
                if (!v31)
                {
LABEL_689:
                  __break(1u);
                  goto LABEL_690;
                }

                if (!v21)
                {
LABEL_691:
                  __break(1u);
                  goto LABEL_692;
                }

                if (v28)
                {
                  goto LABEL_562;
                }

                __break(1u);
                goto LABEL_544;
              }

LABEL_539:
              if (__OFSUB__(HIDWORD(a18), a18))
              {
LABEL_624:
                __break(1u);
                goto LABEL_625;
              }

              goto LABEL_540;
            }

            if (v111 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
              goto LABEL_540;
            }

            __break(1u);
LABEL_519:
            if (__OFSUB__(HIDWORD(v25), v25))
            {
LABEL_622:
              __break(1u);
              goto LABEL_623;
            }

            goto LABEL_520;
          }

          __break(1u);
          goto LABEL_480;
        }

        if (!v59)
        {
          v22 = a19;
          result = ccrng();
          if (!result)
          {
LABEL_641:
            __break(1u);
            goto LABEL_642;
          }

          v32 = a11;
          v34 = a16;
          v60 = a11 >> 62;
          v24 = a15;
          v36 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v25 = a14;
            if (v60)
            {
LABEL_362:
              v23 = v117;
              if (__OFSUB__(HIDWORD(v117), v117))
              {
LABEL_601:
                __break(1u);
                goto LABEL_602;
              }

              goto LABEL_369;
            }

            goto LABEL_368;
          }

LABEL_141:
          v25 = v116;
          if (v60 == 2)
          {
            v23 = v117;
            v66 = *(v117 + 24);
            if (!__OFSUB__(v66, *(v117 + 16)))
            {
              goto LABEL_369;
            }

            __break(1u);
            goto LABEL_145;
          }

LABEL_368:
          v23 = v117;
LABEL_369:
          if (!v35)
          {
LABEL_662:
            __break(1u);
            goto LABEL_663;
          }

          v98 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (v98)
            {
LABEL_431:
              if (__OFSUB__(HIDWORD(v25), v25))
              {
LABEL_610:
                __break(1u);
                goto LABEL_611;
              }
            }

LABEL_432:
            if (!v34)
            {
LABEL_672:
              __break(1u);
              goto LABEL_673;
            }

            v103 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (v103)
              {
                goto LABEL_494;
              }

LABEL_495:
              if (!v36)
              {
LABEL_680:
                __break(1u);
                goto LABEL_681;
              }

              if (v21)
              {
                goto LABEL_505;
              }

              __break(1u);
              goto LABEL_498;
            }

            if (v103 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
              goto LABEL_495;
            }

            __break(1u);
            goto LABEL_440;
          }

          if (v98 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
            goto LABEL_432;
          }

          __break(1u);
          goto LABEL_377;
        }

        if (a5 <= a5 >> 32)
        {
          v28 = sub_1C0D7812C();
          if (v28)
          {
            v76 = sub_1C0D7815C();
            if (__OFSUB__(a5, v76))
            {
LABEL_579:
              __break(1u);
LABEL_580:
              __break(1u);
LABEL_581:
              __break(1u);
LABEL_582:
              __break(1u);
LABEL_583:
              __break(1u);
              goto LABEL_584;
            }

            v28 += a5 - v76;
          }

          v32 = a11;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_670:
            __break(1u);
            goto LABEL_671;
          }

          v22 = a19;
          v34 = a16;
          v77 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v77)
            {
LABEL_528:
              v25 = v116;
              if (__OFSUB__(HIDWORD(v117), v117))
              {
LABEL_623:
                __break(1u);
                goto LABEL_624;
              }

              goto LABEL_531;
            }

            goto LABEL_530;
          }

LABEL_161:
          v24 = v25;
          if (v77 == 2)
          {
            v25 = v116;
            if (!__OFSUB__(*(v117 + 24), *(v117 + 16)))
            {
              goto LABEL_531;
            }

            __break(1u);
            goto LABEL_165;
          }

LABEL_530:
          v25 = v116;
LABEL_531:
          v23 = v117;
          if (!v35)
          {
LABEL_688:
            __break(1u);
            goto LABEL_689;
          }

          v113 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (!v113)
            {
              goto LABEL_550;
            }

            goto LABEL_549;
          }

          if (v113 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
            goto LABEL_550;
          }

          __break(1u);
          goto LABEL_539;
        }

        goto LABEL_571;
      }

LABEL_567:
      __break(1u);
LABEL_568:
      __break(1u);
LABEL_569:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_570:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_571:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_572;
    }

    __break(1u);
LABEL_566:
    __break(1u);
    goto LABEL_567;
  }

  if (v27 != 2)
  {
    v45 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      if (v45 != 2)
      {
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v72 = a11 >> 62;
          v34 = a16;
          if ((a11 >> 62) <= 1)
          {
            v36 = a20;
            v35 = a12;
            v23 = a10;
            if (v72 && __OFSUB__(HIDWORD(a10), a10))
            {
              goto LABEL_583;
            }

LABEL_215:
            if (v35)
            {
              v84 = v24 >> 62;
              if ((v24 >> 62) > 1)
              {
                if (v84 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
                {
                  __break(1u);
LABEL_223:
                  if (!__OFSUB__(HIDWORD(v25), v25))
                  {
                    goto LABEL_224;
                  }

LABEL_584:
                  __break(1u);
                  goto LABEL_585;
                }
              }

              else if (v84)
              {
                goto LABEL_250;
              }

LABEL_251:
              if (v34)
              {
                v88 = v22 >> 62;
                if ((v22 >> 62) <= 1)
                {
                  if (v88)
                  {
LABEL_312:
                    if (__OFSUB__(HIDWORD(a18), a18))
                    {
LABEL_595:
                      __break(1u);
LABEL_596:
                      __break(1u);
                      goto LABEL_597;
                    }
                  }

LABEL_313:
                  if (!v36)
                  {
LABEL_656:
                    __break(1u);
                    goto LABEL_657;
                  }

                  goto LABEL_509;
                }

                if (v88 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                {
                  goto LABEL_313;
                }

                __break(1u);
LABEL_259:
                v25 = v116;
                if (!__OFSUB__(HIDWORD(v117), v117))
                {
LABEL_266:
                  v23 = v117;
                  if (v35)
                  {
                    v89 = v24 >> 62;
                    if ((v24 >> 62) <= 1)
                    {
                      if (v89 && __OFSUB__(HIDWORD(v25), v25))
                      {
                        goto LABEL_596;
                      }

                      goto LABEL_316;
                    }

                    if (v89 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                    {
LABEL_316:
                      if (!v34)
                      {
LABEL_657:
                        __break(1u);
                        goto LABEL_658;
                      }

                      v93 = v22 >> 62;
                      if ((v22 >> 62) <= 1)
                      {
                        if (!v93)
                        {
LABEL_407:
                          if (!v31)
                          {
LABEL_666:
                            __break(1u);
                            goto LABEL_667;
                          }

                          if (v28)
                          {
                            goto LABEL_509;
                          }

                          __break(1u);
                          goto LABEL_410;
                        }

LABEL_406:
                        if (__OFSUB__(HIDWORD(a18), a18))
                        {
LABEL_605:
                          __break(1u);
                          goto LABEL_606;
                        }

                        goto LABEL_407;
                      }

                      if (v93 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                      {
                        goto LABEL_407;
                      }

                      __break(1u);
                      goto LABEL_324;
                    }

                    __break(1u);
                    goto LABEL_274;
                  }

LABEL_649:
                  __break(1u);
                  goto LABEL_650;
                }

                goto LABEL_588;
              }

LABEL_648:
              __break(1u);
              goto LABEL_649;
            }

            goto LABEL_640;
          }

          goto LABEL_121;
        }

        goto LABEL_631;
      }

      v116 = a14;
      v117 = a10;
      v115 = a15;
      v24 = a19;
      v50 = *(a5 + 16);
      v51 = sub_1C0D7812C();
      if (!v51)
      {
LABEL_165:
        v28 = 0;
LABEL_166:
        v32 = v26;
        sub_1C0D7814C();
        result = ccrng();
        if (result)
        {
          v22 = v24;
          v34 = v23;
          v79 = v26 >> 62;
          v31 = a20;
          v35 = a12;
          if ((v26 >> 62) <= 1)
          {
            v24 = v115;
            if (v79)
            {
              goto LABEL_292;
            }

LABEL_294:
            v25 = v116;
            goto LABEL_295;
          }

          v24 = v115;
          if (v79 != 2)
          {
            goto LABEL_294;
          }

          v25 = v116;
          if (!__OFSUB__(*(v117 + 24), *(v117 + 16)))
          {
            goto LABEL_295;
          }

          __break(1u);
          goto LABEL_174;
        }

        goto LABEL_635;
      }

      v52 = v51;
      v53 = sub_1C0D7815C();
      if (!__OFSUB__(v50, v53))
      {
        v28 = v50 - v53 + v52;
        goto LABEL_166;
      }

      goto LABEL_573;
    }

    if (!v45)
    {
      v32 = a11;
      v26 = a6;
      result = ccrng();
      if (result)
      {
        v46 = a11 >> 62;
        v34 = a16;
        if ((a11 >> 62) <= 1)
        {
          v36 = a20;
          v35 = a12;
          v23 = a10;
          if (!v46 || !__OFSUB__(HIDWORD(a10), a10))
          {
            goto LABEL_199;
          }

          goto LABEL_581;
        }

LABEL_113:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v46 != 2)
        {
          goto LABEL_199;
        }

        v71 = *(a10 + 24);
        if (!__OFSUB__(v71, *(a10 + 16)))
        {
          goto LABEL_199;
        }

        __break(1u);
LABEL_117:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v71 != 2)
        {
          goto LABEL_207;
        }

        v72 = *(a10 + 24);
        if (!__OFSUB__(v72, *(a10 + 16)))
        {
          goto LABEL_207;
        }

        __break(1u);
LABEL_121:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v72 != 2)
        {
          goto LABEL_215;
        }

        v49 = *(a10 + 24);
        if (!__OFSUB__(v49, *(a10 + 16)))
        {
          goto LABEL_215;
        }

        __break(1u);
        goto LABEL_125;
      }

      goto LABEL_629;
    }

    v116 = a14;
    v117 = a10;
    v115 = a15;
    v67 = a5;
    if (a5 <= a5 >> 32)
    {
      v24 = a19;
      v68 = sub_1C0D7812C();
      if (!v68)
      {
LABEL_174:
        v28 = 0;
LABEL_175:
        sub_1C0D7814C();
        result = ccrng();
        if (!result)
        {
LABEL_644:
          __break(1u);
          goto LABEL_645;
        }

        v32 = v26;
        v22 = v24;
        v34 = v23;
        v80 = v26 >> 62;
        v31 = a20;
        v35 = a12;
        if ((v26 >> 62) > 1)
        {
          v24 = v115;
          if (v80 == 2)
          {
            v25 = v116;
            if (!__OFSUB__(*(v117 + 24), *(v117 + 16)))
            {
              goto LABEL_398;
            }

            __break(1u);
            goto LABEL_183;
          }
        }

        else
        {
          v24 = v115;
          if (v80)
          {
LABEL_395:
            v25 = v116;
            if (__OFSUB__(HIDWORD(v117), v117))
            {
LABEL_604:
              __break(1u);
              goto LABEL_605;
            }

LABEL_398:
            v23 = v117;
            if (!v35)
            {
LABEL_665:
              __break(1u);
              goto LABEL_666;
            }

            v101 = v24 >> 62;
            if ((v24 >> 62) > 1)
            {
              if (v101 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
                __break(1u);
                goto LABEL_406;
              }
            }

            else if (v101)
            {
LABEL_458:
              if (__OFSUB__(HIDWORD(v25), v25))
              {
LABEL_613:
                __break(1u);
                goto LABEL_614;
              }
            }

            if (!v34)
            {
LABEL_675:
              __break(1u);
              goto LABEL_676;
            }

            v106 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (v106 && __OFSUB__(HIDWORD(a18), a18))
              {
                goto LABEL_620;
              }

              goto LABEL_507;
            }

            if (v106 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
LABEL_507:
              if (!v31)
              {
LABEL_683:
                __break(1u);
                goto LABEL_684;
              }

              if (!v28)
              {
LABEL_685:
                __break(1u);
                goto LABEL_686;
              }

              goto LABEL_509;
            }

            __break(1u);
            goto LABEL_467;
          }
        }

        v25 = v116;
        goto LABEL_398;
      }

      v69 = v68;
      v70 = sub_1C0D7815C();
      if (!__OFSUB__(v67, v70))
      {
        v28 = v67 - v70 + v69;
        goto LABEL_175;
      }

      goto LABEL_576;
    }

    goto LABEL_569;
  }

  v116 = a14;
  v117 = a10;
  v25 = a15;
  v115 = v20;
  v37 = *(a1 + 16);
  v38 = sub_1C0D7812C();
  if (v38)
  {
    v39 = v38;
    v40 = sub_1C0D7815C();
    if (__OFSUB__(v37, v40))
    {
      goto LABEL_566;
    }

    v21 = v37 - v40 + v39;
  }

  else
  {
    v21 = 0;
  }

  sub_1C0D7814C();
  v28 = a6;
  v54 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v54 != 2)
    {
      result = ccrng();
      if (result)
      {
        v22 = a19;
        v32 = a11;
        v34 = a16;
        v75 = a11 >> 62;
        v24 = a15;
        v36 = a20;
        v35 = a12;
        if ((a11 >> 62) <= 1)
        {
          v25 = a14;
          if (v75)
          {
            v23 = a10;
            if (__OFSUB__(HIDWORD(a10), a10))
            {
LABEL_590:
              __break(1u);
              goto LABEL_591;
            }

LABEL_284:
            if (v35)
            {
              v91 = v24 >> 62;
              if ((v24 >> 62) <= 1)
              {
                if (v91)
                {
LABEL_333:
                  if (__OFSUB__(HIDWORD(v25), v25))
                  {
LABEL_598:
                    __break(1u);
                    goto LABEL_599;
                  }
                }

LABEL_334:
                if (!v34)
                {
LABEL_659:
                  __break(1u);
                  goto LABEL_660;
                }

                v95 = v22 >> 62;
                if ((v22 >> 62) <= 1)
                {
                  if (v95)
                  {
LABEL_414:
                    if (__OFSUB__(HIDWORD(a18), a18))
                    {
LABEL_607:
                      __break(1u);
                      goto LABEL_608;
                    }
                  }

LABEL_415:
                  if (!v36)
                  {
LABEL_668:
                    __break(1u);
                    goto LABEL_669;
                  }

                  if (v21)
                  {
                    goto LABEL_505;
                  }

                  __break(1u);
                  goto LABEL_418;
                }

                if (v95 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                {
                  goto LABEL_415;
                }

                __break(1u);
                goto LABEL_342;
              }

              if (v91 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
                goto LABEL_334;
              }

              __break(1u);
LABEL_292:
              v25 = v116;
              if (!__OFSUB__(HIDWORD(v117), v117))
              {
LABEL_295:
                v23 = v117;
                if (v35)
                {
                  v92 = v24 >> 62;
                  if ((v24 >> 62) > 1)
                  {
                    if (v92 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
                    {
                      __break(1u);
LABEL_303:
                      if (!__OFSUB__(HIDWORD(a18), a18))
                      {
                        goto LABEL_304;
                      }

LABEL_592:
                      __break(1u);
LABEL_593:
                      __break(1u);
LABEL_594:
                      __break(1u);
                      goto LABEL_595;
                    }

                    goto LABEL_343;
                  }

                  if (!v92)
                  {
LABEL_343:
                    if (!v34)
                    {
LABEL_660:
                      __break(1u);
                      goto LABEL_661;
                    }

                    v96 = v22 >> 62;
                    if ((v22 >> 62) <= 1)
                    {
                      if (v96)
                      {
LABEL_418:
                        if (__OFSUB__(HIDWORD(a18), a18))
                        {
LABEL_608:
                          __break(1u);
                          goto LABEL_609;
                        }
                      }

LABEL_419:
                      if (!v31)
                      {
LABEL_669:
                        __break(1u);
                        goto LABEL_670;
                      }

                      if (v28)
                      {
                        goto LABEL_509;
                      }

                      __break(1u);
                      goto LABEL_422;
                    }

                    if (v96 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                    {
                      goto LABEL_419;
                    }

                    __break(1u);
                    goto LABEL_351;
                  }

LABEL_342:
                  if (__OFSUB__(HIDWORD(v25), v25))
                  {
LABEL_599:
                    __break(1u);
                    goto LABEL_600;
                  }

                  goto LABEL_343;
                }

                goto LABEL_652;
              }

LABEL_591:
              __break(1u);
              goto LABEL_592;
            }

LABEL_651:
            __break(1u);
LABEL_652:
            __break(1u);
            goto LABEL_653;
          }

          goto LABEL_283;
        }

LABEL_133:
        v25 = v116;
        if (v75 == 2)
        {
          v23 = v117;
          v58 = *(v117 + 24);
          if (!__OFSUB__(v58, *(v117 + 16)))
          {
            goto LABEL_284;
          }

          __break(1u);
          goto LABEL_137;
        }

LABEL_283:
        v23 = v117;
        goto LABEL_284;
      }

LABEL_634:
      __break(1u);
LABEL_635:
      __break(1u);
      goto LABEL_636;
    }

    v56 = *(a5 + 16);
    v28 = sub_1C0D7812C();
    if (v28)
    {
      v57 = sub_1C0D7815C();
      if (__OFSUB__(v56, v57))
      {
LABEL_574:
        __break(1u);
LABEL_575:
        __break(1u);
LABEL_576:
        __break(1u);
        goto LABEL_577;
      }

      v28 += v56 - v57;
    }

    v32 = a11;
    sub_1C0D7814C();
    result = ccrng();
    if (!result)
    {
LABEL_636:
      __break(1u);
      goto LABEL_637;
    }

    v22 = a19;
    v34 = a16;
    v58 = a11 >> 62;
    v31 = a20;
    v35 = a12;
    if ((a11 >> 62) <= 1)
    {
      v24 = a15;
      if (v58)
      {
LABEL_351:
        v25 = v116;
        if (__OFSUB__(HIDWORD(v117), v117))
        {
LABEL_600:
          __break(1u);
          goto LABEL_601;
        }

        goto LABEL_354;
      }

      goto LABEL_353;
    }

LABEL_137:
    v24 = v25;
    if (v58 == 2)
    {
      v25 = v116;
      v60 = *(v117 + 24);
      if (!__OFSUB__(v60, *(v117 + 16)))
      {
        goto LABEL_354;
      }

      __break(1u);
      goto LABEL_141;
    }

LABEL_353:
    v25 = v116;
LABEL_354:
    v23 = v117;
    if (!v35)
    {
LABEL_661:
      __break(1u);
      goto LABEL_662;
    }

    v97 = v24 >> 62;
    if ((v24 >> 62) <= 1)
    {
      if (v97)
      {
LABEL_422:
        if (__OFSUB__(HIDWORD(v25), v25))
        {
LABEL_609:
          __break(1u);
          goto LABEL_610;
        }
      }

LABEL_423:
      if (!v34)
      {
LABEL_671:
        __break(1u);
        goto LABEL_672;
      }

      v102 = v22 >> 62;
      if ((v22 >> 62) <= 1)
      {
        if (!v102)
        {
          goto LABEL_490;
        }

        goto LABEL_489;
      }

      if (v102 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
      {
        goto LABEL_490;
      }

      __break(1u);
      goto LABEL_431;
    }

    if (v97 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
    {
      goto LABEL_423;
    }

    __break(1u);
    goto LABEL_362;
  }

  if (!v54)
  {
    v22 = a19;
    result = ccrng();
    if (result)
    {
      v32 = a11;
      v34 = a16;
      v55 = a11 >> 62;
      v24 = a15;
      v36 = a20;
      v35 = a12;
      if ((a11 >> 62) <= 1)
      {
        v25 = a14;
        if (v55)
        {
          v23 = a10;
          if (__OFSUB__(HIDWORD(a10), a10))
          {
LABEL_589:
            __break(1u);
            goto LABEL_590;
          }

LABEL_275:
          if (v35)
          {
            v90 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v90)
              {
LABEL_324:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_597:
                  __break(1u);
                  goto LABEL_598;
                }
              }

LABEL_325:
              if (!v34)
              {
LABEL_658:
                __break(1u);
                goto LABEL_659;
              }

              v94 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (v94)
                {
LABEL_410:
                  if (__OFSUB__(HIDWORD(a18), a18))
                  {
LABEL_606:
                    __break(1u);
                    goto LABEL_607;
                  }
                }

LABEL_411:
                if (!v36)
                {
LABEL_667:
                  __break(1u);
                  goto LABEL_668;
                }

                if (v21)
                {
                  goto LABEL_505;
                }

                __break(1u);
                goto LABEL_414;
              }

              if (v94 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_411;
              }

              __break(1u);
              goto LABEL_333;
            }

            if (v90 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_325;
            }

            __break(1u);
            goto LABEL_283;
          }

LABEL_650:
          __break(1u);
          goto LABEL_651;
        }

        goto LABEL_274;
      }

LABEL_129:
      v25 = v116;
      if (v55 == 2)
      {
        v23 = v117;
        v75 = *(v117 + 24);
        if (!__OFSUB__(v75, *(v117 + 16)))
        {
          goto LABEL_275;
        }

        __break(1u);
        goto LABEL_133;
      }

LABEL_274:
      v23 = v117;
      goto LABEL_275;
    }

    goto LABEL_633;
  }

  if (a5 > a5 >> 32)
  {
    goto LABEL_570;
  }

  v28 = sub_1C0D7812C();
  if (v28)
  {
    v73 = sub_1C0D7815C();
    if (__OFSUB__(a5, v73))
    {
LABEL_578:
      __break(1u);
      goto LABEL_579;
    }

    v28 += a5 - v73;
  }

  v32 = a11;
  sub_1C0D7814C();
  result = ccrng();
  if (!result)
  {
LABEL_654:
    __break(1u);
LABEL_655:
    __break(1u);
    goto LABEL_656;
  }

  v22 = a19;
  v34 = a16;
  v74 = a11 >> 62;
  v31 = a20;
  v35 = a12;
  if ((a11 >> 62) > 1)
  {
    goto LABEL_157;
  }

  v24 = a15;
  if (!v74)
  {
    goto LABEL_480;
  }

  v25 = a14;
  if (__OFSUB__(HIDWORD(a10), a10))
  {
LABEL_615:
    __break(1u);
    goto LABEL_616;
  }

LABEL_481:
  v23 = v117;
  if (!v35)
  {
LABEL_677:
    __break(1u);
    goto LABEL_678;
  }

  v108 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v108)
    {
      goto LABEL_520;
    }

    goto LABEL_519;
  }

  if (v108 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
  {
    __break(1u);
LABEL_489:
    if (__OFSUB__(HIDWORD(a18), a18))
    {
LABEL_616:
      __break(1u);
      goto LABEL_617;
    }

LABEL_490:
    if (!v31)
    {
LABEL_678:
      __break(1u);
      goto LABEL_679;
    }

    if (!v21)
    {
LABEL_679:
      __break(1u);
      goto LABEL_680;
    }

    if (!v28)
    {
      __break(1u);
LABEL_494:
      if (__OFSUB__(HIDWORD(a18), a18))
      {
LABEL_617:
        __break(1u);
        goto LABEL_618;
      }

      goto LABEL_495;
    }

LABEL_562:
    *a7 = ccspake_verifier_initialize();
    sub_1C0CF448C(a3, a4);
    v109 = a5;
    v110 = a6;
    goto LABEL_563;
  }

LABEL_520:
  if (!v34)
  {
LABEL_687:
    __break(1u);
    goto LABEL_688;
  }

  v112 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v112 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
    {
      goto LABEL_545;
    }

    __break(1u);
    goto LABEL_528;
  }

  if (v112)
  {
LABEL_544:
    if (__OFSUB__(HIDWORD(a18), a18))
    {
LABEL_625:
      __break(1u);
      goto LABEL_626;
    }
  }

LABEL_545:
  if (!v31)
  {
LABEL_690:
    __break(1u);
    goto LABEL_691;
  }

  if (!v21)
  {
LABEL_692:
    __break(1u);
    goto LABEL_693;
  }

  if (v28)
  {
    goto LABEL_562;
  }

  __break(1u);
LABEL_549:
  if (__OFSUB__(HIDWORD(v25), v25))
  {
LABEL_626:
    __break(1u);
LABEL_627:
    __break(1u);
  }

LABEL_550:
  if (!v34)
  {
LABEL_693:
    __break(1u);
    goto LABEL_694;
  }

  v114 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v114 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
    {
      goto LABEL_559;
    }

    __break(1u);
  }

  else if (!v114)
  {
    goto LABEL_559;
  }

  if (__OFSUB__(HIDWORD(a18), a18))
  {
    goto LABEL_627;
  }

LABEL_559:
  if (!v31)
  {
LABEL_694:
    __break(1u);
    goto LABEL_695;
  }

  if (!v21)
  {
LABEL_695:
    __break(1u);
    goto LABEL_696;
  }

  if (v28)
  {
    goto LABEL_562;
  }

LABEL_696:
  __break(1u);
  return result;
}

uint64_t sub_1C0D507B4(uint64_t result, unint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char **a8)
{
  v10 = a5;
  v11 = a3;
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v23 = a6 >> 62;
      if ((a6 >> 62) <= 1)
      {
        if (v23 && __OFSUB__(HIDWORD(a5), a5))
        {
          goto LABEL_63;
        }

        goto LABEL_42;
      }

      goto LABEL_27;
    }

    v29 = a5;
    v15 = *(result + 16);
    v16 = sub_1C0D7812C();
    if (v16)
    {
      v17 = sub_1C0D7815C();
      if (__OFSUB__(v15, v17))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v16 += v15 - v17;
    }

    result = sub_1C0D7814C();
    v18 = a6 >> 62;
    v11 = a3;
    if ((a6 >> 62) <= 1)
    {
      if (v18)
      {
        v10 = v29;
        if (__OFSUB__(HIDWORD(v29), v29))
        {
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
        }

        goto LABEL_49;
      }

      goto LABEL_48;
    }

LABEL_31:
    if (v18 == 2)
    {
      v10 = v29;
      v22 = *(v29 + 24);
      if (!__OFSUB__(v22, *(v29 + 16)))
      {
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_48:
    v10 = v29;
LABEL_49:
    if (v16)
    {
LABEL_55:
      v27 = *a8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1C0CF48F4(0, *(v27 + 2), 0, v27);
      }

      *a8 = v27;
      goto LABEL_58;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (!v12)
  {
    v13 = a6 >> 62;
    if ((a6 >> 62) <= 1)
    {
      if (!v13)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != 2 || (v23 = *(a5 + 24), !__OFSUB__(v23, *(a5 + 16))))
    {
LABEL_42:
      v25 = *a8;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v25;
      if ((v26 & 1) == 0)
      {
        v25 = sub_1C0CF48F4(0, *(v25 + 2), 0, v25);
      }

      *a8 = v25;
LABEL_58:
      *v11 = ccspake_mac_verify_and_get_session_key();
      return sub_1C0CF448C(v10, a6);
    }

    __break(1u);
LABEL_27:
    if (v23 != 2)
    {
      goto LABEL_42;
    }

    v24 = *(a5 + 16);
    v18 = *(a5 + 24);
    v16 = v18 - v24;
    if (!__OFSUB__(v18, v24))
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_31;
  }

  v29 = a5;
  v19 = result;
  if (result > result >> 32)
  {
    __break(1u);
    goto LABEL_60;
  }

  v16 = sub_1C0D7812C();
  if (!v16)
  {
    goto LABEL_17;
  }

  v21 = sub_1C0D7815C();
  if (__OFSUB__(v19, v21))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v16 += v19 - v21;
LABEL_17:
  result = sub_1C0D7814C();
  v22 = a6 >> 62;
  v11 = a3;
  if ((a6 >> 62) <= 1)
  {
    if (v22)
    {
LABEL_51:
      v10 = v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_65;
      }

      goto LABEL_54;
    }

LABEL_53:
    v10 = v29;
    goto LABEL_54;
  }

LABEL_35:
  if (v22 != 2)
  {
    goto LABEL_53;
  }

  v10 = v29;
  if (__OFSUB__(*(v29 + 24), *(v29 + 16)))
  {
    __break(1u);
LABEL_39:
    if (!__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_42;
    }

    goto LABEL_62;
  }

LABEL_54:
  if (v16)
  {
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

char *sub_1C0D50B94(void *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v14 = sub_1C0D73074(0, a4, a6, a7);
    result = sub_1C0D73074(a4, a5, a6, a7);
    v16 = &result[v14];
    if (__OFADD__(v14, result))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v16 < v14)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v17 = 0;
    if (v16 != v14 && a3)
    {
      if (result >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = result;
      }

      result = memcpy(a2, (a6 + v14), v17);
    }

    v18 = &v17[a4];
    if (__OFADD__(a4, v17))
    {
      goto LABEL_31;
    }

    v19 = a7 - a6;
    if (v18 < 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_18:
    if (v19 >= v18)
    {
      a1[3] = a7;
      a1[4] = v18;
      *a1 = a4;
      a1[1] = a5;
      a1[2] = a6;
      return v17;
    }

    goto LABEL_28;
  }

  v20 = sub_1C0D73074(0, a4, 0, a7);
  result = sub_1C0D73074(a4, a5, 0, a7);
  v21 = &result[v20];
  if (__OFADD__(v20, result))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v21 >= v20)
  {
    if (v21 == v20)
    {
      v17 = 0;
      v18 = a4;
      goto LABEL_17;
    }

    if (a3)
    {
      if (result >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = result;
      }

      result = memcpy(a2, 0, v17);
      v18 = &v17[a4];
      if (!__OFADD__(a4, v17))
      {
LABEL_17:
        v19 = 0;
        if (v18 < 0)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      __break(1u);
    }

    v19 = 0;
    v17 = 0;
    v18 = a4;
    if (a4 < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_1C0D50D78()
{
  result = qword_1EBE6DCC0;
  if (!qword_1EBE6DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DCC0);
  }

  return result;
}

unint64_t sub_1C0D50DCC()
{
  result = qword_1EBE6DCC8;
  if (!qword_1EBE6DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DCC8);
  }

  return result;
}

uint64_t sub_1C0D50E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C0D50E8C()
{
  result = qword_1EBE6DCD8;
  if (!qword_1EBE6DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DCD8);
  }

  return result;
}

unint64_t sub_1C0D50EE4()
{
  result = qword_1EBE6DCE0;
  if (!qword_1EBE6DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DCE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SPAKE2.Spake2Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SPAKE2.Spake2Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0D510B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0D5110C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1C0D5116C(uint64_t a1)
{
  if (!qword_1ED907E58)
  {
    type metadata accessor for SPAKE2.SPAKE2Framer(255);
    v1 = sub_1C0D78D3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED907E58);
    }
  }
}

uint64_t sub_1C0D511F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 56))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1C0D5123C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1C0D51398@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, _DWORD *a5@<X8>)
{
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(a2 + 16);
      v8 = sub_1C0D7812C();
      if (!v8)
      {
        sub_1C0D7814C();
        goto LABEL_18;
      }

      v9 = v8;
      v10 = sub_1C0D7815C();
      if (__OFSUB__(v7, v10))
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      v11 = v7 - v10 + v9;
      sub_1C0D7814C();
      if (!v11)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

LABEL_13:
    result = cche_secret_key_generate_from_seed();
    *a5 = result;
    return result;
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  v12 = a2;
  if (a2 > a2 >> 32)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = sub_1C0D7812C();
  if (!v13)
  {
LABEL_19:
    result = sub_1C0D7814C();
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = sub_1C0D7815C();
  if (__OFSUB__(v12, v15))
  {
    goto LABEL_16;
  }

  v16 = v12 - v15 + v14;
  result = sub_1C0D7814C();
  if (v16)
  {
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t HE.SerializedSecretKey.seed.getter()
{
  v1 = *v0;
  sub_1C0CF6468(*v0, *(v0 + 8));
  return v1;
}

uint64_t HE.SerializedSecretKey.init(seed:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v7 = HIDWORD(result) - result;
  }

LABEL_11:
  result = cche_rng_seed_sizeof();
  if (v7 == result)
  {
    *a3 = v4;
    a3[1] = a2;
  }

  else
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v10 = 0;
    *(v10 + 4) = 1;
    swift_willThrow();
    return sub_1C0CF448C(v4, a2);
  }

  return result;
}

double HE.SerializedSecretKey.init()@<D0>(_OWORD *a2@<X8>)
{
  v3 = cche_rng_seed_sizeof();
  *&v6 = sub_1C0D0F990(v3);
  *(&v6 + 1) = v4;
  sub_1C0D51768(&v6);
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t sub_1C0D516C8(uint64_t result, uint64_t a2)
{
  if (result && a2 - result >= 1)
  {
    result = ccrng();
    if (result)
    {
      return ccrng_generate_bridge();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C0D51768(uint64_t *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {

      sub_1C0CF448C(v3, v2);
      *&v18 = v3;
      *(&v18 + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C0D7BAB0;
      sub_1C0CF448C(0, 0xC000000000000000);
      result = sub_1C0D51A10(&v18);
      v17 = *(&v18 + 1) | 0x4000000000000000;
      *a1 = v18;
      a1[1] = v17;
      return result;
    }

    result = sub_1C0CF448C(v3, v2);
    *&v18 = v3;
    WORD4(v18) = v2;
    BYTE10(v18) = BYTE2(v2);
    BYTE11(v18) = BYTE3(v2);
    BYTE12(v18) = BYTE4(v2);
    BYTE13(v18) = BYTE5(v2);
    BYTE14(v18) = BYTE6(v2);
    if (!BYTE6(v2))
    {
LABEL_6:
      v6 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
      *a1 = v18;
      a1[1] = v6;
      return result;
    }

    result = ccrng();
    if (result)
    {
      result = ccrng_generate_bridge();
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v4 != 2)
  {
    *(&v18 + 7) = 0;
    *&v18 = 0;
    return sub_1C0D516C8(&v18, &v18);
  }

  sub_1C0CF448C(v3, v2);
  *&v18 = v3;
  *(&v18 + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  sub_1C0D7823C();
  v7 = *(&v18 + 1);
  v8 = *(v18 + 16);
  v9 = *(v18 + 24);
  result = sub_1C0D7812C();
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = sub_1C0D7815C();
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    __break(1u);
  }

  v13 = __OFSUB__(v9, v8);
  v14 = v9 - v8;
  if (v13)
  {
    goto LABEL_18;
  }

  v15 = sub_1C0D7814C();
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  result = sub_1C0D516C8(v10 + v12, v10 + v12 + v16);
  *a1 = v18;
  a1[1] = v7 | 0x8000000000000000;
  return result;
}

uint64_t sub_1C0D51A10(int *a1)
{
  result = sub_1C0D7826C();
  v3 = *a1;
  v4 = a1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1C0D7812C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = result;
  result = sub_1C0D7815C();
  v6 = v3 - result;
  if (__OFSUB__(v3, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v4 - v3;
  v8 = sub_1C0D7814C();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  sub_1C0D516C8(v5 + v6, v5 + v6 + v9);
}

uint64_t sub_1C0D51AC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0D51B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_1C0D51B84(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = cche_secret_key_sizeof();
  type metadata accessor for HE.ObjectStorageWithZeroize();
  v6 = swift_allocObject();
  v6[2] = a2;

  v7 = swift_slowAlloc();
  v6[3] = v7;
  v6[4] = v7 + v5;
  sub_1C0D51398(v3, v4, &v11);
  v8 = v11;

  sub_1C0CF448C(v3, v4);

  if (v8)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v9 = v8;
    *(v9 + 4) = 0;
    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1C0D51C90(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if ((result & (result - 1)) != 0)
  {
    return 1 << -__clz(result);
  }

  else if (result <= 1)
  {
    return 1;
  }

  return result;
}

unint64_t sub_1C0D51CC4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((result & (result - 1)) != 0)
  {
    v7 = -__clz(result);
    if ((v7 & 0x3F) != 0x3FLL)
    {
      v8 = 1 << v7;
      goto LABEL_8;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (result <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = result;
  }

LABEL_8:
  result = cche_param_ctx_polynomial_degree();
  if (!result)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v9 = __clz(v8);
  v10 = v9 ^ 0x3F;
  v11 = __clz(result) ^ 0x3F;
  if (v11 < (v9 ^ 0x3F))
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v12 = 5;
    *(v12 + 4) = 1;
    return swift_willThrow();
  }

  if (v9 == 63)
  {
    goto LABEL_34;
  }

  v20 = a4;
  v21 = a3;
  v13 = v11 - (v9 ^ 0x3F) + 1;
  v14 = (v9 ^ 0x3F) - 1;
  v15 = MEMORY[0x1E69E7CC0];
  if (v9 == 0x3F)
  {
LABEL_13:

    return sub_1C0D615B8(a2, v15, v21, v20);
  }

  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1C0CF7C90(0, (v9 ^ 0x3F) & ~((v9 ^ 0x3F) >> 63), 0);
  if (v14 >= -1)
  {
    v16 = 0;
    v15 = v22;
    while (!v16)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (HIDWORD(v13))
      {
        goto LABEL_30;
      }

      if (v13 <= 0x1F)
      {
        v17 = (1 << v13) + 1;
      }

      else
      {
        v17 = 1;
      }

      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1C0CF7C90((v18 > 1), v19 + 1, 1);
      }

      *(v22 + 16) = v19 + 1;
      *(v22 + 4 * v19 + 32) = v17;
      v16 = v13 == v11;
      if (v13 == v11)
      {
        v13 = 0;
      }

      else
      {
        ++v13;
      }

      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1C0D51ED4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      if ((a6 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(a6))
        {
          result = ccrng();
          if (result)
          {
            return cche_encrypt_symmetric();
          }

          goto LABEL_49;
        }

        goto LABEL_38;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    swift_retain_n();
    sub_1C0CF6468(v9, v8);
    sub_1C0CF448C(v9, v8);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v13 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v14 = *(v9 + 16);

    result = sub_1C0D7812C();
    if (result)
    {
      if (__OFSUB__(v14, sub_1C0D7815C()))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      sub_1C0D7814C();
      if ((a6 & 0x8000000000000000) != 0)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (HIDWORD(a6))
      {
LABEL_41:
        __break(1u);
        __break(1u);
        goto LABEL_42;
      }

      result = ccrng();
      if (!result)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v12 = cche_encrypt_symmetric();

      v15 = v13 | 0x8000000000000000;
      *a1 = v9;
LABEL_31:
      a1[1] = v15;
      return v12;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v10)
  {
    swift_retain_n();
    sub_1C0CF448C(v9, v8);
    LOWORD(v20) = v8;
    BYTE2(v20) = BYTE2(v8);
    HIBYTE(v20) = BYTE3(v8);
    LOBYTE(v21) = BYTE4(v8);
    HIBYTE(v21) = BYTE5(v8);
    if ((a6 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(a6))
      {
        result = ccrng();
        if (result)
        {
          v12 = cche_encrypt_symmetric();

          *a1 = v9;
          a1[1] = v20 | ((v21 | (BYTE6(v8) << 16)) << 32);
          return v12;
        }

        goto LABEL_48;
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_34;
  }

  v16 = v8 & 0x3FFFFFFFFFFFFFFFLL;
  swift_retain_n();
  sub_1C0CF6468(v9, v8);
  sub_1C0CF448C(v9, v8);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  v17 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v17 < v9)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (sub_1C0D7812C() && __OFSUB__(v9, sub_1C0D7815C()))
    {
LABEL_45:
      __break(1u);
    }

    sub_1C0D7818C();
    swift_allocObject();
    v18 = sub_1C0D7810C();

    v16 = v18;
  }

  if (v17 < v9)
  {
    goto LABEL_36;
  }

  result = sub_1C0D7812C();
  if (!result)
  {
    goto LABEL_47;
  }

  if (__OFSUB__(v9, sub_1C0D7815C()))
  {
LABEL_40:
    __break(1u);
    __break(1u);
    goto LABEL_41;
  }

  sub_1C0D7814C();
  if ((a6 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    __break(1u);
    goto LABEL_43;
  }

  if (HIDWORD(a6))
  {
LABEL_43:
    __break(1u);
    __break(1u);
    goto LABEL_44;
  }

  result = ccrng();
  if (result)
  {
    v12 = cche_encrypt_symmetric();

    v15 = v16 | 0x4000000000000000;
    *a1 = v9;
    goto LABEL_31;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1C0D523F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C0D7812C();
  if (!result)
  {
    goto LABEL_8;
  }

  result = sub_1C0D7815C();
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1C0D7814C();
  if (*(a4 + 24))
  {
    return cche_serialize_seeded_ciphertext_coeff();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1C0D52488(uint64_t *result, uint64_t a2)
{
  v4 = result;
  v6 = *result;
  v5 = result[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      swift_retain_n();
      result = sub_1C0CF448C(v6, v5);
      LOWORD(v18) = v5;
      BYTE2(v18) = BYTE2(v5);
      HIBYTE(v18) = BYTE3(v5);
      LOBYTE(v19) = BYTE4(v5);
      HIBYTE(v19) = BYTE5(v5);
      v20 = BYTE6(v5);
      if (*(a2 + 24))
      {
        v8 = cche_serialize_seeded_ciphertext_coeff();

        result = v8;
        *v4 = v6;
        v4[1] = v18 | ((v19 | (v20 << 16)) << 32);
        return result;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v15 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    swift_retain_n();
    sub_1C0CF6468(v6, v5);
    sub_1C0CF448C(v6, v5);
    *v4 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    v16 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v16 < v6)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (sub_1C0D7812C() && __OFSUB__(v6, sub_1C0D7815C()))
      {
LABEL_21:
        __break(1u);
      }

      sub_1C0D7818C();
      swift_allocObject();
      v17 = sub_1C0D7810C();

      v15 = v17;
    }

    if (v16 >= v6)
    {

      v14 = sub_1C0D523F0(v6, v6 >> 32, v15, a2);

      *v4 = v6;
      v4[1] = v15 | 0x4000000000000000;
      if (!v2)
      {
        return v14;
      }

      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v7 != 2)
  {
    if (*(a2 + 24))
    {
      return cche_serialize_seeded_ciphertext_coeff();
    }

    goto LABEL_23;
  }

  swift_retain_n();
  v9 = v2;
  sub_1C0CF6468(v6, v5);
  sub_1C0CF448C(v6, v5);
  *v4 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  sub_1C0D7823C();
  v10 = v6;
  v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;
  v13 = *(v10 + 16);
  v12 = *(v10 + 24);

  v14 = sub_1C0D523F0(v13, v12, v11, a2);

  *v4 = v10;
  v4[1] = v11 | 0x8000000000000000;
  if (!v9)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1C0D52840(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v108 = *MEMORY[0x1E69E9840];
  v105 = a2;
  v9 = *(a2 + 32);
  v10 = cche_param_ctx_polynomial_degree();
  v11 = *(a4 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (a4 + 32);
    v14 = *(a4 + 16);
    do
    {
      v15 = *v13++;
      v16 = __OFADD__(v12, v15);
      v12 += v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_97;
      }

      --v14;
    }

    while (v14);
  }

  else
  {
    v12 = 0;
  }

  v101 = a1;
  v97 = v11;
  v98 = a4;
  inited = v10;
  v18 = sub_1C0D33418(v10, v12);
  v19 = MEMORY[0x1E69E7CC0];
  if (inited)
  {
    v20 = sub_1C0D78C2C();
    *(v20 + 16) = inited;
    bzero((v20 + 32), 8 * inited);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1C0D5FC34(v20, v18);

  if (!inited)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v22 = v12 % inited;
  if (v12 % inited < 0)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if ((v22 & (v22 - 1)) != 0 && (-__clz(v22) & 0x3F) == 0x3F)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *&v107 = 0;
  LODWORD(v23) = cche_param_ctx_plaintext_modulus_inverse();
  if (v23 || (v24 = v107, *&v107 = 0, v23 = cche_param_ctx_plaintext_modulus_inverse(), v23))
  {
    v25 = v23;
    sub_1C0CF8DE0();
    swift_allocError();
    *v26 = v25;
    *(v26 + 4) = 0;
    swift_willThrow();

    return a3;
  }

  v103 = v24;
  *&v104 = inited;
  v99 = v4;
  v100 = v9;
  v95 = a3;
  v96 = v21;
  v93 = v18;
  v94 = &v90;
  v102 = v107;
  v28 = v101;
  v29 = *(v101 + 16);
  v30 = v97;
  if (v97 >= v29)
  {
    v31 = *(v101 + 16);
  }

  else
  {
    v31 = v97;
  }

  *&v107 = v19;
  sub_1C0CF7C60(v23, v31, 0);
  v32 = v31;
  v12 = v107;
  v18 = 0;
  if (v31)
  {
    v5 = v28 + 32;
    inited = v98 + 32;
    v33 = v29;
    v34 = v30;
    v35 = v30;
    v36 = v29;
    while (v33)
    {
      if (!v34)
      {
        goto LABEL_100;
      }

      v37 = v18 + *v5;
      if (__OFADD__(v18, *v5))
      {
        goto LABEL_101;
      }

      v16 = __OFADD__(v18, *inited);
      v18 += *inited;
      if (v16)
      {
        goto LABEL_102;
      }

      *&v107 = v12;
      v39 = *(v12 + 16);
      v38 = *(v12 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v90 = v32;
        v91 = v36;
        v92 = v39 + 1;
        sub_1C0CF7C60((v38 > 1), v39 + 1, 1);
        v36 = v91;
        v40 = v92;
        v32 = v90;
        v35 = v97;
        v12 = v107;
      }

      --v34;
      *(v12 + 16) = v40;
      *(v12 + 8 * v39 + 32) = v37;
      --v33;
      inited += 8;
      v5 += 8;
      if (!--v31)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v35 = v30;
  v36 = v29;
LABEL_32:
  if (v36 > v35)
  {
    v5 = v101 + 32;
    v41 = v98 + 32;
    inited = v96;
    while (v32 < v36)
    {
      v42 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_108;
      }

      if (v35 == v32)
      {
        goto LABEL_45;
      }

      if (v32 >= v35)
      {
        goto LABEL_109;
      }

      v43 = *(v5 + 8 * v32);
      v44 = v18 + v43;
      if (__OFADD__(v18, v43))
      {
        goto LABEL_110;
      }

      v45 = *(v41 + 8 * v32);
      v16 = __OFADD__(v18, v45);
      v18 += v45;
      if (v16)
      {
        goto LABEL_111;
      }

      *&v107 = v12;
      v47 = *(v12 + 16);
      v46 = *(v12 + 24);
      if (v47 >= v46 >> 1)
      {
        v90 = v32;
        v91 = v36;
        sub_1C0CF7C60((v46 > 1), v47 + 1, 1);
        v32 = v90;
        v36 = v91;
        v35 = v97;
        v12 = v107;
      }

      *(v12 + 16) = v47 + 1;
      *(v12 + 8 * v47 + 32) = v44;
      ++v32;
      if (v42 == v36)
      {
        goto LABEL_45;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  inited = v96;
LABEL_45:
  v5 = *(v12 + 16);
  if (v5)
  {
    v101 = v93 - 1;
    if (!__OFSUB__(v93, 1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v104;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_48;
      }

      goto LABEL_120;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    inited = sub_1C0CFD6D4(inited);
LABEL_48:
    v49 = (v12 + 32);
    v50 = inited;
    v51 = inited + 32;
    do
    {
      v52 = *v49++;
      inited = v52;
      v18 = v52 / v18;
      if (v18 >= v101)
      {
        v53 = v103;
      }

      else
      {
        v53 = v102;
      }

      if (v18 < 0)
      {
        goto LABEL_103;
      }

      if (v18 >= *(v50 + 16))
      {
        goto LABEL_104;
      }

      v54 = *(v51 + 8 * v18);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *(v51 + 8 * v18) = v54;
      if ((v55 & 1) == 0)
      {
        v54 = sub_1C0CFD6C0(v54);
        *(v51 + 8 * v18) = v54;
      }

      v56 = inited - v18 * v104;
      if ((v56 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }

      v18 = v104;
      if (v56 >= *(v54 + 2))
      {
        goto LABEL_106;
      }

      *&v54[8 * v56 + 32] = v53;
      --v5;
    }

    while (v5);
    inited = v50;
  }

  v57 = *(inited + 16);
  if (!v57)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v106 = MEMORY[0x1E69E7CC0];
  v12 = &v106;
  sub_1C0CF7A90(0, v57, 0);
  v5 = 0;
  a3 = v106;
  v96 = inited;
  while (1)
  {
    if (v5 >= *(inited + 16))
    {
      goto LABEL_115;
    }

    v18 = *(inited + 8 * v5 + 32);
    cche_plaintext_sizeof();
    sub_1C0D78BFC();

    v58 = swift_slowAlloc();
    if (HIDWORD(*(v18 + 16)))
    {
      goto LABEL_116;
    }

    v59 = v58;
    v60 = cche_encode_poly_uint64();
    if (v60)
    {
      v84 = v60;
      sub_1C0CF8DE0();
      swift_allocError();
      *v85 = v84;
      *(v85 + 4) = 0;
      swift_willThrow();

      MEMORY[0x1C68E4EB0](v59, -1, -1);

LABEL_93:

      return a3;
    }

    *&v104 = a3;
    v61 = cche_param_ctx_ciphertext_ctx_nmoduli();
    v12 = cche_ciphertext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    inited = swift_initStackObject();
    *(inited + 16) = v105;

    a3 = swift_slowAlloc();
    *(inited + 24) = a3;
    *(inited + 32) = a3 + v12;
    result = cche_rng_seed_sizeof();
    if (result)
    {
      v62 = result;
      if (result < 15)
      {
        if (result < 0)
        {
          goto LABEL_117;
        }

        result = 0;
        v64 = v102 & 0xF00000000000000 | (v62 << 48);
        v102 = v64;
      }

      else
      {
        sub_1C0D7818C();
        swift_allocObject();
        v63 = sub_1C0D7813C();
        if (v62 >= 0x7FFFFFFF)
        {
          sub_1C0D7828C();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v62;
          v64 = v63 | 0x8000000000000000;
        }

        else
        {
          result = v62 << 32;
          v64 = v63 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v64 = 0xC000000000000000;
    }

    *&v107 = result;
    *(&v107 + 1) = v64;
    v65 = *(v95 + 24);
    if (!v65)
    {
      __break(1u);
      return result;
    }

    v66 = v57;
    v67 = v61;
    v68 = v105;

    v69 = v65;
    v70 = v99;
    v71 = sub_1C0D51ED4(&v107, a3, v59, v68, v69, v67);

    if (v71)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v86 = v71;
      *(v86 + 4) = 0;
      swift_willThrow();
      swift_setDeallocating();

      MEMORY[0x1C68E4EB0](a3, -1, -1);

      sub_1C0CF448C(v107, *(&v107 + 1));

      MEMORY[0x1C68E4EB0](v59, -1, -1);

      goto LABEL_93;
    }

    v12 = *(&v107 + 1);
    v72 = v107;
    sub_1C0CF6468(v107, *(&v107 + 1));
    v103 = v12;
    sub_1C0CF448C(v72, v12);
    v73 = cche_serialize_seeded_ciphertext_coeff_nbytes();
    if (v73)
    {
      v74 = v73;
      if (v73 <= 14)
      {
        if (v73 < 0)
        {
          goto LABEL_118;
        }

        v73 = 0;
        v76 = v101 & 0xF00000000000000 | (v74 << 48);
        v101 = v76;
      }

      else
      {
        sub_1C0D7818C();
        swift_allocObject();
        v75 = sub_1C0D7813C();
        if (v74 >= 0x7FFFFFFF)
        {
          sub_1C0D7828C();
          v73 = swift_allocObject();
          *(v73 + 16) = 0;
          *(v73 + 24) = v74;
          v76 = v75 | 0x8000000000000000;
        }

        else
        {
          v73 = v74 << 32;
          v76 = v75 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v76 = 0xC000000000000000;
    }

    *&v107 = v73;
    *(&v107 + 1) = v76;
    v77 = sub_1C0D52488(&v107, inited);
    v99 = v70;
    a3 = v104;
    if (v77)
    {
      break;
    }

    MEMORY[0x1C68E4EB0](v59, -1, -1);

    swift_setDeallocating();
    v12 = *(inited + 16);
    v78 = *(inited + 24);

    if (v78)
    {
      MEMORY[0x1C68E4EB0](v78, -1, -1);
    }

    inited = v96;

    v79 = v107;
    v106 = a3;
    v81 = *(a3 + 16);
    v80 = *(a3 + 24);
    if (v81 >= v80 >> 1)
    {
      v12 = &v106;
      v104 = v107;
      sub_1C0CF7A90((v80 > 1), v81 + 1, 1);
      v79 = v104;
      a3 = v106;
    }

    *(a3 + 16) = v81 + 1;
    v82 = a3 + 32 * v81;
    *(v82 + 32) = v79;
    ++v5;
    v83 = v103;
    *(v82 + 48) = v72;
    *(v82 + 56) = v83;
    v57 = v66;
    if (v66 == v5)
    {

      return a3;
    }
  }

  v87 = v77;

  sub_1C0CF8DE0();
  swift_allocError();
  *v88 = v87;
  *(v88 + 4) = 0;
  swift_willThrow();

  MEMORY[0x1C68E4EB0](v59, -1, -1);

  sub_1C0CF448C(v72, v103);
  swift_setDeallocating();
  v89 = *(inited + 24);
  if (v89)
  {

    MEMORY[0x1C68E4EB0](v89, -1, -1);
    goto LABEL_98;
  }

LABEL_97:

LABEL_98:

  sub_1C0CF448C(v107, *(&v107 + 1));

  return a3;
}

uint64_t SKANUTClient.input.getter()
{
  v1 = *(v0 + 24);
  sub_1C0CF6468(v1, *(v0 + 32));
  return v1;
}

uint64_t static SKANUTClient.defaultToken()()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = sub_1C0D7825C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (v13 - v5);
  type metadata accessor for SecureBytes.Backing(0);
  v7 = swift_allocObject();
  v7[1] = xmmword_1C0D7DE00;
  if (_swift_stdlib_malloc_size(v7) < 64)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13[0] = 0;
  if (!ccrng())
  {
    goto LABEL_10;
  }

  if (v13[0])
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  *(v7 + 2) = 32;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *v6 = sub_1C0D051CC;
  v6[1] = v8;
  (*(v1 + 104))(v6, *MEMORY[0x1E6969028], v0);

  sub_1C0D7824C();
  sub_1C0D7818C();
  swift_allocObject();

  sub_1C0D7810C();
  (*(v1 + 16))(v4, v6, v0);
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E6969010])
  {
    v9 = sub_1C0D7817C();
    *v10 |= 0x8000000000000000;
    v9(v13, 0);

    (*(v1 + 8))(v6, v0);
  }

  else
  {
    v11 = *(v1 + 8);
    v11(v4, v0);

    v11(v6, v0);
  }

  return 0x2000000000;
}

void SKANUTClient.init(privateInput:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C0D786CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  sub_1C0D7896C();
  sub_1C0CF6468(a1, a2);
  sub_1C0D54A1C();
  sub_1C0D786EC();
  v10 = sub_1C0D786BC();
  (*(v7 + 8))(v9, v6);
  v11 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C0D1AAB4(&v16, a1, a2, v11, 2u, 4uLL, 0);
    sub_1C0CF448C(a1, a2);

    v14 = v16;
    v15 = v17;
    *a3 = 2;
    *(a3 + 8) = 4;
    *(a3 + 16) = v15;
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;
    *(a3 + 40) = v13;
    *(a3 + 48) = v14;
  }

  else
  {
    __break(1u);
  }
}

id SKANUTClient.blindedElement()()
{
  result = [*(v0 + 48) serializedPublicKey_];
  if (result)
  {
    v2 = result;
    v3 = sub_1C0D7832C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *SKANUTClient.finalize(publicInput:evaluatedElement:proof:publicKey:)(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v100 = a7;
  v97 = a3;
  v98 = a4;
  v109 = *MEMORY[0x1E69E9840];
  v105 = sub_1C0D786CC();
  v15 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v8;
  v19 = *(v8 + 1);
  v20 = v8[16];
  v21 = *(v8 + 3);
  v22 = *(v8 + 4);
  v23 = a6 >> 62;
  v24 = *(v8 + 5);
  v101 = a8;
  if ((a6 >> 62) > 1)
  {
    v25 = 0;
    if (v23 != 2)
    {
      goto LABEL_10;
    }

    v27 = a5[2];
    v26 = a5[3];
    v25 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v23)
  {
    v25 = BYTE6(a6);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a5), a5))
  {
    goto LABEL_32;
  }

  v25 = HIDWORD(a5) - a5;
LABEL_10:
  v96 = v9;
  v104 = a6;
  v88 = v20;
  v89 = v19;
  v90 = v24;
  v91 = v22;
  v92 = v21;
  v93 = v18;
  v94 = a1;
  v95 = a2;
  v28 = objc_opt_self();
  sub_1C0D7896C();
  v29 = sub_1C0D54A1C();
  sub_1C0D786EC();
  v30 = sub_1C0D786BC();
  v32 = *(v15 + 8);
  v31 = v15 + 8;
  v33 = v32;
  v32(v17, v105);
  v34 = [v28 groupOrderByteCountForCP_];
  if (v34 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v34 + 0x4000000000000000 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  if (v25 != 2 * v34)
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v73 = 1;
    swift_willThrow();
    return a5;
  }

  sub_1C0CF6468(a5, v104);
  v35 = v29;
  sub_1C0D786EC();
  v36 = sub_1C0D786BC();
  v37 = v31;
  v38 = v105;
  v103 = v37;
  v33(v17, v105);
  v39 = [v28 groupOrderByteCountForCP_];
  if (v39 < 0)
  {
    goto LABEL_30;
  }

  v87 = a5;
  sub_1C0D01560(v39, a5, v104, &v107);
  a5 = v107;
  v40 = v108;
  v106 = 0;
  sub_1C0CF6468(v107, v108);
  sub_1C0D786EC();
  v41 = sub_1C0D786BC();
  v33(v17, v38);
  v42 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v102 = v33;
  v43 = v42;
  v44 = sub_1C0D7830C();
  v99 = v35;
  v45 = v44;
  v46 = [v43 initWithData:v44 inGroup:v41 reduction:0 corecryptoError:&v106];

  sub_1C0CF448C(a5, v40);
  if (!v46)
  {
    v74 = v106;
    sub_1C0CF8DE0();
    swift_allocError();
    *v75 = v74;
    *(v75 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(a5, v40);
    return a5;
  }

  v86 = v46;
  sub_1C0CF448C(a5, v40);
  v47 = v87;
  v48 = v104;
  sub_1C0CF6468(v87, v104);
  sub_1C0D786EC();
  v49 = sub_1C0D786BC();
  v102(v17, v38);
  v50 = [v28 groupOrderByteCountForCP_];
  if (v50 < 0)
  {
    goto LABEL_31;
  }

  v51 = v38;
  sub_1C0D403E4(v50, v47, v48, &v107);
  v52 = v107;
  v53 = v108;
  v106 = 0;
  sub_1C0CF6468(v107, v108);
  sub_1C0D786EC();
  v54 = sub_1C0D786BC();
  v102(v17, v51);
  v55 = objc_allocWithZone(MEMORY[0x1E6999650]);
  a5 = sub_1C0D7830C();
  v56 = [v55 initWithData:a5 inGroup:v54 reduction:0 corecryptoError:&v106];

  sub_1C0CF448C(v52, v53);
  if (v56)
  {
    sub_1C0CF448C(v52, v53);
    LODWORD(v107) = 0;
    v58 = v100;
    v57 = v101;
    sub_1C0CF6468(v100, v101);
    sub_1C0CF6468(v58, v57);
    v104 = v86;
    v59 = v56;
    sub_1C0D786EC();
    v60 = sub_1C0D786BC();
    v102(v17, v51);
    v61 = objc_allocWithZone(MEMORY[0x1E6999648]);
    a5 = sub_1C0D7830C();
    v62 = [v61 initFromPublicKeyBytes:a5 inGroup:v60 compressed:1 corecryptoError:&v107];

    sub_1C0CF448C(v58, v57);
    v87 = v62;
    if (v62)
    {
      v86 = v59;
      v63 = v104;
      sub_1C0CF448C(v58, v57);
      LODWORD(v107) = 0;
      v64 = v97;
      v65 = v98;
      sub_1C0CF6468(v97, v98);
      sub_1C0CF6468(v64, v65);
      sub_1C0D786EC();
      v66 = sub_1C0D786BC();
      v102(v17, v51);
      v67 = objc_allocWithZone(MEMORY[0x1E6999648]);
      a5 = sub_1C0D7830C();
      v68 = [v67 initFromPublicKeyBytes:a5 inGroup:v66 compressed:1 corecryptoError:&v107];

      sub_1C0CF448C(v64, v65);
      if (v68)
      {
        sub_1C0CF448C(v64, v65);

        v69 = v86;
        v70 = v87;
        v71 = v96;
        sub_1C0D1BA14(v92, v91, v94, v95, v90, v68, v63, v69, v87, v93, v89, v88);
        if (!v71)
        {
          a5 = v72;
        }
      }

      else
      {
        v81 = v107;
        sub_1C0CF8DE0();
        swift_allocError();
        *v82 = v81;
        *(v82 + 4) = 0;
        swift_willThrow();
        sub_1C0CF448C(v64, v65);

        v83 = v86;
      }
    }

    else
    {
      v78 = v107;
      sub_1C0CF8DE0();
      swift_allocError();
      *v79 = v78;
      *(v79 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v58, v57);

      v80 = v104;
    }
  }

  else
  {
    v76 = v106;
    sub_1C0CF8DE0();
    swift_allocError();
    *v77 = v76;
    *(v77 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v52, v53);
  }

  return a5;
}

id SKANUTTestServer.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D7896C();
  sub_1C0D54A1C();
  sub_1C0D786EC();
  v6 = sub_1C0D786BC();
  (*(v3 + 8))(v5, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    *a1 = 2;
    *(a1 + 8) = 4;
    *(a1 + 16) = result;
    *(a1 + 24) = 0;
    *(a1 + 32) = result;

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SKANUTTestServer.publicKey()()
{
  v1 = sub_1C0D786CC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C0D7887C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  sub_1C0D7896C();
  sub_1C0D54A1C();
  sub_1C0D786EC();
  v10 = sub_1C0D786BC();
  (*(v2 + 8))(v4, v1);
  v11 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  v12 = sub_1C0D13834(v9, v11);

  v13 = [v12 serializedPublicKey_];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1C0D7832C();
    v17 = v16;

    v21[2] = v15;
    v21[3] = v17;
    v18 = sub_1C0D7886C();
    v19 = MEMORY[0x1C68E3840](v18);
    (*(v6 + 8))(v8, v5);
    return v19;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*SKANUTTestServer.evaluate(blindedElement:publicInput:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4))(char *, void *)
{
  v47 = a4;
  v46 = a3;
  v57[2] = *MEMORY[0x1E69E9840];
  v7 = sub_1C0D786CC();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v50) = *v4;
  v11 = *(v4 + 1);
  v44 = *(v4 + 2);
  v45 = v11;
  LODWORD(v49) = v4[24];
  LODWORD(v53) = 0;
  sub_1C0D7896C();
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(a1, a2);
  v51 = sub_1C0D54A1C();
  sub_1C0D786EC();
  v12 = sub_1C0D786BC();
  v13 = *(v8 + 8);
  v52 = v7;
  v13(v10, v7);
  v14 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v15 = sub_1C0D7830C();
  v16 = [v14 initFromPublicKeyBytes:v15 inGroup:v12 compressed:1 corecryptoError:&v53];

  sub_1C0CF448C(a1, a2);
  if (!v16)
  {
    v39 = v53;
    sub_1C0CF8DE0();
    swift_allocError();
    *v40 = v39;
    *(v40 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(a1, a2);
    return v13;
  }

  sub_1C0CF448C(a1, a2);
  sub_1C0D786EC();
  v17 = sub_1C0D786BC();
  v13(v10, v52);
  v18 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  if (!((v50 != 1) | v49 & 1))
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();

    goto LABEL_12;
  }

  v20 = v48;
  v21 = sub_1C0D3D2A4(&v53, v16, v46, v47, v18, v50, v45, v44, v49);

  if (v20)
  {
LABEL_12:

    return v13;
  }

  v22 = v53;
  if (!v53)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v54;
  v24 = [v53 serializedBigEndianScalar];
  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = v24;
  v52 = v22;
  v26 = sub_1C0D7832C();
  v28 = v27;

  v51 = v23;
  v29 = [v23 serializedBigEndianScalar];
  if (!v29)
  {
    goto LABEL_17;
  }

  v30 = v29;
  v31 = sub_1C0D7832C();
  v33 = v32;

  v57[0] = v26;
  v57[1] = v28;
  v55 = MEMORY[0x1E6969080];
  v56 = MEMORY[0x1E6969078];
  v53 = v31;
  v54 = v33;
  v34 = __swift_project_boxed_opaque_existential_1(&v53, MEMORY[0x1E6969080]);
  v35 = *v34;
  v36 = v34[1];
  v49 = v28;
  v50 = v26;
  sub_1C0CF6468(v26, v28);
  sub_1C0CF6468(v31, v33);
  sub_1C0D4268C(v35, v36, v57);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v13 = v57[0];
  v37 = [v21 serializedPublicKey_];
  v48 = v21;
  if (v37)
  {
    v38 = v37;
    sub_1C0D7832C();

    sub_1C0CF448C(v31, v33);
    sub_1C0CF448C(v50, v49);

    return v13;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

unint64_t sub_1C0D54938(unint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1C0D7828C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1C0D7812C();
  if (v3)
  {
    result = sub_1C0D7815C();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1C0D7814C();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1C0D77CE4(v3, v7);

  return v8;
}

unint64_t sub_1C0D54A1C()
{
  result = qword_1ED9076B0;
  if (!qword_1ED9076B0)
  {
    sub_1C0D7896C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9076B0);
  }

  return result;
}

uint64_t sub_1C0D54A74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D54ABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D54B28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  result = _s13ClientSecretsVMa_0(319, v6, v7, v8);
  if (v11 <= 0x3F)
  {
    result = _s14KeyCommitmentsVMa(319, v2, v1, v10);
    if (v13 <= 0x3F)
    {
      result = type metadata accessor for ATHM.Ciphersuite(319, v2, v1, v12);
      if (v15 <= 0x3F)
      {
        if (v5 > 0x3F)
        {
          return AssociatedTypeWitness;
        }

        else
        {
          result = _s12TokenRequestVMa(319, v2, v1, v14);
          if (v16 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0D54CF8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v41 = v6;
  v7 = *(v6 + 84);
  v8 = *(swift_checkMetadataState() - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v6 + 80);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v7;
  }

  if (v14 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v15;
  }

  if (v9 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v11 | 7;
  v19 = v11 | 7 | v12;
  v20 = ((v10 + v11) & ~v11) + v10 + v19;
  v21 = v13 + v12;
  v22 = v10 + 7;
  v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + ((v18 + v13 + ((v13 + v12 + ((v13 + v12) & ~v12)) & ~v12)) & ~v18) + 8;
  v24 = v12 + 8;
  v25 = v13 + 7;
  if (v17 < a2)
  {
    v26 = ((((v25 + ((v21 + ((v21 + ((v24 + (v20 & ~v19) + v23) & ~v12)) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v27 = a2 - v17;
    if ((v26 & 0xFFFFFFF8) != 0)
    {
      v28 = 2;
    }

    else
    {
      v28 = v27 + 1;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *(a1 + v26);
        if (!*(a1 + v26))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v31 = *(a1 + v26);
        if (!v31)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_36;
      }

      v31 = *(a1 + v26);
      if (!*(a1 + v26))
      {
        goto LABEL_36;
      }
    }

    v33 = v31 - 1;
    if ((v26 & 0xFFFFFFF8) != 0)
    {
      v33 = 0;
      v34 = *a1;
    }

    else
    {
      v34 = 0;
    }

    return v17 + (v34 | v33) + 1;
  }

LABEL_36:
  if (v7 == v17)
  {
    v35 = *(v41 + 48);
    v36 = a1;
LABEL_38:

    return v35(v36, v7, AssociatedTypeWitness);
  }

  v37 = ~v12;
  v38 = (a1 + v20) & ~v19;
  if (v15 == v17)
  {
    if (v9 < v14)
    {
      v36 = ((v18 + v13 + ((v21 + ((v21 + v38) & v37)) & v37)) & ~v18);
      if (v7 >= 0x7FFFFFFF)
      {
        v35 = *(v41 + 48);
        goto LABEL_38;
      }

      v39 = *((v36 + v22) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_53;
    }
  }

  else
  {
    v38 = (v24 + v38 + v23) & v37;
    if (v9 < v16)
    {
      v39 = *(((((v25 + ((v21 + ((v21 + v38) & v37)) & v37)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_53:
      if (v39 >= 0xFFFFFFFF)
      {
        LODWORD(v39) = -1;
      }

      return (v39 + 1);
    }
  }

  v40 = *(v8 + 48);

  return v40(v38);
}

void sub_1C0D55110(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v47 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_checkMetadataState() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= v11)
  {
    v17 = *(v10 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  if (v11 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = *(v10 + 84);
  }

  v20 = ((v12 + v13) & ~v13) + v12;
  v21 = v13 | 7;
  v22 = v21 | v14;
  v23 = v20 + (v21 | v14);
  v24 = v15 + v14;
  v25 = v21 + v15;
  v26 = v12 + 7;
  v27 = (v26 & 0xFFFFFFFFFFFFFFF8) + 8;
  v28 = ((v21 + v15 + ((v15 + v14 + ((v15 + v14) & ~v14)) & ~v14)) & ~v21) + v27;
  v29 = v14 + 8;
  v30 = (v15 + v14 + ((v15 + v14 + ((v14 + 8 + (v23 & ~(v21 | v14)) + v28) & ~v14)) & ~v14)) & ~v14;
  v31 = v15 + 7;
  v32 = ((((v31 + v30) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 >= a3)
  {
    v36 = 0;
    v37 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (v32)
    {
      v38 = 1;
    }

    else
    {
      v38 = v37;
    }

    if (v32)
    {
      v39 = ~v19 + a2;
      bzero(a1, v32);
      *a1 = v39;
    }

    if (v36 > 1)
    {
      if (v36 == 2)
      {
        *(a1 + v32) = v38;
      }

      else
      {
        *(a1 + v32) = v38;
      }
    }

    else if (v36)
    {
      *(a1 + v32) = v38;
    }

    return;
  }

  v33 = a3 - v19;
  if (v32)
  {
    v34 = 2;
  }

  else
  {
    v34 = v33 + 1;
  }

  if (v34 >= 0x10000)
  {
    v35 = 4;
  }

  else
  {
    v35 = 2;
  }

  if (v34 < 0x100)
  {
    v35 = 1;
  }

  if (v34 >= 2)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = a2 - v19;
  if (a2 > v19)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v36 > 1)
  {
    if (v36 != 2)
    {
      *(a1 + v32) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v32) = 0;
  }

  else if (v36)
  {
    *(a1 + v32) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v9 == v19)
  {
LABEL_43:
    v40 = *(v47 + 56);

    v40(a1, a2, v9, AssociatedTypeWitness);
    return;
  }

  v41 = ~v14;
  v42 = (a1 + v23) & ~v22;
  if (v17 != v19)
  {
    v42 = (v29 + v42 + v28) & v41;
    if (v11 < v18)
    {
      v44 = ((((v31 + ((v24 + ((v24 + v42) & v41)) & v41)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v44 = a2 & 0x7FFFFFFF;
        v44[1] = 0;
      }

      else
      {
        v44[1] = (a2 - 1);
      }

      return;
    }

    goto LABEL_60;
  }

  if (v11 >= v16)
  {
LABEL_60:
    v45 = *(v10 + 56);

    v45(v42, a2);
    return;
  }

  a1 = ((v25 + ((v24 + ((v24 + v42) & v41)) & v41)) & ~v21);
  if (v16 >= a2)
  {
    if (v9 >= 0x7FFFFFFF)
    {
      goto LABEL_43;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v46 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v46 = (a2 - 1);
    }

    *((a1 + v26) & 0xFFFFFFFFFFFFFFF8) = v46;
  }

  else if ((v26 & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v43 = ~v16 + a2;
    bzero(((v25 + ((v24 + ((v24 + v42) & v41)) & v41)) & ~v21), v27);
    *a1 = v43;
  }
}

uint64_t sub_1C0D555C4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D55634(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1C0D55784(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata accessor for CryptoKitSecretSharing_SecretShare(uint64_t a1)
{
  result = qword_1EBE6DDF0;
  if (!qword_1EBE6DDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C0D55A10(uint64_t a1)
{
  sub_1C0D783EC();
  if (v1 <= 0x3F)
  {
    sub_1C0D55AF0(319, &qword_1EBE6DE00, MEMORY[0x1E69E7668]);
    if (v2 <= 0x3F)
    {
      sub_1C0D55AF0(319, &qword_1ED907EB0, MEMORY[0x1E6969080]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C0D55AF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C0D78D3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C0D55B3C()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72DA8);
  __swift_project_value_buffer(v0, qword_1EBE72DA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C0D7CAE0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C0D7857C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "share_x";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "share_y";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "threshold";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "iv";
  *(v15 + 1) = 2;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "ciphertext";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "tag";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "associated_data";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  return sub_1C0D7858C();
}

uint64_t sub_1C0D55EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C0D7844C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result >= 8)
      {
        if (result == 8)
        {
          type metadata accessor for CryptoKitSecretSharing_SecretShare(0);
          sub_1C0D7847C();
        }
      }

      else
      {
LABEL_2:
        sub_1C0D7848C();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      type metadata accessor for CryptoKitSecretSharing_SecretShare(0);
      sub_1C0D7849C();
    }

    else if (result == 1 || result == 2)
    {
      sub_1C0D784AC();
    }
  }
}

uint64_t sub_1C0D55FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C0D7855C(), !v4))
  {
    if (!*(v3 + 4) || (result = sub_1C0D7855C(), !v4))
    {
      v9 = *(v3 + 8);
      v10 = *(v3 + 16);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 != 2)
        {
          goto LABEL_14;
        }

        v12 = *(v9 + 16);
        v13 = *(v9 + 24);
      }

      else
      {
        if (!v11)
        {
          if ((v10 & 0xFF000000000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v12 = v9;
        v13 = v9 >> 32;
      }

      if (v12 == v13)
      {
        goto LABEL_14;
      }

LABEL_13:
      result = sub_1C0D7854C();
      if (v4)
      {
        return result;
      }

LABEL_14:
      result = sub_1C0D56230(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }

      v14 = *(v3 + 24);
      v15 = *(v3 + 32);
      v16 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_25;
        }

        v17 = *(v14 + 16);
        v18 = *(v14 + 24);
      }

      else
      {
        if (!v16)
        {
          if ((v15 & 0xFF000000000000) == 0)
          {
LABEL_25:
            v19 = *(v3 + 40);
            v20 = *(v3 + 48);
            v21 = v20 >> 62;
            if ((v20 >> 62) > 1)
            {
              if (v21 != 2)
              {
                goto LABEL_34;
              }

              v22 = *(v19 + 16);
              v23 = *(v19 + 24);
            }

            else
            {
              if (!v21)
              {
                if ((v20 & 0xFF000000000000) == 0)
                {
LABEL_34:
                  v24 = *(v3 + 56);
                  v25 = *(v3 + 64);
                  v26 = v25 >> 62;
                  if ((v25 >> 62) > 1)
                  {
                    if (v26 != 2)
                    {
                      goto LABEL_43;
                    }

                    v27 = *(v24 + 16);
                    v28 = *(v24 + 24);
                  }

                  else
                  {
                    if (!v26)
                    {
                      if ((v25 & 0xFF000000000000) == 0)
                      {
                        goto LABEL_43;
                      }

                      goto LABEL_42;
                    }

                    v27 = v24;
                    v28 = v24 >> 32;
                  }

                  if (v27 != v28)
                  {
LABEL_42:
                    sub_1C0D7854C();
                  }

LABEL_43:
                  sub_1C0D562A8(v3);
                  type metadata accessor for CryptoKitSecretSharing_SecretShare(0);
                  return sub_1C0D783CC();
                }

LABEL_33:
                sub_1C0D7854C();
                goto LABEL_34;
              }

              v22 = v19;
              v23 = v19 >> 32;
            }

            if (v22 == v23)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

LABEL_24:
          sub_1C0D7854C();
          goto LABEL_25;
        }

        v17 = v14;
        v18 = v14 >> 32;
      }

      if (v17 == v18)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_1C0D56230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CryptoKitSecretSharing_SecretShare(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return sub_1C0D7855C();
  }

  return result;
}

uint64_t sub_1C0D562A8(uint64_t a1)
{
  result = type metadata accessor for CryptoKitSecretSharing_SecretShare(0);
  v3 = a1 + *(result + 48);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_1C0CF6468(*v3, *(v3 + 8));
    sub_1C0D7854C();
    return sub_1C0D13830(v5, v4);
  }

  return result;
}

double sub_1C0D56348@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_1C0D7DF40;
  *(a2 + 32) = xmmword_1C0D7DF40;
  *(a2 + 48) = xmmword_1C0D7DF40;
  *(a2 + 64) = 0xC000000000000000;
  sub_1C0D783DC();
  v4 = *(a1 + 48);
  v5 = a2 + *(a1 + 44);
  *v5 = 0;
  *(v5 + 4) = 1;
  result = 0.0;
  *(a2 + v4) = xmmword_1C0D7D9D0;
  return result;
}

uint64_t sub_1C0D563D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0D56444(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C0D5650C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D56A5C(&qword_1EBE6DE28, type metadata accessor for CryptoKitSecretSharing_SecretShare, &unk_1C0D7E02C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C0D56588@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE6CCD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C0D7859C();
  v3 = __swift_project_value_buffer(v2, qword_1EBE72DA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C0D56630(uint64_t a1)
{
  v2 = sub_1C0D56A5C(&qword_1EBE6DE10, type metadata accessor for CryptoKitSecretSharing_SecretShare, &unk_1C0D7E064);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C0D5669C(uint64_t a1, uint64_t a2)
{
  sub_1C0D56A5C(&qword_1EBE6DE10, type metadata accessor for CryptoKitSecretSharing_SecretShare, &unk_1C0D7E064);

  return sub_1C0D7850C();
}

uint64_t sub_1C0D5683C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || !sub_1C0D04660(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)))
  {
    return 0;
  }

  v4 = type metadata accessor for CryptoKitSecretSharing_SecretShare(0);
  v5 = *(v4 + 44);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (!sub_1C0D04660(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) || !sub_1C0D04660(*(a1 + 40), *(a1 + 48), *(a2 + 40), *(a2 + 48)) || !sub_1C0D04660(*(a1 + 56), *(a1 + 64), *(a2 + 56), *(a2 + 64)))
  {
    return 0;
  }

  v10 = *(v4 + 48);
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  if (v11 >> 60 != 15)
  {
    if (v14 >> 60 != 15)
    {
      sub_1C0D134D0(v12, v11);
      sub_1C0D134D0(v15, v14);
      v17 = sub_1C0D04660(v12, v11, v15, v14);
      sub_1C0D13830(v15, v14);
      sub_1C0D13830(v12, v11);
      if (v17)
      {
        goto LABEL_20;
      }

      return 0;
    }

LABEL_17:
    sub_1C0D134D0(v12, v11);
    sub_1C0D134D0(v15, v14);
    sub_1C0D13830(v12, v11);
    sub_1C0D13830(v15, v14);
    return 0;
  }

  if (v14 >> 60 != 15)
  {
    goto LABEL_17;
  }

  sub_1C0D134D0(v12, v11);
  sub_1C0D134D0(v15, v14);
  sub_1C0D13830(v12, v11);
LABEL_20:
  sub_1C0D783EC();
  sub_1C0D56A5C(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C0D78A7C() & 1;
}

uint64_t sub_1C0D56A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CryptoKitError.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else if (v1 == 4)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1C68E3FF0](v2);
  }

  else
  {
    MEMORY[0x1C68E3FF0](3);
    return sub_1C0D7901C();
  }
}

uint64_t CryptoKitError.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1C0D78FFC();
  if (v2 == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v3 = 4;
      }

      else if (v1 == 4)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1C68E3FF0](v3);
  }

  else
  {
    MEMORY[0x1C68E3FF0](3);
    sub_1C0D7901C();
  }

  return sub_1C0D7902C();
}

uint64_t sub_1C0D56C08()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else if (v1 == 4)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1C68E3FF0](v2);
  }

  else
  {
    MEMORY[0x1C68E3FF0](3);
    return sub_1C0D7901C();
  }
}

uint64_t sub_1C0D56CA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_1C0D78FFC();
  if (v3 == 1)
  {
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v4 = 4;
      }

      else if (v2 == 4)
      {
        v4 = 5;
      }

      else
      {
        v4 = 6;
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C68E3FF0](v4);
  }

  else
  {
    MEMORY[0x1C68E3FF0](3);
    sub_1C0D7901C();
  }

  return sub_1C0D7902C();
}

uint64_t CryptoKitASN1Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

BOOL _s16CryptoKitPrivate0aB5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 4)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_1C0D56EB4()
{
  result = qword_1EBE6DE30;
  if (!qword_1EBE6DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DE30);
  }

  return result;
}

unint64_t sub_1C0D56F0C()
{
  result = qword_1EBE6DE38;
  if (!qword_1EBE6DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DE38);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CryptoKitError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1C0D56FC0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0D56FDC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitASN1Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptoKitASN1Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0D5715C(uint64_t (*a1)(uint64_t, uint64_t))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1C0CF2CF4(v4 + 32, v4 + 32 + *(v4 + 16), v7);
    v5 = v7[0];

    *v1 = v5;
    v4 = v5;
  }

  swift_beginAccess();
  return a1(v4 + 32, v4 + 32 + *(v4 + 16));
}

uint64_t sub_1C0D57230()
{
  result = cckem_kyber768();
  if (result)
  {
    qword_1EBE6DE40 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Kyber768.PublicKey.init<A>(dataRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v7 = cckem_sizeof_pub_ctx();
  v10 = MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C0D58B18(v10, sub_1C0D5748C);
  if (!v3)
  {
    *a3 = v8;
  }

  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t *sub_1C0D57364(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    if (qword_1EBE6CCD8 != -1)
    {
      swift_once();
    }

    cckem_pub_ctx_init();
    result = cckem_import_pubkey();
    if (result)
    {
      v6 = result;
      sub_1C0CF8DE0();
      swift_allocError();
      *v7 = v6;
      *(v7 + 4) = 0;
      return swift_willThrow();
    }

    else
    {
      *a2 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C0D57448(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *a1;
  if (result)
  {
    return sub_1C0D574AC(result, a3, a2, a4, a5, a6, &v7);
  }

  __break(1u);
  return result;
}

void *sub_1C0D574AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v11 = cckem_pub_ctx_init();
  MEMORY[0x1EEE9AC00](v11);
  result = sub_1C0D7819C();
  if (v7)
  {
    *a7 = v7;
  }

  else
  {
    *a3 = a4;
  }

  return result;
}

uint64_t sub_1C0D575BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (qword_1EBE6CCD8 == -1)
  {
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return result;
  }

  result = swift_once();
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  result = cckem_import_pubkey();
  if (result)
  {
    v4 = result;
    sub_1C0CF8DE0();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t Kyber768.PublicKey.dataRepresentation.getter()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v2 = cckem_pubkey_nbytes_info();
  v6[0] = sub_1C0D0F990(v2);
  v6[1] = v3;
  sub_1C0D42424(v6, 0);
  v5 = v2;
  sub_1C0D58C18(v6, v1 + 32, &v5);
  return v6[0];
}

uint64_t Kyber768.PublicKey.encapsulate()()
{
  v1 = *v0;
  v4[3] = type metadata accessor for Rng();
  v4[4] = &off_1F40367A0;
  v4[0] = swift_allocObject();
  sub_1C0D577E8(v1 + 32, v4, &v3);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *sub_1C0D577E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1C0D786AC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v8 = cckem_shared_key_nbytes_info();
  if (qword_1EBE6CB98 != -1)
  {
    swift_once();
  }

  result = off_1EBE6CBA0;
  *&v15 = off_1EBE6CBA0;
  if (v8)
  {
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    sub_1C0D64E2C(v8, 0);
    v10 = v15;
  }

  else
  {
  }

  v16 = v10;
  v11 = cckem_encapsulated_key_nbytes_info();
  *&v14 = sub_1C0D0F990(v11);
  *(&v14 + 1) = v12;
  v13 = sub_1C0D42424(&v14, 0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v13);
  *(&v14 - 4) = &v15;
  *(&v14 - 3) = a2;
  *(&v14 - 2) = a1;
  sub_1C0D5715C(sub_1C0D59574);
  if (v3)
  {

    result = sub_1C0CF448C(v15, *(&v15 + 1));
    *a3 = v3;
  }

  else
  {
    *&v14 = v16;
    sub_1C0CF39A8();

    sub_1C0D7868C();
    sub_1C0CF6468(v15, *(&v15 + 1));
    sub_1C0D787DC();

    return sub_1C0CF448C(v15, *(&v15 + 1));
  }

  return result;
}

void sub_1C0D57A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = cckem_encapsulate();
  if (v5)
  {
    v6 = v5;
    sub_1C0CF8DE0();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1C0D57AC4()
{
  v1 = *v0;
  v4[3] = type metadata accessor for Rng();
  v4[4] = &off_1F40367A0;
  v4[0] = swift_allocObject();
  sub_1C0D577E8(v1 + 32, v4, &v3);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t Kyber768.PrivateKey.init<A>(bytes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v7 = cckem_sizeof_full_ctx();
  v10 = MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C0CF3FD0(v10, sub_1C0D5942C);
  if (!v3)
  {
    *a3 = v8;
  }

  return (*(*(a2 - 8) + 8))(a1, a2);
}

void *sub_1C0D57C64(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*result)
  {
    result = sub_1C0D7819C();
    if (!v6)
    {
      *a2 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D57CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v5 = cckem_privkey_nbytes_info();
  result = cckem_pubkey_nbytes_info();
  v7 = v5 + result;
  if (__OFADD__(v5, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a1)
  {
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 != a2 - a1)
  {
LABEL_11:
    v8 = 1;
    v9 = 1;
    goto LABEL_12;
  }

  LODWORD(result) = cckem_import_privkey();
  if (!result)
  {
    result = cckem_public_ctx();
    if (result)
    {
      result = cckem_import_pubkey();
      if (!result)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_9:
  v8 = result;
  v9 = 0;
LABEL_12:
  sub_1C0CF8DE0();
  swift_allocError();
  *v10 = v8;
  *(v10 + 4) = v9;
  return swift_willThrow();
}

uint64_t Kyber768.PrivateKey.dataRepresentation.getter()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v2 = cckem_privkey_nbytes_info();
  v3 = cckem_pubkey_nbytes_info();
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  v8[0] = sub_1C0D0F990(v2 + v3);
  v8[1] = v5;
  sub_1C0D42424(v8, 0);
  v7 = v4;
  sub_1C0D58F98(v8, v1 + 32, &v7, v4);
  return v8[0];
}

uint64_t static Kyber768.PrivateKey.generate()@<X0>(unint64_t *a1@<X8>)
{
  v8 = type metadata accessor for Rng();
  v9 = &off_1F40367A0;
  v7[0] = swift_allocObject();
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v3 = cckem_sizeof_full_ctx();
  v6 = MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C0CF3FD0(v6, sub_1C0D5944C);
  if (!v1)
  {
    *a1 = v4;
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t *sub_1C0D58014(uint64_t *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    if (qword_1EBE6CCD8 != -1)
    {
      swift_once();
    }

    cckem_full_ctx_init();
    v4 = a3[4];
    v5 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    MEMORY[0x1EEE9AC00](v5);
    return (*(v4 + 8))(sub_1C0D59510);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *Kyber768.PrivateKey.decapsulate(_:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  return sub_1C0D58198((v5 + 32), v5 + 32 + *(v5 + 16), a1, a2);
}

void *sub_1C0D58198(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result)
  {
    goto LABEL_14;
  }

  v7 = result;
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v8 = cckem_shared_key_nbytes_info();
  if (qword_1EBE6CB98 != -1)
  {
    swift_once();
  }

  result = off_1EBE6CBA0;
  v10 = off_1EBE6CBA0;
  if (v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {

      sub_1C0D64E2C(v8, 0);
      v9 = v10;
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_10:
  v11 = v9;
  sub_1C0CF6468(a3, a4);
  sub_1C0CF2838(&v11, a3, a4, v7);
  if (v4)
  {
  }

  sub_1C0CF39A8();
  return sub_1C0D7868C();
}

uint64_t sub_1C0D582F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = result;
  v8 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v8)
    {
      if (result)
      {
LABEL_25:
        result = cckem_decapsulate();
        if (result)
        {
          v23 = result;
          sub_1C0CF8DE0();
          swift_allocError();
          *v24 = v23;
          *(v24 + 4) = 0;
          return swift_willThrow();
        }

        return result;
      }

      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    v17 = a3;
    v18 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      v11 = sub_1C0D7812C();
      if (!v11)
      {
        goto LABEL_17;
      }

      v19 = sub_1C0D7815C();
      if (!__OFSUB__(v17, v19))
      {
        v11 += v17 - v19;
LABEL_17:
        v20 = sub_1C0D7814C();
        if (v20 >= v18)
        {
          v16 = v18;
        }

        else
        {
          v16 = v20;
        }

        goto LABEL_20;
      }

LABEL_31:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  if (v8 != 2)
  {
    if (result)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v11 = sub_1C0D7812C();
  if (v11)
  {
    v12 = sub_1C0D7815C();
    if (__OFSUB__(v10, v12))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v11 += v10 - v12;
  }

  v13 = __OFSUB__(v9, v10);
  v14 = v9 - v10;
  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = sub_1C0D7814C();
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

LABEL_20:
  v21 = v16 + v11;
  if (v11)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  return sub_1C0D5854C(v11, v22, a5, v7, a2);
}

uint64_t sub_1C0D5854C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = cckem_decapsulate();
  if (result)
  {
    v5 = result;
    sub_1C0CF8DE0();
    swift_allocError();
    *v6 = v5;
    *(v6 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t Kyber768.PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v2 = cckem_sizeof_pub_ctx();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  if (v2)
  {
    v4 = sub_1C0D78C2C();
    *(v4 + 16) = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (!cckem_public_ctx())
  {
LABEL_12:
    __break(1u);
  }

  if (cckem_export_pubkey())
  {
LABEL_11:
    __break(1u);
    __break(1u);
    goto LABEL_12;
  }

  *(v4 + 16) = v3;
  v5 = cckem_sizeof_pub_ctx();
  v8 = MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C0D58B18(v8, sub_1C0D59468);

  *a1 = v6;
  return result;
}

uint64_t sub_1C0D5877C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v4 = cckem_sizeof_pub_ctx();
  if (v4 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  if (v4)
  {
    v6 = sub_1C0D78C2C();
    *(v6 + 16) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (!cckem_public_ctx())
  {
LABEL_15:
    __break(1u);
  }

  if (cckem_export_pubkey())
  {
    goto LABEL_13;
  }

  *(v6 + 16) = v5;
  v7 = cckem_sizeof_pub_ctx();
  v11 = MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C0D58B18(v11, sub_1C0D596B4);
  if (v2)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v9 = v8;

    *a2 = v9;
  }

  return result;
}

uint64_t sub_1C0D58940@<X0>(unint64_t *a1@<X8>)
{
  v8 = type metadata accessor for Rng();
  v9 = &off_1F40367A0;
  v7[0] = swift_allocObject();
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v3 = cckem_sizeof_full_ctx();
  v6 = MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C0CF3FD0(v6, sub_1C0D596CC);
  if (!v1)
  {
    *a1 = v4;
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void *sub_1C0D58A3C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  return sub_1C0D58198((v5 + 32), v5 + 32 + *(v5 + 16), a1, a2);
}

uint64_t sub_1C0D58AB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1C0D5877C(v3 + 32, a1);
}

uint64_t sub_1C0D58B18(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1C0D78C2C();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C0D58C18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {

      sub_1C0CF448C(v7, v6);
      *a1 = xmmword_1C0D7BAB0;
      sub_1C0CF448C(0, 0xC000000000000000);
      sub_1C0D7823C();
      v10 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v11 = *(v7 + 16);
      result = sub_1C0D7812C();
      if (result)
      {
        if (__OFSUB__(v11, sub_1C0D7815C()))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        sub_1C0D7814C();
        result = cckem_export_pubkey();
        if (result)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v12 = v10 | 0x8000000000000000;
        *a1 = v7;
        goto LABEL_23;
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    result = cckem_export_pubkey();
    if (!result)
    {
      return result;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v8)
  {
    sub_1C0CF448C(v7, v6);
    LOWORD(v16) = v6;
    BYTE2(v16) = BYTE2(v6);
    HIBYTE(v16) = BYTE3(v6);
    LOBYTE(v17) = BYTE4(v6);
    HIBYTE(v17) = BYTE5(v6);
    result = cckem_export_pubkey();
    if (!result)
    {
      *a1 = v7;
      a1[1] = v16 | ((v17 | (BYTE6(v6) << 16)) << 32);
      return result;
    }

    __break(1u);
    goto LABEL_26;
  }

  v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1C0CF448C(v7, v6);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  v4 = v7;
  v3 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v3 < v7)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1C0D7812C() && __OFSUB__(v7, sub_1C0D7815C()))
    {
LABEL_32:
      __break(1u);
    }

LABEL_17:
    sub_1C0D7818C();
    swift_allocObject();
    v14 = sub_1C0D7810C();

    v13 = v14;
  }

  if (v3 < v4)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = sub_1C0D7812C();
  if (!result)
  {
    goto LABEL_34;
  }

  if (__OFSUB__(v4, sub_1C0D7815C()))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1C0D7814C();
  v15 = cckem_export_pubkey();

  if (v15)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = v13 | 0x4000000000000000;
  *a1 = v7;
LABEL_23:
  a1[1] = v12;
  return result;
}

uint64_t sub_1C0D58F98(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a4;
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    v17 = a4;
    if (!v10)
    {
      sub_1C0CF448C(v9, v8);
      LOWORD(v18) = v8;
      BYTE2(v18) = BYTE2(v8);
      HIBYTE(v18) = BYTE3(v8);
      LOBYTE(v19) = BYTE4(v8);
      HIBYTE(v19) = BYTE5(v8);
      if (!cckem_export_privkey())
      {
        if (!__OFSUB__(v17, *a3))
        {
          result = cckem_public_ctx();
          if (result)
          {
            result = cckem_export_pubkey();
            if (!result)
            {
              *a1 = v9;
              a1[1] = v18 | ((v19 | (BYTE6(v8) << 16)) << 32);
              return result;
            }

            goto LABEL_44;
          }

          goto LABEL_54;
        }

        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_37;
    }

    v14 = v8 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1C0CF448C(v9, v8);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    v5 = v9;
    v4 = v9 >> 32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_27:
      if (v4 < v5)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      result = sub_1C0D7812C();
      if (result)
      {
        if (__OFSUB__(v5, sub_1C0D7815C()))
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        sub_1C0D7814C();
        if (cckem_export_privkey())
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (__OFSUB__(v17, *a3))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        result = cckem_public_ctx();
        if (!result)
        {
          goto LABEL_57;
        }

        v16 = cckem_export_pubkey();

        if (v16)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        *a1 = v9;
        a1[1] = v14 | 0x4000000000000000;
        return result;
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v4 < v9)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (sub_1C0D7812C() && __OFSUB__(v9, sub_1C0D7815C()))
    {
LABEL_51:
      __break(1u);
    }

LABEL_26:
    sub_1C0D7818C();
    swift_allocObject();
    v15 = sub_1C0D7810C();

    v14 = v15;
    goto LABEL_27;
  }

  if (v10 == 2)
  {

    sub_1C0CF448C(v9, v8);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v12 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    v13 = *(v9 + 16);
    result = sub_1C0D7812C();
    if (!result)
    {
      __break(1u);
      goto LABEL_53;
    }

    if (__OFSUB__(v13, sub_1C0D7815C()))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    sub_1C0D7814C();
    if (cckem_export_privkey())
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (__OFSUB__(v5, *a3))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    result = cckem_public_ctx();
    if (!result)
    {
      goto LABEL_56;
    }

    result = cckem_export_pubkey();
    if (result)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    *a1 = v9;
    a1[1] = v12 | 0x8000000000000000;
  }

  else
  {
    if (cckem_export_privkey())
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (__OFSUB__(v5, *a3))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    result = cckem_public_ctx();
    if (!result)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

    result = cckem_export_pubkey();
    if (result)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_1C0D5948C()
{
  result = qword_1EBE6DE48[0];
  if (!qword_1EBE6DE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6DE48);
  }

  return result;
}

uint64_t sub_1C0D59510(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  result = cckem_generate_key();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *v2 = v3;
  }

  return result;
}

uint64_t sub_1C0D59574(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v4[1] = *(v2 + 24);
  v5 = a1;
  return sub_1C0D77794(sub_1C0D595C8, v4);
}

uint64_t sub_1C0D595C8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  v12[2] = v6;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v7;
  v12[6] = v8;
  return (*(v10 + 8))(sub_1C0D59674, v12, v9, v10);
}

uint64_t sub_1C0D596E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C0D59720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D59768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D597CC(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C0D5986C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for Proof(319, v2, v1, v4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0D59970(int *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v6 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v11 + v12;
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = v11 + v16;
  v18 = *(*(v8 - 8) + 64) + 7;
  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v19 = (v18 & 0xFFFFFFFFFFFFFFF8) + ((v17 + ((v15 + (v15 & ~v12)) & ~v12)) & ~v16) + 8;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v14 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v14 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 >= v13)
  {
    v30 = *(v6 + 48);

    return v30(a1, v7, AssociatedTypeWitness);
  }

  else
  {
    v28 = (v17 + ((v15 + ((a1 + v15) & ~v12)) & ~v12)) & ~v16;
    if (v10 < 0x7FFFFFFF)
    {
      v31 = *((v18 + v28) & 0xFFFFFFFFFFFFFFF8);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }

    else
    {
      v29 = *(v9 + 48);

      return v29(v28);
    }
  }
}

void sub_1C0D59CC0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  v14 = *(v8 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14 + ((v13 + v14) & ~v14)) & ~v14;
  v19 = *(v11 + 80) & 0xF8 | 7;
  v20 = v13 + v19;
  v21 = *(*(v10 - 8) + 64) + 7;
  v22 = (v21 & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = ((v20 + v18) & ~v19) + v22;
  if (v16 >= a3)
  {
    v26 = 0;
    v27 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = a3 - v16 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v26 > 1)
      {
        if (v26 != 2)
        {
          *(a1 + v23) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v23) = 0;
      }

      else if (v26)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v9 >= v15)
        {
          v32 = *(v8 + 56);

          v32(a1, a2, v9, AssociatedTypeWitness);
        }

        else
        {
          v30 = ((v20 + ((v17 + ((a1 + v17) & ~v14)) & ~v14)) & ~v19);
          if (v15 >= a2)
          {
            if (v12 < 0x7FFFFFFF)
            {
              if ((a2 & 0x80000000) != 0)
              {
                v34 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v34 = (a2 - 1);
              }

              *((v30 + v21) & 0xFFFFFFFFFFFFFFF8) = v34;
            }

            else
            {
              v33 = *(v11 + 56);

              v33(v30, a2);
            }
          }

          else if ((v21 & 0xFFFFFFF8) != 0xFFFFFFF8)
          {
            v31 = ~v15 + a2;
            bzero(v30, v22);
            *v30 = v31;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v23)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27;
  }

  if (v23)
  {
    v29 = ~v16 + a2;
    bzero(a1, v23);
    *a1 = v29;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      *(a1 + v23) = v28;
    }

    else
    {
      *(a1 + v23) = v28;
    }
  }

  else if (v26)
  {
    *(a1 + v23) = v28;
  }
}

uint64_t sub_1C0D5A090(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  v11 = a1;
  v12 = 0;
  v13 = a1;
  while (1)
  {
    v14 = v13 <= a2;
    if (a3 > 0)
    {
      v14 = v13 >= a2;
    }

    if (v14)
    {
      break;
    }

    v15 = __OFADD__(v13, a3);
    v13 += a3;
    if (v15)
    {
      v13 = (v13 >> 63) ^ 0x8000000000000000;
    }

    v15 = __OFADD__(v12++, 1);
    if (v15)
    {
      __break(1u);
      break;
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
  result = sub_1C0D78E3C();
  if (v12)
  {
    while (1)
    {
      v17 = v11 <= a2;
      if (a3 > 0)
      {
        v17 = v11 >= a2;
      }

      if (v17)
      {
        break;
      }

      if (__OFADD__(v11, a3))
      {
        v18 = ((v11 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v18 = v11 + a3;
      }

      v19 = v11 + a4;
      if (__OFADD__(v11, a4))
      {
        goto LABEL_55;
      }

      v20 = *(a5 + 16);
      if (v20 < v19)
      {
        v19 = *(a5 + 16);
      }

      if (v19 < v11)
      {
        goto LABEL_56;
      }

      if (v11 < 0)
      {
        goto LABEL_57;
      }

      if (v20 == v19 - v11)
      {
        sub_1C0D78BFC();
        v21 = a5;
      }

      else
      {
        sub_1C0D5F9FC(a5, a5 + 32, v11, (2 * v19) | 1);
        v21 = v24;
      }

      v22 = *a6;
      v23 = qword_1EBE6CC50;
      sub_1C0D78BFC();
      if (v23 != -1)
      {
        swift_once();
      }

      sub_1C0D3CF34(v21, 1, 0, qword_1EBE72CC8, v22);
      if (v7)
      {
LABEL_53:
      }

      sub_1C0D78E0C();
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      result = sub_1C0D78E1C();
      v11 = v18;
      if (!--v12)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
    v18 = v11;
LABEL_31:
    v25 = v18 <= a2;
    if (a3 > 0)
    {
      v25 = v18 >= a2;
    }

    if (v25)
    {
LABEL_34:

      return v36;
    }

    while (1)
    {
      v26 = __OFADD__(v18, a3) ? ((v18 + a3) >> 63) ^ 0x8000000000000000 : v18 + a3;
      v27 = v18 + a4;
      if (__OFADD__(v18, a4))
      {
        break;
      }

      v28 = *(a5 + 16);
      if (v28 < v27)
      {
        v27 = *(a5 + 16);
      }

      if (v27 < v18)
      {
        goto LABEL_59;
      }

      if (v18 < 0)
      {
        goto LABEL_60;
      }

      if (v28 == v27 - v18)
      {
        sub_1C0D78BFC();
        v29 = a5;
      }

      else
      {
        sub_1C0D5F9FC(a5, a5 + 32, v18, (2 * v27) | 1);
        v29 = v33;
      }

      v30 = *a6;
      v31 = qword_1EBE6CC50;
      sub_1C0D78BFC();
      if (v31 != -1)
      {
        swift_once();
      }

      sub_1C0D3CF34(v29, 1, 0, qword_1EBE72CC8, v30);
      if (v7)
      {
        goto LABEL_53;
      }

      sub_1C0D78E0C();
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      result = sub_1C0D78E1C();
      v32 = v26 <= a2;
      if (a3 > 0)
      {
        v32 = v26 >= a2;
      }

      v18 = v26;
      if (v32)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

unint64_t sub_1C0D5A404(unint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  result = sub_1C0D78C2C();
  *(result + 16) = a2;
  v4 = (result + 32);
  if (a2 <= 3)
  {
    v5 = 0;
LABEL_9:
    v9 = a2 - v5;
    do
    {
      *v4++ = v3;
      --v9;
    }

    while (v9);
    return result;
  }

  v5 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = vdupq_n_s64(v3);
  v7 = (result + 48);
  v8 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  if (v5 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t PIR.IndexPirClient.init(pirParams:secretKey:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 18);
  v19 = *(a1 + 2);
  v20 = v8;
  *v21 = *(a1 + 34);
  *&v21[16] = *(a1 + 50);
  v10 = *a2;
  v9 = a2[1];
  v15[0] = v6;
  v15[1] = v7 & 1;
  _s12ParamContextCMa();
  swift_allocObject();
  v11 = sub_1C0D14150(v15);
  if (v3)
  {
    sub_1C0CF448C(v10, v9);
    v15[0] = v6;
    v15[1] = v7;
    *&v15[2] = *(a1 + 2);
    v16 = *(a1 + 18);
    v17 = *(a1 + 34);
    v18 = *(a1 + 50);
    return sub_1C0D3B80C(v15);
  }

  else
  {
    *v15 = v10;
    *&v15[8] = v9;

    v12 = sub_1C0D51B84(v15, v11);

    *a3 = v6;
    *(a3 + 1) = v7;
    v14 = v20;
    *(a3 + 2) = v19;
    *(a3 + 18) = v14;
    *(a3 + 34) = *v21;
    *(a3 + 48) = *&v21[14];
    *(a3 + 64) = v11;
    *(a3 + 72) = v12;
  }

  return result;
}

uint64_t PIR.IndexPirClient.generateGaloisKey()@<X0>(void *a1@<X8>)
{
  v3 = v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 64);
  v6 = *(v3 + 72);
  if (v4 == 2)
  {
    v7 = *(v3 + 40);
    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 / 2;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v8))
      {
        v10 = *(v3 + 57);
        result = sub_1C0D1429C(v8);
        if (!v2)
        {
          v12 = result;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0C8, &qword_1C0D7B7B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C0D7B690;
          *(inited + 32) = v12;
          if (v10)
          {
            v20 = sub_1C0D1435C();
            inited = sub_1C0CF50C0(1, 2, 1, inited);
            *(inited + 16) = 2;
            *(inited + 36) = v20;
          }

          return sub_1C0D615B8(v5, inited, v6, a1);
        }

        return result;
      }

LABEL_21:
      __break(1u);
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = *(v3 + 24);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 32);
    while (1)
    {
      v18 = *v17++;
      v19 = __OFADD__(v16, v18);
      v16 += v18;
      if (v19)
      {
        break;
      }

      if (!--v15)
      {
        return sub_1C0D51CC4(v16, v5, v6, a1);
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v16 = 0;
  return sub_1C0D51CC4(v16, v5, v6, a1);
}

uint64_t PIR.IndexPirClient.generateRelinKey()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 72);

  return sub_1C0D61224(v3, a1);
}

char *PIR.IndexPirClient.query(indices:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(v8 + 2) == 2)
  {
    return sub_1C0D5BA94(a1);
  }

  v10 = sub_1C0D78BFC();
  return sub_1C0D5BBD0(v10);
}

void PIR.IndexPirClient.decryptVectorizedPirReply(reply:indices:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 2) != 2)
  {
    goto LABEL_11;
  }

  if (*(v2 + 56))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v2 + 48);
  }

  if (!v4)
  {
    goto LABEL_183;
  }

  v5 = *(v2 + 40);
  if (v5 == 0x8000000000000000 && v4 == -1)
  {
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if (v5 / v4 < *(a2 + 16))
  {
LABEL_11:
    sub_1C0CF8DE0();
    swift_allocError();
    *v7 = 5;
    *(v7 + 4) = 1;
    swift_willThrow();
    return;
  }

  v140 = v5 / v4;
  v142 = *(a2 + 16);
  v148 = v4;
  v8 = *(v2 + 57);
  v9 = *(v2 + 72);
  if (v5 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v5 / 2;
  }

  v11 = *(v2 + 16);
  v12 = sub_1C0D5F79C(a2, v10);
  if (!v3)
  {
    v137 = v11;
    v150 = v9;
    v133 = v8;
    v135 = v12;
    v143 = v10;
    if (v10 >= v148)
    {
      v13 = v10 / v148;
    }

    else
    {
      v13 = 1;
    }

    v14 = v137;
    v15 = v8;
    v16 = v150;
    v17 = 0;
    v18 = sub_1C0D5E4A8(a1);
    v19 = *(v18 + 16);
    v147 = v13;
    if (v19)
    {
      v156 = MEMORY[0x1E69E7CC0];
      v138 = *(v18 + 16);
      sub_1C0CF7CB0(0, v19, 0);
      v20 = 0;
      v21 = v156;
      v144 = v18;
      while (1)
      {
        v153 = v21;
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_185;
        }

        v22 = *(v18 + 8 * v20 + 32);
        cche_plaintext_sizeof();

        v23 = swift_slowAlloc();
        if (!*(v22 + 24))
        {
          goto LABEL_216;
        }

        if (!*(v16 + 24))
        {
          goto LABEL_217;
        }

        v24 = v23;
        v25 = cche_decrypt();
        if (v25)
        {
          v32 = v25;
          sub_1C0CF8DE0();
          swift_allocError();
          *v33 = v32;
          *(v33 + 4) = 0;
          swift_willThrow();

          MEMORY[0x1C68E4EB0](v24, -1, -1);

          goto LABEL_38;
        }

        v26 = cche_param_ctx_polynomial_degree();
        if (v26)
        {
          v27 = sub_1C0D78C2C();
          *(v27 + 16) = v26;
        }

        else
        {
          v27 = MEMORY[0x1E69E7CC0];
        }

        v28 = cche_decode_simd_uint64();
        if (v28)
        {
          break;
        }

        v29 = cche_param_ctx_polynomial_degree();
        if (v26 < v29)
        {
          goto LABEL_186;
        }

        *(v27 + 16) = v29;

        MEMORY[0x1C68E4EB0](v24, -1, -1);

        v21 = v153;
        v31 = *(v153 + 16);
        v30 = *(v153 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1C0CF7CB0((v30 > 1), v31 + 1, 1);
          v21 = v153;
        }

        ++v20;
        *(v21 + 16) = v31 + 1;
        *(v21 + 8 * v31 + 32) = v27;
        v13 = v147;
        v16 = v150;
        v18 = v144;
        if (v138 == v20)
        {

          v17 = 0;
          v14 = v137;
          v15 = v133;
          goto LABEL_39;
        }
      }

      v34 = v28;
      sub_1C0CF8DE0();
      swift_allocError();
      *v35 = v34;
      *(v35 + 4) = 0;
      swift_willThrow();
      *(v27 + 16) = 0;

      MEMORY[0x1C68E4EB0](v24, -1, -1);

LABEL_38:

      return;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v134 = cche_encryption_params_polynomial_degree();
    if (v143)
    {
      if (!v142)
      {
LABEL_160:

        return;
      }

      v36 = v134 >> 1;
      v37 = v5 == 1;
      v157 = MEMORY[0x1E69E7CC0];
      sub_1C0CF7C00(0, v142, 0);
      v38 = 0;
      v39 = v157;
      v136 = *(v21 + 16);
      v40 = v135;
      v145 = v135 + 32;
      v132 = v21 + 32;
      v42 = v148 > 1 && v140 == 1;
      v131 = v42;
      v125 = (2 * v14) | 1;
      v127 = v37 & v15;
      v154 = v21;
      while (1)
      {
        v126 = v39;
        if (v38 >= *(v40 + 16))
        {
          goto LABEL_208;
        }

        v43 = *(v145 + 8 * v38) >= v36 / v143 ? v134 >> 1 : 0;
        v129 = v38;
        if (v136)
        {
          break;
        }

LABEL_154:
        v116 = cche_encryption_params_plaintext_modulus();
        if (!v116)
        {
          goto LABEL_212;
        }

        v117 = sub_1C0D74850(__clz(v116) ^ 0x3F);

        if ((v137 & 0x8000000000000000) != 0)
        {
          goto LABEL_213;
        }

        if (*(v117 + 16) < v137)
        {
          goto LABEL_214;
        }

        sub_1C0D07BB8(v117, (v117 + 32), 0, v125);
        v39 = v126;
        v121 = *(v126 + 16);
        v120 = *(v126 + 24);
        if (v121 >= v120 >> 1)
        {
          v123 = v118;
          v124 = v119;
          sub_1C0CF7C00((v120 > 1), v121 + 1, 1);
          v119 = v124;
          v118 = v123;
          v39 = v126;
        }

        *(v39 + 16) = v121 + 1;
        v122 = v39 + 16 * v121;
        v38 = v129 + 1;
        *(v122 + 32) = v118;
        *(v122 + 40) = v119;
        v17 = 0;
        v40 = v135;
        if (v129 + 1 == v142)
        {
          goto LABEL_160;
        }
      }

      v44 = 0;
      v45 = v36 - v43;
      v139 = v38 >> 1;
      v46 = MEMORY[0x1E69E7CC0];
      v128 = v43;
      v130 = v36 - v43;
      while (1)
      {
        if (v44 >= *(v21 + 16))
        {
          goto LABEL_187;
        }

        v149 = v46;
        v151 = *(v132 + 8 * v44);
        v48 = *(v145 + 8 * v38);
        v49 = v48 * v143;
        v50 = (v48 * v143) >> 64 != (v48 * v143) >> 63;
        v146 = v17;
        v141 = v44;
        if (v131)
        {
          if (v50)
          {
            goto LABEL_192;
          }

          v51 = v49 + v139;
          if (__OFADD__(v49, v139))
          {
            goto LABEL_193;
          }

          if (!v13)
          {
            goto LABEL_196;
          }

          v52 = v36 / v13;
          sub_1C0D78BFC();
          v53 = sub_1C0D5A404(0, v36 / v13);
          if (v36 / v13 < 0)
          {
            goto LABEL_197;
          }

          v54 = v53;
          if (v52)
          {
            if (v134 < 2)
            {
              goto LABEL_202;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = sub_1C0CFD6C0(v54);
            }

            v55 = 0;
            v56 = *(v151 + 16);
            while (1)
            {
              v57 = v55 * v13;
              if ((v55 * v13) >> 64 != (v55 * v13) >> 63)
              {
                break;
              }

              v58 = __OFADD__(v51, v57);
              v59 = v51 + v57;
              if (v58)
              {
                goto LABEL_164;
              }

              v60 = v59 % v36 + v128;
              if (v60 >= v56)
              {
                goto LABEL_166;
              }

              if (v55 >= *(v54 + 2))
              {
                goto LABEL_169;
              }

              *&v54[8 * v55++ + 32] = *(v151 + 32 + 8 * v60);
              if (v52 == v55)
              {
                goto LABEL_72;
              }
            }

LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);

            return;
          }

LABEL_72:
          v61 = *(v145 + 8 * v38);
          v62 = v61 * v143;
          if ((v61 * v143) >> 64 != (v61 * v143) >> 63)
          {
            goto LABEL_199;
          }

          v63 = v62 + v139;
          if (__OFADD__(v62, v139))
          {
            goto LABEL_200;
          }

          v64 = sub_1C0D5A404(0, v36 / v13);
          if (v52)
          {
            if (v134 < 2)
            {
              goto LABEL_204;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = sub_1C0CFD6C0(v64);
            }

            v65 = 0;
            v66 = *(v151 + 16);
            do
            {
              v67 = v65 * v13;
              if ((v65 * v13) >> 64 != (v65 * v13) >> 63)
              {
                goto LABEL_170;
              }

              v58 = __OFADD__(v63, v67);
              v68 = v63 + v67;
              if (v58)
              {
                goto LABEL_171;
              }

              v69 = v68 % v36 + v45;
              if (v69 >= v66)
              {
                goto LABEL_172;
              }

              if (v65 >= *(v64 + 16))
              {
                goto LABEL_173;
              }

              *(v64 + 8 * v65++ + 32) = *(v151 + 32 + 8 * v69);
            }

            while (v52 != v65);
          }

          v70 = *(v54 + 2);
          if (v70)
          {
            v155 = -v70;
            v71 = 4;
            v72 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              v73 = v71 - 4;
              if ((v71 - 4) >= *(v54 + 2))
              {
                goto LABEL_175;
              }

              v74 = *(v64 + 16);
              if (v73 == v74)
              {
                goto LABEL_126;
              }

              if (v73 >= v74)
              {
                goto LABEL_179;
              }

              v75 = *&v54[8 * v71];
              v76 = *(v64 + 8 * v71);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0C0, &qword_1C0D7B840);
              inited = swift_initStackObject();
              *(inited + 32) = v75;
              v78 = (inited + 32);
              *(inited + 40) = v76;
              v79 = *(v72 + 16);
              v80 = v79 + 2;
              if (__OFADD__(v79, 2))
              {
                goto LABEL_180;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || (v82 = *(v72 + 24) >> 1, v82 < v80))
              {
                if (v79 <= v80)
                {
                  v83 = v79 + 2;
                }

                else
                {
                  v83 = v79;
                }

                v72 = sub_1C0CF4C3C(isUniquelyReferenced_nonNull_native, v83, 1, v72);
                v82 = *(v72 + 24) >> 1;
              }

              v84 = *(v72 + 16);
              if (v82 - v84 < 2)
              {
                goto LABEL_181;
              }

              *(v72 + 8 * v84 + 32) = *v78;
              swift_setDeallocating();
              v85 = *(v72 + 16);
              v58 = __OFADD__(v85, 2);
              v86 = v85 + 2;
              if (v58)
              {
                goto LABEL_182;
              }

              *(v72 + 16) = v86;
              ++v71;
              if (v155 + v71 == 4)
              {
                goto LABEL_126;
              }
            }
          }

          v72 = MEMORY[0x1E69E7CC0];
LABEL_126:

          v13 = v147;
LABEL_127:
          v38 = v129;
          goto LABEL_128;
        }

        if (v50)
        {
          goto LABEL_191;
        }

        v87 = v49 + v139;
        if (__OFADD__(v49, v139))
        {
          goto LABEL_194;
        }

        if (!v13)
        {
          goto LABEL_195;
        }

        v88 = v36 / v13;
        if (v36 / v13 < 0)
        {
          goto LABEL_198;
        }

        sub_1C0D78BFC();
        if (v88)
        {
          v72 = sub_1C0D78C2C();
          *(v72 + 16) = v88;
          bzero((v72 + 32), 8 * v88);
          if (v134 < 2)
          {
            goto LABEL_203;
          }

          v89 = 0;
          v90 = *(v151 + 16);
          do
          {
            v91 = v89 * v13;
            if ((v89 * v13) >> 64 != (v89 * v13) >> 63)
            {
              __break(1u);
              goto LABEL_163;
            }

            v58 = __OFADD__(v87, v91);
            v92 = v87 + v91;
            if (v58)
            {
              goto LABEL_165;
            }

            v93 = v92 % v36 + v128;
            if (v93 >= v90)
            {
              goto LABEL_167;
            }

            if (v89 >= v88)
            {
              goto LABEL_168;
            }

            *(v72 + 8 * v89++ + 32) = *(v151 + 32 + 8 * v93);
          }

          while (v88 != v89);
          if (v127)
          {
            goto LABEL_115;
          }

          goto LABEL_128;
        }

        v72 = MEMORY[0x1E69E7CC0];
        if ((v127 & 1) == 0)
        {
          goto LABEL_128;
        }

LABEL_115:
        v94 = *(v145 + 8 * v38);
        v95 = v94 + v139;
        if (__OFADD__(v94, v139))
        {
          goto LABEL_205;
        }

        if (v88)
        {
          v96 = sub_1C0D78C2C();
          *(v96 + 16) = v88;
          bzero((v96 + 32), 8 * v88);
          if (v134 < 2)
          {
            goto LABEL_209;
          }

          v97 = 0;
          v98 = *(v151 + 16);
          while (1)
          {
            v99 = v97 * v13;
            if ((v97 * v13) >> 64 != (v97 * v13) >> 63)
            {
              break;
            }

            v58 = __OFADD__(v95, v99);
            v100 = v95 + v99;
            if (v58)
            {
              goto LABEL_176;
            }

            v101 = v100 % v36 + v45;
            if (v101 >= v98)
            {
              goto LABEL_177;
            }

            if (v97 >= v88)
            {
              goto LABEL_178;
            }

            *(v96 + 8 * v97++ + 32) = *(v151 + 32 + 8 * v101);
            if (v88 == v97)
            {
              goto LABEL_141;
            }
          }

          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

        v96 = MEMORY[0x1E69E7CC0];
        v88 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_141:
        v110 = *(v72 + 16);
        v111 = v110 + v88;
        if (__OFADD__(v110, v88))
        {
          goto LABEL_206;
        }

        v112 = *(v72 + 24) >> 1;
        if (v112 < v111)
        {
          if (v110 <= v111)
          {
            v115 = v110 + v88;
          }

          else
          {
            v115 = *(v72 + 16);
          }

          v72 = sub_1C0CF4C3C(1, v115, 1, v72);
          v110 = *(v72 + 16);
          v112 = *(v72 + 24) >> 1;
          if (!*(v96 + 16))
          {
LABEL_152:

            v38 = v129;
            if (v88)
            {
              goto LABEL_207;
            }

            goto LABEL_128;
          }
        }

        else if (!v88)
        {
          goto LABEL_152;
        }

        if ((v112 - v110) < v88)
        {
          goto LABEL_210;
        }

        memcpy((v72 + 8 * v110 + 32), (v96 + 32), 8 * v88);

        if (!v88)
        {
          goto LABEL_127;
        }

        v113 = *(v72 + 16);
        v58 = __OFADD__(v113, v88);
        v114 = v113 + v88;
        v38 = v129;
        if (v58)
        {
          goto LABEL_215;
        }

        *(v72 + 16) = v114;
LABEL_128:

        v102 = *(v72 + 16);
        v46 = v149;
        v103 = *(v149 + 2);
        v104 = v103 + v102;
        if (__OFADD__(v103, v102))
        {
          goto LABEL_188;
        }

        v105 = swift_isUniquelyReferenced_nonNull_native();
        if ((v105 & 1) == 0 || v104 > *(v149 + 3) >> 1)
        {
          if (v103 <= v104)
          {
            v106 = v103 + v102;
          }

          else
          {
            v106 = v103;
          }

          v46 = sub_1C0CF4C3C(v105, v106, 1, v149);
        }

        v45 = v130;
        if (*(v72 + 16))
        {
          v107 = *(v46 + 2);
          if ((*(v46 + 3) >> 1) - v107 < v102)
          {
            goto LABEL_190;
          }

          memcpy(&v46[8 * v107 + 32], (v72 + 32), 8 * v102);

          v21 = v154;
          v47 = v141;
          if (v102)
          {
            v108 = *(v46 + 2);
            v58 = __OFADD__(v108, v102);
            v109 = v108 + v102;
            if (v58)
            {
              goto LABEL_201;
            }

            *(v46 + 2) = v109;
          }
        }

        else
        {

          v21 = v154;
          v47 = v141;
          if (v102)
          {
            goto LABEL_189;
          }
        }

        v44 = v47 + 1;
        v17 = v146;
        if (v44 == v136)
        {
          goto LABEL_154;
        }
      }
    }

LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
  }
}