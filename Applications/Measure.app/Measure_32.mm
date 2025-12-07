void sub_100249510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100249540(unint64_t result, uint64_t a2, uint64_t a3, float64x2_t a4, double a5, double a6, float64x2_t a7, float64x2_t a8, float64x2_t a9)
{
  v474 = a4.f64[0];
  v9 = *(result + 16);
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  v12 = *(result + 80);
  v460 = *(a2 + 80) >> 3;
  if (*(a3 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 80) >> 3;
  }

  v14 = *(result + 64);
  v15 = *v14;
  v16 = v14[1];
  v17 = v16;
  v470 = v15;
  v471 = *(result + 80);
  v472 = v16;
  v473 = v14[1];
  if (!v11)
  {
    if (v15 < 1)
    {
      return result;
    }

    if (v473 < 4)
    {
      if (v16 <= 0)
      {
        v439 = 0;
        v440 = a4.f64[0] * 0.0;
        v441 = vdupq_lane_s64(COERCE__INT64(v474 * 0.0), 0);
        v442 = (v10 + 16);
        v443 = v15;
        do
        {
          v444 = v15 - v439;
          v445 = v439;
          if ((v15 - v439) < 4)
          {
            goto LABEL_140;
          }

          result = v10;
          v446 = v443 & 0xFFFFFFFFFFFFFFFCLL;
          v445 = v439 + (v444 & 0xFFFFFFFFFFFFFFFCLL);
          v447 = v442;
          do
          {
            v447[-1] = v441;
            *v447 = v441;
            v447 += 2;
            v446 -= 4;
          }

          while (v446);
          if (v444 != (v444 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_140:
            do
            {
              *(v10 + 8 * v445++) = v440;
            }

            while (v15 != v445);
          }

          ++v439;
          --v443;
          v442 = (v442 + 8 * v460 + 8);
          v10 += 8 * v460;
        }

        while (v439 != v15);
      }

      else
      {
        v182 = 0;
        v183 = v9 + 2;
        v184 = v15;
        do
        {
          v185 = &v9[v12 * v182];
          v186 = v184;
          v187 = v10;
          v188 = v183;
          do
          {
            LOBYTE(a5) = *v185;
            LOBYTE(a6) = *(v188 - 2);
            v189 = *&a6;
            v190 = *&a5 * v189 + 0.0;
            if (v473 != 1)
            {
              LOBYTE(v189) = v185[1];
              v191 = *&v189;
              LOBYTE(a7.f64[0]) = *(v188 - 1);
              a7.f64[0] = *&a7.f64[0];
              v190 = v190 + v191 * a7.f64[0];
              if (v17 != 2)
              {
                LOBYTE(v191) = v185[2];
                LOBYTE(a7.f64[0]) = *v188;
                a7.f64[0] = *&a7.f64[0];
                v190 = v190 + *&v191 * a7.f64[0];
              }
            }

            a6 = a4.f64[0];
            a5 = v190 * a4.f64[0];
            *v187++ = a5;
            v188 += v12;
            --v186;
          }

          while (v186);
          ++v182;
          v183 += v12;
          v10 += 8 * v460 + 8;
          --v184;
        }

        while (v182 != v15);
      }

      return result;
    }

    v192 = (v16 - 4);
    v193 = (v192 & 0xFFFFFFFC) + 4;
    if (v192 < 0x1C)
    {
      if (v193 >= v473)
      {
        for (i = 0; i != v15; ++i)
        {
          v449 = v9;
          v450 = i;
          do
          {
            v451 = 0;
            v452 = 0.0;
            do
            {
              LOBYTE(a5) = v9[v451];
              LOBYTE(a6) = v449[v451];
              LOBYTE(a7.f64[0]) = v9[v451 + 1];
              *&v453 = *&a6;
              LOBYTE(a8.f64[0]) = v449[v451 + 1];
              a8.f64[0] = *&a8.f64[0];
              *&v454 = *&a7.f64[0] * a8.f64[0];
              v455 = *&v454 + *&a5 * *&v453;
              LOBYTE(v453) = v9[v451 + 2];
              *&v456 = v453;
              LOBYTE(v454) = v449[v451 + 2];
              *&v457 = v454;
              v458 = v455 + *&v456 * *&v457;
              LOBYTE(v456) = v9[v451 + 3];
              a6 = v456;
              LOBYTE(v457) = v449[v451 + 3];
              a7.f64[0] = v457;
              a5 = v458 + a6 * a7.f64[0];
              v452 = v452 + a5;
              v451 += 4;
            }

            while (v451 <= v192);
            a5 = v474;
            *(v10 + 8 * v450++) = v452 * v474;
            v449 += v12;
          }

          while (v450 != v15);
          v10 += 8 * v460;
          v9 += v12;
        }
      }

      else
      {
        for (j = 0; j != v15; ++j)
        {
          v195 = v9;
          v196 = j;
          do
          {
            v197 = 0;
            v198 = 0.0;
            do
            {
              LOBYTE(a5) = v9[v197];
              LOBYTE(a6) = v195[v197];
              LOBYTE(a7.f64[0]) = v9[v197 + 1];
              *&v199 = *&a6;
              LOBYTE(a8.f64[0]) = v195[v197 + 1];
              a8.f64[0] = *&a8.f64[0];
              *&v200 = *&a7.f64[0] * a8.f64[0];
              v201 = *&v200 + *&a5 * *&v199;
              LOBYTE(v199) = v9[v197 + 2];
              *&v202 = v199;
              LOBYTE(v200) = v195[v197 + 2];
              *&v203 = v200;
              v204 = v201 + *&v202 * *&v203;
              LOBYTE(v202) = v9[v197 + 3];
              a6 = v202;
              LOBYTE(v203) = v195[v197 + 3];
              a7.f64[0] = v203;
              a5 = v204 + a6 * a7.f64[0];
              v198 = v198 + a5;
              v197 += 4;
            }

            while (v197 <= v192);
            v205 = (v192 & 0xFFFFFFFC) + 4;
            do
            {
              LOBYTE(a5) = v9[v205];
              a5 = *&a5;
              LOBYTE(a6) = v195[v205];
              a6 = *&a6;
              v198 = v198 + a5 * a6;
              ++v205;
            }

            while (v17 > v205);
            a5 = v474;
            *(v10 + 8 * v196++) = v198 * v474;
            v195 += v12;
          }

          while (v196 != v15);
          v10 += 8 * v460;
          v9 += v12;
        }
      }

      return result;
    }

    v206 = 0;
    v207 = (v192 >> 2) + 1;
    v208 = v207 & 0x3FFFFFF0;
    v466 = v207 & 0x3FFFFFF8;
    v463 = (v192 & 0xFFFFFFFC) + 4;
    v464 = (v17 - 4);
    v461 = v208;
    v462 = v207;
LABEL_106:
    v469 = v10;
    v209 = v9;
    v459 = v206;
    v210 = v206;
    v465 = v9;
    while (v192 >= 0x3C)
    {
      v467 = v210;
      v468 = v209;
      v212 = 0.0;
      do
      {
        v505 = v212;
        v502 = v208;
        v514 = vld4q_s8(v9);
        v311 = v9 + 64;
        v498 = v311;
        v513 = vld4q_s8(v209);
        v312 = v209 + 64;
        v500 = v312;
        v313 = vextq_s8(v514.val[0], v514.val[0], 8uLL).u64[0];
        v314 = vextq_s8(v513.val[0], v513.val[0], 8uLL).u64[0];
        v315 = vextq_s8(v514.val[1], v514.val[1], 8uLL).u64[0];
        v493 = v514.val[2].u8[6];
        v480 = v513.val[0].u8[0];
        v492 = v514.val[2].u8[7];
        v491 = v514.val[2].u8[4];
        v316.i32[0] = BYTE4(v313);
        v479 = v513.val[0].u8[2];
        v490 = v514.val[2].u8[5];
        v485 = v514.val[2].u8[2];
        v317.i32[0] = BYTE6(v313);
        v477 = v513.val[0].u8[4];
        v484 = v514.val[2].u8[3];
        v476 = v513.val[0].u8[6];
        v483 = v514.val[2].u8[1];
        v488 = v514.val[3].u8[0];
        v318.i32[0] = BYTE2(v314);
        v486 = v514.val[3].u8[1];
        v489 = v514.val[3].u8[2];
        v319.i32[0] = BYTE4(v314);
        v320 = vextq_s8(v513.val[1], v513.val[1], 8uLL).u64[0];
        v487 = v514.val[3].u8[3];
        v482 = v514.val[3].u8[4];
        v321.i32[0] = BYTE6(v314);
        v322 = vextq_s8(v514.val[2], v514.val[2], 8uLL).u64[0];
        v481 = v514.val[3].u8[5];
        v323 = v514.val[3].u8[6];
        v324.i32[0] = BYTE6(v315);
        v478 = v514.val[3].u8[7];
        v475 = vextq_s8(v514.val[3], v514.val[3], 8uLL).u64[0];
        v325.i32[0] = BYTE4(v315);
        v326 = vextq_s8(v513.val[2], v513.val[2], 8uLL).u64[0];
        v327 = v513.val[0].u8[1];
        v328.i32[0] = BYTE2(v315);
        v329 = v513.val[0].u8[3];
        v330 = v513.val[0].u8[5];
        v331 = v513.val[0].u8[7];
        v332 = v513.val[1].u8[6];
        LODWORD(v312) = v513.val[1].u8[7];
        v333 = v513.val[1].u8[4];
        LODWORD(v311) = v513.val[1].u8[5];
        v334 = v513.val[1].u8[2];
        v335 = v513.val[1].u8[3];
        v336 = v513.val[1].u8[0];
        v337 = v513.val[1].u8[1];
        v338 = v513.val[2].u8[6];
        v339 = v513.val[2].u8[7];
        v340 = v513.val[2].u8[4];
        v341 = v513.val[2].u8[5];
        v342 = v513.val[2].u8[2];
        v343 = v513.val[2].u8[3];
        v344 = v513.val[2].u8[0];
        v345 = v513.val[2].u8[1];
        v346 = vextq_s8(v513.val[3], v513.val[3], 8uLL).u64[0];
        v347.i32[0] = v514.val[1].u8[4];
        v348.i32[0] = v514.val[1].u8[2];
        v513.val[0].i32[0] = v320.u8[6];
        v324.i32[1] = HIBYTE(v315);
        v513.val[0].i32[1] = v320.u8[7];
        v349 = vand_s8(v324, 0xFF000000FFLL);
        v350.i64[0] = v349.u32[0];
        v350.i64[1] = v349.u32[1];
        *v513.val[0].i8 = vand_s8(*v513.val[0].i8, 0xFF000000FFLL);
        v351 = vcvtq_f64_u64(v350);
        v350.i64[0] = v513.val[0].u32[0];
        v350.i64[1] = v513.val[0].u32[1];
        v352 = vmulq_f64(v351, vcvtq_f64_u64(v350));
        v353.i32[0] = v315;
        v317.i32[1] = HIBYTE(v313);
        v321.i32[1] = HIBYTE(v314);
        *v513.val[1].i8 = vand_s8(v317, 0xFF000000FFLL);
        v350.i64[0] = v513.val[1].u32[0];
        v350.i64[1] = v513.val[1].u32[1];
        v354 = vand_s8(v321, 0xFF000000FFLL);
        v513.val[1] = vcvtq_f64_u64(v350);
        v350.i64[0] = v354.u32[0];
        v350.i64[1] = v354.u32[1];
        v355 = vmlaq_f64(v352, vcvtq_f64_u64(v350), v513.val[1]);
        v356.i32[0] = v514.val[1].u8[0];
        v316.i32[1] = BYTE5(v313);
        v319.i32[1] = BYTE5(v314);
        v325.i32[1] = BYTE5(v315);
        v513.val[1].i32[0] = v320.u8[4];
        v513.val[1].i32[1] = v320.u8[5];
        v357 = vand_s8(v325, 0xFF000000FFLL);
        v350.i64[0] = v357.u32[0];
        v350.i64[1] = v357.u32[1];
        v358 = vcvtq_f64_u64(v350);
        *v513.val[1].i8 = vand_s8(*v513.val[1].i8, 0xFF000000FFLL);
        v350.i64[0] = v513.val[1].u32[0];
        v350.i64[1] = v513.val[1].u32[1];
        v359 = vmulq_f64(v358, vcvtq_f64_u64(v350));
        *&v358.f64[0] = vand_s8(v316, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v358.f64[0]);
        v350.i64[1] = HIDWORD(v358.f64[0]);
        v360 = v350;
        v361 = vand_s8(v319, 0xFF000000FFLL);
        v350.i64[0] = v361.u32[0];
        v350.i64[1] = v361.u32[1];
        v362 = vmlaq_f64(v359, vcvtq_f64_u64(v350), vcvtq_f64_u64(v360));
        v363.i32[0] = v320.u8[2];
        v364 = __PAIR64__(v335, v334);
        result = BYTE3(v314);
        v319.i32[0] = v320.u8[0];
        v365 = v320.u8[3];
        v366 = __PAIR64__(v337, v336);
        v367 = v320.u8[1];
        v514.val[3].i32[0] = v514.val[2].u8[0];
        v368.i32[0] = v313;
        v368.i32[1] = BYTE1(v313);
        v514.val[2].i32[0] = v514.val[0].u8[0];
        v514.val[2].i32[1] = v514.val[0].u8[1];
        v320.i32[0] = v514.val[0].u8[2];
        v320.i32[1] = v514.val[0].u8[3];
        v513.val[2].i32[0] = v314;
        v513.val[2].i32[1] = BYTE1(v314);
        v318.i32[1] = BYTE3(v314);
        v328.i32[1] = BYTE3(v315);
        v347.i32[1] = v514.val[1].u8[5];
        v353.i32[1] = BYTE1(v315);
        v348.i32[1] = v514.val[1].u8[3];
        v356.i32[1] = v514.val[1].u8[1];
        v363.i32[1] = v365;
        v319.i32[1] = v367;
        v369 = vand_s8(v328, 0xFF000000FFLL);
        v350.i64[0] = v369.u32[0];
        v350.i64[1] = v369.u32[1];
        v370 = vcvtq_f64_u64(v350);
        v371 = vand_s8(v363, 0xFF000000FFLL);
        v350.i64[0] = v371.u32[0];
        v350.i64[1] = v371.u32[1];
        v372 = vmulq_f64(v370, vcvtq_f64_u64(v350));
        *&v370.f64[0] = vand_s8(__PAIR64__(BYTE3(v313), BYTE2(v313)), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v370.f64[0]);
        v350.i64[1] = HIDWORD(v370.f64[0]);
        v373 = vcvtq_f64_u64(v350);
        v374 = vand_s8(v318, 0xFF000000FFLL);
        v350.i64[0] = v374.u32[0];
        v350.i64[1] = v374.u32[1];
        v375 = vmlaq_f64(v372, vcvtq_f64_u64(v350), v373);
        *&v373.f64[0] = vand_s8(__PAIR64__(v514.val[1].u8[7], v514.val[1].u8[6]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v373.f64[0]);
        v350.i64[1] = HIDWORD(v373.f64[0]);
        v376 = vcvtq_f64_u64(v350);
        v377 = vand_s8(__PAIR64__(v312, v332), 0xFF000000FFLL);
        v350.i64[0] = v377.u32[0];
        v350.i64[1] = v377.u32[1];
        v378 = vmulq_f64(v376, vcvtq_f64_u64(v350));
        v379 = vand_s8(__PAIR64__(v514.val[0].u8[7], v514.val[0].u8[6]), 0xFF000000FFLL);
        v350.i64[0] = v379.u32[0];
        v350.i64[1] = v379.u32[1];
        v380 = v350;
        v381 = vand_s8(__PAIR64__(v331, v476), 0xFF000000FFLL);
        v350.i64[0] = v381.u32[0];
        v350.i64[1] = v381.u32[1];
        v382 = vmlaq_f64(v378, vcvtq_f64_u64(v350), vcvtq_f64_u64(v380));
        v383 = vand_s8(v347, 0xFF000000FFLL);
        v350.i64[0] = v383.u32[0];
        v350.i64[1] = v383.u32[1];
        *v360.i8 = vand_s8(__PAIR64__(v311, v333), 0xFF000000FFLL);
        v384 = vcvtq_f64_u64(v350);
        v350.i64[0] = v360.u32[0];
        v350.i64[1] = v360.u32[1];
        v385 = vmulq_f64(v384, vcvtq_f64_u64(v350));
        *&v384.f64[0] = vand_s8(__PAIR64__(v514.val[0].u8[5], v514.val[0].u8[4]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v384.f64[0]);
        v350.i64[1] = HIDWORD(v384.f64[0]);
        v386 = vcvtq_f64_u64(v350);
        *v360.i8 = vand_s8(__PAIR64__(v330, v477), 0xFF000000FFLL);
        v350.i64[0] = v360.u32[0];
        v350.i64[1] = v360.u32[1];
        v387 = vmlaq_f64(v385, vcvtq_f64_u64(v350), v386);
        *&v351.f64[0] = vand_s8(v353, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v351.f64[0]);
        v350.i64[1] = HIDWORD(v351.f64[0]);
        v388 = vcvtq_f64_u64(v350);
        *&v386.f64[0] = vand_s8(v319, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v389 = vmulq_f64(v388, vcvtq_f64_u64(v350));
        *&v388.f64[0] = vand_s8(v368, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v388.f64[0]);
        v350.i64[1] = HIDWORD(v388.f64[0]);
        v390 = vcvtq_f64_u64(v350);
        *&v386.f64[0] = vand_s8(*v513.val[2].i8, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v391 = vmlaq_f64(v389, vcvtq_f64_u64(v350), v390);
        *&v390.f64[0] = vand_s8(v348, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v390.f64[0]);
        v350.i64[1] = HIDWORD(v390.f64[0]);
        v392 = vcvtq_f64_u64(v350);
        *&v386.f64[0] = vand_s8(v364, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v513.val[0] = vmulq_f64(v392, vcvtq_f64_u64(v350));
        *&v392.f64[0] = vand_s8(v320, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v392.f64[0]);
        v350.i64[1] = HIDWORD(v392.f64[0]);
        v393 = v350;
        *&v386.f64[0] = vand_s8(__PAIR64__(v329, v479), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v513.val[0] = vmlaq_f64(v513.val[0], vcvtq_f64_u64(v350), vcvtq_f64_u64(v393));
        *v393.i8 = vand_s8(v356, 0xFF000000FFLL);
        v350.i64[0] = v393.u32[0];
        v350.i64[1] = v393.u32[1];
        *&v386.f64[0] = vand_s8(v366, 0xFF000000FFLL);
        v394 = vcvtq_f64_u64(v350);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v395 = vmulq_f64(v394, vcvtq_f64_u64(v350));
        *&v394.f64[0] = vand_s8(*v514.val[2].i8, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v394.f64[0]);
        v350.i64[1] = HIDWORD(v394.f64[0]);
        v396 = vcvtq_f64_u64(v350);
        *&v386.f64[0] = vand_s8(__PAIR64__(v327, v480), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v397 = vmlaq_f64(v395, vcvtq_f64_u64(v350), v396);
        v514.val[3].i32[1] = v483;
        *&v386.f64[0] = vand_s8(*v514.val[3].i8, 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v386.f64[0]);
        v350.i64[1] = HIDWORD(v386.f64[0]);
        v398 = vcvtq_f64_u64(v350);
        *&v396.f64[0] = vand_s8(__PAIR64__(v345, v344), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v396.f64[0]);
        v350.i64[1] = HIDWORD(v396.f64[0]);
        v399 = vmlaq_f64(v397, vcvtq_f64_u64(v350), v398);
        *&v396.f64[0] = vand_s8(__PAIR64__(v484, v485), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v396.f64[0]);
        v350.i64[1] = HIDWORD(v396.f64[0]);
        v400 = vcvtq_f64_u64(v350);
        *&v398.f64[0] = vand_s8(__PAIR64__(v343, v342), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v398.f64[0]);
        v350.i64[1] = HIDWORD(v398.f64[0]);
        v513.val[0] = vmlaq_f64(v513.val[0], vcvtq_f64_u64(v350), v400);
        LODWORD(v400.f64[0]) = v322;
        HIDWORD(v400.f64[0]) = BYTE1(v322);
        LODWORD(v398.f64[0]) = v326;
        HIDWORD(v398.f64[0]) = BYTE1(v326);
        *&v400.f64[0] = vand_s8(*&v400.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v400.f64[0]);
        v350.i64[1] = HIDWORD(v400.f64[0]);
        v401 = vcvtq_f64_u64(v350);
        *&v398.f64[0] = vand_s8(*&v398.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v398.f64[0]);
        v350.i64[1] = HIDWORD(v398.f64[0]);
        v402 = vmlaq_f64(v391, vcvtq_f64_u64(v350), v401);
        *&v401.f64[0] = vand_s8(__PAIR64__(v490, v491), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v401.f64[0]);
        v350.i64[1] = HIDWORD(v401.f64[0]);
        v403 = vcvtq_f64_u64(v350);
        *&v398.f64[0] = vand_s8(__PAIR64__(v341, v340), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v398.f64[0]);
        v350.i64[1] = HIDWORD(v398.f64[0]);
        v404 = vmlaq_f64(v387, vcvtq_f64_u64(v350), v403);
        LODWORD(v403.f64[0]) = BYTE2(v322);
        HIDWORD(v403.f64[0]) = BYTE3(v322);
        LODWORD(v398.f64[0]) = BYTE2(v326);
        HIDWORD(v398.f64[0]) = BYTE3(v326);
        *&v403.f64[0] = vand_s8(*&v403.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v403.f64[0]);
        v350.i64[1] = HIDWORD(v403.f64[0]);
        v405 = vcvtq_f64_u64(v350);
        *&v398.f64[0] = vand_s8(*&v398.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v398.f64[0]);
        v350.i64[1] = HIDWORD(v398.f64[0]);
        v406 = vmlaq_f64(v375, vcvtq_f64_u64(v350), v405);
        LODWORD(v405.f64[0]) = BYTE4(v322);
        HIDWORD(v405.f64[0]) = BYTE5(v322);
        *&v405.f64[0] = vand_s8(*&v405.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v405.f64[0]);
        v350.i64[1] = HIDWORD(v405.f64[0]);
        v354.i32[0] = BYTE4(v326);
        v354.i32[1] = BYTE5(v326);
        v407 = vcvtq_f64_u64(v350);
        v408 = vand_s8(v354, 0xFF000000FFLL);
        v350.i64[0] = v408.u32[0];
        v350.i64[1] = v408.u32[1];
        v409 = vmlaq_f64(v362, vcvtq_f64_u64(v350), v407);
        LODWORD(v407.f64[0]) = BYTE6(v322);
        v408.i32[0] = BYTE6(v326);
        HIDWORD(v407.f64[0]) = HIBYTE(v322);
        v408.i32[1] = HIBYTE(v326);
        *&v407.f64[0] = vand_s8(*&v407.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v407.f64[0]);
        v350.i64[1] = HIDWORD(v407.f64[0]);
        v410 = vcvtq_f64_u64(v350);
        v411 = vand_s8(v408, 0xFF000000FFLL);
        v350.i64[0] = v411.u32[0];
        v350.i64[1] = v411.u32[1];
        v412 = vmlaq_f64(v355, vcvtq_f64_u64(v350), v410);
        LODWORD(v410.f64[0]) = BYTE4(v475);
        v411.i32[0] = BYTE6(v475);
        *&v398.f64[0] = vand_s8(__PAIR64__(v492, v493), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v398.f64[0]);
        v350.i64[1] = HIDWORD(v398.f64[0]);
        v413 = vcvtq_f64_u64(v350);
        *v360.i8 = vand_s8(__PAIR64__(v339, v338), 0xFF000000FFLL);
        v350.i64[0] = v360.u32[0];
        v350.i64[1] = v360.u32[1];
        v414 = vmlaq_f64(v382, vcvtq_f64_u64(v350), v413);
        v411.i32[1] = HIBYTE(v475);
        v415 = vand_s8(v411, 0xFF000000FFLL);
        v350.i64[0] = v415.u32[0];
        v350.i64[1] = v415.u32[1];
        v360.i32[0] = BYTE6(v346);
        v360.i32[1] = HIBYTE(v346);
        v416 = vcvtq_f64_u64(v350);
        *v360.i8 = vand_s8(*v360.i8, 0xFF000000FFLL);
        v350.i64[0] = v360.u32[0];
        v350.i64[1] = v360.u32[1];
        v417 = vmlaq_f64(v412, vcvtq_f64_u64(v350), v416);
        LODWORD(v416.f64[0]) = BYTE4(v346);
        v300 = COERCE_DOUBLE(__PAIR64__(v513.val[3].u8[7], v513.val[3].u8[6]));
        HIDWORD(v410.f64[0]) = BYTE5(v475);
        HIDWORD(v416.f64[0]) = BYTE5(v346);
        *&v410.f64[0] = vand_s8(*&v410.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v410.f64[0]);
        v350.i64[1] = HIDWORD(v410.f64[0]);
        v418 = vcvtq_f64_u64(v350);
        *&v416.f64[0] = vand_s8(*&v416.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v416.f64[0]);
        v350.i64[1] = HIDWORD(v416.f64[0]);
        v419 = vmlaq_f64(v409, vcvtq_f64_u64(v350), v418);
        *&v418.f64[0] = vand_s8(__PAIR64__(v478, v323), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v418.f64[0]);
        v350.i64[1] = HIDWORD(v418.f64[0]);
        v420 = v350;
        *&v413.f64[0] = vand_s8(__PAIR64__(v513.val[3].u8[7], v513.val[3].u8[6]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v413.f64[0]);
        v350.i64[1] = HIDWORD(v413.f64[0]);
        v421 = vmlaq_f64(v414, vcvtq_f64_u64(v350), vcvtq_f64_u64(v420));
        *v420.i8 = vand_s8(__PAIR64__(v481, v482), 0xFF000000FFLL);
        v350.i64[0] = v420.u32[0];
        v350.i64[1] = v420.u32[1];
        v422 = vcvtq_f64_u64(v350);
        *&v413.f64[0] = vand_s8(__PAIR64__(v513.val[3].u8[5], v513.val[3].u8[4]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v413.f64[0]);
        v350.i64[1] = HIDWORD(v413.f64[0]);
        v423 = vmlaq_f64(v404, vcvtq_f64_u64(v350), v422);
        LODWORD(v422.f64[0]) = BYTE2(v475);
        HIDWORD(v422.f64[0]) = BYTE3(v475);
        *&v422.f64[0] = vand_s8(*&v422.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v422.f64[0]);
        v350.i64[1] = HIDWORD(v422.f64[0]);
        LODWORD(v413.f64[0]) = BYTE2(v346);
        v424 = vcvtq_f64_u64(v350);
        HIDWORD(v413.f64[0]) = BYTE3(v346);
        *&v413.f64[0] = vand_s8(*&v413.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v413.f64[0]);
        v350.i64[1] = HIDWORD(v413.f64[0]);
        v425 = vmlaq_f64(v406, vcvtq_f64_u64(v350), v424);
        LODWORD(v413.f64[0]) = v475;
        HIDWORD(v413.f64[0]) = BYTE1(v475);
        LODWORD(v416.f64[0]) = v346;
        v9 = v498;
        v209 = v500;
        HIDWORD(v416.f64[0]) = BYTE1(v346);
        *&v413.f64[0] = vand_s8(*&v413.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v413.f64[0]);
        v350.i64[1] = HIDWORD(v413.f64[0]);
        v426 = vcvtq_f64_u64(v350);
        *&v416.f64[0] = vand_s8(*&v416.f64[0], 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v416.f64[0]);
        v350.i64[1] = HIDWORD(v416.f64[0]);
        v427 = vmlaq_f64(v402, vcvtq_f64_u64(v350), v426);
        *&v426.f64[0] = vand_s8(__PAIR64__(v487, v489), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v426.f64[0]);
        v350.i64[1] = HIDWORD(v426.f64[0]);
        v428 = vcvtq_f64_u64(v350);
        *&v416.f64[0] = vand_s8(__PAIR64__(v513.val[3].u8[3], v513.val[3].u8[2]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v416.f64[0]);
        v350.i64[1] = HIDWORD(v416.f64[0]);
        v513.val[0] = vmlaq_f64(v513.val[0], vcvtq_f64_u64(v350), v428);
        *&v424.f64[0] = vand_s8(__PAIR64__(v486, v488), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v424.f64[0]);
        v350.i64[1] = HIDWORD(v424.f64[0]);
        v429 = vcvtq_f64_u64(v350);
        *&v428.f64[0] = vand_s8(__PAIR64__(v513.val[3].u8[1], v513.val[3].u8[0]), 0xFF000000FFLL);
        v350.i64[0] = LODWORD(v428.f64[0]);
        v350.i64[1] = HIDWORD(v428.f64[0]);
        v430 = vmlaq_f64(v399, vcvtq_f64_u64(v350), v429);
        v304 = v417.f64[1];
        v305 = v419.f64[1];
        v306 = v505 + v430.f64[0] + v430.f64[1] + *v513.val[0].i64 + *&v513.val[0].i64[1] + v423.f64[0] + v423.f64[1] + v421.f64[0] + v421.f64[1] + v427.f64[0] + v427.f64[1] + v425.f64[0] + v425.f64[1] + v419.f64[0] + v419.f64[1] + v417.f64[0];
        v212 = v306 + v417.f64[1];
        v208 -= 16;
      }

      while (v502 != 16);
      v208 = v461;
      v207 = v462;
      if (v462 != v461)
      {
        v211 = v461;
        v307 = v461;
        v309 = v469;
        v308 = v470;
        v192 = v464;
        v9 = v465;
        v12 = v471;
        LODWORD(v17) = v472;
        v310 = v473;
        v193 = v463;
        v210 = v467;
        v209 = v468;
        if ((v462 & 8) == 0)
        {
LABEL_119:
          v431 = 4 * v307;
          do
          {
            LOBYTE(v306) = v9[v431];
            LOBYTE(v304) = v209[v431];
            LOBYTE(v305) = v9[v431 + 1];
            *&v432 = *&v304;
            LOBYTE(v300) = v209[v431 + 1];
            v300 = *&v300;
            *&v433 = *&v305 * v300;
            v434 = *&v433 + *&v306 * *&v432;
            LOBYTE(v432) = v9[v431 + 2];
            *&v435 = v432;
            LOBYTE(v433) = v209[v431 + 2];
            *&v436 = v433;
            v437 = v434 + *&v435 * *&v436;
            LOBYTE(v435) = v9[v431 + 3];
            v304 = v435;
            LOBYTE(v436) = v209[v431 + 3];
            v305 = v436;
            v306 = v437 + v304 * v305;
            v212 = v212 + v306;
            v431 += 4;
          }

          while (v431 <= v192);
          goto LABEL_121;
        }

LABEL_110:
        v213 = 4 * v211;
        result = v211 - v466;
        do
        {
          v504 = v212;
          v214 = &v9[v213];
          v215 = &v209[v213];
          v512 = vld4_s8(v214);
          v511 = vld4_s8(v215);
          v216.i32[0] = v512.val[0].u8[0];
          v217.i32[0] = v512.val[0].u8[2];
          v218.i32[0] = v512.val[0].u8[4];
          v219.i32[0] = v512.val[0].u8[6];
          v220.i32[0] = v511.val[0].u8[0];
          v221.i32[0] = v511.val[0].u8[2];
          v222.i32[0] = v511.val[0].u8[4];
          v223.i32[0] = v511.val[0].u8[6];
          v224.i32[0] = v512.val[1].u8[6];
          v225.i32[0] = v512.val[1].u8[4];
          v216.i32[1] = v512.val[0].u8[1];
          v226.i32[0] = v512.val[1].u8[2];
          v227.i32[0] = v512.val[1].u8[0];
          v217.i32[1] = v512.val[0].u8[3];
          v218.i32[1] = v512.val[0].u8[5];
          v219.i32[1] = v512.val[0].u8[7];
          v228.i32[0] = v511.val[1].u8[6];
          v229.i32[0] = v511.val[1].u8[4];
          v220.i32[1] = v511.val[0].u8[1];
          v221.i32[1] = v511.val[0].u8[3];
          v230.i32[0] = v511.val[1].u8[2];
          v231.i32[0] = v511.val[1].u8[0];
          v227.i32[1] = v512.val[1].u8[1];
          v231.i32[1] = v511.val[1].u8[1];
          v222.i32[1] = v511.val[0].u8[5];
          v501 = v222;
          v223.i32[1] = v511.val[0].u8[7];
          v222.i32[0] = v512.val[2].u8[6];
          v232.i32[0] = v512.val[2].u8[4];
          v224.i32[1] = v512.val[1].u8[7];
          v225.i32[1] = v512.val[1].u8[5];
          v226.i32[1] = v512.val[1].u8[3];
          v233.i32[0] = v512.val[2].u8[2];
          v234.i32[0] = v512.val[2].u8[0];
          v228.i32[1] = v511.val[1].u8[7];
          v229.i32[1] = v511.val[1].u8[5];
          v235.i32[0] = v511.val[2].u8[6];
          v236.i32[0] = v511.val[2].u8[4];
          v230.i32[1] = v511.val[1].u8[3];
          v222.i32[1] = v512.val[2].u8[7];
          v232.i32[1] = v512.val[2].u8[5];
          v237 = v512.val[3].u8[1];
          v233.i32[1] = v512.val[2].u8[3];
          v238 = v512.val[3].u8[2];
          v239 = v512.val[3].u8[3];
          v234.i32[1] = v512.val[2].u8[1];
          LODWORD(v215) = v512.val[3].u8[4];
          v240 = v512.val[3].u8[5];
          v235.i32[1] = v511.val[2].u8[7];
          v241 = v512.val[3].u8[6];
          LODWORD(v214) = v512.val[3].u8[7];
          v236.i32[1] = v511.val[2].u8[5];
          v242.i32[0] = v511.val[2].u8[2];
          v512.val[2].i32[0] = v511.val[2].u8[0];
          v242.i32[1] = v511.val[2].u8[3];
          v512.val[2].i32[1] = v511.val[2].u8[1];
          v512.val[3].i32[0] = v512.val[3].u8[0];
          v512.val[3].i32[1] = v237;
          v512.val[0] = vand_s8(v227, 0xFF000000FFLL);
          v243.i64[0] = v512.val[0].u32[0];
          v243.i64[1] = v512.val[0].u32[1];
          *v512.val[0].i8 = vcvtq_f64_u64(v243);
          v244 = vand_s8(v231, 0xFF000000FFLL);
          v243.i64[0] = v244.u32[0];
          v243.i64[1] = v244.u32[1];
          *v512.val[0].i8 = vmulq_f64(*v512.val[0].i8, vcvtq_f64_u64(v243));
          v245 = vand_s8(v216, 0xFF000000FFLL);
          v243.i64[0] = v245.u32[0];
          v243.i64[1] = v245.u32[1];
          v246 = v243;
          v247 = vand_s8(v217, 0xFF000000FFLL);
          v243.i64[0] = v247.u32[0];
          v243.i64[1] = v247.u32[1];
          v497 = vcvtq_f64_u64(v243);
          v248 = vand_s8(v218, 0xFF000000FFLL);
          v243.i64[0] = v248.u32[0];
          v243.i64[1] = v248.u32[1];
          v249 = v243;
          v250 = vand_s8(v219, 0xFF000000FFLL);
          v243.i64[0] = v250.u32[0];
          v243.i64[1] = v250.u32[1];
          v495 = vcvtq_f64_u64(v249);
          v251 = vcvtq_f64_u64(v243);
          v252 = vand_s8(v220, 0xFF000000FFLL);
          v243.i64[0] = v252.u32[0];
          v243.i64[1] = v252.u32[1];
          v253 = v243;
          v254 = vand_s8(v221, 0xFF000000FFLL);
          v243.i64[0] = v254.u32[0];
          v243.i64[1] = v254.u32[1];
          v255 = vcvtq_f64_u64(v253);
          v256 = vcvtq_f64_u64(v243);
          v257 = vand_s8(v501, 0xFF000000FFLL);
          v243.i64[0] = v257.u32[0];
          v243.i64[1] = v257.u32[1];
          v258 = v243;
          v259 = vand_s8(v223, 0xFF000000FFLL);
          v243.i64[0] = v259.u32[0];
          v243.i64[1] = v259.u32[1];
          v260 = vcvtq_f64_u64(v243);
          v261 = vand_s8(v224, 0xFF000000FFLL);
          v243.i64[0] = v261.u32[0];
          v243.i64[1] = v261.u32[1];
          v262 = v243;
          v263 = vand_s8(v225, 0xFF000000FFLL);
          v243.i64[0] = v263.u32[0];
          v243.i64[1] = v263.u32[1];
          v264 = vcvtq_f64_u64(v243);
          v265 = vand_s8(v226, 0xFF000000FFLL);
          v243.i64[0] = v265.u32[0];
          v243.i64[1] = v265.u32[1];
          v266 = v243;
          v267 = vand_s8(v228, 0xFF000000FFLL);
          v243.i64[0] = v267.u32[0];
          v243.i64[1] = v267.u32[1];
          v268 = vcvtq_f64_u64(v243);
          v269 = vand_s8(v229, 0xFF000000FFLL);
          v243.i64[0] = v269.u32[0];
          v243.i64[1] = v269.u32[1];
          v270 = v243;
          v271 = vand_s8(v230, 0xFF000000FFLL);
          v243.i64[0] = v271.u32[0];
          v243.i64[1] = v271.u32[1];
          v272 = vcvtq_f64_u64(v270);
          v273 = vcvtq_f64_u64(v243);
          *v253.i8 = vand_s8(v222, 0xFF000000FFLL);
          v243.i64[0] = v253.u32[0];
          v243.i64[1] = v253.u32[1];
          v274 = v243;
          *v270.i8 = vand_s8(v232, 0xFF000000FFLL);
          v243.i64[0] = v270.u32[0];
          v243.i64[1] = v270.u32[1];
          v275 = vcvtq_f64_u64(v274);
          v276 = vcvtq_f64_u64(v243);
          *v270.i8 = vand_s8(v233, 0xFF000000FFLL);
          v243.i64[0] = v270.u32[0];
          v243.i64[1] = v270.u32[1];
          v277 = v243;
          v278 = vand_s8(v234, 0xFF000000FFLL);
          v243.i64[0] = v278.u32[0];
          v243.i64[1] = v278.u32[1];
          v279 = vcvtq_f64_u64(v277);
          v280 = vcvtq_f64_u64(v243);
          *v277.i8 = vand_s8(v235, 0xFF000000FFLL);
          v243.i64[0] = v277.u32[0];
          v243.i64[1] = v277.u32[1];
          v281 = v243;
          v282 = vand_s8(v236, 0xFF000000FFLL);
          v243.i64[0] = v282.u32[0];
          v243.i64[1] = v282.u32[1];
          v283 = vcvtq_f64_u64(v281);
          v284 = vcvtq_f64_u64(v243);
          v285 = vand_s8(v242, 0xFF000000FFLL);
          v243.i64[0] = v285.u32[0];
          v243.i64[1] = v285.u32[1];
          v286 = v243;
          v287 = vand_s8(v512.val[2], 0xFF000000FFLL);
          v243.i64[0] = v287.u32[0];
          v243.i64[1] = v287.u32[1];
          v288 = vcvtq_f64_u64(v286);
          v289 = vcvtq_f64_u64(v243);
          v290 = vand_s8(v512.val[3], 0xFF000000FFLL);
          v243.i64[0] = v290.u32[0];
          v243.i64[1] = v290.u32[1];
          *v512.val[3].i8 = vcvtq_f64_u64(v243);
          v512.val[1] = vand_s8(__PAIR64__(v239, v238), 0xFF000000FFLL);
          v291 = vmulq_f64(vcvtq_f64_u64(v266), v273);
          v243.i64[0] = v512.val[1].u32[0];
          v243.i64[1] = v512.val[1].u32[1];
          *v512.val[2].i8 = vcvtq_f64_u64(v243);
          v292 = vand_s8(__PAIR64__(v240, v215), 0xFF000000FFLL);
          v243.i64[0] = v292.u32[0];
          v243.i64[1] = v292.u32[1];
          v293 = vcvtq_f64_u64(v243);
          v294 = vmulq_f64(v264, v272);
          v512.val[1] = vand_s8(__PAIR64__(v214, v241), 0xFF000000FFLL);
          v243.i64[0] = v512.val[1].u32[0];
          v243.i64[1] = v512.val[1].u32[1];
          v295 = vcvtq_f64_u64(v243);
          *v512.val[1].i8 = vmulq_f64(vcvtq_f64_u64(v262), v268);
          LODWORD(v268.f64[0]) = v511.val[3].u8[0];
          HIDWORD(v268.f64[0]) = v511.val[3].u8[1];
          *&v268.f64[0] = vand_s8(*&v268.f64[0], 0xFF000000FFLL);
          v243.i64[0] = LODWORD(v268.f64[0]);
          v243.i64[1] = HIDWORD(v268.f64[0]);
          v296 = vcvtq_f64_u64(v243);
          *v512.val[0].i8 = vmlaq_f64(vmlaq_f64(*v512.val[0].i8, v255, vcvtq_f64_u64(v246)), v289, v280);
          LODWORD(v289.f64[0]) = v511.val[3].u8[2];
          *v512.val[1].i8 = vmlaq_f64(*v512.val[1].i8, v260, v251);
          HIDWORD(v289.f64[0]) = v511.val[3].u8[3];
          *&v289.f64[0] = vand_s8(*&v289.f64[0], 0xFF000000FFLL);
          v243.i64[0] = LODWORD(v289.f64[0]);
          v243.i64[1] = HIDWORD(v289.f64[0]);
          v297 = vcvtq_f64_u64(v243);
          LODWORD(v255.f64[0]) = v511.val[3].u8[4];
          HIDWORD(v255.f64[0]) = v511.val[3].u8[5];
          *&v255.f64[0] = vand_s8(*&v255.f64[0], 0xFF000000FFLL);
          v243.i64[0] = LODWORD(v255.f64[0]);
          v243.i64[1] = HIDWORD(v255.f64[0]);
          v298 = vcvtq_f64_u64(v243);
          LODWORD(v251.f64[0]) = v511.val[3].u8[6];
          HIDWORD(v251.f64[0]) = v511.val[3].u8[7];
          v511.val[0] = vand_s8(*&v251.f64[0], 0xFF000000FFLL);
          v243.i64[0] = v511.val[0].u32[0];
          v243.i64[1] = v511.val[0].u32[1];
          *v512.val[1].i8 = vmlaq_f64(vmlaq_f64(*v512.val[1].i8, v283, v275), vcvtq_f64_u64(v243), v295);
          v300 = v299;
          v301 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v294, vcvtq_f64_u64(v258), v495), v284, v276), v298, v293);
          v302 = vmlaq_f64(vmlaq_f64(vmlaq_f64(v291, v256, v497), v288, v279), v297, *v512.val[2].i8);
          *v512.val[0].i8 = vmlaq_f64(*v512.val[0].i8, v296, *v512.val[3].i8);
          v304 = v504 + *v512.val + v303 + v302.f64[0] + v302.f64[1];
          v305 = v301.f64[1];
          v306 = v304 + v301.f64[0] + v301.f64[1] + *&v512.val[1];
          v212 = v306 + v299;
          v213 += 32;
          result += 8;
        }

        while (result);
        v307 = v466;
        v309 = v469;
        v308 = v470;
        v310 = v473;
        if (v207 == v466)
        {
          goto LABEL_121;
        }

        goto LABEL_119;
      }

      v309 = v469;
      v308 = v470;
      v192 = v464;
      v9 = v465;
      v12 = v471;
      LODWORD(v17) = v472;
      v310 = v473;
      v193 = v463;
      v210 = v467;
      v209 = v468;
LABEL_121:
      v438 = v193;
      if (v193 < v17)
      {
        do
        {
          LOBYTE(v306) = v9[v438];
          v306 = *&v306;
          LOBYTE(v304) = v209[v438];
          v304 = *&v304;
          v212 = v212 + v306 * v304;
          ++v438;
        }

        while (v310 > v438);
      }

      *(v309 + 8 * v210++) = v212 * v474;
      v209 += v12;
      if (v210 == v308)
      {
        v206 = v459 + 1;
        v10 = v309 + 8 * v460;
        v9 += v12;
        if (v459 + 1 == v308)
        {
          return result;
        }

        goto LABEL_106;
      }
    }

    v211 = 0;
    v212 = 0.0;
    goto LABEL_110;
  }

  v18 = *(a3 + 12);
  result = v506;
  if ((8 * v16) >= 0x409)
  {
    operator new[]();
  }

  if (v15 < 1)
  {
    return result;
  }

  v19 = 0;
  v20 = 32 * (v18 == v473);
  v21 = v17 - 4;
  v22 = ((v17 - 4) & 0xFFFFFFFC) + 4;
  v23 = v20 * (((v17 - 4) >> 2) + 1);
  v24 = &v506[8 * v17];
  v25 = v17 < 4;
  v26 = v506 >= v11 + 8 * (v17 + v13 * (v15 - 1)) || v11 >= v24;
  v27 = v13 >> 60;
  if (!v26)
  {
    LOBYTE(v27) = 1;
  }

  v29 = v506 < &v9[v12 * (v15 - 1) + v17] && v9 < v24 || v12 < 0;
  v30 = v29;
  v31 = v10;
  if (v29)
  {
    v32 = 1;
  }

  else
  {
    v32 = v27;
  }

  v33 = v17 & 0x7FFFFFF0;
  v494 = v17 & 0xC;
  v34 = v17 & 0x7FFFFFFC;
  v499 = v25 | v32;
  v35 = v31;
  v496 = v25 | v30;
  v36 = v470;
  v37 = v9 + 3;
  v38 = v11;
  v503 = v33;
  while (2)
  {
    v39 = v9;
    if (v18 >= v17)
    {
      v40 = v473;
      if (v17 < 1)
      {
        goto LABEL_55;
      }

      if (v499)
      {
        for (k = 0; k != v17; ++k)
        {
LABEL_54:
          LOBYTE(a4.f64[0]) = v9[k];
          a4.f64[0] = *&a4.f64[0] - v38->f64[k];
          *&v506[8 * k] = a4.f64[0];
        }

        goto LABEL_55;
      }

      if (v17 >= 0x10)
      {
        v77 = v506;
        v78 = v38;
        do
        {
          v79 = *v9;
          v9 += 16;
          v80 = vextq_s8(v79, v79, 8uLL).u64[0];
          v81.i32[0] = BYTE6(v80);
          v81.i32[1] = HIBYTE(v80);
          v82 = vand_s8(v81, 0xFF000000FFLL);
          v83.i64[0] = v82.u32[0];
          v83.i64[1] = v82.u32[1];
          v84 = vcvtq_f64_u64(v83);
          v85.i32[0] = BYTE4(v80);
          v85.i32[1] = BYTE5(v80);
          v86 = vand_s8(v85, 0xFF000000FFLL);
          v83.i64[0] = v86.u32[0];
          v83.i64[1] = v86.u32[1];
          v87 = vcvtq_f64_u64(v83);
          v88.i32[0] = BYTE2(v80);
          v88.i32[1] = BYTE3(v80);
          v89 = vand_s8(v88, 0xFF000000FFLL);
          v83.i64[0] = v89.u32[0];
          v83.i64[1] = v89.u32[1];
          v90 = vcvtq_f64_u64(v83);
          v91.i32[0] = v80;
          v91.i32[1] = BYTE1(v80);
          v92 = vand_s8(v91, 0xFF000000FFLL);
          v83.i64[0] = v92.u32[0];
          v83.i64[1] = v92.u32[1];
          v93 = vcvtq_f64_u64(v83);
          v91.i32[0] = v79.u8[6];
          v91.i32[1] = v79.u8[7];
          v94 = vand_s8(v91, 0xFF000000FFLL);
          v83.i64[0] = v94.u32[0];
          v83.i64[1] = v94.u32[1];
          v95 = vcvtq_f64_u64(v83);
          v96.i32[0] = v79.u8[4];
          v96.i32[1] = v79.u8[5];
          v97 = vand_s8(v96, 0xFF000000FFLL);
          v83.i64[0] = v97.u32[0];
          v83.i64[1] = v97.u32[1];
          v98 = vcvtq_f64_u64(v83);
          v99.i32[0] = v79.u8[2];
          v99.i32[1] = v79.u8[3];
          v100 = vand_s8(v99, 0xFF000000FFLL);
          v83.i64[0] = v100.u32[0];
          v83.i64[1] = v100.u32[1];
          v101 = vcvtq_f64_u64(v83);
          v102.i32[0] = v79.u8[0];
          v102.i32[1] = v79.u8[1];
          v103 = vand_s8(v102, 0xFF000000FFLL);
          v83.i64[0] = v103.u32[0];
          v83.i64[1] = v103.u32[1];
          a8 = vsubq_f64(v93, v78[4]);
          a9 = vsubq_f64(v90, v78[5]);
          a7 = vsubq_f64(v87, v78[6]);
          a4 = vsubq_f64(v84, v78[7]);
          v104 = vsubq_f64(vcvtq_f64_u64(v83), *v78);
          v105 = vsubq_f64(v101, v78[1]);
          v106 = vsubq_f64(v95, v78[3]);
          v77[2] = vsubq_f64(v98, v78[2]);
          v77[3] = v106;
          *v77 = v104;
          v77[1] = v105;
          v77[6] = a7;
          v77[7] = a4;
          v77[4] = a8;
          v77[5] = a9;
          v78 += 8;
          v77 += 8;
          v33 -= 16;
        }

        while (v33);
        k = v503;
        v9 = v39;
        if (v503 == v17)
        {
          goto LABEL_55;
        }

        v45 = v503;
        if (!v494)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v45 = 0;
      }

      v107 = 8 * v45;
      do
      {
        LODWORD(a4.f64[0]) = *&v9[v45];
        v108 = vmovl_u16(*&vmovl_u8(*&a4.f64[0]));
        v109 = vand_s8(*v108.i8, 0xFF000000FFLL);
        v110.i64[0] = v109.u32[0];
        v110.i64[1] = v109.u32[1];
        v111 = vcvtq_f64_u64(v110);
        *v108.i8 = vand_s8(*&vextq_s8(v108, v108, 8uLL), 0xFF000000FFLL);
        v110.i64[0] = v108.u32[0];
        v110.i64[1] = v108.u32[1];
        a7 = *(v38 + v107);
        a8 = *(v38 + v107 + 16);
        a4 = vsubq_f64(vcvtq_f64_u64(v110), a8);
        v112 = &v506[v107];
        *v112 = vsubq_f64(v111, a7);
        v112[1] = a4;
        v45 += 4;
        v107 += 32;
      }

      while (v34 != v45);
      k = v34;
      if (v34 == v17)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v40 = v473;
    if (v473 >= 1)
    {
      v41 = *(v11 + 8 * v13 * v19);
      if (v496)
      {
        v42 = 0;
        do
        {
LABEL_45:
          LOBYTE(a4.f64[0]) = v9[v42];
          a4.f64[0] = *&a4.f64[0] - *&v41;
          *&v506[8 * v42++] = a4.f64[0];
        }

        while (v17 != v42);
        goto LABEL_55;
      }

      if (v473 >= 0x10)
      {
        v46 = 0;
        a4 = vdupq_lane_s64(v41, 0);
        v47 = v506;
        do
        {
          v48 = *&v9[v46];
          v49.i32[0] = v48.u8[6];
          v49.i32[1] = v48.u8[7];
          v9 = v39;
          v50 = vand_s8(v49, 0xFF000000FFLL);
          v51.i64[0] = v50.u32[0];
          v51.i64[1] = v50.u32[1];
          v52.i32[0] = v48.u8[4];
          v52.i32[1] = v48.u8[5];
          v53 = vcvtq_f64_u64(v51);
          v54 = vand_s8(v52, 0xFF000000FFLL);
          v51.i64[0] = v54.u32[0];
          v51.i64[1] = v54.u32[1];
          v55 = vcvtq_f64_u64(v51);
          v56.i32[0] = v48.u8[2];
          v56.i32[1] = v48.u8[3];
          v57 = vand_s8(v56, 0xFF000000FFLL);
          v51.i64[0] = v57.u32[0];
          v51.i64[1] = v57.u32[1];
          v58.i32[0] = v48.u8[0];
          v59 = vcvtq_f64_u64(v51);
          v58.i32[1] = v48.u8[1];
          v60 = vand_s8(v58, 0xFF000000FFLL);
          v51.i64[0] = v60.u32[0];
          v51.i64[1] = v60.u32[1];
          v61 = vcvtq_f64_u64(v51);
          v48.i64[0] = vextq_s8(v48, v48, 8uLL).u64[0];
          v62.i32[0] = v48.u8[6];
          v62.i32[1] = v48.u8[7];
          v63 = vand_s8(v62, 0xFF000000FFLL);
          v51.i64[0] = v63.u32[0];
          v51.i64[1] = v63.u32[1];
          v64 = vcvtq_f64_u64(v51);
          v65.i32[0] = v48.u8[4];
          v65.i32[1] = v48.u8[5];
          v66 = vand_s8(v65, 0xFF000000FFLL);
          v51.i64[0] = v66.u32[0];
          v51.i64[1] = v66.u32[1];
          v67 = vcvtq_f64_u64(v51);
          v68.i32[0] = v48.u8[2];
          v68.i32[1] = v48.u8[3];
          v69 = vand_s8(v68, 0xFF000000FFLL);
          v51.i64[0] = v69.u32[0];
          v51.i64[1] = v69.u32[1];
          v70 = vcvtq_f64_u64(v51);
          v71.i32[0] = v48.u8[0];
          v71.i32[1] = v48.u8[1];
          *v48.i8 = vand_s8(v71, 0xFF000000FFLL);
          v51.i64[0] = v48.u32[0];
          v51.i64[1] = v48.u32[1];
          a9 = vsubq_f64(vcvtq_f64_u64(v51), a4);
          a8 = vsubq_f64(v55, a4);
          v47[2] = a8;
          v47[3] = vsubq_f64(v53, a4);
          *v47 = vsubq_f64(v61, a4);
          v47[1] = vsubq_f64(v59, a4);
          a7 = vsubq_f64(v64, a4);
          v47[6] = vsubq_f64(v67, a4);
          v47[7] = a7;
          v47[4] = a9;
          v47[5] = vsubq_f64(v70, a4);
          v46 += 16;
          v47 += 8;
        }

        while (v503 != v46);
        if (v503 == v17)
        {
          goto LABEL_55;
        }

        v44 = v503;
        v42 = v503;
        if (!v494)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v44 = 0;
      }

      a4 = vdupq_lane_s64(v41, 0);
      v72 = &v506[8 * v44];
      do
      {
        LODWORD(a7.f64[0]) = *&v9[v44];
        v73 = vmovl_u16(*&vmovl_u8(*&a7.f64[0]));
        v74 = vand_s8(*v73.i8, 0xFF000000FFLL);
        v75.i64[0] = v74.u32[0];
        v75.i64[1] = v74.u32[1];
        v76 = vcvtq_f64_u64(v75);
        *v73.i8 = vand_s8(*&vextq_s8(v73, v73, 8uLL), 0xFF000000FFLL);
        v75.i64[0] = v73.u32[0];
        v75.i64[1] = v73.u32[1];
        a7 = vsubq_f64(vcvtq_f64_u64(v75), a4);
        a8 = vsubq_f64(v76, a4);
        *v72 = a8;
        v72[1] = a7;
        v72 += 2;
        v44 += 4;
      }

      while (v34 != v44);
      v42 = v34;
      if (v34 == v17)
      {
        goto LABEL_55;
      }

      goto LABEL_45;
    }

LABEL_55:
    v113 = v9;
    v114 = v37;
    v115 = v19;
    do
    {
      v116 = (v11 + 8 * v13 * v115);
      if (v18 < v40)
      {
        v509 = *v116;
        a4.f64[0] = v509;
        v510 = v509;
        *v508 = v509;
        *&v508[1] = v509;
        v116 = v508;
      }

      if (v17 >= 4)
      {
        v119 = v116 + 2;
        v118 = 0.0;
        v120 = &v507;
        v121 = v114;
        v122 = 1;
        do
        {
          LOBYTE(a4.f64[0]) = *(v121 - 3);
          v123 = *(v120 - 2);
          LOBYTE(a9.f64[0]) = *(v121 - 2);
          v124 = *(v120 - 1) * (*&a9.f64[0] - *(v119 - 1)) + v123 * (*&a4.f64[0] - *(v119 - 2));
          LOBYTE(v123) = *(v121 - 1);
          a9.f64[0] = v119[1];
          *&v125 = *&v123 - *v119;
          a8.f64[0] = *v120;
          v126 = v120[1];
          v120 += 4;
          v127 = v124 + a8.f64[0] * *&v125;
          LOBYTE(v125) = *v121;
          a7.f64[0] = v125 - a9.f64[0];
          a4.f64[0] = v127 + v126 * a7.f64[0];
          v119 = (v119 + v20);
          v128 = v122 + 3;
          v122 += 4;
          v118 = v118 + a4.f64[0];
          v121 += 4;
        }

        while (v128 <= v21);
        v116 = (v116 + v23);
        v117 = v22;
        if (v22 >= v40)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v117 = 0;
        v118 = 0.0;
        if (v40 <= 0)
        {
          goto LABEL_57;
        }
      }

      v129 = v117;
      v130 = v40 + ~v117;
      if (v130 < 3)
      {
        v131 = v117;
        v132 = v116;
        goto LABEL_80;
      }

      v133 = v130 + 1;
      if (v130 >= 0xF)
      {
        v134 = v133 & 0x1FFFFFFF0;
        v135 = &v506[8 * v129];
        v136 = &v113[v129];
        v137 = v133 & 0x1FFFFFFF0;
        v138 = v116;
        do
        {
          v139 = *v136++;
          v140 = vextq_s8(v139, v139, 8uLL).u64[0];
          v141.i32[0] = BYTE6(v140);
          v142.i32[0] = BYTE4(v140);
          v141.i32[1] = HIBYTE(v140);
          v142.i32[1] = BYTE5(v140);
          v143 = vand_s8(v141, 0xFF000000FFLL);
          v144.i32[0] = BYTE2(v140);
          v144.i32[1] = BYTE3(v140);
          v145 = vand_s8(v142, 0xFF000000FFLL);
          v146.i32[0] = v140;
          v147 = BYTE1(v140);
          v148.i64[0] = v143.u32[0];
          v148.i64[1] = v143.u32[1];
          v149 = v148;
          v150 = vand_s8(v144, 0xFF000000FFLL);
          v146.i32[1] = v147;
          v148.i64[0] = v145.u32[0];
          v148.i64[1] = v145.u32[1];
          v151 = v148;
          v144.i32[0] = v139.u8[6];
          v144.i32[1] = v139.u8[7];
          v148.i64[0] = v150.u32[0];
          v148.i64[1] = v150.u32[1];
          v152 = v148;
          v153 = vand_s8(v146, 0xFF000000FFLL);
          v154 = vand_s8(v144, 0xFF000000FFLL);
          v148.i64[0] = v154.u32[0];
          v148.i64[1] = v154.u32[1];
          v155 = v148;
          v148.i64[0] = v153.u32[0];
          v148.i64[1] = v153.u32[1];
          v156 = v148;
          v157.i32[0] = v139.u8[4];
          v157.i32[1] = v139.u8[5];
          v158 = vand_s8(v157, 0xFF000000FFLL);
          v148.i64[0] = v158.u32[0];
          v148.i64[1] = v158.u32[1];
          v159.i32[0] = v139.u8[2];
          v160 = vcvtq_f64_u64(v148);
          v159.i32[1] = v139.u8[3];
          v161 = vand_s8(v159, 0xFF000000FFLL);
          v148.i64[0] = v161.u32[0];
          v148.i64[1] = v161.u32[1];
          v162 = vcvtq_f64_u64(v148);
          v163.i32[0] = v139.u8[0];
          v163.i32[1] = v139.u8[1];
          v164 = vand_s8(v163, 0xFF000000FFLL);
          v148.i64[0] = v164.u32[0];
          v148.i64[1] = v164.u32[1];
          v165 = vmulq_f64(v135[7], vsubq_f64(vcvtq_f64_u64(v149), v138[7]));
          v166 = vmulq_f64(v135[6], vsubq_f64(vcvtq_f64_u64(v151), v138[6]));
          v167 = vmulq_f64(v135[5], vsubq_f64(vcvtq_f64_u64(v152), v138[5]));
          a9 = vmulq_f64(v135[3], vsubq_f64(vcvtq_f64_u64(v155), v138[3]));
          v168 = vmulq_f64(v135[4], vsubq_f64(vcvtq_f64_u64(v156), v138[4]));
          a8 = vmulq_f64(v135[2], vsubq_f64(v160, v138[2]));
          v169 = vmulq_f64(v135[1], vsubq_f64(v162, v138[1]));
          a7 = vmulq_f64(*v135, vsubq_f64(vcvtq_f64_u64(v148), *v138));
          v169.f64[0] = v118 + a7.f64[0] + a7.f64[1] + v169.f64[0];
          a7.f64[0] = v168.f64[1];
          v118 = v169.f64[0] + v169.f64[1] + a8.f64[0] + a8.f64[1] + a9.f64[0] + a9.f64[1] + v168.f64[0] + v168.f64[1] + v167.f64[0] + v167.f64[1] + v166.f64[0] + v166.f64[1] + v165.f64[0] + v165.f64[1];
          v138 += 8;
          v135 += 8;
          v137 -= 16;
        }

        while (v137);
        if (v133 == v134)
        {
          v36 = v470;
          v12 = v471;
          v17 = v472;
          v40 = v473;
          goto LABEL_57;
        }

        v12 = v471;
        v17 = v472;
        if ((v133 & 0xC) == 0)
        {
          v132 = &v116[v134];
          v131 = v134 + v129;
          v36 = v470;
          v40 = v473;
          do
          {
LABEL_80:
            LOBYTE(a7.f64[0]) = v113[v131];
            v181 = *v132++;
            HIDWORD(a8.f64[0]) = HIDWORD(v181);
            a7.f64[0] = *&a7.f64[0] - v181;
            v118 = v118 + *&v506[8 * v131++] * a7.f64[0];
          }

          while (v40 > v131);
          goto LABEL_57;
        }

        v36 = v470;
        v40 = v473;
      }

      else
      {
        v134 = 0;
      }

      v131 = (v133 & 0x1FFFFFFFCLL) + v129;
      v132 = &v116[v133 & 0x1FFFFFFFCLL];
      v170 = &v116[v134];
      v171 = v134 - (v133 & 0x1FFFFFFFCLL);
      v172 = v134 + v129;
      v173 = &v506[8 * v172];
      do
      {
        v174 = *v173;
        v175 = v173[1];
        v173 += 2;
        LODWORD(a8.f64[0]) = *&v113[v172];
        a8 = vmovl_u16(*&vmovl_u8(*&a8.f64[0]));
        v176 = vand_s8(*&vextq_s8(a8, a8, 8uLL), 0xFF000000FFLL);
        v177.i64[0] = v176.u32[0];
        v177.i64[1] = v176.u32[1];
        a9 = vcvtq_f64_u64(v177);
        *&a8.f64[0] = vand_s8(*&a8.f64[0], 0xFF000000FFLL);
        v177.i64[0] = LODWORD(a8.f64[0]);
        v177.i64[1] = HIDWORD(a8.f64[0]);
        v179 = *v170;
        v178 = v170[1];
        v170 += 2;
        a7 = vmulq_f64(v175, vsubq_f64(a9, v178));
        a9.f64[0] = a7.f64[1];
        v180 = vmulq_f64(v174, vsubq_f64(vcvtq_f64_u64(v177), v179));
        HIDWORD(a8.f64[0]) = HIDWORD(v180.f64[1]);
        v118 = v118 + v180.f64[0] + v180.f64[1] + a7.f64[0] + a7.f64[1];
        v172 += 4;
        v171 += 4;
      }

      while (v171);
      v12 = v471;
      v17 = v472;
      if (v133 != (v133 & 0x1FFFFFFFCLL))
      {
        goto LABEL_80;
      }

LABEL_57:
      a4.f64[0] = v118 * v474;
      *(v35 + 8 * v115++) = v118 * v474;
      v114 += v12;
      v113 += v12;
    }

    while (v115 != v36);
    v35 += 8 * v460;
    ++v19;
    v9 = &v39[v12];
    v38 = (v38 + 8 * v13);
    v37 += v12;
    v33 = v503;
    if (v19 != v36)
    {
      continue;
    }

    return result;
  }
}

_BYTE *sub_10024B1C4(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, __n128 a6, float64x2_t a7, __n128 a8)
{
  v8 = a1[2];
  v9 = *(a2 + 16);
  v10 = *(a3 + 16);
  v11 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a3 + 80) >> 2;
  }

  v13 = a1[8];
  v14 = v13[1];
  v15 = *v13;
  if (v10)
  {
    v16 = *(a3 + 12) < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  v18 = 20 * v15;
  if (!v16)
  {
    v18 = 4 * v15;
  }

  result = v127;
  if (v18 >= 0x409)
  {
    operator new[]();
  }

  v20 = v11 >> 1;
  v21 = *(a2 + 80) >> 2;
  if ((v17 & 1) == 0)
  {
    v22 = &v127[4 * v15];
    if (v15 < 1)
    {
      goto LABEL_36;
    }

    v23 = v15 >= 8 && v12 == 1;
    if (v23 && (v22 < (v10 + 4 * v15) ? (v24 = v10 >= &v127[16 * v15 + 4 * v15]) : (v24 = 1), v24))
    {
      v25 = v15 & 0x7FFFFFF8;
      f32 = v22[4].f32;
      v27 = v10 + 1;
      v28 = v25;
      do
      {
        v29 = v27[-1];
        a8 = *v27;
        v30 = v29;
        a6 = v29;
        v31 = v29;
        v32 = *v27;
        v33 = *v27;
        v34 = *v27;
        v35 = f32 - 16;
        vst4q_f32(v35, *(&a6 - 2));
        vst4q_f32(f32, *a8.n128_u64);
        f32 += 32;
        v27 += 2;
        v28 -= 8;
      }

      while (v28);
      if (v25 == v15)
      {
LABEL_36:
        v12 = 4 * (v12 != 0);
        v10 = &v127[4 * v15];
        if (v14 < 1)
        {
          return result;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v25 = 0;
    }

    v36 = &v127[16 * v25 + 4 * v15];
    v37 = v10 + v12 * v25;
    v39 = v15 - v25;
    do
    {
      v40 = vld1q_dup_f32(v37);
      v38 = 4 * v12;
      v37 = (v37 + v38);
      *v36++ = v40;
      --v39;
    }

    while (v39);
    goto LABEL_36;
  }

  if (!v10)
  {
    if (v14 < 1)
    {
      return result;
    }

    v85 = 0;
    v86 = v14 - 4;
    v87 = a4 * 0.0;
    *&v87 = a4 * 0.0;
    v88 = vdupq_lane_s32(*&v87, 0);
    v89 = 2 * v20;
    v90 = 4 * v21;
    for (i = v8; ; ++i)
    {
      if (v15 < 1)
      {
        goto LABEL_81;
      }

      v92 = v15 & 0x7FFFFFFE;
      v93 = &v128;
      v94 = i;
      if (v15 == 1)
      {
        break;
      }

      do
      {
        a6.n128_u16[0] = *v94;
        a6.n128_f32[0] = a6.n128_u32[0];
        LOWORD(a7.f64[0]) = v94[v20];
        *a7.f64 = LODWORD(a7.f64[0]);
        *(v93 - 1) = a6.n128_u32[0];
        *v93 = LODWORD(a7.f64[0]);
        v94 += 2 * v20;
        v93 += 2;
        v92 -= 2;
      }

      while (v92);
      v95 = v15 & 0x7FFFFFFE;
      if (v95 != v15)
      {
        goto LABEL_79;
      }

LABEL_81:
      LODWORD(v99) = v85;
      v100 = i;
      v101 = v85;
      if (v85 <= v86)
      {
        do
        {
          a6 = v88;
          if (v15 >= 1)
          {
            v109 = 0uLL;
            v110 = v100;
            v111 = v15;
            v112 = v127;
            v113 = 0uLL;
            do
            {
              v114 = *v112++;
              v115 = vmovl_u16(*v110);
              v116.i64[0] = v115.u32[0];
              v116.i64[1] = v115.u32[1];
              v117 = vcvtq_f64_u64(v116);
              v116.i64[0] = v115.u32[2];
              v116.i64[1] = v115.u32[3];
              v113 = vmlaq_n_f64(v113, vcvtq_f64_u64(v116), v114);
              v109 = vmlaq_n_f64(v109, v117, v114);
              v110 = (v110 + v89);
              --v111;
            }

            while (v111);
            a8.n128_f64[0] = a4;
            a7 = vmulq_n_f64(v113, a4);
            a6 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v109, a4)), a7);
          }

          *(v9 + 4 * v101) = a6;
          v99 = v101 + 4;
          ++v100;
          v101 = v99;
        }

        while (v86 >= v99);
      }

      if (v99 >= v14)
      {
        goto LABEL_73;
      }

      v102 = v99;
      if (v15 >= 1)
      {
        v103 = &v8[v99];
        do
        {
          v104 = 0.0;
          v105 = v103;
          v106 = v15;
          v107 = v127;
          do
          {
            v108 = *v107++;
            a8.n128_u16[0] = *v105;
            a8.n128_f64[0] = a8.n128_u64[0];
            v104 = v104 + v108 * a8.n128_f64[0];
            v105 = (v105 + v89);
            --v106;
          }

          while (v106);
          WORD1(a7.f64[0]) = WORD1(a4);
          a6.n128_f32[0] = v104 * a4;
          *(v9 + 4 * v102++) = a6.n128_u32[0];
          ++v103;
        }

        while (v14 > v102);
        goto LABEL_73;
      }

      v118 = (v14 + ~v99);
      if (v118 > 6)
      {
        v120 = v118 + 1;
        v121 = (v118 + 1) & 0x1FFFFFFF8;
        v119 = v121 + v102;
        v122 = 4 * v102;
        v123 = v121;
        do
        {
          v124 = (v9 + v122);
          *v124 = v88;
          v124[1] = v88;
          v122 += 32;
          v123 -= 8;
        }

        while (v123);
        if (v120 == v121)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v119 = v99;
      }

      v125 = 4 * v119;
      do
      {
        *(v9 + v125) = LODWORD(v87);
        v125 += 4;
        LODWORD(v119) = v119 + 1;
      }

      while (v14 > v119);
LABEL_73:
      ++v85;
      v9 += v90;
      if (v85 == v14)
      {
        return result;
      }
    }

    v95 = 0;
LABEL_79:
    v96 = &v127[4 * v95];
    v97 = v89 * v95;
    v98 = v15 - v95;
    do
    {
      a6.n128_u16[0] = *(i + v97);
      a6.n128_f32[0] = a6.n128_u32[0];
      *v96++ = a6.n128_u32[0];
      v97 += v89;
      --v98;
    }

    while (v98);
    goto LABEL_81;
  }

  v22 = 0;
  if (v14 >= 1)
  {
LABEL_37:
    v41 = 0;
    v42 = v14 - 4;
    v43 = a4 * 0.0;
    *&v43 = a4 * 0.0;
    v44 = 4 * v12;
    v45 = vdupq_lane_s32(*&v43, 0);
    v46 = 2 * v20;
    v47 = 4 * v21;
    v48 = v10;
    v49 = v8;
    do
    {
      if (v22)
      {
        v50 = v15;
        v51 = v49;
        v52 = v22;
        v53 = v127;
        if (v15 >= 1)
        {
          do
          {
            a6.n128_u16[0] = *v51;
            a6.n128_f32[0] = a6.n128_u32[0] - *v52;
            *v53++ = a6.n128_u32[0];
            v52 = (v52 + v44);
            v51 = (v51 + v46);
            --v50;
          }

          while (v50);
        }
      }

      else if (v15 >= 1)
      {
        v54 = v15;
        v55 = v49;
        v56 = v48;
        v57 = v127;
        do
        {
          a6.n128_u16[0] = *v55;
          a6.n128_f32[0] = a6.n128_u32[0] - *v56;
          *v57++ = a6.n128_u32[0];
          v56 = (v56 + v44);
          v55 = (v55 + v46);
          --v54;
        }

        while (v54);
      }

      LODWORD(v58) = v41;
      v59 = v49;
      v60 = v41;
      if (v41 <= v42)
      {
        do
        {
          a6 = v45;
          if (v15 >= 1)
          {
            v69 = (v10 + 4 * v60);
            if (v22)
            {
              v69 = v22;
            }

            v70 = 0uLL;
            v71 = v59;
            v72 = v15;
            v73 = v127;
            v74 = 0uLL;
            do
            {
              v75 = *v73++;
              v76 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v71)), *v69);
              v74 = vmlaq_n_f64(v74, vcvt_hight_f64_f32(v76), v75);
              v70 = vmlaq_n_f64(v70, vcvtq_f64_f32(*v76.f32), v75);
              v69 = (v69 + v44);
              v71 = (v71 + v46);
              --v72;
            }

            while (v72);
            a8.n128_u16[1] = WORD1(a4);
            a6 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v70, a4)), vmulq_n_f64(v74, a4));
          }

          *(v9 + 4 * v60) = a6;
          v58 = v60 + 4;
          ++v59;
          v60 = v58;
        }

        while (v42 >= v58);
      }

      if (v58 >= v14)
      {
        goto LABEL_38;
      }

      v61 = v58;
      if (v15 >= 1)
      {
        v62 = &v8[v58];
        do
        {
          v63 = v10 + v61;
          if (v22)
          {
            v63 = v22;
          }

          v64 = 0.0;
          v65 = v62;
          v66 = v15;
          v67 = v127;
          do
          {
            v68 = *v67++;
            a8.n128_u16[0] = *v65;
            a8.n128_f64[0] = (a8.n128_u32[0] - *v63);
            v64 = v64 + v68 * a8.n128_f64[0];
            v63 = (v63 + v44);
            v65 = (v65 + v46);
            --v66;
          }

          while (v66);
          a6.n128_f32[0] = v64 * a4;
          *(v9 + 4 * v61++) = a6.n128_u32[0];
          ++v62;
        }

        while (v14 > v61);
        goto LABEL_38;
      }

      v77 = (v14 + ~v58);
      if (v77 > 6)
      {
        v79 = v77 + 1;
        v80 = (v77 + 1) & 0x1FFFFFFF8;
        v78 = v80 + v61;
        v81 = 4 * v61;
        v82 = v80;
        do
        {
          v83 = (v9 + v81);
          *v83 = v45;
          v83[1] = v45;
          v81 += 32;
          v82 -= 8;
        }

        while (v82);
        if (v79 == v80)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v78 = v58;
      }

      v84 = 4 * v78;
      do
      {
        *(v9 + v84) = LODWORD(v43);
        v84 += 4;
        LODWORD(v78) = v78 + 1;
      }

      while (v14 > v78);
LABEL_38:
      ++v41;
      v9 += v47;
      ++v49;
      ++v48;
    }

    while (v41 != v14);
  }

  return result;
}

void sub_10024B874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024B8A4(uint64_t result, uint64_t a2, uint64_t a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, double a9)
{
  v9 = *(result + 16);
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  v12 = *(result + 80) >> 1;
  v256 = *(a2 + 80) >> 2;
  if (*(a3 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 80) >> 2;
  }

  v14 = *(result + 64);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[1];
  if (v11)
  {
    v18 = *(a3 + 12);
    result = v260;
    if ((4 * v16) >= 0x409)
    {
      operator new[]();
    }

    if (v15 >= 1)
    {
      v19 = 0;
      v255 = 4 * v13;
      v254 = v16 & 0x7FFFFFF0;
      v20 = (v9 + 8);
      v21 = 2 * v12;
      v259 = v11 + 2;
      v253 = v16 & 0x7FFFFFFC;
      v22 = 32 * ((v16 >> 4) & 0x7FFFFFF);
      v23 = v9 + 2;
      v24 = *(a3 + 16);
      do
      {
        if (v18 >= v17)
        {
          if (v17 >= 1)
          {
            v26 = 0;
            if (v17 >= 4 && (v260 - v11 + -4 * v13 * v19) >= 0x40)
            {
              if (v17 >= 0x10)
              {
                v38 = v259;
                v39 = v262;
                v40 = v20;
                v41 = v16 & 0x7FFFFFF0;
                do
                {
                  v42 = *v40[-2].i8;
                  v43 = vcvtq_f32_u32(vmovl_high_u16(v42));
                  v45 = v38[-2];
                  v44 = v38[-1];
                  v47 = *v38;
                  v46 = v38[1];
                  v38 += 4;
                  a5 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v42.i8)), v45);
                  a7 = vsubq_f32(v43, v44);
                  a6 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v40)), v47);
                  a8 = vsubq_f32(vcvtq_f32_u32(vmovl_high_u16(*v40->i8)), v46);
                  v39[-2] = a5;
                  v39[-1] = a7;
                  *v39 = a6;
                  v39[1] = a8;
                  v39 += 4;
                  v40 += 4;
                  v41 -= 16;
                }

                while (v41);
                if (v254 == v16)
                {
                  goto LABEL_38;
                }

                v26 = v16 & 0x7FFFFFF0;
                v27 = v26;
                if ((v16 & 0xC) != 0)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v27 = 0;
LABEL_34:
                v48 = &v9[v27];
                v49 = (v24 + 4 * v27);
                v50 = &v260[v27];
                v51 = v27 - (v16 & 0x7FFFFFFC);
                do
                {
                  v52 = *v48++;
                  v53 = vcvtq_f32_u32(vmovl_u16(v52));
                  v54 = *v49++;
                  a6.i16[1] = v54.i16[1];
                  a5 = vsubq_f32(v53, v54);
                  *v50++ = a5;
                  v51 += 4;
                }

                while (v51);
                v26 = v16 & 0x7FFFFFFC;
                if (v253 == v16)
                {
                  goto LABEL_38;
                }
              }
            }

            do
            {
              a5.i16[0] = v9[v26];
              a6.i32[0] = *(v24 + 4 * v26);
              a5.f32[0] = a5.u32[0] - a6.f32[0];
              v260[v26++] = a5.i32[0];
            }

            while (v16 != v26);
          }
        }

        else if (v16 >= 1)
        {
          a5.i32[0] = v11->i32[v13 * v19];
          if (v16 < 4)
          {
            v25 = 0;
            do
            {
LABEL_28:
              a6.i16[0] = v9[v25];
              a6.f32[0] = a6.u32[0] - a5.f32[0];
              v260[v25++] = a6.i32[0];
            }

            while (v16 != v25);
            goto LABEL_38;
          }

          if (v16 >= 0x10)
          {
            v29 = 0;
            a6 = vdupq_lane_s32(*a5.f32, 0);
            v30 = v262;
            do
            {
              v31 = *&v9[v29 / 2];
              v32 = *v20[v29 / 8].i8;
              v33 = vcvtq_f32_u32(vmovl_high_u16(v31));
              v34 = vcvtq_f32_u32(vmovl_high_u16(v32));
              a7 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v31.i8)), a6);
              a8 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v32.i8)), a6);
              v30[-2] = a7;
              v30[-1] = vsubq_f32(v33, a6);
              *v30 = a8;
              v30[1] = vsubq_f32(v34, a6);
              v30 += 4;
              v29 += 32;
            }

            while (v22 != v29);
            if (v254 == v16)
            {
              goto LABEL_38;
            }

            v25 = v16 & 0x7FFFFFF0;
            v28 = v25;
            if ((v16 & 0xC) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v28 = 0;
          }

          a6 = vdupq_lane_s32(*a5.f32, 0);
          v35 = v28;
          v36 = v28 - (v16 & 0x7FFFFFFC);
          v37 = &v260[v28];
          do
          {
            a7 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&v9[v35])), a6);
            *v37++ = a7;
            v35 += 4;
            v36 += 4;
          }

          while (v36);
          v25 = v16 & 0x7FFFFFFC;
          if (v253 == v16)
          {
            goto LABEL_38;
          }

          goto LABEL_28;
        }

