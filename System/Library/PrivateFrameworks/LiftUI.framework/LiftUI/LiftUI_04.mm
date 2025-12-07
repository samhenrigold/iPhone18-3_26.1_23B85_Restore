unint64_t sub_255D87070()
{
  result = qword_27F7E74F0;
  if (!qword_27F7E74F0)
  {
    v3 = sub_255E38538();
    result = swift_getWitnessTable(MEMORY[0x277CC9180], v3, v0, v1);
    atomic_store(result, &qword_27F7E74F0);
  }

  return result;
}

uint64_t sub_255D870C8(unint64_t *a1)
{
  v3 = *a1;
  if (*a1 >> 61 != 4)
  {
    v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D7B470();
    swift_allocError();
    *v490 = v3;
    v490[1] = v489;
    swift_willThrow();

    return v2;
  }

  v4 = v1;
  v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_537;
  }

  v643 = MEMORY[0x277D84F90];
  v620 = v5;

  v617 = v6;
  sub_255D8077C(v6);
  result = v620;
  v8 = 0;
  while (1)
  {
    if (v8 >= *(result + 16))
    {
      goto LABEL_573;
    }

    v9 = *(v620 + 32 + 8 * v8);
    v10 = v9 >> 61;
    if ((v9 >> 61) <= 2)
    {
      if (v10)
      {
        v11 = v9 & 0x1FFFFFFFFFFFFFFFLL;
        if (v10 == 1)
        {
          v12 = *(v11 + 16);
          v642 = MEMORY[0x277D83B88];
          *&v641 = v12;
        }

        else
        {
          v259 = *(v11 + 16);
          v642 = MEMORY[0x277D839F8];
          *&v641 = v259;
        }
      }

      else
      {
        v257 = *(v9 + 16);
        v256 = *(v9 + 24);
        v642 = MEMORY[0x277D837D0];
        *&v641 = v257;
        *(&v641 + 1) = v256;
      }

      goto LABEL_530;
    }

    if (v10 != 3)
    {
      break;
    }

    v258 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v642 = MEMORY[0x277D839B0];
    LOBYTE(v641) = v258;
LABEL_530:
    v486 = v643;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255DE5CE0(0, *(v486 + 16) + 1, 1);
      v486 = v643;
    }

    v488 = *(v486 + 16);
    v487 = *(v486 + 24);
    if (v488 >= v487 >> 1)
    {
      sub_255DE5CE0((v487 > 1), v488 + 1, 1);
      v486 = v643;
    }

    ++v8;
    *(v486 + 16) = v488 + 1;
    sub_255D31B4C(&v641, (v486 + 32 * v488 + 32));
    result = v620;
    if (v8 == v617)
    {

LABEL_537:
      v2 = sub_255E3A668();

      return v2;
    }
  }

  v621 = v8;
  if (v10 != 4)
  {
    v2 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
    v260 = sub_255E3AB08();
    v250 = v260;
    v572 = v2 + 64;
    v261 = 1 << *(v2 + 32);
    if (v261 < 64)
    {
      v262 = ~(-1 << v261);
    }

    else
    {
      v262 = -1;
    }

    v263 = v262 & *(v2 + 64);
    v567 = (v261 + 63) >> 6;
    v599 = v260 + 64;

    v605 = v2;

    v264 = 0;
    v585 = v250;
    if (v263)
    {
LABEL_279:
      v265 = __clz(__rbit64(v263));
      v266 = (v263 - 1) & v263;
      goto LABEL_285;
    }

    while (2)
    {
      v267 = v264;
      do
      {
        v264 = v267 + 1;
        if (__OFADD__(v267, 1))
        {
          __break(1u);
LABEL_563:
          __break(1u);
LABEL_564:
          __break(1u);
LABEL_565:
          __break(1u);
LABEL_566:
          __break(1u);
LABEL_567:
          __break(1u);
LABEL_568:
          __break(1u);
LABEL_569:
          __break(1u);
          goto LABEL_570;
        }

        if (v264 >= v567)
        {

          v642 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);
LABEL_529:

          *&v641 = v250;
          goto LABEL_530;
        }

        v268 = *(v572 + 8 * v264);
        ++v267;
      }

      while (!v268);
      v265 = __clz(__rbit64(v268));
      v266 = (v268 - 1) & v268;
LABEL_285:
      v269 = v265 | (v264 << 6);
      v270 = (*(v605 + 48) + 16 * v269);
      v271 = *v270;
      v272 = v270[1];
      v273 = *(*(v605 + 56) + 8 * v269);
      v274 = v273 >> 61;
      v608 = v266;
      v614 = v264;
      v619 = v269;
      v616 = v271;
      if ((v273 >> 61) <= 2)
      {
        if (v274)
        {
          v275 = v273 & 0x1FFFFFFFFFFFFFFFLL;
          if (v274 == 1)
          {
            v276 = *(v275 + 16);
            v640 = MEMORY[0x277D83B88];
            *&v639 = v276;
          }

          else
          {
            v381 = *(v275 + 16);
            v640 = MEMORY[0x277D839F8];
            *&v639 = v381;
          }
        }

        else
        {
          v378 = *(v273 + 16);
          v379 = *(v273 + 24);
          v640 = MEMORY[0x277D837D0];
          *&v639 = v378;
          *(&v639 + 1) = v379;
        }

LABEL_411:

LABEL_412:
        *(v599 + ((v619 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v619;
        v382 = (v250[6] + 16 * v619);
        *v382 = v616;
        v382[1] = v272;
        result = sub_255D31B4C(&v639, (v250[7] + 32 * v619));
        v383 = v250[2];
        v61 = __OFADD__(v383, 1);
        v384 = v383 + 1;
        if (v61)
        {
          goto LABEL_585;
        }

        v250[2] = v384;
        v263 = v608;
        v264 = v614;
        if (v608)
        {
          goto LABEL_279;
        }

        continue;
      }

      break;
    }

    if (v274 == 3)
    {
      v380 = *((v273 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v640 = MEMORY[0x277D839B0];
      LOBYTE(v639) = v380;
      goto LABEL_411;
    }

    v533 = v272;
    if (v274 != 4)
    {
      v2 = v273 & 0x1FFFFFFFFFFFFFFFLL;
      v385 = *((v273 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v386 = sub_255E3AB08();
      v250 = v585;
      v387 = v386;
      v516 = v385 + 64;
      v388 = 1 << *(v385 + 32);
      if (v388 < 64)
      {
        v389 = ~(-1 << v388);
      }

      else
      {
        v389 = -1;
      }

      v390 = v389 & *(v385 + 64);
      v512 = (v388 + 63) >> 6;
      v549 = v386 + 64;

      v558 = v385;

      v391 = 0;
      v563 = v387;
      if (v390)
      {
LABEL_419:
        v392 = __clz(__rbit64(v390));
        v393 = (v390 - 1) & v390;
        goto LABEL_425;
      }

LABEL_420:
      v394 = v391;
      while (1)
      {
        v391 = v394 + 1;
        if (__OFADD__(v394, 1))
        {
          goto LABEL_566;
        }

        if (v391 >= v512)
        {
          break;
        }

        v395 = *(v516 + 8 * v391);
        ++v394;
        if (v395)
        {
          v392 = __clz(__rbit64(v395));
          v393 = (v395 - 1) & v395;
LABEL_425:
          v396 = v392 | (v391 << 6);
          v397 = (*(v558 + 48) + 16 * v396);
          v398 = *v397;
          v399 = v397[1];
          v400 = *(*(v558 + 56) + 8 * v396);
          v401 = v400 >> 61;
          v577 = v393;
          v582 = v398;
          v595 = v396;
          if ((v400 >> 61) > 2)
          {
            if (v401 == 3)
            {
              v442 = *((v400 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v638 = MEMORY[0x277D839B0];
              LOBYTE(v637) = v442;
              goto LABEL_479;
            }

            v499 = v399;
            if (v401 == 4)
            {
              v404 = *((v400 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v2 = *(v404 + 16);
              if (v2)
              {
                v634 = MEMORY[0x277D84F90];

                v527 = v2;
                result = sub_255D8077C(v2);
                v405 = 0;
                v536 = v404 + 32;
                v519 = v404;
                do
                {
                  if (v405 >= *(v404 + 16))
                  {
                    goto LABEL_595;
                  }

                  v406 = *(v536 + 8 * v405);
                  v407 = v406 >> 61;
                  v603 = v405;
                  if ((v406 >> 61) > 2)
                  {
                    if (v407 == 3)
                    {
                      v417 = *((v406 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v636 = MEMORY[0x277D839B0];
                      LOBYTE(v635) = v417;
                    }

                    else if (v407 == 4)
                    {
                      v2 = *((v406 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v410 = *(v2 + 16);
                      if (v410)
                      {
                        v632 = MEMORY[0x277D84F90];

                        result = sub_255D8077C(v410);
                        v411 = 0;
                        while (1)
                        {
                          if (v411 >= *(v2 + 16))
                          {
                            goto LABEL_586;
                          }

                          sub_255D7D920(v633);
                          if (v4)
                          {
                            break;
                          }

                          v412 = v632;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_255DE5CE0(0, *(v632 + 16) + 1, 1);
                            v412 = v632;
                          }

                          v4 = 0;
                          v414 = *(v412 + 16);
                          v413 = *(v412 + 24);
                          if (v414 >= v413 >> 1)
                          {
                            sub_255DE5CE0((v413 > 1), v414 + 1, 1);
                            v412 = v632;
                          }

                          ++v411;
                          *(v412 + 16) = v414 + 1;
                          result = sub_255D31B4C(v633, (v412 + 32 * v414 + 32));
                          if (v410 == v411)
                          {

                            goto LABEL_469;
                          }
                        }

                        goto LABEL_556;
                      }

                      v412 = MEMORY[0x277D84F90];
LABEL_469:
                      v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                      *&v635 = v412;
                      v387 = v563;
                      v404 = v519;
                    }

                    else
                    {
                      v419 = *((v406 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v420 = sub_255E3AB08();
                      v421 = v420;
                      v496 = v419 + 64;
                      v422 = 1 << *(v419 + 32);
                      if (v422 < 64)
                      {
                        v423 = ~(-1 << v422);
                      }

                      else
                      {
                        v423 = -1;
                      }

                      v424 = v423 & *(v419 + 64);
                      v2 = (v422 + 63) >> 6;
                      v504 = v420 + 64;

                      v523 = v419;

                      v425 = 0;
                      v508 = v421;
                      if (v424)
                      {
LABEL_457:
                        v426 = __clz(__rbit64(v424));
                        v543 = (v424 - 1) & v424;
                        goto LABEL_463;
                      }

LABEL_458:
                      v427 = v425;
                      while (1)
                      {
                        v425 = v427 + 1;
                        if (__OFADD__(v427, 1))
                        {
                          goto LABEL_574;
                        }

                        if (v425 >= v2)
                        {
                          break;
                        }

                        v428 = *(v496 + 8 * v425);
                        ++v427;
                        if (v428)
                        {
                          v426 = __clz(__rbit64(v428));
                          v543 = (v428 - 1) & v428;
LABEL_463:
                          v429 = v426 | (v425 << 6);
                          v430 = (*(v523 + 48) + 16 * v429);
                          v431 = *v430;
                          v432 = v430[1];

                          sub_255D7D920(v633);
                          if (!v4)
                          {

                            v421 = v508;
                            *(v504 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v429;
                            v433 = (v508[6] + 16 * v429);
                            *v433 = v431;
                            v433[1] = v432;
                            result = sub_255D31B4C(v633, (v508[7] + 32 * v429));
                            v434 = v508[2];
                            v61 = __OFADD__(v434, 1);
                            v435 = v434 + 1;
                            if (v61)
                            {
                              goto LABEL_603;
                            }

                            v508[2] = v435;
                            v387 = v563;
                            v404 = v519;
                            v424 = v543;
                            if (v543)
                            {
                              goto LABEL_457;
                            }

                            goto LABEL_458;
                          }

LABEL_556:

                          goto LABEL_551;
                        }
                      }

                      v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                      *&v635 = v421;
                    }
                  }

                  else if (v407)
                  {
                    v408 = v406 & 0x1FFFFFFFFFFFFFFFLL;
                    if (v407 == 1)
                    {
                      v409 = *(v408 + 16);
                      v636 = MEMORY[0x277D83B88];
                      *&v635 = v409;
                    }

                    else
                    {
                      v418 = *(v408 + 16);
                      v636 = MEMORY[0x277D839F8];
                      *&v635 = v418;
                    }
                  }

                  else
                  {
                    v416 = *(v406 + 16);
                    v415 = *(v406 + 24);
                    v636 = MEMORY[0x277D837D0];
                    *&v635 = v416;
                    *(&v635 + 1) = v415;
                  }

                  v436 = v634;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_255DE5CE0(0, v436[2] + 1, 1);
                    v436 = v634;
                  }

                  v438 = v436[2];
                  v437 = v436[3];
                  v2 = v438 + 1;
                  if (v438 >= v437 >> 1)
                  {
                    sub_255DE5CE0((v437 > 1), v438 + 1, 1);
                    v436 = v634;
                  }

                  v436[2] = v2;
                  v439 = &v436[4 * v438];
                  v405 = v603 + 1;
                  result = sub_255D31B4C(&v635, v439 + 2);
                }

                while (v603 + 1 != v527);
              }

              else
              {

                v436 = MEMORY[0x277D84F90];
              }

              v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

              *&v637 = v436;
              v250 = v585;
              v399 = v499;
            }

            else
            {
              v2 = v400 & 0x1FFFFFFFFFFFFFFFLL;
              v447 = *((v400 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v448 = sub_255E3AB08();
              v250 = v585;
              v449 = v448;
              v520 = v447 + 64;
              v450 = 1 << *(v447 + 32);
              if (v450 < 64)
              {
                v451 = ~(-1 << v450);
              }

              else
              {
                v451 = -1;
              }

              v452 = v451 & *(v447 + 64);
              v453 = (v450 + 63) >> 6;
              v528 = v448 + 64;
              v454 = v2;

              v455 = v452;
              v456 = 0;
              v524 = v453;
              v505 = v447;
              v509 = v449;
              if (v455)
              {
LABEL_487:
                v457 = __clz(__rbit64(v455));
                v458 = (v455 - 1) & v455;
                goto LABEL_493;
              }

LABEL_488:
              v459 = v456;
              while (1)
              {
                v456 = v459 + 1;
                if (__OFADD__(v459, 1))
                {
                  goto LABEL_575;
                }

                if (v456 >= v453)
                {
                  break;
                }

                v460 = *(v520 + 8 * v456);
                ++v459;
                if (v460)
                {
                  v457 = __clz(__rbit64(v460));
                  v458 = (v460 - 1) & v460;
LABEL_493:
                  v461 = v457 | (v456 << 6);
                  v462 = (*(v447 + 48) + 16 * v461);
                  v463 = *v462;
                  v464 = v462[1];
                  v465 = *(*(v447 + 56) + 8 * v461);
                  v466 = v465 >> 61;
                  v544 = v458;
                  v604 = v463;
                  if ((v465 >> 61) <= 2)
                  {
                    if (v466)
                    {
                      v467 = v465 & 0x1FFFFFFFFFFFFFFFLL;
                      if (v466 == 1)
                      {
                        v468 = *(v467 + 16);
                        v636 = MEMORY[0x277D83B88];
                        *&v635 = v468;
                      }

                      else
                      {
                        v479 = *(v467 + 16);
                        v636 = MEMORY[0x277D839F8];
                        *&v635 = v479;
                      }
                    }

                    else
                    {
                      v2 = v464;
                      v476 = *(v465 + 16);
                      v477 = *(v465 + 24);
                      v636 = MEMORY[0x277D837D0];
                      *&v635 = v476;
                      *(&v635 + 1) = v477;

                      v464 = v2;
                    }

LABEL_512:

LABEL_513:
                    *(v528 + ((v461 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v461;
                    v480 = (v449[6] + 16 * v461);
                    *v480 = v604;
                    v480[1] = v464;
                    result = sub_255D31B4C(&v635, (v449[7] + 32 * v461));
                    v481 = v449[2];
                    v61 = __OFADD__(v481, 1);
                    v482 = v481 + 1;
                    if (v61)
                    {
                      goto LABEL_604;
                    }

                    v449[2] = v482;
                    v387 = v563;
                    v453 = v524;
                    v455 = v544;
                    if (v544)
                    {
                      goto LABEL_487;
                    }

                    goto LABEL_488;
                  }

                  if (v466 == 3)
                  {
                    v478 = *((v465 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v636 = MEMORY[0x277D839B0];
                    LOBYTE(v635) = v478;
                    goto LABEL_512;
                  }

                  v469 = v465 & 0x1FFFFFFFFFFFFFFFLL;
                  if (v466 == 4)
                  {
                    v470 = *((v465 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v471 = *(v470 + 16);
                    if (v471)
                    {
                      v494 = v454;
                      v634 = MEMORY[0x277D84F90];

                      v493 = v469;

                      result = sub_255D8077C(v471);
                      v472 = 0;
                      v537 = v471;
                      do
                      {
                        if (v472 >= *(v470 + 16))
                        {
                          goto LABEL_596;
                        }

                        v2 = *(v470 + 8 * v472 + 32);

                        sub_255D7D920(v633);
                        if (v4)
                        {

                          goto LABEL_551;
                        }

                        v473 = v634;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_255DE5CE0(0, v473[2] + 1, 1);
                          v473 = v634;
                        }

                        v475 = v473[2];
                        v474 = v473[3];
                        if (v475 >= v474 >> 1)
                        {
                          sub_255DE5CE0((v474 > 1), v475 + 1, 1);
                          v473 = v634;
                        }

                        ++v472;
                        v473[2] = v475 + 1;
                        result = sub_255D31B4C(v633, &v473[4 * v475 + 4]);
                      }

                      while (v537 != v472);

                      v2 = v493;
                      v454 = v494;
                    }

                    else
                    {

                      v2 = v469;
                      v473 = MEMORY[0x277D84F90];
                    }

                    v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                    *&v635 = v473;
                    v250 = v585;
                    v447 = v505;
                    v449 = v509;
                    goto LABEL_513;
                  }

                  v2 = v464;

                  v484 = sub_255D82D74(v483);
                  if (!v4)
                  {
                    v485 = v484;

                    v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                    *&v635 = v485;
                    v250 = v585;
                    v447 = v505;
                    v449 = v509;
                    goto LABEL_513;
                  }

LABEL_570:

                  goto LABEL_560;
                }
              }

              v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

              *&v637 = v449;
              v399 = v499;
            }
          }

          else
          {
            if (v401)
            {
              v402 = v400 & 0x1FFFFFFFFFFFFFFFLL;
              if (v401 == 1)
              {
                v403 = *(v402 + 16);
                v638 = MEMORY[0x277D83B88];
                *&v637 = v403;
              }

              else
              {
                v443 = *(v402 + 16);
                v638 = MEMORY[0x277D839F8];
                *&v637 = v443;
              }
            }

            else
            {
              v440 = *(v400 + 16);
              v441 = *(v400 + 24);
              v638 = MEMORY[0x277D837D0];
              *&v637 = v440;
              *(&v637 + 1) = v441;
            }

LABEL_479:
          }

          *(v549 + ((v595 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v595;
          v444 = (v387[6] + 16 * v595);
          *v444 = v582;
          v444[1] = v399;
          result = sub_255D31B4C(&v637, (v387[7] + 32 * v595));
          v445 = v387[2];
          v61 = __OFADD__(v445, 1);
          v446 = v445 + 1;
          if (v61)
          {
            goto LABEL_598;
          }

          v387[2] = v446;
          v390 = v577;
          if (v577)
          {
            goto LABEL_419;
          }

          goto LABEL_420;
        }
      }

      v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

      *&v639 = v387;
      v8 = v621;
      v272 = v533;
      goto LABEL_412;
    }

    v277 = *((v273 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v2 = *(v277 + 16);
    if (!v2)
    {

      v375 = MEMORY[0x277D84F90];
      goto LABEL_525;
    }

    v634 = MEMORY[0x277D84F90];

    v562 = v2;
    result = sub_255D8077C(v2);
    v278 = 0;
    v581 = v277 + 32;
    v535 = v277;
    while (1)
    {
      if (v278 >= *(v277 + 16))
      {
        goto LABEL_587;
      }

      v279 = *(v581 + 8 * v278);
      v280 = v279 >> 61;
      if ((v279 >> 61) > 2)
      {
        if (v280 == 3)
        {
          v324 = *((v279 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v638 = MEMORY[0x277D839B0];
          LOBYTE(v637) = v324;
        }

        else
        {
          v594 = v278;
          if (v280 != 4)
          {
            v326 = v279 & 0x1FFFFFFFFFFFFFFFLL;
            v2 = *((v279 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v327 = sub_255E3AB08();
            v328 = v327;
            v503 = v2 + 64;
            v329 = 1 << *(v2 + 32);
            if (v329 < 64)
            {
              v330 = ~(-1 << v329);
            }

            else
            {
              v330 = -1;
            }

            v331 = v330 & *(v2 + 64);
            v332 = (v329 + 63) >> 6;
            v548 = v327 + 64;

            v333 = 0;
            v522 = v332;
            v526 = v2;
            v507 = v328;
            if (!v331)
            {
LABEL_353:
              v336 = v333;
              while (1)
              {
                v333 = v336 + 1;
                if (__OFADD__(v336, 1))
                {
                  goto LABEL_569;
                }

                if (v333 >= v332)
                {
                  break;
                }

                v337 = *(v503 + 8 * v333);
                ++v336;
                if (v337)
                {
                  v334 = __clz(__rbit64(v337));
                  v335 = (v337 - 1) & v337;
                  goto LABEL_358;
                }
              }

              v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

              *&v637 = v328;
              v277 = v535;
              goto LABEL_402;
            }

            while (2)
            {
              v334 = __clz(__rbit64(v331));
              v335 = (v331 - 1) & v331;
LABEL_358:
              v338 = v334 | (v333 << 6);
              v339 = (*(v2 + 48) + 16 * v338);
              v340 = v339[1];
              v576 = *v339;
              v341 = *(*(v2 + 56) + 8 * v338);
              v342 = v341 >> 61;
              v557 = v335;
              v602 = v338;
              if ((v341 >> 61) > 2)
              {
                if (v342 == 3)
                {
                  v353 = *((v341 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v636 = MEMORY[0x277D839B0];
                  LOBYTE(v635) = v353;
                  goto LABEL_377;
                }

                v511 = v340;
                if (v342 == 4)
                {
                  v345 = *((v341 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v346 = *(v345 + 16);
                  if (v346)
                  {
                    v497 = v326;
                    v631 = MEMORY[0x277D84F90];

                    result = sub_255D8077C(v346);
                    for (i = 0; i != v346; ++i)
                    {
                      if (i >= *(v345 + 16))
                      {
                        goto LABEL_590;
                      }

                      v2 = *(v345 + 8 * i + 32);

                      sub_255D7D920(v633);
                      if (v4)
                      {

                        goto LABEL_550;
                      }

                      v348 = v631;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_255DE5CE0(0, *(v631 + 16) + 1, 1);
                        v348 = v631;
                      }

                      v350 = *(v348 + 16);
                      v349 = *(v348 + 24);
                      if (v350 >= v349 >> 1)
                      {
                        sub_255DE5CE0((v349 > 1), v350 + 1, 1);
                        v348 = v631;
                      }

                      *(v348 + 16) = v350 + 1;
                      result = sub_255D31B4C(v633, (v348 + 32 * v350 + 32));
                    }

                    v326 = v497;
                  }

                  else
                  {

                    v348 = MEMORY[0x277D84F90];
                  }

                  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                  *&v635 = v348;
                  v8 = v621;
                  v328 = v507;
                  v332 = v522;
                  v2 = v526;
                }

                else
                {
                  v498 = v326;
                  v355 = *((v341 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v356 = sub_255E3AB08();
                  v357 = v356;
                  v492 = v355 + 64;
                  v358 = 1 << *(v355 + 32);
                  if (v358 < 64)
                  {
                    v359 = ~(-1 << v358);
                  }

                  else
                  {
                    v359 = -1;
                  }

                  v360 = v359 & *(v355 + 64);
                  v361 = (v358 + 63) >> 6;
                  v501 = v356 + 64;

                  v518 = v355;

                  v362 = 0;
                  v515 = v357;
                  if (v360)
                  {
                    do
                    {
                      v363 = __clz(__rbit64(v360));
                      v542 = (v360 - 1) & v360;
LABEL_388:
                      v366 = v363 | (v362 << 6);
                      v367 = (*(v518 + 48) + 16 * v366);
                      v2 = *v367;
                      v368 = v367[1];

                      sub_255D7D920(v633);
                      if (v4)
                      {

                        goto LABEL_551;
                      }

                      *(v501 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v366;
                      v369 = (v515[6] + 16 * v366);
                      *v369 = v2;
                      v369[1] = v368;
                      result = sub_255D31B4C(v633, (v515[7] + 32 * v366));
                      v370 = v515[2];
                      v61 = __OFADD__(v370, 1);
                      v371 = v370 + 1;
                      if (v61)
                      {
                        goto LABEL_605;
                      }

                      v515[2] = v371;
                      v8 = v621;
                      v278 = v594;
                      v332 = v522;
                      v2 = v526;
                      v360 = v542;
                    }

                    while (v542);
                  }

                  v364 = v362;
                  v328 = v507;
                  while (1)
                  {
                    v362 = v364 + 1;
                    if (__OFADD__(v364, 1))
                    {
                      goto LABEL_576;
                    }

                    if (v362 >= v361)
                    {
                      break;
                    }

                    v365 = *(v492 + 8 * v362);
                    ++v364;
                    if (v365)
                    {
                      v363 = __clz(__rbit64(v365));
                      v542 = (v365 - 1) & v365;
                      goto LABEL_388;
                    }
                  }

                  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                  *&v635 = v515;
                  v326 = v498;
                }

                v340 = v511;
              }

              else if (v342)
              {
                v343 = v341 & 0x1FFFFFFFFFFFFFFFLL;
                if (v342 == 1)
                {
                  v344 = *(v343 + 16);
                  v636 = MEMORY[0x277D83B88];
                  *&v635 = v344;
                }

                else
                {
                  v354 = *(v343 + 16);
                  v636 = MEMORY[0x277D839F8];
                  *&v635 = v354;
                }

LABEL_377:
              }

              else
              {
                v351 = *(v341 + 16);
                v352 = *(v341 + 24);
                v636 = MEMORY[0x277D837D0];
                *&v635 = v351;
                *(&v635 + 1) = v352;
              }

              *(v548 + ((v602 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v602;
              v372 = (v328[6] + 16 * v602);
              *v372 = v576;
              v372[1] = v340;
              result = sub_255D31B4C(&v635, (v328[7] + 32 * v602));
              v373 = v328[2];
              v61 = __OFADD__(v373, 1);
              v374 = v373 + 1;
              if (v61)
              {
                goto LABEL_600;
              }

              v328[2] = v374;
              v331 = v557;
              if (!v557)
              {
                goto LABEL_353;
              }

              continue;
            }
          }

          v283 = *((v279 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v284 = *(v283 + 16);
          if (v284)
          {
            v630 = MEMORY[0x277D84F90];

            v556 = v284;
            result = sub_255D8077C(v284);
            v285 = 0;
            v575 = v283 + 32;
            v525 = v283;
            do
            {
              if (v285 >= *(v283 + 16))
              {
                goto LABEL_588;
              }

              v286 = *(v575 + 8 * v285);
              v287 = v286 >> 61;
              v601 = v285;
              if ((v286 >> 61) > 2)
              {
                if (v287 == 3)
                {
                  v298 = *((v286 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v636 = MEMORY[0x277D839B0];
                  LOBYTE(v635) = v298;
                }

                else if (v287 == 4)
                {
                  v290 = *((v286 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v291 = *(v290 + 16);
                  if (v291)
                  {
                    v626 = MEMORY[0x277D84F90];

                    result = sub_255D8077C(v291);
                    v292 = 0;
                    while (1)
                    {
                      if (v292 >= *(v290 + 16))
                      {
                        goto LABEL_580;
                      }

                      v2 = *(v290 + 8 * v292 + 32);

                      sub_255D7D920(v633);
                      if (v4)
                      {
                        break;
                      }

                      v293 = v626;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_255DE5CE0(0, *(v626 + 16) + 1, 1);
                        v293 = v626;
                      }

                      v295 = *(v293 + 16);
                      v294 = *(v293 + 24);
                      if (v295 >= v294 >> 1)
                      {
                        sub_255DE5CE0((v294 > 1), v295 + 1, 1);
                        v293 = v626;
                      }

                      ++v292;
                      *(v293 + 16) = v295 + 1;
                      result = sub_255D31B4C(v633, (v293 + 32 * v295 + 32));
                      if (v291 == v292)
                      {

                        goto LABEL_338;
                      }
                    }

                    goto LABEL_550;
                  }

                  v293 = MEMORY[0x277D84F90];
LABEL_338:
                  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                  *&v635 = v293;
                  v8 = v621;
                  v283 = v525;
                }

                else
                {
                  v300 = *((v286 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v301 = sub_255E3AB08();
                  v302 = v300 + 64;
                  v303 = 1 << *(v300 + 32);
                  if (v303 < 64)
                  {
                    v304 = ~(-1 << v303);
                  }

                  else
                  {
                    v304 = -1;
                  }

                  v2 = v304 & *(v300 + 64);
                  v305 = (v303 + 63) >> 6;
                  v541 = v301;
                  v521 = v301 + 64;

                  v547 = v300;

                  v306 = 0;
                  if (v2)
                  {
LABEL_326:
                    v307 = v4;
                    v308 = __clz(__rbit64(v2));
                    v2 &= v2 - 1;
                    goto LABEL_332;
                  }

LABEL_327:
                  v309 = v306;
                  while (1)
                  {
                    v306 = v309 + 1;
                    if (__OFADD__(v309, 1))
                    {
                      goto LABEL_567;
                    }

                    if (v306 >= v305)
                    {
                      break;
                    }

                    v310 = *(v302 + 8 * v306);
                    ++v309;
                    if (v310)
                    {
                      v307 = v4;
                      v308 = __clz(__rbit64(v310));
                      v2 = (v310 - 1) & v310;
LABEL_332:
                      v311 = v308 | (v306 << 6);
                      v312 = (*(v547 + 48) + 16 * v311);
                      v313 = *v312;
                      v314 = v312[1];

                      sub_255D7D920(v633);
                      if (!v307)
                      {

                        *(v521 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v311;
                        v315 = (v541[6] + 16 * v311);
                        *v315 = v313;
                        v315[1] = v314;
                        result = sub_255D31B4C(v633, (v541[7] + 32 * v311));
                        v316 = v541[2];
                        v61 = __OFADD__(v316, 1);
                        v317 = v316 + 1;
                        if (v61)
                        {
                          goto LABEL_597;
                        }

                        v541[2] = v317;
                        v4 = 0;
                        v277 = v535;
                        v283 = v525;
                        if (v2)
                        {
                          goto LABEL_326;
                        }

                        goto LABEL_327;
                      }

LABEL_550:

LABEL_551:

                      goto LABEL_559;
                    }
                  }

                  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                  *&v635 = v541;
                  v8 = v621;
                }
              }

              else if (v287)
              {
                v288 = v286 & 0x1FFFFFFFFFFFFFFFLL;
                if (v287 == 1)
                {
                  v289 = *(v288 + 16);
                  v636 = MEMORY[0x277D83B88];
                  *&v635 = v289;
                }

                else
                {
                  v299 = *(v288 + 16);
                  v636 = MEMORY[0x277D839F8];
                  *&v635 = v299;
                }
              }

              else
              {
                v297 = *(v286 + 16);
                v296 = *(v286 + 24);
                v636 = MEMORY[0x277D837D0];
                *&v635 = v297;
                *(&v635 + 1) = v296;
              }

              v318 = v630;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_255DE5CE0(0, *(v630 + 16) + 1, 1);
                v318 = v630;
              }

              v320 = *(v318 + 16);
              v319 = *(v318 + 24);
              if (v320 >= v319 >> 1)
              {
                sub_255DE5CE0((v319 > 1), v320 + 1, 1);
                v318 = v630;
              }

              *(v318 + 16) = v320 + 1;
              v321 = v318 + 32 * v320;
              v285 = v601 + 1;
              result = sub_255D31B4C(&v635, (v321 + 32));
              v278 = v594;
            }

            while (v601 + 1 != v556);
          }

          else
          {

            v318 = MEMORY[0x277D84F90];
          }

          v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

          *&v637 = v318;
        }
      }

      else if (v280)
      {
        v281 = v279 & 0x1FFFFFFFFFFFFFFFLL;
        if (v280 == 1)
        {
          v282 = *(v281 + 16);
          v638 = MEMORY[0x277D83B88];
          *&v637 = v282;
        }

        else
        {
          v325 = *(v281 + 16);
          v638 = MEMORY[0x277D839F8];
          *&v637 = v325;
        }
      }

      else
      {
        v323 = *(v279 + 16);
        v322 = *(v279 + 24);
        v638 = MEMORY[0x277D837D0];
        *&v637 = v323;
        *(&v637 + 1) = v322;
      }

LABEL_402:
      v375 = v634;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_255DE5CE0(0, v375[2] + 1, 1);
        v375 = v634;
      }

      v377 = v375[2];
      v376 = v375[3];
      v2 = v377 + 1;
      if (v377 >= v376 >> 1)
      {
        sub_255DE5CE0((v376 > 1), v377 + 1, 1);
        v375 = v634;
      }

      ++v278;
      v375[2] = v2;
      result = sub_255D31B4C(&v637, &v375[4 * v377 + 4]);
      if (v278 == v562)
      {

LABEL_525:
        v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

        *&v639 = v375;
        v250 = v585;
        v272 = v533;
        goto LABEL_412;
      }
    }
  }

  v615 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *(v615 + 16);
  if (!v13)
  {

    v250 = MEMORY[0x277D84F90];
LABEL_528:
    v642 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
    goto LABEL_529;
  }

  v634 = MEMORY[0x277D84F90];

  v600 = v13;
  result = sub_255D8077C(v13);
  v14 = 0;
  while (1)
  {
    if (v14 >= *(v615 + 16))
    {
      goto LABEL_579;
    }

    v618 = v14;
    v15 = *(v615 + 32 + 8 * v14);
    v16 = v15 >> 61;
    if ((v15 >> 61) <= 2)
    {
      if (v16)
      {
        v17 = v15 & 0x1FFFFFFFFFFFFFFFLL;
        if (v16 == 1)
        {
          v18 = *(v17 + 16);
          v640 = MEMORY[0x277D83B88];
          *&v639 = v18;
        }

        else
        {
          v133 = *(v17 + 16);
          v640 = MEMORY[0x277D839F8];
          *&v639 = v133;
        }
      }

      else
      {
        v131 = *(v15 + 16);
        v130 = *(v15 + 24);
        v640 = MEMORY[0x277D837D0];
        *&v639 = v131;
        *(&v639 + 1) = v130;
      }

      goto LABEL_266;
    }

    if (v16 != 3)
    {
      break;
    }

    v132 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v640 = MEMORY[0x277D839B0];
    LOBYTE(v639) = v132;
LABEL_266:
    v250 = v634;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255DE5CE0(0, v250[2] + 1, 1);
      v250 = v634;
    }

    v251 = v618;
    v253 = v250[2];
    v252 = v250[3];
    if (v253 >= v252 >> 1)
    {
      sub_255DE5CE0((v252 > 1), v253 + 1, 1);
      v251 = v618;
      v250 = v634;
    }

    v250[2] = v253 + 1;
    v254 = &v250[4 * v253 + 4];
    v255 = v251 + 1;
    result = sub_255D31B4C(&v639, v254);
    v14 = v255;
    if (v255 == v600)
    {

      goto LABEL_528;
    }
  }

  if (v16 != 4)
  {
    v134 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
    v135 = sub_255E3AB08();
    v124 = v135;
    v546 = v134 + 64;
    v136 = 1 << *(v134 + 32);
    if (v136 < 64)
    {
      v137 = ~(-1 << v136);
    }

    else
    {
      v137 = -1;
    }

    v138 = v137 & *(v134 + 64);
    v139 = (v136 + 63) >> 6;
    v580 = v135 + 64;

    v593 = v134;

    v2 = 0;
    v555 = v124;
    v574 = v139;
    if (v138)
    {
      goto LABEL_144;
    }

LABEL_145:
    v141 = v2;
    while (1)
    {
      v2 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        goto LABEL_563;
      }

      if (v2 >= v139)
      {
        break;
      }

      v142 = *(v546 + 8 * v2);
      ++v141;
      if (v142)
      {
        v140 = __clz(__rbit64(v142));
        v598 = (v142 - 1) & v142;
        while (2)
        {
          v143 = v140 | (v2 << 6);
          v144 = (*(v593 + 48) + 16 * v143);
          v145 = *v144;
          v146 = v144[1];
          v147 = *(*(v593 + 56) + 8 * v143);
          v148 = v147 >> 61;
          v607 = v145;
          if ((v147 >> 61) <= 2)
          {
            if (v148)
            {
              v149 = v147 & 0x1FFFFFFFFFFFFFFFLL;
              if (v148 == 1)
              {
                v150 = *(v149 + 16);
                v638 = MEMORY[0x277D83B88];
                *&v637 = v150;
              }

              else
              {
                v195 = *(v149 + 16);
                v638 = MEMORY[0x277D839F8];
                *&v637 = v195;
              }
            }

            else
            {
              v191 = v143;
              v192 = *(v147 + 16);
              v193 = *(v147 + 24);
              v638 = MEMORY[0x277D837D0];
              *&v637 = v192;
              *(&v637 + 1) = v193;

              v143 = v191;
            }

            goto LABEL_204;
          }

          if (v148 == 3)
          {
            v194 = *((v147 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v638 = MEMORY[0x277D839B0];
            LOBYTE(v637) = v194;
LABEL_204:

            goto LABEL_205;
          }

          v584 = v146;
          v517 = v143;
          if (v148 == 4)
          {
            v151 = *((v147 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v152 = *(v151 + 16);
            if (v152)
            {
              v628 = MEMORY[0x277D84F90];

              v565 = v152;
              result = sub_255D8077C(v152);
              v153 = 0;
              v570 = v151 + 32;
              v551 = v151;
              do
              {
                if (v153 >= *(v151 + 16))
                {
                  goto LABEL_589;
                }

                v154 = *(v570 + 8 * v153);
                v155 = v154 >> 61;
                v612 = v153;
                if ((v154 >> 61) > 2)
                {
                  if (v155 == 3)
                  {
                    v166 = *((v154 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v636 = MEMORY[0x277D839B0];
                    LOBYTE(v635) = v166;
                  }

                  else if (v155 == 4)
                  {
                    v158 = *((v154 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v159 = *(v158 + 16);
                    if (v159)
                    {
                      v625 = MEMORY[0x277D84F90];

                      result = sub_255D8077C(v159);
                      v160 = 0;
                      while (1)
                      {
                        if (v160 >= *(v158 + 16))
                        {
                          goto LABEL_581;
                        }

                        sub_255D7D920(v633);
                        if (v4)
                        {
                          break;
                        }

                        v161 = v625;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_255DE5CE0(0, *(v625 + 16) + 1, 1);
                          v161 = v625;
                        }

                        v163 = *(v161 + 16);
                        v162 = *(v161 + 24);
                        if (v163 >= v162 >> 1)
                        {
                          sub_255DE5CE0((v162 > 1), v163 + 1, 1);
                          v161 = v625;
                        }

                        ++v160;
                        *(v161 + 16) = v163 + 1;
                        result = sub_255D31B4C(v633, (v161 + 32 * v163 + 32));
                        v4 = 0;
                        v8 = v621;
                        if (v159 == v160)
                        {

                          goto LABEL_194;
                        }
                      }

                      goto LABEL_553;
                    }

                    v161 = MEMORY[0x277D84F90];
LABEL_194:
                    v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                    *&v635 = v161;
                    v146 = v584;
                    v151 = v551;
                  }

                  else
                  {
                    v168 = *((v154 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v169 = sub_255E3AB08();
                    v170 = v169;
                    v171 = 1 << *(v168 + 32);
                    if (v171 < 64)
                    {
                      v172 = ~(-1 << v171);
                    }

                    else
                    {
                      v172 = -1;
                    }

                    v587 = v172 & *(v168 + 64);
                    v173 = (v171 + 63) >> 6;
                    v531 = v169 + 64;

                    v174 = 0;
                    v539 = v170;
                    v175 = v587;
                    if (v587)
                    {
                      goto LABEL_182;
                    }

LABEL_183:
                    v178 = v174;
                    while (1)
                    {
                      v174 = v178 + 1;
                      if (__OFADD__(v178, 1))
                      {
                        goto LABEL_568;
                      }

                      if (v174 >= v173)
                      {
                        break;
                      }

                      v179 = *(v168 + 64 + 8 * v174);
                      ++v178;
                      if (v179)
                      {
                        v176 = v4;
                        v177 = __clz(__rbit64(v179));
                        v588 = (v179 - 1) & v179;
                        while (2)
                        {
                          v180 = v177 | (v174 << 6);
                          v181 = (*(v168 + 48) + 16 * v180);
                          v182 = *v181;
                          v183 = v181[1];

                          sub_255D7D920(v633);
                          if (!v176)
                          {

                            *(v531 + ((v180 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v180;
                            v170 = v539;
                            v184 = (v539[6] + 16 * v180);
                            *v184 = v182;
                            v184[1] = v183;
                            result = sub_255D31B4C(v633, (v539[7] + 32 * v180));
                            v185 = v539[2];
                            v61 = __OFADD__(v185, 1);
                            v186 = v185 + 1;
                            if (!v61)
                            {
                              v539[2] = v186;
                              v4 = 0;
                              v8 = v621;
                              v146 = v584;
                              v151 = v551;
                              v175 = v588;
                              if (!v588)
                              {
                                goto LABEL_183;
                              }

LABEL_182:
                              v176 = v4;
                              v177 = __clz(__rbit64(v175));
                              v588 = (v175 - 1) & v175;
                              continue;
                            }

LABEL_599:
                            __break(1u);
LABEL_600:
                            __break(1u);
LABEL_601:
                            __break(1u);
LABEL_602:
                            __break(1u);
LABEL_603:
                            __break(1u);
LABEL_604:
                            __break(1u);
LABEL_605:
                            __break(1u);
LABEL_606:
                            __break(1u);
                            return result;
                          }

                          break;
                        }

LABEL_553:

                        goto LABEL_559;
                      }
                    }

                    v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                    *&v635 = v170;
                  }
                }

                else if (v155)
                {
                  v156 = v154 & 0x1FFFFFFFFFFFFFFFLL;
                  if (v155 == 1)
                  {
                    v157 = *(v156 + 16);
                    v636 = MEMORY[0x277D83B88];
                    *&v635 = v157;
                  }

                  else
                  {
                    v167 = *(v156 + 16);
                    v636 = MEMORY[0x277D839F8];
                    *&v635 = v167;
                  }
                }

                else
                {
                  v165 = *(v154 + 16);
                  v164 = *(v154 + 24);
                  v636 = MEMORY[0x277D837D0];
                  *&v635 = v165;
                  *(&v635 + 1) = v164;
                }

                v187 = v628;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_255DE5CE0(0, *(v628 + 16) + 1, 1);
                  v187 = v628;
                }

                v189 = *(v187 + 16);
                v188 = *(v187 + 24);
                if (v189 >= v188 >> 1)
                {
                  sub_255DE5CE0((v188 > 1), v189 + 1, 1);
                  v187 = v628;
                }

                *(v187 + 16) = v189 + 1;
                v190 = v187 + 32 * v189;
                v153 = v612 + 1;
                result = sub_255D31B4C(&v635, (v190 + 32));
              }

              while (v612 + 1 != v565);
            }

            else
            {

              v187 = MEMORY[0x277D84F90];
            }

            v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

            *&v637 = v187;
            v124 = v555;
            v143 = v517;
LABEL_205:
            *(v580 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
            v196 = (v124[6] + 16 * v143);
            *v196 = v607;
            v196[1] = v146;
            result = sub_255D31B4C(&v637, (v124[7] + 32 * v143));
            v197 = v124[2];
            v61 = __OFADD__(v197, 1);
            v198 = v197 + 1;
            if (!v61)
            {
              v124[2] = v198;
              v139 = v574;
              v138 = v598;
              if (!v598)
              {
                goto LABEL_145;
              }

LABEL_144:
              v140 = __clz(__rbit64(v138));
              v598 = (v138 - 1) & v138;
              continue;
            }

LABEL_593:
            __break(1u);
LABEL_594:
            __break(1u);
LABEL_595:
            __break(1u);
LABEL_596:
            __break(1u);
LABEL_597:
            __break(1u);
LABEL_598:
            __break(1u);
            goto LABEL_599;
          }

          break;
        }

        v613 = v4;
        v199 = *((v147 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v200 = sub_255E3AB08();
        v124 = v555;
        v201 = v200;
        v506 = v199 + 64;
        v202 = 1 << *(v199 + 32);
        if (v202 < 64)
        {
          v203 = ~(-1 << v202);
        }

        else
        {
          v203 = -1;
        }

        v589 = v203 & *(v199 + 64);
        v204 = (v202 + 63) >> 6;
        v566 = v200 + 64;

        v205 = 0;
        v540 = v201;
        v532 = v199;
        v561 = v204;
        v206 = v589;
        if (v589)
        {
LABEL_212:
          v207 = __clz(__rbit64(v206));
          v208 = (v206 - 1) & v206;
          goto LABEL_218;
        }

LABEL_213:
        v209 = v205;
        while (1)
        {
          v205 = v209 + 1;
          if (__OFADD__(v209, 1))
          {
            break;
          }

          if (v205 >= v204)
          {

            v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

            *&v637 = v201;
            v4 = v613;
            v143 = v517;
            goto LABEL_205;
          }

          v210 = *(v506 + 8 * v205);
          ++v209;
          if (v210)
          {
            v207 = __clz(__rbit64(v210));
            v208 = (v210 - 1) & v210;
LABEL_218:
            v211 = v207 | (v205 << 6);
            v212 = (*(v199 + 48) + 16 * v211);
            v213 = *v212;
            v214 = v212[1];
            v215 = *(*(v199 + 56) + 8 * v211);
            v216 = v215 >> 61;
            v590 = v208;
            v571 = v213;
            if ((v215 >> 61) > 2)
            {
              if (v216 == 3)
              {
                v228 = *((v215 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v636 = MEMORY[0x277D839B0];
                LOBYTE(v635) = v228;
                goto LABEL_237;
              }

              v500 = v214;
              v495 = v211;
              if (v216 == 4)
              {
                v219 = *((v215 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                if (*(v219 + 16))
                {
                  v220 = *(v219 + 16);
                  v629 = MEMORY[0x277D84F90];

                  v221 = v220;
                  result = sub_255D8077C(v220);
                  v222 = 0;
                  do
                  {
                    if (v222 >= *(v219 + 16))
                    {
                      goto LABEL_592;
                    }

                    sub_255D7D920(v633);
                    if (v613)
                    {

                      goto LABEL_559;
                    }

                    v223 = v629;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_255DE5CE0(0, *(v629 + 16) + 1, 1);
                      v223 = v629;
                    }

                    v225 = *(v223 + 16);
                    v224 = *(v223 + 24);
                    if (v225 >= v224 >> 1)
                    {
                      sub_255DE5CE0((v224 > 1), v225 + 1, 1);
                      v223 = v629;
                    }

                    ++v222;
                    *(v223 + 16) = v225 + 1;
                    result = sub_255D31B4C(v633, (v223 + 32 * v225 + 32));
                    v8 = v621;
                  }

                  while (v221 != v222);

                  v201 = v540;
                  v199 = v532;
                }

                else
                {

                  v223 = MEMORY[0x277D84F90];
                }

                v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                *&v635 = v223;
                v124 = v555;
              }

              else
              {
                v230 = *((v215 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v231 = sub_255E3AB08();
                v491 = v230 + 64;
                v232 = 1 << *(v230 + 32);
                if (v232 < 64)
                {
                  v233 = ~(-1 << v232);
                }

                else
                {
                  v233 = -1;
                }

                v234 = v233 & *(v230 + 64);
                v235 = (v232 + 63) >> 6;
                v510 = v231;
                v502 = v231 + 64;

                v514 = v230;

                v236 = 0;
                if (v234)
                {
                  do
                  {
                    v237 = __clz(__rbit64(v234));
                    v552 = (v234 - 1) & v234;
LABEL_248:
                    v240 = v237 | (v236 << 6);
                    v241 = (*(v514 + 48) + 16 * v240);
                    v242 = *v241;
                    v243 = v241[1];

                    sub_255D7D920(v633);
                    if (v613)
                    {

                      goto LABEL_559;
                    }

                    *(v502 + ((v240 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v240;
                    v244 = (v510[6] + 16 * v240);
                    *v244 = v242;
                    v244[1] = v243;
                    result = sub_255D31B4C(v633, (v510[7] + 32 * v240));
                    v245 = v510[2];
                    v61 = __OFADD__(v245, 1);
                    v246 = v245 + 1;
                    if (v61)
                    {
                      goto LABEL_606;
                    }

                    v510[2] = v246;
                    v8 = v621;
                    v201 = v540;
                    v199 = v532;
                    v234 = v552;
                  }

                  while (v552);
                }

                v238 = v236;
                v124 = v555;
                while (1)
                {
                  v236 = v238 + 1;
                  if (__OFADD__(v238, 1))
                  {
                    goto LABEL_578;
                  }

                  if (v236 >= v235)
                  {
                    break;
                  }

                  v239 = *(v491 + 8 * v236);
                  ++v238;
                  if (v239)
                  {
                    v237 = __clz(__rbit64(v239));
                    v552 = (v239 - 1) & v239;
                    goto LABEL_248;
                  }
                }

                v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                *&v635 = v510;
                v146 = v584;
              }

              v214 = v500;
              v211 = v495;
            }

            else
            {
              if (v216)
              {
                v217 = v215 & 0x1FFFFFFFFFFFFFFFLL;
                if (v216 == 1)
                {
                  v218 = *(v217 + 16);
                  v636 = MEMORY[0x277D83B88];
                  *&v635 = v218;
                }

                else
                {
                  v229 = *(v217 + 16);
                  v636 = MEMORY[0x277D839F8];
                  *&v635 = v229;
                }
              }

              else
              {
                v226 = *(v215 + 16);
                v227 = *(v215 + 24);
                v636 = MEMORY[0x277D837D0];
                *&v635 = v226;
                *(&v635 + 1) = v227;

                v146 = v584;
              }

LABEL_237:
            }

            *(v566 + ((v211 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v211;
            v247 = (v201[6] + 16 * v211);
            *v247 = v571;
            v247[1] = v214;
            result = sub_255D31B4C(&v635, (v201[7] + 32 * v211));
            v248 = v201[2];
            v61 = __OFADD__(v248, 1);
            v249 = v248 + 1;
            if (v61)
            {
              goto LABEL_601;
            }

            v201[2] = v249;
            v204 = v561;
            v206 = v590;
            if (v590)
            {
              goto LABEL_212;
            }

            goto LABEL_213;
          }
        }

        __break(1u);
LABEL_572:
        __break(1u);
LABEL_573:
        __break(1u);
LABEL_574:
        __break(1u);
LABEL_575:
        __break(1u);
LABEL_576:
        __break(1u);
LABEL_577:
        __break(1u);
LABEL_578:
        __break(1u);
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
LABEL_584:
        __break(1u);
LABEL_585:
        __break(1u);
LABEL_586:
        __break(1u);
LABEL_587:
        __break(1u);
LABEL_588:
        __break(1u);
LABEL_589:
        __break(1u);
LABEL_590:
        __break(1u);
LABEL_591:
        __break(1u);
LABEL_592:
        __break(1u);
        goto LABEL_593;
      }
    }

    v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);
    goto LABEL_265;
  }

  v19 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v20 = *(v19 + 16);
  if (!v20)
  {

    v124 = MEMORY[0x277D84F90];
LABEL_264:
    v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
LABEL_265:

    *&v639 = v124;
    goto LABEL_266;
  }

  v627 = MEMORY[0x277D84F90];

  v573 = v20;
  result = sub_255D8077C(v20);
  v21 = 0;
  v583 = v19;
  v586 = v19 + 32;
  while (1)
  {
    if (v21 >= *(v19 + 16))
    {
      goto LABEL_582;
    }

    v22 = *(v586 + 8 * v21);
    v23 = v22 >> 61;
    v606 = v21;
    if ((v22 >> 61) <= 2)
    {
      if (v23)
      {
        v24 = v22 & 0x1FFFFFFFFFFFFFFFLL;
        if (v23 == 1)
        {
          v25 = *(v24 + 16);
          v638 = MEMORY[0x277D83B88];
          *&v637 = v25;
        }

        else
        {
          v70 = *(v24 + 16);
          v638 = MEMORY[0x277D839F8];
          *&v637 = v70;
        }
      }

      else
      {
        v68 = *(v22 + 16);
        v67 = *(v22 + 24);
        v638 = MEMORY[0x277D837D0];
        *&v637 = v68;
        *(&v637 + 1) = v67;
      }

      goto LABEL_131;
    }

    if (v23 == 3)
    {
      v69 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v638 = MEMORY[0x277D839B0];
      LOBYTE(v637) = v69;
      goto LABEL_131;
    }

    if (v23 != 4)
    {
      break;
    }

    v26 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *(v26 + 16);
    if (v27)
    {
      v623 = MEMORY[0x277D84F90];

      v568 = v27;
      v591 = v26;
      sub_255D8077C(v27);
      result = v26;
      v28 = 0;
      v578 = v26 + 32;
      while (v28 < *(result + 16))
      {
        v29 = *(v578 + 8 * v28);
        v30 = v29 >> 61;
        v609 = v28;
        if ((v29 >> 61) > 2)
        {
          if (v30 == 3)
          {
            v42 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v636 = MEMORY[0x277D839B0];
            LOBYTE(v635) = v42;
          }

          else
          {
            if (v30 != 4)
            {
              v44 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
              v45 = sub_255E3AB08();
              v46 = v45;
              v47 = 1 << *(v44 + 32);
              if (v47 < 64)
              {
                v48 = ~(-1 << v47);
              }

              else
              {
                v48 = -1;
              }

              v49 = v48 & *(v44 + 64);
              v2 = (v47 + 63) >> 6;
              v553 = v45 + 64;

              v50 = 0;
              v559 = v46;
              if (!v49)
              {
LABEL_56:
                v53 = v50;
                while (1)
                {
                  v50 = v53 + 1;
                  if (__OFADD__(v53, 1))
                  {
                    goto LABEL_564;
                  }

                  if (v50 >= v2)
                  {

                    v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                    *&v635 = v46;
                    v8 = v621;
                    goto LABEL_68;
                  }

                  v54 = *(v44 + 64 + 8 * v50);
                  ++v53;
                  if (v54)
                  {
                    v51 = v4;
                    v52 = __clz(__rbit64(v54));
                    v596 = (v54 - 1) & v54;
                    goto LABEL_61;
                  }
                }
              }

              while (1)
              {
                v51 = v4;
                v52 = __clz(__rbit64(v49));
                v596 = (v49 - 1) & v49;
LABEL_61:
                v55 = v52 | (v50 << 6);
                v56 = (*(v44 + 48) + 16 * v55);
                v57 = *v56;
                v58 = v56[1];

                sub_255D7D920(v633);
                if (v51)
                {
                  break;
                }

                v46 = v559;
                *(v553 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
                v59 = (v559[6] + 16 * v55);
                *v59 = v57;
                v59[1] = v58;
                result = sub_255D31B4C(v633, (v559[7] + 32 * v55));
                v60 = v559[2];
                v61 = __OFADD__(v60, 1);
                v62 = v60 + 1;
                if (v61)
                {
                  goto LABEL_591;
                }

                v559[2] = v62;
                v4 = 0;
                v19 = v583;
                v49 = v596;
                if (!v596)
                {
                  goto LABEL_56;
                }
              }

LABEL_545:

              goto LABEL_546;
            }

            v33 = v4;
            v34 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v35 = *(v34 + 16);
            if (v35)
            {
              v622 = MEMORY[0x277D84F90];

              result = sub_255D8077C(v35);
              v36 = 0;
              while (v36 < *(v34 + 16))
              {
                v2 = *(v34 + 8 * v36 + 32);

                sub_255D7D920(v633);
                if (v33)
                {

                  goto LABEL_545;
                }

                v37 = v622;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_255DE5CE0(0, *(v622 + 16) + 1, 1);
                  v37 = v622;
                }

                v39 = *(v37 + 16);
                v38 = *(v37 + 24);
                if (v39 >= v38 >> 1)
                {
                  sub_255DE5CE0((v38 > 1), v39 + 1, 1);
                  v37 = v622;
                }

                ++v36;
                *(v37 + 16) = v39 + 1;
                result = sub_255D31B4C(v633, (v37 + 32 * v39 + 32));
                if (v35 == v36)
                {

                  goto LABEL_67;
                }
              }

              goto LABEL_577;
            }

            v37 = MEMORY[0x277D84F90];
LABEL_67:
            v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

            *&v635 = v37;
            v4 = v33;
            v8 = v621;
            v19 = v583;
          }
        }

        else if (v30)
        {
          v31 = v29 & 0x1FFFFFFFFFFFFFFFLL;
          if (v30 == 1)
          {
            v32 = *(v31 + 16);
            v636 = MEMORY[0x277D83B88];
            *&v635 = v32;
          }

          else
          {
            v43 = *(v31 + 16);
            v636 = MEMORY[0x277D839F8];
            *&v635 = v43;
          }
        }

        else
        {
          v41 = *(v29 + 16);
          v40 = *(v29 + 24);
          v636 = MEMORY[0x277D837D0];
          *&v635 = v41;
          *(&v635 + 1) = v40;
        }

LABEL_68:
        v63 = v623;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_255DE5CE0(0, v623[2] + 1, 1);
          v63 = v623;
        }

        v65 = v63[2];
        v64 = v63[3];
        if (v65 >= v64 >> 1)
        {
          sub_255DE5CE0((v64 > 1), v65 + 1, 1);
          v63 = v623;
        }

        v63[2] = v65 + 1;
        v66 = &v63[4 * v65];
        v28 = v609 + 1;
        sub_255D31B4C(&v635, v66 + 2);
        result = v591;
        if (v609 + 1 == v568)
        {

          goto LABEL_129;
        }
      }

      goto LABEL_583;
    }

    v63 = MEMORY[0x277D84F90];
LABEL_129:
    v122 = &qword_27F7E6158;
    v123 = &unk_255E3BB80;
LABEL_130:
    v638 = __swift_instantiateConcreteTypeFromMangledNameV2(v122, v123);

    *&v637 = v63;
LABEL_131:
    v124 = v627;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255DE5CE0(0, v627[2] + 1, 1);
      v124 = v627;
    }

    v125 = v606;
    v127 = v124[2];
    v126 = v124[3];
    if (v127 >= v126 >> 1)
    {
      sub_255DE5CE0((v126 > 1), v127 + 1, 1);
      v125 = v606;
      v124 = v627;
    }

    v124[2] = v127 + 1;
    v128 = &v124[4 * v127 + 4];
    v129 = v125 + 1;
    result = sub_255D31B4C(&v637, v128);
    v21 = v129;
    if (v129 == v573)
    {

      goto LABEL_264;
    }
  }

  v71 = v22 & 0x1FFFFFFFFFFFFFFFLL;
  v2 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
  v72 = sub_255E3AB08();
  v63 = v72;
  v545 = v2 + 64;
  v73 = 1 << *(v2 + 32);
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  else
  {
    v74 = -1;
  }

  v75 = v74 & *(v2 + 64);
  v76 = (v73 + 63) >> 6;
  v569 = v72 + 64;

  v77 = 0;
  v560 = v76;
  v564 = v2;
  if (!v75)
  {
LABEL_82:
    v80 = v77;
    while (1)
    {
      v77 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_565;
      }

      if (v77 >= v76)
      {

        v122 = &qword_27F7E7540;
        v123 = &qword_255E48B38;
        goto LABEL_130;
      }

      v81 = *(v545 + 8 * v77);
      ++v80;
      if (v81)
      {
        v78 = __clz(__rbit64(v81));
        v79 = (v81 - 1) & v81;
        goto LABEL_87;
      }
    }
  }

  while (2)
  {
    v78 = __clz(__rbit64(v75));
    v79 = (v75 - 1) & v75;
LABEL_87:
    v82 = v78 | (v77 << 6);
    v83 = (*(v2 + 48) + 16 * v82);
    v84 = *v83;
    v85 = v83[1];
    v86 = *(*(v2 + 56) + 8 * v82);
    v87 = v86 >> 61;
    v579 = v79;
    v592 = v84;
    v597 = v82;
    if ((v86 >> 61) <= 2)
    {
      if (v87)
      {
        v88 = v86 & 0x1FFFFFFFFFFFFFFFLL;
        if (v87 == 1)
        {
          v89 = *(v88 + 16);
          v636 = MEMORY[0x277D83B88];
          *&v635 = v89;
        }

        else
        {
          v100 = *(v88 + 16);
          v636 = MEMORY[0x277D839F8];
          *&v635 = v100;
        }
      }

      else
      {
        v97 = *(v86 + 16);
        v98 = *(v86 + 24);
        v636 = MEMORY[0x277D837D0];
        *&v635 = v97;
        *(&v635 + 1) = v98;
      }

LABEL_106:

LABEL_107:
      *(v569 + ((v597 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v597;
      v101 = (v63[6] + 16 * v597);
      *v101 = v592;
      v101[1] = v85;
      result = sub_255D31B4C(&v635, (v63[7] + 32 * v597));
      v102 = v63[2];
      v61 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v61)
      {
        goto LABEL_594;
      }

      v63[2] = v103;
      v75 = v579;
      if (!v579)
      {
        goto LABEL_82;
      }

      continue;
    }

    break;
  }

  if (v87 == 3)
  {
    v99 = *((v86 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v636 = MEMORY[0x277D839B0];
    LOBYTE(v635) = v99;
    goto LABEL_106;
  }

  v534 = v85;
  if (v87 == 4)
  {
    v90 = v63;
    v91 = *((v86 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v92 = *(v91 + 16);
    if (v92)
    {
      v529 = v71;
      v624 = MEMORY[0x277D84F90];

      result = sub_255D8077C(v92);
      v93 = 0;
      while (v93 < *(v91 + 16))
      {
        v2 = *(v91 + 8 * v93 + 32);

        sub_255D7D920(v633);
        if (v4)
        {

          goto LABEL_546;
        }

        v94 = v624;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_255DE5CE0(0, *(v624 + 16) + 1, 1);
          v94 = v624;
        }

        v96 = *(v94 + 16);
        v95 = *(v94 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_255DE5CE0((v95 > 1), v96 + 1, 1);
          v94 = v624;
        }

        ++v93;
        *(v94 + 16) = v96 + 1;
        result = sub_255D31B4C(v633, (v94 + 32 * v96 + 32));
        if (v92 == v93)
        {

          v71 = v529;
          goto LABEL_126;
        }
      }

      goto LABEL_584;
    }

    v94 = MEMORY[0x277D84F90];
LABEL_126:
    v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

    *&v635 = v94;
    v8 = v621;
    v19 = v583;
    v63 = v90;
    v76 = v560;
    v2 = v564;
    goto LABEL_107;
  }

  v513 = v63;
  v530 = v71;
  v610 = v4;
  v104 = *((v86 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v105 = sub_255E3AB08();
  v106 = v104 + 64;
  v107 = 1 << *(v104 + 32);
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  else
  {
    v108 = -1;
  }

  v109 = v108 & *(v104 + 64);
  v110 = (v107 + 63) >> 6;
  v550 = v105;
  v538 = v105 + 64;

  v554 = v104;
  v4 = v610;

  v111 = 0;
  if (!v109)
  {
LABEL_115:
    v114 = v111;
    v63 = v513;
    while (1)
    {
      v111 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        goto LABEL_572;
      }

      if (v111 >= v110)
      {

        v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

        *&v635 = v550;
        v8 = v621;
        v19 = v583;
        v71 = v530;
        v85 = v534;
        goto LABEL_107;
      }

      v115 = *(v106 + 8 * v111);
      ++v114;
      if (v115)
      {
        v112 = v4;
        v113 = __clz(__rbit64(v115));
        v611 = (v115 - 1) & v115;
        goto LABEL_120;
      }
    }
  }

  while (1)
  {
    v112 = v4;
    v113 = __clz(__rbit64(v109));
    v611 = (v109 - 1) & v109;
LABEL_120:
    v2 = v113 | (v111 << 6);
    v116 = (*(v554 + 48) + 16 * v2);
    v117 = *v116;
    v118 = v116[1];

    sub_255D7D920(v633);
    if (v112)
    {
      break;
    }

    *(v538 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
    v119 = (v550[6] + 16 * v2);
    *v119 = v117;
    v119[1] = v118;
    result = sub_255D31B4C(v633, (v550[7] + 32 * v2));
    v120 = v550[2];
    v61 = __OFADD__(v120, 1);
    v121 = v120 + 1;
    if (v61)
    {
      goto LABEL_602;
    }

    v550[2] = v121;
    v4 = 0;
    v76 = v560;
    v2 = v564;
    v109 = v611;
    if (!v611)
    {
      goto LABEL_115;
    }
  }

LABEL_546:

LABEL_559:

LABEL_560:

  return v2;
}

unint64_t sub_255D8AE34()
{
  result = qword_27F7E74F8;
  if (!qword_27F7E74F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DecodableState, &type metadata for DecodableState, v0, v1);
    atomic_store(result, &qword_27F7E74F8);
  }

  return result;
}

uint64_t sub_255D8AE94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255D8AEF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI19DecodableStateErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255D8AFC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D8B01C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_255D8B078(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI12SubReferenceOySiGSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13IntResolvableOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D8B130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 25))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 24);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 126 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255D8B184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

uint64_t sub_255D8B1EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7578, &qword_255E48DB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D8B6B0();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D8B704();
    sub_255E3ABA8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8B380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656E696CLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255D8B404(uint64_t a1)
{
  v2 = sub_255D8B6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D8B440(uint64_t a1)
{
  v2 = sub_255D8B6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D8B47C@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v9 <= 0xFD)
  {
    sub_255D612A0(v6, v7, v8, v9);
    sub_255D8F9E4(a2);
    sub_255D4CB98(v6, v7, v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7568, &qword_255E48DA8);
  v11 = sub_255E38AE8();
  a3[3] = v11;
  v13[0] = v10;
  v13[1] = sub_255D8B64C();
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v11, v13);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39CF8();
}

unint64_t sub_255D8B5D0(uint64_t a1)
{
  result = sub_255D8B5F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D8B5F8()
{
  result = qword_27F7E7560;
  if (!qword_27F7E7560)
  {
    result = swift_getWitnessTable(byte_255E48D64, &type metadata for LineLimitModifier, v0, v1);
    atomic_store(result, &qword_27F7E7560);
  }

  return result;
}

unint64_t sub_255D8B64C()
{
  result = qword_27F7E7570;
  if (!qword_27F7E7570)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7568, &qword_255E48DA8);
    result = swift_getWitnessTable(MEMORY[0x277CE0868], v3, v0, v1);
    atomic_store(result, &qword_27F7E7570);
  }

  return result;
}

unint64_t sub_255D8B6B0()
{
  result = qword_27F7E7580;
  if (!qword_27F7E7580)
  {
    result = swift_getWitnessTable(byte_255E48E7C, &type metadata for LineLimitModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7580);
  }

  return result;
}

unint64_t sub_255D8B704()
{
  result = qword_27F7E7588;
  if (!qword_27F7E7588)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IntResolvable, &type metadata for IntResolvable, v0, v1);
    atomic_store(result, &qword_27F7E7588);
  }

  return result;
}

unint64_t sub_255D8B76C()
{
  result = qword_27F7E7590;
  if (!qword_27F7E7590)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for LineLimitModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7590);
  }

  return result;
}

unint64_t sub_255D8B7C4()
{
  result = qword_27F7E7598;
  if (!qword_27F7E7598)
  {
    result = swift_getWitnessTable(byte_255E48DC4, &type metadata for LineLimitModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7598);
  }

  return result;
}

unint64_t sub_255D8B81C()
{
  result = qword_27F7E75A0;
  if (!qword_27F7E75A0)
  {
    result = swift_getWitnessTable(byte_255E48DEC, &type metadata for LineLimitModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E75A0);
  }

  return result;
}

void sub_255D8B874(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *v3;
  if (*(a1 + 8))
  {
    v7 = *a1;
    v8 = *&v5;
    if (*(a2 + 8))
    {
      v8 = *a2;
    }

    if (*v3 > 1u)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (*(a2 + 8))
  {
    v7 = v4;
    v8 = *a2;
    if (*v3 > 1u)
    {
LABEL_5:
      if (v6 == 2)
      {
        v9 = v8 * v7;
      }

      else if (v6 == 3)
      {
        v9 = v7 / v8;
      }

      else
      {
        v13 = a3;
        v9 = fmod(v7, v8);
        a3 = v13;
      }

LABEL_22:
      v12 = *&v9;
      v11 = 1;
      goto LABEL_23;
    }

LABEL_10:
    v10 = v8 + v7;
    v9 = v7 - v8;
    if (!*v3)
    {
      v9 = v10;
    }

    goto LABEL_22;
  }

  if (*v3 <= 1u)
  {
    if (*v3)
    {
      v12 = v4 - *&v5;
      if (__OFSUB__(v4, *&v5))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      goto LABEL_35;
    }

    v12 = v4 + *&v5;
    if (!__OFADD__(v4, *&v5))
    {
      goto LABEL_35;
    }

    __break(1u);
LABEL_28:
    v12 = v4 * *&v5;
    *&v5 = (v4 * *&v5) >> 64;
    if (*&v5 != v12 >> 63)
    {
      __break(1u);
      goto LABEL_30;
    }

LABEL_35:
    v11 = 0;
    goto LABEL_23;
  }

  if (v6 == 2)
  {
    goto LABEL_28;
  }

  if (v6 == 3)
  {
    if (v5 != 0.0)
    {
      if (v4 != 0x8000000000000000 || v5 != NAN)
      {
        v11 = 0;
        v12 = v4 / *&v5;
LABEL_23:
        *a3 = v12;
        *(a3 + 8) = v11;
        return;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_30:
  if (v5 == 0.0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v4 != 0x8000000000000000 || v5 != NAN)
  {
    v11 = 0;
    v12 = v4 % *&v5;
    goto LABEL_23;
  }

LABEL_40:
  __break(1u);
}

LiftUI::MathOperation_optional __swiftcall MathOperation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255E3AB48();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_255D8BA54()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D8BAB0(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D8BAF0(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t NumericValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (v2)
  {

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_255D8BD3C(v8);
    sub_255D7B470();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    swift_willThrow();
  }

  else
  {
    sub_255D4F134(v8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_255E3ACA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    *a2 = v6;
    *(a2 + 8) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8BD3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E74B8, &qword_255E48640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t *static NumericValue.create(with:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result >> 61;
  if (v3 == 2)
  {
    *a2 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    *(a2 + 8) = 1;
  }

  else if (v3 == 1)
  {
    *a2 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    *(a2 + 8) = 0;
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    v4 = MEMORY[0x277D839F8];
    *v5 = v2;
    v5[1] = v4;
    swift_willThrow();
  }

  return result;
}

uint64_t NumericValue.asDecodable.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = swift_allocObject();
  *(result + 16) = v3;
  v6 = 0x2000000000000000;
  if (v4)
  {
    v6 = 0x4000000000000000;
  }

  *a1 = v6 | result;
  return result;
}

unint64_t sub_255D8BEC0()
{
  result = qword_27F7E75A8;
  if (!qword_27F7E75A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MathOperation, &type metadata for MathOperation, v0, v1);
    atomic_store(result, &qword_27F7E75A8);
  }

  return result;
}

uint64_t sub_255D8BF14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = swift_allocObject();
  *(result + 16) = v3;
  v6 = 0x2000000000000000;
  if (v4)
  {
    v6 = 0x4000000000000000;
  }

  *a1 = v6 | result;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NumericValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for NumericValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_255D8C060()
{
  result = qword_27F7E75B0;
  if (!qword_27F7E75B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MathOperation, &type metadata for MathOperation, v0, v1);
    atomic_store(result, &qword_27F7E75B0);
  }

  return result;
}

uint64_t sub_255D8C0B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 25))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255D8C108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_255D8C174(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 121))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_255D8C1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

unint64_t sub_255D8C234@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v11 = *(v3 + 72);
  v33 = *(v3 + 64);
  v12 = *(v3 + 80);
  v13 = *(v3 + 88);
  v29 = *(v3 + 104);
  v30 = *(v3 + 96);
  v28 = *(v3 + 112);
  v14 = 1.0;
  v31 = *(v3 + 120);
  if (v6 == 255)
  {
    v17 = 1.0;
    if (v10 == 255)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = sub_255DDEF98(a2, *v3, *(v3 + 8), *(v3 + 16), v6 & 1);
    if (v4)
    {
      return result;
    }

    v17 = v16;
    if (v10 == 255)
    {
      goto LABEL_8;
    }
  }

  result = sub_255DDEF98(a2, v7, v8, v9, v10 & 1);
  if (v4)
  {
    return result;
  }

  v14 = v18;
LABEL_8:
  v19 = 0.5;
  if (v13 == 255)
  {
    v21 = 0.5;
  }

  else
  {
    result = sub_255DDEF98(a2, v33, v11, v12, v13 & 1);
    if (v4)
    {
      return result;
    }

    v21 = v20;
  }

  if (v31 != 255)
  {
    result = sub_255DDEF98(a2, v30, v29, v28, v31 & 1);
    if (v4)
    {
      return result;
    }

    v19 = v22;
  }

  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = sub_255E38AE8();
  a3[3] = v25;
  v32[0] = v24;
  v32[1] = MEMORY[0x277CDF690];
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v25, v32);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return MEMORY[0x259C4DC60](v23, v24, v17, v14, v21, v19);
}

uint64_t sub_255D8C42C()
{
  v1 = 120;
  v2 = 0x58726F68636E61;
  if (*v0 != 2)
  {
    v2 = 0x59726F68636E61;
  }

  if (*v0)
  {
    v1 = 121;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255D8C490@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_255D8D48C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255D8C4B8(uint64_t a1)
{
  v2 = sub_255D8D1A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D8C4F4(uint64_t a1)
{
  v2 = sub_255D8D1A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D8C530@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E75E8, &unk_255E496E0);
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D8D1A0();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
  LOBYTE(v30) = 0;
  sub_255D38950(&qword_27F7E62E8, &qword_27F7E62E0, &qword_255E3C940, protocol conformance descriptor for Referenceable<A>);
  v8 = v29;
  sub_255E3ABA8();
  v26 = v37;
  v27 = v38;
  v54 = v39;
  LOBYTE(v30) = 1;
  sub_255E3ABA8();
  v23 = v37;
  v24 = v38;
  v22 = v39;
  LOBYTE(v30) = 2;
  v21 = 0;
  sub_255E3ABA8();
  v25 = *(&v37 + 1);
  v20 = v37;
  v18 = v38;
  v19 = v39;
  v55 = 3;
  sub_255E3ABA8();
  (*(v28 + 8))(v7, v8);
  v28 = *(&v51 + 1);
  v29 = v51;
  v21 = v52;
  HIDWORD(v17) = v53;
  v9 = v26;
  v30 = v26;
  v10 = v27;
  *&v31 = v27;
  v11 = v54;
  BYTE8(v31) = v54;
  v32 = v23;
  *&v33 = v24;
  v12 = v22;
  BYTE8(v33) = v22;
  *&v34 = v20;
  *(&v34 + 1) = v25;
  *&v35 = v18;
  BYTE8(v35) = v19;
  v36[0] = v51;
  *&v36[1] = v52;
  BYTE8(v36[1]) = v53;
  v13 = v33;
  a2[2] = v23;
  a2[3] = v13;
  v14 = v35;
  a2[4] = v34;
  a2[5] = v14;
  v15 = v31;
  *a2 = v30;
  a2[1] = v15;
  *(a2 + 105) = *(v36 + 9);
  a2[6] = v36[0];
  sub_255D8D1F4(&v30, &v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v37 = v9;
  v38 = v10;
  v39 = v11;
  v40 = v23;
  v41 = v24;
  v42 = v12;
  v43 = v20;
  v44 = v25;
  v45 = v18;
  v46 = v19;
  v47 = v29;
  v48 = v28;
  v49 = v21;
  v50 = BYTE4(v17);
  return sub_255D8D22C(&v37);
}

uint64_t sub_255D8CA10()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D8CA74(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D8CAC0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255D8CB40@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D8CB98(uint64_t a1)
{
  v2 = sub_255D8D14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D8CBD4(uint64_t a1)
{
  v2 = sub_255D8D14C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D8CC10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E75D8, &qword_255E496D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D8D14C();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8CD90@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v7 = sub_255E39EC8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v28 = *v3;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  sub_255D3E5A8(v28, v11, v12, v13);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {

    sub_255D38060(v28, v29, v30, v31);
    v26 = 0;
  }

  else
  {
    v26 = 0;
    sub_255D38060(v28, v29, v30, v31);
  }

  v14 = sub_255E3AB48();

  v15 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = MEMORY[0x277CE1050];
  v17 = MEMORY[0x277CE1048];
  if (v14 != 2)
  {
    v17 = MEMORY[0x277CE1058];
  }

  if (v14)
  {
    v16 = v17;
  }

  (*(v8 + 104))(v10, *v16, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E75C8, &qword_255E496D0);
  v18 = v7;
  v19 = sub_255E38AE8();
  v20 = v10;
  v21 = v8;
  v22 = v32;
  v32[3] = v19;
  v23 = sub_255D38950(&qword_27F7E75D0, &qword_27F7E75C8, &qword_255E496D0, MEMORY[0x277CE0868]);
  v27[0] = v15;
  v27[1] = v23;
  v22[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v19, v27, v25);
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_255E39888();
  return (*(v21 + 8))(v20, v18);
}

unint64_t sub_255D8D054(uint64_t a1)
{
  result = sub_255D8D07C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D8D07C()
{
  result = qword_27F7E75B8;
  if (!qword_27F7E75B8)
  {
    result = swift_getWitnessTable(byte_255E4966C, &type metadata for ImageScaleModifier, v0, v1);
    atomic_store(result, &qword_27F7E75B8);
  }

  return result;
}

unint64_t sub_255D8D0D0(uint64_t a1)
{
  result = sub_255D8D0F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D8D0F8()
{
  result = qword_27F7E75C0;
  if (!qword_27F7E75C0)
  {
    result = swift_getWitnessTable(byte_255E49644, &type metadata for ScaleEffectModifier, v0, v1);
    atomic_store(result, &qword_27F7E75C0);
  }

  return result;
}

unint64_t sub_255D8D14C()
{
  result = qword_27F7E75E0;
  if (!qword_27F7E75E0)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for ImageScaleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E75E0);
  }

  return result;
}

unint64_t sub_255D8D1A0()
{
  result = qword_27F7E75F0;
  if (!qword_27F7E75F0)
  {
    result = swift_getWitnessTable(byte_255E498A4, &type metadata for ScaleEffectModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E75F0);
  }

  return result;
}

unint64_t sub_255D8D280()
{
  result = qword_27F7E75F8;
  if (!qword_27F7E75F8)
  {
    result = swift_getWitnessTable(byte_255E497C4, &type metadata for ImageScaleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E75F8);
  }

  return result;
}

unint64_t sub_255D8D2D8()
{
  result = qword_27F7E7600;
  if (!qword_27F7E7600)
  {
    result = swift_getWitnessTable(aMTy, &type metadata for ScaleEffectModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7600);
  }

  return result;
}

unint64_t sub_255D8D330()
{
  result = qword_27F7E7608;
  if (!qword_27F7E7608)
  {
    result = swift_getWitnessTable(byte_255E497EC, &type metadata for ScaleEffectModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7608);
  }

  return result;
}

unint64_t sub_255D8D388()
{
  result = qword_27F7E7610;
  if (!qword_27F7E7610)
  {
    result = swift_getWitnessTable(byte_255E49814, &type metadata for ScaleEffectModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7610);
  }

  return result;
}

unint64_t sub_255D8D3E0()
{
  result = qword_27F7E7618;
  if (!qword_27F7E7618)
  {
    result = swift_getWitnessTable(byte_255E496FC, &type metadata for ImageScaleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7618);
  }

  return result;
}

unint64_t sub_255D8D438()
{
  result = qword_27F7E7620;
  if (!qword_27F7E7620)
  {
    result = swift_getWitnessTable(byte_255E49724, &type metadata for ImageScaleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7620);
  }

  return result;
}

uint64_t sub_255D8D48C(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x58726F68636E61 && a2 == 0xE700000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x59726F68636E61 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_255E3AC68();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_255D8D5DC(unint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v16 = *v1;
  v17 = *(v1 + 8);
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  sub_255D3E5A8(*v1, v17, v18, v19);
  v8 = StringResolvable.resolved(with:)(a1);
  if (v2)
  {
    return sub_255D38060(v16, v17, v18, v19);
  }

  v11 = v8;
  v12 = v9;
  sub_255D38060(v16, v17, v18, v19);
  v13 = sub_255D8DC34(v11, v12);
  if (v13 == 5)
  {
    sub_255D5C33C();
    swift_allocError();
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 5;
    return swift_willThrow();
  }

  else
  {
    if (v7 != 255)
    {
      v15 = v13;
      sub_255DDEF98(a1, v4, v5, v6, v7 & 1);
      v13 = v15;
    }

    if (v13 <= 1u)
    {
      if (v13)
      {
        if (v7 == 255)
        {
          return sub_255E3A288();
        }

        else
        {
          return sub_255E3A278();
        }
      }

      else
      {
        return sub_255E3A298();
      }
    }

    else if (v13 == 2)
    {
      if (v7 == 255)
      {
        return sub_255E3A268();
      }

      else
      {
        return sub_255E3A258();
      }
    }

    else if (v13 == 3)
    {
      if (v7 == 255)
      {
        return sub_255E3A2B8();
      }

      else
      {
        return sub_255E3A2A8();
      }
    }

    else if (v7 == 255)
    {
      return sub_255E3A2D8();
    }

    else
    {
      return sub_255E3A2C8();
    }
  }
}

uint64_t sub_255D8D7AC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7628, &unk_255E49CA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D8DD30();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v21) = 0;
  sub_255D3EA0C();
  sub_255E3ABC8();
  v9 = v24;
  v10 = v25;
  v20 = v26;
  v35 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
  v36 = 1;
  sub_255D65400();
  sub_255E3ABA8();
  (*(v6 + 8))(v8, v5);
  v19 = v32;
  v11 = v33;
  v18 = *(&v32 + 1);
  v12 = v34;
  v13 = v9;
  *&v21 = v9;
  *(&v21 + 1) = v10;
  v14 = v10;
  v15 = v20;
  *&v22 = v20;
  LOBYTE(v10) = v35;
  BYTE8(v22) = v35;
  *v23 = v32;
  *&v23[16] = v33;
  v23[24] = v34;
  v16 = v22;
  *a2 = v21;
  a2[1] = v16;
  a2[2] = *v23;
  *(a2 + 41) = *&v23[9];
  sub_255D8DD84(&v21, &v24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v10;
  v28 = v19;
  v29 = v18;
  v30 = v11;
  v31 = v12;
  return sub_255D8DDBC(&v24);
}

uint64_t sub_255D8DA78()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x6F6974616D696E61;
  }
}

uint64_t sub_255D8DAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974616D696E61 && a2 == 0xED0000657079546ELL;
  if (v6 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_255D8DBA4(uint64_t a1)
{
  v2 = sub_255D8DD30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D8DBE0(uint64_t a1)
{
  v2 = sub_255D8DD30();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_255D8DC34(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255D8DC80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_255D8DCCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = ~a2;
    }
  }

  return result;
}

unint64_t sub_255D8DD30()
{
  result = qword_27F7E7630;
  if (!qword_27F7E7630)
  {
    result = swift_getWitnessTable(byte_255E49D74, &type metadata for SwiftUIAnimation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7630);
  }

  return result;
}

unint64_t sub_255D8DE00()
{
  result = qword_27F7E7638;
  if (!qword_27F7E7638)
  {
    result = swift_getWitnessTable(asc_255E49D4C, &type metadata for SwiftUIAnimation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7638);
  }

  return result;
}

unint64_t sub_255D8DE58()
{
  result = qword_27F7E7640;
  if (!qword_27F7E7640)
  {
    result = swift_getWitnessTable(byte_255E49CBC, &type metadata for SwiftUIAnimation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7640);
  }

  return result;
}

unint64_t sub_255D8DEB0()
{
  result = qword_27F7E7648;
  if (!qword_27F7E7648)
  {
    result = swift_getWitnessTable(byte_255E49CE4, &type metadata for SwiftUIAnimation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7648);
  }

  return result;
}

uint64_t sub_255D8DF04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5 + 8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9 + 8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D917C4();
  sub_255E3AE28();
  if (v2)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_255D395E4(v6, &qword_27F7E76F8, &qword_255E4A740);
  }

  else
  {
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    LOBYTE(v21[0]) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v21[0]) = 0;
      v14 = sub_255E3ABB8();
      v15 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7720, &qword_255E4A760);
      LOBYTE(v20) = 1;
      sub_255D9186C(&qword_27F7E7728, &qword_27F7E7720, &qword_255E4A760);
      sub_255E3ABA8();
      (*(v8 + 8))(v10, v7);
      v16 = v21[0];
      v17 = 1;
      goto LABEL_9;
    }

    LOBYTE(v21[0]) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v21[0]) = 2;
      v12 = sub_255E3ABB8();
      sub_255DE37E8(v21, 0xFuLL, v12, v13);

      (*(v8 + 8))(v10, v7);
      v14 = v21[0];
      v15 = v21[1];
      v16 = v21[2];
      v17 = v22;
      goto LABEL_9;
    }

    (*(v8 + 8))(v10, v7);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  sub_255D4F134(&v20, v21);
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_255E3ACB8();
  v14 = v20;
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v15 = 0;
  v16 = 0;
  v17 = 0;
LABEL_9:
  v18 = v23;
  *v23 = v14;
  v18[1] = v15;
  v18[2] = v16;
  *(v18 + 24) = v17;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8E3D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5 + 8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9 + 8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D917C4();
  sub_255E3AE28();
  if (v2)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_255D395E4(v6, &qword_27F7E76F8, &qword_255E4A740);
  }

  else
  {
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    LOBYTE(v21[0]) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v21[0]) = 0;
      v14 = sub_255E3ABB8();
      v15 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7730, &qword_255E4A768);
      LOBYTE(v20) = 1;
      sub_255D9186C(&qword_27F7E7738, &qword_27F7E7730, &qword_255E4A768);
      sub_255E3ABA8();
      (*(v8 + 8))(v10, v7);
      v16 = v21[0];
      v17 = 1;
      goto LABEL_9;
    }

    LOBYTE(v21[0]) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v21[0]) = 2;
      v12 = sub_255E3ABB8();
      sub_255DE45F4(v21, 0xFuLL, v12, v13);

      (*(v8 + 8))(v10, v7);
      v14 = v21[0];
      v15 = v21[1];
      v16 = v21[2];
      v17 = v22;
      goto LABEL_9;
    }

    (*(v8 + 8))(v10, v7);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  sub_255D4F134(&v20, v21);
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_255E3ACB8();
  v14 = v20;
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v15 = 0;
  v16 = 0;
  v17 = 0;
LABEL_9:
  v18 = v23;
  *v23 = v14;
  v18[1] = v15;
  v18[2] = v16;
  *(v18 + 24) = v17;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8E89C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5 + 8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9 + 8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D917C4();
  sub_255E3AE28();
  if (v2)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_255D395E4(v6, &qword_27F7E76F8, &qword_255E4A740);
  }

  else
  {
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    LOBYTE(v21[0]) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v21[0]) = 0;
      v15 = sub_255E3ABB8();
      v14 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7710, &qword_255E4A758);
      LOBYTE(v20) = 1;
      sub_255D9186C(&qword_27F7E7718, &qword_27F7E7710, &qword_255E4A758);
      sub_255E3ABA8();
      (*(v8 + 8))(v10, v7);
      v16 = v21[0];
      v17 = 1;
      goto LABEL_9;
    }

    LOBYTE(v21[0]) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v21[0]) = 2;
      v12 = sub_255E3ABB8();
      sub_255DE45A4(v21, 0xFuLL, v12, v13);

      (*(v8 + 8))(v10, v7);
      v15 = v21[0];
      v14 = v21[1];
      v16 = v21[2];
      v17 = v22;
      goto LABEL_9;
    }

    (*(v8 + 8))(v10, v7);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  sub_255D4F134(&v20, v21);
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_255E3ACB8();
  v14 = *(&v20 + 1);
  v15 = v20;
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v16 = 0;
  v17 = 0;
LABEL_9:
  v18 = v23;
  *v23 = v15;
  v18[1] = v14;
  v18[2] = v16;
  *(v18 + 24) = v17;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8ED64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5 + 8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9 + 8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D917C4();
  sub_255E3AE28();
  if (v2)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_255D395E4(v6, &qword_27F7E76F8, &qword_255E4A740);
  }

  else
  {
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    LOBYTE(v21[0]) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v21[0]) = 0;
      v14 = sub_255E3ABB8();
      v15 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7748, &qword_255E4A770);
      LOBYTE(v20) = 1;
      sub_255D9186C(&qword_27F7E7750, &qword_27F7E7748, &qword_255E4A770);
      sub_255E3ABA8();
      (*(v8 + 8))(v10, v7);
      v16 = v21[0];
      v17 = 1;
      goto LABEL_9;
    }

    LOBYTE(v21[0]) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v21[0]) = 2;
      v12 = sub_255E3ABB8();
      sub_255DE4644(v21, 0xFuLL, v12, v13);

      (*(v8 + 8))(v10, v7);
      v14 = v21[0];
      v15 = v21[1];
      v16 = v21[2];
      v17 = v22;
      goto LABEL_9;
    }

    (*(v8 + 8))(v10, v7);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  sub_255D4F134(&v20, v21);
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_255D91818();
  sub_255E3ACB8();
  v14 = v20;
  v15 = BYTE8(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v16 = 0;
  v17 = 0;
LABEL_9:
  v18 = v23;
  *v23 = v14;
  v18[1] = v15;
  v18[2] = v16;
  *(v18 + 24) = v17;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8F230@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5 + 8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9 + 8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D917C4();
  sub_255E3AE28();
  if (v2)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_255D395E4(v6, &qword_27F7E76F8, &qword_255E4A740);
  }

  else
  {
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    LOBYTE(v21[0]) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v21[0]) = 0;
      v14 = sub_255E3ABB8();
      v15 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7758, &qword_255E4A778);
      LOBYTE(v20) = 1;
      sub_255D9186C(&qword_27F7E7760, &qword_27F7E7758, &qword_255E4A778);
      sub_255E3ABA8();
      (*(v8 + 8))(v10, v7);
      v16 = v21[0];
      v17 = 1;
      goto LABEL_9;
    }

    LOBYTE(v21[0]) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v21[0]) = 2;
      v12 = sub_255E3ABB8();
      sub_255DE4694(v21, 0xFuLL, v12, v13);

      (*(v8 + 8))(v10, v7);
      v14 = v21[0];
      v15 = v21[1];
      v16 = v21[2];
      v17 = v22;
      goto LABEL_9;
    }

    (*(v8 + 8))(v10, v7);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  sub_255D4F134(&v20, v21);
  __swift_project_boxed_opaque_existential_1(v21, v22);
  sub_255D7D39C();
  sub_255E3ACB8();
  v14 = v20;
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v15 = 0;
  v16 = 0;
  v17 = 0;
LABEL_9:
  v18 = v23;
  *v23 = v14;
  v18[1] = v15;
  v18[2] = v16;
  *(v18 + 24) = v17;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

double sub_255D8F6FC(unint64_t a1)
{
  v2 = *(v1 + 24);
  if (v2 < 0)
  {
    v14 = *(v1 + 8);
    sub_255D8FD00(a1, &v12);
    v9 = v12;
    v10 = v13;
    sub_255D8FD00(a1, &v7);
    v5 = v7;
    v6 = v8;
    sub_255D8B874(&v9, &v5, &v11);
    return v11;
  }

  else
  {
    sub_255DDEF98(a1, *v1, *(v1 + 8), *(v1 + 16), v2 & 1);
  }

  return result;
}

uint64_t sub_255D8F9E4(unint64_t a1)
{
  v2 = *(v1 + 24);
  if ((v2 & 0x80000000) == 0)
  {
    return sub_255DDEA10(a1, *v1, *(v1 + 8), *(v1 + 16), v2 & 1);
  }

  v15 = *(v1 + 8);
  sub_255D8FD00(a1, &v13);
  v9 = v13;
  v10 = v14;
  sub_255D8FD00(a1, &v7);
  v5 = v7;
  v6 = v8;
  sub_255D8B874(&v9, &v5, &v11);
  result = *&v11;
  if (v12 == 1)
  {
    if ((~*&v11 & 0x7FF0000000000000) != 0)
    {
      if (v11 > -9.22337204e18)
      {
        if (v11 < 9.22337204e18)
        {
          return v11;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_255D8FD00(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  if (*v2 < 0)
  {
    v11 = v6 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = *(v11 + 16);
    v21 = *(v11 + 24);
    v17 = v12;
    sub_255D8FD00(a1, &v19);
    if (!v3)
    {
      v17 = v19;
      v18 = v20;
      sub_255D8FD00(a1, &v15);
      v13 = v15;
      v14 = v16;
      sub_255D8B874(&v17, &v13, a2);
    }
  }

  else
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    sub_255D348B4(v7, v8, v9, v10);
    sub_255DDE830(a1, v7, v8, v9, v10, a2);
    sub_255D34870(v7, v8, v9, v10);
  }
}

unint64_t sub_255D8FE30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D91630(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255D8FE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D91630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D8FE88(uint64_t a1)
{
  v2 = sub_255D902CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D8FEC4(uint64_t a1)
{
  v2 = sub_255D902CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NumericResolvable.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7650, &qword_255E49DD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7658, &qword_255E49DD8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D902CC();
  sub_255E3AE28();
  if (v2)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_255D395E4(v6, &qword_27F7E7650, &qword_255E49DD0);
LABEL_6:
    sub_255D3CE1C(a1, v20);
    sub_255D8ED64(v20, &v21);
    v19 = v21;
    v11 = v22;
    v12 = v23;
    v18 = swift_allocObject();
    *(v18 + 16) = v19;
    *(v18 + 32) = v11;
    *(v18 + 40) = v12;
    goto LABEL_7;
  }

  (*(v8 + 56))(v6, 0, 1, v7);
  (*(v8 + 32))(v10, v6, v7);
  LOBYTE(v20[0]) = 1;
  if ((sub_255E3ABE8() & 1) == 0)
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_6;
  }

  LOBYTE(v21) = 0;
  sub_255D90320();
  sub_255E3ABC8();
  v14 = v20[0];
  LOBYTE(v21) = 1;
  sub_255D90374();
  sub_255E3ABC8();
  v15 = v20[0];
  LOBYTE(v21) = 2;
  sub_255E3ABC8();
  (*(v8 + 8))(v10, v7);
  v16 = v20[0];
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  *(v17 + 32) = v16;
  v18 = v17 | 0x8000000000000000;
LABEL_7:
  *v24 = v18;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255D902CC()
{
  result = qword_27F7E7660;
  if (!qword_27F7E7660)
  {
    result = swift_getWitnessTable(asc_255E4A6EC, &type metadata for NumericResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7660);
  }

  return result;
}

unint64_t sub_255D90320()
{
  result = qword_27F7E7668;
  if (!qword_27F7E7668)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NumericResolvable, &type metadata for NumericResolvable, v0, v1);
    atomic_store(result, &qword_27F7E7668);
  }

  return result;
}

unint64_t sub_255D90374()
{
  result = qword_27F7E7670;
  if (!qword_27F7E7670)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MathOperation, &type metadata for MathOperation, v0, v1);
    atomic_store(result, &qword_27F7E7670);
  }

  return result;
}

unint64_t sub_255D903E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D9167C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255D90410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D9167C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D90438(uint64_t a1)
{
  v2 = sub_255D9083C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D90474(uint64_t a1)
{
  v2 = sub_255D9083C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DoubleResolvable.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7678, &qword_255E49DE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7680, &unk_255E49DE8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9083C();
  sub_255E3AE28();
  if (v2)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_255D395E4(v6, &qword_27F7E7678, &qword_255E49DE0);
LABEL_6:
    sub_255D3CE1C(a1, v18);
    sub_255D8E3D0(v18, v19);
    v13 = v19[0];
    v14 = v19[1];
    v15 = v19[2];
    v16 = v20;
    goto LABEL_7;
  }

  (*(v8 + 56))(v6, 0, 1, v7);
  (*(v8 + 32))(v10, v6, v7);
  v18[0] = 1;
  if ((sub_255E3ABE8() & 1) == 0)
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_6;
  }

  LOBYTE(v19[0]) = 0;
  sub_255D90320();
  sub_255E3ABC8();
  v13 = *v18;
  LOBYTE(v19[0]) = 1;
  sub_255D90374();
  sub_255E3ABC8();
  v14 = v18[0];
  LOBYTE(v19[0]) = 2;
  sub_255E3ABC8();
  (*(v8 + 8))(v10, v7);
  v15 = *v18;
  v16 = 0x80;
LABEL_7:
  v11 = v21;
  *v21 = v13;
  v11[1] = v14;
  v11[2] = v15;
  *(v11 + 24) = v16;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255D9083C()
{
  result = qword_27F7E7688;
  if (!qword_27F7E7688)
  {
    result = swift_getWitnessTable(byte_255E4A69C, &type metadata for DoubleResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7688);
  }

  return result;
}

uint64_t sub_255D908C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x726F74617265706FLL;
  v5 = 7563378;
  if (v2 != 1)
  {
    v4 = 7563378;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7563372;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0xE800000000000000;
  if (*a2 == 1)
  {
    v5 = 0x726F74617265706FLL;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v5;
  }

  else
  {
    v9 = 7563372;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D909A0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D90A30(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D90AAC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D90B38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D916C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255D90B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D916C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D90B90(uint64_t a1)
{
  v2 = sub_255D90F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D90BCC(uint64_t a1)
{
  v2 = sub_255D90F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntResolvable.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7690, &qword_255E49DF8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7698, &unk_255E49E00);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D90F94();
  sub_255E3AE28();
  if (v2)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_255D395E4(v6, &qword_27F7E7690, &qword_255E49DF8);
LABEL_6:
    sub_255D3CE1C(a1, v18);
    sub_255D8DF04(v18, v19);
    v13 = v19[0];
    v14 = v19[1];
    v15 = v19[2];
    v16 = v20;
    goto LABEL_7;
  }

  (*(v8 + 56))(v6, 0, 1, v7);
  (*(v8 + 32))(v10, v6, v7);
  v18[0] = 1;
  if ((sub_255E3ABE8() & 1) == 0)
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_6;
  }

  LOBYTE(v19[0]) = 0;
  sub_255D90320();
  sub_255E3ABC8();
  v13 = *v18;
  LOBYTE(v19[0]) = 1;
  sub_255D90374();
  sub_255E3ABC8();
  v14 = v18[0];
  LOBYTE(v19[0]) = 2;
  sub_255E3ABC8();
  (*(v8 + 8))(v10, v7);
  v15 = *v18;
  v16 = 0x80;
LABEL_7:
  v11 = v21;
  *v21 = v13;
  v11[1] = v14;
  v11[2] = v15;
  *(v11 + 24) = v16;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255D90F94()
{
  result = qword_27F7E76A0;
  if (!qword_27F7E76A0)
  {
    result = swift_getWitnessTable(byte_255E4A64C, &type metadata for IntResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E76A0);
  }

  return result;
}

uint64_t sub_255D90FFC(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 24) < 0)
  {
    sub_255E3AAC8();
    MEMORY[0x259C4E8F0](32, 0xE100000000000000);
    sub_255E3AAC8();
    MEMORY[0x259C4E8F0](32, 0xE100000000000000);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  }

  sub_255E3AAC8();
  return 0;
}

uint64_t sub_255D9113C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255D91198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_255D9122C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 25))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255D9127C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_255D9131C()
{
  result = qword_27F7E76B0;
  if (!qword_27F7E76B0)
  {
    result = swift_getWitnessTable(byte_255E4A444, &type metadata for NumericResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E76B0);
  }

  return result;
}

unint64_t sub_255D91374()
{
  result = qword_27F7E76B8;
  if (!qword_27F7E76B8)
  {
    result = swift_getWitnessTable(byte_255E4A534, &type metadata for DoubleResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E76B8);
  }

  return result;
}

unint64_t sub_255D913CC()
{
  result = qword_27F7E76C0;
  if (!qword_27F7E76C0)
  {
    result = swift_getWitnessTable(byte_255E4A624, &type metadata for IntResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E76C0);
  }

  return result;
}

unint64_t sub_255D91424()
{
  result = qword_27F7E76C8;
  if (!qword_27F7E76C8)
  {
    result = swift_getWitnessTable(aEPm, &type metadata for IntResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E76C8);
  }

  return result;
}

unint64_t sub_255D9147C()
{
  result = qword_27F7E76D0;
  if (!qword_27F7E76D0)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for IntResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E76D0);
  }

  return result;
}

unint64_t sub_255D914D4()
{
  result = qword_27F7E76D8;
  if (!qword_27F7E76D8)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for DoubleResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E76D8);
  }

  return result;
}

unint64_t sub_255D9152C()
{
  result = qword_27F7E76E0;
  if (!qword_27F7E76E0)
  {
    result = swift_getWitnessTable(aEN_0, &type metadata for DoubleResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E76E0);
  }

  return result;
}

unint64_t sub_255D91584()
{
  result = qword_27F7E76E8;
  if (!qword_27F7E76E8)
  {
    result = swift_getWitnessTable(asc_255E4A37C, &type metadata for NumericResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E76E8);
  }

  return result;
}

unint64_t sub_255D915DC()
{
  result = qword_27F7E76F0;
  if (!qword_27F7E76F0)
  {
    result = swift_getWitnessTable(a5Po, &type metadata for NumericResolvable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E76F0);
  }

  return result;
}

unint64_t sub_255D91630(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D9167C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D916C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_255D91714(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a4 < 0)
  {
  }

  else
  {
    v6 = a4 & 1;

    return a5(a1, a2, a3, v6);
  }
}

uint64_t sub_255D9176C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a4 < 0)
  {
  }

  else
  {
    v6 = a4 & 1;

    return a5(a1, a2, a3, v6);
  }
}

unint64_t sub_255D917C4()
{
  result = qword_27F7E7708;
  if (!qword_27F7E7708)
  {
    result = swift_getWitnessTable(byte_255E54134, &type metadata for ReferenceCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7708);
  }

  return result;
}

unint64_t sub_255D91818()
{
  result = qword_27F7E7740;
  if (!qword_27F7E7740)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NumericValue, &type metadata for NumericValue, v0, v1);
    atomic_store(result, &qword_27F7E7740);
  }

  return result;
}

uint64_t sub_255D9186C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(protocol conformance descriptor for SubReference<A>, v5);
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_255D91900(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_255D91948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D91998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D6FC70();
  return sub_255E393F8();
}

uint64_t sub_255D91A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  KeyPath = swift_getKeyPath();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  v7 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
  return sub_255E3A0E8(&v9, KeyPath, a4, 0, v6, MEMORY[0x277CE11C8], v7, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
}

uint64_t sub_255D91AF4@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255D91B54@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255D91BB8(uint64_t a1)
{
  v2 = sub_255D92360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D91BF4(uint64_t a1)
{
  v2 = sub_255D92360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D91C30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A08, &unk_255E4A890);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  v15[1] = *v2;
  v16 = *(v2 + 8);
  v12 = sub_255D4EF0C();
  (*(v12 + 24))(a1, v12);
  (*(v6 + 16))(v9, v11, v5);
  sub_255D4EF60();
  v13 = sub_255E3A038();
  result = (*(v6 + 8))(v11, v5);
  *a2 = v13;
  return result;
}

uint64_t sub_255D91DA4()
{
  sub_255E3A1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A20, &qword_255E3E2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68C8, &unk_255E3E230);
  sub_255D38950(&qword_27F7E6A18, &qword_27F7E6A20, &qword_255E3E2A0, MEMORY[0x277CE0480]);
  sub_255D4E240();
  return sub_255E3A1B8();
}

uint64_t sub_255D91EB8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_255D92070(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_255D91F04(uint64_t a1, uint64_t a2)
{
  sub_255D91F60();
  sub_255D4F024();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D91F60()
{
  result = qword_27F7E7768;
  if (!qword_27F7E7768)
  {
    result = swift_getWitnessTable(byte_255E4A870, &type metadata for MaterialEffectContainerView, v0, v1);
    atomic_store(result, &qword_27F7E7768);
  }

  return result;
}

unint64_t sub_255D91FB4(uint64_t a1)
{
  result = sub_255D91FDC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D91FDC()
{
  result = qword_27F7E7770;
  if (!qword_27F7E7770)
  {
    result = swift_getWitnessTable(asc_255E4A7DC, &type metadata for MaterialEffectContainerView, v0, v1);
    atomic_store(result, &qword_27F7E7770);
  }

  return result;
}

uint64_t sub_255D92070(void *a1)
{
  v3 = sub_255E385D8();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7778, &unk_255E4A8D0);
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D92360();
  sub_255E3AE28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v22 = 0;
    v10 = sub_255E3AB88();
    if (v11)
    {
      v9 = v10;
    }

    else
    {
      sub_255E385C8();
      v9 = sub_255E385B8();
      (*(v18 + 8))(v5, v3);
    }

    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v21 = 1;
    sub_255D5F038();
    sub_255E3ABA8();
    v13 = v19;
    v15 = v6;
    if (v20)
    {
      v16 = v20;
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    sub_255D48968(v16);

    (*(v13 + 8))(v8, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return v9;
}

unint64_t sub_255D92360()
{
  result = qword_27F7E7780;
  if (!qword_27F7E7780)
  {
    result = swift_getWitnessTable(aM_4, &type metadata for MaterialEffectContainerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7780);
  }

  return result;
}

unint64_t sub_255D923C8()
{
  result = qword_27F7E7788;
  if (!qword_27F7E7788)
  {
    result = swift_getWitnessTable(byte_255E4A9B4, &type metadata for MaterialEffectContainerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7788);
  }

  return result;
}

unint64_t sub_255D92420()
{
  result = qword_27F7E7790;
  if (!qword_27F7E7790)
  {
    result = swift_getWitnessTable(byte_255E4A8EC, &type metadata for MaterialEffectContainerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7790);
  }

  return result;
}

unint64_t sub_255D92478()
{
  result = qword_27F7E7798;
  if (!qword_27F7E7798)
  {
    result = swift_getWitnessTable(byte_255E4A914, &type metadata for MaterialEffectContainerView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7798);
  }

  return result;
}

uint64_t sub_255D924CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255D92514(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D92578(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 103;
  if (v2 != 1)
  {
    v4 = 0x6F69736E656D6964;
    v3 = 0xED000079654B736ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x56657475706D6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0xE100000000000000;
  v8 = 103;
  if (*a2 != 1)
  {
    v8 = 0x6F69736E656D6964;
    v7 = 0xED000079654B736ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x56657475706D6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D92680()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9272C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D927C4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D9286C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D93C00(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D9289C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065756C61;
  v4 = 0xE100000000000000;
  v5 = 103;
  if (v2 != 1)
  {
    v5 = 0x6F69736E656D6964;
    v4 = 0xED000079654B736ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x56657475706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D92904()
{
  v1 = 103;
  if (*v0 != 1)
  {
    v1 = 0x6F69736E656D6964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x56657475706D6F63;
  }
}

unint64_t sub_255D92968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D93C00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D92990(uint64_t a1)
{
  v2 = sub_255D93A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D929CC(uint64_t a1)
{
  v2 = sub_255D93A64();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255D92A08(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E77B8, &qword_255E4AEA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D93A64();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v24) = 0;
    sub_255D64774();
    sub_255E3ABC8();
    v22 = *(&v29 + 1);
    v9 = v29;
    v23 = v30;
    v38 = v31;
    LOBYTE(v24) = 1;
    sub_255D3EA0C();
    sub_255E3ABC8();
    v20 = v29;
    v21 = v30;
    v37 = v31;
    LOBYTE(v29) = 2;
    v10 = sub_255E3AB88();
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x6F69736E656D6964;
    }

    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xEA0000000000736ELL;
    }

    (*(v6 + 8))(v8, v5);
    v14 = v9;
    v15 = v22;
    *&v24 = v9;
    *(&v24 + 1) = v22;
    v16 = v23;
    *&v25 = v23;
    v17 = v38;
    BYTE8(v25) = v38;
    v26 = v20;
    *&v27 = v21;
    BYTE8(v27) = v37;
    *&v28 = v12;
    *(&v28 + 1) = v13;
    v18 = v27;
    a2[2] = v20;
    a2[3] = v18;
    a2[4] = v28;
    v19 = v25;
    *a2 = v24;
    a2[1] = v19;
    sub_255D93938(&v24, &v29);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *&v29 = v14;
    *(&v29 + 1) = v15;
    v30 = v16;
    v31 = v17;
    v32 = v20;
    v33 = v21;
    v34 = v37;
    v35 = v12;
    v36 = v13;
    sub_255D93AB8(&v29);
  }
}

uint64_t sub_255D92DAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v47 = v3[2];
  v48 = v8;
  v49 = v9;
  v10 = v3[1];
  v45 = *v3;
  v46 = v10;
  v50[0] = v47;
  *(v50 + 9) = *(v3 + 41);
  *v40 = v3[2];
  *&v40[9] = *(v3 + 41);
  sub_255D7B16C(v50, &v42);
  v11 = StringResolvable.resolved(with:)(a2);
  v13 = v12;
  result = sub_255D38060(*v40, *&v40[8], *&v40[16], v40[24]);
  if (!v4)
  {

    v15 = sub_255E0C470(v11, v13);
    v16 = MEMORY[0x277CE0760];
    if (v15 == 9)
    {

      v17 = sub_255E0C424(v11, v13);
      if (v17 != 5)
      {

        v20 = v16;
        if (v17 <= 1)
        {
          v38 = 1;
          if (v17)
          {
            sub_255E390F8();
          }

          else
          {
            sub_255E39108();
          }
        }

        else if (v17 == 2)
        {
          v38 = 1;
          sub_255E39118();
        }

        else
        {
          v38 = 1;
          if (v17 == 3)
          {
            sub_255E390D8();
          }

          else
          {
            sub_255E390E8();
          }
        }

        v51 = 0;
LABEL_52:
        sub_255D3CE1C(a1, a3);
        v30 = a3[4];
        __swift_project_boxed_opaque_existential_1(a3, a3[3]);
        v31 = swift_allocObject();
        v32 = v48;
        *(v31 + 48) = v47;
        *(v31 + 64) = v32;
        *(v31 + 80) = v49;
        v33 = v46;
        *(v31 + 16) = v45;
        *(v31 + 32) = v33;
        *(v31 + 96) = a2;
        v43 = sub_255E38AE8();
        v41[0] = v30;
        v41[1] = v20;
        WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v43, v41);
        __swift_allocate_boxed_opaque_existential_1(&v42);
        sub_255D93938(&v45, v40);

        sub_255E39988();
        v16 = v20;

        __swift_destroy_boxed_opaque_existential_1Tm(a3);
        result = sub_255D4F134(&v42, a3);
        if (v38)
        {
          return result;
        }

        goto LABEL_53;
      }

      v18 = sub_255E0C3D8(v11, v13);
      if (v18 <= 2)
      {
        if (v18)
        {
          if (v18 == 1)
          {
            v19 = sub_255E38E08();
          }

          else
          {
            v19 = sub_255E38DF8();
          }
        }

        else
        {
          v19 = sub_255E38DE8();
        }

        goto LABEL_45;
      }

      if (v18 == 3)
      {
        v19 = sub_255E38DD8();
        goto LABEL_45;
      }

      if (v18 == 4)
      {
        v19 = sub_255E38DC8();
LABEL_45:
        v51 = v19;
        sub_255D3CE1C(a1, a3);
LABEL_53:
        v34 = a3[4];
        __swift_project_boxed_opaque_existential_1(a3, a3[3]);
        v35 = swift_allocObject();
        v36 = v48;
        *(v35 + 48) = v47;
        *(v35 + 64) = v36;
        *(v35 + 80) = v49;
        v37 = v46;
        *(v35 + 16) = v45;
        *(v35 + 32) = v37;
        *(v35 + 96) = a2;
        v43 = sub_255E38AE8();
        v39[0] = v34;
        v39[1] = v16;
        WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v43, v39);
        __swift_allocate_boxed_opaque_existential_1(&v42);
        sub_255D93938(&v45, v40);

        sub_255E39988();

        __swift_destroy_boxed_opaque_existential_1Tm(a3);
        return sub_255D4F134(&v42, a3);
      }

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v20 = v16;
      v26 = sub_255E386A8();
      __swift_project_value_buffer(v26, qword_27F8152D8);
      v27 = sub_255E38688();
      v28 = sub_255E3A868();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_255D2E000, v27, v28, "AlignmentGuideModifier: fallback .center alignment", v29, 2u);
        MEMORY[0x259C4F9E0](v29, -1, -1);
      }

      sub_255E390F8();
      v51 = sub_255E38E08();
    }

    else
    {

      v20 = v16;
      if (v15 <= 3)
      {
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            sub_255E3A248();
            sub_255E3A248();
          }

          else
          {
            sub_255E3A208();
            sub_255E3A208();
          }

          v51 = v23;
        }

        else
        {
          if (v15)
          {
            sub_255E3A238();
            sub_255E3A238();
          }

          else
          {
            sub_255E3A228();
            sub_255E3A228();
          }

          v51 = v22;
        }
      }

      else if (v15 <= 5)
      {
        if (v15 == 4)
        {
          sub_255E3A218();
          sub_255E3A218();
        }

        else
        {
          sub_255E3A1C8();
          sub_255E3A1C8();
        }

        v51 = v24;
      }

      else if (v15 == 6)
      {
        sub_255E3A1D8();
        sub_255E3A1D8();
        v51 = v25;
      }

      else
      {
        if (v15 == 7)
        {
          sub_255E3A1E8();
          sub_255E3A1E8();
        }

        else
        {
          sub_255E3A1F8();
          sub_255E3A1F8();
        }

        v51 = v21;
      }
    }

    v38 = 0;
    goto LABEL_52;
  }

  return result;
}

double sub_255D93370(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E3BBC0;
  *(inited + 32) = v5;
  *(inited + 40) = v6;

  LOBYTE(v5) = v7;
  sub_255D612A0(v2, v3, v4, v7);
  sub_255D934D4((inited + 48));
  v9 = sub_255DC53CC(inited);
  swift_setDeallocating();
  sub_255D939FC(inited + 32);
  v10 = sub_255DC5124(MEMORY[0x277D84F90]);
  type metadata accessor for RemoteStateStore(0);
  swift_allocObject();

  v12 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v11, v9, v10);
  v17 = v5;
  sub_255D8F6FC(v12);
  v14 = v13;
  LOBYTE(v9) = v15;

  sub_255D4CB98(v2, v3, v4, v17);
  result = v14;
  if (v9)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_255D934D4@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E77A8, &qword_255E4AE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E4AA30;
  *(inited + 32) = 0x746867696568;
  *(inited + 40) = 0xE600000000000000;
  sub_255E38A48();
  *(inited + 48) = v2;
  *(inited + 56) = 0x6874646977;
  *(inited + 64) = 0xE500000000000000;
  sub_255E38A38();
  *(inited + 72) = v3;
  *(inited + 80) = 7368564;
  *(inited + 88) = 0xE300000000000000;
  v4 = sub_255E38DE8();
  *(inited + 96) = MEMORY[0x259C4CDB0](v4);
  *(inited + 104) = 0xD000000000000018;
  *(inited + 112) = 0x8000000255E65DB0;
  v5 = sub_255E38E08();
  *(inited + 120) = MEMORY[0x259C4CDB0](v5);
  *(inited + 128) = 0x6D6F74746F62;
  *(inited + 136) = 0xE600000000000000;
  v6 = sub_255E38DF8();
  *(inited + 144) = MEMORY[0x259C4CDB0](v6);
  *(inited + 152) = 0x676E696461656CLL;
  *(inited + 160) = 0xE700000000000000;
  v7 = sub_255E39108();
  *(inited + 168) = MEMORY[0x259C4CDC0](v7);
  *(inited + 176) = 0x676E696C69617274;
  *(inited + 184) = 0xE800000000000000;
  v8 = sub_255E39118();
  *(inited + 192) = MEMORY[0x259C4CDC0](v8);
  *(inited + 200) = 0xD00000000000001ALL;
  *(inited + 208) = 0x8000000255E65DD0;
  v9 = sub_255E390F8();
  *(inited + 216) = MEMORY[0x259C4CDC0](v9);
  *(inited + 224) = 0xD000000000000011;
  *(inited + 232) = 0x8000000255E64DF0;
  v10 = sub_255E38DD8();
  *(inited + 240) = MEMORY[0x259C4CDB0](v10);
  *(inited + 248) = 0xD000000000000010;
  *(inited + 256) = 0x8000000255E64E10;
  v11 = sub_255E38DC8();
  *(inited + 264) = MEMORY[0x259C4CDB0](v11);
  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x8000000255E64E40;
  v12 = sub_255E390D8();
  *(inited + 288) = MEMORY[0x259C4CDC0](v12);
  *(inited + 296) = 0xD000000000000018;
  *(inited + 304) = 0x8000000255E64E60;
  v13 = sub_255E390E8();
  *(inited + 312) = MEMORY[0x259C4CDC0](v13);
  v14 = sub_255DC741C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E77B0, &qword_255E4AE98);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v16 = result;
  v17 = 0;
  v19 = v14 + 64;
  v18 = *(v14 + 64);
  v39 = v14;
  v20 = 1 << *(v14 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v24 = result + 64;
  if ((v21 & v18) != 0)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_10:
      v28 = v25 | (v17 << 6);
      v29 = (*(v39 + 48) + 16 * v28);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(*(v39 + 56) + 8 * v28);
      result = swift_allocObject();
      *(result + 16) = v32;
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = (v16[6] + 16 * v28);
      *v33 = v31;
      v33[1] = v30;
      *(v16[7] + 8 * v28) = result | 0x4000000000000000;
      v34 = v16[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v16[2] = v36;

      if (!v22)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v23)
      {
        v37 = swift_allocObject();

        *(v37 + 16) = v16;
        *a1 = v37 | 0xA000000000000000;
        return result;
      }

      v27 = *(v19 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v22 = (v27 - 1) & v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_255D938BC(uint64_t a1)
{
  result = sub_255D938E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D938E4()
{
  result = qword_27F7E77A0;
  if (!qword_27F7E77A0)
  {
    result = swift_getWitnessTable(byte_255E4AE48, &type metadata for AlignmentGuideModifier, v0, v1);
    atomic_store(result, &qword_27F7E77A0);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  sub_255D4CB98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255D38060(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_255D939FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F40, &unk_255E559F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255D93A64()
{
  result = qword_27F7E77C0;
  if (!qword_27F7E77C0)
  {
    result = swift_getWitnessTable(asc_255E4AFAC, &type metadata for AlignmentGuideModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E77C0);
  }

  return result;
}

unint64_t sub_255D93AFC()
{
  result = qword_27F7E77C8;
  if (!qword_27F7E77C8)
  {
    result = swift_getWitnessTable(aE_2, &type metadata for AlignmentGuideModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E77C8);
  }

  return result;
}

unint64_t sub_255D93B54()
{
  result = qword_27F7E77D0;
  if (!qword_27F7E77D0)
  {
    result = swift_getWitnessTable(byte_255E4AEBC, &type metadata for AlignmentGuideModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E77D0);
  }

  return result;
}

unint64_t sub_255D93BAC()
{
  result = qword_27F7E77D8;
  if (!qword_27F7E77D8)
  {
    result = swift_getWitnessTable(byte_255E4AEE4, &type metadata for AlignmentGuideModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E77D8);
  }

  return result;
}

unint64_t sub_255D93C00(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t DecodableRemoteContentView.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DecodableRemoteContentView.modifiers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_255D93CE0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D93D8C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D93E24(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D93ECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D95030(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D93EFC(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEA0000000000646FLL;
  v5 = 0x6874654D70747468;
  if (*v1 != 2)
  {
    v5 = 2036625250;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 7107189;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D93F64()
{
  v1 = 25705;
  v2 = 0x6874654D70747468;
  if (*v0 != 2)
  {
    v2 = 2036625250;
  }

  if (*v0)
  {
    v1 = 7107189;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D93FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D95030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D93FF0(uint64_t a1)
{
  v2 = sub_255D94690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9402C(uint64_t a1)
{
  v2 = sub_255D94690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DecodableRemoteContentView.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v3 = sub_255E385D8();
  *&v47 = *(v3 - 8);
  *(&v47 + 1) = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E77E0, &unk_255E4B000);
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34[-v7];
  type metadata accessor for RemoteStateStore(0);
  sub_255D94ED0(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v88 = sub_255E38CC8();
  v45 = v9;
  type metadata accessor for LocalStateStore(0);
  sub_255D94ED0(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);
  v10 = sub_255E38CC8();
  v50 = a1;
  v51 = v10;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D94690();
  v13 = v49;
  sub_255E3AE28();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  else
  {
    v14 = v47;
    v49 = v12;
    v62[0] = 0;
    v15 = sub_255E3AB88();
    if (v16)
    {
      *&v44 = v15;
      *(&v44 + 1) = v16;
    }

    else
    {
      sub_255E385C8();
      *&v44 = sub_255E385B8();
      *(&v44 + 1) = v18;
      (*(v14 + 8))(v5, *(&v14 + 1));
    }

    LOBYTE(v52) = 1;
    sub_255D3EA0C();
    sub_255E3ABC8();
    v47 = *&v62[8];
    v43 = *v62;
    v42 = v63;
    LOBYTE(v52) = 2;
    sub_255E3ABA8();
    v19 = *&v62[8];
    v38 = *v62;
    v41 = *&v62[16];
    v20 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7418, qword_255E567D0);
    v81 = 3;
    sub_255D7B5F4();
    sub_255E3ABA8();
    v40 = v19;
    v39 = v20;
    (*(v48 + 8))(v8, 0);
    v48 = v82;
    v36 = *(&v83 + 1);
    v37 = v83;
    v35 = v84;
    v52 = v44;
    *&v53 = MEMORY[0x277D84F90];
    *(&v53 + 1) = v43;
    v54 = v47;
    v21 = v42;
    LOBYTE(v55) = v42;
    *(&v55 + 1) = v87[0];
    DWORD1(v55) = *(v87 + 3);
    *(&v55 + 1) = v38;
    *&v56 = v19;
    *(&v56 + 1) = v41;
    LOBYTE(v57) = v20;
    *(&v57 + 1) = *v86;
    DWORD1(v57) = *&v86[3];
    *(&v57 + 1) = v82;
    v58 = v83;
    LOBYTE(v59) = v84;
    *(&v59 + 1) = *v85;
    DWORD1(v59) = *&v85[3];
    v22 = v88;
    v23 = v45;
    v24 = v46;
    *(&v59 + 1) = v88;
    *&v60 = v45;
    v25 = v51;
    v26 = v49;
    *(&v60 + 1) = v51;
    v61 = v49;
    v27 = v53;
    *v46 = v44;
    v24[1] = v27;
    v28 = v54;
    v29 = v55;
    v30 = v57;
    v24[4] = v56;
    v24[5] = v30;
    v24[2] = v28;
    v24[3] = v29;
    v31 = v58;
    v32 = v59;
    v33 = v60;
    *(v24 + 18) = v26;
    v24[7] = v32;
    v24[8] = v33;
    v24[6] = v31;
    sub_255D4C6CC(&v52, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    *v62 = v44;
    *&v62[16] = MEMORY[0x277D84F90];
    v63 = v43;
    v64 = v47;
    v65 = v21;
    *v66 = v87[0];
    *&v66[3] = *(v87 + 3);
    v67 = v38;
    v68 = v40;
    v69 = v41;
    v70 = v39;
    *v71 = *v86;
    *&v71[3] = *&v86[3];
    v72 = v48;
    v73 = v37;
    v74 = v36;
    v75 = v35;
    *&v76[3] = *&v85[3];
    *v76 = *v85;
    v77 = v22;
    v78 = v23;
    v79 = v25;
    v80 = v26;
    return sub_255D946E4(v62);
  }
}

unint64_t sub_255D94690()
{
  result = qword_27F7E77E8;
  if (!qword_27F7E77E8)
  {
    result = swift_getWitnessTable(aA_7, &type metadata for DecodableRemoteContentView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E77E8);
  }

  return result;
}

uint64_t DecodableRemoteContentView.unmodifiedBody.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_255E385D8();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteContent(0);
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 24);
  v10 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);
  v15 = *(v1 + 56);
  v14 = *(v1 + 64);
  v16 = *(v1 + 72);
  v17 = *(v1 + 80);
  v19 = *(v1 + 88);
  v18 = *(v1 + 96);
  v20 = *(v1 + 104);
  v21 = *(v1 + 112);
  v22 = *(v1 + 120);
  if (v22)
  {
    v23 = *(v1 + 136);
    v46 = *(v1 + 144);
    v47 = v15;
    *v9 = v11;
    *(v9 + 1) = v10;
    *(v9 + 2) = v12;
    v9[24] = v13;
    *(v9 + 4) = v15;
    *(v9 + 5) = v14;
    v48 = v14;
    v49 = v16;
    *(v9 + 6) = v16;
    v50 = v17;
    v9[56] = v17;
    v51 = v19;
    v52 = v18;
    *(v9 + 8) = v19;
    *(v9 + 9) = v18;
    v53 = v20;
    *(v9 + 10) = v20;
    v54 = v21;
    v9[88] = v21;
    v24 = v22;
    *(v9 + 12) = v22;
    v58 = v7;
    swift_storeEnumTagMultiPayload();
    if (v23)
    {

      sub_255D3E5A8(v11, v10, v12, v13);
      sub_255D94C04(v47, v48, v49, v50);
      sub_255D94C18(v51, v52, v53, v54);

      sub_255E385C8();
      v25 = sub_255E385B8();
      v27 = v26;
      (*(v55 + 8))(v5, v56);
      v28 = type metadata accessor for RemoteContentView(0);
      v29 = &a1[v28[9]];
      *v29 = swift_getKeyPath();
      *(v29 + 1) = 0;
      v29[16] = 0;
      v30 = &a1[v28[10]];
      *v30 = swift_getKeyPath();
      *(v30 + 1) = 0;
      v30[16] = 0;
      v31 = &a1[v28[11]];
      *v31 = swift_getKeyPath();
      v31[8] = 0;
      *a1 = v25;
      *(a1 + 1) = v27;
      v32 = v28[5];
      sub_255D37EF4(v9, &a1[v32], type metadata accessor for RemoteContent);
      (*(v57 + 56))(&a1[v32], 0, 1, v58);
      v33 = objc_allocWithZone(type metadata accessor for ContentRegistry());

      v59 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v24, [v33 init]);
      type metadata accessor for RemoteLoader(0);
      sub_255E39F98();
      result = sub_255D37F5C(v9, type metadata accessor for RemoteContent);
      v35 = v61;
      v36 = &a1[v28[8]];
      *v36 = v60;
      *(v36 + 1) = v35;
      v37 = &a1[v28[6]];
      *v37 = sub_255D94D70;
      *(v37 + 1) = v24;
      v37[16] = 0;
      v38 = &a1[v28[7]];
      *v38 = sub_255D94D70;
      *(v38 + 1) = v23;
      v38[16] = 0;
      return result;
    }
  }

  else
  {
    v58 = *(v1 + 128);
    v39 = v19;
    v40 = v15;
    v41 = v11;
    v42 = v18;
    v43 = v14;
    v44 = v10;
    v45 = v20;
    v11 = v16;
    v10 = v17;
    sub_255D3E5A8(v41, v44, v12, v13);
    sub_255D94C04(v40, v43, v11, v10);
    sub_255D94C18(v39, v42, v45, v21);
    type metadata accessor for RemoteStateStore(0);
    sub_255D94ED0(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    sub_255E38CB8();
    __break(1u);
  }

  sub_255D3E5A8(v11, v10, v12, v13);
  sub_255D94C04(v47, v48, v49, v50);
  sub_255D94C18(v51, v52, v53, v54);
  type metadata accessor for LocalStateStore(0);
  sub_255D94ED0(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);

  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D94C04(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFDu)
  {
    return sub_255D3E5A8(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_255D94C18(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_255D6FBC4(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_255D94C30@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RemoteContentView(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  DecodableRemoteContentView.unmodifiedBody.getter(&v10 - v6);
  sub_255D37EF4(v7, v5, type metadata accessor for RemoteContentView);
  sub_255D94ED0(&qword_27F7E65B8, type metadata accessor for RemoteContentView, protocol conformance descriptor for RemoteContentView);
  v8 = sub_255E3A038();
  result = sub_255D37F5C(v7, type metadata accessor for RemoteContentView);
  *a1 = v8;
  return result;
}

uint64_t sub_255D94D78(uint64_t a1, uint64_t a2)
{
  sub_255D94DD4();
  sub_255D4C678();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D94DD4()
{
  result = qword_27F7E77F0;
  if (!qword_27F7E77F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DecodableRemoteContentView, &type metadata for DecodableRemoteContentView, v0, v1);
    atomic_store(result, &qword_27F7E77F0);
  }

  return result;
}

unint64_t sub_255D94E28(uint64_t a1)
{
  result = sub_255D94E50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D94E50()
{
  result = qword_27F7E77F8;
  if (!qword_27F7E77F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DecodableRemoteContentView, &type metadata for DecodableRemoteContentView, v0, v1);
    atomic_store(result, &qword_27F7E77F8);
  }

  return result;
}

uint64_t sub_255D94ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255D94F2C()
{
  result = qword_27F7E7800;
  if (!qword_27F7E7800)
  {
    result = swift_getWitnessTable(asc_255E4B7A0, &type metadata for DecodableRemoteContentView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7800);
  }

  return result;
}

unint64_t sub_255D94F84()
{
  result = qword_27F7E7808;
  if (!qword_27F7E7808)
  {
    result = swift_getWitnessTable(byte_255E4B6D8, &type metadata for DecodableRemoteContentView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7808);
  }

  return result;
}

unint64_t sub_255D94FDC()
{
  result = qword_27F7E7810;
  if (!qword_27F7E7810)
  {
    result = swift_getWitnessTable(byte_255E4B700, &type metadata for DecodableRemoteContentView.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7810);
  }

  return result;
}

unint64_t sub_255D95030(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255D950A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 90))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 89);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_255D950E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 89) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_255D95150(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7629158;
  }

  else
  {
    v3 = 1819044198;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7629158;
  }

  else
  {
    v5 = 1819044198;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D951E8()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9525C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D952BC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D9532C@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255D9538C(uint64_t *a1@<X8>)
{
  v2 = 1819044198;
  if (*v1)
  {
    v2 = 7629158;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D95478()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D95538(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D955E4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D956A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D96354(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D956D0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6874646977;
  v4 = 0xE500000000000000;
  v5 = 0x6F69746172;
  if (*v1 != 2)
  {
    v5 = 0x4D746E65746E6F63;
    v4 = 0xEB0000000065646FLL;
  }

  if (*v1)
  {
    v3 = 0x746867696568;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D9574C()
{
  v1 = 0x6874646977;
  v2 = 0x6F69746172;
  if (*v0 != 2)
  {
    v2 = 0x4D746E65746E6F63;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D957C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D96354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D957EC(uint64_t a1)
{
  v2 = sub_255D960C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D95828(uint64_t a1)
{
  v2 = sub_255D960C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255D95864(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7820, &qword_255E4BB58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D960C4();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v29 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    LOBYTE(v30) = 0;
    sub_255D65400();
    sub_255E3ABA8();
    v28 = v35;
    v26 = v36;
    v27 = v37;
    v48 = v38;
    LOBYTE(v30) = 1;
    sub_255E3ABA8();
    v23 = v35;
    v21 = v36;
    v22 = v37;
    v24 = v38;
    LOBYTE(v30) = 2;
    sub_255E3ABA8();
    v9 = v35;
    v25 = v36;
    v20 = v37;
    v10 = v38;
    LOBYTE(v35) = 3;
    sub_255D96118();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    HIDWORD(v19) = (v49 & 1) == 0;
    *&v30 = v28;
    v11 = v26;
    *(&v30 + 1) = v26;
    v12 = v27;
    *&v31 = v27;
    v13 = v48;
    BYTE8(v31) = v48;
    v14 = v21;
    *&v32 = v23;
    *(&v32 + 1) = v21;
    v15 = v22;
    *&v33 = v22;
    BYTE8(v33) = v24;
    *v34 = v9;
    *&v34[8] = v25;
    *&v34[16] = v20;
    v34[24] = v10;
    v34[25] = (v49 & 1) == 0;
    v16 = v33;
    v17 = v29;
    v29[2] = v32;
    v17[3] = v16;
    v17[4] = *v34;
    *(v17 + 74) = *&v34[10];
    v18 = v31;
    *v17 = v30;
    v17[1] = v18;
    sub_255D9616C(&v30, &v35);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v35 = v28;
    v36 = v11;
    v37 = v12;
    v38 = v13;
    v39 = v23;
    v40 = v14;
    v41 = v15;
    v42 = v24;
    v43 = v9;
    v44 = v25;
    v45 = v20;
    v46 = v10;
    v47 = BYTE4(v19);
    sub_255D961A4(&v35);
  }
}

uint64_t sub_255D95D74@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *v3;
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v22 = *(v3 + 40);
  v23 = *(v3 + 32);
  v21 = *(v3 + 48);
  v12 = *(v3 + 56);
  v13 = *(v3 + 88);
  v27 = *(v3 + 89);
  if (v13 != 255)
  {
    sub_255DDEF98(a2, *(v3 + 64), *(v3 + 72), *(v3 + 80), v13 & 1);
    if (!v4)
    {
      v14 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v15 = sub_255E38AE8();
      a3[3] = v15;
      v24[0] = v14;
      v24[1] = MEMORY[0x277CE01B0];
      a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v15, v24);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_255E39898();
    }

    v4 = 0;
  }

  if (v11 != 255)
  {
    sub_255DDEF98(a2, v8, v9, v10, v11 & 1);
    if (v4)
    {
    }

    else if (v12 != 255)
    {
      sub_255DDEF98(a2, v23, v22, v21, v12 & 1);
      v16 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v17 = sub_255E38AE8();
      a3[3] = v17;
      v25[0] = v16;
      v25[1] = MEMORY[0x277CE01B0];
      a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v17, v25);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_255E398A8();
    }
  }

  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_255E38AE8();
  a3[3] = v20;
  v26[0] = v19;
  v26[1] = MEMORY[0x277CE01B0];
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v20, v26);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39898();
}

unint64_t sub_255D96048(uint64_t a1)
{
  result = sub_255D96070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D96070()
{
  result = qword_27F7E7818;
  if (!qword_27F7E7818)
  {
    result = swift_getWitnessTable(byte_255E4BB14, &type metadata for AspectRatioModifier, v0, v1);
    atomic_store(result, &qword_27F7E7818);
  }

  return result;
}

unint64_t sub_255D960C4()
{
  result = qword_27F7E7828;
  if (!qword_27F7E7828)
  {
    result = swift_getWitnessTable(byte_255E4BD60, &type metadata for AspectRatioModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7828);
  }

  return result;
}

unint64_t sub_255D96118()
{
  result = qword_27F7E7830;
  if (!qword_27F7E7830)
  {
    result = swift_getWitnessTable(byte_255E4BD38, &type metadata for ContentModeString, v0, v1);
    atomic_store(result, &qword_27F7E7830);
  }

  return result;
}

unint64_t sub_255D961F8()
{
  result = qword_27F7E7838;
  if (!qword_27F7E7838)
  {
    result = swift_getWitnessTable(byte_255E4BC48, &type metadata for AspectRatioModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7838);
  }

  return result;
}

unint64_t sub_255D96250()
{
  result = qword_27F7E7840;
  if (!qword_27F7E7840)
  {
    result = swift_getWitnessTable(byte_255E4BD10, &type metadata for ContentModeString, v0, v1);
    atomic_store(result, &qword_27F7E7840);
  }

  return result;
}

unint64_t sub_255D962A8()
{
  result = qword_27F7E7848;
  if (!qword_27F7E7848)
  {
    result = swift_getWitnessTable(asc_255E4BB80, &type metadata for AspectRatioModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7848);
  }

  return result;
}

unint64_t sub_255D96300()
{
  result = qword_27F7E7850;
  if (!qword_27F7E7850)
  {
    result = swift_getWitnessTable(a1_1, &type metadata for AspectRatioModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7850);
  }

  return result;
}

unint64_t sub_255D96354(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D963A0()
{
  result = qword_27F7E7858;
  if (!qword_27F7E7858)
  {
    result = swift_getWitnessTable(asc_255E4BC98, &type metadata for ContentModeString, v0, v1);
    atomic_store(result, &qword_27F7E7858);
  }

  return result;
}

uint64_t sub_255D963F4()
{
  v0 = sub_255E38438();
  v1 = sub_255DCF728(v0);

  return v1;
}

uint64_t sub_255D96430(uint64_t a1)
{
  sub_255DCFC64(a1);

  return sub_255E38448();
}

void (*sub_255D96474(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_255E38428();
  return sub_255D39BAC;
}

void *KeyedDecodingContainer.decodeAction(forKey:)@<X0>(uint64_t a1@<X8>)
{
  sub_255D7B6DC();
  result = sub_255E3ABC8();
  if (!v1)
  {
    return sub_255D34630(&v4, a1);
  }

  return result;
}

uint64_t KeyedDecodingContainer.decodeActions(forKey:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  sub_255D7B658();
  sub_255E3ABC8();
  if (!v1)
  {
    v2 = *(v10 + 16);
    if (v2)
    {
      v9 = MEMORY[0x277D84F90];
      sub_255DE5EF0(0, v2, 0);
      v0 = v9;
      v3 = v10 + 32;
      do
      {
        sub_255D7B730(v3, v7);
        sub_255D34630(v7, v8);
        v9 = v0;
        v5 = *(v0 + 16);
        v4 = *(v0 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_255DE5EF0((v4 > 1), v5 + 1, 1);
          v0 = v9;
        }

        *(v0 + 16) = v5 + 1;
        sub_255D34630(v8, v0 + 40 * v5 + 32);
        v3 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v0;
}

void *KeyedDecodingContainer.decodeActionIfPresent(forKey:)@<X0>(uint64_t a3@<X8>)
{
  sub_255D7B6DC();
  result = sub_255E3ABA8();
  if (!v3)
  {
    if (v7)
    {
      sub_255D3CE1C(v6, a3);
      return sub_255D96C6C(v6);
    }

    else
    {
      result = sub_255D96C04(v6);
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  return result;
}

uint64_t KeyedDecodingContainer.decodeActionsIfPresent(forKey:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  sub_255D7B658();
  sub_255E3ABA8();
  if (!v3)
  {
    if (v12)
    {
      v5 = *(v12 + 16);
      if (v5)
      {
        v11 = MEMORY[0x277D84F90];
        sub_255DE5EF0(0, v5, 0);
        v2 = v11;
        v6 = v12 + 32;
        do
        {
          sub_255D7B730(v6, v9);
          sub_255D34630(v9, v10);
          v11 = v2;
          v8 = *(v2 + 16);
          v7 = *(v2 + 24);
          if (v8 >= v7 >> 1)
          {
            sub_255DE5EF0((v7 > 1), v8 + 1, 1);
            v2 = v11;
          }

          *(v2 + 16) = v8 + 1;
          sub_255D34630(v10, v2 + 40 * v8 + 32);
          v6 += 40;
          --v5;
        }

        while (v5);
      }

      else
      {

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t DecodingError.context.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_255E3AA08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255E3A9F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == *MEMORY[0x277D84160] || v12 == *MEMORY[0x277D84170])
  {
    (*(v5 + 96))(v7, v4);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7870, &qword_255E4BDC8);
    v14 = *(v9 + 32);
    v14(v11, &v7[*(v13 + 48)], v8);
  }

  else if (v12 == *MEMORY[0x277D84158])
  {
    (*(v5 + 96))(v7, v4);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7868, &qword_255E4BDC0);
    v14 = *(v9 + 32);
    v14(v11, &v7[*(v16 + 48)], v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    if (v12 != *MEMORY[0x277D84168])
    {
      (*(v9 + 56))(a1, 1, 1, v8);
      return (*(v5 + 8))(v7, v4);
    }

    (*(v5 + 96))(v7, v4);
    v14 = *(v9 + 32);
    v14(v11, v7, v8);
  }

  v14(a1, v11, v8);
  return (*(v9 + 56))(a1, 0, 1, v8);
}

uint64_t sub_255D96C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7860, &qword_255E4BDB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255D96CC0(uint64_t a1)
{
  result = sub_255D96CE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D96CE8()
{
  result = qword_27F7E7878;
  if (!qword_27F7E7878)
  {
    v3 = sub_255E38468();
    result = swift_getWitnessTable(MEMORY[0x277CC86F0], v3, v0, v1);
    atomic_store(result, &qword_27F7E7878);
  }

  return result;
}

uint64_t sub_255D96D90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 57))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 24);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 126 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255D96DE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

uint64_t sub_255D96E58@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  if (v7 <= 0xFD)
  {
    v15 = *v3;
    v16 = *(v3 + 8);
    v17 = *(v3 + 16);
    v18 = *(v3 + 24);
    sub_255D612A0(*v3, v16, v17, v7);
    sub_255D8F6FC(a2);
    sub_255D4CB98(v15, v16, v17, v18);
  }

  if (v11 <= 0xFD)
  {
    sub_255D612A0(v8, v9, v10, v11);
    sub_255D8F6FC(a2);
    sub_255D4CB98(v8, v9, v10, v11);
  }

  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_255E38AE8();
  a3[3] = v13;
  v19[0] = v12;
  v19[1] = MEMORY[0x277CDF748];
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v13, v19);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39C08();
}

uint64_t sub_255D96FF0()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_255D97008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_255D970D0(uint64_t a1)
{
  v2 = sub_255D974BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D9710C(uint64_t a1)
{
  v2 = sub_255D974BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D97148@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7888, &qword_255E4C270);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D974BC();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v22) = 0;
  sub_255D64774();
  sub_255E3ABA8();
  v9 = v25;
  v20 = v26;
  v21 = v27;
  v36 = v28;
  v37 = 1;
  sub_255E3ABA8();
  (*(v6 + 8))(v8, v5);
  v19 = v33;
  v10 = v34;
  v18 = *(&v33 + 1);
  v11 = v35;
  v12 = v9;
  v13 = v20;
  *&v22 = v9;
  *(&v22 + 1) = v20;
  v14 = v21;
  *&v23 = v21;
  LOBYTE(v9) = v36;
  BYTE8(v23) = v36;
  *v24 = v33;
  *&v24[16] = v34;
  v24[24] = v35;
  v15 = v23;
  *a2 = v22;
  a2[1] = v15;
  a2[2] = *v24;
  *(a2 + 41) = *&v24[9];
  sub_255D97510(&v22, &v25);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v9;
  v29 = v19;
  v30 = v18;
  v31 = v10;
  v32 = v11;
  return sub_255D97548(&v25);
}

unint64_t sub_255D97440(uint64_t a1)
{
  result = sub_255D97468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D97468()
{
  result = qword_27F7E7880;
  if (!qword_27F7E7880)
  {
    result = swift_getWitnessTable(byte_255E4C228, &type metadata for OffsetModifier, v0, v1);
    atomic_store(result, &qword_27F7E7880);
  }

  return result;
}

unint64_t sub_255D974BC()
{
  result = qword_27F7E7890;
  if (!qword_27F7E7890)
  {
    result = swift_getWitnessTable(byte_255E4C33C, &type metadata for OffsetModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7890);
  }

  return result;
}

unint64_t sub_255D9758C()
{
  result = qword_27F7E7898;
  if (!qword_27F7E7898)
  {
    result = swift_getWitnessTable(byte_255E4C314, &type metadata for OffsetModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E7898);
  }

  return result;
}

unint64_t sub_255D975E4()
{
  result = qword_27F7E78A0;
  if (!qword_27F7E78A0)
  {
    result = swift_getWitnessTable(byte_255E4C284, &type metadata for OffsetModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E78A0);
  }

  return result;
}

unint64_t sub_255D9763C()
{
  result = qword_27F7E78A8;
  if (!qword_27F7E78A8)
  {
    result = swift_getWitnessTable(asc_255E4C2AC, &type metadata for OffsetModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E78A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI28PinnedScrollableViewsOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_255D976E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_255D97730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255D977B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_255D977FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D97888()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D97940(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D979E4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D97A98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D9C17C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D97AC8(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE900000000000074;
  v5 = 0x6E656D6E67696C61;
  if (*v1 != 2)
  {
    v5 = 0x7377656976;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E6963617073;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_255D97B3C()
{
  v1 = 25705;
  v2 = 0x6E656D6E67696C61;
  if (*v0 != 2)
  {
    v2 = 0x7377656976;
  }

  if (*v0)
  {
    v1 = 0x676E6963617073;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D97BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D9C17C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D97BD4(uint64_t a1)
{
  v2 = sub_255D9BE14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D97C10(uint64_t a1)
{
  v2 = sub_255D9BE14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D97C4C@<X0>(void *a1@<X8>)
{
  v41 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7900, &unk_255E4D060);
  MEMORY[0x28223BE20](v43);
  v44 = &v37 - v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6618, &qword_255E3E118);
  v3 = MEMORY[0x28223BE20](v42);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v37 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = *(v1 + 16);
  v14 = *(v1 + 48);
  v15 = *(v1 + 56);
  if (v14 > 0xFD)
  {
    goto LABEL_4;
  }

  v39 = v10;
  v40 = v15;
  v16 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = *(v1 + 72);
  v45 = v16;
  v46 = v17;
  v47 = v18;
  v48 = v14;
  if (v19)
  {

    sub_255D6EF88(v16, v17, v18, v14);
    sub_255D8F6FC(v19);
    v21 = v20;
    v23 = v22;

    sub_255D4CB98(v45, v46, v47, v48);
    v24 = v39;
    v15 = v40;
    if ((v23 & 1) == 0)
    {
      v38 = v12;
      if (v13 <= 1)
      {
        v25 = v44;
        if (v13)
        {
          v27 = sub_255E390F8();
        }

        else
        {
          v27 = sub_255E39108();
        }
      }

      else
      {
        v25 = v44;
        if (v13 == 2)
        {
          v27 = sub_255E39118();
        }

        else if (v13 == 3)
        {
          v27 = sub_255E390D8();
        }

        else
        {
          v27 = sub_255E390E8();
        }
      }

      *v24 = v27;
      *(v24 + 8) = v21;
      *(v24 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7908, &qword_255E4D070);
      v45 = v15;
      v31 = v24;
      KeyPath = swift_getKeyPath();

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
      v34 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
      sub_255E3A0E8(&v45, KeyPath, sub_255D5F848, 0, v33, MEMORY[0x277CE11C8], v34, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
      v35 = v31;
      v8 = v38;
      sub_255D9B71C(v35, v38, &qword_27F7E6618, &qword_255E3E118);
      goto LABEL_24;
    }

LABEL_4:
    if (v13 <= 1)
    {
      v25 = v44;
      if (v13)
      {
        v26 = sub_255E390F8();
      }

      else
      {
        v26 = sub_255E39108();
      }
    }

    else
    {
      v25 = v44;
      if (v13 == 2)
      {
        v26 = sub_255E39118();
      }

      else if (v13 == 3)
      {
        v26 = sub_255E390D8();
      }

      else
      {
        v26 = sub_255E390E8();
      }
    }

    *v5 = v26;
    *(v5 + 1) = 0;
    v5[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7908, &qword_255E4D070);
    v45 = v15;
    v28 = swift_getKeyPath();

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
    v30 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
    sub_255E3A0E8(&v45, v28, sub_255D5F848, 0, v29, MEMORY[0x277CE11C8], v30, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
    sub_255D9B71C(v5, v8, &qword_27F7E6618, &qword_255E3E118);
LABEL_24:
    sub_255D3957C(v8, v25, &qword_27F7E6618, &qword_255E3E118);
    swift_storeEnumTagMultiPayload();
    sub_255D38950(&qword_27F7E6610, &qword_27F7E6618, &qword_255E3E118, MEMORY[0x277CE1198]);
    sub_255E39258();
    return sub_255D395E4(v8, &qword_27F7E6618, &qword_255E3E118);
  }

  sub_255D612A0(v16, v17, v18, v14);
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D981BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_255E385D8();
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7950, &qword_255E4D0F8);
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v70 = sub_255E38CC8();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9BE14();
  v11 = v48;
  sub_255E3AE28();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D647C8(0, 0, 0, 254);
  }

  else
  {
    v12 = v47;
    v44 = v10;
    v48 = a1;
    v13 = v46;
    LOBYTE(v55) = 0;
    v14 = sub_255E3AB88();
    if (v15)
    {
      v17 = v14;
      v43 = v15;
    }

    else
    {
      v18 = v5;
      sub_255E385C8();
      v17 = sub_255E385B8();
      v43 = v19;
      (*(v12 + 8))(v18, v3);
    }

    LOBYTE(v49) = 1;
    sub_255D64774();
    sub_255E3ABA8();
    v20 = v17;
    v42 = v55;
    v47 = v56;
    v21 = v57;
    v22 = v58;
    sub_255D647C8(0, 0, 0, 254);
    LOBYTE(v55) = 2;
    v23 = sub_255E3AB88();
    if (v24)
    {
      v25 = sub_255E0C424(v23, v24);
      if (v25 == 5)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }
    }

    else
    {
      v26 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    LOBYTE(v55) = 3;
    sub_255D5F038();
    sub_255E3ABA8();
    if (v67)
    {
      v27 = v67;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v41 = sub_255D48968(v27);

    v28 = v26;
    (*(v13 + 8))(v8, v6);
    v40 = v20;
    *&v49 = v20;
    *(&v49 + 1) = v43;
    LOBYTE(v50) = v26;
    *(&v50 + 1) = *v69;
    DWORD1(v50) = *&v69[3];
    v29 = v42;
    *(&v50 + 1) = v42;
    v30 = v47;
    *&v51 = v47;
    *(&v51 + 1) = v21;
    v31 = v21;
    v32 = v22;
    LOBYTE(v52) = v22;
    *(&v52 + 1) = *v68;
    DWORD1(v52) = *&v68[3];
    *(&v52 + 1) = v41;
    v33 = v70;
    *&v53 = MEMORY[0x277D84F90];
    *(&v53 + 1) = v70;
    v34 = v44;
    v54 = v44;
    v35 = v53;
    v36 = v45;
    *(v45 + 48) = v52;
    *(v36 + 64) = v35;
    *(v36 + 80) = v34;
    v37 = v51;
    v38 = v50;
    *v36 = v49;
    *(v36 + 16) = v38;
    *(v36 + 32) = v37;
    sub_255D4CBEC(&v49, &v55);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v55 = v40;
    v56 = v43;
    LOBYTE(v57) = v28;
    *(&v57 + 1) = *v69;
    HIDWORD(v57) = *&v69[3];
    v58 = v29;
    v59 = v30;
    v60 = v31;
    v61 = v32;
    *v62 = *v68;
    *&v62[3] = *&v68[3];
    v63 = v41;
    v64 = MEMORY[0x277D84F90];
    v65 = v33;
    v66 = v34;
    return sub_255D9BF1C(&v55);
  }
}

uint64_t sub_255D987AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6600, &qword_255E3E110);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_255D97C4C((&v10 - v6));
  sub_255D3957C(v7, v5, &qword_27F7E6600, &qword_255E3E110);
  sub_255D4CA94();
  v8 = sub_255E3A038();
  result = sub_255D395E4(v7, &qword_27F7E6600, &qword_255E3E110);
  *a1 = v8;
  return result;
}

unint64_t sub_255D98914()
{
  result = qword_27F7E78B0;
  if (!qword_27F7E78B0)
  {
    result = swift_getWitnessTable(asc_255E4D040, &type metadata for VStackView, v0, v1);
    atomic_store(result, &qword_27F7E78B0);
  }

  return result;
}

uint64_t sub_255D98968@<X0>(void *a1@<X8>)
{
  v41 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7910, &qword_255E4D0A8);
  MEMORY[0x28223BE20](v43);
  v44 = &v37 - v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6640, &qword_255E4D0B0);
  v3 = MEMORY[0x28223BE20](v42);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v37 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = *(v1 + 40);
  v14 = *(v1 + 41);
  v15 = *(v1 + 48);
  if (v13 > 0xFD)
  {
    goto LABEL_4;
  }

  v39 = v10;
  v40 = v15;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = *(v1 + 64);
  v45 = v16;
  v46 = v17;
  v47 = v18;
  v48 = v13;
  if (v19)
  {

    sub_255D6EF88(v16, v17, v18, v13);
    sub_255D8F6FC(v19);
    v21 = v20;
    v23 = v22;

    sub_255D4CB98(v45, v46, v47, v48);
    v24 = v39;
    v15 = v40;
    if ((v23 & 1) == 0)
    {
      v38 = v12;
      if (v14 <= 1)
      {
        v25 = v44;
        if (v14)
        {
          v27 = sub_255E38E08();
        }

        else
        {
          v27 = sub_255E38DE8();
        }
      }

      else
      {
        v25 = v44;
        if (v14 == 2)
        {
          v27 = sub_255E38DF8();
        }

        else if (v14 == 3)
        {
          v27 = sub_255E38DD8();
        }

        else
        {
          v27 = sub_255E38DC8();
        }
      }

      *v24 = v27;
      *(v24 + 8) = v21;
      *(v24 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7918, &qword_255E4D0B8);
      v45 = v15;
      v31 = v24;
      KeyPath = swift_getKeyPath();

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
      v34 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
      sub_255E3A0E8(&v45, KeyPath, sub_255D5F848, 0, v33, MEMORY[0x277CE11C8], v34, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
      v35 = v31;
      v8 = v38;
      sub_255D9B71C(v35, v38, &qword_27F7E6640, &qword_255E4D0B0);
      goto LABEL_24;
    }

LABEL_4:
    if (v14 <= 1)
    {
      v25 = v44;
      if (v14)
      {
        v26 = sub_255E38E08();
      }

      else
      {
        v26 = sub_255E38DE8();
      }
    }

    else
    {
      v25 = v44;
      if (v14 == 2)
      {
        v26 = sub_255E38DF8();
      }

      else if (v14 == 3)
      {
        v26 = sub_255E38DD8();
      }

      else
      {
        v26 = sub_255E38DC8();
      }
    }

    *v5 = v26;
    *(v5 + 1) = 0;
    v5[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7918, &qword_255E4D0B8);
    v45 = v15;
    v28 = swift_getKeyPath();

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
    v30 = sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0, MEMORY[0x277D83980]);
    sub_255E3A0E8(&v45, v28, sub_255D5F848, 0, v29, MEMORY[0x277CE11C8], v30, MEMORY[0x277D837E0], MEMORY[0x277CE11C0]);
    sub_255D9B71C(v5, v8, &qword_27F7E6640, &qword_255E4D0B0);
LABEL_24:
    sub_255D3957C(v8, v25, &qword_27F7E6640, &qword_255E4D0B0);
    swift_storeEnumTagMultiPayload();
    sub_255D38950(&qword_27F7E6638, &qword_27F7E6640, &qword_255E4D0B0, MEMORY[0x277CE1138]);
    sub_255E39258();
    return sub_255D395E4(v8, &qword_27F7E6640, &qword_255E4D0B0);
  }

  sub_255D612A0(v16, v17, v18, v13);
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  result = sub_255E38CB8();
  __break(1u);
  return result;
}

uint64_t sub_255D98ED8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v45 = a2;
  v3 = sub_255E385D8();
  v47 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7950, &qword_255E4D0F8);
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  type metadata accessor for RemoteStateStore(0);
  sub_255D9B784(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v70 = sub_255E38CC8();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9BE14();
  v11 = v48;
  sub_255E3AE28();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255D647C8(0, 0, 0, 254);
  }

  else
  {
    v12 = v47;
    v44 = v10;
    v48 = a1;
    v13 = v46;
    LOBYTE(v54) = 0;
    v14 = sub_255E3AB88();
    if (v15)
    {
      v17 = v14;
      v43 = v15;
    }

    else
    {
      v18 = v5;
      sub_255E385C8();
      v17 = sub_255E385B8();
      v43 = v19;
      (*(v12 + 8))(v18, v3);
    }

    LOBYTE(v49) = 1;
    sub_255D64774();
    sub_255E3ABA8();
    v20 = v17;
    v21 = v54;
    v42 = v55;
    v47 = v56;
    v22 = v57;
    sub_255D647C8(0, 0, 0, 254);
    LOBYTE(v54) = 2;
    v23 = sub_255E3AB88();
    if (v24)
    {
      v25 = sub_255E0C3D8(v23, v24);
      if (v25 == 5)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }
    }

    else
    {
      v26 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    LOBYTE(v54) = 3;
    sub_255D5F038();
    sub_255E3ABA8();
    if (v67)
    {
      v27 = v67;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v41 = sub_255D48968(v27);

    v28 = v26;
    (*(v13 + 8))(v8, v6);
    v40 = v20;
    *&v49 = v20;
    *(&v49 + 1) = v43;
    *&v50 = v21;
    v29 = v21;
    v30 = v42;
    v31 = v47;
    *(&v50 + 1) = v42;
    *&v51 = v47;
    v32 = v22;
    BYTE8(v51) = v22;
    BYTE9(v51) = v26;
    *(&v51 + 10) = v68;
    HIWORD(v51) = v69;
    *&v52 = v41;
    v33 = v70;
    *(&v52 + 1) = MEMORY[0x277D84F90];
    *&v53 = v70;
    v34 = v44;
    *(&v53 + 1) = v44;
    v35 = v49;
    v36 = v50;
    v37 = v53;
    v38 = v45;
    v39 = v51;
    v45[3] = v52;
    v38[4] = v37;
    v38[1] = v36;
    v38[2] = v39;
    *v38 = v35;
    sub_255D4CD4C(&v49, &v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v54 = v40;
    v55 = v43;
    v56 = v29;
    v57 = v30;
    v58 = v31;
    v59 = v32;
    v60 = v28;
    v61 = v68;
    v62 = v69;
    v63 = v41;
    v64 = MEMORY[0x277D84F90];
    v65 = v33;
    v66 = v34;
    return sub_255D9BEEC(&v54);
  }
}