LABEL_38:
        v55 = v9;
        v56 = v20;
        v257 = v23;
        v258 = v19;
        v57 = v19;
        do
        {
          v58 = &v11->f32[v13 * v57];
          if (v18 < v16)
          {
            v59 = vld1q_dup_f32(v58);
            v263 = v59;
            v58 = &v263;
          }

          if (v17 >= 4)
          {
            v62 = 0;
            v63 = (v58 + 2);
            v61 = 0.0;
            v64 = v23;
            v65 = &v261;
            do
            {
              a8.i16[0] = *(v64 - 2);
              v66 = *(v63 - 2);
              v67 = a8.u32[0] - v66;
              LOWORD(v66) = *(v64 - 1);
              v68 = *(v65 - 1) * (LODWORD(v66) - *(v63 - 1));
              v69 = v68 + *(v65 - 2) * v67;
              LOWORD(v68) = *v64;
              v70 = *v65;
              v71 = v65[1];
              v65 += 4;
              v72 = v70;
              v73 = v69 + v72 * (LODWORD(v68) - *v63);
              *a7.i64 = v71;
              LOWORD(v72) = v64[1];
              *a8.i64 = (LODWORD(v72) - v63[1]);
              *a6.i64 = v73 + v71 * *a8.i64;
              v62 += 4;
              v61 = v61 + *a6.i64;
              v63 += 4 * (v18 == v16);
              v64 += 4;
            }

            while (v62 <= v16 - 4);
            v58 = (v58 + 16 * (v18 == v16) * (((v16 - 4) >> 2) + 1));
            v60 = ((v16 - 4) & 0xFFFFFFFC) + 4;
            if (v60 >= v17)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v60 = 0;
            v61 = 0.0;
            if (v17 <= 0)
            {
              goto LABEL_39;
            }
          }

          v74 = v60;
          v75 = (v16 + ~v60);
          if (v75 < 3)
          {
            v76 = v74;
            v77 = v58;
            goto LABEL_61;
          }

          v78 = v75 + 1;
          if (v75 >= 0xF)
          {
            v79 = v78 & 0x1FFFFFFF0;
            v80 = (v56 + 2 * v74);
            v81 = (v58 + 8);
            v82 = &v262[v74];
            v83 = v78 & 0x1FFFFFFF0;
            do
            {
              v85 = v82[-2];
              v84 = v82[-1];
              v87 = *v82;
              v86 = v82[1];
              v82 += 4;
              v88 = vcvtq_f64_f32(*v85.f32);
              v89 = vcvtq_f64_f32(*v84.f32);
              v90 = vcvtq_f64_f32(*v87.f32);
              v91 = vcvtq_f64_f32(*v86.f32);
              v92 = v80[-1];
              v93 = vcvtq_f32_u32(vmovl_u16(*v92.i8));
              v94 = v81[-2];
              v95 = v81[-1];
              v96 = *v81;
              v97 = v81[1];
              v81 += 4;
              v98 = vsubq_f32(vcvtq_f32_u32(vmovl_high_u16(v92)), v95);
              v99 = vsubq_f32(v93, v94);
              v100 = vsubq_f32(vcvtq_f32_u32(vmovl_high_u16(*v80)), v97);
              v101 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v80->i8)), v96);
              a6 = vmulq_f64(vcvt_hight_f64_f32(v84), vcvt_hight_f64_f32(v98));
              v102 = vmulq_f64(v89, vcvtq_f64_f32(*v98.f32));
              a7 = vmulq_f64(vcvt_hight_f64_f32(v85), vcvt_hight_f64_f32(v99));
              v103 = vmulq_f64(v88, vcvtq_f64_f32(*v99.f32));
              a8 = vmulq_f64(vcvt_hight_f64_f32(v86), vcvt_hight_f64_f32(v100));
              v104 = vmulq_f64(v91, vcvtq_f64_f32(*v100.f32));
              v105 = vmulq_f64(vcvt_hight_f64_f32(v87), vcvt_hight_f64_f32(v101));
              v106 = vmulq_f64(v90, vcvtq_f64_f32(*v101.f32));
              v61 = v61 + v103.f64[0] + v103.f64[1] + *a7.i64 + *&a7.i64[1] + v102.f64[0] + v102.f64[1] + *a6.i64 + *&a6.i64[1] + v106.f64[0] + v106.f64[1] + v105.f64[0] + v105.f64[1] + v104.f64[0] + v104.f64[1] + *a8.i64 + *&a8.i64[1];
              v80 += 2;
              v83 -= 16;
            }

            while (v83);
            if (v78 == v79)
            {
              goto LABEL_39;
            }

            if ((v78 & 0xC) == 0)
            {
              v77 = &v58[v79];
              v76 = v79 + v74;
              do
              {
LABEL_61:
                *a6.i64 = *&v260[v76];
                a7.i16[0] = v55[v76];
                v118 = *v77++;
                a8.i16[1] = HIWORD(v118);
                *a7.i64 = (a7.u32[0] - v118);
                v61 = v61 + *a6.i64 * *a7.i64;
                ++v76;
              }

              while (v17 > v76);
              goto LABEL_39;
            }
          }

          else
          {
            v79 = 0;
          }

          v77 = &v58[v78 & 0x1FFFFFFFCLL];
          v76 = (v78 & 0x1FFFFFFFCLL) + v74;
          v107 = &v58[v79];
          v108 = v79 - (v78 & 0x1FFFFFFFCLL);
          v109 = v79 + v74;
          v110 = &v260[v109];
          v111 = &v55[v109];
          do
          {
            v112 = *v110++;
            v113 = vcvtq_f64_f32(*v112.f32);
            v114 = vcvt_hight_f64_f32(v112);
            v112.i64[0] = *v111++;
            v115 = vcvtq_f32_u32(vmovl_u16(*v112.f32));
            v116 = *v107++;
            a8 = vsubq_f32(v115, v116);
            v117 = vcvtq_f64_f32(*a8.f32);
            a6 = vmulq_f64(v114, vcvt_hight_f64_f32(a8));
            a8.i16[1] = a6.i16[5];
            a7 = vmulq_f64(v113, v117);
            v61 = v61 + *a7.i64 + *&a7.i64[1] + *a6.i64 + *&a6.i64[1];
            v108 += 4;
          }

          while (v108);
          if (v78 != (v78 & 0x1FFFFFFFCLL))
          {
            goto LABEL_61;
          }

LABEL_39:
          *a5.i64 = v61 * a4;
          a5.f32[0] = *a5.i64;
          v10->i32[v57++] = a5.i32[0];
          v23 = (v23 + v21);
          v56 = (v56 + v21);
          v55 = (v55 + v21);
        }

        while (v57 != v15);
        v19 = v258 + 1;
        v10 = (v10 + 4 * v256);
        v20 = (v20 + v21);
        v22 = 32 * ((v16 >> 4) & 0x7FFFFFF);
        v259 = (v259 + v255);
        v9 = (v9 + v21);
        v24 += v255;
        v23 = &v257[v21 / 2];
      }

      while (v258 + 1 != v15);
    }
  }

  else if (v15 >= 1)
  {
    if (v17 >= 4)
    {
      v127 = (v16 - 4);
      v128 = (v127 & 0xFFFFFFFC) + 4;
      if (v127 >= 0x1C)
      {
        v151 = 0;
        v152 = (v127 >> 2) + 1;
        v153 = 2 * v12;
        do
        {
          v154 = v9;
          result = v151;
          do
          {
            v156 = 0.0;
            v157 = v152 & 0x3FFFFFF8;
            v158 = v154;
            v159 = v9;
            do
            {
              v264 = vld4q_s16(v159);
              v159 += 32;
              v160 = vmovl_u16(*v264.val[0].i8);
              v265 = vld4q_s16(v158);
              v158 += 32;
              v161.i64[0] = v160.u32[0];
              v161.i64[1] = v160.u32[1];
              v162 = vcvtq_f64_u64(v161);
              v161.i64[0] = v160.u32[2];
              v161.i64[1] = v160.u32[3];
              v163 = v161;
              v164 = vmovl_high_u16(v264.val[0]);
              v161.i64[0] = v164.u32[0];
              v161.i64[1] = v164.u32[1];
              v165 = vcvtq_f64_u64(v163);
              v166 = vcvtq_f64_u64(v161);
              v161.i64[0] = v164.u32[2];
              v161.i64[1] = v164.u32[3];
              v167 = vcvtq_f64_u64(v161);
              v168 = vmovl_u16(*v265.val[0].i8);
              v161.i64[0] = v168.u32[0];
              v161.i64[1] = v168.u32[1];
              v169 = vcvtq_f64_u64(v161);
              v161.i64[0] = v168.u32[2];
              v161.i64[1] = v168.u32[3];
              v170 = vcvtq_f64_u64(v161);
              v171 = vmovl_high_u16(v265.val[0]);
              v161.i64[0] = v171.u32[0];
              v161.i64[1] = v171.u32[1];
              v172 = v161;
              v161.i64[0] = v171.u32[2];
              v161.i64[1] = v171.u32[3];
              v173 = vcvtq_f64_u64(v172);
              v174 = vcvtq_f64_u64(v161);
              v175 = vmovl_high_u16(v264.val[1]);
              v161.i64[0] = v175.u32[2];
              v161.i64[1] = v175.u32[3];
              v176 = vcvtq_f64_u64(v161);
              v161.i64[0] = v175.u32[0];
              v161.i64[1] = v175.u32[1];
              v177 = vcvtq_f64_u64(v161);
              v178 = vmovl_u16(*v264.val[1].i8);
              v161.i64[0] = v178.u32[2];
              v161.i64[1] = v178.u32[3];
              v179 = vcvtq_f64_u64(v161);
              v161.i64[0] = v178.u32[0];
              v161.i64[1] = v178.u32[1];
              v180 = vmovl_high_u16(v265.val[1]);
              v181 = vcvtq_f64_u64(v161);
              v161.i64[0] = v180.u32[2];
              v161.i64[1] = v180.u32[3];
              v182 = vcvtq_f64_u64(v161);
              v161.i64[0] = v180.u32[0];
              v161.i64[1] = v180.u32[1];
              v183 = v161;
              v184 = vmovl_u16(*v265.val[1].i8);
              v161.i64[0] = v184.u32[2];
              v161.i64[1] = v184.u32[3];
              v185 = vcvtq_f64_u64(v183);
              v186 = vcvtq_f64_u64(v161);
              v161.i64[0] = v184.u32[0];
              v161.i64[1] = v184.u32[1];
              v187 = vmulq_f64(v181, vcvtq_f64_u64(v161));
              v188 = vmulq_f64(v177, v185);
              v189 = vmulq_f64(v176, v182);
              v190 = vmovl_high_u16(v264.val[2]);
              v161.i64[0] = v190.u32[2];
              v161.i64[1] = v190.u32[3];
              v191 = vcvtq_f64_u64(v161);
              v161.i64[0] = v190.u32[0];
              v161.i64[1] = v190.u32[1];
              v192 = vmlaq_f64(v189, v174, v167);
              v193 = vcvtq_f64_u64(v161);
              v194 = vmovl_u16(*v264.val[2].i8);
              v161.i64[0] = v194.u32[2];
              v161.i64[1] = v194.u32[3];
              v195 = vcvtq_f64_u64(v161);
              v161.i64[0] = v194.u32[0];
              v161.i64[1] = v194.u32[1];
              v196 = vmlaq_f64(v188, v173, v166);
              v197 = vcvtq_f64_u64(v161);
              v198 = vmovl_high_u16(v265.val[2]);
              v161.i64[0] = v198.u32[2];
              v161.i64[1] = v198.u32[3];
              v199 = vcvtq_f64_u64(v161);
              v161.i64[0] = v198.u32[0];
              v161.i64[1] = v198.u32[1];
              v200 = vmlaq_f64(v187, v169, v162);
              v201 = vcvtq_f64_u64(v161);
              v202 = vmovl_u16(*v265.val[2].i8);
              v161.i64[0] = v202.u32[2];
              v161.i64[1] = v202.u32[3];
              v203 = vcvtq_f64_u64(v161);
              v161.i64[0] = v202.u32[0];
              v161.i64[1] = v202.u32[1];
              v204 = vmlaq_f64(vmulq_f64(v179, v186), v170, v165);
              v205 = vcvtq_f64_u64(v161);
              v206 = vmovl_u16(*v264.val[3].i8);
              v161.i64[0] = v206.u32[0];
              v161.i64[1] = v206.u32[1];
              v207 = vcvtq_f64_u64(v161);
              v161.i64[0] = v206.u32[2];
              v161.i64[1] = v206.u32[3];
              v208 = vmlaq_f64(v200, v205, v197);
              v209 = vcvtq_f64_u64(v161);
              v264.val[0] = vmovl_high_u16(v264.val[3]);
              v161.i64[0] = v264.val[0].u32[0];
              v161.i64[1] = v264.val[0].u32[1];
              v264.val[1] = vcvtq_f64_u64(v161);
              v161.i64[0] = v264.val[0].u32[2];
              v161.i64[1] = v264.val[0].u32[3];
              v264.val[0] = vcvtq_f64_u64(v161);
              v264.val[2] = vmovl_u16(*v265.val[3].i8);
              v161.i64[0] = v264.val[2].u32[0];
              v161.i64[1] = v264.val[2].u32[1];
              v210 = vcvtq_f64_u64(v161);
              v161.i64[0] = v264.val[2].u32[2];
              v161.i64[1] = v264.val[2].u32[3];
              v264.val[2] = vcvtq_f64_u64(v161);
              v265.val[0] = vmovl_high_u16(v265.val[3]);
              v161.i64[0] = v265.val[0].u32[0];
              v161.i64[1] = v265.val[0].u32[1];
              v265.val[1] = vcvtq_f64_u64(v161);
              v161.i64[0] = v265.val[0].u32[2];
              v161.i64[1] = v265.val[0].u32[3];
              v211 = vmlaq_f64(vmlaq_f64(v192, v199, v191), vcvtq_f64_u64(v161), v264.val[0]);
              v212 = v211.f64[1];
              v213 = vmlaq_f64(vmlaq_f64(v196, v201, v193), v265.val[1], v264.val[1]);
              v214 = vmlaq_f64(vmlaq_f64(v204, v203, v195), v264.val[2], v209);
              v215 = v214.f64[1];
              v216 = vmlaq_f64(v208, v210, v207);
              v217 = v213.f64[1];
              v156 = v156 + v216.f64[0] + v216.f64[1] + v214.f64[0] + v214.f64[1] + v213.f64[0] + v213.f64[1] + v211.f64[0] + v211.f64[1];
              v157 -= 8;
            }

            while (v157);
            v218 = (((v152 >> 3) & 0x7FFFFFF) << 6) | 4;
            v219 = 4 * (v152 & 0x3FFFFFF8);
            if (v152 != (v152 & 0x3FFFFFF8))
            {
              do
              {
                LOWORD(v212) = *(v9 + v218 - 4);
                LOWORD(v215) = *(v154 + v218 - 4);
                *&v220 = *&v215;
                LOWORD(v217) = *(v9 + v218 - 2);
                LOWORD(v210.f64[0]) = *(v154 + v218 - 2);
                v210.f64[0] = *&v210.f64[0];
                *&v221 = *&v217 * v210.f64[0];
                v222 = *&v221 + *&v212 * *&v220;
                LOWORD(v220) = *(v9 + v218);
                *&v223 = v220;
                LOWORD(v221) = *(v154 + v218);
                *&v224 = v221;
                v225 = v222 + *&v223 * *&v224;
                LOWORD(v223) = *(v9 + v218 + 2);
                LOWORD(v224) = *(v154 + v218 + 2);
                v215 = v223;
                v217 = v224;
                v212 = v225 + v215 * v217;
                v156 = v156 + v212;
                v219 += 4;
                v218 += 8;
              }

              while (v219 <= v127);
            }

            v226 = (v127 & 0xFFFFFFFC) + 4;
            v227 = v128;
            if (v128 < v17)
            {
              do
              {
                LOWORD(v212) = v9[v227];
                LOWORD(v215) = v154[v227];
                v212 = *&v212;
                v215 = *&v215;
                v156 = v156 + v212 * v215;
                ++v227;
                ++v226;
              }

              while (v17 > v226);
            }

            *&v155 = v156 * a4;
            v10->i32[result++] = v155;
            v154 = (v154 + v153);
          }

          while (result != v15);
          ++v151;
          v10 = (v10 + 4 * v256);
          v9 = (v9 + v153);
        }

        while (v151 != v15);
      }

      else if (v128 >= v16)
      {
        v237 = 0;
        v238 = v9 + 2;
        v239 = 2 * v12;
        do
        {
          v240 = v238;
          v241 = v237;
          do
          {
            v242 = 0;
            v243 = 0.0;
            v244 = v238;
            v245 = v240;
            do
            {
              a6.i16[0] = *(v244 - 2);
              a7.i16[0] = *(v245 - 2);
              *&v246 = a7.u64[0];
              a8.i16[0] = *(v244 - 1);
              LOWORD(a9) = *(v245 - 1);
              a9 = *&a9;
              *&v247 = a8.u64[0] * a9;
              v248 = *&v247 + a6.u64[0] * *&v246;
              LOWORD(v246) = *v244;
              LOWORD(v247) = *v245;
              *&v249 = v246;
              *&v250 = v247;
              v251 = v248 + *&v249 * *&v250;
              LOWORD(v249) = v244[1];
              *a7.i64 = v249;
              LOWORD(v250) = v245[1];
              *a8.i64 = v250;
              *a6.i64 = v251 + *a7.i64 * *a8.i64;
              v243 = v243 + *a6.i64;
              v242 += 4;
              v245 += 4;
              v244 += 4;
            }

            while (v242 <= v127);
            *&v252 = v243 * a4;
            v10->i32[v241++] = v252;
            v240 = (v240 + v239);
          }

          while (v241 != v15);
          ++v237;
          v10 = (v10 + 4 * v256);
          v238 = (v238 + v239);
        }

        while (v237 != v15);
      }

      else
      {
        v129 = 0;
        v130 = v9 + 2;
        v131 = 2 * v12;
        v132 = &v9[v128];
        do
        {
          v133 = v132;
          v134 = v130;
          v135 = v129;
          do
          {
            v136 = 0;
            v137 = 0.0;
            v138 = v130;
            v139 = v134;
            do
            {
              a6.i16[0] = *(v138 - 2);
              a7.i16[0] = *(v139 - 2);
              *&v140 = a7.u64[0];
              a8.i16[0] = *(v138 - 1);
              LOWORD(a9) = *(v139 - 1);
              a9 = *&a9;
              *&v141 = a8.u64[0] * a9;
              v142 = *&v141 + a6.u64[0] * *&v140;
              LOWORD(v140) = *v138;
              LOWORD(v141) = *v139;
              *&v143 = v140;
              *&v144 = v141;
              v145 = v142 + *&v143 * *&v144;
              LOWORD(v143) = v138[1];
              *a7.i64 = v143;
              LOWORD(v144) = v139[1];
              *a8.i64 = v144;
              *a6.i64 = v145 + *a7.i64 * *a8.i64;
              v137 = v137 + *a6.i64;
              v136 += 4;
              v139 += 4;
              v138 += 4;
            }

            while (v136 <= v127);
            v146 = v132;
            result = v133;
            v147 = (v127 & 0xFFFFFFFC) + 4;
            do
            {
              v148 = *v146++;
              *a6.i64 = v148;
              v149 = *result;
              result += 2;
              *a7.i64 = v149;
              v137 = v137 + *a6.i64 * v149;
              ++v147;
            }

            while (v17 > v147);
            *&v150 = v137 * a4;
            v10->i32[v135++] = v150;
            v134 = (v134 + v131);
            v133 += v131;
          }

          while (v135 != v15);
          ++v129;
          v10 = (v10 + 4 * v256);
          v130 = (v130 + v131);
          v132 = (v132 + v131);
        }

        while (v129 != v15);
      }
    }

    else if (v16 <= 0)
    {
      v228 = 0;
      v229 = a4 * 0.0;
      *&v229 = v229;
      v230 = vdupq_lane_s32(*&v229, 0);
      v231 = v10 + 1;
      v232 = v15;
      do
      {
        v233 = v15 - v228;
        v234 = v228;
        if ((v15 - v228) < 8)
        {
          goto LABEL_112;
        }

        v235 = v232 & 0xFFFFFFFFFFFFFFF8;
        v234 = v228 + (v233 & 0xFFFFFFFFFFFFFFF8);
        v236 = v231;
        do
        {
          v236[-1] = v230;
          *v236 = v230;
          v236 += 2;
          v235 -= 8;
        }

        while (v235);
        if (v233 != (v233 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_112:
          do
          {
            v10->i32[v234++] = LODWORD(v229);
          }

          while (v15 != v234);
        }

        ++v228;
        --v232;
        v231 = (v231 + 4 * v256 + 4);
        v10 = (v10 + 4 * v256);
      }

      while (v228 != v15);
    }

    else
    {
      v119 = 0;
      v120 = v9 + 2;
      v121 = 2 * v12;
      v122 = v15;
      do
      {
        v123 = &v9[v12 * v119];
        a6.i16[0] = *v123;
        *a6.i64 = a6.u64[0];
        v124 = v122;
        v125 = v10;
        v126 = v120;
        do
        {
          a7.i16[0] = *(v126 - 2);
          *a7.i64 = *a6.i64 * a7.u64[0] + 0.0;
          if (v16 != 1)
          {
            a8.i16[0] = v123[1];
            *a8.i64 = a8.u64[0];
            LOWORD(a9) = *(v126 - 1);
            a9 = *&a9;
            *a7.i64 = *a7.i64 + *a8.i64 * a9;
            if (v17 != 2)
            {
              a8.i16[0] = v123[2];
              *a8.i64 = a8.u64[0];
              LOWORD(a9) = *v126;
              a9 = *&a9;
              *a7.i64 = *a7.i64 + *a8.i64 * a9;
            }
          }

          *a7.i64 = *a7.i64 * a4;
          a7.f32[0] = *a7.i64;
          v125->i32[0] = a7.i32[0];
          v125 = (v125 + 4);
          v126 = (v126 + v121);
          --v124;
        }

        while (v124);
        ++v119;
        v120 = (v120 + v121);
        v10 = (v10 + 4 * v256 + 4);
        --v122;
      }

      while (v119 != v15);
    }
  }

  return result;
}

_BYTE *sub_10024C63C(void *a1, uint64_t a2, uint64_t a3, __n128 a4, float64x2_t a5, __n128 a6, double a7, __n128 a8)
{
  v143 = a4.n128_f64[0];
  v8 = a1[2];
  v9 = *(a2 + 16);
  v10 = *(a3 + 16);
  v11 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a3 + 80) >> 3;
  }

  v13 = a1[8];
  v15 = *v13;
  v14 = v13[1];
  if (v10)
  {
    v16 = *(a3 + 12) < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  v18 = 40 * v15;
  if (!v16)
  {
    v18 = 8 * v15;
  }

  result = v144;
  if (v18 >= 0x409)
  {
    operator new[]();
  }

  v20 = v11 >> 1;
  v21 = *(a2 + 80) >> 3;
  if ((v17 & 1) == 0)
  {
    v22 = &v144[8 * v15];
    if (v15 < 1)
    {
      goto LABEL_54;
    }

    v23 = 0;
    if (v15 >= 6 && v12 == 1)
    {
      if (v22 >= &v10->n128_u64[v15] || v10 >= &v144[32 * v15 + 8 * v15])
      {
        v23 = v15 & 0x7FFFFFFC;
        v25 = &v145[8 * v15 + 56];
        v26 = v10 + 1;
        v27 = v23;
        do
        {
          v28 = v26[-1];
          a8 = *v26;
          v29 = v28;
          a6 = v28;
          v30 = v28;
          v31 = *v26;
          v32 = *v26;
          v33 = *v26;
          v34 = v25 - 8;
          vst4q_f64(v34, *(&a6 - 2));
          vst4q_f64(v25, *a8.n128_u64);
          v25 += 16;
          v26 += 2;
          v27 -= 4;
        }

        while (v27);
        if (v23 == v15)
        {
LABEL_54:
          v12 = 4 * (v12 != 0);
          v10 = &v144[8 * v15];
          if (v14 < 1)
          {
            return result;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    v64 = &v144[32 * v23 + 8 * v15];
    v65 = &v10->n128_f64[v12 * v23];
    v67 = v15 - v23;
    do
    {
      v68 = vld1q_dup_f64(v65);
      v66 = 8 * v12;
      v65 = (v65 + v66);
      *v64 = v68;
      v64[1] = v68;
      v64 += 2;
      --v67;
    }

    while (v67);
    goto LABEL_54;
  }

  if (!v10)
  {
    if (v14 < 1)
    {
      return result;
    }

    v35 = v14 - 4;
    if (v15 > 0)
    {
      v36 = 0;
      v37 = 2 * v20;
      for (i = v8; ; ++i)
      {
        v39 = v15 & 0x7FFFFFFE;
        v40 = v145;
        v41 = i;
        if (v15 == 1)
        {
          break;
        }

        do
        {
          a4.n128_u16[0] = *v41;
          a4.n128_f64[0] = a4.n128_u64[0];
          LOWORD(a5.f64[0]) = v41[v20];
          a5.f64[0] = *&a5.f64[0];
          *(v40 - 1) = a4.n128_f64[0];
          *v40 = a5.f64[0];
          v41 += 2 * v20;
          v40 += 2;
          v39 -= 2;
        }

        while (v39);
        v42 = v15 & 0x7FFFFFFE;
        if (v42 != v15)
        {
          goto LABEL_38;
        }

LABEL_40:
        v46 = i;
        v47 = v36;
        if (v36 <= v35)
        {
          do
          {
            v48 = 0uLL;
            v49 = v46;
            v50 = v15;
            v51 = v144;
            v52 = 0uLL;
            do
            {
              v53 = vmovl_u16(*v49);
              v54.i64[0] = v53.u32[0];
              v54.i64[1] = v53.u32[1];
              v55 = vcvtq_f64_u64(v54);
              v56 = vld1q_dup_f64(v51++);
              v54.i64[0] = v53.u32[2];
              v54.i64[1] = v53.u32[3];
              v52 = vmlaq_f64(v52, vcvtq_f64_u64(v54), v56);
              v48 = vmlaq_f64(v48, v55, v56);
              v49 = (v49 + v37);
              --v50;
            }

            while (v50);
            a6.n128_f64[0] = v143;
            a5 = vmulq_n_f64(v52, v143);
            a4 = vmulq_n_f64(v48, v143);
            v57 = &v9->i64[v47];
            *v57 = a4;
            *(v57 + 1) = a5;
            v47 += 4;
            ++v46;
          }

          while (v35 >= v47);
          v47 = v47;
          if (v47 >= v14)
          {
            goto LABEL_33;
          }

LABEL_47:
          v58 = &v8[v47];
          do
          {
            v59 = 0.0;
            v60 = v58;
            v61 = v15;
            v62 = v144;
            do
            {
              v63 = *v62++;
              a6.n128_u16[0] = *v60;
              a6.n128_f64[0] = a6.n128_u64[0];
              v59 = v59 + v63 * a6.n128_f64[0];
              v60 = (v60 + v37);
              --v61;
            }

            while (v61);
            a5.f64[0] = v143;
            a4.n128_f64[0] = v59 * v143;
            v9->i64[v47++] = a4.n128_u64[0];
            ++v58;
          }

          while (v14 > v47);
          goto LABEL_33;
        }

        v47 = v36;
        if (v36 < v14)
        {
          goto LABEL_47;
        }

LABEL_33:
        ++v36;
        v9 = (v9 + 8 * v21);
        if (v36 == v14)
        {
          return result;
        }
      }

      v42 = 0;
LABEL_38:
      v43 = v37 * v42;
      v44 = &v144[8 * v42];
      v45 = v15 - v42;
      do
      {
        a4.n128_u16[0] = *(i + v43);
        a4.n128_f64[0] = a4.n128_u64[0];
        *v44++ = a4.n128_u64[0];
        v43 += v37;
        --v45;
      }

      while (v45);
      goto LABEL_40;
    }

    v116 = 0;
    v117 = a4.n128_f64[0] * 0.0;
    v118 = vdupq_lane_s64(COERCE__INT64(v143 * 0.0), 0);
    v119 = v14 - 3;
    v120 = v9 + 4;
    v121 = 8 * v21;
    v122 = 4;
    for (j = -1; ; --j)
    {
      if (v122 <= v119)
      {
        v124 = v14 - 3;
      }

      else
      {
        v124 = v122;
      }

      v125 = v116 + 4;
      if (v116 + 4 <= v119)
      {
        v125 = v14 - 3;
      }

      if (v116 <= v35)
      {
        v127 = v125 + ~v116;
        v128 = v116;
        if (v127 <= 0xB)
        {
          goto LABEL_102;
        }

        v129 = (((v124 + j) >> 2) + 1) & 0x7FFFFFFC;
        v130 = (v127 >> 2) + 1;
        v128 = v116 + 4 * (v130 & 0x7FFFFFFC);
        v126 = v116;
        v131 = v120;
        do
        {
          v131[-4] = v118;
          v131[-3] = v118;
          v131[-2] = v118;
          v131[-1] = v118;
          *v131 = v118;
          v131[1] = v118;
          v131[2] = v118;
          v131[3] = v118;
          v131 += 8;
          v126 += 16;
          v129 -= 4;
        }

        while (v129);
        if ((v130 & 0x7FFFFFFC) != v130)
        {
LABEL_102:
          v132 = 8 * v128;
          v126 = v128;
          do
          {
            v133 = (v9 + v132);
            *v133 = v118;
            v133[1] = v118;
            v132 += 32;
            v126 += 4;
          }

          while (v35 >= v126);
        }
      }

      else
      {
        v126 = v116;
      }

      if (v126 >= v14)
      {
        goto LABEL_90;
      }

      v134 = v126;
      v135 = (v14 + ~v126);
      if (v135 > 2)
      {
        v137 = v135 + 1;
        v138 = (v135 + 1) & 0x1FFFFFFFCLL;
        v136 = v138 + v134;
        v139 = 8 * v134;
        v140 = v138;
        do
        {
          v141 = (v9 + v139);
          *v141 = v118;
          v141[1] = v118;
          v139 += 32;
          v140 -= 4;
        }

        while (v140);
        if (v137 == v138)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v136 = v134;
      }

      v142 = v136;
      do
      {
        *&v9->i64[v142++] = v117;
        LODWORD(v136) = v136 + 1;
      }

      while (v14 > v136);
LABEL_90:
      ++v116;
      v120 = (v120 + v121 + 8);
      ++v122;
      v9 = (v9 + v121);
      if (v116 == v14)
      {
        return result;
      }
    }
  }

  v22 = 0;
  if (v14 >= 1)
  {
LABEL_55:
    v69 = 0;
    v70 = v14 - 4;
    v71 = 8 * v12;
    v72 = vdupq_lane_s64(COERCE__INT64(v143 * 0.0), 0);
    v73 = 2 * v20;
    v74 = 8 * v21;
    v75 = v10;
    v76 = v8;
    do
    {
      if (v22)
      {
        v77 = v15;
        v78 = v76;
        v79 = v22;
        v80 = v144;
        if (v15 >= 1)
        {
          do
          {
            a6.n128_u16[0] = *v78;
            a6.n128_f64[0] = a6.n128_u64[0] - *v79;
            *v80++ = a6.n128_u64[0];
            v79 = (v79 + v71);
            v78 = (v78 + v73);
            --v77;
          }

          while (v77);
        }
      }

      else if (v15 >= 1)
      {
        v81 = v15;
        v82 = v76;
        v83 = v75;
        v84 = v144;
        do
        {
          a6.n128_u16[0] = *v82;
          a6.n128_f64[0] = a6.n128_u64[0] - *v83;
          *v84++ = a6.n128_u64[0];
          v83 = (v83 + v71);
          v82 = (v82 + v73);
          --v81;
        }

        while (v81);
      }

      LODWORD(v85) = v69;
      v86 = v76;
      v87 = v69;
      if (v69 <= v70)
      {
        do
        {
          a6 = v72;
          v97 = v72;
          if (v15 >= 1)
          {
            v98 = &v10->n128_u64[v87];
            if (v22)
            {
              v98 = v22;
            }

            v99 = 0uLL;
            v100 = v86;
            v101 = v15;
            v102 = v144;
            v103 = 0uLL;
            do
            {
              v104 = vmovl_u16(*v100);
              v105.i64[0] = v104.u32[2];
              v105.i64[1] = v104.u32[3];
              v106 = vcvtq_f64_u64(v105);
              v105.i64[0] = v104.u32[0];
              v105.i64[1] = v104.u32[1];
              v107 = vld1q_dup_f64(v102++);
              v103 = vmlaq_f64(v103, vsubq_f64(v106, v98[1]), v107);
              v99 = vmlaq_f64(v99, vsubq_f64(vcvtq_f64_u64(v105), *v98), v107);
              v98 = (v98 + v71);
              v100 = (v100 + v73);
              --v101;
            }

            while (v101);
            a8.n128_f64[0] = v143;
            a6 = vmulq_n_f64(v99, v143);
            v97 = vmulq_n_f64(v103, v143);
          }

          v96 = &v9->i64[v87];
          *v96 = a6;
          *(v96 + 1) = v97;
          v85 = v87 + 4;
          ++v86;
          v87 = v85;
        }

        while (v70 >= v85);
      }

      if (v85 >= v14)
      {
        goto LABEL_56;
      }

      v88 = v85;
      if (v15 >= 1)
      {
        v89 = &v8[v85];
        do
        {
          v90 = &v10->n128_f64[v88];
          if (v22)
          {
            v90 = v22;
          }

          v91 = 0.0;
          v92 = v89;
          v93 = v15;
          v94 = v144;
          do
          {
            v95 = *v94++;
            a8.n128_u16[0] = *v92;
            a8.n128_f64[0] = a8.n128_u64[0] - *v90;
            v91 = v91 + v95 * a8.n128_f64[0];
            v90 = (v90 + v71);
            v92 = (v92 + v73);
            --v93;
          }

          while (v93);
          a6.n128_f64[0] = v91 * v143;
          v9->i64[v88++] = a6.n128_u64[0];
          ++v89;
        }

        while (v14 > v88);
        goto LABEL_56;
      }

      v108 = (v14 + ~v85);
      if (v108 > 2)
      {
        v110 = v108 + 1;
        v111 = (v108 + 1) & 0x1FFFFFFFCLL;
        v109 = v111 + v88;
        v112 = 8 * v88;
        v113 = v111;
        do
        {
          v114 = (v9 + v112);
          *v114 = v72;
          v114[1] = v72;
          v112 += 32;
          v113 -= 4;
        }

        while (v113);
        if (v110 == v111)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v109 = v85;
      }

      v115 = v109;
      do
      {
        *&v9->i64[v115++] = v143 * 0.0;
        LODWORD(v109) = v109 + 1;
      }

      while (v14 > v109);
LABEL_56:
      ++v69;
      v9 = (v9 + v74);
      ++v76;
      ++v75;
    }

    while (v69 != v14);
  }

  return result;
}

void sub_10024CDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024CDD8(uint64_t result, uint64_t a2, uint64_t a3, double a4, float64x2_t a5, float64x2_t a6, float64x2_t a7, double a8, double a9, float64x2_t a10)
{
  v10 = *(result + 16);
  v11 = *(a2 + 16);
  v12 = *(a3 + 16);
  v13 = *(result + 80) >> 1;
  v221 = *(a2 + 80) >> 3;
  if (*(a3 + 8) <= 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a3 + 80) >> 3;
  }

  v15 = *(result + 64);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[1];
  if (v12)
  {
    v19 = *(a3 + 12);
    result = v222;
    if ((8 * v17) >= 0x409)
    {
      operator new[]();
    }

    if (v16 >= 1)
    {
      v20 = 0;
      v21 = 32 * (v19 == v17);
      v22 = 2 * v13;
      v23 = 16 * ((v17 >> 3) & 0xFFFFFFF);
      v24 = &v10->i16[2];
      v25 = *(a3 + 16);
      v220 = v17 & 0x7FFFFFF8;
      do
      {
        if (v19 >= v18)
        {
          if (v18 >= 1)
          {
            v28 = 0;
            if (v18 < 8)
            {
              goto LABEL_91;
            }

            v29 = v17 & 0x7FFFFFF8;
            v30 = v222;
            v31 = v25;
            v32 = v10;
            if (v222 + -8 * v14 * v20 - v12 < 0x40)
            {
              goto LABEL_91;
            }

            do
            {
              v33 = *v32++;
              v34 = vmovl_high_u16(v33);
              v35.i64[0] = v34.u32[2];
              v35.i64[1] = v34.u32[3];
              v36 = vcvtq_f64_u64(v35);
              v35.i64[0] = v34.u32[0];
              v35.i64[1] = v34.u32[1];
              v37 = vcvtq_f64_u64(v35);
              v38 = vmovl_u16(*v33.i8);
              v35.i64[0] = v38.u32[2];
              v35.i64[1] = v38.u32[3];
              v39 = vcvtq_f64_u64(v35);
              v35.i64[0] = v38.u32[0];
              v35.i64[1] = v38.u32[1];
              a10 = v31[2];
              v40 = v31[3];
              v42 = *v31;
              v41 = v31[1];
              v31 += 4;
              a5 = vsubq_f64(vcvtq_f64_u64(v35), v42);
              a7 = vsubq_f64(v36, v40);
              v30[2] = vsubq_f64(v37, a10);
              v30[3] = a7;
              a6 = vsubq_f64(v39, v41);
              *v30 = a5;
              v30[1] = a6;
              v30 += 4;
              v29 -= 8;
            }

            while (v29);
            v28 = v17 & 0x7FFFFFF8;
            if (v220 != v17)
            {
LABEL_91:
              do
              {
                LOWORD(a5.f64[0]) = v10->i16[v28];
                a6.f64[0] = v25->f64[v28];
                a5.f64[0] = *&a5.f64[0] - a6.f64[0];
                v222[v28++] = *&a5.f64[0];
              }

              while (v17 != v28);
            }
          }

          goto LABEL_25;
        }

        if (v17 >= 1)
        {
          v26 = *(v12 + 8 * v14 * v20);
          if (v17 >= 8)
          {
            v43 = 0;
            a6 = vdupq_lane_s64(v26, 0);
            v44 = v222;
            do
            {
              v45 = v10[v43 / 0x10];
              v46 = vmovl_high_u16(v45);
              v47.i64[0] = v46.u32[2];
              v47.i64[1] = v46.u32[3];
              v48 = vcvtq_f64_u64(v47);
              v47.i64[0] = v46.u32[0];
              v47.i64[1] = v46.u32[1];
              v49 = vcvtq_f64_u64(v47);
              v50 = vmovl_u16(*v45.i8);
              v47.i64[0] = v50.u32[2];
              v47.i64[1] = v50.u32[3];
              v51 = vcvtq_f64_u64(v47);
              v47.i64[0] = v50.u32[0];
              v47.i64[1] = v50.u32[1];
              a7 = vsubq_f64(vcvtq_f64_u64(v47), a6);
              a10 = vsubq_f64(v51, a6);
              v44[2] = vsubq_f64(v49, a6);
              v44[3] = vsubq_f64(v48, a6);
              *v44 = a7;
              v44[1] = a10;
              v44 += 4;
              v43 += 16;
            }

            while (v23 != v43);
            v27 = v17 & 0x7FFFFFF8;
            if (v220 == v17)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v27 = 0;
          }

          do
          {
            LOWORD(a6.f64[0]) = v10->i16[v27];
            a6.f64[0] = *&a6.f64[0] - *&v26;
            v222[v27++] = *&a6.f64[0];
          }

          while (v17 != v27);
        }

LABEL_25:
        v52 = v10;
        v53 = v24;
        v54 = v20;
        do
        {
          v55 = (v12 + 8 * v14 * v54);
          if (v19 < v17)
          {
            v225 = v55->f64[0];
            v226 = v225;
            *v224 = v225;
            *&v224[1] = v225;
            v55 = v224;
          }

          if (v18 >= 4)
          {
            v58 = 0;
            f64 = v55[1].f64;
            v57 = 0.0;
            v60 = v53;
            v61 = &v223;
            do
            {
              LOWORD(a6.f64[0]) = *(v60 - 2);
              LOWORD(a10.f64[0]) = *(v60 - 1);
              *&v62 = *(v61 - 1) * (*&a10.f64[0] - *(f64 - 1));
              v63 = *&v62 + *(v61 - 2) * (*&a6.f64[0] - *(f64 - 2));
              LOWORD(v62) = *v60;
              *&v64 = v62 - *f64;
              v65 = *v61;
              a10.f64[0] = v61[1];
              v61 += 4;
              v66 = v63 + v65 * *&v64;
              LOWORD(v64) = v60[1];
              a7.f64[0] = v64 - f64[1];
              a6.f64[0] = v66 + a10.f64[0] * a7.f64[0];
              v58 += 4;
              v57 = v57 + a6.f64[0];
              f64 = (f64 + v21);
              v60 += 4;
            }

            while (v58 <= v17 - 4);
            v55 = (v55 + v21 * (((v17 - 4) >> 2) + 1));
            v56 = ((v17 - 4) & 0xFFFFFFFC) + 4;
            if (v56 >= v18)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v56 = 0;
            v57 = 0.0;
            if (v18 <= 0)
            {
              goto LABEL_26;
            }
          }

          v67 = v56;
          v68 = (v17 + ~v56);
          if (v68 <= 6)
          {
            v69 = v67;
            v70 = v55;
            do
            {
LABEL_40:
              *&a6.f64[0] = v222[v69];
              LOWORD(a7.f64[0]) = v52->i16[v69];
              v88 = *v70++;
              a7.f64[0] = *&a7.f64[0] - v88;
              v57 = v57 + a6.f64[0] * a7.f64[0];
              ++v69;
            }

            while (v18 > v69);
            goto LABEL_26;
          }

          v71 = v68 + 1;
          v72 = (v68 + 1) & 0x1FFFFFFF8;
          v70 = &v55->f64[v72];
          v69 = v72 + v67;
          v73 = &v222[v67];
          v74 = (v52 + 2 * v67);
          v75 = v72;
          do
          {
            v76 = *v74++;
            v77 = vmovl_high_u16(v76);
            v78.i64[0] = v77.u32[2];
            v78.i64[1] = v77.u32[3];
            v79 = vcvtq_f64_u64(v78);
            v78.i64[0] = v77.u32[0];
            v78.i64[1] = v77.u32[1];
            v80 = vcvtq_f64_u64(v78);
            a10 = vmovl_u16(*v76.i8);
            v78.i64[0] = LODWORD(a10.f64[1]);
            v78.i64[1] = HIDWORD(a10.f64[1]);
            v81 = vcvtq_f64_u64(v78);
            v78.i64[0] = LODWORD(a10.f64[0]);
            v78.i64[1] = HIDWORD(a10.f64[0]);
            v83 = v55[2];
            v82 = v55[3];
            v85 = *v55;
            v84 = v55[1];
            v55 += 4;
            v86 = vmulq_f64(v73[3], vsubq_f64(v79, v82));
            v87 = vmulq_f64(v73[2], vsubq_f64(v80, v83));
            a7 = vmulq_f64(v73[1], vsubq_f64(v81, v84));
            a6 = vmulq_f64(*v73, vsubq_f64(vcvtq_f64_u64(v78), v85));
            a10.f64[0] = a6.f64[1];
            v57 = v57 + a6.f64[0] + a6.f64[1] + a7.f64[0] + a7.f64[1] + v87.f64[0] + v87.f64[1] + v86.f64[0] + v86.f64[1];
            v73 += 4;
            v75 -= 8;
          }

          while (v75);
          if (v71 != v72)
          {
            goto LABEL_40;
          }

LABEL_26:
          a5.f64[0] = v57 * a4;
          v11->i64[v54++] = *&a5.f64[0];
          v53 = (v53 + v22);
          v52 = (v52 + v22);
        }

        while (v54 != v16);
        v11 = (v11 + 8 * v221);
        ++v20;
        v10 = (v10 + v22);
        v25 = (v25 + 8 * v14);
        v24 = (v24 + v22);
        v23 = 16 * ((v17 >> 3) & 0xFFFFFFF);
      }

      while (v20 != v16);
    }
  }

  else if (v16 >= 1)
  {
    if (v18 >= 4)
    {
      v97 = (v17 - 4);
      v98 = (v97 & 0xFFFFFFFC) + 4;
      if (v97 >= 0x1C)
      {
        v120 = 0;
        v121 = (v97 >> 2) + 1;
        v122 = 2 * v13;
        do
        {
          v123 = v10;
          result = v120;
          do
          {
            v124 = 0.0;
            v125 = v121 & 0x3FFFFFF8;
            v126 = v123;
            v127 = v10;
            do
            {
              v227 = vld4q_s16(v127);
              v127 += 32;
              v128 = vmovl_u16(*v227.val[0].i8);
              v228 = vld4q_s16(v126);
              v126 += 32;
              v129.i64[0] = v128.u32[0];
              v129.i64[1] = v128.u32[1];
              v130 = vcvtq_f64_u64(v129);
              v129.i64[0] = v128.u32[2];
              v129.i64[1] = v128.u32[3];
              v131 = v129;
              v132 = vmovl_high_u16(v227.val[0]);
              v129.i64[0] = v132.u32[0];
              v129.i64[1] = v132.u32[1];
              v133 = vcvtq_f64_u64(v131);
              v134 = vcvtq_f64_u64(v129);
              v129.i64[0] = v132.u32[2];
              v129.i64[1] = v132.u32[3];
              v135 = vcvtq_f64_u64(v129);
              v136 = vmovl_u16(*v228.val[0].i8);
              v129.i64[0] = v136.u32[0];
              v129.i64[1] = v136.u32[1];
              v137 = vcvtq_f64_u64(v129);
              v129.i64[0] = v136.u32[2];
              v129.i64[1] = v136.u32[3];
              v138 = vcvtq_f64_u64(v129);
              v139 = vmovl_high_u16(v228.val[0]);
              v129.i64[0] = v139.u32[0];
              v129.i64[1] = v139.u32[1];
              v140 = v129;
              v129.i64[0] = v139.u32[2];
              v129.i64[1] = v139.u32[3];
              v141 = vcvtq_f64_u64(v140);
              v142 = vcvtq_f64_u64(v129);
              v143 = vmovl_high_u16(v227.val[1]);
              v129.i64[0] = v143.u32[2];
              v129.i64[1] = v143.u32[3];
              v144 = vcvtq_f64_u64(v129);
              v129.i64[0] = v143.u32[0];
              v129.i64[1] = v143.u32[1];
              v145 = vcvtq_f64_u64(v129);
              v146 = vmovl_u16(*v227.val[1].i8);
              v129.i64[0] = v146.u32[2];
              v129.i64[1] = v146.u32[3];
              v147 = vcvtq_f64_u64(v129);
              v129.i64[0] = v146.u32[0];
              v129.i64[1] = v146.u32[1];
              v148 = vmovl_high_u16(v228.val[1]);
              v149 = vcvtq_f64_u64(v129);
              v129.i64[0] = v148.u32[2];
              v129.i64[1] = v148.u32[3];
              v150 = vcvtq_f64_u64(v129);
              v129.i64[0] = v148.u32[0];
              v129.i64[1] = v148.u32[1];
              v151 = v129;
              v152 = vmovl_u16(*v228.val[1].i8);
              v129.i64[0] = v152.u32[2];
              v129.i64[1] = v152.u32[3];
              v153 = vcvtq_f64_u64(v151);
              v154 = vcvtq_f64_u64(v129);
              v129.i64[0] = v152.u32[0];
              v129.i64[1] = v152.u32[1];
              v155 = vmulq_f64(v149, vcvtq_f64_u64(v129));
              v156 = vmulq_f64(v145, v153);
              v157 = vmulq_f64(v144, v150);
              v158 = vmovl_high_u16(v227.val[2]);
              v129.i64[0] = v158.u32[2];
              v129.i64[1] = v158.u32[3];
              v159 = vcvtq_f64_u64(v129);
              v129.i64[0] = v158.u32[0];
              v129.i64[1] = v158.u32[1];
              v160 = vmlaq_f64(v157, v142, v135);
              v161 = vcvtq_f64_u64(v129);
              v162 = vmovl_u16(*v227.val[2].i8);
              v129.i64[0] = v162.u32[2];
              v129.i64[1] = v162.u32[3];
              v163 = vcvtq_f64_u64(v129);
              v129.i64[0] = v162.u32[0];
              v129.i64[1] = v162.u32[1];
              v164 = vmlaq_f64(v156, v141, v134);
              v165 = vcvtq_f64_u64(v129);
              v166 = vmovl_high_u16(v228.val[2]);
              v129.i64[0] = v166.u32[2];
              v129.i64[1] = v166.u32[3];
              v167 = vcvtq_f64_u64(v129);
              v129.i64[0] = v166.u32[0];
              v129.i64[1] = v166.u32[1];
              v168 = vmlaq_f64(v155, v137, v130);
              v169 = vcvtq_f64_u64(v129);
              v170 = vmovl_u16(*v228.val[2].i8);
              v129.i64[0] = v170.u32[2];
              v129.i64[1] = v170.u32[3];
              v171 = vcvtq_f64_u64(v129);
              v129.i64[0] = v170.u32[0];
              v129.i64[1] = v170.u32[1];
              v172 = vmlaq_f64(vmulq_f64(v147, v154), v138, v133);
              v173 = vcvtq_f64_u64(v129);
              v174 = vmovl_u16(*v227.val[3].i8);
              v129.i64[0] = v174.u32[0];
              v129.i64[1] = v174.u32[1];
              v175 = vcvtq_f64_u64(v129);
              v129.i64[0] = v174.u32[2];
              v129.i64[1] = v174.u32[3];
              v176 = vmlaq_f64(v168, v173, v165);
              v177 = vcvtq_f64_u64(v129);
              v227.val[0] = vmovl_high_u16(v227.val[3]);
              v129.i64[0] = v227.val[0].u32[0];
              v129.i64[1] = v227.val[0].u32[1];
              v227.val[1] = vcvtq_f64_u64(v129);
              v129.i64[0] = v227.val[0].u32[2];
              v129.i64[1] = v227.val[0].u32[3];
              v227.val[0] = vcvtq_f64_u64(v129);
              v227.val[2] = vmovl_u16(*v228.val[3].i8);
              v129.i64[0] = v227.val[2].u32[0];
              v129.i64[1] = v227.val[2].u32[1];
              v178 = vcvtq_f64_u64(v129);
              v129.i64[0] = v227.val[2].u32[2];
              v129.i64[1] = v227.val[2].u32[3];
              v227.val[2] = vcvtq_f64_u64(v129);
              v228.val[0] = vmovl_high_u16(v228.val[3]);
              v129.i64[0] = v228.val[0].u32[0];
              v129.i64[1] = v228.val[0].u32[1];
              v228.val[1] = vcvtq_f64_u64(v129);
              v129.i64[0] = v228.val[0].u32[2];
              v129.i64[1] = v228.val[0].u32[3];
              v179 = vmlaq_f64(vmlaq_f64(v160, v167, v159), vcvtq_f64_u64(v129), v227.val[0]);
              v180 = v179.f64[1];
              v181 = vmlaq_f64(vmlaq_f64(v164, v169, v161), v228.val[1], v227.val[1]);
              v182 = vmlaq_f64(vmlaq_f64(v172, v171, v163), v227.val[2], v177);
              v183 = v182.f64[1];
              v184 = vmlaq_f64(v176, v178, v175);
              v185 = v181.f64[1];
              v124 = v124 + v184.f64[0] + v184.f64[1] + v182.f64[0] + v182.f64[1] + v181.f64[0] + v181.f64[1] + v179.f64[0] + v179.f64[1];
              v125 -= 8;
            }

            while (v125);
            v186 = (((v121 >> 3) & 0x7FFFFFF) << 6) | 4;
            v187 = 4 * (v121 & 0x3FFFFFF8);
            if (v121 != (v121 & 0x3FFFFFF8))
            {
              do
              {
                LOWORD(v180) = *(&v10->i16[-2] + v186);
                LOWORD(v183) = *(v123 + v186 - 4);
                *&v188 = *&v183;
                LOWORD(v185) = *(&v10->i16[-1] + v186);
                LOWORD(v178.f64[0]) = *(v123 + v186 - 2);
                v178.f64[0] = *&v178.f64[0];
                *&v189 = *&v185 * v178.f64[0];
                v190 = *&v189 + *&v180 * *&v188;
                LOWORD(v188) = *(v10->i16 + v186);
                *&v191 = v188;
                LOWORD(v189) = *(v123 + v186);
                *&v192 = v189;
                v193 = v190 + *&v191 * *&v192;
                LOWORD(v191) = *(&v10->i16[1] + v186);
                LOWORD(v192) = *(v123 + v186 + 2);
                v183 = v191;
                v185 = v192;
                v180 = v193 + v183 * v185;
                v124 = v124 + v180;
                v187 += 4;
                v186 += 8;
              }

              while (v187 <= v97);
            }

            v194 = (v97 & 0xFFFFFFFC) + 4;
            v195 = v98;
            if (v98 < v18)
            {
              do
              {
                LOWORD(v180) = v10->i16[v195];
                LOWORD(v183) = v123[v195];
                v180 = *&v180;
                v183 = *&v183;
                v124 = v124 + v180 * v183;
                ++v195;
                ++v194;
              }

              while (v18 > v194);
            }

            *&v11->i64[result++] = v124 * a4;
            v123 = (v123 + v122);
          }

          while (result != v16);
          ++v120;
          v11 = (v11 + 8 * v221);
          v10 = (v10 + v122);
        }

        while (v120 != v16);
      }

      else if (v98 >= v17)
      {
        v205 = 0;
        v206 = &v10->i16[2];
        v207 = 2 * v13;
        do
        {
          v208 = v206;
          v209 = v205;
          do
          {
            v210 = 0;
            v211 = 0.0;
            v212 = v206;
            v213 = v208;
            do
            {
              LOWORD(a6.f64[0]) = *(v212 - 2);
              LOWORD(a7.f64[0]) = *(v213 - 2);
              *&v214 = *&a7.f64[0];
              LOWORD(a8) = *(v212 - 1);
              LOWORD(a9) = *(v213 - 1);
              a9 = *&a9;
              *&v215 = *&a8 * a9;
              v216 = *&v215 + *&a6.f64[0] * *&v214;
              LOWORD(v214) = *v212;
              LOWORD(v215) = *v213;
              *&v217 = v214;
              *&v218 = v215;
              v219 = v216 + *&v217 * *&v218;
              LOWORD(v217) = v212[1];
              a7.f64[0] = v217;
              LOWORD(v218) = v213[1];
              a8 = v218;
              a6.f64[0] = v219 + a7.f64[0] * a8;
              v211 = v211 + a6.f64[0];
              v210 += 4;
              v213 += 4;
              v212 += 4;
            }

            while (v210 <= v97);
            *&v11->i64[v209++] = v211 * a4;
            v208 = (v208 + v207);
          }

          while (v209 != v16);
          ++v205;
          v11 = (v11 + 8 * v221);
          v206 = (v206 + v207);
        }

        while (v205 != v16);
      }

      else
      {
        v99 = 0;
        v100 = &v10->i16[2];
        v101 = 2 * v13;
        v102 = v10 + v98;
        do
        {
          v103 = v102;
          v104 = v100;
          v105 = v99;
          do
          {
            v106 = 0;
            v107 = 0.0;
            v108 = v100;
            v109 = v104;
            do
            {
              LOWORD(a6.f64[0]) = *(v108 - 2);
              LOWORD(a7.f64[0]) = *(v109 - 2);
              *&v110 = *&a7.f64[0];
              LOWORD(a8) = *(v108 - 1);
              LOWORD(a9) = *(v109 - 1);
              a9 = *&a9;
              *&v111 = *&a8 * a9;
              v112 = *&v111 + *&a6.f64[0] * *&v110;
              LOWORD(v110) = *v108;
              LOWORD(v111) = *v109;
              *&v113 = v110;
              *&v114 = v111;
              v115 = v112 + *&v113 * *&v114;
              LOWORD(v113) = v108[1];
              a7.f64[0] = v113;
              LOWORD(v114) = v109[1];
              a8 = v114;
              a6.f64[0] = v115 + a7.f64[0] * a8;
              v107 = v107 + a6.f64[0];
              v106 += 4;
              v109 += 4;
              v108 += 4;
            }

            while (v106 <= v97);
            v116 = v102;
            result = v103;
            v117 = (v97 & 0xFFFFFFFC) + 4;
            do
            {
              v118 = *v116++;
              a6.f64[0] = v118;
              v119 = *result;
              result += 2;
              a7.f64[0] = v119;
              v107 = v107 + a6.f64[0] * v119;
              ++v117;
            }

            while (v18 > v117);
            *&v11->i64[v105++] = v107 * a4;
            v104 = (v104 + v101);
            v103 += v101;
          }

          while (v105 != v16);
          ++v99;
          v11 = (v11 + 8 * v221);
          v100 = (v100 + v101);
          v102 = (v102 + v101);
        }

        while (v99 != v16);
      }
    }

    else if (v17 <= 0)
    {
      v196 = 0;
      v197 = a4 * 0.0;
      v198 = vdupq_lane_s64(*&v197, 0);
      v199 = v11 + 1;
      v200 = v16;
      do
      {
        v201 = v16 - v196;
        v202 = v196;
        if ((v16 - v196) < 4)
        {
          goto LABEL_92;
        }

        v203 = v200 & 0xFFFFFFFFFFFFFFFCLL;
        v202 = v196 + (v201 & 0xFFFFFFFFFFFFFFFCLL);
        v204 = v199;
        do
        {
          v204[-1] = v198;
          *v204 = v198;
          v204 += 2;
          v203 -= 4;
        }

        while (v203);
        if (v201 != (v201 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_92:
          do
          {
            *&v11->i64[v202++] = v197;
          }

          while (v16 != v202);
        }

        ++v196;
        --v200;
        v199 = (v199 + 8 * v221 + 8);
        v11 = (v11 + 8 * v221);
      }

      while (v196 != v16);
    }

    else
    {
      v89 = 0;
      v90 = &v10->i16[2];
      v91 = 2 * v13;
      v92 = v16;
      do
      {
        v93 = &v10->i16[v13 * v89];
        LOWORD(a6.f64[0]) = *v93;
        a6.f64[0] = *&a6.f64[0];
        v94 = v92;
        v95 = v11;
        v96 = v90;
        do
        {
          LOWORD(a7.f64[0]) = *(v96 - 2);
          a7.f64[0] = a6.f64[0] * *&a7.f64[0] + 0.0;
          if (v17 != 1)
          {
            LOWORD(a8) = v93[1];
            a8 = *&a8;
            LOWORD(a9) = *(v96 - 1);
            a9 = *&a9;
            a7.f64[0] = a7.f64[0] + a8 * a9;
            if (v18 != 2)
            {
              LOWORD(a8) = v93[2];
              a8 = *&a8;
              LOWORD(a9) = *v96;
              a9 = *&a9;
              a7.f64[0] = a7.f64[0] + a8 * a9;
            }
          }

          a7.f64[0] = a7.f64[0] * a4;
          *v95++ = *&a7.f64[0];
          v96 = (v96 + v91);
          --v94;
        }

        while (v94);
        ++v89;
        v90 = (v90 + v91);
        v11 = (v11 + 8 * v221 + 8);
        --v92;
      }

      while (v89 != v16);
    }
  }

  return result;
}

_BYTE *sub_10024D91C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, __n128 a6, float64x2_t a7, __n128 a8)
{
  v8 = a1[2];
  v9 = *(a2 + 16);
  v10 = *(a3 + 16);
  v11 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a3 + 80) >> 2;
  }

  v13 = a1[8];
  v14 = v13[1];
  v15 = *v13;
  if (v10)
  {
    v16 = *(a3 + 12) < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  v18 = 20 * v15;
  if (!v16)
  {
    v18 = 4 * v15;
  }

  result = v127;
  if (v18 >= 0x409)
  {
    operator new[]();
  }

  v20 = v11 >> 1;
  v21 = *(a2 + 80) >> 2;
  if ((v17 & 1) == 0)
  {
    v22 = &v127[4 * v15];
    if (v15 < 1)
    {
      goto LABEL_36;
    }

    v23 = v15 >= 8 && v12 == 1;
    if (v23 && (v22 < (v10 + 4 * v15) ? (v24 = v10 >= &v127[16 * v15 + 4 * v15]) : (v24 = 1), v24))
    {
      v25 = v15 & 0x7FFFFFF8;
      f32 = v22[4].f32;
      v27 = v10 + 1;
      v28 = v25;
      do
      {
        v29 = v27[-1];
        a8 = *v27;
        v30 = v29;
        a6 = v29;
        v31 = v29;
        v32 = *v27;
        v33 = *v27;
        v34 = *v27;
        v35 = f32 - 16;
        vst4q_f32(v35, *(&a6 - 2));
        vst4q_f32(f32, *a8.n128_u64);
        f32 += 32;
        v27 += 2;
        v28 -= 8;
      }

      while (v28);
      if (v25 == v15)
      {
LABEL_36:
        v12 = 4 * (v12 != 0);
        v10 = &v127[4 * v15];
        if (v14 < 1)
        {
          return result;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v25 = 0;
    }

    v36 = &v127[16 * v25 + 4 * v15];
    v37 = v10 + v12 * v25;
    v39 = v15 - v25;
    do
    {
      v40 = vld1q_dup_f32(v37);
      v38 = 4 * v12;
      v37 = (v37 + v38);
      *v36++ = v40;
      --v39;
    }

    while (v39);
    goto LABEL_36;
  }

  if (!v10)
  {
    if (v14 < 1)
    {
      return result;
    }

    v85 = 0;
    v86 = v14 - 4;
    v87 = a4 * 0.0;
    *&v87 = a4 * 0.0;
    v88 = vdupq_lane_s32(*&v87, 0);
    v89 = 2 * v20;
    v90 = 4 * v21;
    for (i = v8; ; ++i)
    {
      if (v15 < 1)
      {
        goto LABEL_81;
      }

      v92 = v15 & 0x7FFFFFFE;
      v93 = &v128;
      v94 = i;
      if (v15 == 1)
      {
        break;
      }

      do
      {
        a6.n128_u16[0] = *v94;
        a6.n128_u64[0] = vmovl_s16(a6.n128_u64[0]).u64[0];
        a6.n128_f32[0] = a6.n128_i32[0];
        LOWORD(a7.f64[0]) = v94[v20];
        *&a7.f64[0] = vmovl_s16(*&a7.f64[0]).u64[0];
        *a7.f64 = SLODWORD(a7.f64[0]);
        *(v93 - 1) = a6.n128_u32[0];
        *v93 = LODWORD(a7.f64[0]);
        v94 += 2 * v20;
        v93 += 2;
        v92 -= 2;
      }

      while (v92);
      v95 = v15 & 0x7FFFFFFE;
      if (v95 != v15)
      {
        goto LABEL_79;
      }

LABEL_81:
      LODWORD(v99) = v85;
      v100 = i;
      v101 = v85;
      if (v85 <= v86)
      {
        do
        {
          a6 = v88;
          if (v15 >= 1)
          {
            v109 = 0uLL;
            v110 = v100;
            v111 = v15;
            v112 = v127;
            v113 = 0uLL;
            do
            {
              v114 = *v112++;
              v115 = vmovl_s16(*v110);
              v116.i64[0] = v115.i32[0];
              v116.i64[1] = v115.i32[1];
              v117 = vcvtq_f64_s64(v116);
              v116.i64[0] = v115.i32[2];
              v116.i64[1] = v115.i32[3];
              v113 = vmlaq_n_f64(v113, vcvtq_f64_s64(v116), v114);
              v109 = vmlaq_n_f64(v109, v117, v114);
              v110 = (v110 + v89);
              --v111;
            }

            while (v111);
            a8.n128_f64[0] = a4;
            a7 = vmulq_n_f64(v113, a4);
            a6 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v109, a4)), a7);
          }

          *(v9 + 4 * v101) = a6;
          v99 = v101 + 4;
          ++v100;
          v101 = v99;
        }

        while (v86 >= v99);
      }

      if (v99 >= v14)
      {
        goto LABEL_73;
      }

      v102 = v99;
      if (v15 >= 1)
      {
        v103 = &v8[v99];
        do
        {
          v104 = 0.0;
          v105 = v103;
          v106 = v15;
          v107 = v127;
          do
          {
            v108 = *v107++;
            a8.n128_u16[0] = *v105;
            a8.n128_f64[0] = vmovl_s16(a8.n128_u64[0]).i32[0];
            v104 = v104 + v108 * a8.n128_f64[0];
            v105 = (v105 + v89);
            --v106;
          }

          while (v106);
          a7.f64[0] = a4;
          a6.n128_f64[0] = v104 * a4;
          a6.n128_f32[0] = a6.n128_f64[0];
          *(v9 + 4 * v102++) = a6.n128_u32[0];
          ++v103;
        }

        while (v14 > v102);
        goto LABEL_73;
      }

      v118 = (v14 + ~v99);
      if (v118 > 6)
      {
        v120 = v118 + 1;
        v121 = (v118 + 1) & 0x1FFFFFFF8;
        v119 = v121 + v102;
        v122 = 4 * v102;
        v123 = v121;
        do
        {
          v124 = (v9 + v122);
          *v124 = v88;
          v124[1] = v88;
          v122 += 32;
          v123 -= 8;
        }

        while (v123);
        if (v120 == v121)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v119 = v99;
      }

      v125 = 4 * v119;
      do
      {
        *(v9 + v125) = LODWORD(v87);
        v125 += 4;
        LODWORD(v119) = v119 + 1;
      }

      while (v14 > v119);
LABEL_73:
      ++v85;
      v9 += v90;
      if (v85 == v14)
      {
        return result;
      }
    }

    v95 = 0;
LABEL_79:
    v96 = &v127[4 * v95];
    v97 = v89 * v95;
    v98 = v15 - v95;
    do
    {
      a6.n128_u16[0] = *(i + v97);
      a6.n128_u64[0] = vmovl_s16(a6.n128_u64[0]).u64[0];
      a6.n128_f32[0] = a6.n128_i32[0];
      *v96++ = a6.n128_u32[0];
      v97 += v89;
      --v98;
    }

    while (v98);
    goto LABEL_81;
  }

  v22 = 0;
  if (v14 >= 1)
  {
LABEL_37:
    v41 = 0;
    v42 = v14 - 4;
    v43 = a4 * 0.0;
    *&v43 = a4 * 0.0;
    v44 = 4 * v12;
    v45 = vdupq_lane_s32(*&v43, 0);
    v46 = 2 * v20;
    v47 = 4 * v21;
    v48 = v10;
    v49 = v8;
    do
    {
      if (v22)
      {
        v50 = v15;
        v51 = v49;
        v52 = v22;
        v53 = v127;
        if (v15 >= 1)
        {
          do
          {
            a6.n128_u16[0] = *v51;
            a6.n128_u64[0] = vmovl_s16(a6.n128_u64[0]).u64[0];
            a6.n128_f32[0] = a6.n128_i32[0] - *v52;
            *v53++ = a6.n128_u32[0];
            v52 = (v52 + v44);
            v51 = (v51 + v46);
            --v50;
          }

          while (v50);
        }
      }

      else if (v15 >= 1)
      {
        v54 = v15;
        v55 = v49;
        v56 = v48;
        v57 = v127;
        do
        {
          a6.n128_u16[0] = *v55;
          a6.n128_u64[0] = vmovl_s16(a6.n128_u64[0]).u64[0];
          a6.n128_f32[0] = a6.n128_i32[0] - *v56;
          *v57++ = a6.n128_u32[0];
          v56 = (v56 + v44);
          v55 = (v55 + v46);
          --v54;
        }

        while (v54);
      }

      LODWORD(v58) = v41;
      v59 = v49;
      v60 = v41;
      if (v41 <= v42)
      {
        do
        {
          a6 = v45;
          if (v15 >= 1)
          {
            v69 = (v10 + 4 * v60);
            if (v22)
            {
              v69 = v22;
            }

            v70 = 0uLL;
            v71 = v59;
            v72 = v15;
            v73 = v127;
            v74 = 0uLL;
            do
            {
              v75 = *v73++;
              v76 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v71)), *v69);
              v74 = vmlaq_n_f64(v74, vcvt_hight_f64_f32(v76), v75);
              v70 = vmlaq_n_f64(v70, vcvtq_f64_f32(*v76.f32), v75);
              v69 = (v69 + v44);
              v71 = (v71 + v46);
              --v72;
            }

            while (v72);
            a8.n128_f64[0] = a4;
            a6 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v70, a4)), vmulq_n_f64(v74, a4));
          }

          *(v9 + 4 * v60) = a6;
          v58 = v60 + 4;
          ++v59;
          v60 = v58;
        }

        while (v42 >= v58);
      }

      if (v58 >= v14)
      {
        goto LABEL_38;
      }

      v61 = v58;
      if (v15 >= 1)
      {
        v62 = &v8[v58];
        do
        {
          v63 = v10 + v61;
          if (v22)
          {
            v63 = v22;
          }

          v64 = 0.0;
          v65 = v62;
          v66 = v15;
          v67 = v127;
          do
          {
            v68 = *v67++;
            a8.n128_u16[0] = *v65;
            a8.n128_f64[0] = (vmovl_s16(a8.n128_u64[0]).i32[0] - *v63);
            v64 = v64 + v68 * a8.n128_f64[0];
            v63 = (v63 + v44);
            v65 = (v65 + v46);
            --v66;
          }

          while (v66);
          a6.n128_f64[0] = v64 * a4;
          a6.n128_f32[0] = a6.n128_f64[0];
          *(v9 + 4 * v61++) = a6.n128_u32[0];
          ++v62;
        }

        while (v14 > v61);
        goto LABEL_38;
      }

      v77 = (v14 + ~v58);
      if (v77 > 6)
      {
        v79 = v77 + 1;
        v80 = (v77 + 1) & 0x1FFFFFFF8;
        v78 = v80 + v61;
        v81 = 4 * v61;
        v82 = v80;
        do
        {
          v83 = (v9 + v81);
          *v83 = v45;
          v83[1] = v45;
          v81 += 32;
          v82 -= 8;
        }

        while (v82);
        if (v79 == v80)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v78 = v58;
      }

      v84 = 4 * v78;
      do
      {
        *(v9 + v84) = LODWORD(v43);
        v84 += 4;
        LODWORD(v78) = v78 + 1;
      }

      while (v14 > v78);
LABEL_38:
      ++v41;
      v9 += v47;
      ++v49;
      ++v48;
    }

    while (v41 != v14);
  }

  return result;
}

void sub_10024DFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024E01C(uint64_t result, uint64_t a2, uint64_t a3, double a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v9 = *(result + 16);
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  v12 = *(result + 80) >> 1;
  v251 = *(a2 + 80) >> 2;
  if (*(a3 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 80) >> 2;
  }

  v14 = *(result + 64);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[1];
  if (v11)
  {
    v18 = *(a3 + 12);
    result = v255;
    if ((4 * v16) >= 0x409)
    {
      operator new[]();
    }

    if (v15 >= 1)
    {
      v19 = 0;
      v250 = 4 * v13;
      v249 = v16 & 0x7FFFFFF0;
      v20 = (v9 + 8);
      v21 = 2 * v12;
      v254 = v11 + 2;
      v248 = v16 & 0x7FFFFFFC;
      v22 = 32 * ((v16 >> 4) & 0x7FFFFFF);
      v23 = (v9 + 2);
      v24 = *(a3 + 16);
      do
      {
        if (v18 >= v17)
        {
          if (v17 >= 1)
          {
            v26 = 0;
            if (v17 >= 4 && (v255 - v11 + -4 * v13 * v19) >= 0x40)
            {
              if (v17 >= 0x10)
              {
                v38 = v254;
                v39 = v257;
                v40 = v20;
                v41 = v16 & 0x7FFFFFF0;
                do
                {
                  v42 = *v40[-2].i8;
                  v43 = vcvtq_f32_s32(vmovl_high_s16(v42));
                  v44 = v38[-2];
                  a9 = v38[-1];
                  v46 = *v38;
                  v45 = v38[1];
                  v38 += 4;
                  a5 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v42.i8)), v44);
                  a7 = vsubq_f32(v43, a9);
                  a6 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v40)), v46);
                  a8 = vsubq_f32(vcvtq_f32_s32(vmovl_high_s16(*v40->i8)), v45);
                  v39[-2] = a5;
                  v39[-1] = a7;
                  *v39 = a6;
                  v39[1] = a8;
                  v39 += 4;
                  v40 += 4;
                  v41 -= 16;
                }

                while (v41);
                if (v249 == v16)
                {
                  goto LABEL_38;
                }

                v26 = v16 & 0x7FFFFFF0;
                v27 = v26;
                if ((v16 & 0xC) != 0)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v27 = 0;
LABEL_34:
                v47 = &v9[v27];
                v48 = (v24 + 4 * v27);
                v49 = &v255[v27];
                v50 = v27 - (v16 & 0x7FFFFFFC);
                do
                {
                  v51 = *v47++;
                  v52 = vcvtq_f32_s32(vmovl_s16(v51));
                  v53 = *v48++;
                  a6.i64[0] = v53.i64[0];
                  a5 = vsubq_f32(v52, v53);
                  *v49++ = a5;
                  v50 += 4;
                }

                while (v50);
                v26 = v16 & 0x7FFFFFFC;
                if (v248 == v16)
                {
                  goto LABEL_38;
                }
              }
            }

            do
            {
              a5.i16[0] = v9[v26];
              a5.i64[0] = vmovl_s16(*a5.f32).u64[0];
              a6.i32[0] = *(v24 + 4 * v26);
              a5.f32[0] = a5.i32[0] - a6.f32[0];
              v255[v26++] = a5.i32[0];
            }

            while (v16 != v26);
          }
        }

        else if (v16 >= 1)
        {
          a5.i32[0] = v11->i32[v13 * v19];
          if (v16 < 4)
          {
            v25 = 0;
            do
            {
LABEL_28:
              a6.i16[0] = v9[v25];
              a6.i64[0] = vmovl_s16(*a6.f32).u64[0];
              a6.f32[0] = a6.i32[0] - a5.f32[0];
              v255[v25++] = a6.i32[0];
            }

            while (v16 != v25);
            goto LABEL_38;
          }

          if (v16 >= 0x10)
          {
            v29 = 0;
            a6 = vdupq_lane_s32(*a5.f32, 0);
            v30 = v257;
            do
            {
              v31 = *&v9[v29 / 2];
              v32 = *v20[v29 / 8].i8;
              v33 = vcvtq_f32_s32(vmovl_high_s16(v31));
              v34 = vcvtq_f32_s32(vmovl_high_s16(v32));
              a7 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v31.i8)), a6);
              a9 = vsubq_f32(v33, a6);
              a8 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v32.i8)), a6);
              v30[-2] = a7;
              v30[-1] = a9;
              *v30 = a8;
              v30[1] = vsubq_f32(v34, a6);
              v30 += 4;
              v29 += 32;
            }

            while (v22 != v29);
            if (v249 == v16)
            {
              goto LABEL_38;
            }

            v25 = v16 & 0x7FFFFFF0;
            v28 = v25;
            if ((v16 & 0xC) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v28 = 0;
          }

          a6 = vdupq_lane_s32(*a5.f32, 0);
          v35 = v28;
          v36 = v28 - (v16 & 0x7FFFFFFC);
          v37 = &v255[v28];
          do
          {
            a7 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*&v9[v35])), a6);
            *v37++ = a7;
            v35 += 4;
            v36 += 4;
          }

          while (v36);
          v25 = v16 & 0x7FFFFFFC;
          if (v248 == v16)
          {
            goto LABEL_38;
          }

          goto LABEL_28;
        }

LABEL_38:
        v54 = v9;
        v55 = v20;
        v252 = v23;
        v253 = v19;
        v56 = v19;
        do
        {
          v57 = &v11->f32[v13 * v56];
          if (v18 < v16)
          {
            v58 = vld1q_dup_f32(v57);
            v258 = v58;
            v57 = &v258;
          }

          if (v17 >= 4)
          {
            v61 = 0;
            v62 = (v57 + 2);
            v60 = 0.0;
            v63 = v23;
            v64 = &v256;
            do
            {
              a8.i16[0] = *(v63 - 2);
              a9.f32[0] = *(v62 - 2);
              v65 = vmovl_s16(*a8.f32).i32[0] - a9.f32[0];
              a9.i16[0] = *(v63 - 1);
              *a9.i64 = (vmovl_s16(*a9.f32).i32[0] - *(v62 - 1));
              *&v66 = *(v64 - 1) * *a9.i64;
              v67 = *&v66 + *(v64 - 2) * v65;
              v66.i16[0] = *v63;
              v68 = *v64;
              v69 = v64[1];
              v64 += 4;
              *a8.i64 = v68;
              *&v70 = (vmovl_s16(v66).i32[0] - *v62);
              v71 = v67 + *a8.i64 * *&v70;
              v70.i16[0] = v63[1];
              *a7.i64 = (vmovl_s16(v70).i32[0] - v62[1]);
              *a6.i64 = v71 + v69 * *a7.i64;
              v61 += 4;
              v60 = v60 + *a6.i64;
              v62 += 4 * (v18 == v16);
              v63 += 4;
            }

            while (v61 <= v16 - 4);
            v57 = (v57 + 16 * (v18 == v16) * (((v16 - 4) >> 2) + 1));
            v59 = ((v16 - 4) & 0xFFFFFFFC) + 4;
            if (v59 >= v17)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v59 = 0;
            v60 = 0.0;
            if (v17 <= 0)
            {
              goto LABEL_39;
            }
          }

          v72 = v59;
          v73 = (v16 + ~v59);
          if (v73 < 3)
          {
            v74 = v72;
            v75 = v57;
            goto LABEL_61;
          }

          v76 = v73 + 1;
          if (v73 >= 0xF)
          {
            v77 = v76 & 0x1FFFFFFF0;
            v78 = (v55 + 2 * v72);
            v79 = (v57 + 8);
            v80 = &v257[v72];
            v81 = v76 & 0x1FFFFFFF0;
            do
            {
              v83 = v80[-2];
              v82 = v80[-1];
              v85 = *v80;
              v84 = v80[1];
              v80 += 4;
              v86 = vcvtq_f64_f32(*v83.f32);
              v87 = vcvtq_f64_f32(*v82.f32);
              v88 = vcvtq_f64_f32(*v85.f32);
              v89 = vcvtq_f64_f32(*v84.f32);
              v90 = v78[-1];
              v91 = vcvtq_f32_s32(vmovl_s16(*v90.i8));
              v92 = v79[-2];
              v93 = v79[-1];
              v94 = *v79;
              v95 = v79[1];
              v79 += 4;
              v96 = vsubq_f32(vcvtq_f32_s32(vmovl_high_s16(v90)), v93);
              v97 = vsubq_f32(v91, v92);
              v98 = vsubq_f32(vcvtq_f32_s32(vmovl_high_s16(*v78)), v95);
              v99 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v78->i8)), v94);
              a6 = vmulq_f64(vcvt_hight_f64_f32(v82), vcvt_hight_f64_f32(v96));
              v100 = vmulq_f64(v87, vcvtq_f64_f32(*v96.f32));
              a7 = vmulq_f64(vcvt_hight_f64_f32(v83), vcvt_hight_f64_f32(v97));
              v101 = vmulq_f64(v86, vcvtq_f64_f32(*v97.f32));
              a8 = vmulq_f64(vcvt_hight_f64_f32(v84), vcvt_hight_f64_f32(v98));
              v102 = vmulq_f64(v89, vcvtq_f64_f32(*v98.f32));
              a9 = vmulq_f64(vcvt_hight_f64_f32(v85), vcvt_hight_f64_f32(v99));
              v103 = vmulq_f64(v88, vcvtq_f64_f32(*v99.f32));
              v60 = v60 + v101.f64[0] + v101.f64[1] + *a7.i64 + *&a7.i64[1] + v100.f64[0] + v100.f64[1] + *a6.i64 + *&a6.i64[1] + v103.f64[0] + v103.f64[1] + *a9.i64 + *&a9.i64[1] + v102.f64[0] + v102.f64[1] + *a8.i64 + *&a8.i64[1];
              v78 += 2;
              v81 -= 16;
            }

            while (v81);
            if (v76 == v77)
            {
              goto LABEL_39;
            }

            if ((v76 & 0xC) == 0)
            {
              v75 = &v57[v77];
              v74 = v77 + v72;
              do
              {
LABEL_61:
                *a6.i64 = *&v255[v74];
                a7.i16[0] = v54[v74];
                v114 = *v75++;
                a8.i16[1] = HIWORD(v114);
                *a7.i64 = (vmovl_s16(*a7.f32).i32[0] - v114);
                v60 = v60 + *a6.i64 * *a7.i64;
                ++v74;
              }

              while (v17 > v74);
              goto LABEL_39;
            }
          }

          else
          {
            v77 = 0;
          }

          v75 = &v57[v76 & 0x1FFFFFFFCLL];
          v74 = (v76 & 0x1FFFFFFFCLL) + v72;
          v104 = &v57[v77];
          v105 = v77 - (v76 & 0x1FFFFFFFCLL);
          v106 = v77 + v72;
          v107 = &v255[v106];
          v108 = &v54[v106];
          do
          {
            v109 = *v107++;
            v110 = vcvtq_f64_f32(*v109.f32);
            v111 = vcvt_hight_f64_f32(v109);
            v109.i64[0] = *v108++;
            v112 = vcvtq_f32_s32(vmovl_s16(*v109.f32));
            v113 = *v104++;
            a8 = vsubq_f32(v112, v113);
            a9 = vcvtq_f64_f32(*a8.f32);
            a6 = vmulq_f64(v111, vcvt_hight_f64_f32(a8));
            a8.i64[0] = a6.i64[1];
            a7 = vmulq_f64(v110, a9);
            a9.i32[1] = a7.i32[3];
            v60 = v60 + *a7.i64 + *&a7.i64[1] + *a6.i64 + *&a6.i64[1];
            v105 += 4;
          }

          while (v105);
          if (v76 != (v76 & 0x1FFFFFFFCLL))
          {
            goto LABEL_61;
          }

LABEL_39:
          *a5.i64 = v60 * a4;
          a5.f32[0] = *a5.i64;
          v10->i32[v56++] = a5.i32[0];
          v23 = (v23 + v21);
          v55 = (v55 + v21);
          v54 = (v54 + v21);
        }

        while (v56 != v15);
        v19 = v253 + 1;
        v10 = (v10 + 4 * v251);
        v20 = (v20 + v21);
        v22 = 32 * ((v16 >> 4) & 0x7FFFFFF);
        v254 = (v254 + v250);
        v9 = (v9 + v21);
        v24 += v250;
        v23 = &v252[v21 / 2];
      }

      while (v253 + 1 != v15);
    }
  }

  else if (v15 >= 1)
  {
    if (v17 >= 4)
    {
      v123 = (v16 - 4);
      v124 = (v123 & 0xFFFFFFFC) + 4;
      if (v123 >= 0x1C)
      {
        v147 = 0;
        v148 = (v123 >> 2) + 1;
        v149 = 2 * v12;
        do
        {
          v150 = v9;
          result = v147;
          do
          {
            v152 = 0.0;
            v153 = v148 & 0x3FFFFFF8;
            v154 = v150;
            v155 = v9;
            do
            {
              v259 = vld4q_s16(v155);
              v155 += 32;
              v156 = vmovl_s16(*v259.val[0].i8);
              v260 = vld4q_s16(v154);
              v154 += 32;
              v157.i64[0] = v156.i32[0];
              v157.i64[1] = v156.i32[1];
              v158 = vcvtq_f64_s64(v157);
              v157.i64[0] = v156.i32[2];
              v157.i64[1] = v156.i32[3];
              v159 = v157;
              v160 = vmovl_high_s16(v259.val[0]);
              v157.i64[0] = v160.i32[0];
              v157.i64[1] = v160.i32[1];
              v161 = vcvtq_f64_s64(v159);
              v162 = vcvtq_f64_s64(v157);
              v157.i64[0] = v160.i32[2];
              v157.i64[1] = v160.i32[3];
              v163 = vcvtq_f64_s64(v157);
              v164 = vmovl_s16(*v260.val[0].i8);
              v157.i64[0] = v164.i32[0];
              v157.i64[1] = v164.i32[1];
              v165 = vcvtq_f64_s64(v157);
              v157.i64[0] = v164.i32[2];
              v157.i64[1] = v164.i32[3];
              v166 = vcvtq_f64_s64(v157);
              v167 = vmovl_high_s16(v260.val[0]);
              v157.i64[0] = v167.i32[0];
              v157.i64[1] = v167.i32[1];
              v168 = v157;
              v157.i64[0] = v167.i32[2];
              v157.i64[1] = v167.i32[3];
              v169 = vcvtq_f64_s64(v168);
              v170 = vcvtq_f64_s64(v157);
              v171 = vmovl_high_s16(v259.val[1]);
              v157.i64[0] = v171.i32[2];
              v157.i64[1] = v171.i32[3];
              v172 = vcvtq_f64_s64(v157);
              v157.i64[0] = v171.i32[0];
              v157.i64[1] = v171.i32[1];
              v173 = vcvtq_f64_s64(v157);
              v174 = vmovl_s16(*v259.val[1].i8);
              v157.i64[0] = v174.i32[2];
              v157.i64[1] = v174.i32[3];
              v175 = vcvtq_f64_s64(v157);
              v157.i64[0] = v174.i32[0];
              v157.i64[1] = v174.i32[1];
              v176 = vmovl_high_s16(v260.val[1]);
              v177 = vcvtq_f64_s64(v157);
              v157.i64[0] = v176.i32[2];
              v157.i64[1] = v176.i32[3];
              v178 = vcvtq_f64_s64(v157);
              v157.i64[0] = v176.i32[0];
              v157.i64[1] = v176.i32[1];
              v179 = v157;
              v180 = vmovl_s16(*v260.val[1].i8);
              v157.i64[0] = v180.i32[2];
              v157.i64[1] = v180.i32[3];
              v181 = vcvtq_f64_s64(v179);
              v182 = vcvtq_f64_s64(v157);
              v157.i64[0] = v180.i32[0];
              v157.i64[1] = v180.i32[1];
              v183 = vmulq_f64(v177, vcvtq_f64_s64(v157));
              v184 = vmulq_f64(v173, v181);
              v185 = vmulq_f64(v172, v178);
              v186 = vmovl_high_s16(v259.val[2]);
              v157.i64[0] = v186.i32[2];
              v157.i64[1] = v186.i32[3];
              v187 = vcvtq_f64_s64(v157);
              v157.i64[0] = v186.i32[0];
              v157.i64[1] = v186.i32[1];
              v188 = vmlaq_f64(v185, v170, v163);
              v189 = vcvtq_f64_s64(v157);
              v190 = vmovl_s16(*v259.val[2].i8);
              v157.i64[0] = v190.i32[2];
              v157.i64[1] = v190.i32[3];
              v191 = vcvtq_f64_s64(v157);
              v157.i64[0] = v190.i32[0];
              v157.i64[1] = v190.i32[1];
              v192 = vmlaq_f64(v184, v169, v162);
              v193 = vcvtq_f64_s64(v157);
              v194 = vmovl_high_s16(v260.val[2]);
              v157.i64[0] = v194.i32[2];
              v157.i64[1] = v194.i32[3];
              v195 = vcvtq_f64_s64(v157);
              v157.i64[0] = v194.i32[0];
              v157.i64[1] = v194.i32[1];
              v196 = vmlaq_f64(v183, v165, v158);
              v197 = vcvtq_f64_s64(v157);
              v198 = vmovl_s16(*v260.val[2].i8);
              v157.i64[0] = v198.i32[2];
              v157.i64[1] = v198.i32[3];
              v199 = vcvtq_f64_s64(v157);
              v157.i64[0] = v198.i32[0];
              v157.i64[1] = v198.i32[1];
              v200 = vmlaq_f64(vmulq_f64(v175, v182), v166, v161);
              v201 = vcvtq_f64_s64(v157);
              v202 = vmovl_s16(*v259.val[3].i8);
              v157.i64[0] = v202.i32[0];
              v157.i64[1] = v202.i32[1];
              v203 = vcvtq_f64_s64(v157);
              v157.i64[0] = v202.i32[2];
              v157.i64[1] = v202.i32[3];
              v204 = vmlaq_f64(v196, v201, v193);
              v205 = vcvtq_f64_s64(v157);
              v259.val[0] = vmovl_high_s16(v259.val[3]);
              v157.i64[0] = v259.val[0].i32[0];
              v157.i64[1] = v259.val[0].i32[1];
              v259.val[1] = vcvtq_f64_s64(v157);
              v157.i64[0] = v259.val[0].i32[2];
              v157.i64[1] = v259.val[0].i32[3];
              v259.val[0] = vcvtq_f64_s64(v157);
              v259.val[2] = vmovl_s16(*v260.val[3].i8);
              v157.i64[0] = v259.val[2].i32[0];
              v157.i64[1] = v259.val[2].i32[1];
              v206 = vcvtq_f64_s64(v157);
              v157.i64[0] = v259.val[2].i32[2];
              v157.i64[1] = v259.val[2].i32[3];
              v259.val[2] = vcvtq_f64_s64(v157);
              v260.val[0] = vmovl_high_s16(v260.val[3]);
              v157.i64[0] = v260.val[0].i32[0];
              v157.i64[1] = v260.val[0].i32[1];
              v260.val[1] = vcvtq_f64_s64(v157);
              v157.i64[0] = v260.val[0].i32[2];
              v157.i64[1] = v260.val[0].i32[3];
              v207 = vmlaq_f64(vmlaq_f64(v188, v195, v187), vcvtq_f64_s64(v157), v259.val[0]);
              v208 = v207.f64[1];
              v209 = vmlaq_f64(vmlaq_f64(v192, v197, v189), v260.val[1], v259.val[1]);
              v210 = vmlaq_f64(vmlaq_f64(v200, v199, v191), v259.val[2], v205);
              v211 = v210.f64[1];
              v212 = vmlaq_f64(v204, v206, v203);
              v213 = v209.f64[1];
              v152 = v152 + v212.f64[0] + v212.f64[1] + v210.f64[0] + v210.f64[1] + v209.f64[0] + v209.f64[1] + v207.f64[0] + v207.f64[1];
              v153 -= 8;
            }

            while (v153);
            v214 = (((v148 >> 3) & 0x7FFFFFF) << 6) | 4;
            v215 = 4 * (v148 & 0x3FFFFFF8);
            if (v148 != (v148 & 0x3FFFFFF8))
            {
              do
              {
                LOWORD(v208) = *(v9 + v214 - 4);
                LOWORD(v211) = *(v150 + v214 - 4);
                LOWORD(v213) = *(v9 + v214 - 2);
                LOWORD(v206.f64[0]) = *(v150 + v214 - 2);
                *&v216 = vmovl_s16(*&v206.f64[0]).i32[0];
                *&v217 = vmovl_s16(*&v211).i32[0];
                *&v218 = vmovl_s16(*&v213).i32[0] * *&v216;
                v216.i16[0] = *(v9 + v214);
                v206.f64[0] = vmovl_s16(v216).i32[0];
                v219 = *&v218 + vmovl_s16(*&v208).i32[0] * *&v217;
                v217.i16[0] = *(v150 + v214);
                v218.i16[0] = *(v9 + v214 + 2);
                v220 = v219 + v206.f64[0] * vmovl_s16(v217).i32[0];
                v217.i32[0] = vmovl_s16(v218).u32[0];
                v218.i16[0] = *(v150 + v214 + 2);
                v211 = v217.i32[0];
                v213 = vmovl_s16(v218).i32[0];
                v208 = v220 + v211 * v213;
                v152 = v152 + v208;
                v215 += 4;
                v214 += 8;
              }

              while (v215 <= v123);
            }

            v221 = (v123 & 0xFFFFFFFC) + 4;
            v222 = v124;
            if (v124 < v17)
            {
              do
              {
                LOWORD(v208) = v9[v222];
                v208 = vmovl_s16(*&v208).i32[0];
                LOWORD(v211) = v150[v222];
                v211 = vmovl_s16(*&v211).i32[0];
                v152 = v152 + v208 * v211;
                ++v222;
                ++v221;
              }

              while (v17 > v221);
            }

            *&v151 = v152 * a4;
            v10->i32[result++] = v151;
            v150 = (v150 + v149);
          }

          while (result != v15);
          ++v147;
          v10 = (v10 + 4 * v251);
          v9 = (v9 + v149);
        }

        while (v147 != v15);
      }

      else if (v124 >= v16)
      {
        v232 = 0;
        v233 = (v9 + 2);
        v234 = 2 * v12;
        do
        {
          v235 = v233;
          v236 = v232;
          do
          {
            v237 = 0;
            v238 = 0.0;
            v239 = v233;
            v240 = v235;
            do
            {
              a6.i16[0] = *(v239 - 2);
              a7.i16[0] = *(v240 - 2);
              a8.i16[0] = *(v239 - 1);
              a9.i16[0] = *(v240 - 1);
              *&v241 = vmovl_s16(*a9.f32).i32[0];
              *&v242 = vmovl_s16(*a8.f32).i32[0] * *&v241;
              *&v243 = vmovl_s16(*a7.f32).i32[0];
              v244 = *&v242 + vmovl_s16(*a6.f32).i32[0] * *&v243;
              v243.i16[0] = *v239;
              v242.i16[0] = *v240;
              *&v245 = vmovl_s16(v242).i32[0];
              v241.i16[0] = v239[1];
              a9.i64[0] = vmovl_s16(v241).u64[0];
              v246 = v244 + vmovl_s16(v243).i32[0] * *&v245;
              *a7.i64 = a9.i32[0];
              v245.i16[0] = v240[1];
              *a8.i64 = vmovl_s16(v245).i32[0];
              *a6.i64 = v246 + *a7.i64 * *a8.i64;
              v238 = v238 + *a6.i64;
              v237 += 4;
              v240 += 4;
              v239 += 4;
            }

            while (v237 <= v123);
            *&v247 = v238 * a4;
            v10->i32[v236++] = v247;
            v235 = (v235 + v234);
          }

          while (v236 != v15);
          ++v232;
          v10 = (v10 + 4 * v251);
          v233 = (v233 + v234);
        }

        while (v232 != v15);
      }

      else
      {
        v125 = 0;
        v126 = (v9 + 2);
        v127 = 2 * v12;
        v128 = &v9[v124];
        do
        {
          v129 = v128;
          v130 = v126;
          v131 = v125;
          do
          {
            v132 = 0;
            v133 = 0.0;
            v134 = v126;
            v135 = v130;
            do
            {
              a6.i16[0] = *(v134 - 2);
              a7.i16[0] = *(v135 - 2);
              a8.i16[0] = *(v134 - 1);
              a9.i16[0] = *(v135 - 1);
              *&v136 = vmovl_s16(*a9.f32).i32[0];
              *&v137 = vmovl_s16(*a8.f32).i32[0] * *&v136;
              *&v138 = vmovl_s16(*a7.f32).i32[0];
              v139 = *&v137 + vmovl_s16(*a6.f32).i32[0] * *&v138;
              v138.i16[0] = *v134;
              v137.i16[0] = *v135;
              *&v140 = vmovl_s16(v137).i32[0];
              v136.i16[0] = v134[1];
              a9.i64[0] = vmovl_s16(v136).u64[0];
              v141 = v139 + vmovl_s16(v138).i32[0] * *&v140;
              *a7.i64 = a9.i32[0];
              v140.i16[0] = v135[1];
              *a8.i64 = vmovl_s16(v140).i32[0];
              *a6.i64 = v141 + *a7.i64 * *a8.i64;
              v133 = v133 + *a6.i64;
              v132 += 4;
              v135 += 4;
              v134 += 4;
            }

            while (v132 <= v123);
            v142 = v128;
            result = v129;
            v143 = (v123 & 0xFFFFFFFC) + 4;
            do
            {
              v144 = *v142++;
              *a6.i64 = v144;
              v145 = *result;
              result += 2;
              *a7.i64 = v145;
              v133 = v133 + *a6.i64 * v145;
              ++v143;
            }

            while (v17 > v143);
            *&v146 = v133 * a4;
            v10->i32[v131++] = v146;
            v130 = (v130 + v127);
            v129 += v127;
          }

          while (v131 != v15);
          ++v125;
          v10 = (v10 + 4 * v251);
          v126 = (v126 + v127);
          v128 = (v128 + v127);
        }

        while (v125 != v15);
      }
    }

    else if (v16 <= 0)
    {
      v223 = 0;
      v224 = a4 * 0.0;
      *&v224 = v224;
      v225 = vdupq_lane_s32(*&v224, 0);
      v226 = v10 + 1;
      v227 = v15;
      do
      {
        v228 = v15 - v223;
        v229 = v223;
        if ((v15 - v223) < 8)
        {
          goto LABEL_112;
        }

        v230 = v227 & 0xFFFFFFFFFFFFFFF8;
        v229 = v223 + (v228 & 0xFFFFFFFFFFFFFFF8);
        v231 = v226;
        do
        {
          v231[-1] = v225;
          *v231 = v225;
          v231 += 2;
          v230 -= 8;
        }

        while (v230);
        if (v228 != (v228 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_112:
          do
          {
            v10->i32[v229++] = LODWORD(v224);
          }

          while (v15 != v229);
        }

        ++v223;
        --v227;
        v226 = (v226 + 4 * v251 + 4);
        v10 = (v10 + 4 * v251);
      }

      while (v223 != v15);
    }

    else
    {
      v115 = 0;
      v116 = (v9 + 2);
      v117 = 2 * v12;
      v118 = v15;
      do
      {
        v119 = &v9[v12 * v115];
        a6.i16[0] = *v119;
        *a6.i64 = vmovl_s16(*a6.f32).i32[0];
        v120 = v118;
        v121 = v10;
        v122 = v116;
        do
        {
          a7.i16[0] = *(v122 - 2);
          *a7.i64 = *a6.i64 * vmovl_s16(*a7.f32).i32[0] + 0.0;
          if (v16 != 1)
          {
            a8.i16[0] = v119[1];
            *a8.i64 = vmovl_s16(*a8.f32).i32[0];
            a9.i16[0] = *(v122 - 1);
            *a9.i64 = vmovl_s16(*a9.f32).i32[0];
            *a7.i64 = *a7.i64 + *a8.i64 * *a9.i64;
            if (v17 != 2)
            {
              a8.i16[0] = v119[2];
              *a8.i64 = vmovl_s16(*a8.f32).i32[0];
              a9.i16[0] = *v122;
              *a9.i64 = vmovl_s16(*a9.f32).i32[0];
              *a7.i64 = *a7.i64 + *a8.i64 * *a9.i64;
            }
          }

          *a7.i64 = *a7.i64 * a4;
          a7.f32[0] = *a7.i64;
          v121->i32[0] = a7.i32[0];
          v121 = (v121 + 4);
          v122 = (v122 + v117);
          --v120;
        }

        while (v120);
        ++v115;
        v116 = (v116 + v117);
        v10 = (v10 + 4 * v251 + 4);
        --v118;
      }

      while (v115 != v15);
    }
  }

  return result;
}

_BYTE *sub_10024EED0(void *a1, uint64_t a2, uint64_t a3, __n128 a4, float64x2_t a5, __n128 a6, double a7, __n128 a8)
{
  v143 = a4.n128_f64[0];
  v8 = a1[2];
  v9 = *(a2 + 16);
  v10 = *(a3 + 16);
  v11 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a3 + 80) >> 3;
  }

  v13 = a1[8];
  v15 = *v13;
  v14 = v13[1];
  if (v10)
  {
    v16 = *(a3 + 12) < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  v18 = 40 * v15;
  if (!v16)
  {
    v18 = 8 * v15;
  }

  result = v144;
  if (v18 >= 0x409)
  {
    operator new[]();
  }

  v20 = v11 >> 1;
  v21 = *(a2 + 80) >> 3;
  if ((v17 & 1) == 0)
  {
    v22 = &v144[8 * v15];
    if (v15 < 1)
    {
      goto LABEL_54;
    }

    v23 = 0;
    if (v15 >= 6 && v12 == 1)
    {
      if (v22 >= &v10->n128_u64[v15] || v10 >= &v144[32 * v15 + 8 * v15])
      {
        v23 = v15 & 0x7FFFFFFC;
        v25 = &v145[8 * v15 + 56];
        v26 = v10 + 1;
        v27 = v23;
        do
        {
          v28 = v26[-1];
          a8 = *v26;
          v29 = v28;
          a6 = v28;
          v30 = v28;
          v31 = *v26;
          v32 = *v26;
          v33 = *v26;
          v34 = v25 - 8;
          vst4q_f64(v34, *(&a6 - 2));
          vst4q_f64(v25, *a8.n128_u64);
          v25 += 16;
          v26 += 2;
          v27 -= 4;
        }

        while (v27);
        if (v23 == v15)
        {
LABEL_54:
          v12 = 4 * (v12 != 0);
          v10 = &v144[8 * v15];
          if (v14 < 1)
          {
            return result;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    v64 = &v144[32 * v23 + 8 * v15];
    v65 = &v10->n128_f64[v12 * v23];
    v67 = v15 - v23;
    do
    {
      v68 = vld1q_dup_f64(v65);
      v66 = 8 * v12;
      v65 = (v65 + v66);
      *v64 = v68;
      v64[1] = v68;
      v64 += 2;
      --v67;
    }

    while (v67);
    goto LABEL_54;
  }

  if (!v10)
  {
    if (v14 < 1)
    {
      return result;
    }

    v35 = v14 - 4;
    if (v15 > 0)
    {
      v36 = 0;
      v37 = 2 * v20;
      for (i = v8; ; ++i)
      {
        v39 = v15 & 0x7FFFFFFE;
        v40 = v145;
        v41 = i;
        if (v15 == 1)
        {
          break;
        }

        do
        {
          a4.n128_u16[0] = *v41;
          a4.n128_f64[0] = vmovl_s16(a4.n128_u64[0]).i32[0];
          LOWORD(a5.f64[0]) = v41[v20];
          a5.f64[0] = vmovl_s16(*&a5.f64[0]).i32[0];
          *(v40 - 1) = a4.n128_f64[0];
          *v40 = a5.f64[0];
          v41 += 2 * v20;
          v40 += 2;
          v39 -= 2;
        }

        while (v39);
        v42 = v15 & 0x7FFFFFFE;
        if (v42 != v15)
        {
          goto LABEL_38;
        }

LABEL_40:
        v46 = i;
        v47 = v36;
        if (v36 <= v35)
        {
          do
          {
            v48 = 0uLL;
            v49 = v46;
            v50 = v15;
            v51 = v144;
            v52 = 0uLL;
            do
            {
              v53 = vmovl_s16(*v49);
              v54.i64[0] = v53.i32[0];
              v54.i64[1] = v53.i32[1];
              v55 = vcvtq_f64_s64(v54);
              v56 = vld1q_dup_f64(v51++);
              v54.i64[0] = v53.i32[2];
              v54.i64[1] = v53.i32[3];
              v52 = vmlaq_f64(v52, vcvtq_f64_s64(v54), v56);
              v48 = vmlaq_f64(v48, v55, v56);
              v49 = (v49 + v37);
              --v50;
            }

            while (v50);
            a6.n128_f64[0] = v143;
            a5 = vmulq_n_f64(v52, v143);
            a4 = vmulq_n_f64(v48, v143);
            v57 = &v9->i64[v47];
            *v57 = a4;
            *(v57 + 1) = a5;
            v47 += 4;
            ++v46;
          }

          while (v35 >= v47);
          v47 = v47;
          if (v47 >= v14)
          {
            goto LABEL_33;
          }

LABEL_47:
          v58 = &v8[v47];
          do
          {
            v59 = 0.0;
            v60 = v58;
            v61 = v15;
            v62 = v144;
            do
            {
              v63 = *v62++;
              a6.n128_u16[0] = *v60;
              a6.n128_f64[0] = vmovl_s16(a6.n128_u64[0]).i32[0];
              v59 = v59 + v63 * a6.n128_f64[0];
              v60 = (v60 + v37);
              --v61;
            }

            while (v61);
            a5.f64[0] = v143;
            a4.n128_f64[0] = v59 * v143;
            v9->i64[v47++] = a4.n128_u64[0];
            ++v58;
          }

          while (v14 > v47);
          goto LABEL_33;
        }

        v47 = v36;
        if (v36 < v14)
        {
          goto LABEL_47;
        }

LABEL_33:
        ++v36;
        v9 = (v9 + 8 * v21);
        if (v36 == v14)
        {
          return result;
        }
      }

      v42 = 0;
LABEL_38:
      v43 = v37 * v42;
      v44 = &v144[8 * v42];
      v45 = v15 - v42;
      do
      {
        a4.n128_u16[0] = *(i + v43);
        a4.n128_f64[0] = vmovl_s16(a4.n128_u64[0]).i32[0];
        *v44++ = a4.n128_f64[0];
        v43 += v37;
        --v45;
      }

      while (v45);
      goto LABEL_40;
    }

    v116 = 0;
    v117 = a4.n128_f64[0] * 0.0;
    v118 = vdupq_lane_s64(COERCE__INT64(v143 * 0.0), 0);
    v119 = v14 - 3;
    v120 = v9 + 4;
    v121 = 8 * v21;
    v122 = 4;
    for (j = -1; ; --j)
    {
      if (v122 <= v119)
      {
        v124 = v14 - 3;
      }

      else
      {
        v124 = v122;
      }

      v125 = v116 + 4;
      if (v116 + 4 <= v119)
      {
        v125 = v14 - 3;
      }

      if (v116 <= v35)
      {
        v127 = v125 + ~v116;
        v128 = v116;
        if (v127 <= 0xB)
        {
          goto LABEL_102;
        }

        v129 = (((v124 + j) >> 2) + 1) & 0x7FFFFFFC;
        v130 = (v127 >> 2) + 1;
        v128 = v116 + 4 * (v130 & 0x7FFFFFFC);
        v126 = v116;
        v131 = v120;
        do
        {
          v131[-4] = v118;
          v131[-3] = v118;
          v131[-2] = v118;
          v131[-1] = v118;
          *v131 = v118;
          v131[1] = v118;
          v131[2] = v118;
          v131[3] = v118;
          v131 += 8;
          v126 += 16;
          v129 -= 4;
        }

        while (v129);
        if ((v130 & 0x7FFFFFFC) != v130)
        {
LABEL_102:
          v132 = 8 * v128;
          v126 = v128;
          do
          {
            v133 = (v9 + v132);
            *v133 = v118;
            v133[1] = v118;
            v132 += 32;
            v126 += 4;
          }

          while (v35 >= v126);
        }
      }

      else
      {
        v126 = v116;
      }

      if (v126 >= v14)
      {
        goto LABEL_90;
      }

      v134 = v126;
      v135 = (v14 + ~v126);
      if (v135 > 2)
      {
        v137 = v135 + 1;
        v138 = (v135 + 1) & 0x1FFFFFFFCLL;
        v136 = v138 + v134;
        v139 = 8 * v134;
        v140 = v138;
        do
        {
          v141 = (v9 + v139);
          *v141 = v118;
          v141[1] = v118;
          v139 += 32;
          v140 -= 4;
        }

        while (v140);
        if (v137 == v138)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v136 = v134;
      }

      v142 = v136;
      do
      {
        *&v9->i64[v142++] = v117;
        LODWORD(v136) = v136 + 1;
      }

      while (v14 > v136);
LABEL_90:
      ++v116;
      v120 = (v120 + v121 + 8);
      ++v122;
      v9 = (v9 + v121);
      if (v116 == v14)
      {
        return result;
      }
    }
  }

  v22 = 0;
  if (v14 >= 1)
  {
LABEL_55:
    v69 = 0;
    v70 = v14 - 4;
    v71 = 8 * v12;
    v72 = vdupq_lane_s64(COERCE__INT64(v143 * 0.0), 0);
    v73 = 2 * v20;
    v74 = 8 * v21;
    v75 = v10;
    v76 = v8;
    do
    {
      if (v22)
      {
        v77 = v15;
        v78 = v76;
        v79 = v22;
        v80 = v144;
        if (v15 >= 1)
        {
          do
          {
            a6.n128_u16[0] = *v78;
            a6.n128_f64[0] = vmovl_s16(a6.n128_u64[0]).i32[0] - *v79;
            *v80++ = a6.n128_u64[0];
            v79 = (v79 + v71);
            v78 = (v78 + v73);
            --v77;
          }

          while (v77);
        }
      }

      else if (v15 >= 1)
      {
        v81 = v15;
        v82 = v76;
        v83 = v75;
        v84 = v144;
        do
        {
          a6.n128_u16[0] = *v82;
          a6.n128_f64[0] = vmovl_s16(a6.n128_u64[0]).i32[0] - *v83;
          *v84++ = a6.n128_u64[0];
          v83 = (v83 + v71);
          v82 = (v82 + v73);
          --v81;
        }

        while (v81);
      }

      LODWORD(v85) = v69;
      v86 = v76;
      v87 = v69;
      if (v69 <= v70)
      {
        do
        {
          a6 = v72;
          v97 = v72;
          if (v15 >= 1)
          {
            v98 = &v10->n128_u64[v87];
            if (v22)
            {
              v98 = v22;
            }

            v99 = 0uLL;
            v100 = v86;
            v101 = v15;
            v102 = v144;
            v103 = 0uLL;
            do
            {
              v104 = vmovl_s16(*v100);
              v105.i64[0] = v104.i32[2];
              v105.i64[1] = v104.i32[3];
              v106 = vcvtq_f64_s64(v105);
              v105.i64[0] = v104.i32[0];
              v105.i64[1] = v104.i32[1];
              v107 = vld1q_dup_f64(v102++);
              v103 = vmlaq_f64(v103, vsubq_f64(v106, v98[1]), v107);
              v99 = vmlaq_f64(v99, vsubq_f64(vcvtq_f64_s64(v105), *v98), v107);
              v98 = (v98 + v71);
              v100 = (v100 + v73);
              --v101;
            }

            while (v101);
            a8.n128_f64[0] = v143;
            a6 = vmulq_n_f64(v99, v143);
            v97 = vmulq_n_f64(v103, v143);
          }

          v96 = &v9->i64[v87];
          *v96 = a6;
          *(v96 + 1) = v97;
          v85 = v87 + 4;
          ++v86;
          v87 = v85;
        }

        while (v70 >= v85);
      }

      if (v85 >= v14)
      {
        goto LABEL_56;
      }

      v88 = v85;
      if (v15 >= 1)
      {
        v89 = &v8[v85];
        do
        {
          v90 = &v10->n128_f64[v88];
          if (v22)
          {
            v90 = v22;
          }

          v91 = 0.0;
          v92 = v89;
          v93 = v15;
          v94 = v144;
          do
          {
            v95 = *v94++;
            a8.n128_u16[0] = *v92;
            a8.n128_f64[0] = vmovl_s16(a8.n128_u64[0]).i32[0] - *v90;
            v91 = v91 + v95 * a8.n128_f64[0];
            v90 = (v90 + v71);
            v92 = (v92 + v73);
            --v93;
          }

          while (v93);
          a6.n128_f64[0] = v91 * v143;
          v9->i64[v88++] = a6.n128_u64[0];
          ++v89;
        }

        while (v14 > v88);
        goto LABEL_56;
      }

      v108 = (v14 + ~v85);
      if (v108 > 2)
      {
        v110 = v108 + 1;
        v111 = (v108 + 1) & 0x1FFFFFFFCLL;
        v109 = v111 + v88;
        v112 = 8 * v88;
        v113 = v111;
        do
        {
          v114 = (v9 + v112);
          *v114 = v72;
          v114[1] = v72;
          v112 += 32;
          v113 -= 4;
        }

        while (v113);
        if (v110 == v111)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v109 = v85;
      }

      v115 = v109;
      do
      {
        *&v9->i64[v115++] = v143 * 0.0;
        LODWORD(v109) = v109 + 1;
      }

      while (v14 > v109);
LABEL_56:
      ++v69;
      v9 = (v9 + v74);
      ++v76;
      ++v75;
    }

    while (v69 != v14);
  }

  return result;
}

void sub_10024F674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10024F6A4(uint64_t result, uint64_t a2, uint64_t a3, double a4, float64x2_t a5, float64x2_t a6, float64x2_t a7, double a8, int16x4_t a9)
{
  v9 = *(result + 16);
  v10 = *(a2 + 16);
  v11 = *(a3 + 16);
  v12 = *(result + 80) >> 1;
  v222 = *(a2 + 80) >> 3;
  if (*(a3 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 80) >> 3;
  }

  v14 = *(result + 64);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[1];
  if (v11)
  {
    v18 = *(a3 + 12);
    result = v223;
    if ((8 * v16) >= 0x409)
    {
      operator new[]();
    }

    if (v15 >= 1)
    {
      v19 = 0;
      v20 = 32 * (v18 == v16);
      v21 = 2 * v12;
      v22 = 16 * ((v16 >> 3) & 0xFFFFFFF);
      v23 = &v9->i16[2];
      v24 = *(a3 + 16);
      v221 = v16 & 0x7FFFFFF8;
      do
      {
        if (v18 >= v17)
        {
          if (v17 >= 1)
          {
            v27 = 0;
            if (v17 < 8)
            {
              goto LABEL_91;
            }

            v28 = v16 & 0x7FFFFFF8;
            v29 = v223;
            v30 = v24;
            v31 = v9;
            if (v223 + -8 * v13 * v19 - v11 < 0x40)
            {
              goto LABEL_91;
            }

            do
            {
              v32 = *v31++;
              v33 = vmovl_high_s16(v32);
              v34.i64[0] = v33.i32[2];
              v34.i64[1] = v33.i32[3];
              v35 = vcvtq_f64_s64(v34);
              v34.i64[0] = v33.i32[0];
              v34.i64[1] = v33.i32[1];
              v36 = vcvtq_f64_s64(v34);
              v37 = vmovl_s16(*v32.i8);
              v34.i64[0] = v37.i32[2];
              v34.i64[1] = v37.i32[3];
              v38 = vcvtq_f64_s64(v34);
              v34.i64[0] = v37.i32[0];
              v34.i64[1] = v37.i32[1];
              v40 = v30[2];
              v39 = v30[3];
              v42 = *v30;
              v41 = v30[1];
              v30 += 4;
              a5 = vsubq_f64(vcvtq_f64_s64(v34), v42);
              a7 = vsubq_f64(v35, v39);
              v29[2] = vsubq_f64(v36, v40);
              v29[3] = a7;
              a6 = vsubq_f64(v38, v41);
              *v29 = a5;
              v29[1] = a6;
              v29 += 4;
              v28 -= 8;
            }

            while (v28);
            v27 = v16 & 0x7FFFFFF8;
            if (v221 != v16)
            {
LABEL_91:
              do
              {
                LOWORD(a5.f64[0]) = v9->i16[v27];
                a6.f64[0] = v24->f64[v27];
                a5.f64[0] = vmovl_s16(*&a5.f64[0]).i32[0] - a6.f64[0];
                v223[v27++] = *&a5.f64[0];
              }

              while (v16 != v27);
            }
          }

          goto LABEL_25;
        }

        if (v16 >= 1)
        {
          v25 = *(v11 + 8 * v13 * v19);
          if (v16 >= 8)
          {
            v43 = 0;
            a6 = vdupq_lane_s64(v25, 0);
            v44 = v223;
            do
            {
              v45 = v9[v43 / 0x10];
              v46 = vmovl_high_s16(v45);
              v47.i64[0] = v46.i32[2];
              v47.i64[1] = v46.i32[3];
              v48 = vcvtq_f64_s64(v47);
              v47.i64[0] = v46.i32[0];
              v47.i64[1] = v46.i32[1];
              v49 = vcvtq_f64_s64(v47);
              v50 = vmovl_s16(*v45.i8);
              v47.i64[0] = v50.i32[2];
              v47.i64[1] = v50.i32[3];
              v51 = vcvtq_f64_s64(v47);
              v47.i64[0] = v50.i32[0];
              v47.i64[1] = v50.i32[1];
              a7 = vsubq_f64(vcvtq_f64_s64(v47), a6);
              v44[2] = vsubq_f64(v49, a6);
              v44[3] = vsubq_f64(v48, a6);
              *v44 = a7;
              v44[1] = vsubq_f64(v51, a6);
              v44 += 4;
              v43 += 16;
            }

            while (v22 != v43);
            v26 = v16 & 0x7FFFFFF8;
            if (v221 == v16)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v26 = 0;
          }

          do
          {
            LOWORD(a6.f64[0]) = v9->i16[v26];
            a6.f64[0] = vmovl_s16(*&a6.f64[0]).i32[0] - *&v25;
            v223[v26++] = *&a6.f64[0];
          }

          while (v16 != v26);
        }

LABEL_25:
        v52 = v9;
        v53 = v23;
        v54 = v19;
        do
        {
          v55 = (v11 + 8 * v13 * v54);
          if (v18 < v16)
          {
            v226 = v55->f64[0];
            v227 = v226;
            *v225 = v226;
            *&v225[1] = v226;
            v55 = v225;
          }

          if (v17 >= 4)
          {
            v58 = 0;
            f64 = v55[1].f64;
            v57 = 0.0;
            v60 = v53;
            v61 = &v224;
            do
            {
              LOWORD(a6.f64[0]) = *(v60 - 2);
              LOWORD(a7.f64[0]) = *(v60 - 1);
              *&v62 = *(v61 - 1) * (vmovl_s16(*&a7.f64[0]).i32[0] - *(f64 - 1));
              v63 = *&v62 + *(v61 - 2) * (vmovl_s16(*&a6.f64[0]).i32[0] - *(f64 - 2));
              v62.i16[0] = *v60;
              *&v64 = vmovl_s16(v62).i32[0] - *f64;
              v65 = *v61;
              v66 = v61[1];
              v61 += 4;
              v67 = v63 + v65 * *&v64;
              v64.i16[0] = v60[1];
              a7.f64[0] = vmovl_s16(v64).i32[0] - f64[1];
              a6.f64[0] = v67 + v66 * a7.f64[0];
              v58 += 4;
              v57 = v57 + a6.f64[0];
              f64 = (f64 + v20);
              v60 += 4;
            }

            while (v58 <= v16 - 4);
            v55 = (v55 + v20 * (((v16 - 4) >> 2) + 1));
            v56 = ((v16 - 4) & 0xFFFFFFFC) + 4;
            if (v56 >= v17)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v56 = 0;
            v57 = 0.0;
            if (v17 <= 0)
            {
              goto LABEL_26;
            }
          }

          v68 = v56;
          v69 = (v16 + ~v56);
          if (v69 <= 6)
          {
            v70 = v68;
            v71 = v55;
            do
            {
LABEL_40:
              *&a6.f64[0] = v223[v70];
              LOWORD(a7.f64[0]) = v52->i16[v70];
              v90 = *v71++;
              a7.f64[0] = vmovl_s16(*&a7.f64[0]).i32[0] - v90;
              v57 = v57 + a6.f64[0] * a7.f64[0];
              ++v70;
            }

            while (v17 > v70);
            goto LABEL_26;
          }

          v72 = v69 + 1;
          v73 = (v69 + 1) & 0x1FFFFFFF8;
          v71 = &v55->f64[v73];
          v70 = v73 + v68;
          v74 = &v223[v68];
          v75 = (v52 + 2 * v68);
          v76 = v73;
          do
          {
            v77 = *v75++;
            v78 = vmovl_high_s16(v77);
            v79.i64[0] = v78.i32[2];
            v79.i64[1] = v78.i32[3];
            v80 = vcvtq_f64_s64(v79);
            v79.i64[0] = v78.i32[0];
            v79.i64[1] = v78.i32[1];
            v81 = vcvtq_f64_s64(v79);
            v82 = vmovl_s16(*v77.i8);
            v79.i64[0] = v82.i32[2];
            v79.i64[1] = v82.i32[3];
            v83 = vcvtq_f64_s64(v79);
            v79.i64[0] = v82.i32[0];
            v79.i64[1] = v82.i32[1];
            v85 = v55[2];
            v84 = v55[3];
            v87 = *v55;
            v86 = v55[1];
            v55 += 4;
            v88 = vmulq_f64(v74[3], vsubq_f64(v80, v84));
            v89 = vmulq_f64(v74[2], vsubq_f64(v81, v85));
            a7 = vmulq_f64(v74[1], vsubq_f64(v83, v86));
            a6 = vmulq_f64(*v74, vsubq_f64(vcvtq_f64_s64(v79), v87));
            v57 = v57 + a6.f64[0] + a6.f64[1] + a7.f64[0] + a7.f64[1] + v89.f64[0] + v89.f64[1] + v88.f64[0] + v88.f64[1];
            v74 += 4;
            v76 -= 8;
          }

          while (v76);
          if (v72 != v73)
          {
            goto LABEL_40;
          }

LABEL_26:
          a5.f64[0] = v57 * a4;
          v10->i64[v54++] = *&a5.f64[0];
          v53 = (v53 + v21);
          v52 = (v52 + v21);
        }

        while (v54 != v15);
        v10 = (v10 + 8 * v222);
        ++v19;
        v9 = (v9 + v21);
        v24 = (v24 + 8 * v13);
        v23 = (v23 + v21);
        v22 = 16 * ((v16 >> 3) & 0xFFFFFFF);
      }

      while (v19 != v15);
    }
  }

  else if (v15 >= 1)
  {
    if (v17 >= 4)
    {
      v99 = (v16 - 4);
      v100 = (v99 & 0xFFFFFFFC) + 4;
      if (v99 >= 0x1C)
      {
        v122 = 0;
        v123 = (v99 >> 2) + 1;
        v124 = 2 * v12;
        do
        {
          v125 = v9;
          result = v122;
          do
          {
            v126 = 0.0;
            v127 = v123 & 0x3FFFFFF8;
            v128 = v125;
            v129 = v9;
            do
            {
              v228 = vld4q_s16(v129);
              v129 += 32;
              v130 = vmovl_s16(*v228.val[0].i8);
              v229 = vld4q_s16(v128);
              v128 += 32;
              v131.i64[0] = v130.i32[0];
              v131.i64[1] = v130.i32[1];
              v132 = vcvtq_f64_s64(v131);
              v131.i64[0] = v130.i32[2];
              v131.i64[1] = v130.i32[3];
              v133 = v131;
              v134 = vmovl_high_s16(v228.val[0]);
              v131.i64[0] = v134.i32[0];
              v131.i64[1] = v134.i32[1];
              v135 = vcvtq_f64_s64(v133);
              v136 = vcvtq_f64_s64(v131);
              v131.i64[0] = v134.i32[2];
              v131.i64[1] = v134.i32[3];
              v137 = vcvtq_f64_s64(v131);
              v138 = vmovl_s16(*v229.val[0].i8);
              v131.i64[0] = v138.i32[0];
              v131.i64[1] = v138.i32[1];
              v139 = vcvtq_f64_s64(v131);
              v131.i64[0] = v138.i32[2];
              v131.i64[1] = v138.i32[3];
              v140 = vcvtq_f64_s64(v131);
              v141 = vmovl_high_s16(v229.val[0]);
              v131.i64[0] = v141.i32[0];
              v131.i64[1] = v141.i32[1];
              v142 = v131;
              v131.i64[0] = v141.i32[2];
              v131.i64[1] = v141.i32[3];
              v143 = vcvtq_f64_s64(v142);
              v144 = vcvtq_f64_s64(v131);
              v145 = vmovl_high_s16(v228.val[1]);
              v131.i64[0] = v145.i32[2];
              v131.i64[1] = v145.i32[3];
              v146 = vcvtq_f64_s64(v131);
              v131.i64[0] = v145.i32[0];
              v131.i64[1] = v145.i32[1];
              v147 = vcvtq_f64_s64(v131);
              v148 = vmovl_s16(*v228.val[1].i8);
              v131.i64[0] = v148.i32[2];
              v131.i64[1] = v148.i32[3];
              v149 = vcvtq_f64_s64(v131);
              v131.i64[0] = v148.i32[0];
              v131.i64[1] = v148.i32[1];
              v150 = vmovl_high_s16(v229.val[1]);
              v151 = vcvtq_f64_s64(v131);
              v131.i64[0] = v150.i32[2];
              v131.i64[1] = v150.i32[3];
              v152 = vcvtq_f64_s64(v131);
              v131.i64[0] = v150.i32[0];
              v131.i64[1] = v150.i32[1];
              v153 = v131;
              v154 = vmovl_s16(*v229.val[1].i8);
              v131.i64[0] = v154.i32[2];
              v131.i64[1] = v154.i32[3];
              v155 = vcvtq_f64_s64(v153);
              v156 = vcvtq_f64_s64(v131);
              v131.i64[0] = v154.i32[0];
              v131.i64[1] = v154.i32[1];
              v157 = vmulq_f64(v151, vcvtq_f64_s64(v131));
              v158 = vmulq_f64(v147, v155);
              v159 = vmulq_f64(v146, v152);
              v160 = vmovl_high_s16(v228.val[2]);
              v131.i64[0] = v160.i32[2];
              v131.i64[1] = v160.i32[3];
              v161 = vcvtq_f64_s64(v131);
              v131.i64[0] = v160.i32[0];
              v131.i64[1] = v160.i32[1];
              v162 = vmlaq_f64(v159, v144, v137);
              v163 = vcvtq_f64_s64(v131);
              v164 = vmovl_s16(*v228.val[2].i8);
              v131.i64[0] = v164.i32[2];
              v131.i64[1] = v164.i32[3];
              v165 = vcvtq_f64_s64(v131);
              v131.i64[0] = v164.i32[0];
              v131.i64[1] = v164.i32[1];
              v166 = vmlaq_f64(v158, v143, v136);
              v167 = vcvtq_f64_s64(v131);
              v168 = vmovl_high_s16(v229.val[2]);
              v131.i64[0] = v168.i32[2];
              v131.i64[1] = v168.i32[3];
              v169 = vcvtq_f64_s64(v131);
              v131.i64[0] = v168.i32[0];
              v131.i64[1] = v168.i32[1];
              v170 = vmlaq_f64(v157, v139, v132);
              v171 = vcvtq_f64_s64(v131);
              v172 = vmovl_s16(*v229.val[2].i8);
              v131.i64[0] = v172.i32[2];
              v131.i64[1] = v172.i32[3];
              v173 = vcvtq_f64_s64(v131);
              v131.i64[0] = v172.i32[0];
              v131.i64[1] = v172.i32[1];
              v174 = vmlaq_f64(vmulq_f64(v149, v156), v140, v135);
              v175 = vcvtq_f64_s64(v131);
              v176 = vmovl_s16(*v228.val[3].i8);
              v131.i64[0] = v176.i32[0];
              v131.i64[1] = v176.i32[1];
              v177 = vcvtq_f64_s64(v131);
              v131.i64[0] = v176.i32[2];
              v131.i64[1] = v176.i32[3];
              v178 = vmlaq_f64(v170, v175, v167);
              v179 = vcvtq_f64_s64(v131);
              v228.val[0] = vmovl_high_s16(v228.val[3]);
              v131.i64[0] = v228.val[0].i32[0];
              v131.i64[1] = v228.val[0].i32[1];
              v228.val[1] = vcvtq_f64_s64(v131);
              v131.i64[0] = v228.val[0].i32[2];
              v131.i64[1] = v228.val[0].i32[3];
              v228.val[0] = vcvtq_f64_s64(v131);
              v228.val[2] = vmovl_s16(*v229.val[3].i8);
              v131.i64[0] = v228.val[2].i32[0];
              v131.i64[1] = v228.val[2].i32[1];
              v180 = vcvtq_f64_s64(v131);
              v131.i64[0] = v228.val[2].i32[2];
              v131.i64[1] = v228.val[2].i32[3];
              v228.val[2] = vcvtq_f64_s64(v131);
              v229.val[0] = vmovl_high_s16(v229.val[3]);
              v131.i64[0] = v229.val[0].i32[0];
              v131.i64[1] = v229.val[0].i32[1];
              v229.val[1] = vcvtq_f64_s64(v131);
              v131.i64[0] = v229.val[0].i32[2];
              v131.i64[1] = v229.val[0].i32[3];
              v181 = vmlaq_f64(vmlaq_f64(v162, v169, v161), vcvtq_f64_s64(v131), v228.val[0]);
              v182 = v181.f64[1];
              v183 = vmlaq_f64(vmlaq_f64(v166, v171, v163), v229.val[1], v228.val[1]);
              v184 = vmlaq_f64(vmlaq_f64(v174, v173, v165), v228.val[2], v179);
              v185 = v184.f64[1];
              v186 = vmlaq_f64(v178, v180, v177);
              v187 = v183.f64[1];
              v126 = v126 + v186.f64[0] + v186.f64[1] + v184.f64[0] + v184.f64[1] + v183.f64[0] + v183.f64[1] + v181.f64[0] + v181.f64[1];
              v127 -= 8;
            }

            while (v127);
            v188 = (((v123 >> 3) & 0x7FFFFFF) << 6) | 4;
            v189 = 4 * (v123 & 0x3FFFFFF8);
            if (v123 != (v123 & 0x3FFFFFF8))
            {
              do
              {
                LOWORD(v182) = *(&v9->i16[-2] + v188);
                LOWORD(v185) = *(v125 + v188 - 4);
                LOWORD(v187) = *(&v9->i16[-1] + v188);
                LOWORD(v180.f64[0]) = *(v125 + v188 - 2);
                *&v190 = vmovl_s16(*&v180.f64[0]).i32[0];
                *&v191 = vmovl_s16(*&v185).i32[0];
                *&v192 = vmovl_s16(*&v187).i32[0] * *&v190;
                v190.i16[0] = *(v9->i16 + v188);
                v180.f64[0] = vmovl_s16(v190).i32[0];
                v193 = *&v192 + vmovl_s16(*&v182).i32[0] * *&v191;
                v191.i16[0] = *(v125 + v188);
                v192.i16[0] = *(&v9->i16[1] + v188);
                v194 = v193 + v180.f64[0] * vmovl_s16(v191).i32[0];
                v191.i32[0] = vmovl_s16(v192).u32[0];
                v192.i16[0] = *(v125 + v188 + 2);
                v185 = v191.i32[0];
                v187 = vmovl_s16(v192).i32[0];
                v182 = v194 + v185 * v187;
                v126 = v126 + v182;
                v189 += 4;
                v188 += 8;
              }

              while (v189 <= v99);
            }

            v195 = (v99 & 0xFFFFFFFC) + 4;
            v196 = v100;
            if (v100 < v17)
            {
              do
              {
                LOWORD(v182) = v9->i16[v196];
                v182 = vmovl_s16(*&v182).i32[0];
                LOWORD(v185) = v125[v196];
                v185 = vmovl_s16(*&v185).i32[0];
                v126 = v126 + v182 * v185;
                ++v196;
                ++v195;
              }

              while (v17 > v195);
            }

            *&v10->i64[result++] = v126 * a4;
            v125 = (v125 + v124);
          }

          while (result != v15);
          ++v122;
          v10 = (v10 + 8 * v222);
          v9 = (v9 + v124);
        }

        while (v122 != v15);
      }

      else if (v100 >= v16)
      {
        v206 = 0;
        v207 = &v9->i16[2];
        v208 = 2 * v12;
        do
        {
          v209 = v207;
          v210 = v206;
          do
          {
            v211 = 0;
            v212 = 0.0;
            v213 = v207;
            v214 = v209;
            do
            {
              LOWORD(a6.f64[0]) = *(v213 - 2);
              LOWORD(a7.f64[0]) = *(v214 - 2);
              LOWORD(a8) = *(v213 - 1);
              a9.i16[0] = *(v214 - 1);
              *&v215 = vmovl_s16(a9).i32[0];
              *&v216 = vmovl_s16(*&a8).i32[0] * *&v215;
              *&v217 = vmovl_s16(*&a7.f64[0]).i32[0];
              v218 = *&v216 + vmovl_s16(*&a6.f64[0]).i32[0] * *&v217;
              v217.i16[0] = *v213;
              v216.i16[0] = *v214;
              *&v219 = vmovl_s16(v216).i32[0];
              v215.i16[0] = v213[1];
              a9 = vmovl_s16(v215).u64[0];
              v220 = v218 + vmovl_s16(v217).i32[0] * *&v219;
              a7.f64[0] = a9.i32[0];
              v219.i16[0] = v214[1];
              a8 = vmovl_s16(v219).i32[0];
              a6.f64[0] = v220 + a7.f64[0] * a8;
              v212 = v212 + a6.f64[0];
              v211 += 4;
              v214 += 4;
              v213 += 4;
            }

            while (v211 <= v99);
            *&v10->i64[v210++] = v212 * a4;
            v209 = (v209 + v208);
          }

          while (v210 != v15);
          ++v206;
          v10 = (v10 + 8 * v222);
          v207 = (v207 + v208);
        }

        while (v206 != v15);
      }

      else
      {
        v101 = 0;
        v102 = &v9->i16[2];
        v103 = 2 * v12;
        v104 = &v9->i16[v100];
        do
        {
          v105 = v104;
          v106 = v102;
          v107 = v101;
          do
          {
            v108 = 0;
            v109 = 0.0;
            v110 = v102;
            v111 = v106;
            do
            {
              LOWORD(a6.f64[0]) = *(v110 - 2);
              LOWORD(a7.f64[0]) = *(v111 - 2);
              LOWORD(a8) = *(v110 - 1);
              a9.i16[0] = *(v111 - 1);
              *&v112 = vmovl_s16(a9).i32[0];
              *&v113 = vmovl_s16(*&a8).i32[0] * *&v112;
              *&v114 = vmovl_s16(*&a7.f64[0]).i32[0];
              v115 = *&v113 + vmovl_s16(*&a6.f64[0]).i32[0] * *&v114;
              v114.i16[0] = *v110;
              v113.i16[0] = *v111;
              *&v116 = vmovl_s16(v113).i32[0];
              v112.i16[0] = v110[1];
              a9 = vmovl_s16(v112).u64[0];
              v117 = v115 + vmovl_s16(v114).i32[0] * *&v116;
              a7.f64[0] = a9.i32[0];
              v116.i16[0] = v111[1];
              a8 = vmovl_s16(v116).i32[0];
              a6.f64[0] = v117 + a7.f64[0] * a8;
              v109 = v109 + a6.f64[0];
              v108 += 4;
              v111 += 4;
              v110 += 4;
            }

            while (v108 <= v99);
            v118 = v104;
            result = v105;
            v119 = (v99 & 0xFFFFFFFC) + 4;
            do
            {
              v120 = *v118++;
              a6.f64[0] = v120;
              v121 = *result;
              result += 2;
              a7.f64[0] = v121;
              v109 = v109 + a6.f64[0] * v121;
              ++v119;
            }

            while (v17 > v119);
            *&v10->i64[v107++] = v109 * a4;
            v106 = (v106 + v103);
            v105 += v103;
          }

          while (v107 != v15);
          ++v101;
          v10 = (v10 + 8 * v222);
          v102 = (v102 + v103);
          v104 = (v104 + v103);
        }

        while (v101 != v15);
      }
    }

    else if (v16 <= 0)
    {
      v197 = 0;
      v198 = a4 * 0.0;
      v199 = vdupq_lane_s64(*&v198, 0);
      v200 = v10 + 1;
      v201 = v15;
      do
      {
        v202 = v15 - v197;
        v203 = v197;
        if ((v15 - v197) < 4)
        {
          goto LABEL_92;
        }

        v204 = v201 & 0xFFFFFFFFFFFFFFFCLL;
        v203 = v197 + (v202 & 0xFFFFFFFFFFFFFFFCLL);
        v205 = v200;
        do
        {
          v205[-1] = v199;
          *v205 = v199;
          v205 += 2;
          v204 -= 4;
        }

        while (v204);
        if (v202 != (v202 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_92:
          do
          {
            *&v10->i64[v203++] = v198;
          }

          while (v15 != v203);
        }

        ++v197;
        --v201;
        v200 = (v200 + 8 * v222 + 8);
        v10 = (v10 + 8 * v222);
      }

      while (v197 != v15);
    }

    else
    {
      v91 = 0;
      v92 = &v9->i16[2];
      v93 = 2 * v12;
      v94 = v15;
      do
      {
        v95 = &v9->i16[v12 * v91];
        LOWORD(a6.f64[0]) = *v95;
        a6.f64[0] = vmovl_s16(*&a6.f64[0]).i32[0];
        v96 = v94;
        v97 = v10;
        v98 = v92;
        do
        {
          LOWORD(a7.f64[0]) = *(v98 - 2);
          a7.f64[0] = a6.f64[0] * vmovl_s16(*&a7.f64[0]).i32[0] + 0.0;
          if (v16 != 1)
          {
            LOWORD(a8) = v95[1];
            a8 = vmovl_s16(*&a8).i32[0];
            a9.i16[0] = *(v98 - 1);
            *&a9 = vmovl_s16(a9).i32[0];
            a7.f64[0] = a7.f64[0] + a8 * *&a9;
            if (v17 != 2)
            {
              LOWORD(a8) = v95[2];
              a8 = vmovl_s16(*&a8).i32[0];
              a9.i16[0] = *v98;
              *&a9 = vmovl_s16(a9).i32[0];
              a7.f64[0] = a7.f64[0] + a8 * *&a9;
            }
          }

          a7.f64[0] = a7.f64[0] * a4;
          *v97++ = *&a7.f64[0];
          v98 = (v98 + v93);
          --v96;
        }

        while (v96);
        ++v91;
        v92 = (v92 + v93);
        v10 = (v10 + 8 * v222 + 8);
        --v94;
      }

      while (v91 != v15);
    }
  }

  return result;
}

_BYTE *sub_100250320(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1[2];
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a3 + 80) >> 2;
  }

  v9 = a1[8];
  v10 = v9[1];
  v11 = *v9;
  if (v6)
  {
    v12 = *(a3 + 12) < v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = !v12;
  v14 = 20 * v11;
  if (!v12)
  {
    v14 = 4 * v11;
  }

  result = v114;
  if (v14 >= 0x409)
  {
    operator new[]();
  }

  v16 = v7 >> 2;
  v17 = *(a2 + 80) >> 2;
  if ((v13 & 1) == 0)
  {
    v18 = &v114[4 * v11];
    if (v11 < 1)
    {
      goto LABEL_36;
    }

    v19 = v11 >= 8 && v8 == 1;
    if (v19 && (v18 < &v6->f32[v11] ? (v20 = v6 >= &v114[16 * v11 + 4 * v11]) : (v20 = 1), v20))
    {
      v21 = v11 & 0x7FFFFFF8;
      f32 = v18[4].f32;
      v23 = v6 + 1;
      v24 = v21;
      do
      {
        v115.val[0] = v23[-1];
        v116.val[0] = *v23;
        v115.val[1] = v115.val[0];
        v115.val[2] = v115.val[0];
        v115.val[3] = v115.val[0];
        v116.val[1] = *v23;
        v116.val[2] = *v23;
        v116.val[3] = *v23;
        v25 = f32 - 16;
        vst4q_f32(v25, v115);
        vst4q_f32(f32, v116);
        f32 += 32;
        v23 += 2;
        v24 -= 8;
      }

      while (v24);
      if (v21 == v11)
      {
LABEL_36:
        v8 = 4 * (v8 != 0);
        v6 = &v114[4 * v11];
        if (v10 < 1)
        {
          return result;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v21 = 0;
    }

    v26 = &v114[16 * v21 + 4 * v11];
    v27 = &v6->f32[v8 * v21];
    v29 = v11 - v21;
    do
    {
      v30 = vld1q_dup_f32(v27);
      v28 = 4 * v8;
      v27 = (v27 + v28);
      *v26++ = v30;
      --v29;
    }

    while (v29);
    goto LABEL_36;
  }

  if (!v6)
  {
    if (v10 < 1)
    {
      return result;
    }

    v77 = 0;
    v78 = v10 - 4;
    v79 = a4 * 0.0;
    *&v79 = a4 * 0.0;
    v80 = vdupq_lane_s32(*&v79, 0);
    v81 = 4 * v16;
    v82 = 4 * v17;
    for (i = v4; ; i = (i + 4))
    {
      v84 = v11;
      v85 = i;
      v86 = v114;
      if (v11 >= 1)
      {
        do
        {
          *v86++ = v85->i32[0];
          v85 = (v85 + v81);
          --v84;
        }

        while (v84);
      }

      LODWORD(v87) = v77;
      v88 = i;
      v89 = v77;
      if (v77 <= v78)
      {
        do
        {
          v98 = v80;
          if (v11 >= 1)
          {
            v99 = 0uLL;
            v100 = v88;
            v101 = v11;
            v102 = v114;
            v103 = 0uLL;
            do
            {
              v104 = *v102++;
              v103 = vmlaq_n_f64(v103, vcvt_hight_f64_f32(*v100), v104);
              v99 = vmlaq_n_f64(v99, vcvtq_f64_f32(*v100->f32), v104);
              v100 = (v100 + v81);
              --v101;
            }

            while (v101);
            v98 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v99, a4)), vmulq_n_f64(v103, a4));
          }

          *(v5 + 4 * v89) = v98;
          v87 = v89 + 4;
          ++v88;
          v89 = v87;
        }

        while (v78 >= v87);
      }

      if (v87 >= v10)
      {
        goto LABEL_73;
      }

      v90 = v87;
      if (v11 >= 1)
      {
        v91 = &v4->f32[v87];
        do
        {
          v92 = 0.0;
          v93 = v91;
          v94 = v11;
          v95 = v114;
          do
          {
            v96 = *v95++;
            v92 = v92 + v96 * *v93;
            v93 = (v93 + v81);
            --v94;
          }

          while (v94);
          v97 = v92 * a4;
          *(v5 + 4 * v90++) = v97;
          ++v91;
        }

        while (v10 > v90);
        goto LABEL_73;
      }

      v105 = (v10 + ~v87);
      if (v105 > 6)
      {
        v107 = v105 + 1;
        v108 = (v105 + 1) & 0x1FFFFFFF8;
        v106 = v108 + v90;
        v109 = 4 * v90;
        v110 = v108;
        do
        {
          v111 = (v5 + v109);
          *v111 = v80;
          v111[1] = v80;
          v109 += 32;
          v110 -= 8;
        }

        while (v110);
        if (v107 == v108)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v106 = v87;
      }

      v112 = 4 * v106;
      do
      {
        *(v5 + v112) = LODWORD(v79);
        v112 += 4;
        LODWORD(v106) = v106 + 1;
      }

      while (v10 > v106);
LABEL_73:
      ++v77;
      v5 += v82;
      if (v77 == v10)
      {
        return result;
      }
    }
  }

  v18 = 0;
  if (v10 >= 1)
  {
LABEL_37:
    v31 = 0;
    v32 = v10 - 4;
    v33 = a4 * 0.0;
    *&v33 = a4 * 0.0;
    v34 = 4 * v8;
    v35 = vdupq_lane_s32(*&v33, 0);
    v36 = 4 * v16;
    v37 = 4 * v17;
    v38 = v6;
    v39 = v4;
    do
    {
      if (v18)
      {
        v40 = v11;
        v41 = v39;
        v42 = v18;
        v43 = v114;
        if (v11 >= 1)
        {
          do
          {
            *v43++ = *v41 - *v42;
            v42 = (v42 + v34);
            v41 = (v41 + v36);
            --v40;
          }

          while (v40);
        }
      }

      else if (v11 >= 1)
      {
        v44 = v11;
        v45 = v39;
        v46 = v38;
        v47 = v114;
        do
        {
          *v47++ = *v45 - *v46;
          v46 = (v46 + v34);
          v45 = (v45 + v36);
          --v44;
        }

        while (v44);
      }

      LODWORD(v48) = v31;
      v49 = v39;
      v50 = v31;
      if (v31 <= v32)
      {
        do
        {
          v60 = v35;
          if (v11 >= 1)
          {
            v61 = (v6 + 4 * v50);
            if (v18)
            {
              v61 = v18;
            }

            v62 = 0uLL;
            v63 = v49;
            v64 = v11;
            v65 = v114;
            v66 = 0uLL;
            do
            {
              v67 = *v65++;
              v68 = vsubq_f32(*v63, *v61);
              v66 = vmlaq_n_f64(v66, vcvt_hight_f64_f32(v68), v67);
              v62 = vmlaq_n_f64(v62, vcvtq_f64_f32(*v68.f32), v67);
              v61 = (v61 + v34);
              v63 = (v63 + v36);
              --v64;
            }

            while (v64);
            v60 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v62, a4)), vmulq_n_f64(v66, a4));
          }

          *(v5 + 4 * v50) = v60;
          v48 = v50 + 4;
          ++v49;
          v50 = v48;
        }

        while (v32 >= v48);
      }

      if (v48 >= v10)
      {
        goto LABEL_38;
      }

      v51 = v48;
      if (v11 >= 1)
      {
        v52 = &v4->f32[v48];
        do
        {
          v53 = &v6->f32[v51];
          if (v18)
          {
            v53 = v18;
          }

          v54 = 0.0;
          v55 = v52;
          v56 = v11;
          v57 = v114;
          do
          {
            v58 = *v57++;
            v54 = v54 + v58 * (*v55 - *v53);
            v53 = (v53 + v34);
            v55 = (v55 + v36);
            --v56;
          }

          while (v56);
          v59 = v54 * a4;
          *(v5 + 4 * v51++) = v59;
          ++v52;
        }

        while (v10 > v51);
        goto LABEL_38;
      }

      v69 = (v10 + ~v48);
      if (v69 > 6)
      {
        v71 = v69 + 1;
        v72 = (v69 + 1) & 0x1FFFFFFF8;
        v70 = v72 + v51;
        v73 = 4 * v51;
        v74 = v72;
        do
        {
          v75 = (v5 + v73);
          *v75 = v35;
          v75[1] = v35;
          v73 += 32;
          v74 -= 8;
        }

        while (v74);
        if (v71 == v72)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v70 = v48;
      }

      v76 = 4 * v70;
      do
      {
        *(v5 + v76) = LODWORD(v33);
        v76 += 4;
        LODWORD(v70) = v70 + 1;
      }

      while (v10 > v70);
LABEL_38:
      ++v31;
      v5 += v37;
      ++v39;
      ++v38;
    }

    while (v31 != v10);
  }

  return result;
}

void sub_100250954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

float32x4_t *sub_100250984(float32x4_t *result, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = result[1].i64[0];
  v6 = *(a2 + 16);
  v7 = *(a3 + 16);
  v8 = result[5].i64[0] >> 2;
  v145 = *(a2 + 80) >> 2;
  if (*(a3 + 8) <= 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a3 + 80) >> 2;
  }

  v10 = result[4].i64[0];
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[1];
  if (!v7)
  {
    if (v11 < 1)
    {
      return result;
    }

    if (v12 < 4)
    {
      if (v13 <= 0)
      {
        v132 = 0;
        v133 = a4 * 0.0;
        *&v133 = v133;
        v134 = vdupq_lane_s32(*&v133, 0);
        v135 = (v6 + 4);
        v136 = v11;
        do
        {
          v137 = v11 - v132;
          v138 = v132;
          if ((v11 - v132) < 8)
          {
            goto LABEL_87;
          }

          v139 = v136 & 0xFFFFFFFFFFFFFFF8;
          v138 = v132 + (v137 & 0xFFFFFFFFFFFFFFF8);
          v140 = v135;
          do
          {
            v140[-1] = v134;
            *v140 = v134;
            v140 += 2;
            v139 -= 8;
          }

          while (v139);
          if (v137 != (v137 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_87:
            do
            {
              v6[v138++] = *&v133;
            }

            while (v11 != v138);
          }

          ++v132;
          --v136;
          v135 = (v135 + 4 * v145 + 4);
          v6 += v145;
        }

        while (v132 != v11);
      }

      else
      {
        v84 = 0;
        v85 = &v5->f32[2];
        v86 = 4 * v8;
        v87 = v11;
        do
        {
          v88 = &v5->f32[v8 * v84];
          v89 = v87;
          v90 = v6;
          v91 = v85;
          do
          {
            v93 = *v88 * *(v91 - 2) + 0.0;
            if (v12 != 1)
            {
              v93 = v93 + v88[1] * *(v91 - 1);
              if (v13 != 2)
              {
                v93 = v93 + v88[2] * *v91;
              }
            }

            v92 = v93 * a4;
            *v90++ = v92;
            v91 = (v91 + v86);
            --v89;
          }

          while (v89);
          ++v84;
          v85 = (v85 + v86);
          v6 += v145 + 1;
          --v87;
        }

        while (v84 != v11);
      }

      return result;
    }

    v94 = 0;
    v95 = (v13 - 4);
    v96 = (v95 & 0xFFFFFFFC) + 4;
    v97 = v13 - (v95 & 0xFFFFFFFC) - 5;
    v98 = (v95 >> 2) + 1;
    v99 = (v97 + 1) & 0x1FFFFFFF8;
    result = v5 + 2;
    v100 = 4 * v8;
    v101 = &v5->i64[1];
    v102 = v5[1].i64 + 4 * v96;
LABEL_61:
    v103 = v5;
    v104 = v102;
    v149 = v101;
    v151 = v94;
    v105 = result;
    while (v95 >= 0xC)
    {
      v108 = 0.0;
      v109 = v98 & 0x3FFFFFFC;
      v110 = v105;
      v111 = result;
      do
      {
        f32 = v111[-2].f32;
        v156 = vld4_f32(f32);
        v157 = vld4_f32(v111->f32);
        v113 = v110 - 8;
        v158 = vld4_f32(v113);
        v159 = vld4_f32(v110);
        v114 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v156.val[1]), vcvtq_f64_f32(v158.val[1])), vcvtq_f64_f32(v158.val[0]), vcvtq_f64_f32(v156.val[0])), vcvtq_f64_f32(v158.val[2]), vcvtq_f64_f32(v156.val[2])), vcvtq_f64_f32(v158.val[3]), vcvtq_f64_f32(v156.val[3]));
        v115 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v157.val[1]), vcvtq_f64_f32(v159.val[1])), vcvtq_f64_f32(v159.val[0]), vcvtq_f64_f32(v157.val[0])), vcvtq_f64_f32(v159.val[2]), vcvtq_f64_f32(v157.val[2])), vcvtq_f64_f32(v159.val[3]), vcvtq_f64_f32(v157.val[3]));
        v108 = v108 + v114.f64[0] + v114.f64[1] + v115.f64[0] + v115.f64[1];
        v111 += 4;
        v110 += 16;
        v109 -= 4;
      }

      while (v109);
      v107 = 2 * (v98 & 0x3FFFFFFC);
      if (v98 != (v98 & 0x3FFFFFFC))
      {
        goto LABEL_68;
      }

LABEL_70:
      if (v96 < v13)
      {
        v120 = (v95 & 0xFFFFFFFC) + 4;
        v121 = v102;
        v122 = v104;
        v123 = (v97 + 1) & 0x1FFFFFFF8;
        if (v97 < 7)
        {
          goto LABEL_74;
        }

        do
        {
          v124 = v121[-1];
          v125 = vcvtq_f64_f32(*v124.f32);
          v126 = v122[-1];
          v127 = vmulq_f64(vcvt_hight_f64_f32(v124), vcvt_hight_f64_f32(v126));
          v128 = vmulq_f64(v125, vcvtq_f64_f32(*v126.f32));
          v129 = vmulq_f64(vcvt_hight_f64_f32(*v121), vcvt_hight_f64_f32(*v122));
          v130 = vmulq_f64(vcvtq_f64_f32(*v121->f32), vcvtq_f64_f32(*v122->f32));
          v108 = v108 + v128.f64[0] + v128.f64[1] + v127.f64[0] + v127.f64[1] + v130.f64[0] + v130.f64[1] + v129.f64[0] + v129.f64[1];
          v122 += 2;
          v121 += 2;
          v123 -= 8;
        }

        while (v123);
        v120 = v99 + v96;
        if (v97 + 1 != v99)
        {
LABEL_74:
          v131 = v120;
          do
          {
            v108 = v108 + v5->f32[v131] * v103->f32[v131];
            ++v131;
            LODWORD(v120) = v120 + 1;
          }

          while (v12 > v120);
        }
      }

      v106 = v108 * a4;
      v6[v94++] = v106;
      v105 = (v105 + v100);
      v101 = (v101 + v100);
      v104 = (v104 + v100);
      v103 = (v103 + v100);
      if (v94 == v11)
      {
        v6 += v145;
        v94 = v151 + 1;
        result = (result + v100);
        v5 = (v5 + v100);
        v101 = (v149 + v100);
        v102 += v100;
        if (v151 + 1 == v11)
        {
          return result;
        }

        goto LABEL_61;
      }
    }

    v107 = 0;
    v108 = 0.0;
LABEL_68:
    v117 = v101;
    v118 = v5;
    v119 = v107 * 2;
    do
    {
      v116 = v107 * 2;
      v108 = v108 + v118->f32[v116 + 1] * *(v117 + v116 * 4 - 4) + v118[v107 / 2].f32[0] * *(v117 + v116 * 4 - 8) + v118->f32[v116 + 2] * *&v117[v107] + v118->f32[v116 + 3] * *(v117 + v116 * 4 + 4);
      v119 += 4;
      ++v118;
      v117 += 2;
    }

    while (v119 <= v95);
    goto LABEL_70;
  }

  v14 = *(a3 + 12);
  result = v152;
  if ((4 * v12) >= 0x409)
  {
    operator new[]();
  }

  if (v11 >= 1)
  {
    v15 = 0;
    v144 = (v152 - v5);
    v16 = 4 * v8;
    v143 = -4 * v8;
    v142 = 4 * v9;
    v141 = v13 & 0x7FFFFFF8;
    v17 = v5 + 1;
    v18 = v7 + 1;
    v19 = &v5->f32[2];
    v20 = *(a3 + 16);
    do
    {
      v21 = &v144[v143 * v15];
      if (v14 < v13)
      {
        if (v12 >= 1)
        {
          v22 = 0;
          LODWORD(a5) = v7->i32[v9 * v15];
          if (v12 < 8)
          {
            goto LABEL_88;
          }

          if (v21 < 0x20)
          {
            goto LABEL_88;
          }

          v23 = vdupq_lane_s32(*&a5, 0);
          v24 = v13 & 0x7FFFFFF8;
          v25 = v154;
          v26 = v17;
          do
          {
            v27 = vsubq_f32(*v26, v23);
            v25[-1] = vsubq_f32(v26[-1], v23);
            *v25 = v27;
            v26 += 2;
            v25 += 2;
            v24 -= 8;
          }

          while (v24);
          v22 = v13 & 0x7FFFFFF8;
          if (v141 != v12)
          {
LABEL_88:
            do
            {
              *&v152[v22] = v5->f32[v22] - *&a5;
              ++v22;
            }

            while (v12 != v22);
          }
        }

        goto LABEL_24;
      }

      if (v13 >= 1)
      {
        if (v13 > 7)
        {
          v28 = 0;
          if (v21 >= 0x20 && (v152 - v7 + -4 * v9 * v15) >= 0x20)
          {
            v79 = v18;
            v80 = v154;
            v81 = v17;
            v82 = v13 & 0x7FFFFFF8;
            do
            {
              v83 = vsubq_f32(*v81, *v79);
              v80[-1] = vsubq_f32(v81[-1], v79[-1]);
              *v80 = v83;
              v81 += 2;
              v80 += 2;
              v79 += 2;
              v82 -= 8;
            }

            while (v82);
            v28 = v13 & 0x7FFFFFF8;
            if (v141 == v12)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v28 = 0;
        }

        v29 = &v152[v28];
        v30 = (v20 + 4 * v28);
        v31 = &v5->f32[v28];
        v32 = v12 - v28;
        do
        {
          v33 = *v31++;
          v34 = v33;
          v35 = *v30++;
          *v29++ = v34 - v35;
          --v32;
        }

        while (v32);
      }

LABEL_24:
      v146 = v20;
      v147 = v19;
      v148 = v18;
      v150 = v17;
      v36 = v5;
      v37 = v15;
      do
      {
        v38 = &v7->f32[v9 * v37];
        if (v14 < v12)
        {
          v39 = vld1q_dup_f32(v38);
          v155 = v39;
          v38 = &v155;
        }

        if (v13 >= 4)
        {
          v42 = 0;
          v43 = (v38 + 2);
          v41 = 0.0;
          v44 = v19;
          v45 = &v153;
          do
          {
            v46 = (*(v44 - 2) - *(v43 - 2));
            v47 = *(v45 - 1) * (*(v44 - 1) - *(v43 - 1));
            v48 = *v44;
            v49 = v44[1];
            v44 += 4;
            v50 = v47 + *(v45 - 2) * v46;
            *&v47 = v48 - *v43;
            v51 = *v45;
            v52 = v45[1];
            v45 += 4;
            v42 += 4;
            v41 = v41 + v50 + v51 * *&v47 + v52 * (v49 - v43[1]);
            v43 += 4 * (v14 == v12);
          }

          while (v42 <= v13 - 4);
          v38 = (v38 + 16 * (v14 == v12) * (((v13 - 4) >> 2) + 1));
          v40 = ((v13 - 4) & 0xFFFFFFFC) + 4;
          if (v40 >= v12)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v40 = 0;
          v41 = 0.0;
          if (v12 <= 0)
          {
            goto LABEL_25;
          }
        }

        v53 = v40;
        v54 = v12 + ~v40;
        if (v54 <= 6)
        {
          v55 = v53;
          v56 = v38;
LABEL_39:
          v72 = &v36->f32[v55];
          v73 = &v152[v55];
          do
          {
            v74 = *v73++;
            v75 = v74;
            v76 = *v72++;
            v77 = v76;
            v78 = *v56++;
            v41 = v41 + v75 * (v77 - v78);
            LODWORD(v55) = v55 + 1;
          }

          while (v12 > v55);
          goto LABEL_25;
        }

        v57 = v54 + 1;
        v58 = (v54 + 1) & 0x1FFFFFFF8;
        v55 = v58 + v53;
        v56 = &v38[v58];
        v59 = 4 * v53;
        v60 = (v17 + v59);
        v61 = (v38 + 4);
        v62 = &v154[v59];
        v63 = v58;
        do
        {
          v64 = v62[-1];
          v65 = vcvtq_f64_f32(*v64.f32);
          v66 = vsubq_f32(v60[-1], v61[-1]);
          v67 = vsubq_f32(*v60, *v61);
          v68 = vmulq_f64(vcvt_hight_f64_f32(v64), vcvt_hight_f64_f32(v66));
          v69 = vmulq_f64(v65, vcvtq_f64_f32(*v66.f32));
          v70 = vmulq_f64(vcvt_hight_f64_f32(*v62), vcvt_hight_f64_f32(v67));
          v71 = vmulq_f64(vcvtq_f64_f32(*v62->f32), vcvtq_f64_f32(*v67.f32));
          v41 = v41 + v69.f64[0] + v69.f64[1] + v68.f64[0] + v68.f64[1] + v71.f64[0] + v71.f64[1] + v70.f64[0] + v70.f64[1];
          v60 += 2;
          v61 += 2;
          v62 += 2;
          v63 -= 8;
        }

        while (v63);
        if (v57 != v58)
        {
          goto LABEL_39;
        }

LABEL_25:
        a5 = v41 * a4;
        *&a5 = a5;
        v6[v37++] = *&a5;
        v19 = (v19 + v16);
        v17 = (v17 + v16);
        v36 = (v36 + v16);
      }

      while (v37 != v11);
      ++v15;
      v6 += v145;
      v17 = (v150 + v16);
      v18 = (v148 + v142);
      v20 = v146 + v142;
      v5 = (v5 + v16);
      v19 = &v147[v16 / 4];
    }

    while (v15 != v11);
  }

  return result;
}

_BYTE *sub_1002512D4(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1[2];
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a3 + 80) >> 3;
  }

  v9 = a1[8];
  v11 = *v9;
  v10 = v9[1];
  if (v6)
  {
    v12 = *(a3 + 12) < v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = !v12;
  v14 = 40 * v11;
  if (!v12)
  {
    v14 = 8 * v11;
  }

  result = v133;
  if (v14 >= 0x409)
  {
    operator new[]();
  }

  v16 = v7 >> 2;
  v17 = *(a2 + 80) >> 3;
  if ((v13 & 1) == 0)
  {
    v18 = &v133[8 * v11];
    if (v11 < 1)
    {
      goto LABEL_54;
    }

    v19 = 0;
    if (v11 >= 6 && v8 == 1)
    {
      if (v18 >= &v6->f64[v11] || v6 >= &v133[32 * v11 + 8 * v11])
      {
        v19 = v11 & 0x7FFFFFFC;
        v21 = &v134[8 * v11 + 56];
        v22 = v6 + 1;
        v23 = v19;
        do
        {
          v135.val[0] = v22[-1];
          v136.val[0] = *v22;
          v135.val[1] = v135.val[0];
          v135.val[2] = v135.val[0];
          v135.val[3] = v135.val[0];
          v136.val[1] = *v22;
          v136.val[2] = *v22;
          v136.val[3] = *v22;
          v24 = v21 - 8;
          vst4q_f64(v24, v135);
          vst4q_f64(v21, v136);
          v21 += 16;
          v22 += 2;
          v23 -= 4;
        }

        while (v23);
        if (v19 == v11)
        {
LABEL_54:
          v8 = 4 * (v8 != 0);
          v6 = &v133[8 * v11];
          if (v10 < 1)
          {
            return result;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    v53 = &v133[32 * v19 + 8 * v11];
    v54 = &v6->f64[v8 * v19];
    v56 = v11 - v19;
    do
    {
      v57 = vld1q_dup_f64(v54);
      v55 = 8 * v8;
      v54 = (v54 + v55);
      *v53 = v57;
      v53[1] = v57;
      v53 += 2;
      --v56;
    }

    while (v56);
    goto LABEL_54;
  }

  if (!v6)
  {
    if (v10 < 1)
    {
      return result;
    }

    v25 = v10 - 4;
    if (v11 > 0)
    {
      v26 = 0;
      v27 = 4 * v16;
      v28 = (v4 + 2);
      for (i = v4; ; ++i)
      {
        v30 = v11 & 0x7FFFFFFE;
        v31 = v134;
        v32 = i;
        if (v11 == 1)
        {
          break;
        }

        do
        {
          v34 = v32[v16];
          *(v31 - 1) = *v32;
          *v31 = v34;
          v32 += 2 * v16;
          v31 += 2;
          v30 -= 2;
        }

        while (v30);
        v33 = v11 & 0x7FFFFFFE;
        if (v33 != v11)
        {
          goto LABEL_38;
        }

LABEL_40:
        v38 = v28;
        v39 = v26;
        if (v26 <= v25)
        {
          do
          {
            v40 = 0uLL;
            v41 = v38;
            v42 = v11;
            v43 = v133;
            v44 = 0uLL;
            do
            {
              v45 = vld1q_dup_f64(v43++);
              v40 = vmlaq_f64(v40, vcvtq_f64_f32(v41[-1]), v45);
              v44 = vmlaq_f64(v44, vcvtq_f64_f32(*v41), v45);
              v41 = (v41 + v27);
              --v42;
            }

            while (v42);
            v46 = (v5 + 8 * v39);
            *v46 = vmulq_n_f64(v40, a4);
            v46[1] = vmulq_n_f64(v44, a4);
            v39 += 4;
            v38 += 2;
          }

          while (v25 >= v39);
          v39 = v39;
          if (v39 >= v10)
          {
            goto LABEL_33;
          }

LABEL_47:
          v47 = &v4[v39];
          do
          {
            v48 = 0.0;
            v49 = v47;
            v50 = v11;
            v51 = v133;
            do
            {
              v52 = *v51++;
              v48 = v48 + v52 * *v49;
              v49 = (v49 + v27);
              --v50;
            }

            while (v50);
            *&v5->i64[v39++] = v48 * a4;
            ++v47;
          }

          while (v10 > v39);
          goto LABEL_33;
        }

        v39 = v26;
        if (v26 < v10)
        {
          goto LABEL_47;
        }

LABEL_33:
        ++v26;
        v5 = (v5 + 8 * v17);
        v28 = (v28 + 4);
        if (v26 == v10)
        {
          return result;
        }
      }

      v33 = 0;
LABEL_38:
      v35 = v27 * v33;
      v36 = &v133[8 * v33];
      v37 = v11 - v33;
      do
      {
        *v36++ = *(i + v35);
        v35 += v27;
        --v37;
      }

      while (v37);
      goto LABEL_40;
    }

    v105 = 0;
    v106 = a4 * 0.0;
    v107 = vdupq_lane_s64(COERCE__INT64(a4 * 0.0), 0);
    v108 = v10 - 3;
    v109 = v5 + 4;
    v110 = 8 * v17;
    v111 = 4;
    for (j = -1; ; --j)
    {
      if (v111 <= v108)
      {
        v113 = v10 - 3;
      }

      else
      {
        v113 = v111;
      }

      v114 = v105 + 4;
      if (v105 + 4 <= v108)
      {
        v114 = v10 - 3;
      }

      if (v105 <= v25)
      {
        v116 = v114 + ~v105;
        v117 = v105;
        if (v116 <= 0xB)
        {
          goto LABEL_102;
        }

        v118 = (((v113 + j) >> 2) + 1) & 0x7FFFFFFC;
        v119 = (v116 >> 2) + 1;
        v117 = v105 + 4 * (v119 & 0x7FFFFFFC);
        v115 = v105;
        v120 = v109;
        do
        {
          v120[-4] = v107;
          v120[-3] = v107;
          v120[-2] = v107;
          v120[-1] = v107;
          *v120 = v107;
          v120[1] = v107;
          v120[2] = v107;
          v120[3] = v107;
          v120 += 8;
          v115 += 16;
          v118 -= 4;
        }

        while (v118);
        if ((v119 & 0x7FFFFFFC) != v119)
        {
LABEL_102:
          v121 = 8 * v117;
          v115 = v117;
          do
          {
            v122 = (v5 + v121);
            *v122 = v107;
            v122[1] = v107;
            v121 += 32;
            v115 += 4;
          }

          while (v25 >= v115);
        }
      }

      else
      {
        v115 = v105;
      }

      if (v115 >= v10)
      {
        goto LABEL_90;
      }

      v123 = v115;
      v124 = (v10 + ~v115);
      if (v124 > 2)
      {
        v126 = v124 + 1;
        v127 = (v124 + 1) & 0x1FFFFFFFCLL;
        v125 = v127 + v123;
        v128 = 8 * v123;
        v129 = v127;
        do
        {
          v130 = (v5 + v128);
          *v130 = v107;
          v130[1] = v107;
          v128 += 32;
          v129 -= 4;
        }

        while (v129);
        if (v126 == v127)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v125 = v123;
      }

      v131 = v125;
      do
      {
        *&v5->i64[v131++] = v106;
        LODWORD(v125) = v125 + 1;
      }

      while (v10 > v125);
LABEL_90:
      ++v105;
      v109 = (v109 + v110 + 8);
      ++v111;
      v5 = (v5 + v110);
      if (v105 == v10)
      {
        return result;
      }
    }
  }

  v18 = 0;
  if (v10 >= 1)
  {
LABEL_55:
    v58 = 0;
    v59 = v10 - 4;
    v60 = 8 * v8;
    v61 = 4 * v16;
    v62 = vdupq_lane_s64(COERCE__INT64(a4 * 0.0), 0);
    v63 = (v4 + 2);
    v64 = 8 * v17;
    v65 = v6;
    v66 = v4;
    do
    {
      if (v18)
      {
        v67 = v11;
        v68 = v66;
        v69 = v18;
        v70 = v133;
        if (v11 >= 1)
        {
          do
          {
            *v70++ = *v68 - *v69;
            v69 = (v69 + v60);
            v68 = (v68 + v61);
            --v67;
          }

          while (v67);
        }
      }

      else if (v11 >= 1)
      {
        v71 = v11;
        v72 = v66;
        v73 = v65;
        v74 = v133;
        do
        {
          *v74++ = *v72 - *v73;
          v73 = (v73 + v60);
          v72 = (v72 + v61);
          --v71;
        }

        while (v71);
      }

      LODWORD(v75) = v58;
      v76 = v63;
      v77 = v58;
      if (v58 <= v59)
      {
        do
        {
          v87 = v62;
          v88 = v62;
          if (v11 >= 1)
          {
            v89 = (v6 + 8 * v77);
            if (v18)
            {
              v89 = v18;
            }

            v90 = v89 + 1;
            v91 = 0uLL;
            v92 = v76;
            v93 = v11;
            v94 = v133;
            v95 = 0uLL;
            do
            {
              v96 = vld1q_dup_f64(v94++);
              v91 = vmlaq_f64(v91, vsubq_f64(vcvtq_f64_f32(v92[-1]), v90[-1]), v96);
              v95 = vmlaq_f64(v95, vsubq_f64(vcvtq_f64_f32(*v92), *v90), v96);
              v90 = (v90 + v60);
              v92 = (v92 + v61);
              --v93;
            }

            while (v93);
            v87 = vmulq_n_f64(v91, a4);
            v88 = vmulq_n_f64(v95, a4);
          }

          v86 = (v5 + 8 * v77);
          *v86 = v87;
          v86[1] = v88;
          v75 = v77 + 4;
          v76 += 2;
          v77 = v75;
        }

        while (v59 >= v75);
      }

      if (v75 >= v10)
      {
        goto LABEL_56;
      }

      v78 = v75;
      if (v11 >= 1)
      {
        v79 = &v4[v75];
        do
        {
          v80 = &v6->f64[v78];
          if (v18)
          {
            v80 = v18;
          }

          v81 = 0.0;
          v82 = v79;
          v83 = v11;
          v84 = v133;
          do
          {
            v85 = *v84++;
            v81 = v81 + v85 * (*v82 - *v80);
            v80 = (v80 + v60);
            v82 = (v82 + v61);
            --v83;
          }

          while (v83);
          *&v5->i64[v78++] = v81 * a4;
          ++v79;
        }

        while (v10 > v78);
        goto LABEL_56;
      }

      v97 = (v10 + ~v75);
      if (v97 > 2)
      {
        v99 = v97 + 1;
        v100 = (v97 + 1) & 0x1FFFFFFFCLL;
        v98 = v100 + v78;
        v101 = 8 * v78;
        v102 = v100;
        do
        {
          v103 = (v5 + v101);
          *v103 = v62;
          v103[1] = v62;
          v101 += 32;
          v102 -= 4;
        }

        while (v102);
        if (v99 == v100)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v98 = v75;
      }

      v104 = v98;
      do
      {
        *&v5->i64[v104++] = a4 * 0.0;
        LODWORD(v98) = v98 + 1;
      }

      while (v10 > v98);
LABEL_56:
      ++v58;
      v5 = (v5 + v64);
      ++v66;
      ++v65;
      v63 = (v63 + 4);
    }

    while (v58 != v10);
  }

  return result;
}

void sub_100251A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

float32x2_t *sub_100251A74(float32x2_t *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = result[2];
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = *&result[10] >> 2;
  v148 = *(a2 + 80) >> 3;
  if (*(a3 + 8) <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a3 + 80) >> 3;
  }

  v9 = result[8];
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[1];
  if (!v6)
  {
    if (v10 < 1)
    {
      return result;
    }

    if (v11 < 4)
    {
      if (v12 <= 0)
      {
        v137 = 0;
        v138 = a4 * 0.0;
        v139 = vdupq_lane_s64(*&v138, 0);
        v140 = (v5 + 2);
        v141 = v10;
        do
        {
          v142 = v10 - v137;
          v143 = v137;
          if ((v10 - v137) < 4)
          {
            goto LABEL_83;
          }

          v144 = v141 & 0xFFFFFFFFFFFFFFFCLL;
          v143 = v137 + (v142 & 0xFFFFFFFFFFFFFFFCLL);
          v145 = v140;
          do
          {
            v145[-1] = v139;
            *v145 = v139;
            v145 += 2;
            v144 -= 4;
          }

          while (v144);
          if (v142 != (v142 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_83:
            do
            {
              v5[v143++] = v138;
            }

            while (v10 != v143);
          }

          ++v137;
          --v141;
          v140 = (v140 + 8 * v148 + 8);
          v5 += v148;
        }

        while (v137 != v10);
      }

      else
      {
        v90 = 0;
        v91 = v4 + 1;
        v92 = 4 * v7;
        v93 = v10;
        do
        {
          v94 = v4 + v7 * v90;
          v95 = *v94;
          v96 = v93;
          v97 = v5;
          v98 = v91;
          do
          {
            v99 = v95 * *(v98 - 2) + 0.0;
            if (v11 != 1)
            {
              v99 = v99 + v94[1] * *(v98 - 1);
              if (v12 != 2)
              {
                v99 = v99 + v94[2] * *v98;
              }
            }

            *v97++ = v99 * a4;
            v98 = (v98 + v92);
            --v96;
          }

          while (v96);
          ++v90;
          v91 = (v91 + v92);
          v5 += v148 + 1;
          --v93;
        }

        while (v90 != v10);
      }

      return result;
    }

    v100 = 0;
    v101 = (v12 - 4);
    v102 = (v101 & 0xFFFFFFFC) + 4;
    v103 = v12 - (v101 & 0xFFFFFFFC) - 5;
    v104 = (v101 >> 2) + 1;
    v105 = (v103 + 1) & 0x1FFFFFFF8;
    result = v4 + 4;
    v106 = 4 * v7;
    v107 = v4 + 1;
    v108 = &v4[2] + 4 * v102;
LABEL_57:
    v109 = v4;
    v110 = v108;
    v152 = v107;
    v154 = v100;
    v111 = result;
    while (v101 >= 0xC)
    {
      v113 = 0.0;
      v114 = v104 & 0x3FFFFFFC;
      v115 = v111;
      v116 = result;
      do
      {
        v117 = &v116[-4];
        v161 = vld4_f32(v117);
        v162 = vld4_f32(v116);
        v118 = v115 - 8;
        v163 = vld4_f32(v118);
        v164 = vld4_f32(v115);
        v119 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v161.val[1]), vcvtq_f64_f32(v163.val[1])), vcvtq_f64_f32(v163.val[0]), vcvtq_f64_f32(v161.val[0])), vcvtq_f64_f32(v163.val[2]), vcvtq_f64_f32(v161.val[2])), vcvtq_f64_f32(v163.val[3]), vcvtq_f64_f32(v161.val[3]));
        v120 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vcvtq_f64_f32(v162.val[1]), vcvtq_f64_f32(v164.val[1])), vcvtq_f64_f32(v164.val[0]), vcvtq_f64_f32(v162.val[0])), vcvtq_f64_f32(v164.val[2]), vcvtq_f64_f32(v162.val[2])), vcvtq_f64_f32(v164.val[3]), vcvtq_f64_f32(v162.val[3]));
        v113 = v113 + v119.f64[0] + v119.f64[1] + v120.f64[0] + v120.f64[1];
        v116 += 8;
        v115 += 16;
        v114 -= 4;
      }

      while (v114);
      v112 = 2 * (v104 & 0x3FFFFFFC);
      if (v104 != (v104 & 0x3FFFFFFC))
      {
        goto LABEL_64;
      }

LABEL_66:
      if (v102 < v12)
      {
        v125 = (v101 & 0xFFFFFFFC) + 4;
        v126 = v108;
        v127 = v110;
        v128 = (v103 + 1) & 0x1FFFFFFF8;
        if (v103 < 7)
        {
          goto LABEL_70;
        }

        do
        {
          v129 = v126[-1];
          v130 = vcvtq_f64_f32(*v129.f32);
          v131 = v127[-1];
          v132 = vmulq_f64(vcvt_hight_f64_f32(v129), vcvt_hight_f64_f32(v131));
          v133 = vmulq_f64(v130, vcvtq_f64_f32(*v131.f32));
          v134 = vmulq_f64(vcvt_hight_f64_f32(*v126), vcvt_hight_f64_f32(*v127));
          v135 = vmulq_f64(vcvtq_f64_f32(*v126->f32), vcvtq_f64_f32(*v127->f32));
          v113 = v113 + v133.f64[0] + v133.f64[1] + v132.f64[0] + v132.f64[1] + v135.f64[0] + v135.f64[1] + v134.f64[0] + v134.f64[1];
          v127 += 2;
          v126 += 2;
          v128 -= 8;
        }

        while (v128);
        v125 = v105 + v102;
        if (v103 + 1 != v105)
        {
LABEL_70:
          v136 = v125;
          do
          {
            v113 = v113 + v4->f32[v136] * v109->f32[v136];
            ++v136;
            LODWORD(v125) = v125 + 1;
          }

          while (v11 > v125);
        }
      }

      v5[v100++] = v113 * a4;
      v111 = (v111 + v106);
      v107 = (v107 + v106);
      v110 = (v110 + v106);
      v109 = (v109 + v106);
      if (v100 == v10)
      {
        v5 += v148;
        v100 = v154 + 1;
        result = (result + v106);
        v4 = (v4 + v106);
        v107 = (v152 + v106);
        v108 += v106;
        if (v154 + 1 == v10)
        {
          return result;
        }

        goto LABEL_57;
      }
    }

    v112 = 0;
    v113 = 0.0;
LABEL_64:
    v122 = v107;
    v123 = v4;
    v124 = v112 * 2;
    do
    {
      v121 = v112 * 2;
      v113 = v113 + v123->f32[v121 + 1] * v122->f32[v121 - 1] + v123[v112].f32[0] * v122[-1].f32[v121] + v123[1].f32[v121] * v122[v112].f32[0] + v123[1].f32[v121 + 1] * v122->f32[v121 + 1];
      v124 += 4;
      v123 += 2;
      v122 += 2;
    }

    while (v124 <= v101);
    goto LABEL_66;
  }

  v13 = *(a3 + 12);
  result = v155;
  if ((8 * v11) >= 0x409)
  {
    operator new[]();
  }

  if (v10 >= 1)
  {
    v153 = 0;
    v147 = 8 * v8;
    v146 = v11 & 0x7FFFFFF8;
    v14 = v4 + 2;
    v15 = 4 * v7;
    v16 = v6 + 2;
    v17 = 32 * ((v11 >> 3) & 0xFFFFFFF);
    v18 = v4 + 1;
    v19 = *(a3 + 16);
    do
    {
      if (v13 >= v12)
      {
        if (v12 >= 1)
        {
          v22 = 0;
          if (v12 < 8)
          {
            goto LABEL_19;
          }

          v23 = v16;
          v24 = v157;
          v25 = v14;
          v26 = v11 & 0x7FFFFFF8;
          if ((v155 - v6 + -8 * v8 * v153) < 0x40)
          {
            goto LABEL_19;
          }

          do
          {
            v27 = *v25[-2].f32;
            v29 = v23[-2];
            v28 = v23[-1];
            v31 = *v23;
            v30 = v23[1];
            v23 += 4;
            v32 = vsubq_f64(vcvtq_f64_f32(*v25), v31);
            v33 = vsubq_f64(vcvt_hight_f64_f32(*v25->f32), v30);
            v24[-2] = vsubq_f64(vcvtq_f64_f32(*v27.f32), v29);
            v24[-1] = vsubq_f64(vcvt_hight_f64_f32(v27), v28);
            *v24 = v32;
            v24[1] = v33;
            v24 += 4;
            v25 += 4;
            v26 -= 8;
          }

          while (v26);
          v22 = v11 & 0x7FFFFFF8;
          if (v146 != v11)
          {
LABEL_19:
            v34 = &v155[v22];
            v35 = (v19 + 8 * v22);
            v36 = v4 + v22;
            v37 = v11 - v22;
            do
            {
              v38 = *v36++;
              v39 = v38;
              v40 = *v35++;
              *v34++ = v39 - v40;
              --v37;
            }

            while (v37);
          }
        }

        goto LABEL_26;
      }

      if (v11 >= 1)
      {
        v20 = *&v6->f64[v8 * v153];
        if (v11 >= 8)
        {
          v41 = 0;
          v42 = vdupq_lane_s64(v20, 0);
          v43 = v157;
          do
          {
            v44 = *v4[v41 / 8].f32;
            v45 = *v14[v41 / 8].f32;
            v43[-2] = vsubq_f64(vcvtq_f64_f32(*v44.f32), v42);
            v43[-1] = vsubq_f64(vcvt_hight_f64_f32(v44), v42);
            *v43 = vsubq_f64(vcvtq_f64_f32(*v45.f32), v42);
            v43[1] = vsubq_f64(vcvt_hight_f64_f32(v45), v42);
            v43 += 4;
            v41 += 32;
          }

          while (v17 != v41);
          v21 = v11 & 0x7FFFFFF8;
          if (v146 == v11)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v21 = 0;
        }

        do
        {
          *&v155[v21] = v4->f32[v21] - *&v20;
          ++v21;
        }

        while (v11 != v21);
      }

LABEL_26:
      v149 = v19;
      v150 = v18;
      v151 = v16;
      v46 = v4;
      v47 = v14;
      v48 = v153;
      do
      {
        v49 = (v6 + 8 * v8 * v48);
        if (v13 < v11)
        {
          v159 = v49->f64[0];
          v160 = v159;
          *v158 = v159;
          *&v158[1] = v159;
          v49 = v158;
        }

        if (v12 >= 4)
        {
          v52 = 0;
          f64 = v49[1].f64;
          v51 = 0.0;
          v54 = v18;
          v55 = &v156;
          do
          {
            v56 = *(v55 - 1) * (*(v54 - 1) - *(f64 - 1)) + *(v55 - 2) * (*(v54 - 2) - *(f64 - 2));
            v57 = *v54;
            v58 = v54[1];
            v54 += 4;
            v59 = *v55;
            v60 = v55[1];
            v55 += 4;
            v52 += 4;
            v51 = v51 + v56 + v59 * (v57 - *f64) + v60 * (v58 - f64[1]);
            f64 += 4 * (v13 == v11);
          }

          while (v52 <= v11 - 4);
          v49 = (v49 + 32 * (v13 == v11) * (((v11 - 4) >> 2) + 1));
          v50 = ((v12 - 4) & 0xFFFFFFFC) + 4;
          if ((((v11 - 4) & 0xFFFFFFFC) + 4) >= v11)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v50 = 0;
          v51 = 0.0;
          if (v11 <= 0)
          {
            goto LABEL_27;
          }
        }

        v61 = v50;
        v62 = v11 + ~v50;
        if (v62 <= 6)
        {
          v63 = v61;
          v64 = v49;
LABEL_41:
          v84 = v46 + v63;
          v85 = &v155[v63];
          do
          {
            v86 = *v85++;
            v87 = v86;
            LODWORD(v86) = *v84++;
            v88 = *&v86;
            v89 = *v64++;
            v51 = v51 + v87 * (v88 - v89);
            LODWORD(v63) = v63 + 1;
          }

          while (v11 > v63);
          goto LABEL_27;
        }

        v65 = v62 + 1;
        v66 = (v62 + 1) & 0x1FFFFFFF8;
        v64 = &v49->f64[v66];
        v63 = v66 + v61;
        v67 = (v47 + 4 * v61);
        v68 = v49 + 2;
        v69 = &v157[v61];
        v70 = v66;
        do
        {
          v71 = v69[-2];
          v72 = v69[-1];
          v73 = *v69;
          v74 = v69[1];
          v69 += 4;
          v75 = v67[-1];
          v77 = v68[-2];
          v76 = v68[-1];
          v79 = *v68;
          v78 = v68[1];
          v68 += 4;
          v80 = vmulq_f64(v72, vsubq_f64(vcvt_hight_f64_f32(v75), v76));
          v81 = vmulq_f64(v71, vsubq_f64(vcvtq_f64_f32(*v75.f32), v77));
          v82 = vmulq_f64(v74, vsubq_f64(vcvt_hight_f64_f32(*v67), v78));
          v83 = vmulq_f64(v73, vsubq_f64(vcvtq_f64_f32(*v67->f32), v79));
          v51 = v51 + v81.f64[0] + v81.f64[1] + v80.f64[0] + v80.f64[1] + v83.f64[0] + v83.f64[1] + v82.f64[0] + v82.f64[1];
          v67 += 2;
          v70 -= 8;
        }

        while (v70);
        if (v65 != v66)
        {
          goto LABEL_41;
        }

LABEL_27:
        v5[v48++] = v51 * a4;
        v18 = (v18 + v15);
        v47 = (v47 + v15);
        v46 = (v46 + v15);
      }

      while (v48 != v10);
      v5 += v148;
      v14 = (v14 + v15);
      v17 = 32 * ((v11 >> 3) & 0xFFFFFFF);
      v16 = (v151 + v147);
      v19 = v149 + v147;
      v4 = (v4 + v15);
      v18 = (v150 + v15);
      ++v153;
    }

    while (v153 != v10);
  }

  return result;
}

_BYTE *sub_1002523BC(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1[2];
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = a1[10];
  if (*(a3 + 8) <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a3 + 80) >> 3;
  }

  v9 = a1[8];
  v11 = *v9;
  v10 = v9[1];
  if (v6)
  {
    v12 = *(a3 + 12) < v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = !v12;
  v14 = 40 * v11;
  if (!v12)
  {
    v14 = 8 * v11;
  }

  result = v128;
  if (v14 >= 0x409)
  {
    operator new[]();
  }

  v16 = v7 >> 3;
  v17 = *(a2 + 80) >> 3;
  if ((v13 & 1) == 0)
  {
    v18 = &v128[8 * v11];
    if (v11 < 1)
    {
      goto LABEL_50;
    }

    v19 = 0;
    if (v11 >= 6 && v8 == 1)
    {
      if (v18 >= &v6->f64[v11] || v6 >= &v128[32 * v11 + 8 * v11])
      {
        v19 = v11 & 0x7FFFFFFC;
        v21 = &v128[8 * v11 + 64];
        v22 = v6 + 1;
        v23 = v19;
        do
        {
          v129.val[0] = v22[-1];
          v130.val[0] = *v22;
          v129.val[1] = v129.val[0];
          v129.val[2] = v129.val[0];
          v129.val[3] = v129.val[0];
          v130.val[1] = *v22;
          v130.val[2] = *v22;
          v130.val[3] = *v22;
          v24 = v21 - 8;
          vst4q_f64(v24, v129);
          vst4q_f64(v21, v130);
          v21 += 16;
          v22 += 2;
          v23 -= 4;
        }

        while (v23);
        if (v19 == v11)
        {
LABEL_50:
          v8 = 4 * (v8 != 0);
          v6 = &v128[8 * v11];
          if (v10 < 1)
          {
            return result;
          }

          goto LABEL_51;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    v48 = &v128[32 * v19 + 8 * v11];
    v49 = &v6->f64[v8 * v19];
    v51 = v11 - v19;
    do
    {
      v52 = vld1q_dup_f64(v49);
      v50 = 8 * v8;
      v49 = (v49 + v50);
      *v48 = v52;
      v48[1] = v52;
      v48 += 2;
      --v51;
    }

    while (v51);
    goto LABEL_50;
  }

  if (!v6)
  {
    if (v10 < 1)
    {
      return result;
    }

    v25 = v10 - 4;
    if (v11 > 0)
    {
      v26 = 0;
      v27 = 8 * v16;
      v28 = (v4 + 2);
      for (i = v4; ; ++i)
      {
        v30 = v11;
        v31 = v128;
        v32 = i;
        do
        {
          *v31++ = *v32;
          v32 = (v32 + v27);
          --v30;
        }

        while (v30);
        v33 = v28;
        v34 = v26;
        if (v26 <= v25)
        {
          break;
        }

        v34 = v26;
        if (v26 < v10)
        {
          goto LABEL_43;
        }

LABEL_33:
        ++v26;
        v5 = (v5 + 8 * v17);
        v28 = (v28 + 8);
        if (v26 == v10)
        {
          return result;
        }
      }

      do
      {
        v35 = 0uLL;
        v36 = v33;
        v37 = v11;
        v38 = v128;
        v39 = 0uLL;
        do
        {
          v40 = vld1q_dup_f64(v38++);
          v35 = vmlaq_f64(v35, v36[-1], v40);
          v39 = vmlaq_f64(v39, *v36, v40);
          v36 = (v36 + v27);
          --v37;
        }

        while (v37);
        v41 = (v5 + 8 * v34);
        *v41 = vmulq_n_f64(v35, a4);
        v41[1] = vmulq_n_f64(v39, a4);
        v34 += 4;
        v33 += 2;
      }

      while (v25 >= v34);
      v34 = v34;
      if (v34 >= v10)
      {
        goto LABEL_33;
      }

LABEL_43:
      v42 = &v4[v34];
      do
      {
        v43 = 0.0;
        v44 = v42;
        v45 = v11;
        v46 = v128;
        do
        {
          v47 = *v46++;
          v43 = v43 + v47 * *v44;
          v44 = (v44 + v27);
          --v45;
        }

        while (v45);
        *&v5->i64[v34++] = v43 * a4;
        ++v42;
      }

      while (v10 > v34);
      goto LABEL_33;
    }

    v100 = 0;
    v101 = a4 * 0.0;
    v102 = vdupq_lane_s64(COERCE__INT64(a4 * 0.0), 0);
    v103 = v10 - 3;
    v104 = v5 + 4;
    v105 = 8 * v17;
    v106 = 4;
    for (j = -1; ; --j)
    {
      if (v106 <= v103)
      {
        v108 = v10 - 3;
      }

      else
      {
        v108 = v106;
      }

      v109 = v100 + 4;
      if (v100 + 4 <= v103)
      {
        v109 = v10 - 3;
      }

      if (v100 <= v25)
      {
        v111 = v109 + ~v100;
        v112 = v100;
        if (v111 <= 0xB)
        {
          goto LABEL_98;
        }

        v113 = (((v108 + j) >> 2) + 1) & 0x7FFFFFFC;
        v114 = (v111 >> 2) + 1;
        v112 = v100 + 4 * (v114 & 0x7FFFFFFC);
        v110 = v100;
        v115 = v104;
        do
        {
          v115[-4] = v102;
          v115[-3] = v102;
          v115[-2] = v102;
          v115[-1] = v102;
          *v115 = v102;
          v115[1] = v102;
          v115[2] = v102;
          v115[3] = v102;
          v115 += 8;
          v110 += 16;
          v113 -= 4;
        }

        while (v113);
        if ((v114 & 0x7FFFFFFC) != v114)
        {
LABEL_98:
          v116 = 8 * v112;
          v110 = v112;
          do
          {
            v117 = (v5 + v116);
            *v117 = v102;
            v117[1] = v102;
            v116 += 32;
            v110 += 4;
          }

          while (v25 >= v110);
        }
      }

      else
      {
        v110 = v100;
      }

      if (v110 >= v10)
      {
        goto LABEL_86;
      }

      v118 = v110;
      v119 = (v10 + ~v110);
      if (v119 > 2)
      {
        v121 = v119 + 1;
        v122 = (v119 + 1) & 0x1FFFFFFFCLL;
        v120 = v122 + v118;
        v123 = 8 * v118;
        v124 = v122;
        do
        {
          v125 = (v5 + v123);
          *v125 = v102;
          v125[1] = v102;
          v123 += 32;
          v124 -= 4;
        }

        while (v124);
        if (v121 == v122)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v120 = v118;
      }

      v126 = v120;
      do
      {
        *&v5->i64[v126++] = v101;
        LODWORD(v120) = v120 + 1;
      }

      while (v10 > v120);
LABEL_86:
      ++v100;
      v104 = (v104 + v105 + 8);
      ++v106;
      v5 = (v5 + v105);
      if (v100 == v10)
      {
        return result;
      }
    }
  }

  v18 = 0;
  if (v10 >= 1)
  {
LABEL_51:
    v53 = 0;
    v54 = v10 - 4;
    v55 = 8 * v8;
    v56 = 8 * v16;
    v57 = vdupq_lane_s64(COERCE__INT64(a4 * 0.0), 0);
    v58 = (v4 + 2);
    v59 = 8 * v17;
    v60 = v6;
    v61 = v4;
    do
    {
      if (v18)
      {
        v62 = v11;
        v63 = v61;
        v64 = v18;
        v65 = v128;
        if (v11 >= 1)
        {
          do
          {
            *v65++ = *v63 - *v64;
            v64 = (v64 + v55);
            v63 = (v63 + v56);
            --v62;
          }

          while (v62);
        }
      }

      else if (v11 >= 1)
      {
        v66 = v11;
        v67 = v61;
        v68 = v60;
        v69 = v128;
        do
        {
          *v69++ = *v67 - *v68;
          v68 = (v68 + v55);
          v67 = (v67 + v56);
          --v66;
        }

        while (v66);
      }

      LODWORD(v70) = v53;
      v71 = v58;
      v72 = v53;
      if (v53 <= v54)
      {
        do
        {
          v82 = v57;
          v83 = v57;
          if (v11 >= 1)
          {
            v84 = (v6 + 8 * v72);
            if (v18)
            {
              v84 = v18;
            }

            v85 = v84 + 1;
            v86 = 0uLL;
            v87 = v71;
            v88 = v11;
            v89 = v128;
            v90 = 0uLL;
            do
            {
              v91 = vld1q_dup_f64(v89++);
              v86 = vmlaq_f64(v86, vsubq_f64(v87[-1], v85[-1]), v91);
              v90 = vmlaq_f64(v90, vsubq_f64(*v87, *v85), v91);
              v85 = (v85 + v55);
              v87 = (v87 + v56);
              --v88;
            }

            while (v88);
            v82 = vmulq_n_f64(v86, a4);
            v83 = vmulq_n_f64(v90, a4);
          }

          v81 = (v5 + 8 * v72);
          *v81 = v82;
          v81[1] = v83;
          v70 = v72 + 4;
          v71 += 2;
          v72 = v70;
        }

        while (v54 >= v70);
      }

      if (v70 >= v10)
      {
        goto LABEL_52;
      }

      v73 = v70;
      if (v11 >= 1)
      {
        v74 = &v4[v70];
        do
        {
          v75 = &v6->f64[v73];
          if (v18)
          {
            v75 = v18;
          }

          v76 = 0.0;
          v77 = v74;
          v78 = v11;
          v79 = v128;
          do
          {
            v80 = *v79++;
            v76 = v76 + v80 * (*v77 - *v75);
            v75 = (v75 + v55);
            v77 = (v77 + v56);
            --v78;
          }

          while (v78);
          *&v5->i64[v73++] = v76 * a4;
          ++v74;
        }

        while (v10 > v73);
        goto LABEL_52;
      }

      v92 = (v10 + ~v70);
      if (v92 > 2)
      {
        v94 = v92 + 1;
        v95 = (v92 + 1) & 0x1FFFFFFFCLL;
        v93 = v95 + v73;
        v96 = 8 * v73;
        v97 = v95;
        do
        {
          v98 = (v5 + v96);
          *v98 = v57;
          v98[1] = v57;
          v96 += 32;
          v97 -= 4;
        }

        while (v97);
        if (v94 == v95)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v93 = v70;
      }

      v99 = v93;
      do
      {
        *&v5->i64[v99++] = a4 * 0.0;
        LODWORD(v93) = v93 + 1;
      }

      while (v10 > v93);
LABEL_52:
      ++v53;
      v5 = (v5 + v59);
      ++v61;
      ++v60;
      v58 = (v58 + 8);
    }

    while (v53 != v10);
  }

  return result;
}

void sub_100252AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != v12)
  {
    if (a12)
    {
      operator delete[]();
    }
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100252ADC(_BYTE *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(result + 2);
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  v7 = *(result + 10) >> 3;
  v127 = *(a2 + 80) >> 3;
  if (*(a3 + 8) <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a3 + 80) >> 3;
  }

  v9 = *(result + 8);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[1];
  if (!v6)
  {
    if (v10 < 1)
    {
      return result;
    }

    if (v11 < 4)
    {
      if (v12 <= 0)
      {
        v114 = 0;
        v115 = a4 * 0.0;
        v116 = vdupq_lane_s64(*&v115, 0);
        v117 = (v5 + 2);
        v118 = v10;
        do
        {
          v119 = v10 - v114;
          v120 = v114;
          if ((v10 - v114) < 4)
          {
            goto LABEL_87;
          }

          v121 = v118 & 0xFFFFFFFFFFFFFFFCLL;
          v120 = v114 + (v119 & 0xFFFFFFFFFFFFFFFCLL);
          v122 = v117;
          do
          {
            v122[-1] = v116;
            *v122 = v116;
            v122 += 2;
            v121 -= 4;
          }

          while (v121);
          if (v119 != (v119 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_87:
            do
            {
              v5[v120++] = v115;
            }

            while (v10 != v120);
          }

          ++v114;
          --v118;
          v117 = (v117 + 8 * v127 + 8);
          v5 += v127;
        }

        while (v114 != v10);
      }

      else
      {
        v75 = 0;
        v76 = (v4 + 16);
        v77 = 8 * v7;
        v78 = v10;
        do
        {
          v79 = (v4 + 8 * v7 * v75);
          v80 = v78;
          v81 = v5;
          v82 = v76;
          do
          {
            v83 = *v79 * *(v82 - 2) + 0.0;
            if (v11 != 1)
            {
              v83 = v83 + v79[1] * *(v82 - 1);
              if (v12 != 2)
              {
                v83 = v83 + v79[2] * *v82;
              }
            }

            *v81++ = v83 * a4;
            v82 = (v82 + v77);
            --v80;
          }

          while (v80);
          ++v75;
          v76 = (v76 + v77);
          v5 += v127 + 1;
          --v78;
        }

        while (v75 != v10);
      }

      return result;
    }

    v84 = 0;
    v85 = (v12 - 4);
    v86 = (v85 & 0xFFFFFFFC) + 4;
    v87 = v12 - (v85 & 0xFFFFFFFC) - 5;
    v88 = (v85 >> 2) + 1;
    v89 = (v87 + 1) & 0x1FFFFFFFCLL;
    result = (v4 + 64);
    v90 = 8 * v7;
    v91 = v4 + 16;
LABEL_61:
    v92 = v4;
    v129 = v91;
    v93 = result;
    v94 = v84;
    while (v85 >= 0xC)
    {
      v96 = 0.0;
      v97 = v88 & 0x3FFFFFFC;
      v98 = v93;
      v99 = result;
      do
      {
        v100 = v99 - 8;
        v135 = vld4q_f64(v100);
        v136 = vld4q_f64(v99);
        v101 = v98 - 8;
        v137 = vld4q_f64(v101);
        v138 = vld4q_f64(v98);
        v102 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v135.val[1], v137.val[1]), v137.val[0], v135.val[0]), v137.val[2], v135.val[2]), v137.val[3], v135.val[3]);
        v103 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(v136.val[1], v138.val[1]), v138.val[0], v136.val[0]), v138.val[2], v136.val[2]), v138.val[3], v136.val[3]);
        v96 = v96 + v102.f64[0] + v102.f64[1] + v103.f64[0] + v103.f64[1];
        v99 += 16;
        v98 += 16;
        v97 -= 4;
      }

      while (v97);
      v95 = 4 * (v88 & 0x3FFFFFFC);
      if (v88 != (v88 & 0x3FFFFFFC))
      {
        goto LABEL_68;
      }

LABEL_70:
      if (v86 < v12)
      {
        v108 = (v85 & 0xFFFFFFFC) + 4;
        v109 = 8 * v108;
        v110 = (v87 + 1) & 0x1FFFFFFFCLL;
        if (v87 < 3)
        {
          goto LABEL_74;
        }

        do
        {
          v111 = vmulq_f64(*(v4 + v109), *(v91 + v109 - 16));
          v112 = vmulq_f64(*(v4 + v109 + 16), *(v91 + v109));
          v96 = v96 + v111.f64[0] + v111.f64[1] + v112.f64[0] + v112.f64[1];
          v109 += 32;
          v110 -= 4;
        }

        while (v110);
        v108 = v89 + v86;
        if (v87 + 1 != v89)
        {
LABEL_74:
          v113 = 8 * v108;
          do
          {
            v96 = v96 + *(v4 + v113) * *(v92 + v113);
            v113 += 8;
            LODWORD(v108) = v108 + 1;
          }

          while (v11 > v108);
        }
      }

      v5[v94++] = v96 * a4;
      v93 = (v93 + v90);
      v91 += v90;
      v92 += v90;
      if (v94 == v10)
      {
        v5 += v127;
        ++v84;
        result += v90;
        v4 += v90;
        v91 = v129 + v90;
        if (v84 == v10)
        {
          return result;
        }

        goto LABEL_61;
      }
    }

    v95 = 0;
    v96 = 0.0;
LABEL_68:
    v105 = v91;
    v106 = v4;
    v107 = v95;
    do
    {
      v104 = 8 * v95;
      v96 = v96 + *(v106 + v104 + 8) * *(v105 + v104 - 8) + *(v106 + 8 * v95) * *(v105 + v104 - 16) + *(v106 + v104 + 16) * *(v105 + 8 * v95) + *(v106 + v104 + 24) * *(v105 + v104 + 8);
      v107 += 4;
      v106 += 32;
      v105 += 32;
    }

    while (v107 <= v85);
    goto LABEL_70;
  }

  v13 = *(a3 + 12);
  result = v130;
  if ((8 * v11) >= 0x409)
  {
    operator new[]();
  }

  if (v10 >= 1)
  {
    v14 = 0;
    v126 = v130 - v4;
    v15 = 8 * v7;
    v125 = -8 * v7;
    v124 = 8 * v8;
    v123 = v12 & 0x7FFFFFFC;
    v16 = (v4 + 16);
    v17 = v6 + 1;
    v18 = *(a3 + 16);
    do
    {
      v19 = &v126[v125 * v14];
      if (v13 < v12)
      {
        if (v11 >= 1)
        {
          v20 = 0;
          v21 = *&v6->f64[v8 * v14];
          if (v11 < 4)
          {
            goto LABEL_88;
          }

          if (v19 < 0x20)
          {
            goto LABEL_88;
          }

          v22 = vdupq_lane_s64(v21, 0);
          v23 = v12 & 0x7FFFFFFC;
          v24 = v131;
          v25 = v16;
          do
          {
            v26 = vsubq_f64(*v25, v22);
            v24[-1] = vsubq_f64(v25[-1], v22);
            *v24 = v26;
            v25 += 2;
            v24 += 2;
            v23 -= 4;
          }

          while (v23);
          v20 = v12 & 0x7FFFFFFC;
          if (v123 != v11)
          {
LABEL_88:
            do
            {
              *&v130[v20] = *(v4 + 8 * v20) - *&v21;
              ++v20;
            }

            while (v11 != v20);
          }
        }

        goto LABEL_24;
      }

      if (v12 >= 1)
      {
        if (v12 > 3)
        {
          v27 = 0;
          if (v19 >= 0x20 && (v130 - v6 + -8 * v8 * v14) >= 0x20)
          {
            v70 = v17;
            v71 = v131;
            v72 = v16;
            v73 = v12 & 0x7FFFFFFC;
            do
            {
              v74 = vsubq_f64(*v72, *v70);
              v71[-1] = vsubq_f64(v72[-1], v70[-1]);
              *v71 = v74;
              v72 += 2;
              v71 += 2;
              v70 += 2;
              v73 -= 4;
            }

            while (v73);
            v27 = v12 & 0x7FFFFFFC;
            if (v123 == v11)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v27 = 0;
        }

        v28 = &v130[v27];
        v29 = (v18 + 8 * v27);
        v30 = (v4 + 8 * v27);
        v31 = v11 - v27;
        do
        {
          v32 = *v30++;
          v33 = v32;
          v34 = *v29++;
          *v28++ = v33 - v34;
          --v31;
        }

        while (v31);
      }

LABEL_24:
      v128 = v17;
      v35 = v4;
      v36 = v16;
      v37 = v14;
      do
      {
        v38 = (v6 + 8 * v8 * v37);
        if (v13 < v11)
        {
          v133 = v38->f64[0];
          v134 = v133;
          *v132 = v133;
          *&v132[1] = v133;
          v38 = v132;
        }

        if (v12 >= 4)
        {
          v41 = 0;
          f64 = v38[1].f64;
          v40 = 0.0;
          v43 = v36;
          v44 = v131;
          do
          {
            v45 = *(v44 - 1) * (*(v43 - 1) - *(f64 - 1)) + *(v44 - 2) * (*(v43 - 2) - *(f64 - 2));
            v46 = *v43;
            v47 = v43[1];
            v43 += 4;
            v48 = *v44;
            v49 = v44[1];
            v44 += 4;
            v41 += 4;
            v40 = v40 + v45 + v48 * (v46 - *f64) + v49 * (v47 - f64[1]);
            f64 += 4 * (v13 == v11);
          }

          while (v41 <= v12 - 4);
          v38 = (v38 + 32 * (v13 == v11) * (((v12 - 4) >> 2) + 1));
          v39 = ((v12 - 4) & 0xFFFFFFFC) + 4;
          if (v39 >= v11)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v39 = 0;
          v40 = 0.0;
          if (v11 <= 0)
          {
            goto LABEL_25;
          }
        }

        v50 = v39;
        v51 = v11 + ~v39;
        if (v51 <= 2)
        {
          v52 = v50;
          v53 = v38;
LABEL_39:
          v63 = (v35 + 8 * v52);
          v64 = &v130[v52];
          do
          {
            v65 = *v64++;
            v66 = v65;
            v67 = *v63++;
            v68 = v67;
            v69 = *v53++;
            v40 = v40 + v66 * (v68 - v69);
            LODWORD(v52) = v52 + 1;
          }

          while (v11 > v52);
          goto LABEL_25;
        }

        v54 = v51 + 1;
        v55 = (v51 + 1) & 0x1FFFFFFFCLL;
        v52 = v55 + v50;
        v53 = &v38->f64[v55];
        v56 = 8 * v50;
        v57 = &v36[v50];
        v58 = v38 + 1;
        v59 = &v131[v56];
        v60 = v55;
        do
        {
          v61 = vmulq_f64(v59[-1], vsubq_f64(v57[-1], v58[-1]));
          v62 = vmulq_f64(*v59, vsubq_f64(*v57, *v58));
          v40 = v40 + v61.f64[0] + v61.f64[1] + v62.f64[0] + v62.f64[1];
          v57 += 2;
          v58 += 2;
          v59 += 2;
          v60 -= 4;
        }

        while (v60);
        if (v54 != v55)
        {
          goto LABEL_39;
        }

LABEL_25:
        v5[v37++] = v40 * a4;
        v36 = (v36 + v15);
        v35 += v15;
      }

      while (v37 != v10);
      v5 += v127;
      ++v14;
      v16 = (v16 + v15);
      v17 = (v128 + v124);
      v18 += v124;
      v4 += v15;
    }

    while (v14 != v10);
  }

  return result;
}