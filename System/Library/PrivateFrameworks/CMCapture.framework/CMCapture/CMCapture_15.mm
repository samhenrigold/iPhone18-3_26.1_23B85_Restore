__CFString *BWInferenceStatusDescription(int a1)
{
  result = @"unknown status";
  if (a1 <= -31762)
  {
    v3 = @"<inference> provider failed to cache across teardown and rebuild of inference pipeline";
    v4 = @"<scheduler> jobs in inconsistent state";
    if (a1 != -31781)
    {
      v4 = @"unknown status";
    }

    if (a1 == -31782)
    {
      v5 = @"<inference> version error";
    }

    else
    {
      v5 = v4;
    }

    if (a1 != -31783)
    {
      v3 = v5;
    }

    v6 = @"<inference> video requirement could not be created successfully";
    if (a1 != -31784)
    {
      v6 = @"unknown status";
    }

    if (a1 == -31785)
    {
      v7 = @"<inference> pipeline could not be resurrected with placeholder/cached providers";
    }

    else
    {
      v7 = v6;
    }

    if (a1 <= -31784)
    {
      return v7;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > -31703)
  {
    v8 = @"success";
    if (a1)
    {
      v8 = @"unknown status";
    }

    if (a1 == -31701)
    {
      v9 = @"missing resource";
    }

    else
    {
      v9 = v8;
    }

    if (a1 == -31702)
    {
      return @"resource allocation failed";
    }

    else
    {
      return v9;
    }
  }

  else
  {
    switch(a1)
    {
      case -31761:
        result = @"<graph> unsatisfiable node created";
        break;
      case -31760:
        result = @"<graph> generic graph construction error";
        break;
      case -31748:
        result = @"<scaling> missing output identifier";
        break;
      case -31747:
        result = @"<scaling> provider allocation error";
        break;
      case -31746:
        result = @"<scaling> unsatisfied output requirements";
        break;
      case -31745:
        result = @"<scaling> missing output requirements";
        break;
      case -31744:
        result = @"<scaling> output video buffer preprocessing error";
        break;
      case -31743:
        result = @"<scaling> output video buffer allocation error";
        break;
      case -31742:
        result = @"<scaling> output video format error";
        break;
      case -31741:
        result = @"<scaling> input video format error";
        break;
      case -31740:
        result = @"<scaling> generic error";
        break;
      case -31720:
        result = @"<inference> output metadata allocation failed";
        break;
      case -31719:
        result = @"<inference> missing output metadata";
        break;
      case -31718:
        result = @"<inference> output video buffer allocation failed";
        break;
      case -31717:
        result = @"<inference> missing output video buffer";
        break;
      case -31716:
        result = @"<inference> output video format error";
        break;
      case -31715:
        result = @"<inference> input metadata allocation failed";
        break;
      case -31714:
        result = @"<inference> missing input metadata";
        break;
      case -31713:
        result = @"<inference> input video buffer allocation failed";
        break;
      case -31712:
        result = @"<inference> missing input video buffer";
        break;
      case -31711:
        result = @"<inference> input video format error";
        break;
      case -31710:
        result = @"<inference> generic error";
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t BWInferenceGetAttachedInference(const void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [CMGetAttachment(a1 @"Inferences"];
  if (![v4 isValid])
  {
    return 0;
  }

  v5 = [v4 inferences];

  return [v5 objectForKeyedSubscript:a3];
}

id BWInferenceGetLowResPersonInstanceMasksFromSampleBuffer(const void *a1)
{
  v1 = BWSampleBufferCopyDictionaryOfAttachedMedia(a1);
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [objc_msgSend(v1 "allKeys")];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasPrefix:@"LowResPersonInstanceMask"])
        {
          [v2 addObject:{CMSampleBufferGetImageBuffer(objc_msgSend(v1, "objectForKeyedSubscript:", v9))}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);

  result = [v2 count];
  if (result)
  {
    return [v2 copy];
  }

  return result;
}

os_log_t __getCameraCaptureExcessiveLog_block_invoke_1()
{
  result = os_log_create("com.apple.cameracapture", "excessive");
  getCameraCaptureExcessiveLog_cameraCaptureExcessiveLog_1 = result;
  return result;
}

uint64_t FigDepthRotateBuffer(__CVBuffer *a1, __CVBuffer *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v14 = FigDepthBytesPerPixelForDepthFormat(PixelFormatType);
  v15 = CVPixelBufferGetPixelFormatType(a2);
  if (v14 != FigDepthBytesPerPixelForDepthFormat(v15))
  {
    FigDepthRotateBuffer_cold_1(&v761);
    return v761;
  }

  if (v14 == 2 || v14 == 4)
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v21 = CVPixelBufferGetWidth(a2);
    v22 = CVPixelBufferGetHeight(a2);
    v23 = CVPixelBufferGetBytesPerRow(a2);
    if (((Width | Height) & 7) == 0 && (v21 & 7) == 0 && (v22 & 7) == 0 && (BytesPerRow & 0xF) == 0 && (v23 & 0xF) == 0)
    {
      pixelBuffer = CVPixelBufferGetWidth(a1);
      v24 = CVPixelBufferGetHeight(a1);
      v25 = CVPixelBufferGetBytesPerRow(a1);
      v26 = CVPixelBufferGetWidth(a2);
      v27 = CVPixelBufferGetHeight(a2);
      v28 = a2;
      v29 = CVPixelBufferGetBytesPerRow(a2);
      v30 = CVPixelBufferLockBaseAddress(a1, 1uLL);
      v31 = v30;
      if (v14 == 2)
      {
        if (v30)
        {
          FigDepthRotateBuffer_cold_7(v30);
          return v31;
        }

        v32 = CVPixelBufferLockBaseAddress(v28, 0);
        if (v32)
        {
          v31 = v32;
          FigDepthRotateBuffer_cold_8(v32, a1);
          return v31;
        }

        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v34 = CVPixelBufferGetBaseAddress(v28);
        if (a3 > 4)
        {
          if (a3 <= 6)
          {
            if (a3 == 5)
            {
              if (v27)
              {
                for (i = 0; i < v27; i += 8)
                {
                  if (v26)
                  {
                    v474 = 0;
                    v475 = BaseAddress;
                    v476 = v34;
                    do
                    {
                      v477 = *v475;
                      v478 = (v475 + v25);
                      v479 = *v478;
                      v480 = (v478 + v25);
                      v481 = *v480;
                      v482 = (v480 + v25);
                      v483 = *v482;
                      v484 = (v482 + v25);
                      v485 = *v484;
                      v486 = (v484 + v25);
                      v487 = *v486;
                      v488 = (v486 + v25);
                      v489 = *v488;
                      v490 = (v488 + v25);
                      v491 = vzip1q_s16(v477, v479);
                      v492 = vzip2q_s16(v477, v479);
                      v493 = vzip1q_s16(v481, v483);
                      v494 = vzip2q_s16(v481, v483);
                      v495 = vzip1q_s16(v485, v487);
                      v496 = vzip2q_s16(v485, v487);
                      v497 = vzip1q_s16(v489, *v490);
                      v498 = vzip2q_s16(v489, *v490);
                      v499 = vzip1q_s32(v491, v493);
                      v500 = vzip2q_s32(v491, v493);
                      v501 = vzip1q_s32(v492, v494);
                      v502 = vzip2q_s32(v492, v494);
                      v503 = vzip1q_s32(v495, v497);
                      v504 = vzip2q_s32(v495, v497);
                      v505 = vzip1q_s32(v496, v498);
                      v506 = vzip2q_s64(v499, v503);
                      v499.i64[1] = v503.i64[0];
                      v507 = vzip2q_s64(v500, v504);
                      v500.i64[1] = v504.i64[0];
                      v508 = vzip2q_s64(v501, v505);
                      v501.i64[1] = v505.i64[0];
                      v509 = vzip2q_s32(v496, v498);
                      v510 = vzip2q_s64(v502, v509);
                      v502.i64[1] = v509.i64[0];
                      *v476 = v499;
                      *(v476 + v29) = v506;
                      v511 = (v476 + v29 + v29);
                      *v511 = v500;
                      v512 = (v511 + v29);
                      *v512 = v507;
                      v513 = (v512 + v29);
                      *v513 = v501;
                      v514 = (v513 + v29);
                      *v514 = v508;
                      v515 = (v514 + v29);
                      *v515 = v502;
                      *(v515 + v29) = v510;
                      v474 += 8;
                      ++v476;
                      v475 = (v490 + 8 * v25 + -7 * v25);
                    }

                    while (v26 > v474);
                  }

                  ++BaseAddress;
                  v34 = (v34 + 8 * v29);
                }
              }
            }

            else if (v27)
            {
              v160 = 0;
              v161 = &BaseAddress->i8[(v24 - 8) * v25];
              do
              {
                if (v26)
                {
                  v162 = 0;
                  v163 = 0;
                  v164 = v34;
                  do
                  {
                    v165 = *&v161[v162];
                    v166 = &v161[v162 + v25];
                    v167 = *v166;
                    v168 = (v166 + v25);
                    v169 = *v168;
                    v170 = (v168 + v25);
                    v171 = *v170;
                    v172 = (v170 + v25);
                    v173 = *v172;
                    v174 = (v172 + v25);
                    v175 = *v174;
                    v176 = (v174 + v25);
                    v177 = *(v176 + v25);
                    v178 = vzip1q_s16(v177, *v176);
                    v179 = vzip2q_s16(v177, *v176);
                    v180 = vzip1q_s16(v175, v173);
                    v181 = vzip2q_s16(v175, v173);
                    v182 = vzip1q_s16(v171, v169);
                    v183 = vzip2q_s16(v171, v169);
                    v184 = vzip1q_s16(v167, v165);
                    v185 = vzip2q_s16(v167, v165);
                    v186 = vzip1q_s32(v178, v180);
                    v187 = vzip2q_s32(v178, v180);
                    v188 = vzip1q_s32(v179, v181);
                    v189 = vzip2q_s32(v179, v181);
                    v190 = vzip1q_s32(v182, v184);
                    v191 = vzip2q_s32(v182, v184);
                    v192 = vzip1q_s32(v183, v185);
                    v193 = vzip2q_s64(v186, v190);
                    v186.i64[1] = v190.i64[0];
                    v194 = vzip2q_s64(v187, v191);
                    v187.i64[1] = v191.i64[0];
                    v195 = vzip2q_s64(v188, v192);
                    v188.i64[1] = v192.i64[0];
                    v196 = vzip2q_s32(v183, v185);
                    v197 = vzip2q_s64(v189, v196);
                    v189.i64[1] = v196.i64[0];
                    *v164 = v186;
                    *(v164 + v29) = v193;
                    v198 = (v164 + v29 + v29);
                    *v198 = v187;
                    v199 = (v198 + v29);
                    *v199 = v194;
                    v200 = (v199 + v29);
                    *v200 = v188;
                    v201 = (v200 + v29);
                    *v201 = v195;
                    v202 = (v201 + v29);
                    *v202 = v189;
                    *(v202 + v29) = v197;
                    v163 += 8;
                    ++v164;
                    v162 += -8 * v25;
                  }

                  while (v26 > v163);
                }

                v160 += 8;
                v161 += 16;
                v34 = (v34 + 8 * v29);
              }

              while (v27 > v160);
            }

            goto LABEL_179;
          }

          if (a3 == 7)
          {
            if (v27)
            {
              v655 = 0;
              v656 = BaseAddress->i64 + 2 * pixelBuffer + (v24 - 8) * v25;
              do
              {
                v656 -= 16;
                if (v26)
                {
                  v657 = 0;
                  v658 = v656;
                  v659 = v34;
                  do
                  {
                    v660 = *v658;
                    v661 = (v658 + v25);
                    v662 = *v661;
                    v663 = (v661 + v25);
                    v664 = *v663;
                    v665 = (v663 + v25);
                    v666 = *v665;
                    v667 = (v665 + v25);
                    v668 = *v667;
                    v669 = (v667 + v25);
                    v670 = *v669;
                    v671 = (v669 + v25);
                    v672 = *v671;
                    v673 = (v671 + v25);
                    v674 = vzip1q_s16(*v673, v672);
                    v675 = vzip2q_s16(*v673, v672);
                    v676 = vzip1q_s16(v670, v668);
                    v677 = vzip2q_s16(v670, v668);
                    v678 = vzip1q_s16(v666, v664);
                    v679 = vzip2q_s16(v666, v664);
                    v680 = vzip1q_s16(v662, v660);
                    v681 = vzip2q_s16(v662, v660);
                    v682 = vzip1q_s32(v674, v676);
                    v683 = vzip2q_s32(v674, v676);
                    v684 = vzip1q_s32(v675, v677);
                    v685 = vzip2q_s32(v675, v677);
                    v686 = vzip1q_s32(v678, v680);
                    v687 = vzip2q_s32(v678, v680);
                    v688 = vzip1q_s32(v679, v681);
                    v689 = vzip2q_s32(v679, v681);
                    v690 = vzip2q_s64(v685, v689);
                    v685.i64[1] = v689.i64[0];
                    v691 = vzip2q_s64(v684, v688);
                    v684.i64[1] = v688.i64[0];
                    v692 = vzip2q_s64(v683, v687);
                    v683.i64[1] = v687.i64[0];
                    v693 = vzip2q_s64(v682, v686);
                    v682.i64[1] = v686.i64[0];
                    *v659 = v690;
                    *(v659 + v29) = v685;
                    v694 = (v659 + v29 + v29);
                    *v694 = v691;
                    v695 = (v694 + v29);
                    *v695 = v684;
                    v696 = (v695 + v29);
                    *v696 = v692;
                    v697 = (v696 + v29);
                    *v697 = v683;
                    v698 = (v697 + v29);
                    *v698 = v693;
                    *(v698 + v29) = v682;
                    v657 += 8;
                    ++v659;
                    v658 = (v673 - 7 * v25 + -8 * v25);
                  }

                  while (v26 > v657);
                }

                v655 += 8;
                v34 = (v34 + 8 * v29);
              }

              while (v27 > v655);
            }

            goto LABEL_179;
          }

          if (a3 == 8)
          {
            if (v27)
            {
              v317 = 0;
              v318 = &BaseAddress->i8[2 * pixelBuffer];
              do
              {
                if (v26)
                {
                  v319 = 0;
                  v320 = -16;
                  v321 = v34;
                  do
                  {
                    v322 = *&v318[v320];
                    v323 = &v318[v320 + v25];
                    v324 = *v323;
                    v325 = (v323 + v25);
                    v326 = *v325;
                    v327 = (v325 + v25);
                    v328 = *v327;
                    v329 = (v327 + v25);
                    v330 = *v329;
                    v331 = (v329 + v25);
                    v332 = *v331;
                    v333 = (v331 + v25);
                    v334 = *(v333 + v25);
                    v335 = vzip1q_s16(v322, v324);
                    v336 = vzip2q_s16(v322, v324);
                    v337 = vzip1q_s16(v326, v328);
                    v338 = vzip2q_s16(v326, v328);
                    v339 = vzip1q_s16(v330, v332);
                    v340 = vzip2q_s16(v330, v332);
                    v341 = vzip1q_s16(*v333, v334);
                    v342 = vzip2q_s16(*v333, v334);
                    v343 = vzip1q_s32(v335, v337);
                    v344 = vzip2q_s32(v335, v337);
                    v345 = vzip1q_s32(v336, v338);
                    v346 = vzip2q_s32(v336, v338);
                    v347 = vzip1q_s32(v339, v341);
                    v348 = vzip2q_s32(v339, v341);
                    v349 = vzip1q_s32(v340, v342);
                    v350 = vzip2q_s32(v340, v342);
                    v351 = vzip2q_s64(v346, v350);
                    v346.i64[1] = v350.i64[0];
                    v352 = vzip2q_s64(v345, v349);
                    v345.i64[1] = v349.i64[0];
                    v353 = vzip2q_s64(v344, v348);
                    v344.i64[1] = v348.i64[0];
                    v354 = vzip2q_s64(v343, v347);
                    v343.i64[1] = v347.i64[0];
                    *v321 = v351;
                    *(v321 + v29) = v346;
                    v355 = (v321 + v29 + v29);
                    *v355 = v352;
                    v356 = (v355 + v29);
                    *v356 = v345;
                    v357 = (v356 + v29);
                    *v357 = v353;
                    v358 = (v357 + v29);
                    *v358 = v344;
                    v359 = (v358 + v29);
                    *v359 = v354;
                    *(v359 + v29) = v343;
                    v319 += 8;
                    ++v321;
                    v320 += 8 * v25;
                  }

                  while (v26 > v319);
                }

                v318 -= 16;
                v317 += 8;
                v34 = (v34 + 8 * v29);
              }

              while (v27 > v317);
            }

            goto LABEL_179;
          }
        }

        else
        {
          if (a3 > 2)
          {
            if (a3 == 3)
            {
              if (v27)
              {
                v571 = 0;
                v572 = BaseAddress[-1].i64 + 2 * pixelBuffer + (v24 - 8) * v25;
                do
                {
                  if (v26)
                  {
                    v573 = 0;
                    v574 = 0;
                    v575 = v34;
                    do
                    {
                      v576 = (v572 + v573 + v25);
                      v577 = *v576;
                      v578 = (v576 + v25);
                      v579 = *v578;
                      v580 = (v578 + v25);
                      v581 = *v580;
                      v582 = (v580 + v25);
                      v583 = *v582;
                      v584 = (v582 + v25);
                      v585 = *v584;
                      v586 = (v584 + v25);
                      v587 = vrev64q_s16(*(v586 + v25));
                      v588 = vrev64q_s16(*v586);
                      v589 = vrev64q_s16(v585);
                      v590 = vrev64q_s16(v583);
                      v591 = vrev64q_s16(v581);
                      v592 = vrev64q_s16(v579);
                      v593 = vrev64q_s16(v577);
                      v594 = vrev64q_s16(*(v572 + v573));
                      v595.i64[0] = vextq_s8(v587, v587, 8uLL).u64[0];
                      v595.i64[1] = v587.i64[0];
                      v587.i64[0] = vextq_s8(v588, v588, 8uLL).u64[0];
                      v587.i64[1] = v588.i64[0];
                      v588.i64[0] = vextq_s8(v589, v589, 8uLL).u64[0];
                      v588.i64[1] = v589.i64[0];
                      v589.i64[0] = vextq_s8(v590, v590, 8uLL).u64[0];
                      v589.i64[1] = v590.i64[0];
                      v590.i64[0] = vextq_s8(v591, v591, 8uLL).u64[0];
                      v590.i64[1] = v591.i64[0];
                      v591.i64[0] = vextq_s8(v592, v592, 8uLL).u64[0];
                      v591.i64[1] = v592.i64[0];
                      v592.i64[0] = vextq_s8(v593, v593, 8uLL).u64[0];
                      v592.i64[1] = v593.i64[0];
                      v593.i64[0] = vextq_s8(v594, v594, 8uLL).u64[0];
                      v593.i64[1] = v594.i64[0];
                      *v575 = v595;
                      *(v575 + v29) = v587;
                      v596 = &v575->i8[v29 + v29];
                      *v596 = v588;
                      v597 = (v596 + v29);
                      *v597 = v589;
                      v598 = (v597 + v29);
                      *v598 = v590;
                      v599 = (v598 + v29);
                      *v599 = v591;
                      v600 = (v599 + v29);
                      *v600 = v592;
                      *(v600 + v29) = v593;
                      v574 += 8;
                      ++v575;
                      v573 -= 16;
                    }

                    while (v26 > v574);
                  }

                  v571 += 8;
                  v572 += -8 * v25;
                  v34 = (v34 + 8 * v29);
                }

                while (v27 > v571);
              }
            }

            else if (v27)
            {
              v260 = 0;
              v261 = &BaseAddress->i8[(v24 - 8) * v25];
              do
              {
                if (v26)
                {
                  v262 = 0;
                  for (j = 0; j < v26; j += 8)
                  {
                    v264 = *&v261[v262 * 16];
                    v265 = &v261[v262 * 16 + v25];
                    v266 = *v265;
                    v267 = &v265[v25];
                    v268 = *v267;
                    v269 = &v267[v25];
                    v270 = *v269;
                    v271 = (v269 + v25);
                    v272 = *v271;
                    v273 = (v271 + v25);
                    v274 = *v273;
                    v275 = (v273 + v25);
                    v276 = *v275;
                    v34[v262] = *(v275 + v25);
                    v277 = &v34[v262].i8[v29];
                    *v277 = v276;
                    v278 = &v277[v29];
                    *v278 = v274;
                    v279 = &v278[v29];
                    *v279 = v272;
                    v280 = &v279[v29];
                    *v280 = v270;
                    v281 = &v280[v29];
                    *v281 = v268;
                    v282 = &v281[v29];
                    *v282 = v266;
                    *&v282[v29] = v264;
                    ++v262;
                  }
                }

                v260 += 8;
                v261 -= 8 * v25;
                v34 = (v34 + 8 * v29);
              }

              while (v27 > v260);
            }

            goto LABEL_179;
          }

          if (a3 == 1)
          {
            if (v27)
            {
              for (k = 0; k < v27; k += 8)
              {
                if (v26)
                {
                  v419 = 0;
                  for (m = 0; m < v26; m += 8)
                  {
                    v421 = &BaseAddress[v419].i8[v25];
                    v422 = *v421;
                    v423 = &v421[v25];
                    v424 = *v423;
                    v425 = &v423[v25];
                    v426 = *v425;
                    v427 = (v425 + v25);
                    v428 = *v427;
                    v429 = (v427 + v25);
                    v430 = *v429;
                    v431 = (v429 + v25);
                    v432 = *v431;
                    v433 = *(v431 + v25);
                    v34[v419] = BaseAddress[v419];
                    v434 = &v34[v419].i8[v29];
                    *v434 = v422;
                    v435 = &v434[v29];
                    *v435 = v424;
                    v436 = &v435[v29];
                    *v436 = v426;
                    v437 = &v436[v29];
                    *v437 = v428;
                    v438 = &v437[v29];
                    *v438 = v430;
                    v439 = &v438[v29];
                    *v439 = v432;
                    *&v439[v29] = v433;
                    ++v419;
                  }
                }

                BaseAddress = (BaseAddress + 8 * v25);
                v34 = (v34 + 8 * v29);
              }
            }

            goto LABEL_179;
          }

          if (a3 == 2)
          {
            if (v27)
            {
              v37 = 0;
              v38 = BaseAddress[-1].i64 + 2 * pixelBuffer;
              do
              {
                if (v26)
                {
                  v39 = 0;
                  v40 = 0;
                  v41 = v34;
                  do
                  {
                    v42 = (v38 + v39 + v25);
                    v43 = *v42;
                    v44 = (v42 + v25);
                    v45 = *v44;
                    v46 = (v44 + v25);
                    v47 = *v46;
                    v48 = (v46 + v25);
                    v49 = *v48;
                    v50 = (v48 + v25);
                    v51 = *v50;
                    v52 = (v50 + v25);
                    v53 = vrev64q_s16(*(v38 + v39));
                    v54 = vrev64q_s16(v43);
                    v55 = vrev64q_s16(v45);
                    v56 = vrev64q_s16(v47);
                    v57 = vrev64q_s16(v49);
                    v58 = vrev64q_s16(v51);
                    v59 = vrev64q_s16(*v52);
                    v60 = vrev64q_s16(*(v52 + v25));
                    v61.i64[0] = vextq_s8(v53, v53, 8uLL).u64[0];
                    v61.i64[1] = v53.i64[0];
                    v53.i64[0] = vextq_s8(v54, v54, 8uLL).u64[0];
                    v53.i64[1] = v54.i64[0];
                    v54.i64[0] = vextq_s8(v55, v55, 8uLL).u64[0];
                    v54.i64[1] = v55.i64[0];
                    v55.i64[0] = vextq_s8(v56, v56, 8uLL).u64[0];
                    v55.i64[1] = v56.i64[0];
                    v56.i64[0] = vextq_s8(v57, v57, 8uLL).u64[0];
                    v56.i64[1] = v57.i64[0];
                    v57.i64[0] = vextq_s8(v58, v58, 8uLL).u64[0];
                    v57.i64[1] = v58.i64[0];
                    v58.i64[0] = vextq_s8(v59, v59, 8uLL).u64[0];
                    v58.i64[1] = v59.i64[0];
                    v59.i64[0] = vextq_s8(v60, v60, 8uLL).u64[0];
                    v59.i64[1] = v60.i64[0];
                    *v41 = v61;
                    *(v41 + v29) = v53;
                    v62 = &v41->i8[v29 + v29];
                    *v62 = v54;
                    v63 = (v62 + v29);
                    *v63 = v55;
                    v64 = (v63 + v29);
                    *v64 = v56;
                    v65 = (v64 + v29);
                    *v65 = v57;
                    v66 = (v65 + v29);
                    *v66 = v58;
                    *(v66 + v29) = v59;
                    v40 += 8;
                    ++v41;
                    v39 -= 16;
                  }

                  while (v26 > v40);
                }

                v37 += 8;
                v38 += 8 * v25;
                v34 = (v34 + 8 * v29);
              }

              while (v27 > v37);
            }

LABEL_179:
            v31 = 0;
LABEL_180:
            CVPixelBufferUnlockBaseAddress(a1, 1uLL);
            CVPixelBufferUnlockBaseAddress(v28, 0);
            return v31;
          }
        }

        v757 = 572;
      }

      else
      {
        if (v30)
        {
          FigDepthRotateBuffer_cold_5(v30);
          return v31;
        }

        v93 = CVPixelBufferLockBaseAddress(v28, 0);
        if (v93)
        {
          v31 = v93;
          FigDepthRotateBuffer_cold_6(v93, a1);
          return v31;
        }

        v94 = CVPixelBufferGetBaseAddress(a1);
        v95 = CVPixelBufferGetBaseAddress(v28);
        if (a3 > 4)
        {
          if (a3 <= 6)
          {
            if (a3 == 5)
            {
              if (v27)
              {
                for (n = 0; n < v27; n += 8)
                {
                  if (v26)
                  {
                    v517 = 0;
                    v518 = v95;
                    v519 = v94;
                    do
                    {
                      v521 = *v519;
                      v522 = v519[1];
                      v520 = (v519 + v25);
                      v524 = *v520;
                      v525 = v520[1];
                      v523 = (v520 + v25);
                      v527 = *v523;
                      v528 = v523[1];
                      v526 = (v523 + v25);
                      v530 = *v526;
                      v531 = v526[1];
                      v529 = (v526 + v25);
                      v533 = *v529;
                      v534 = v529[1];
                      v532 = (v529 + v25);
                      v536 = *v532;
                      v537 = v532[1];
                      v535 = (v532 + v25);
                      v539 = *v535;
                      v540 = v535[1];
                      v538 = (v535 + v25);
                      v541 = *v538;
                      v542 = v538[1];
                      v519 = (v538 + 8 * v25 + -7 * v25);
                      v543 = vzip1q_s32(v521, v524);
                      v544 = vzip2q_s32(v521, v524);
                      v545 = vzip1q_s32(v522, v525);
                      v546 = vzip2q_s32(v522, v525);
                      v547 = vzip1q_s32(v527, v530);
                      v548 = vzip2q_s32(v527, v530);
                      v549 = vzip1q_s32(v528, v531);
                      v550 = vzip2q_s32(v528, v531);
                      v551 = vzip1q_s32(v533, v536);
                      v552 = vzip2q_s32(v533, v536);
                      v553 = vzip1q_s32(v534, v537);
                      v554 = vzip2q_s32(v534, v537);
                      v555 = vzip1q_s32(v539, v541);
                      v556 = vzip2q_s32(v539, v541);
                      v557 = vzip1q_s32(v540, v542);
                      v558 = vzip2q_s32(v540, v542);
                      v559 = vzip2q_s64(v543, v547);
                      v530.i64[0] = v543.i64[0];
                      v530.i64[1] = v547.i64[0];
                      v531.i64[0] = v551.i64[0];
                      v531.i64[1] = v555.i64[0];
                      v560 = vzip2q_s64(v551, v555);
                      v561 = vzip2q_s64(v544, v548);
                      v539.i64[0] = v544.i64[0];
                      v539.i64[1] = v548.i64[0];
                      v562 = vzip2q_s64(v545, v549);
                      v543.i64[0] = v545.i64[0];
                      v543.i64[1] = v549.i64[0];
                      v540.i64[0] = v552.i64[0];
                      v540.i64[1] = v556.i64[0];
                      v544.i64[0] = v553.i64[0];
                      v544.i64[1] = v557.i64[0];
                      v563 = vzip2q_s64(v552, v556);
                      v545.i64[0] = v546.i64[0];
                      v545.i64[1] = v550.i64[0];
                      v552.i64[0] = v554.i64[0];
                      v552.i64[1] = v558.i64[0];
                      v564 = &v518->i8[v29];
                      *v518 = v530;
                      v518[1] = v531;
                      v518 += 2;
                      *v564 = v559;
                      v564[1] = v560;
                      v565 = &v564->i8[v29];
                      *v565 = v539;
                      v565[1] = v540;
                      v566 = &v565->i8[v29];
                      *v566 = v561;
                      v566[1] = v563;
                      v567 = (v566 + v29);
                      *v567 = v543;
                      v567[1] = v544;
                      v568 = (v567 + v29);
                      *v568 = v562;
                      v568[1] = vzip2q_s64(v553, v557);
                      v569 = (v568 + v29);
                      *v569 = v545;
                      v569[1] = v552;
                      v570 = (v569 + v29);
                      *v570 = vzip2q_s64(v546, v550);
                      v570[1] = vzip2q_s64(v554, v558);
                      v517 += 8;
                    }

                    while (v26 > v517);
                  }

                  v94 += 2;
                  v95 = (v95 + 8 * v29);
                }
              }
            }

            else if (v27)
            {
              v203 = 0;
              v204 = (v94 + (v24 - 8) * v25);
              do
              {
                if (v26)
                {
                  v205 = 0;
                  v206 = v95;
                  v207 = v204;
                  do
                  {
                    v209 = *v207;
                    v210 = v207[1];
                    v208 = (v207 + v25);
                    v212 = *v208;
                    v213 = v208[1];
                    v211 = (v208 + v25);
                    v215 = *v211;
                    v216 = v211[1];
                    v214 = (v211 + v25);
                    v218 = *v214;
                    v219 = v214[1];
                    v217 = (v214 + v25);
                    v221 = *v217;
                    v222 = v217[1];
                    v220 = (v217 + v25);
                    v224 = *v220;
                    v225 = v220[1];
                    v223 = (v220 + v25);
                    v227 = *v223;
                    v228 = v223[1];
                    v226 = (v223 + v25);
                    v229 = *v226;
                    v230 = v226[1];
                    v207 = (v226 - 7 * v25 + -8 * v25);
                    v231 = vzip1q_s32(v229, v227);
                    v232 = vzip2q_s32(v229, v227);
                    v233 = vzip1q_s32(v230, v228);
                    v234 = vzip2q_s32(v230, v228);
                    v235 = vzip1q_s32(v224, v221);
                    v236 = vzip2q_s32(v224, v221);
                    v237 = vzip1q_s32(v225, v222);
                    v238 = vzip2q_s32(v225, v222);
                    v239 = vzip1q_s32(v218, v215);
                    v240 = vzip2q_s32(v218, v215);
                    v241 = vzip1q_s32(v219, v216);
                    v242 = vzip2q_s32(v219, v216);
                    v243 = vzip1q_s32(v212, v209);
                    v244 = vzip2q_s32(v212, v209);
                    v245 = vzip1q_s32(v213, v210);
                    v246 = vzip2q_s32(v213, v210);
                    v247 = vzip2q_s64(v231, v235);
                    v213.i64[0] = v231.i64[0];
                    v213.i64[1] = v235.i64[0];
                    v231.i64[0] = v239.i64[0];
                    v231.i64[1] = v243.i64[0];
                    v248 = vzip2q_s64(v239, v243);
                    v249 = vzip2q_s64(v232, v236);
                    v239.i64[0] = v232.i64[0];
                    v239.i64[1] = v236.i64[0];
                    v250 = vzip2q_s64(v233, v237);
                    v232.i64[0] = v233.i64[0];
                    v232.i64[1] = v237.i64[0];
                    v230.i64[0] = v240.i64[0];
                    v230.i64[1] = v244.i64[0];
                    v251.i64[0] = v241.i64[0];
                    v251.i64[1] = v245.i64[0];
                    v252 = vzip2q_s64(v240, v244);
                    v233.i64[0] = v234.i64[0];
                    v233.i64[1] = v238.i64[0];
                    v240.i64[0] = v242.i64[0];
                    v240.i64[1] = v246.i64[0];
                    v253 = &v206->i8[v29];
                    *v206 = v213;
                    v206[1] = v231;
                    v206 += 2;
                    *v253 = v247;
                    v253[1] = v248;
                    v254 = (v253 + v29);
                    *v254 = v239;
                    v254[1] = v230;
                    v255 = (v254 + v29);
                    *v255 = v249;
                    v255[1] = v252;
                    v256 = (v255 + v29);
                    *v256 = v232;
                    v256[1] = v251;
                    v257 = (v256 + v29);
                    *v257 = v250;
                    v257[1] = vzip2q_s64(v241, v245);
                    v258 = (v257 + v29);
                    *v258 = v233;
                    v258[1] = v240;
                    v259 = (v258 + v29);
                    *v259 = vzip2q_s64(v234, v238);
                    v259[1] = vzip2q_s64(v242, v246);
                    v205 += 8;
                  }

                  while (v26 > v205);
                }

                v203 += 8;
                v204 += 2;
                v95 = (v95 + 8 * v29);
              }

              while (v27 > v203);
            }

            goto LABEL_179;
          }

          if (a3 == 7)
          {
            if (v27)
            {
              v699 = 0;
              v700 = v94->i64 + 4 * pixelBuffer + (v24 - 8) * v25;
              do
              {
                v700 -= 32;
                if (v26)
                {
                  v701 = 0;
                  v702 = v95;
                  v703 = v700;
                  do
                  {
                    v705 = *v703;
                    v706 = v703[1];
                    v704 = (v703 + v25);
                    v708 = *v704;
                    v709 = v704[1];
                    v707 = (v704 + v25);
                    v711 = *v707;
                    v712 = v707[1];
                    v710 = (v707 + v25);
                    v714 = *v710;
                    v715 = v710[1];
                    v713 = (v710 + v25);
                    v717 = *v713;
                    v718 = v713[1];
                    v716 = (v713 + v25);
                    v720 = *v716;
                    v721 = v716[1];
                    v719 = (v716 + v25);
                    v723 = *v719;
                    v724 = v719[1];
                    v722 = (v719 + v25);
                    v725 = *v722;
                    v726 = v722[1];
                    v703 = (v722 - 7 * v25 + -8 * v25);
                    v727 = vzip1q_s32(v725, v723);
                    v728 = vzip2q_s32(v725, v723);
                    v729 = vzip1q_s32(v726, v724);
                    v730 = vzip2q_s32(v726, v724);
                    v731 = vzip1q_s32(v720, v717);
                    v732 = vzip2q_s32(v720, v717);
                    v733 = vzip1q_s32(v721, v718);
                    v734 = vzip2q_s32(v721, v718);
                    v735 = vzip1q_s32(v714, v711);
                    v736 = vzip2q_s32(v714, v711);
                    v737 = vzip1q_s32(v715, v712);
                    v738 = vzip2q_s32(v715, v712);
                    v739 = vzip1q_s32(v708, v705);
                    v740 = vzip2q_s32(v708, v705);
                    v741 = vzip1q_s32(v709, v706);
                    v742 = vzip2q_s32(v709, v706);
                    v743 = vzip2q_s64(v730, v734);
                    v744 = vzip2q_s64(v738, v742);
                    v730.i64[1] = v734.i64[0];
                    v738.i64[1] = v742.i64[0];
                    v745 = vzip2q_s64(v729, v733);
                    v746 = vzip2q_s64(v737, v741);
                    v729.i64[1] = v733.i64[0];
                    v737.i64[1] = v741.i64[0];
                    v747 = vzip2q_s64(v728, v732);
                    v748 = vzip2q_s64(v736, v740);
                    v728.i64[1] = v732.i64[0];
                    v736.i64[1] = v740.i64[0];
                    v749 = vzip2q_s64(v727, v731);
                    v727.i64[1] = v731.i64[0];
                    v750 = (v702 + v29);
                    *v702 = v743;
                    v702[1] = v744;
                    v702 += 2;
                    *v750 = v730;
                    v750[1] = v738;
                    v751 = (v750 + v29);
                    *v751 = v745;
                    v751[1] = v746;
                    v752 = (v751 + v29);
                    *v752 = v729;
                    v752[1] = v737;
                    v753 = (v752 + v29);
                    *v753 = v747;
                    v753[1] = v748;
                    v754 = (v753 + v29);
                    *v754 = v728;
                    v754[1] = v736;
                    v755 = (v754 + v29);
                    *v755 = v749;
                    v755[1] = vzip2q_s64(v735, v739);
                    v756 = (v755 + v29);
                    v735.i64[1] = v739.i64[0];
                    *v756 = v727;
                    v756[1] = v735;
                    v701 += 8;
                  }

                  while (v26 > v701);
                }

                v699 += 8;
                v95 = (v95 + 8 * v29);
              }

              while (v27 > v699);
            }

            goto LABEL_179;
          }

          if (a3 == 8)
          {
            if (v27)
            {
              v360 = 0;
              v361 = (v94 + 4 * pixelBuffer);
              do
              {
                v361 -= 2;
                if (v26)
                {
                  v362 = 0;
                  v363 = v95;
                  v364 = v361;
                  do
                  {
                    v366 = *v364;
                    v367 = v364[1];
                    v365 = (v364 + v25);
                    v369 = *v365;
                    v370 = v365[1];
                    v368 = (v365 + v25);
                    v372 = *v368;
                    v373 = v368[1];
                    v371 = (v368 + v25);
                    v375 = *v371;
                    v376 = v371[1];
                    v374 = (v371 + v25);
                    v378 = *v374;
                    v379 = v374[1];
                    v377 = (v374 + v25);
                    v381 = *v377;
                    v382 = v377[1];
                    v380 = (v377 + v25);
                    v384 = *v380;
                    v385 = v380[1];
                    v383 = (v380 + v25);
                    v386 = *v383;
                    v387 = v383[1];
                    v364 = (v383 + 8 * v25 + -7 * v25);
                    v388 = vzip1q_s32(v366, v369);
                    v389 = vzip2q_s32(v366, v369);
                    v390 = vzip1q_s32(v367, v370);
                    v391 = vzip2q_s32(v367, v370);
                    v392 = vzip1q_s32(v372, v375);
                    v393 = vzip2q_s32(v372, v375);
                    v394 = vzip1q_s32(v373, v376);
                    v395 = vzip2q_s32(v373, v376);
                    v396 = vzip1q_s32(v378, v381);
                    v397 = vzip2q_s32(v378, v381);
                    v398 = vzip1q_s32(v379, v382);
                    v399 = vzip2q_s32(v379, v382);
                    v400 = vzip1q_s32(v384, v386);
                    v401 = vzip2q_s32(v384, v386);
                    v402 = vzip1q_s32(v385, v387);
                    v403 = vzip2q_s32(v385, v387);
                    v404 = vzip2q_s64(v391, v395);
                    v405 = vzip2q_s64(v399, v403);
                    v391.i64[1] = v395.i64[0];
                    v399.i64[1] = v403.i64[0];
                    v406 = vzip2q_s64(v390, v394);
                    v407 = vzip2q_s64(v398, v402);
                    v390.i64[1] = v394.i64[0];
                    v398.i64[1] = v402.i64[0];
                    v408 = vzip2q_s64(v389, v393);
                    v409 = vzip2q_s64(v397, v401);
                    v389.i64[1] = v393.i64[0];
                    v397.i64[1] = v401.i64[0];
                    v410 = vzip2q_s64(v388, v392);
                    v388.i64[1] = v392.i64[0];
                    v411 = (v363 + v29);
                    *v363 = v404;
                    v363[1] = v405;
                    v363 += 2;
                    *v411 = v391;
                    v411[1] = v399;
                    v412 = (v411 + v29);
                    *v412 = v406;
                    v412[1] = v407;
                    v413 = (v412 + v29);
                    *v413 = v390;
                    v413[1] = v398;
                    v414 = (v413 + v29);
                    *v414 = v408;
                    v414[1] = v409;
                    v415 = (v414 + v29);
                    *v415 = v389;
                    v415[1] = v397;
                    v416 = (v415 + v29);
                    *v416 = v410;
                    v416[1] = vzip2q_s64(v396, v400);
                    v417 = (v416 + v29);
                    v396.i64[1] = v400.i64[0];
                    *v417 = v388;
                    v417[1] = v396;
                    v362 += 8;
                  }

                  while (v26 > v362);
                }

                v360 += 8;
                v95 = (v95 + 8 * v29);
              }

              while (v27 > v360);
            }

            goto LABEL_179;
          }
        }

        else
        {
          if (a3 > 2)
          {
            if (a3 == 3)
            {
              if (v27)
              {
                v601 = 0;
                v602 = v94[-2].i64 + 4 * pixelBuffer + (v24 - 8) * v25;
                do
                {
                  if (v26)
                  {
                    v603 = 0;
                    v604 = v95;
                    v605 = v602;
                    do
                    {
                      v606 = *v605;
                      v607 = v605[1];
                      v609 = *(v605 + v25);
                      v608 = (v605 + v25 + v25);
                      v611 = *v608;
                      v612 = v608[1];
                      v610 = (v608 + v25);
                      v614 = *v610;
                      v615 = v610[1];
                      v613 = (v610 + v25);
                      v617 = *v613;
                      v618 = v613[1];
                      v616 = (v613 + v25);
                      v620 = *v616;
                      v621 = v616[1];
                      v619 = (v616 + v25);
                      v623 = *v619;
                      v624 = v619[1];
                      v622 = (v619 + v25);
                      v625 = vrev64q_s32(v622[1]);
                      v626 = vrev64q_s32(*v622);
                      v627 = vrev64q_s32(v624);
                      v628 = vextq_s8(v627, v627, 8uLL);
                      v629 = vextq_s8(v625, v625, 8uLL);
                      v630 = vrev64q_s32(v623);
                      v631 = vextq_s8(v630, v630, 8uLL);
                      v632 = vrev64q_s32(v621);
                      v633 = vrev64q_s32(v620);
                      v634 = vrev64q_s32(v618);
                      v635 = vextq_s8(v626, v626, 8uLL);
                      v636 = vrev64q_s32(v617);
                      v637 = vextq_s8(v636, v636, 8uLL);
                      v638 = vrev64q_s32(v615);
                      v639 = vrev64q_s32(v614);
                      v640 = vrev64q_s32(v612);
                      v641 = vrev64q_s32(v611);
                      v642 = vextq_s8(v641, v641, 8uLL);
                      v643 = vrev64q_s32(*(&v605[1] + v25));
                      v644 = (v604 + v29);
                      *v604 = v629;
                      v604[1] = v635;
                      v604 += 2;
                      v645 = vrev64q_s32(v609);
                      v646 = vextq_s8(v645, v645, 8uLL);
                      *v644 = v628;
                      v644[1] = v631;
                      v647 = (v644 + v29);
                      *v647 = vextq_s8(v632, v632, 8uLL);
                      v647[1] = vextq_s8(v633, v633, 8uLL);
                      v648 = (v647 + v29);
                      *v648 = vextq_s8(v634, v634, 8uLL);
                      v648[1] = v637;
                      v649 = (v648 + v29);
                      v650 = vrev64q_s32(v607);
                      v651 = vrev64q_s32(v606);
                      *v649 = vextq_s8(v638, v638, 8uLL);
                      v649[1] = vextq_s8(v639, v639, 8uLL);
                      v652 = (v649 + v29);
                      *v652 = vextq_s8(v640, v640, 8uLL);
                      v652[1] = v642;
                      v653 = (v652 + v29);
                      *v653 = vextq_s8(v643, v643, 8uLL);
                      v653[1] = v646;
                      v654 = (v653 + v29);
                      *v654 = vextq_s8(v650, v650, 8uLL);
                      v654[1] = vextq_s8(v651, v651, 8uLL);
                      v603 += 8;
                      v605 -= 2;
                    }

                    while (v26 > v603);
                  }

                  v601 += 8;
                  v602 += -8 * v25;
                  v95 = (v95 + 8 * v29);
                }

                while (v27 > v601);
              }
            }

            else if (v27)
            {
              v283 = 0;
              v284 = &v94->i8[(v24 - 8) * v25];
              do
              {
                if (v26)
                {
                  v285 = 0;
                  for (ii = 0; ii < v26; ii += 8)
                  {
                    v288 = *&v284[v285 * 16];
                    v289 = *&v284[v285 * 16 + 16];
                    v287 = &v284[v285 * 16 + v25];
                    v291 = *v287;
                    v292 = *(v287 + 1);
                    v290 = &v287[v25];
                    v294 = *v290;
                    v295 = *(v290 + 1);
                    v293 = &v290[v25];
                    v297 = *v293;
                    v298 = v293[1];
                    v296 = (v293 + v25);
                    v300 = *v296;
                    v301 = v296[1];
                    v299 = (v296 + v25);
                    v303 = *v299;
                    v304 = v299[1];
                    v302 = (v299 + v25);
                    v306 = *v302;
                    v307 = v302[1];
                    v305 = (v302 + v25);
                    i8 = v95[v285].i8;
                    v309 = v305[1];
                    *i8 = *v305;
                    *(i8 + 1) = v309;
                    v310 = &v95[v285].i8[v29];
                    *v310 = v306;
                    *(v310 + 1) = v307;
                    v311 = &v310[v29];
                    *v311 = v303;
                    *(v311 + 1) = v304;
                    v312 = &v311[v29];
                    *v312 = v300;
                    *(v312 + 1) = v301;
                    v313 = &v312[v29];
                    *v313 = v297;
                    *(v313 + 1) = v298;
                    v314 = &v313[v29];
                    *v314 = v294;
                    *(v314 + 1) = v295;
                    v315 = &v314[v29];
                    *v315 = v291;
                    *(v315 + 1) = v292;
                    v316 = &v315[v29];
                    *v316 = v288;
                    *(v316 + 1) = v289;
                    v285 += 2;
                  }
                }

                v283 += 8;
                v284 -= 8 * v25;
                v95 = (v95 + 8 * v29);
              }

              while (v27 > v283);
            }

            goto LABEL_179;
          }

          if (a3 == 1)
          {
            if (v27)
            {
              for (jj = 0; jj < v27; jj += 8)
              {
                if (v26)
                {
                  v441 = 0;
                  for (kk = 0; kk < v26; kk += 8)
                  {
                    v444 = v94[v441 + 1];
                    v443 = &v94[v441].i8[v25];
                    v446 = *v443;
                    v447 = *(v443 + 1);
                    v445 = &v443[v25];
                    v449 = *v445;
                    v450 = *(v445 + 1);
                    v448 = &v445[v25];
                    v452 = *v448;
                    v453 = v448[1];
                    v451 = (v448 + v25);
                    v455 = *v451;
                    v456 = v451[1];
                    v454 = (v451 + v25);
                    v458 = *v454;
                    v459 = v454[1];
                    v457 = (v454 + v25);
                    v461 = *v457;
                    v462 = v457[1];
                    v460 = (v457 + v25);
                    v463 = v95[v441].i8;
                    v464 = *v460;
                    v465 = v460[1];
                    *v463 = v94[v441];
                    *(v463 + 1) = v444;
                    v466 = &v95[v441].i8[v29];
                    *v466 = v446;
                    *(v466 + 1) = v447;
                    v467 = &v466[v29];
                    *v467 = v449;
                    *(v467 + 1) = v450;
                    v468 = &v467[v29];
                    *v468 = v452;
                    *(v468 + 1) = v453;
                    v469 = &v468[v29];
                    *v469 = v455;
                    *(v469 + 1) = v456;
                    v470 = &v469[v29];
                    *v470 = v458;
                    *(v470 + 1) = v459;
                    v471 = &v470[v29];
                    *v471 = v461;
                    *(v471 + 1) = v462;
                    v472 = &v471[v29];
                    *v472 = v464;
                    *(v472 + 1) = v465;
                    v441 += 2;
                  }
                }

                v94 = (v94 + 8 * v25);
                v95 = (v95 + 8 * v29);
              }
            }

            goto LABEL_179;
          }

          if (a3 == 2)
          {
            if (v27)
            {
              v96 = 0;
              v97 = v94[-2].i64 + 4 * pixelBuffer;
              do
              {
                if (v26)
                {
                  v98 = 0;
                  v99 = v97;
                  v100 = v95;
                  do
                  {
                    v101 = vrev64q_s32(v99[1]);
                    v102 = (v99 + v25 + v25);
                    v104 = *v102;
                    v105 = v102[1];
                    v103 = (v102 + v25);
                    v107 = *v103;
                    v108 = v103[1];
                    v106 = (v103 + v25);
                    v110 = *v106;
                    v111 = v106[1];
                    v109 = (v106 + v25);
                    v113 = *v109;
                    v114 = v109[1];
                    v112 = (v109 + v25);
                    v116 = *v112;
                    v117 = v112[1];
                    v115 = (v112 + v25);
                    v118 = vextq_s8(v101, v101, 8uLL);
                    v119 = vrev64q_s32(*v99);
                    v120 = vextq_s8(v119, v119, 8uLL);
                    v121 = vrev64q_s32(*(&v99[1] + v25));
                    v122 = *v115;
                    v123 = v115[1];
                    v124 = vextq_s8(v121, v121, 8uLL);
                    v125 = vrev64q_s32(*(v99 + v25));
                    v126 = vextq_s8(v125, v125, 8uLL);
                    v127 = vrev64q_s32(v105);
                    v128 = vrev64q_s32(v104);
                    v129 = vextq_s8(v127, v127, 8uLL);
                    v130 = vextq_s8(v128, v128, 8uLL);
                    v131 = vrev64q_s32(v108);
                    v132 = vextq_s8(v131, v131, 8uLL);
                    v133 = vrev64q_s32(v107);
                    v134 = vextq_s8(v133, v133, 8uLL);
                    v135 = vrev64q_s32(v111);
                    v136 = vextq_s8(v135, v135, 8uLL);
                    v137 = vrev64q_s32(v110);
                    v138 = vextq_s8(v137, v137, 8uLL);
                    v139 = vrev64q_s32(v114);
                    v140 = vrev64q_s32(v113);
                    v141 = vextq_s8(v139, v139, 8uLL);
                    v142 = vrev64q_s32(v117);
                    v143 = (v100 + v29);
                    *v100 = v118;
                    v100[1] = v120;
                    v100 += 2;
                    v144 = vextq_s8(v142, v142, 8uLL);
                    v145 = vrev64q_s32(v116);
                    *v143 = v124;
                    v143[1] = v126;
                    v146 = (v143 + v29);
                    v147 = vextq_s8(v145, v145, 8uLL);
                    *v146 = v129;
                    v146[1] = v130;
                    v148 = (v146 + v29);
                    *v148 = v132;
                    v148[1] = v134;
                    v149 = (v148 + v29);
                    *v149 = v136;
                    v149[1] = v138;
                    v150 = (v149 + v29);
                    *v150 = v141;
                    v150[1] = vextq_s8(v140, v140, 8uLL);
                    v151 = (v150 + v29);
                    v152 = vrev64q_s32(v123);
                    v153 = vrev64q_s32(v122);
                    *v151 = v144;
                    v151[1] = v147;
                    v154 = (v151 + v29);
                    *v154 = vextq_s8(v152, v152, 8uLL);
                    v154[1] = vextq_s8(v153, v153, 8uLL);
                    v98 += 8;
                    v99 -= 2;
                  }

                  while (v26 > v98);
                }

                v96 += 8;
                v97 += 8 * v25;
                v95 = (v95 + 8 * v29);
              }

              while (v27 > v96);
            }

            goto LABEL_179;
          }
        }

        v757 = 995;
      }

      v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14, "(Fig)", v757, v9, v35, v36, v758);
      goto LABEL_180;
    }

    v67 = CVPixelBufferGetWidth(a1);
    v68 = CVPixelBufferGetHeight(a1);
    v69 = CVPixelBufferGetBytesPerRow(a1);
    v70 = CVPixelBufferGetPixelFormatType(a1);
    v71 = FigDepthBytesPerPixelForDepthFormat(v70);
    if (!v71)
    {
      FigDepthRotateBuffer_cold_4(0, v72, v73, v74, v75, v76, v77, v78, v758);
      return 0;
    }

    v79 = v71;
    v759 = v67;
    v80 = CVPixelBufferGetWidth(a2);
    v81 = CVPixelBufferGetHeight(a2);
    v82 = CVPixelBufferGetBytesPerRow(a2);
    if (CVPixelBufferLockBaseAddress(a1, 1uLL))
    {
      FigDepthRotateBuffer_cold_2();
      return 0;
    }

    v83 = a1;
    v84 = CVPixelBufferGetBaseAddress(a1);
    v85 = a2;
    v86 = v84;
    v87 = CVPixelBufferLockBaseAddress(v85, 0);
    if (v87)
    {
      FigDepthRotateBuffer_cold_3(v87, v83);
      return 0;
    }

    v88 = CVPixelBufferGetBaseAddress(v85);
    if (a3 > 4)
    {
      if (a3 <= 6)
      {
        if (a3 == 5)
        {
          LODWORD(v91) = v69;
        }

        else
        {
          v91 = -v69;
          v86 = (v86 + (v68 - 1) * v69);
        }

        LODWORD(v69) = v79;
        if (!v81)
        {
          goto LABEL_69;
        }

        goto LABEL_65;
      }

      if (a3 != 7)
      {
        if (a3 == 8)
        {
          LODWORD(v91) = v69;
          v69 = -v79;
LABEL_44:
          v86 = (v86 + v79 * (v759 - 1));
          if (!v81)
          {
            goto LABEL_69;
          }

LABEL_65:
          for (mm = 0; mm != v81; ++mm)
          {
            v157 = v80;
            v158 = v88;
            for (nn = v86; v157; --v157)
            {
              *v158 = *nn;
              v158 = (v158 + v79);
              nn = (nn + v91);
            }

            v88 += v82;
            v86 = (v86 + v69);
          }

          goto LABEL_69;
        }

        goto LABEL_71;
      }

      v91 = -v69;
      v155 = v86 + (v68 - 1) * v69;
      v69 = -v79;
    }

    else
    {
      if (a3 <= 2)
      {
        if (a3 != 1)
        {
          if (a3 == 2)
          {
            v91 = -v79;
            goto LABEL_44;
          }

LABEL_71:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14, "(Fig)", 0xBB, v9, v89, v90, v759);
          goto LABEL_69;
        }

        goto LABEL_39;
      }

      if (a3 != 3)
      {
        v86 = (v86 + (v68 - 1) * v69);
        v69 = -v69;
LABEL_39:
        LODWORD(v91) = v79;
        if (v81)
        {
          goto LABEL_65;
        }

        goto LABEL_69;
      }

      v91 = -v79;
      v155 = v86 + (v68 - 1) * v69;
      v69 = -v69;
    }

    v86 = (v155 + v79 * (v759 - 1));
    if (v81)
    {
      goto LABEL_65;
    }

LABEL_69:
    CVPixelBufferUnlockBaseAddress(v83, 1uLL);
    CVPixelBufferUnlockBaseAddress(v85, 0);
    return 0;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14, "(Fig)", 0x3FA, v9, v16, v17, a9);
}

uint64_t FigDepthBytesPerPixelForDepthFormat(int a1)
{
  result = 2;
  if (a1 > 1717856626)
  {
    if (a1 > 1751411058)
    {
      if (a1 == 1751411059)
      {
        return result;
      }

      v3 = 1932996149;
LABEL_11:
      if (a1 == v3)
      {
        return result;
      }

      return 0;
    }

    if (a1 != 1717856627)
    {
      v3 = 1751410032;
      goto LABEL_11;
    }

    return 4;
  }

  if (a1 != 825306677 && a1 != 825437747)
  {
    if (a1 != 1717855600)
    {
      return 0;
    }

    return 4;
  }

  return result;
}

uint64_t FigDepthConvertBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  pixelBufferOut = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType == v5)
  {
    FigDepthConvertBuffer_cold_12(&v87);
    goto LABEL_97;
  }

  v6 = v5;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v9 = PixelFormatType == 1717855600;
  if (PixelFormatType == 1751410032)
  {
    v9 = 1;
  }

  v11 = v6 == 1717855600 || v6 == 1751410032;
  v12 = PixelFormatType == 1751411059 || PixelFormatType == 1751410032;
  if (v9 != v11)
  {
    v13 = Height;
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v15 = CVPixelBufferGetBytesPerRow(a2);
    if ((Width & 7) == 0 && (BytesPerRow & 0xF) == 0 && (v15 & 0xF) == 0)
    {
      v16 = CVPixelBufferGetBytesPerRow(a1);
      v17 = CVPixelBufferGetPixelFormatType(a1);
      v18 = CVPixelBufferGetWidth(a2);
      v19 = CVPixelBufferGetHeight(a2);
      v20 = CVPixelBufferGetBytesPerRow(a2);
      v21 = CVPixelBufferGetPixelFormatType(a2);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      CVPixelBufferLockBaseAddress(a2, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      v23 = CVPixelBufferGetBaseAddress(a2);
      if (v17 == 1751411059 || v17 == 1751410032)
      {
        if (v21 == 1751411059 || v21 == 1751410032)
        {
          if (v19)
          {
            v24 = 0;
            v25 = vdupq_n_s32(0x38D1B717u);
            do
            {
              if (v18)
              {
                v26 = 0;
                for (i = 0; i < v18; i += 8)
                {
                  v28 = BaseAddress[v26];
                  v29 = vmaxq_f32(vcvtq_f32_f16(*v28.i8), v25);
                  v30 = vmaxq_f32(vcvt_hight_f32_f16(v28), v25);
                  v31 = vrecpeq_f32(v29);
                  v32 = vrecpeq_f32(v30);
                  v23[v26++] = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(v31, vrecpsq_f32(v29, v31))), vmulq_f32(v32, vrecpsq_f32(v30, v32)));
                }
              }

              ++v24;
              BaseAddress = (BaseAddress + v16);
              v23 = (v23 + v20);
            }

            while (v24 != v19);
          }
        }

        else if (v19)
        {
          v59 = 0;
          v60 = vdupq_n_s32(0x38D1B717u);
          do
          {
            if (v18)
            {
              v61 = 0;
              v62 = v23;
              v63 = BaseAddress;
              do
              {
                v64 = *v63++;
                v65 = vmaxq_f32(vcvtq_f32_f16(*v64.i8), v60);
                v66 = vmaxq_f32(vcvt_hight_f32_f16(v64), v60);
                v67 = vrecpeq_f32(v65);
                v68 = vrecpeq_f32(v66);
                *v62 = vmulq_f32(v67, vrecpsq_f32(v65, v67));
                v62[1] = vmulq_f32(v68, vrecpsq_f32(v66, v68));
                v62 += 2;
                v61 += 8;
              }

              while (v18 > v61);
            }

            ++v59;
            BaseAddress = (BaseAddress + v16);
            v23 = (v23 + v20);
          }

          while (v59 != v19);
        }
      }

      else if (v21 == 1751411059 || v21 == 1751410032)
      {
        if (v19)
        {
          v47 = 0;
          v48 = vdupq_n_s32(0x38D1B717u);
          do
          {
            if (v18)
            {
              v49 = 0;
              v50 = v23;
              v51 = BaseAddress;
              do
              {
                v52 = *v51;
                v53 = v51[1];
                v51 += 2;
                v54 = vmaxq_f32(v52, v48);
                v55 = vmaxq_f32(v53, v48);
                v56 = vrecpeq_f32(v54);
                v57 = vrecpeq_f32(v55);
                *v50++ = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(v56, vrecpsq_f32(v54, v56))), vmulq_f32(v57, vrecpsq_f32(v55, v57)));
                v49 += 8;
              }

              while (v18 > v49);
            }

            ++v47;
            BaseAddress = (BaseAddress + v16);
            v23 = (v23 + v20);
          }

          while (v47 != v19);
        }
      }

      else if (v19)
      {
        v70 = 0;
        v71 = vdupq_n_s32(0x38D1B717u);
        do
        {
          if (v18)
          {
            v72 = 0;
            for (j = 0; j < v18; j += 8)
            {
              v74 = &v23[v72];
              v75 = vmaxq_f32(BaseAddress[v72], v71);
              v76 = vmaxq_f32(BaseAddress[v72 + 1], v71);
              v77 = vrecpeq_f32(v75);
              v78 = vrecpeq_f32(v76);
              v79 = vmulq_f32(v77, vrecpsq_f32(v75, v77));
              v80 = vmulq_f32(v78, vrecpsq_f32(v76, v78));
              *v74 = vmulq_f32(v79, vrecpsq_f32(v75, v79));
              v74[1] = vmulq_f32(v80, vrecpsq_f32(v76, v80));
              v72 += 2;
            }
          }

          ++v70;
          BaseAddress = (BaseAddress + v16);
          v23 = (v23 + v20);
        }

        while (v70 != v19);
      }

      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      CVPixelBufferUnlockBaseAddress(a2, 0);
      goto LABEL_92;
    }

    if (v12 || v6 == 1751411059 || v6 == 1751410032)
    {
      v35 = ((PixelFormatType - 1717856627) & 0xFDFFFFFF) != 0 ? 1717855600 : 1717856627;
      v36 = CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, v13, v35, 0, &pixelBufferOut);
      if (v36)
      {
        FigDepthConvertBuffer_cold_2(v36, &v87);
        goto LABEL_97;
      }
    }

    if (PixelFormatType != 1751411059 && PixelFormatType != 1751410032)
    {
      if (v6 == 1751411059 || v6 == 1751410032)
      {
        if (!figDepthClampAndInvertFloat32_C(a1, pixelBufferOut))
        {
          FigDepthConvertBuffer_cold_10(&v87);
          goto LABEL_97;
        }

        v58 = figDepthConvertBufferFloat32ToFloat16(pixelBufferOut, a2);
        if (v58)
        {
          FigDepthConvertBuffer_cold_9(v58, &v87);
          goto LABEL_97;
        }
      }

      else if (!figDepthClampAndInvertFloat32_C(a1, a2))
      {
        FigDepthConvertBuffer_cold_11(&v87);
        goto LABEL_97;
      }

      goto LABEL_92;
    }

    if (v6 != 1751411059 && v6 != 1751410032)
    {
      v69 = figDepthConvertBufferFloat16ToFloat32(a1, pixelBufferOut);
      if (v69)
      {
        FigDepthConvertBuffer_cold_7(v69, &v87);
        goto LABEL_97;
      }

      if (!figDepthClampAndInvertFloat32_C(pixelBufferOut, a2))
      {
        FigDepthConvertBuffer_cold_8(&v87);
        goto LABEL_97;
      }

      goto LABEL_92;
    }

    v37 = figDepthConvertBufferFloat16ToFloat32(a1, pixelBufferOut);
    if (v37)
    {
      FigDepthConvertBuffer_cold_3(v37, &v87);
      goto LABEL_97;
    }

    v38 = pixelBufferOut;
    if (CVPixelBufferLockBaseAddress(pixelBufferOut, 0))
    {
      FigDepthConvertBuffer_cold_4(&v87);
    }

    else
    {
      v39 = CVPixelBufferGetBaseAddress(v38);
      v40 = CVPixelBufferGetHeight(v38);
      v41 = CVPixelBufferGetWidth(v38);
      v42 = CVPixelBufferGetBytesPerRow(v38);
      if (v40)
      {
        for (k = 0; k != v40; ++k)
        {
          if (v41)
          {
            for (m = 0; m != v41; ++m)
            {
              v45 = v39[m];
              if (v45 < 0.0001)
              {
                v45 = 0.0001;
              }

              v39[m] = 1.0 / v45;
            }
          }

          v39 = (v39 + v42);
        }
      }

      if (!CVPixelBufferUnlockBaseAddress(v38, 0))
      {
        v46 = figDepthConvertBufferFloat32ToFloat16(pixelBufferOut, a2);
        if (v46)
        {
          FigDepthConvertBuffer_cold_6(v46, &v87);
LABEL_97:
          v33 = v87;
          goto LABEL_93;
        }

        goto LABEL_92;
      }

      FigDepthConvertBuffer_cold_5(&v87);
    }

    v82 = v87;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v87, pixelBufferOut, v87, v88, v89, v90, v91);
    v33 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFFFFFLL, "(Fig)", 0x61E, v82, v83, v84, v85);
    goto LABEL_93;
  }

  if (!v12)
  {
    if (v6 != 1751411059 && v6 != 1751410032)
    {
      goto LABEL_92;
    }

    v34 = figDepthConvertBufferFloat32ToFloat16(a1, a2);
    goto LABEL_59;
  }

  v33 = 0;
  if (v6 != 1751410032 && v6 != 1751411059)
  {
    v34 = figDepthConvertBufferFloat16ToFloat32(a1, a2);
LABEL_59:
    if (v34)
    {
      FigDepthConvertBuffer_cold_1(v34, &v87);
      goto LABEL_97;
    }

LABEL_92:
    v33 = 0;
  }

LABEL_93:
  CVPixelBufferRelease(pixelBufferOut);
  return v33;
}

uint64_t figDepthConvertBufferFloat16ToFloat32(__CVBuffer *a1, __CVBuffer *a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  src.data = CVPixelBufferGetBaseAddress(a1);
  src.height = CVPixelBufferGetHeight(a1);
  src.width = CVPixelBufferGetWidth(a1);
  src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  dest.data = CVPixelBufferGetBaseAddress(a2);
  dest.height = CVPixelBufferGetHeight(a2);
  dest.width = CVPixelBufferGetWidth(a2);
  dest.rowBytes = CVPixelBufferGetBytesPerRow(a2);
  v4 = vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  if (v4)
  {
    figDepthConvertBufferFloat16ToFloat32_cold_1(v4, &v8);
    return v8;
  }

  else
  {
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return 0;
  }
}

uint64_t figDepthConvertBufferFloat32ToFloat16(__CVBuffer *a1, __CVBuffer *a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  src.data = CVPixelBufferGetBaseAddress(a1);
  src.height = CVPixelBufferGetHeight(a1);
  src.width = CVPixelBufferGetWidth(a1);
  src.rowBytes = CVPixelBufferGetBytesPerRow(a1);
  dest.data = CVPixelBufferGetBaseAddress(a2);
  dest.height = CVPixelBufferGetHeight(a2);
  dest.width = CVPixelBufferGetWidth(a2);
  dest.rowBytes = CVPixelBufferGetBytesPerRow(a2);
  v4 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
  if (v4)
  {
    figDepthConvertBufferFloat32ToFloat16_cold_1(v4, &v8);
    return v8;
  }

  else
  {
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return 0;
  }
}

uint64_t figDepthClampAndInvertFloat32_C(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
    figDepthClampAndInvertFloat32_C_cold_1();
    return 0;
  }

  if (CVPixelBufferLockBaseAddress(a2, 0))
  {
    figDepthClampAndInvertFloat32_C_cold_2();
    return 0;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v5 = CVPixelBufferGetBaseAddress(a2);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        for (j = 0; j != Width; ++j)
        {
          v12 = BaseAddress[j];
          if (v12 < 0.0001)
          {
            v12 = 0.0001;
          }

          v5[j] = 1.0 / v12;
        }
      }

      BaseAddress = (BaseAddress + BytesPerRow);
      v5 = (v5 + v9);
    }
  }

  v13 = 1;
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  return v13;
}

uint64_t FigDepthScaleBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);

  return FigDepthScaleBufferWithCrop(a1, a2, 0.0, 0.0, Width, Height);
}

uint64_t FigDepthScaleBufferWithCrop(__CVBuffer *a1, __CVBuffer *a2, double a3, double a4, double a5, double a6)
{
  *v10.i64 = a3;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  pixelBuffer = a1;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v16 = CVPixelBufferGetBytesPerRow(a2);
  v17 = CVPixelBufferGetPixelFormatType(a2);
  v18 = FigDepthBytesPerPixelForDepthFormat(PixelFormatType);
  if (!v18)
  {
    FigDepthScaleBufferWithCrop_cold_4(v344);
    return v344[0];
  }

  v19 = v18;
  if (v18 != FigDepthBytesPerPixelForDepthFormat(v17))
  {
    FigDepthScaleBufferWithCrop_cold_1(&v343);
    return v343;
  }

  v20 = a5;
  v21 = a6;
  v22 = a5 / Width;
  v23 = v21 / Height;
  if (v22 == v23)
  {
    v24 = a1;
    if (v22 == 2.0)
    {
      v25 = 0x20u / v19;
      v26 = v25 >> 1;
      v27 = 2;
LABEL_6:
      v28 = 1;
      goto LABEL_11;
    }

    if (v22 == 4.0)
    {
      v25 = 0x40u / v19;
      v26 = v25 >> 2;
      v27 = 4;
    }

    else
    {
      if (v22 == 0.5)
      {
        v25 = 8u / v19;
        v26 = 2 * v25;
        v27 = -2;
        goto LABEL_6;
      }

      if (v22 != 0.25)
      {
        v28 = 0;
        v27 = 0;
        v26 = 1;
        v25 = 1;
LABEL_11:
        if ((v25 - 1) & v20 | v28 & v21 || ((v26 - 1) & Width) != 0)
        {
          v27 = 0;
        }

        if (CVPixelBufferGetWidth(pixelBuffer) != v20 || CVPixelBufferGetHeight(pixelBuffer) != v21)
        {
          v27 = 0;
        }

        goto LABEL_17;
      }

      v25 = 8u / v19;
      v26 = 4 * v25;
      v27 = -4;
    }

    v28 = 3;
    goto LABEL_11;
  }

  v27 = 0;
  v24 = pixelBuffer;
LABEL_17:
  v341 = v21;
  v29 = CVPixelBufferLockBaseAddress(v24, 1uLL);
  if (v29)
  {
    v338 = v29;
    FigDepthScaleBufferWithCrop_cold_2();
  }

  else
  {
    v30 = CVPixelBufferLockBaseAddress(a2, 0);
    if (v30)
    {
      v338 = v30;
      FigDepthScaleBufferWithCrop_cold_3(v30, v24);
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(v24);
      v32 = CVPixelBufferGetBaseAddress(a2);
      v45 = v32;
      if (v27 > 1)
      {
        if (v27 == 4)
        {
          if (v19 == 2)
          {
            if (Height)
            {
              for (i = 0; i != Height; ++i)
              {
                if (Width)
                {
                  v70 = 0;
                  v71 = v45;
                  v72 = BaseAddress;
                  do
                  {
                    v73 = vld4q_s16(v72);
                    v72 += 32;
                    *v71++ = v73;
                    v70 += 8;
                  }

                  while (Width > v70);
                }

                BaseAddress = (BaseAddress + 4 * BytesPerRow);
                v45 = (v45 + v16);
              }
            }
          }

          else if (Height)
          {
            for (j = 0; j != Height; ++j)
            {
              if (Width)
              {
                v92 = 0;
                v93 = v45;
                v94 = BaseAddress;
                do
                {
                  v95 = vld2q_f32(v94);
                  *v93++ = v95;
                  v92 += 4;
                  v94 += 16;
                }

                while (Width > v92);
              }

              BaseAddress = (BaseAddress + 4 * BytesPerRow);
              v45 = (v45 + v16);
            }
          }
        }

        else if (v19 == 2)
        {
          if (Height)
          {
            for (k = 0; k != Height; ++k)
            {
              if (Width)
              {
                v52 = 0;
                v53 = BaseAddress;
                v54 = v45;
                do
                {
                  v55 = vld2q_s16(v53);
                  v53 += 16;
                  *v54++ = v55;
                  v52 += 8;
                }

                while (Width > v52);
              }

              BaseAddress = (BaseAddress + 2 * BytesPerRow);
              v45 = (v45 + v16);
            }
          }
        }

        else if (Height)
        {
          for (m = 0; m != Height; ++m)
          {
            if (Width)
            {
              v84 = 0;
              v85 = v45;
              v86 = BaseAddress;
              do
              {
                v87 = vld2q_f32(v86);
                v86 += 8;
                *v85++ = v87;
                v84 += 4;
              }

              while (Width > v84);
            }

            BaseAddress = (BaseAddress + 2 * BytesPerRow);
            v45 = (v45 + v16);
          }
        }
      }

      else if (v27 == -4)
      {
        v65 = (v32 + v16);
        if (v19 == 4)
        {
          *v34.i8 = *BaseAddress;
          *v66.i8 = vdup_lane_s32(*BaseAddress, 0);
          v67 = v20 - 2;
          if (v20 == 2)
          {
            v35.i64[0] = v66.i64[0];
            v68 = v32;
          }

          else
          {
            v185 = 0;
            v186 = &BaseAddress[1];
            v33.i64[0] = 0x3E0000003EC00000;
            v68 = v32;
            do
            {
              v36.i64[0] = v34.i64[0];
              v187 = (v68 + v16);
              *v35.i8 = vext_s8(*v66.i8, *v34.i8, 4uLL);
              v66.i64[1] = v34.i64[0];
              v188 = *v186++;
              *v34.i8 = v188;
              v189 = vzip1q_s32(v35, v35);
              *v35.i8 = vext_s8(*v36.i8, v188, 4uLL);
              v37.i64[1] = v35.i64[0];
              v37 = vzip2q_s32(v37, v37);
              v190 = vmlaq_f32(vmulq_f32(v189, xmmword_1AD056620), xmmword_1AD056630, vzip1q_s32(v36, v36));
              v38 = vmlaq_f32(vmulq_f32(vzip2q_s32(v66, v66), xmmword_1AD056620), xmmword_1AD056630, v37);
              *v68 = v190;
              v68[1] = v38;
              v68 += 2;
              *v187 = v190;
              v187[1] = v38;
              v185 += 2;
              v66.i64[0] = v36.i64[0];
            }

            while (v67 > v185);
            v65 = (v68 + v16);
          }

          v33.i64[1] = v34.i64[0];
          v191 = vzip1q_s32(v35, v35);
          v192 = vzip1q_s32(v34, v34);
          v193 = vmlaq_f32(vmulq_f32(v191, xmmword_1AD056620), xmmword_1AD056630, v192);
          v194 = vmlaq_lane_f32(vmulq_f32(vzip2q_s32(v33, v33), xmmword_1AD056620), xmmword_1AD056630, *v34.i8, 1);
          *v68 = v193;
          v68[1] = v194;
          *v65 = v193;
          v65[1] = v194;
          v195 = (v32 + 2 * v16);
          if (v341 == 1)
          {
            v196 = BaseAddress;
          }

          else
          {
            v209 = 0;
            v210 = 2 * v16;
            v211 = 4 * v16;
            v34.i64[1] = 0x3F0C00003F440000;
            v191.i64[1] = 0x3EA800003DE00000;
            v192.i64[1] = 0x3DA000003DE00000;
            v193.i64[1] = 0x3D4000003C800000;
            v212 = &BaseAddress[1];
            v194.i64[0] = 0x3DA000003E700000;
            v37.i64[0] = 0x3F0C00003EC80000;
            v213 = 3 * v16;
            v214 = 5 * v16;
            do
            {
              v196 = (BaseAddress + BytesPerRow);
              *v39.i8 = *BaseAddress;
              *v38.i8 = *(BaseAddress + BytesPerRow);
              if (v20 == 2)
              {
                v215 = (v195 + v16);
                v216 = (v195 + v210);
                v217 = (v195 + v213);
                *v40.f32 = vdup_lane_s32(*v39.i8, 0);
                *v41.f32 = vdup_lane_s32(*v38.i8, 0);
                v218 = v195;
              }

              else
              {
                v219 = 0;
                v220 = vdup_lane_s32(*v38.i8, 0);
                *v221.f32 = vdup_lane_s32(*v39.i8, 0);
                v222 = v45;
                v223 = v212;
                do
                {
                  v42.i64[0] = v38.i64[0];
                  v43.i64[0] = v39.i64[0];
                  v224 = (v222 + v210);
                  v225 = (v222 + v213);
                  v226 = (v222 + v211);
                  v227 = (v222 + v214);
                  *v38.i8 = vext_s8(*v221.f32, *v39.i8, 4uLL);
                  v40.i64[1] = v39.i64[0];
                  *v41.f32 = vext_s8(v220, *v42.f32, 4uLL);
                  v221.i64[1] = v42.i64[0];
                  v228 = vzip1q_s32(v38, v38);
                  *v39.i8 = *v223;
                  v229 = vzip2q_s32(v40, v40);
                  *v38.i8 = *(v223 + BytesPerRow);
                  *v40.f32 = vext_s8(*&v40.u32[2], *v223, 4uLL);
                  v44.i64[1] = v40.i64[0];
                  v230 = vzip1q_s32(v41, v41);
                  *v41.f32 = vext_s8(*v42.f32, *v38.i8, 4uLL);
                  v231 = vmulq_f32(v228, xmmword_1AD0565A0);
                  v232 = vmulq_f32(v228, xmmword_1AD0565E0);
                  v233 = vmulq_f32(v228, xmmword_1AD056600);
                  v234 = vmulq_f32(v228, xmmword_1AD0565C0);
                  v235 = vzip1q_s32(v43, v43);
                  v236 = vmlaq_f32(v231, xmmword_1AD0565B0, v235);
                  v237 = vmlaq_f32(v232, xmmword_1AD0565F0, v235);
                  v238 = vmlaq_f32(v233, xmmword_1AD056610, v235);
                  v239 = vmlaq_f32(v234, xmmword_1AD0565D0, v235);
                  v235.i64[1] = v41.i64[0];
                  v240 = vzip2q_s32(v44, v44);
                  v221 = vzip2q_s32(v221, v221);
                  v241 = vmlaq_f32(vmulq_f32(v229, xmmword_1AD0565A0), xmmword_1AD0565B0, v240);
                  v242 = vmlaq_f32(vmulq_f32(v229, xmmword_1AD0565E0), xmmword_1AD0565F0, v240);
                  v243 = vmlaq_f32(vmulq_f32(v229, xmmword_1AD056600), xmmword_1AD056610, v240);
                  v244 = vmlaq_f32(vmulq_f32(v229, xmmword_1AD0565C0), xmmword_1AD0565D0, v240);
                  v44 = vzip1q_s32(v42, v42);
                  v245 = vzip2q_s32(v235, v235);
                  *v224 = vmlaq_f32(vmlaq_f32(v236, xmmword_1AD0565C0, v230), xmmword_1AD0565D0, v44);
                  v224[1] = vmlaq_f32(vmlaq_f32(v241, xmmword_1AD0565C0, v221), xmmword_1AD0565D0, v245);
                  *v225 = vmlaq_f32(vmlaq_f32(v237, xmmword_1AD056600, v230), xmmword_1AD056610, v44);
                  v225[1] = vmlaq_f32(vmlaq_f32(v242, xmmword_1AD056600, v221), xmmword_1AD056610, v245);
                  v219 += 2;
                  ++v223;
                  *v226 = vmlaq_f32(vmlaq_f32(v238, xmmword_1AD0565E0, v230), xmmword_1AD0565F0, v44);
                  v226[1] = vmlaq_f32(vmlaq_f32(v243, xmmword_1AD0565E0, v221), xmmword_1AD0565F0, v245);
                  *v227 = vmlaq_f32(vmlaq_f32(v239, xmmword_1AD0565A0, v230), xmmword_1AD0565B0, v44);
                  v227[1] = vmlaq_f32(vmlaq_f32(v244, xmmword_1AD0565A0, v221), xmmword_1AD0565B0, v245);
                  v222 += 2;
                  v221.i64[0] = v43.i64[0];
                  v220 = *v42.f32;
                }

                while (v67 > v219);
                v218 = (v222 + v210);
                v215 = (v222 + v213);
                v216 = (v222 + v211);
                v217 = (v222 + v214);
              }

              v42.i64[1] = v39.i64[0];
              v43.i64[1] = v38.i64[0];
              v40 = vzip1q_s32(v40, v40);
              v42 = vzip2q_s32(v42, v42);
              v41 = vzip1q_s32(v41, v41);
              v43 = vzip2q_s32(v43, v43);
              v246 = vzip1q_s32(v39, v39);
              v247 = vzip1q_s32(v38, v38);
              *v218 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v40, xmmword_1AD0565A0), xmmword_1AD0565B0, v246), xmmword_1AD0565C0, v41), xmmword_1AD0565D0, v247);
              v218[1] = vmlaq_lane_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v42, xmmword_1AD0565A0), xmmword_1AD0565B0, *v39.i8, 1), xmmword_1AD0565C0, v43), xmmword_1AD0565D0, *v38.i8, 1);
              *v215 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v40, xmmword_1AD0565E0), xmmword_1AD0565F0, v246), xmmword_1AD056600, v41), xmmword_1AD056610, v247);
              v215[1] = vmlaq_lane_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v42, xmmword_1AD0565E0), xmmword_1AD0565F0, *v39.i8, 1), xmmword_1AD056600, v43), xmmword_1AD056610, *v38.i8, 1);
              *v216 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v40, xmmword_1AD056600), xmmword_1AD056610, v246), xmmword_1AD0565E0, v41), xmmword_1AD0565F0, v247);
              v216[1] = vmlaq_lane_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v42, xmmword_1AD056600), xmmword_1AD056610, *v39.i8, 1), xmmword_1AD0565E0, v43), xmmword_1AD0565F0, *v38.i8, 1);
              *v217 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v40, xmmword_1AD0565C0), xmmword_1AD0565D0, v246), xmmword_1AD0565A0, v41), xmmword_1AD0565B0, v247);
              v217[1] = vmlaq_lane_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_f32(v42, xmmword_1AD0565C0), xmmword_1AD0565D0, *v39.i8, 1), xmmword_1AD0565A0, v43), xmmword_1AD0565B0, *v38.i8, 1);
              v195 = (v195 + v211);
              v212 = (v212 + BytesPerRow);
              v45 = (v45 + v211);
              BaseAddress = (BaseAddress + BytesPerRow);
              v125 = v209++ == v341 - 2;
            }

            while (!v125);
          }

          v248 = (v195 + v16);
          *v34.i8 = *v196;
          *v193.f32 = vdup_lane_s32(*v196, 0);
          if (v20 == 2)
          {
            v192.i64[0] = v193.i64[0];
            *v191.f32 = *v196;
          }

          else
          {
            v331 = 0;
            v332 = &v196[1];
            do
            {
              v194.i64[1] = v34.i64[0];
              v333 = *v332++;
              *v191.f32 = v333;
              *v193.f32 = vext_s8(*v193.f32, *v34.i8, 4uLL);
              *v192.f32 = vext_s8(*v34.i8, v333, 4uLL);
              v37.i64[1] = v192.i64[0];
              v193 = vzip1q_s32(v193, v193);
              v194 = vzip2q_s32(v194, v194);
              v37 = vzip2q_s32(v37, v37);
              v334 = vmlaq_f32(vmulq_f32(v193, xmmword_1AD056620), xmmword_1AD056630, vzip1q_s32(v34, v34));
              v335 = vmlaq_f32(vmulq_f32(v194, xmmword_1AD056620), xmmword_1AD056630, v37);
              *v195 = v334;
              v195[1] = v335;
              v195 += 2;
              *v248 = v334;
              v248[1] = v335;
              v248 += 2;
              v331 += 2;
              v193.i64[0] = v34.i64[0];
              *v34.i8 = v333;
            }

            while (v20 - 2 > v331);
          }

          v34.i64[1] = v191.i64[0];
          v336 = vmlaq_f32(vmulq_f32(vzip1q_s32(v192, v192), xmmword_1AD056620), xmmword_1AD056630, vzip1q_s32(v191, v191));
          v337 = vmlaq_lane_f32(vmulq_f32(vzip2q_s32(v34, v34), xmmword_1AD056620), xmmword_1AD056630, *v191.f32, 1);
          *v195 = v336;
          v195[1] = v337;
          *v248 = v336;
          v248[1] = v337;
        }

        else
        {
          FigFloat16ConvertToFloat32();
          v89 = v88;
          v340 = a2;
          if (v20 == 2)
          {
            v90 = v45;
          }

          else
          {
            v197 = 0;
            v198 = BaseAddress;
            v90 = v45;
            do
            {
              v199 = (v90 + v16);
              FigFloat16ConvertToFloat32();
              FigFloat16ConvertToFloat32();
              v89 = v200;
              v198 = (v198 + 4);
              FigFloat16ConvertToFloat32();
              *v90 = FigFloat32ConvertToFloat16();
              *(v90 + 1) = FigFloat32ConvertToFloat16();
              *(v90 + 2) = FigFloat32ConvertToFloat16();
              *(v90 + 3) = FigFloat32ConvertToFloat16();
              *(v90 + 4) = FigFloat32ConvertToFloat16();
              *(v90 + 5) = FigFloat32ConvertToFloat16();
              *(v90 + 6) = FigFloat32ConvertToFloat16();
              *(v90 + 7) = FigFloat32ConvertToFloat16();
              *v199 = FigFloat32ConvertToFloat16();
              v199[1] = FigFloat32ConvertToFloat16();
              v199[2] = FigFloat32ConvertToFloat16();
              v199[3] = FigFloat32ConvertToFloat16();
              v199[4] = FigFloat32ConvertToFloat16();
              v199[5] = FigFloat32ConvertToFloat16();
              v199[6] = FigFloat32ConvertToFloat16();
              v199[7] = FigFloat32ConvertToFloat16();
              v197 += 2;
              ++v90;
            }

            while (v20 - 2 > v197);
            v65 = (v90 + v16);
          }

          FigFloat16ConvertToFloat32();
          v202 = v201;
          FigFloat16ConvertToFloat32();
          *v90 = FigFloat32ConvertToFloat16();
          v10.f32[0] = ((v202 * 56.0) + (v89 * 8.0)) * 0.015625;
          *(v90 + 1) = FigFloat32ConvertToFloat16();
          *(v90 + 2) = FigFloat32ConvertToFloat16();
          *(v90 + 3) = FigFloat32ConvertToFloat16();
          *(v90 + 4) = FigFloat32ConvertToFloat16();
          *(v90 + 5) = FigFloat32ConvertToFloat16();
          *(v90 + 6) = FigFloat32ConvertToFloat16();
          *(v90 + 7) = FigFloat32ConvertToFloat16();
          v65->i16[0] = FigFloat32ConvertToFloat16();
          v65->i16[1] = FigFloat32ConvertToFloat16();
          v65->i16[2] = FigFloat32ConvertToFloat16();
          v65->i16[3] = FigFloat32ConvertToFloat16();
          v65->i16[4] = FigFloat32ConvertToFloat16();
          v65->i16[5] = FigFloat32ConvertToFloat16();
          v65->i16[6] = FigFloat32ConvertToFloat16();
          v65->i16[7] = FigFloat32ConvertToFloat16();
          v208 = (v45 + 2 * v16);
          if (v341 != 1)
          {
            v249 = 0;
            v250 = 2 * v16;
            v251 = 4 * v16;
            v252 = &BaseAddress[1];
            v253 = xmmword_1AD056610;
            v254 = 3 * v16;
            v255 = 5 * v16;
            do
            {
              v256 = *BaseAddress;
              *v203.i8 = *(BaseAddress + BytesPerRow);
              v257 = vdup_lane_s16(*BaseAddress, 0);
              v258 = vdup_lane_s16(*v203.i8, 0);
              if (v20 == 4)
              {
                v259 = (v208 + v16);
                v260 = (v208 + v250);
                v261 = (v208 + v254);
                v262 = v208;
              }

              else
              {
                v263 = 0;
                v264 = v45;
                v265 = v252;
                do
                {
                  *v266.i8 = v258;
                  *v267.i8 = v257;
                  v258 = *v203.i8;
                  v257 = v256;
                  v268 = (v264 + v250);
                  *v203.i8 = vext_s8(*v267.i8, v256, 6uLL);
                  v267.u64[1] = vzip2_s16(*v203.i8, v256);
                  *v203.i8 = vzip1_s16(*v203.i8, v256);
                  v269 = vzip1q_s16(v203, v203);
                  v270 = vext_s8(*v266.i8, v258, 6uLL);
                  v266.u64[1] = vzip2_s16(v270, v258);
                  *v206.f32 = vzip1_s16(v270, v258);
                  v256 = *v265;
                  v271 = vext_s8(v257, *v265, 2uLL);
                  *v203.i8 = *(v265 + BytesPerRow);
                  v272 = vzip1q_s16(v206, v206);
                  v273 = (v264 + v254);
                  *v206.f32 = vzip1_s16(v257, v271);
                  *v274.i8 = vzip2_s16(v257, v271);
                  v274.i64[1] = v274.i64[0];
                  v275 = vzip2q_s16(v267, v267);
                  v276 = vzip1q_s16(v206, v206);
                  *v267.i8 = vext_s8(v258, *v203.i8, 2uLL);
                  *&v10.u32[2] = vzip2_s16(v258, *v267.i8);
                  v277 = vzip2q_s16(v266, v266);
                  *v266.i8 = vzip1_s16(v258, *v267.i8);
                  v278 = vzip1q_s16(v266, v266);
                  v279 = vcvtq_f32_f16(*v269.i8);
                  v280 = vcvt_hight_f32_f16(v269);
                  v281 = vcvtq_f32_f16(*v275.i8);
                  v282 = vzip2q_s16(v274, v274);
                  v283 = vcvt_hight_f32_f16(v275);
                  v284 = vcvtq_f32_f16(*v276.i8);
                  v285 = vcvt_hight_f32_f16(v276);
                  v286 = vcvtq_f32_f16(*v272.i8);
                  v207 = vcvt_hight_f32_f16(v272);
                  v287 = vzip2q_s16(v10, v10);
                  v288 = vcvtq_f32_f16(*v277.i8);
                  v289 = vcvt_hight_f32_f16(v277);
                  v290 = vcvtq_f32_f16(*v278.i8);
                  v291 = vcvt_hight_f32_f16(v278);
                  v10 = vcvtq_f32_f16(*v282.i8);
                  v292 = vcvt_hight_f32_f16(v282);
                  v293 = vcvtq_f32_f16(*v287.i8);
                  v294 = vcvt_hight_f32_f16(v287);
                  *v268 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v279, xmmword_1AD0565A0), xmmword_1AD0565B0, v284), xmmword_1AD0565C0, v286), xmmword_1AD0565D0, v290)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v280, xmmword_1AD0565A0), xmmword_1AD0565B0, v285), xmmword_1AD0565C0, v207), xmmword_1AD0565D0, v291));
                  v268[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v281, xmmword_1AD0565A0), xmmword_1AD0565B0, v10), xmmword_1AD0565C0, v288), xmmword_1AD0565D0, v293)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v283, xmmword_1AD0565A0), xmmword_1AD0565B0, v292), xmmword_1AD0565C0, v289), xmmword_1AD0565D0, v294));
                  *v273 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v279, xmmword_1AD0565E0), xmmword_1AD0565F0, v284), xmmword_1AD056600, v286), xmmword_1AD056610, v290)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v280, xmmword_1AD0565E0), xmmword_1AD0565F0, v285), xmmword_1AD056600, v207), xmmword_1AD056610, v291));
                  v273[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v281, xmmword_1AD0565E0), xmmword_1AD0565F0, v10), xmmword_1AD056600, v288), xmmword_1AD056610, v293)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v283, xmmword_1AD0565E0), xmmword_1AD0565F0, v292), xmmword_1AD056600, v289), xmmword_1AD056610, v294));
                  v295 = (v264 + v251);
                  *v295 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v279, xmmword_1AD056600), xmmword_1AD056610, v284), xmmword_1AD0565E0, v286), xmmword_1AD0565F0, v290)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v280, xmmword_1AD056600), xmmword_1AD056610, v285), xmmword_1AD0565E0, v207), xmmword_1AD0565F0, v291));
                  v295[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v281, xmmword_1AD056600), xmmword_1AD056610, v10), xmmword_1AD0565E0, v288), xmmword_1AD0565F0, v293)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v283, xmmword_1AD056600), xmmword_1AD056610, v292), xmmword_1AD0565E0, v289), xmmword_1AD0565F0, v294));
                  v205 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v281, xmmword_1AD0565C0), xmmword_1AD0565D0, v10), xmmword_1AD0565A0, v288), xmmword_1AD0565B0, v293);
                  v204 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v283, xmmword_1AD0565C0), xmmword_1AD0565D0, v292), xmmword_1AD0565A0, v289), xmmword_1AD0565B0, v294);
                  v296 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v279, xmmword_1AD0565C0), xmmword_1AD0565D0, v284), xmmword_1AD0565A0, v286), xmmword_1AD0565B0, v290)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v280, xmmword_1AD0565C0), xmmword_1AD0565D0, v285), xmmword_1AD0565A0, v207), xmmword_1AD0565B0, v291));
                  v206 = vcvt_hight_f16_f32(vcvt_f16_f32(v205), v204);
                  v297 = (v264 + v255);
                  *v297 = v296;
                  v297[1] = v206;
                  v263 += 4;
                  ++v265;
                  v264 += 2;
                }

                while (v20 - 4 > v263);
                v262 = (v264 + v250);
                v259 = (v264 + v254);
                v260 = (v264 + v251);
                v261 = (v264 + v255);
                v253 = xmmword_1AD056610;
              }

              v298 = vext_s8(v257, v256, 6uLL);
              *v204.f32 = vzip1_s16(v298, v256);
              *v299.i8 = vzip2_s16(v298, v256);
              v299.i64[1] = v299.i64[0];
              v300 = vzip1q_s16(v204, v204);
              v301 = vzip2q_s16(v299, v299);
              v302 = vext_s8(v258, *v203.i8, 6uLL);
              *v205.f32 = vzip1_s16(v302, *v203.i8);
              *v303.i8 = vzip2_s16(v302, *v203.i8);
              v303.i64[1] = v303.i64[0];
              v304 = vzip1q_s16(v205, v205);
              v305 = vzip2q_s16(v303, v303);
              v306 = vext_s8(v256, vdup_lane_s16(v256, 3), 2uLL);
              *v206.f32 = vzip1_s16(v256, v306);
              *v307.i8 = vzip2_s16(v256, v306);
              v307.i64[1] = v307.i64[0];
              v308 = vzip1q_s16(v206, v206);
              v309 = vzip2q_s16(v307, v307);
              v310 = vext_s8(*v203.i8, vdup_lane_s16(*v203.i8, 3), 2uLL);
              *v207.f32 = vzip1_s16(*v203.i8, v310);
              *v311.i8 = vzip2_s16(*v203.i8, v310);
              v311.i64[1] = v311.i64[0];
              v312 = vzip1q_s16(v207, v207);
              v313 = vzip2q_s16(v311, v311);
              v314 = vcvtq_f32_f16(*v300.i8);
              v315 = vcvt_hight_f32_f16(v300);
              v316 = vcvtq_f32_f16(*v301.i8);
              v317 = vcvt_hight_f32_f16(v301);
              v318 = vcvtq_f32_f16(*v308.i8);
              v319 = vcvt_hight_f32_f16(v308);
              v320 = vcvtq_f32_f16(*v309.i8);
              v206 = vcvt_hight_f32_f16(v309);
              v207 = vcvtq_f32_f16(*v304.i8);
              v205 = vcvt_hight_f32_f16(v304);
              v321 = vcvtq_f32_f16(*v305.i8);
              v322 = vcvt_hight_f32_f16(v305);
              v204 = vcvtq_f32_f16(*v312.i8);
              v323 = vcvt_hight_f32_f16(v312);
              v324 = vcvtq_f32_f16(*v313.i8);
              v325 = vcvt_hight_f32_f16(v313);
              *v262 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v314, xmmword_1AD0565A0), xmmword_1AD0565B0, v318), xmmword_1AD0565C0, v207), xmmword_1AD0565D0, v204)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v315, xmmword_1AD0565A0), xmmword_1AD0565B0, v319), xmmword_1AD0565C0, v205), xmmword_1AD0565D0, v323));
              v262[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v316, xmmword_1AD0565A0), xmmword_1AD0565B0, v320), xmmword_1AD0565C0, v321), xmmword_1AD0565D0, v324)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v317, xmmword_1AD0565A0), xmmword_1AD0565B0, v206), xmmword_1AD0565C0, v322), xmmword_1AD0565D0, v325));
              *v259 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v314, xmmword_1AD0565E0), xmmword_1AD0565F0, v318), xmmword_1AD056600, v207), v253, v204)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v315, xmmword_1AD0565E0), xmmword_1AD0565F0, v319), xmmword_1AD056600, v205), v253, v323));
              v259[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v316, xmmword_1AD0565E0), xmmword_1AD0565F0, v320), xmmword_1AD056600, v321), v253, v324)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v317, xmmword_1AD0565E0), xmmword_1AD0565F0, v206), xmmword_1AD056600, v322), v253, v325));
              v10 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v314, xmmword_1AD056600), v253, v318), xmmword_1AD0565E0, v207), xmmword_1AD0565F0, v204);
              *v260 = vcvt_hight_f16_f32(vcvt_f16_f32(v10), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v315, xmmword_1AD056600), v253, v319), xmmword_1AD0565E0, v205), xmmword_1AD0565F0, v323));
              v260[1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v316, xmmword_1AD056600), v253, v320), xmmword_1AD0565E0, v321), xmmword_1AD0565F0, v324)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v317, xmmword_1AD056600), v253, v206), xmmword_1AD0565E0, v322), xmmword_1AD0565F0, v325));
              v326 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v317, xmmword_1AD0565C0), xmmword_1AD0565D0, v206), xmmword_1AD0565A0, v322), xmmword_1AD0565B0, v325);
              v327 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v314, xmmword_1AD0565C0), xmmword_1AD0565D0, v318), xmmword_1AD0565A0, v207), xmmword_1AD0565B0, v204)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v315, xmmword_1AD0565C0), xmmword_1AD0565D0, v319), xmmword_1AD0565A0, v205), xmmword_1AD0565B0, v323));
              v203 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v316, xmmword_1AD0565C0), xmmword_1AD0565D0, v320), xmmword_1AD0565A0, v321), xmmword_1AD0565B0, v324)), v326);
              *v261 = v327;
              v261[1] = v203;
              v208 = (v208 + v251);
              v252 = (v252 + BytesPerRow);
              v45 = (v45 + v251);
              BaseAddress = (BaseAddress + BytesPerRow);
              v125 = v249++ == v341 - 2;
            }

            while (!v125);
          }

          v328 = (v208->i16 + v16);
          FigFloat16ConvertToFloat32();
          if (v20 != 2)
          {
            v329 = 0;
            v330 = 0;
            do
            {
              FigFloat16ConvertToFloat32();
              FigFloat16ConvertToFloat32();
              FigFloat16ConvertToFloat32();
              v208->i16[0] = FigFloat32ConvertToFloat16();
              v208->i16[1] = FigFloat32ConvertToFloat16();
              v208->i16[2] = FigFloat32ConvertToFloat16();
              v208->i16[3] = FigFloat32ConvertToFloat16();
              v208->i16[4] = FigFloat32ConvertToFloat16();
              v208->i16[5] = FigFloat32ConvertToFloat16();
              v208->i16[6] = FigFloat32ConvertToFloat16();
              v208->i16[7] = FigFloat32ConvertToFloat16();
              *v328 = FigFloat32ConvertToFloat16();
              v328[1] = FigFloat32ConvertToFloat16();
              v328[2] = FigFloat32ConvertToFloat16();
              v328[3] = FigFloat32ConvertToFloat16();
              v328[4] = FigFloat32ConvertToFloat16();
              v328[5] = FigFloat32ConvertToFloat16();
              v328[6] = FigFloat32ConvertToFloat16();
              v330 += 2;
              v328[7] = FigFloat32ConvertToFloat16();
              ++v208;
              v328 += 8;
              v329 += 4;
            }

            while (v20 - 2 > v330);
          }

          FigFloat16ConvertToFloat32();
          FigFloat16ConvertToFloat32();
          v208->i16[0] = FigFloat32ConvertToFloat16();
          v208->i16[1] = FigFloat32ConvertToFloat16();
          v208->i16[2] = FigFloat32ConvertToFloat16();
          v208->i16[3] = FigFloat32ConvertToFloat16();
          v208->i16[4] = FigFloat32ConvertToFloat16();
          v208->i16[5] = FigFloat32ConvertToFloat16();
          v208->i16[6] = FigFloat32ConvertToFloat16();
          v208->i16[7] = FigFloat32ConvertToFloat16();
          *v328 = FigFloat32ConvertToFloat16();
          v328[1] = FigFloat32ConvertToFloat16();
          v328[2] = FigFloat32ConvertToFloat16();
          v328[3] = FigFloat32ConvertToFloat16();
          v328[4] = FigFloat32ConvertToFloat16();
          v328[5] = FigFloat32ConvertToFloat16();
          v328[6] = FigFloat32ConvertToFloat16();
          v328[7] = FigFloat32ConvertToFloat16();
          a2 = v340;
        }
      }

      else if (v27 == -2)
      {
        if (v19 == 4)
        {
          *v46.f32 = *BaseAddress;
          v47 = vdup_lane_s32(*BaseAddress, 0);
          v48 = v20 - 2;
          if (v20 == 2)
          {
            *v49.f32 = v47;
            v50 = v32;
          }

          else
          {
            v96 = 0;
            v97 = &BaseAddress[1];
            v50 = v32;
            do
            {
              v98.i64[0] = v46.i64[0];
              *v99.f32 = vext_s8(v47, *v46.f32, 4uLL);
              v99.i64[1] = v46.i64[0];
              v100 = *v97++;
              *v46.f32 = v100;
              *v49.f32 = vext_s8(*&v99.u32[2], v100, 4uLL);
              v47 = *&v99.u32[2];
              v98.i64[1] = v49.i64[0];
              *v50++ = vmlaq_f32(vmulq_f32(v99, xmmword_1AD056680), xmmword_1AD056690, v98);
              v96 += 2;
            }

            while (v48 > v96);
          }

          v49.i64[1] = v46.i64[0];
          *&v46.u32[2] = vdup_lane_s32(*v46.f32, 1);
          *v50 = vmlaq_f32(vmulq_f32(v49, xmmword_1AD056680), xmmword_1AD056690, v46);
          v101 = (v32 + v16);
          if (v341 == 1)
          {
            v102 = BaseAddress;
          }

          else
          {
            v107 = 0;
            v108 = 2 * v16;
            v109 = &BaseAddress[1];
            do
            {
              v102 = (BaseAddress + BytesPerRow);
              *v110.f32 = *BaseAddress;
              *v111.f32 = *(BaseAddress + BytesPerRow);
              if (v20 == 2)
              {
                v112 = (v101 + v16);
                *v113.f32 = vdup_lane_s32(*v110.f32, 0);
                *v114.f32 = vdup_lane_s32(*v111.f32, 0);
                v115 = v101;
              }

              else
              {
                v116 = 0;
                v117 = vdup_lane_s32(*v111.f32, 0);
                v118 = vdup_lane_s32(*v110.f32, 0);
                v119 = v45;
                v120 = v109;
                do
                {
                  v121.i64[0] = v111.i64[0];
                  *v122.f32 = vext_s8(v118, *v110.f32, 4uLL);
                  v122.i64[1] = v110.i64[0];
                  *v123.f32 = vext_s8(v117, *v111.f32, 4uLL);
                  v123.i64[1] = v111.i64[0];
                  *v110.f32 = *v120;
                  *v111.f32 = *(v120 + BytesPerRow);
                  *v113.f32 = vext_s8(*&v122.u32[2], *v120, 4uLL);
                  v118 = *&v122.u32[2];
                  v124.i64[0] = v122.i64[1];
                  v124.i64[1] = v113.i64[0];
                  *v114.f32 = vext_s8(*&v123.u32[2], *v111.f32, 4uLL);
                  v117 = *&v123.u32[2];
                  v121.i64[1] = v114.i64[0];
                  *(v119 + v16) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v122, xmmword_1AD056640), xmmword_1AD056650, v124), xmmword_1AD056660, v123), xmmword_1AD056670, v121);
                  *(v119 + 2 * v16) = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v122, xmmword_1AD056660), xmmword_1AD056670, v124), xmmword_1AD056640, v123), xmmword_1AD056650, v121);
                  v116 += 2;
                  ++v120;
                  ++v119;
                }

                while (v48 > v116);
                v115 = (v119 + v16);
                v112 = (v119 + v108);
              }

              v113.i64[1] = v110.i64[0];
              v114.i64[1] = v111.i64[0];
              *&v110.u32[2] = vdup_lane_s32(*v110.f32, 1);
              *&v111.u32[2] = vdup_lane_s32(*v111.f32, 1);
              *v115 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v113, xmmword_1AD056640), xmmword_1AD056650, v110), xmmword_1AD056660, v114), xmmword_1AD056670, v111);
              *v112 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v113, xmmword_1AD056660), xmmword_1AD056670, v110), xmmword_1AD056640, v114), xmmword_1AD056650, v111);
              v101 = (v101 + v108);
              v109 = (v109 + BytesPerRow);
              v45 = (v45 + v108);
              BaseAddress = (BaseAddress + BytesPerRow);
              v125 = v107++ == v341 - 2;
            }

            while (!v125);
          }

          *v126.f32 = *v102;
          v127 = vdup_lane_s32(*v102, 0);
          if (v20 == 2)
          {
            *v128.f32 = v127;
          }

          else
          {
            v180 = 0;
            v181 = &v102[1];
            do
            {
              v182.i64[0] = v126.i64[0];
              *v183.f32 = vext_s8(v127, *v126.f32, 4uLL);
              v183.i64[1] = v126.i64[0];
              v184 = *v181++;
              *v126.f32 = v184;
              *v128.f32 = vext_s8(*&v183.u32[2], v184, 4uLL);
              v127 = *&v183.u32[2];
              v182.i64[1] = v128.i64[0];
              *v101++ = vmlaq_f32(vmulq_f32(v183, xmmword_1AD056680), xmmword_1AD056690, v182);
              v180 += 2;
            }

            while (v20 - 2 > v180);
          }

          v128.i64[1] = v126.i64[0];
          *&v126.u32[2] = vdup_lane_s32(*v126.f32, 1);
          *v101 = vmlaq_f32(vmulq_f32(v128, xmmword_1AD056680), xmmword_1AD056690, v126);
        }

        else
        {
          v81 = a2;
          FigFloat16ConvertToFloat32();
          if (v20 == 2)
          {
            v82 = v45;
          }

          else
          {
            v103 = 0;
            v104 = BaseAddress;
            v82 = v45;
            do
            {
              FigFloat16ConvertToFloat32();
              FigFloat16ConvertToFloat32();
              v104 = (v104 + 4);
              FigFloat16ConvertToFloat32();
              *v82 = FigFloat32ConvertToFloat16();
              *(v82 + 1) = FigFloat32ConvertToFloat16();
              *(v82 + 2) = FigFloat32ConvertToFloat16();
              *(v82 + 3) = FigFloat32ConvertToFloat16();
              v103 += 2;
              v82 = (v82 + 8);
            }

            while (v20 - 2 > v103);
          }

          FigFloat16ConvertToFloat32();
          FigFloat16ConvertToFloat32();
          *v82 = FigFloat32ConvertToFloat16();
          *(v82 + 1) = FigFloat32ConvertToFloat16();
          *(v82 + 2) = FigFloat32ConvertToFloat16();
          *(v82 + 3) = FigFloat32ConvertToFloat16();
          v105 = (v45 + v16);
          if (v341 == 1)
          {
            v106 = BaseAddress;
          }

          else
          {
            v129 = 0;
            v130 = 2 * v16;
            v131 = &BaseAddress[1];
            do
            {
              v106 = (BaseAddress + BytesPerRow);
              v132 = *BaseAddress;
              v133 = *(BaseAddress + BytesPerRow);
              v134 = vdup_lane_s16(*BaseAddress, 0);
              v135 = vdup_lane_s16(v133, 0);
              if (v20 == 4)
              {
                v136 = (v105 + v16);
                v137 = v105;
              }

              else
              {
                v138 = 0;
                v139 = v45;
                v140 = v131;
                do
                {
                  v141 = v135;
                  v142 = v134;
                  v135 = v133;
                  v134 = v132;
                  v143 = vext_s8(v142, v132, 6uLL);
                  v144 = vzip1_s16(v143, v134);
                  v145 = vzip2_s16(v143, v134);
                  v146 = vext_s8(v141, v133, 6uLL);
                  v147 = vzip1_s16(v146, v133);
                  v148 = vzip2_s16(v146, v133);
                  v132 = *v140;
                  v133 = *(v140 + BytesPerRow);
                  v149 = vext_s8(v134, *v140, 2uLL);
                  v150 = vext_s8(v135, v133, 2uLL);
                  v151 = vcvtq_f32_f16(v144);
                  v152 = vcvtq_f32_f16(v145);
                  v153 = vcvtq_f32_f16(v147);
                  v154 = vcvtq_f32_f16(v148);
                  v155 = vcvtq_f32_f16(vzip1_s16(v134, v149));
                  v156 = vcvtq_f32_f16(vzip2_s16(v134, v149));
                  v157 = vcvtq_f32_f16(vzip1_s16(v135, v150));
                  v158 = vcvtq_f32_f16(vzip2_s16(v135, v150));
                  *(v139 + v16) = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v151, xmmword_1AD056640), xmmword_1AD056650, v155), xmmword_1AD056660, v153), xmmword_1AD056670, v157)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v152, xmmword_1AD056640), xmmword_1AD056650, v156), xmmword_1AD056660, v154), xmmword_1AD056670, v158));
                  *(v139 + 2 * v16) = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v151, xmmword_1AD056660), xmmword_1AD056670, v155), xmmword_1AD056640, v153), xmmword_1AD056650, v157)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v152, xmmword_1AD056660), xmmword_1AD056670, v156), xmmword_1AD056640, v154), xmmword_1AD056650, v158));
                  v138 += 4;
                  ++v140;
                  ++v139;
                }

                while (v20 - 4 > v138);
                v137 = (v139 + v16);
                v136 = (v139 + v130);
              }

              v159 = vext_s8(v134, v132, 6uLL);
              v160 = vzip1_s16(v159, v132);
              v161 = vzip2_s16(v159, v132);
              v162 = vext_s8(v135, v133, 6uLL);
              v163 = vzip1_s16(v162, v133);
              v164 = vzip2_s16(v162, v133);
              v165 = vext_s8(v132, vdup_lane_s16(v132, 3), 2uLL);
              v166 = vzip1_s16(v132, v165);
              v167 = vzip2_s16(v132, v165);
              v168 = vext_s8(v133, vdup_lane_s16(v133, 3), 2uLL);
              v169 = vzip1_s16(v133, v168);
              v170 = vzip2_s16(v133, v168);
              v171 = vcvtq_f32_f16(v160);
              v172 = vcvtq_f32_f16(v161);
              v173 = vcvtq_f32_f16(v163);
              v174 = vcvtq_f32_f16(v164);
              v175 = vcvtq_f32_f16(v166);
              v176 = vcvtq_f32_f16(v167);
              v177 = vcvtq_f32_f16(v169);
              v178 = vcvtq_f32_f16(v170);
              *v137 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v171, xmmword_1AD056640), xmmword_1AD056650, v175), xmmword_1AD056660, v173), xmmword_1AD056670, v177)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v172, xmmword_1AD056640), xmmword_1AD056650, v176), xmmword_1AD056660, v174), xmmword_1AD056670, v178));
              *v136 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v171, xmmword_1AD056660), xmmword_1AD056670, v175), xmmword_1AD056640, v173), xmmword_1AD056650, v177)), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v172, xmmword_1AD056660), xmmword_1AD056670, v176), xmmword_1AD056640, v174), xmmword_1AD056650, v178));
              v105 = (v105 + v130);
              v131 = (v131 + BytesPerRow);
              v45 = (v45 + v130);
              BaseAddress = (BaseAddress + BytesPerRow);
              v125 = v129++ == v341 - 2;
            }

            while (!v125);
          }

          FigFloat16ConvertToFloat32();
          if (v20 != 2)
          {
            v179 = 0;
            do
            {
              FigFloat16ConvertToFloat32();
              FigFloat16ConvertToFloat32();
              v106 = (v106 + 4);
              FigFloat16ConvertToFloat32();
              v105->i16[0] = FigFloat32ConvertToFloat16();
              v105->i16[1] = FigFloat32ConvertToFloat16();
              v105->i16[2] = FigFloat32ConvertToFloat16();
              v105->i16[3] = FigFloat32ConvertToFloat16();
              v179 += 2;
              v105 = (v105 + 8);
            }

            while (v20 - 2 > v179);
          }

          FigFloat16ConvertToFloat32();
          FigFloat16ConvertToFloat32();
          v105->i16[0] = FigFloat32ConvertToFloat16();
          v105->i16[1] = FigFloat32ConvertToFloat16();
          v105->i16[2] = FigFloat32ConvertToFloat16();
          v105->i16[3] = FigFloat32ConvertToFloat16();
          a2 = v81;
        }
      }

      else
      {
        v56 = (*v10.i64 + v20 + -1.0);
        v57 = (a4 + v341 + -1.0);
        if (v19 == 2)
        {
          if (Height)
          {
            v58 = 0;
            v59 = a4;
            do
            {
              if ((v59 + 0.5) >= v57)
              {
                v60 = (a4 + v341 + -1.0);
              }

              else
              {
                v60 = (v59 + 0.5);
              }

              if (Width)
              {
                v61 = 0;
                v62 = BaseAddress + BytesPerRow * v60;
                v63 = *v10.i64;
                do
                {
                  v64 = (v63 + 0.5);
                  if (v64 >= v56)
                  {
                    v64 = (*v10.i64 + v20 + -1.0);
                  }

                  *(v45 + v61++) = *&v62[2 * v64];
                  v63 = v22 + v63;
                }

                while (Width != v61);
              }

              ++v58;
              v45 = (v45 + v16);
              v59 = v23 + v59;
            }

            while (v58 != Height);
          }
        }

        else if (Height)
        {
          v74 = 0;
          v75 = a4;
          do
          {
            if ((v75 + 0.5) >= v57)
            {
              v76 = (a4 + v341 + -1.0);
            }

            else
            {
              v76 = (v75 + 0.5);
            }

            if (Width)
            {
              v77 = 0;
              v78 = BaseAddress + BytesPerRow * v76;
              v79 = *v10.i64;
              do
              {
                v80 = (v79 + 0.5);
                if (v80 >= v56)
                {
                  v80 = (*v10.i64 + v20 + -1.0);
                }

                *(v45 + v77++) = *&v78[4 * v80];
                v79 = v22 + v79;
              }

              while (Width != v77);
            }

            ++v74;
            v45 = (v45 + v16);
            v75 = v23 + v75;
          }

          while (v74 != Height);
        }
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      CVPixelBufferUnlockBaseAddress(a2, 0);
      return 0;
    }
  }

  return v338;
}

CVPixelBufferRef FigDepthConvertToRGBA(__CVBuffer *a1, int a2, int a3)
{
  v63 = a1;
  pixelBuffer = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (!a1)
  {
    FigDepthConvertToRGBA_cold_7(Height);
    return pixelBuffer;
  }

  v9 = Height;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v11 = PixelFormatType;
  if (PixelFormatType <= 1717856626)
  {
    if (PixelFormatType == 825306677 || PixelFormatType == 825437747)
    {
      goto LABEL_12;
    }

    v12 = 1717855600;
  }

  else if (PixelFormatType > 1751411058)
  {
    if (PixelFormatType == 1751411059)
    {
      goto LABEL_12;
    }

    v12 = 1932996149;
  }

  else
  {
    if (PixelFormatType == 1717856627)
    {
      goto LABEL_12;
    }

    v12 = 1751410032;
  }

  if (PixelFormatType != v12)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v56, v57, v60, v63, pixelBuffer, v65);
    return pixelBuffer;
  }

LABEL_12:
  if (BWCreateIOSurfaceBackedCVPixelBuffer(Width, v9, 32, &pixelBuffer, @"DepthConverter RGBA"))
  {
    FigDepthConvertToRGBA_cold_1();
    return pixelBuffer;
  }

  v13 = 0;
  if (v11 <= 1751410031)
  {
    if (v11 != 825306677)
    {
      v14 = 825437747;
LABEL_19:
      if (v11 != v14)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v11 != 1751410032 && v11 != 1932996149)
  {
    v14 = 1751411059;
    goto LABEL_19;
  }

  if (BWCreateIOSurfaceBackedCVPixelBuffer(Width, v9, 1278226534, &v63, @"DepthConverter Float"))
  {
    FigDepthConvertToRGBA_cold_2();
    return pixelBuffer;
  }

  v13 = 1;
LABEL_22:
  if (v11 > 1751410031)
  {
    if (v11 == 1751410032 || v11 == 1751411059)
    {
      if (!figDepthConvertBufferFloat16ToFloat32(a1, v63))
      {
        goto LABEL_45;
      }

      FigDepthConvertToRGBA_cold_5();
      goto LABEL_64;
    }

    v15 = 1932996149;
    goto LABEL_28;
  }

  if (v11 != 825306677)
  {
    v15 = 825437747;
LABEL_28:
    if (v11 != v15)
    {
      goto LABEL_45;
    }
  }

  v16 = v63;
  if (v63)
  {
    v17 = CVPixelBufferGetWidth(a1);
    if (v17 == CVPixelBufferGetWidth(v16))
    {
      v18 = CVPixelBufferGetHeight(a1);
      if (v18 == CVPixelBufferGetHeight(v16))
      {
        v61 = a3;
        v62 = v13;
        FixedPointFractionalBits = CVPixelBufferGetFixedPointFractionalBits();
        if (a2)
        {
          v20 = FixedPointFractionalBits + 1;
        }

        else
        {
          v20 = FixedPointFractionalBits;
        }

        v58 = v20;
        v59 = a2 != 0;
        [objc_msgSend(CVPixelBufferGetAttributes() objectForKeyedSubscript:{*MEMORY[0x1E69660B0]), "floatValue"}];
        v22 = v21;
        CVPixelBufferLockBaseAddress(v16, 0);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v24 = CVPixelBufferGetBaseAddress(v16);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
        v26 = CVPixelBufferGetBytesPerRow(v16);
        if (v18)
        {
          for (i = 0; i != v18; ++i)
          {
            if (v17)
            {
              v28 = 0;
              do
              {
                v29 = BaseAddress[v28];
                v30 = (-v22 / (1 << v59)) + ((1.0 / (1 << v58)) * v29);
                if (v29 == 0x1FFF)
                {
                  v30 = NAN;
                }

                v24[v28++] = v30;
              }

              while (v17 != v28);
            }

            BaseAddress = (BaseAddress + BytesPerRow);
            v24 = (v24 + v26);
          }
        }

        CVPixelBufferUnlockBaseAddress(v16, 0);
        CVPixelBufferUnlockBaseAddress(a1, 1uLL);
        a3 = v61;
        v13 = v62;
LABEL_45:
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        CVPixelBufferLockBaseAddress(v63, 1uLL);
        v31 = CVPixelBufferGetBaseAddress(pixelBuffer);
        v32 = CVPixelBufferGetBaseAddress(v63);
        v33 = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v34 = CVPixelBufferGetBytesPerRow(v63);
        v35 = v34;
        if (a3)
        {
          v65 = ColorsWheelContext_create(80, 30, 20, 20, 30, 0, 0, 1, 0.0);
          ColorsWheelContext_drawMatrix_f32(v65, Width, v9, v32, v35, 4, v31, v33, v36, v37, v38, v39, 4);
          ColorsWheelContext_destroy(&v65);
LABEL_63:
          CVPixelBufferUnlockBaseAddress(v63, 1uLL);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
          goto LABEL_64;
        }

        v40 = (v9 * Width);
        if (v40)
        {
          v41 = 3.4028e38;
          v42 = 1.1755e-38;
          v43 = v32;
          do
          {
            v44 = *v43++;
            v45 = v44;
            if (v44 > v42)
            {
              v42 = v45;
            }

            if (v45 < v41)
            {
              v41 = v45;
            }

            --v40;
          }

          while (v40);
          if (!v9)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v42 = 1.1755e-38;
          v41 = 3.4028e38;
          if (!v9)
          {
            goto LABEL_63;
          }
        }

        v46 = 0;
        v47 = 0;
        v48 = v42 - v41;
        v49 = 3;
        do
        {
          if (Width)
          {
            v50 = (v32 + (v46 & 0xFFFFFFFC));
            v51 = Width;
            v52 = v49;
            do
            {
              v53 = *v50++;
              v54 = (((v53 - v41) * 255.0) / v48);
              v31[v52 - 3] = v54;
              v31[v52 - 2] = v54;
              v31[v52 - 1] = v54;
              v31[v52] = -1;
              v52 += 4;
              --v51;
            }

            while (v51);
          }

          ++v47;
          v46 += v34;
          v49 += v33;
        }

        while (v47 != v9);
        goto LABEL_63;
      }

      FigDepthConvertToRGBA_cold_4(&v65);
    }

    else
    {
      FigDepthConvertToRGBA_cold_3(&v65);
    }
  }

  else
  {
    FigDepthConvertToRGBA_cold_6(&v65);
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v65, v56, v57, v60, v63, pixelBuffer, v65);
LABEL_64:
  if (v13)
  {
    CFRelease(v63);
  }

  return pixelBuffer;
}

CVPixelBufferRef FigCreateRGBAPixelBufferFromSegmentationMask(__CVBuffer *a1)
{
  cf = 0;
  pixelBuffer = 0;
  if (a1)
  {
    v2 = a1;
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(v2);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v2);
    if (PixelFormatType - 1278226488 <= 0x30 && ((1 << (PixelFormatType - 56)) & 0x1400000000001) != 0)
    {
      v6 = PixelFormatType;
      if (BWCreateIOSurfaceBackedCVPixelBuffer(Width, Height, 32, &pixelBuffer, @"SegmentationMask RGBA"))
      {
        FigCreateRGBAPixelBufferFromSegmentationMask_cold_1();
      }

      else
      {
        if (v6 != 1278226536)
        {
LABEL_9:
          CVPixelBufferLockBaseAddress(pixelBuffer, 0);
          CVPixelBufferLockBaseAddress(v2, 1uLL);
          BytesPerRow = CVPixelBufferGetBytesPerRow(v2);
          BaseAddress = CVPixelBufferGetBaseAddress(v2);
          v9 = CVPixelBufferGetBytesPerRow(pixelBuffer);
          v10 = CVPixelBufferGetBaseAddress(pixelBuffer);
          if (Height << 32)
          {
            v11 = 0;
            v12 = Height;
            v13 = Width;
            if (Width <= 1)
            {
              v13 = 1;
            }

            if (Height <= 1)
            {
              v12 = 1;
            }

            v14 = v10 + 3;
            do
            {
              if (Width << 32)
              {
                v15 = 0;
                v16 = &BaseAddress[v11 * BytesPerRow];
                v17 = v14;
                do
                {
                  v18 = v15 << (2 * (v6 != 1278226488));
                  if (v6 == 1278226488)
                  {
                    LOBYTE(v18) = v16[v18];
                  }

                  else
                  {
                    LODWORD(v18) = (*&v16[v18] * 255.0);
                  }

                  *(v17 - 3) = v18;
                  *(v17 - 2) = v18;
                  *(v17 - 1) = v18;
                  *v17 = -1;
                  v17 += 4;
                  ++v15;
                }

                while (v13 != v15);
              }

              ++v11;
              v14 += v9;
            }

            while (v11 != v12);
          }

          CVPixelBufferUnlockBaseAddress(v2, 1uLL);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
          if (cf)
          {
            CFRelease(cf);
          }

          return pixelBuffer;
        }

        if (BWCreateIOSurfaceBackedCVPixelBuffer(Width, Height, 1278226534, &cf, @"SegmentationMask Float"))
        {
          FigCreateRGBAPixelBufferFromSegmentationMask_cold_2();
        }

        else
        {
          if (!figDepthConvertBufferFloat16ToFloat32(v2, cf))
          {
            v2 = cf;
            goto LABEL_9;
          }

          FigCreateRGBAPixelBufferFromSegmentationMask_cold_3();
        }
      }
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v1, cf, pixelBuffer, v22, v23, v24, v25);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    FigCreateRGBAPixelBufferFromSegmentationMask_cold_4();
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return 0;
}

CVPixelBufferRef FigDepthCreateRGBAPixelBufferFromInfraredPixelBuffer(__CVBuffer *a1)
{
  pixelBuffer = 0;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (a1)
  {
    v4 = Height;
    if (CVPixelBufferGetPixelFormatType(a1) == 1278226742)
    {
      if (BWCreateIOSurfaceBackedCVPixelBuffer(Width, v4, 32, &pixelBuffer, @"DepthFromIR RGBA"))
      {
        FigDepthCreateRGBAPixelBufferFromInfraredPixelBuffer_cold_2();
      }

      else
      {
        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
        CVPixelBufferLockBaseAddress(a1, 1uLL);
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
        v6 = CVPixelBufferGetBaseAddress(a1);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        v8 = CVPixelBufferGetBytesPerRow(a1);
        if (v4)
        {
          v9 = 0;
          v10 = 0;
          v11 = 3;
          do
          {
            v12 = Width;
            v13 = v9;
            v14 = v11;
            if (Width)
            {
              do
              {
                v15 = v6[v13];
                if (v15 >= 0x4000)
                {
                  v16 = -1;
                }

                else
                {
                  v16 = v15 >> 6;
                }

                BaseAddress[v14 - 3] = v16;
                BaseAddress[v14 - 2] = v16;
                BaseAddress[v14 - 1] = v16;
                BaseAddress[v14] = -1;
                v14 += 4;
                ++v13;
                --v12;
              }

              while (v12);
            }

            ++v10;
            v11 += BytesPerRow;
            v9 += v8 >> 1;
          }

          while (v10 != v4);
        }

        CVPixelBufferUnlockBaseAddress(a1, 1uLL);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      }
    }

    else
    {
      FigDepthCreateRGBAPixelBufferFromInfraredPixelBuffer_cold_1();
    }
  }

  else
  {
    FigDepthCreateRGBAPixelBufferFromInfraredPixelBuffer_cold_3(Height);
  }

  return pixelBuffer;
}

uint64_t FigDepthBlurEffectRenderingParametersV2FromCFData(void *a1, void *a2)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_6(0, a2);
    return 4294954516;
  }

  if (!a2)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_5();
    return 4294954516;
  }

  if ([a1 length] <= 0x13F)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_4();
    return 4294954516;
  }

  memset(v6, 0, sizeof(v6));
  v4 = [a1 getBytes:v6 length:320];
  if (LODWORD(v6[0]) != 1145980242)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_1(v4);
    return 4294954516;
  }

  if (DWORD1(v6[0]) != 2)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_2(v4);
    return 4294954516;
  }

  if (DWORD2(v6[0]) != 320)
  {
    FigDepthBlurEffectRenderingParametersV2FromCFData_cold_3(v4);
    return 4294954516;
  }

  memcpy(a2, v6, 0x140uLL);
  return 0;
}

uint64_t FigDepthBlurEffectRenderingParametersV3FromCFData(void *a1, void *a2)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_6(0, a2);
    return 4294954516;
  }

  if (!a2)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_5();
    return 4294954516;
  }

  if ([a1 length] <= 0x1D7)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_4();
    return 4294954516;
  }

  memset(v6, 0, 472);
  v4 = [a1 getBytes:v6 length:472];
  if (LODWORD(v6[0]) != 1145980242)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_1(v4);
    return 4294954516;
  }

  if (DWORD1(v6[0]) != 3)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_2(v4);
    return 4294954516;
  }

  if (DWORD2(v6[0]) != 472)
  {
    FigDepthBlurEffectRenderingParametersV3FromCFData_cold_3(v4);
    return 4294954516;
  }

  memcpy(a2, v6, 0x1D8uLL);
  return 0;
}

uint64_t FigDepthBlurEffectRenderingParametersV4FromCFData(void *a1, void *a2)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_9(0, a2);
LABEL_22:
    v4 = 0;
LABEL_23:
    v10 = 4294954516;
LABEL_24:
    free(v4);
    return v10;
  }

  if (!a2)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_8();
    goto LABEL_22;
  }

  if ([a1 length] <= 0xF)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_7();
    goto LABEL_22;
  }

  if (([a1 length] & 7) != 0)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_1();
    goto LABEL_22;
  }

  v4 = malloc_type_malloc([a1 length], 0x1000040451B5BE8uLL);
  if (!v4)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_6();
    v10 = 4294954510;
    goto LABEL_24;
  }

  v5 = [a1 getBytes:v4 length:{objc_msgSend(a1, "length")}];
  if (*v4 != 1145980242)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_2(v5);
    goto LABEL_23;
  }

  if ((v4[1] - 8) <= 0xFFFFFFFB)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_5();
    goto LABEL_23;
  }

  v6 = v4[2];
  if ([a1 length] != v6)
  {
    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_3();
    goto LABEL_23;
  }

  v7 = v4[2] - 16;
  if (v7 >= 8)
  {
    v8 = v7 >> 3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = 4;
    while (SLOWORD(v4[v9]) > 0)
    {
      v9 += 2;
      if (!--v8)
      {
        goto LABEL_15;
      }
    }

    FigDepthBlurEffectRenderingParametersV4FromCFData_cold_4();
    goto LABEL_23;
  }

LABEL_15:
  v10 = 0;
  *a2 = v4;
  return v10;
}

uint64_t FigDepthBlurEffectRenderingMinimumSimulatedAperture(void *a1, float *a2)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_9(0, a2);
    return 4294954516;
  }

  if (!a2)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_8();
    return 4294954516;
  }

  *a2 = 0.0;
  if ([a1 length] <= 0xB)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_7();
    return 4294954516;
  }

  v5 = [a1 bytes];
  if (!v5)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_6();
    return 4294954516;
  }

  v6 = v5;
  if ([a1 length] != *(v5 + 8))
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_1();
    return 4294954516;
  }

  if (*v6 != 1145980242)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_2();
    return 4294954516;
  }

  v7 = *(v6 + 4);
  if (v7 >= 4)
  {
    v7 = 4;
  }

  if (v7 >= 0x10000)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_5();
    return 4294954516;
  }

  if (v7 - 2 >= 2)
  {
    if (v7 == 4)
    {
      Parameter = FigDepthBlurEffectRenderingVersion4_GetParameter(v6, 601, 1, a2);
      if (Parameter)
      {
        v9 = Parameter;
        FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_3();
        return v9;
      }
    }

    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v12, v13, v14, v15, vars0, vars8);
    return 4294954516;
  }

  v8 = *(v6 + 100);
  *a2 = v8;
  if (v8 <= 0.0)
  {
    FigDepthBlurEffectRenderingMinimumSimulatedAperture_cold_4();
    return 4294954516;
  }

  return 0;
}

uint64_t FigDepthBlurEffectRenderingMaximumSimulatedAperture(void *a1, float *a2)
{
  if (!a1)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_9(0, a2);
    return 4294954516;
  }

  if (!a2)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_8();
    return 4294954516;
  }

  *a2 = 0.0;
  if ([a1 length] <= 0xB)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_7();
    return 4294954516;
  }

  v5 = [a1 bytes];
  if (!v5)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_6();
    return 4294954516;
  }

  v6 = v5;
  if ([a1 length] != *(v5 + 8))
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_1();
    return 4294954516;
  }

  if (*v6 != 1145980242)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_2();
    return 4294954516;
  }

  v7 = *(v6 + 4);
  if (v7 >= 4)
  {
    v7 = 4;
  }

  if (v7 >= 0x10000)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_5();
    return 4294954516;
  }

  if (v7 - 2 >= 2)
  {
    if (v7 == 4)
    {
      Parameter = FigDepthBlurEffectRenderingVersion4_GetParameter(v6, 602, 1, a2);
      if (Parameter)
      {
        v9 = Parameter;
        FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_3();
        return v9;
      }
    }

    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v12, v13, v14, v15, vars0, vars8);
    return 4294954516;
  }

  v8 = *(v6 + 268);
  *a2 = v8;
  if (v8 <= 0.0)
  {
    FigDepthBlurEffectRenderingMaximumSimulatedAperture_cold_4();
    return 4294954516;
  }

  return 0;
}

void sub_1ACBC7DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *FigCaptureSourceUnderlyingDeviceTypes(unsigned int a1)
{
  result = &unk_1F2249660;
  if (a1 <= 6)
  {
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        return &unk_1F2249678;
      }

      if (a1 != 5)
      {
        return &unk_1F22496A8;
      }
    }

    else if (a1 >= 4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (a1 <= 0x14)
  {
    if (((1 << a1) & 0x1FCC00) != 0)
    {
      goto LABEL_9;
    }

    if (a1 == 12)
    {
      return &unk_1F22496C0;
    }

    if (a1 == 13)
    {
      return &unk_1F22496D8;
    }
  }

  if (a1 == 9)
  {
    return &unk_1F2249690;
  }

  if (a1 == 7)
  {
LABEL_9:
    v5[1] = v1;
    v5[2] = v2;
    v5[0] = [MEMORY[0x1E696AD98] numberWithInt:?];
    return [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  return result;
}

uint64_t FigCaptureSourceDeviceTypeIsSubsetOfDeviceType(unsigned int a1, unsigned int a2, int a3)
{
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = FigCaptureSourceUnderlyingDeviceTypes(a1);
  v9 = FigCaptureSourceUnderlyingDeviceTypes(a2);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        [v6 addObject:{BWCaptureDevicePositionAndDeviceTypeToPortType(a3, objc_msgSend(*(*(&v25 + 1) + 8 * v13++), "intValue"))}];
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v11);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v9);
        }

        [v7 addObject:{BWCaptureDevicePositionAndDeviceTypeToPortType(a3, objc_msgSend(*(*(&v20 + 1) + 8 * v17++), "intValue"))}];
      }

      while (v15 != v17);
      v15 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v15);
  }

  return [v6 isSubsetOfSet:v7];
}

uint64_t FigCaptureSourceGetMediaTypeForUniqueID(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"com.apple.avfoundation.avcapturedevice.built-in_audio:0"))
  {
    return 1936684398;
  }

  v4 = 1986618469;
  if ((objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(a1))
    {
      return 1986618469;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void captureSessionServer_continuityCameraMultitaskingDisallowed()
{
  v0 = time(0);
  os_unfair_lock_lock(&captureSessionServer_continuityCameraMultitaskingDisallowed_lock);
  if ((captureSessionServer_continuityCameraMultitaskingDisallowed_inAlert & 1) != 0 || ((v1 = dword_1ED845174, unk_1ED845190) ? (v2 = dword_1ED845174 < 1) : (v2 = 1), !v2 ? (v3 = v0 - unk_1ED845190 <= 86399) : (v3 = 0), v3))
  {

    os_unfair_lock_unlock(&captureSessionServer_continuityCameraMultitaskingDisallowed_lock);
  }

  else
  {
    captureSessionServer_continuityCameraMultitaskingDisallowed_inAlert = 1;
    os_unfair_lock_unlock(&captureSessionServer_continuityCameraMultitaskingDisallowed_lock);
    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CMCapture"];
    v5 = [v4 localizedStringForKey:@"CONTINUITY_CAMERA_IN_USE_HEADER" value:&stru_1F216A3D0 table:@"Localizable"];
    v6 = [v4 localizedStringForKey:@"CONTINUITY_CAMERA_IN_USE_MESSAGE" value:&stru_1F216A3D0 table:@"Localizable"];
    v7 = [v4 localizedStringForKey:@"CONTINUITY_CAMERA_IN_USE_OK" value:&stru_1F216A3D0 table:@"Localizable"];
    v8 = *MEMORY[0x1E695EE60];
    v15[0] = *MEMORY[0x1E695EE58];
    v15[1] = v8;
    v16[0] = v5;
    v16[1] = v6;
    v15[2] = *MEMORY[0x1E695EE78];
    v16[2] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
    error = 0;
    v10 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 0, &error, v9);
    if (v10)
    {
      v11 = v10;
      v13 = 0;
      CFUserNotificationReceiveResponse(v10, 0.0, &v13);
      CFRelease(v11);
    }

    v12 = time(0);
    CFPreferencesSetAppValue(@"continuity_camera_in_use.previous_time", [MEMORY[0x1E696AD98] numberWithLong:v12], @"com.apple.cameracapture");
    CFPreferencesSetAppValue(@"continuity_camera_in_use.count", [MEMORY[0x1E696AD98] numberWithInt:v1 + (v1 >= 0)], @"com.apple.cameracapture");
    os_unfair_lock_lock(&captureSessionServer_continuityCameraMultitaskingDisallowed_lock);
    unk_1ED845190 = v12;
    dword_1ED845174 = v1 + (v1 >= 0);
    captureSessionServer_continuityCameraMultitaskingDisallowed_inAlert = 0;
    os_unfair_lock_unlock(&captureSessionServer_continuityCameraMultitaskingDisallowed_lock);
  }
}

uint64_t FigCaptureSessionServerStart()
{
  mach_absolute_time();
  v13[0] = 1;
  v13[1] = captureSessionServer_handleReplyMessage;
  v13[2] = captureSessionServer_handleNoReplyMessage;
  memset(&v13[3], 0, 24);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  _MergedGlobals_10 = 0;
  qword_1ED845180 = objc_alloc_init(MEMORY[0x1E695DF90]);
  qword_1ED845188 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  +[FigCaptureLockScreenPrewarmingMonitor start];
  [FigCaptureClientApplicationStateMonitor startPrewarmingMonitorWithHandler:&__block_literal_global_13];
  sWombatEnabledPIDArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  sWombatInUsePIDArray = objc_alloc_init(MEMORY[0x1E695DF70]);
  sWombatStateLock = FigSimpleMutexCreate();
  if (FigCaptureAudiomxdSupportEnabled(sWombatStateLock, v0))
  {
    v10[0] = 0;
    v1 = [MEMORY[0x1E69AED10] sharedInstance];
    [v1 setAttribute:MEMORY[0x1E695E110] forKey:*MEMORY[0x1E69AECF8] error:v10];
  }

  else
  {
    sMXSystemController = [objc_alloc(MEMORY[0x1E69AED20]) initWithPID:getpid()];
    [sMXSystemController setAttributeForKey:*MEMORY[0x1E69B07C0] andValue:MEMORY[0x1E695E110]];
  }

  CFPreferencesSetValue(@"ContinuityCaptureInUse", *MEMORY[0x1E695E4C0], @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  [FigCaptureClientApplicationStateMonitor startContinuityCaptureTerminationMonitorWithHandler:&__block_literal_global_19_0];
  +[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor];
  +[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor];
  if (MGGetBoolAnswer())
  {
    +[FigCaptureDisplayLayoutMonitor sharedExternalDisplayLayoutMonitor];
  }

  +[FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor];
  v2 = +[FigCaptureDeviceLockStateMonitor sharedDeviceLockStateMonitor];
  v4 = BWGetDisplaySupportsPerseus(v2, v3);
  FigCaptureStartPreferencesOSStateHandlers(v4, v5);
  if (dword_1ED843FD0)
  {
    v12 = 0;
    v11 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v7 = v12;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v11))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      mach_absolute_time();
      FigHostTimeToNanoseconds();
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return FigCaptureXPCServerStart("com.apple.coremedia.capturesession", v13, 0, &FigCaptureSessionServerStart_sSessionServer);
}

uint64_t __FigCaptureSessionServerStart_block_invoke_2(uint64_t a1, uint64_t a2)
{
  captureSessionServer_setWombatEnabledState(0, a2);

  return captureSessionServer_setWombatInUseState(0, a2);
}

uint64_t captureSessionServer_setWombatEnabledState(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  if (dword_1ED843FD0)
  {
    v22 = 0;
    v21 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = [sWombatEnabledPIDArray containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2, v14, v15)}];
  if (!a1)
  {
    if (!v5)
    {
      return FigSimpleMutexUnlock();
    }

    [sWombatEnabledPIDArray removeObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
    v5 = [sWombatEnabledPIDArray count];
    if (v5)
    {
      return FigSimpleMutexUnlock();
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = [sWombatEnabledPIDArray count] == 0;
    v5 = [sWombatEnabledPIDArray addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
  }

  if (captureSessionServer_registerForContinuityCameraMultitaskingDisallowed_notifyRegisterOnce != -1)
  {
    captureSessionServer_setWombatEnabledState_cold_1();
  }

  if (v7)
  {
LABEL_13:
    if (dword_1ED843FD0)
    {
      v22 = 0;
      v21 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v22;
      if (os_log_type_enabled(v8, v21))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v16 = 136315394;
        v17 = "captureSessionServer_setWombatEnabledState";
        v18 = 1024;
        v19 = a1;
        _os_log_send_and_compose_impl();
      }

      v5 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (FigCaptureAudiomxdSupportEnabled(v5, v6))
    {
      v20[0] = 0;
      v11 = [MEMORY[0x1E69AED10] sharedInstance];
      v12 = [MEMORY[0x1E696AD98] numberWithBool:a1];
      [v11 setAttribute:v12 forKey:*MEMORY[0x1E69AECF8] error:v20];
    }

    else
    {
      [sMXSystemController setAttributeForKey:*MEMORY[0x1E69B07C0] andValue:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", a1)}];
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t captureSessionServer_setWombatInUseState(int a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = [sWombatInUsePIDArray containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
  if (a1)
  {
    if ((v4 & 1) == 0)
    {
      if (![sWombatInUsePIDArray count])
      {
        CFPreferencesSetValue(@"ContinuityCaptureInUse", *MEMORY[0x1E695E4D0], @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      }

      [sWombatInUsePIDArray addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
    }
  }

  else if (v4)
  {
    [sWombatInUsePIDArray removeObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
    if (![sWombatInUsePIDArray count])
    {
      CFPreferencesSetValue(@"ContinuityCaptureInUse", *MEMORY[0x1E695E4C0], @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    }
  }

  return FigSimpleMutexUnlock();
}

void __captureSessionServer_registerForContinuityCameraMultitaskingDisallowed_block_invoke_2(int a1, int token)
{
  state64 = 0;
  if (dword_1ED845178 == token && !notify_get_state(token, &state64))
  {
    captureSessionServer_continuityCameraMultitaskingDisallowed();
  }
}

uint64_t captureSessionServer_handleSessionFileSinkStartRecordingMessage(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionFileSinkStartRecording);
}

uint64_t captureSessionServer_handleSessionStillImageSinkCaptureImageMessage(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionStillImageSinkCaptureImage);
}

uint64_t captureSessionServer_handleSessionStillImageSinkPrepareToCaptureBracketMessage(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionStillImageSinkPrepareToCaptureBracket);
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkCaptureImageMessage(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionIrisStillImageSinkCaptureImage);
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkPrepareToCaptureMessage(uint64_t a1, void *a2)
{
  cf = 0;
  v10 = 0;
  v3 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v10, &cf, 0, 0);
  v4 = v10;
  if (v10)
  {
    v5 = [[FigCaptureIrisPreparedSettings alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, *MEMORY[0x1E69615B0])];
    v6 = cf;
    v7 = *(CMBaseObjectGetVTable() + 16);
    if (*(v7 + 96))
    {
      (*(v7 + 104))(v4, v6, v5);
    }

    else
    {
      v11 = @"ErrorStatus";
      v12 = &unk_1F2246228;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkBeginMomentCaptureMessage(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionIrisStillImageSinkBeginMomentCapture);
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkCommitMomentCaptureToStillImageCaptureMessage(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionIrisStillImageSinkCommitMomentCaptureToStillImageCapture);
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkCommitMomentCaptureToMovieRecordingMessage(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();

  return captureSessionServer_handleCommonSectionPayloadMessage(a1, a2, v4, FigCaptureSessionIrisStillImageSinkCommitMomentCaptureToMovieRecording);
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkCancelMomentCaptureMessage(uint64_t a1, void *a2)
{
  cf = 0;
  v10 = 0;
  v3 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v10, &cf, 0, 0);
  v4 = v10;
  if (v10)
  {
    int64 = xpc_dictionary_get_int64(a2, *MEMORY[0x1E69615B0]);
    v6 = cf;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v7)
    {
      v7(v4, v6, int64);
    }

    else
    {
      v11 = @"ErrorStatus";
      v12 = &unk_1F2246228;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t captureSessionServer_handleSessionIrisStillImageSinkEndMomentCaptureMessage(uint64_t a1, void *a2)
{
  cf = 0;
  v10 = 0;
  v3 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v10, &cf, 0, 0);
  v4 = v10;
  if (v10)
  {
    int64 = xpc_dictionary_get_int64(a2, *MEMORY[0x1E69615B0]);
    v6 = cf;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v7)
    {
      v7(v4, v6, int64);
    }

    else
    {
      v11 = @"ErrorStatus";
      v12 = &unk_1F2246228;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

void captureSessionServer_handlePrewarm(void *a1)
{
  int64 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E69615B0]);
  v3 = xpc_dictionary_get_int64(a1, *MEMORY[0x1E69615D8]);
  FigXPCMessageCopyCFString();
  FigXPCMessageCopyCFString();
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58])
  {
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (*v4 == 1)
    {
      v6 = CStringPtrAndBufferToFree;
      if (CStringPtrAndBufferToFree)
      {
        v7 = strlen(CStringPtrAndBufferToFree);
        strncpy(__dst, &v6[v7 - 8], 8uLL);
      }

      kdebug_trace();
    }

    free(0);
  }

  FigCaptureSessionPrewarm(0, int64, v3, 0);
}

void captureSessionServer_handleCancelPrewarm(uint64_t a1)
{
  v1 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  FigXPCMessageCopyCFString();
  if (*v1)
  {
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (*v1 == 1)
    {
      v3 = CStringPtrAndBufferToFree;
      if (CStringPtrAndBufferToFree)
      {
        v4 = strlen(CStringPtrAndBufferToFree);
        strncpy(__dst, &v3[v4 - 8], 8uLL);
      }

      kdebug_trace();
    }

    free(0);
  }

  FigCaptureSessionCancelPrewarm(0);
}

uint64_t captureSessionServer_handleSessionVisionDataSinkTriggerBurstMessage(uint64_t a1, void *a2)
{
  cf = 0;
  v8 = 0;
  v2 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v8, &cf, 0, 0);
  v3 = v8;
  if (v8)
  {
    v4 = cf;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v5)
    {
      v5(v3, v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v2;
}

uint64_t FigCaptureSessionStopRunning(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v2)
  {

    return v2(a1);
  }

  else
  {
    v4 = @"ErrorStatus";
    v5 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t captureSessionServer_handleCommonSectionPayloadMessage(uint64_t a1, void *a2, uint64_t a3, void (*a4)(CFTypeRef, CFTypeRef, id))
{
  cf = 0;
  v10 = 0;
  v8 = 0;
  v5 = captureSessionServer_messageUnpackCopy(a1, a2, a3, &v8, &cf, &v10, 0);
  v6 = v8;
  if (v8)
  {
    a4(v8, cf, v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t FigCaptureSessionFileSinkStartRecording(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t captureSessionServer_handleCommonSectionMessage(uint64_t a1, void *a2, void (*a3)(CFTypeRef, CFTypeRef))
{
  v7 = 0;
  cf = 0;
  v4 = captureSessionServer_messageUnpackCopy(a1, a2, 0, &v7, &cf, 0, 0);
  v5 = v7;
  if (v7)
  {
    a3(v7, cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v4;
}

uint64_t FigCaptureSessionFileSinkPauseRecording(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v4)
  {

    return v4(a1, a2);
  }

  else
  {
    v6 = @"ErrorStatus";
    v7 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionFileSinkResumeRecording(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v4)
  {

    return v4(a1, a2);
  }

  else
  {
    v6 = @"ErrorStatus";
    v7 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionFileSinkStopRecording(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v4)
  {

    return v4(a1, a2);
  }

  else
  {
    v6 = @"ErrorStatus";
    v7 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionStillImageSinkCaptureImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionStillImageSinkPrepareToCaptureBracket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionIrisStillImageSinkCaptureImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionIrisStillImageSinkBeginMomentCapture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionIrisStillImageSinkCommitMomentCaptureToStillImageCapture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureSessionIrisStillImageSinkCommitMomentCaptureToMovieRecording(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v6)
  {

    return v6(a1, a2, a3);
  }

  else
  {
    v8 = @"ErrorStatus";
    v9 = &unk_1F2246228;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

uint64_t FigCaptureCreateCMClockFromTimeSyncMSGClock(uint64_t a1, void *a2)
{
  HostTimeClock = CMClockGetHostTimeClock();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    return 4294954551;
  }

  TimeCallback = FigDerivedClockCreateWithGetTimeCallback();
  if (TimeCallback)
  {
    return TimeCallback;
  }

  v6 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v6)
  {
    return 4294954549;
  }

  v7 = v6;
  FigGetHostTimeToNanosecondsScale();
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  *DerivedStorage = FigSimpleMutexCreate();
  if (HostTimeClock)
  {
    v9 = CFRetain(HostTimeClock);
  }

  else
  {
    v9 = 0;
  }

  *(DerivedStorage + 8) = v9;
  *(DerivedStorage + 16) = TimeSyncClockCreateWithClockIdentifier();
  *(DerivedStorage + 24) = a1;
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 48) = 0;
  *(DerivedStorage + 32) = CFRetain(v7);
  v11 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 56) = *MEMORY[0x1E6960C70];
  v12 = *MEMORY[0x1E69DA100];
  *(DerivedStorage + 72) = *(v11 + 16);
  *(DerivedStorage + 80) = v12;
  TimeSyncClockSetLockStateChangeCallback();
  v10 = 0;
  *a2 = 0;
  CFRelease(v7);
  return v10;
}

CFStringRef fcft_CopyDebugDesc(const void *a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v3, 0, @"TSClock(TSClockIdentifier='0x%016llx')", *(DerivedStorage + 24));
}

void *fcft_Finalize(uint64_t a1)
{
  result = FigDerivedClockGetDerivedStorage();
  if (*result)
  {
    v2 = result;
    FigSimpleMutexLock();
    v3 = v2[1];
    if (v3)
    {
      CFRelease(v3);
    }

    if (v2[2])
    {
      TimeSyncClockSetLockStateChangeCallback();
      TimeSyncClockDispose();
    }

    v4 = v2[4];
    if (v4)
    {
      CFRelease(v4);
    }

    *v2 = 0;
    FigSimpleMutexUnlock();

    return FigSimpleMutexDestroy();
  }

  return result;
}

BOOL fcft_MightDrift(uint64_t a1, uint64_t a2)
{
  if (!FigDerivedClockVerifyCallbacksMatch() || !FigDerivedClockVerifyCallbacksMatch())
  {
    return 1;
  }

  FigDerivedClockGetDerivedStorage();
  FigDerivedClockGetDerivedStorage();
  ClockIdentifier = TimeSyncClockGetClockIdentifier();
  return ClockIdentifier != TimeSyncClockGetClockIdentifier();
}

uint64_t fcft_GetAnchorTime(uint64_t a1, CMTime *a2, uint64_t a3)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  v17 = **&MEMORY[0x1E6960C70];
  FigSimpleMutexLock();
  CMClockGetTime(&time, *(DerivedStorage + 8));
  value = time.value;
  v16 = *&time.timescale;
  ClockTimeForHostTime = TimeSyncClockGetClockTimeForHostTime();
  v8 = *MEMORY[0x1E69DA100];
  if (ClockTimeForHostTime == *MEMORY[0x1E69DA100])
  {
    v9 = 4294954540;
    goto LABEL_13;
  }

  if ((*(DerivedStorage + 68) & 1) == 0)
  {
    *(DerivedStorage + 56) = value;
    *(DerivedStorage + 64) = v16;
  }

  v10 = *(DerivedStorage + 80);
  if (v10 == v8)
  {
    goto LABEL_8;
  }

  if (ClockTimeForHostTime <= v10)
  {
    *(DerivedStorage + 56) = value;
    *(DerivedStorage + 64) = v16;
LABEL_8:
    *(DerivedStorage + 80) = ClockTimeForHostTime;
    v10 = ClockTimeForHostTime;
  }

  memset(&v14, 0, sizeof(v14));
  CMTimeMake(&v14, ClockTimeForHostTime - v10, 1000000000);
  lhs = v14;
  v12 = *(DerivedStorage + 56);
  CMTimeAdd(&time, &lhs, &v12);
  CMTimeConvertScale(&v17, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  if (a2)
  {
    *a2 = v17;
  }

  v9 = 0;
  if (a3)
  {
    *a3 = value;
    *(a3 + 8) = v16;
  }

LABEL_13:
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t hdrn_createSampleBufferProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigCaptureWaitForPreloadShadersCompletion();
  v4 = FigSampleBufferProcessorCreateForCustom();
  if (v4)
  {
    hdrn_createSampleBufferProcessor_cold_1();
  }

  return v4;
}

uint64_t FigSampleBufferProcessorProcessSampleBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

Class __getBrightnessSystemClientClass_block_invoke(uint64_t a1)
{
  v3[0] = 0;
  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreBrightnessLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E799B798;
    v5 = 0;
    CoreBrightnessLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    __getBrightnessSystemClientClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("BrightnessSystemClient");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getBrightnessSystemClientClass_block_invoke_cold_1();
  }

  getBrightnessSystemClientClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t __CoreBrightnessLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CoreBrightnessLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1ACBD3738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SystemStatusLibraryCore(uint64_t a1)
{
  if (!SystemStatusLibraryCore_frameworkLibrary)
  {
    SystemStatusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SystemStatusLibraryCore_frameworkLibrary;
}

uint64_t __SystemStatusLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SystemStatusLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSTActivityAttributionClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STActivityAttribution");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTActivityAttributionClass_block_invoke_cold_1();
  }

  getSTActivityAttributionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void SystemStatusLibrary()
{
  v0 = 0;
  if (!SystemStatusLibraryCore(&v0))
  {
    SystemStatusLibrary_cold_1(&v0);
  }

  if (v0)
  {
    free(v0);
  }
}

Class __getSTMediaStatusDomainPublisherClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STMediaStatusDomainPublisher");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTMediaStatusDomainPublisherClass_block_invoke_cold_1();
  }

  getSTMediaStatusDomainPublisherClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getSTDynamicActivityAttributionPublisherClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STDynamicActivityAttributionPublisher");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTDynamicActivityAttributionPublisherClass_block_invoke_cold_1();
  }

  getSTDynamicActivityAttributionPublisherClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getSTExecutableIdentityClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STExecutableIdentity");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTExecutableIdentityClass_block_invoke_cold_1();
  }

  getSTExecutableIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getSTAttributedEntityClass_block_invoke(uint64_t a1)
{
  SystemStatusLibrary();
  result = objc_getClass("STAttributedEntity");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getSTAttributedEntityClass_block_invoke_cold_1();
  }

  getSTAttributedEntityClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

intptr_t nc_handleEmitSemaphoreTrackedDroppedMessage(intptr_t result, dispatch_semaphore_t dsema)
{
  v3 = *(result + 12);
  if (v3 == 1 || v3 == 2 && (result = [objc_msgSend(objc_msgSend(result "droppedSample")], (result & 1) == 0))
  {

    return dispatch_semaphore_signal(dsema);
  }

  return result;
}

uint64_t asn_audioUnitRenderProc(uint64_t a1, AudioUnitRenderActionFlags *a2, const AudioTimeStamp *a3, uint64_t a4, UInt32 a5)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  add_explicit = atomic_fetch_add_explicit((a1 + 488), 1uLL, memory_order_relaxed);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 296));
  memset(&v36, 0, sizeof(v36));
  CMTimeMake(&v36, a3->mSampleTime, StreamBasicDescription->mSampleRate);
  v11 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  v12 = CMSimpleQueueDequeue(*(a1 + 336));
  if (v12)
  {
    if ((~a3->mFlags & 3) == 0)
    {
      v13 = *(a1 + 352);
      if (v13)
      {
        if (*(a1 + 372))
        {
          memset(&v35, 0, sizeof(v35));
          v14 = AudioConvertHostTimeToNanos(a3->mHostTime - v13);
          CMTimeMake(&v35, v14, 1000000000);
          time1 = v35;
          time2 = *(a1 + 384);
          v15 = CMTimeCompare(&time1, &time2);
          memset(&time1, 0, sizeof(time1));
          time2 = v36;
          v32 = *(a1 + 360);
          CMTimeSubtract(&time1, &time2, &v32);
          v32 = time1;
          CMTimeAbsoluteValue(&time2, &v32);
          v32 = *(a1 + 384);
          if (CMTimeCompare(&time2, &v32) > 0 || v15 >= 1)
          {
            if ((*(a1 + 648) & 1) == 0 && v15 >= 1)
            {
              HostTimeClock = CMClockGetHostTimeClock();
              RelativeRate = CMSyncGetRelativeRate(HostTimeClock, *(a1 + 280));
              if (RelativeRate != 1.0)
              {
                v32 = v35;
                CMTimeMultiplyByFloat64(&time2, &v32, RelativeRate);
                v35 = time2;
              }

              mSampleRate = StreamBasicDescription->mSampleRate;
              v32 = v35;
              CMTimeConvertScale(&time2, &v32, mSampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
              v35 = time2;
              *(v12 + 14) = time2.value;
            }

            v19 = MEMORY[0x1E6960C70];
            *(a1 + 408) = *MEMORY[0x1E6960C70];
            *(a1 + 424) = *(v19 + 16);
          }

          v11 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        }
      }
    }

    v20 = AudioUnitRender(*(a1 + 312), a2, a3, 1u, a5, *(v12 + 6));
    if (v20)
    {
LABEL_31:
      v29 = v20;
      goto LABEL_33;
    }

    *(v12 + 1) = add_explicit + 1;
    *(v12 + 5) = a5;
    if ((a3->mFlags & 2) == 0)
    {
      asn_audioUnitRenderProc_cold_1();
    }

    if (*(a1 + 420))
    {
      CMTimeMake(&time1, *(a1 + 432), StreamBasicDescription->mSampleRate);
      time2 = *(a1 + 408);
      CMTimeAdd(&v35, &time2, &time1);
    }

    else
    {
      v21 = AudioConvertHostTimeToNanos(a3->mHostTime);
      CMTimeMake(&time1, v21, 1000000000);
      v22 = CMClockGetHostTimeClock();
      CMSyncConvertTime(&v35, &time1, v22, *(a1 + 280));
      *(v12 + 24) = *&v35.value;
      epoch = v35.epoch;
      *(v12 + 5) = v35.epoch;
      v24 = StreamBasicDescription->mSampleRate;
      *&time1.value = *(v12 + 24);
      time1.epoch = epoch;
      CMTimeConvertScale(&v35, &time1, v24, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      *(v12 + 1) = v35;
      v25 = *(v12 + 14);
      if (!v25)
      {
        goto LABEL_24;
      }

      CMTimeMake(&time1, v25, StreamBasicDescription->mSampleRate);
      time2 = *(v12 + 1);
      CMTimeSubtract(&v35, &time2, &time1);
    }

    *(v12 + 1) = v35;
LABEL_24:
    *(v12 + 8) = *&a3->mSampleTime;
    *(a1 + 432) = *(v12 + 5);
    v26 = (a1 + 408);
    v27 = *(v12 + 5);
    *(a1 + 408) = *(v12 + 24);
    *(a1 + 424) = v27;
    v28 = *(v12 + 14);
    if (v28)
    {
      CMTimeMake(&time1, v28, StreamBasicDescription->mSampleRate);
      *&time2.value = *v26;
      time2.epoch = *(a1 + 424);
      CMTimeAdd(&v35, &time2, &time1);
      *v26 = *&v35.value;
      *(a1 + 424) = v35.epoch;
    }

    v20 = CMSimpleQueueEnqueue(*(a1 + 344), v12);
    if (!v20)
    {
      CMTimeMake(&time1, a5, StreamBasicDescription->mSampleRate);
      time2 = v36;
      CMTimeAdd(&v35, &time2, &time1);
      *(a1 + 360) = v35;
      if ((a3->mFlags & 2) != 0)
      {
        memset(&v35, 0, sizeof(v35));
        CMTimeMake(&v35, a5, StreamBasicDescription->mSampleRate);
        time2 = v35;
        CMTimeConvertScale(&time1, &time2, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v35 = time1;
        mHostTime = a3->mHostTime;
        v29 = 0;
        *(a1 + 352) = AudioConvertNanosToHostTime(time1.value) + mHostTime;
      }

      else
      {
        v29 = 0;
        *(a1 + 352) = 0;
      }

      goto LABEL_30;
    }

    goto LABEL_31;
  }

  asn_audioUnitRenderProc_cold_2(a1);
  v29 = 4294950486;
LABEL_33:
  CMSimpleQueueEnqueue(*(a1 + 328), v29);
  if (v12)
  {
    CMSimpleQueueEnqueue(*(a1 + v11[1011]), v12);
  }

LABEL_30:
  dispatch_async_f(*(a1 + 440), a1, asn_generateSamples);
  return v29;
}

void sub_1ACBD8C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double FODMGTimeInMilliseconds(unint64_t a1, double a2, double a3, double a4)
{
  if (FODMGTimeInMilliseconds_once != -1)
  {
    FODMGTimeInMilliseconds_cold_1();
  }

  LODWORD(a3) = FODMGTimeInMilliseconds_info;
  LODWORD(a4) = *algn_1EB5907D4;
  return a1 * *&a3 / *&a4 / 1000000.0;
}

void sub_1ACBD9FF0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

double *deviceMotionCallback(double *result, void *a2)
{
  if (result)
  {
    v2 = result[11];
    v3 = *(result + 96);
    v4 = *(result + 3);
    v6[2] = *(result + 2);
    v6[3] = v4;
    v6[4] = *(result + 4);
    v7 = *(result + 10);
    v5 = *(result + 1);
    v6[0] = *result;
    v6[1] = v5;
    return [a2 didUpdateFusedMotionWithDeviceMotion:v6 time:v3 ifsync:v2];
  }

  return result;
}

uint64_t low_freq_error_logging_0()
{
  mach_absolute_time();
  result = FigHostTimeToNanoseconds();
  if (low_freq_error_logging_last_log_0)
  {
    v1 = (result - low_freq_error_logging_last_log_0) >= 0x3B9ACA00;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (low_freq_error_logging_filtered_0)
    {
      low_freq_error_logging_filtered_0 = 0;
    }

    low_freq_error_logging_last_log_0 = result;
  }

  else
  {
    ++low_freq_error_logging_filtered_0;
  }

  return result;
}

FigCoreMotionDelegate *FigCoreMotionAllocWithPriority(int a1, int a2, int a3, uint64_t a4, float a5, float a6)
{
  v12 = [FigCoreMotionDelegate alloc];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a4];
  *&v14 = a5;
  *&v15 = a6;

  return [(FigCoreMotionDelegate *)v12 initWithAccelerometer:a1 != 0 gravityZ:a2 != 0 fusedMotion:a3 != 0 accelUpdateInterval:v13 fusedMotionUpdateInterval:v14 motionCallbackThreadPriority:v15];
}

uint64_t FigCoreMotionCopyMotionData(void *a1, void *a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([a1 isCopyingAllData])
  {
    v5 = [a1 copyAllFusedMotionData];
  }

  else
  {
    v5 = [a1 copyNewFusedMotionData];
  }

  v6 = v5;
  if (v5)
  {
    *&v9 = *off_1E798D170;
    *&v8 = v5;
    *a2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v9 count:1];
    CFRelease(v6);
  }

  else
  {
    *a2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v9 count:0];
  }

  return [v4 drain];
}

uint64_t FigCoreMotionGetAverageQuaternion(void *a1, uint64_t a2, int a3)
{
  v6 = [a1 updateCurrentQuaternionForTimeStamps:? withEnd:?];
  if (a3)
  {
    [a1 getCurrentDeltaQuaternion:a2];
  }

  else
  {
    [a1 getCurrentQuaternion:a2];
  }

  return v6;
}

uint64_t FigCoreMotionGetQuaternionAndAttitude(void *a1, double *a2, int a3, long double *a4, int a5)
{
  v10 = [a1 updateCurrentQuaternionForTimeStamp:?];
  if (!a3)
  {
    [a1 getCurrentQuaternion:a2];
    if (a5)
    {
      [a1 getCurrentDeltaAttitudeRoll:a4 pitch:a4 + 1 yaw:a4 + 2];
      return v10;
    }

LABEL_6:
    [a1 getCurrentAttitudeRoll:a4 pitch:a4 + 1 yaw:a4 + 2];
    return v10;
  }

  [a1 getCurrentDeltaQuaternion:a2];
  if (!a5)
  {
    goto LABEL_6;
  }

  *a4 = rollFromQuaternion(a2);
  a4[1] = asin(*a2 * (a2[1] + a2[1]) + a2[2] * (a2[3] + a2[3]));
  a4[2] = yawFromQuaternion(a2);
  return v10;
}

uint64_t CMCaptureGestaltGetIntegerAnswer(uint64_t a1)
{
  if (cmcapturegestalt_buildDataBase_onceToken != -1)
  {
    CMCaptureGestaltGetIntegerAnswer_cold_1();
  }

  v2 = [sCMCaptureGestaltIntegerDataBase objectForKeyedSubscript:a1];
  if (!v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v2 integerValue];
}

uint64_t CMCaptureGestaltGetStringAnswer(uint64_t a1)
{
  if (cmcapturegestalt_buildDataBase_onceToken != -1)
  {
    CMCaptureGestaltGetIntegerAnswer_cold_1();
  }

  v2 = sCMCaptureGestaltStringDataBase;

  return [v2 objectForKeyedSubscript:a1];
}

id __cmcapturegestalt_buildDataBase_block_invoke()
{
  sCMCaptureGestaltBoolDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sCMCaptureGestaltIntegerDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sCMCaptureGestaltFloatDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  sCMCaptureGestaltStringDataBase = objc_alloc_init(MEMORY[0x1E695DF90]);
  ModelSpecificName = FigCaptureGetModelSpecificName(sCMCaptureGestaltStringDataBase, v0);
  v2 = sCMCaptureGestaltBoolDataBase;
  v3 = sCMCaptureGestaltIntegerDataBase;
  v4 = sCMCaptureGestaltFloatDataBase;
  v5 = sCMCaptureGestaltStringDataBase;

  return CMCaptureGestaltGetDeviceFeatures(ModelSpecificName, v2, v3, v4, v5);
}

void ie_updateConfigurationForInferenceIfNeededWithInputFormat(int a1, void *a2, void *a3)
{
  if (a1 > 106)
  {
    if (a1 != 107 && a1 != 201)
    {
      return;
    }
  }

  else if (a1 != 104)
  {
    if (a1 == 106)
    {
      IsEqualForDimensions = FigCaptureOrientationIsEqualForDimensions([a3 dimensions], objc_msgSend(a2, "depthDataDimensions"));
      v6 = [a2 depthDataDimensions];
      v7 = __ROR8__(v6, 32);
      if (IsEqualForDimensions)
      {
        v8 = v6;
      }

      else
      {
        v8 = v7;
      }

      [a2 setDepthDataDimensions:v8];
    }

    return;
  }

  v9 = FigCaptureAspectRatioForDimensions([a3 dimensions]);
  if (a1 == 201 || a1 == 107)
  {

    [a2 setInputSegmentationPortraitOrientationSupportEnabled:v9 < 1.0];
  }

  else if (a1 == 104)
  {

    [a2 setPortraitOrientationSupportEnabled:v9 < 1.0];
  }
}

id BWInputFormatsByResolutionFlavorByAddingFormatForFlavor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(v5, "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2))}];
  [v6 addObject:a3];
  v7 = [v6 copy];
  [v5 setObject:v7 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
  v8 = [v5 copy];

  return v8;
}

uint64_t BWResolutionFlavorForAspectRatio(unsigned int a1)
{
  if (a1 > 6)
  {
    return 3;
  }

  else
  {
    return dword_1AD056754[a1];
  }
}

void ubn_dispatch_sync(NSObject *a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_sync_block_invoke_0;
  block[3] = &unk_1E798FEA0;
  block[4] = a2;
  dispatch_sync(a1, block);
}

void __ubn_dispatch_sync_block_invoke_0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void ubn_dispatch_async(NSObject *a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_async_block_invoke_0;
  block[3] = &unk_1E798FEA0;
  block[4] = a2;
  dispatch_async(a1, block);
}

void __ubn_dispatch_async_block_invoke_0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void ubn_dispatch_group_async(NSObject *a1, NSObject *a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ubn_dispatch_group_async_block_invoke_0;
  block[3] = &unk_1E798FEA0;
  block[4] = a3;
  dispatch_group_async(a1, a2, block);
}

void __ubn_dispatch_group_async_block_invoke_0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void BWPhotonicEngineUtilitiesMergeInferenceAttachmentsIfRequired(void *a1, void *a2)
{
  v22 = @"Inferences";
  v2 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{CMGetAttachment(a1, @"Inferences", 0)}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33.value = 0x1F219E990;
  *&v33.timescale = 0x1F219E9B0;
  v33.epoch = 0x1F219E5F0;
  v34 = 0x1F219E6F0;
  v35 = 0x1F219E710;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:5];
  v3 = [obj countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    v6 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v9 = [a2 inferenceForAttachmentKey:{v8, v22}];
        if (v9)
        {
          v11 = v9;
          v12 = BWInferenceTypeForInferenceAttachmentKey(v8, v10);
          v13 = v6;
          v14 = [v2 objectForKeyedSubscript:{objc_msgSend(*(v6 + 3480), "numberWithInt:", v12)}];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 inferences];
            v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v16];
            [v17 setObject:v11 forKeyedSubscript:v8];
            v18 = [[BWInferenceResult alloc] initWithResult:v15 replacementInferences:v17 replacementPreventionReason:0];
          }

          else
          {
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObject:v11 forKey:v8];
            memset(&v33, 0, sizeof(v33));
            CMSampleBufferGetPresentationTimeStamp(&v33, a1);
            v20 = [BWInferenceResult alloc];
            v27 = v33;
            v18 = [(BWInferenceResult *)v20 initWithInferenceType:v12 inferences:v19 atTimestamp:&v27];
          }

          v21 = v18;
          v6 = v13;
          [v2 setObject:v18 forKeyedSubscript:{objc_msgSend(*(v13 + 3480), "numberWithInt:", v12)}];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v4);
  }

  if ([v2 count])
  {
    CMSetAttachment(a1, v23, v2, 1u);
  }
}

void *BWPhotonicEngineUtilitiesMergeInferenceAttachedMedia(opaqueCMSampleBuffer *a1, void *a2, void *a3, void *a4)
{
  v5 = a2;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  result = [a2 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v38;
    v22 = v5;
    v23 = a4;
    v21 = *v38;
    do
    {
      v10 = 0;
      do
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v37 + 1) + 8 * v10);
        if (!BWSampleBufferGetAttachedMedia(a1, v11))
        {
          v12 = [a4 objectForKeyedSubscript:v11];
          if (v12)
          {
            v12 = CFRetain(v12);
          }

          cf = v12;
          v13 = BWPropagateInferenceAttachedMedia(a3, v11, &cf, a1);
          if (v13)
          {
            v14 = v13;
            v34 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v16 = v34;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v17 = v16;
            }

            else
            {
              v17 = v16 & 0xFFFFFFFE;
            }

            if (v17)
            {
              v18 = BWStillImageCaptureIDForSampleBuffer(a1);
              v25 = 136315906;
              v26 = "BWPhotonicEngineUtilitiesMergeInferenceAttachedMedia";
              v27 = 2114;
              v28 = v11;
              v29 = 1026;
              v30 = v14;
              v31 = 2050;
              v32 = v18;
              LODWORD(v20) = 38;
              v19 = &v25;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v5 = v22;
            a4 = v23;
            v9 = v21;
          }

          [a4 setObject:cf forKeyedSubscript:{v11, v19, v20}];
          if (cf)
          {
            CFRelease(cf);
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [v5 countByEnumeratingWithState:&v37 objects:v36 count:16];
      v8 = result;
    }

    while (result);
  }

  return result;
}

uint64_t BWPhotonicEngineUtilitiesDetermineBufferTypeForDeepFusionInputBuffer(void *a1, char a2, uint64_t a3)
{
  v5 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  if ((a3 & 0x200000000) != 0 && v5 == 1)
  {
    return 25;
  }

  v7 = 23;
  v8 = 27;
  if ((a2 & 4) == 0)
  {
    v8 = 24;
  }

  if ((a2 & 0x10) == 0)
  {
    v7 = v8;
  }

  if ((a2 & 8) != 0)
  {
    return 22;
  }

  else
  {
    return v7;
  }
}

void *BWPhotonicEngineUtilitiesSetDistortionCorrectionParametersOnDCInput(void *a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*off_1E798CFE8];
  v5 = [a2 objectForKeyedSubscript:*off_1E798CFF8];
  if (v4)
  {
    _ZF = v5 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    v7 = v5;
    [a1 setGeometricDistortionCorrectionUsePrecomputedPolynomialsAndOpticalCenterOffset:1];
    [a1 setGeometricDistortionCorrectionForwardPolynomial:v4];
    [a1 setGeometricDistortionCorrectionInversePolynomial:v7];
  }

  v8 = [a2 objectForKeyedSubscript:*off_1E798CFE0];
  v9 = [a2 objectForKeyedSubscript:*off_1E798CFF0];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v9;
    size.width = 0.0;
    size.height = 0.0;
    CGSizeMakeWithDictionaryRepresentation(v8, &size);
    v17 = 0uLL;
    CGPointMakeWithDictionaryRepresentation(v11, &v17);
    __asm { FMOV            V2.2D, #-0.5 }

    [a1 setGeometricDistortionCorrectionOpticalCenterOffset:{vcvtq_f64_f32(vcvt_f32_f64(vaddq_f64(v17, vmulq_f64(size, _Q2))))}];
  }

  result = [a2 objectForKeyedSubscript:*off_1E798D028];
  if (result)
  {
    return BWPhotonicEngineUtilitiesSetDistortionCorrectionParametersOnDCInput_cold_1(result, a1);
  }

  return result;
}

void BWPhotonicEngineUtilitiesSetDeferredPhotoProcessedImageFlags(const void *a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(a1, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 0x2000}];
  CMSetAttachment(a1, @"StillImageProcessingFlags", v2, 1u);
  AttachedMedia = BWSampleBufferGetAttachedMedia(a1, 0x1F21AAE10);
  if (AttachedMedia)
  {
    v4 = AttachedMedia;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(AttachedMedia, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 0x2000}];

    CMSetAttachment(v4, @"StillImageProcessingFlags", v5, 1u);
  }
}

uint64_t BWPhotonicEngineUtilitiesSampleBufferEligibleForPiecemealEncoding(opaqueCMSampleBuffer *a1)
{
  v2 = BWPixelBufferDimensionsFromSampleBuffer(a1);
  v3 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [objc_msgSend(objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798A940), "objectForKeyedSubscript:", *off_1E798AA00), "doubleValue"}];
  v12.n128_u64[0] = v11;
  v13.n128_f64[0] = FinalCropRect;
  v14.n128_u64[0] = v8;
  v15.n128_u64[0] = v10;
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v2, v2 >> 32, v13, v6, v14, v15, v12, v16);
  v20 = v19 <= 0.0;
  if (v21 < v2)
  {
    v20 = 0;
  }

  v22 = v17 <= 0.0;
  if (v18 < SHIDWORD(v2))
  {
    v22 = 0;
  }

  return v20 | v22;
}

BWDepthConverterNode *FigCaptureCreateAndConfigureDepthConverterNode(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v10 = a7;
  LOBYTE(v19) = 0;
  v16 = [[BWDepthConverterNode alloc] initWithStillImageNodeConfiguration:0 cameraInfoByPortType:a5 sensorIDDictionary:0 rgbPersonSegmentationEnabled:0 depthIsAlwaysHighQuality:0 depthOriginatesFromNeuralNetwork:0 backPressureDrivenPipelining:v19];
  [(BWNode *)v16 setName:@"Depth Converter"];
  -[BWDepthConverterNode setHorizontalSensorBinningFactor:](v16, "setHorizontalSensorBinningFactor:", [a4 horizontalSensorBinningFactor]);
  -[BWDepthConverterNode setVerticalSensorBinningFactor:](v16, "setVerticalSensorBinningFactor:", [a4 verticalSensorBinningFactor]);
  v17 = FigCaptureConfigureDepthConverterNode(v16, a1, a2, a3, a6, v10, a8);
  if (a9)
  {
    *a9 = v17;
  }

  return v16;
}

uint64_t FigCaptureConfigureDepthConverterNode(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, uint64_t a7)
{
  v22 = 0;
  if (a2)
  {
    v12 = [a2 depthDataTransform];
    v14 = v13;
    v15 = [a2 outputFormat];
    v16 = a2;
LABEL_7:
    v19 = [objc_msgSend(v16 "sourceConfiguration")];
    goto LABEL_8;
  }

  v16 = a3;
  if (a3)
  {
    v12 = [a3 depthDataTransformWithSourceDimensions];
    v14 = v17;
    v15 = [objc_msgSend(objc_msgSend(v16 "sourceConfiguration")];
    goto LABEL_7;
  }

  v12 = 0;
  if (a4)
  {
    v14 = [objc_msgSend(objc_msgSend(a4 "sourceConfiguration")];
    v15 = [objc_msgSend(objc_msgSend(a4 "sourceConfiguration")];
    v16 = a4;
    goto LABEL_7;
  }

  v19 = 0;
  v15 = 0;
  v14 = 0;
LABEL_8:
  v20 = HIDWORD(v12);
  [a1 setOutputFormat:v15];
  [a1 setOutputDimensions:v14];
  if (v12)
  {
    v20 = FigCaptureNormalizeAngle(-HIDWORD(v12));
  }

  [a1 setRotationDegrees:v20];
  [a1 setMirroringEnabled:v12 & 1];
  [a1 setStreamingGDRFilteringEnabled:{objc_msgSend(objc_msgSend(a2, "depthDataSinkConfiguration"), "filteringEnabled") & (a6 ^ 1)}];
  if (v19 && FigCaptureSourceGetIntAttribute(v19, @"PearlModuleType", &v22) == 2)
  {
    [a1 setStreamingSMPFilteringEnabled:{objc_msgSend(objc_msgSend(a2, "depthDataSinkConfiguration"), "filteringEnabled")}];
  }

  [a1 setProvidesUnfilteredDepthAsAttachedMedia:a7];
  [a1 setBaseRotationDegrees:a5];
  return v22;
}

BWNodeOutput *FigCaptureBuildMotionAttachmentsNode(void *a1, BWNodeOutput *a2, unsigned int a3, unsigned int a4, void *a5, unsigned int a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, unsigned __int8 a11, char a12, char a13, char a14, char a15, _DWORD *a16)
{
  v35 = 0;
  v34 = 0;
  v20 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters motionAttachmentsParameters];
  if (a13)
  {
    v21 = 2;
  }

  else
  {
    v21 = a11;
  }

  v22 = [BWMotionAttachmentsNode alloc];
  BYTE6(v28) = a12;
  BYTE5(v28) = a15;
  BYTE4(v28) = a14;
  LODWORD(v28) = [a5 priority];
  *&v23 = a9;
  v24 = [BWMotionAttachmentsNode initWithSensorIDDictionaryByPortType:v22 cameraInfoByPortType:"initWithSensorIDDictionaryByPortType:cameraInfoByPortType:tuningParameters:activePortTypes:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxSupportedFrameRate:motionAttachmentsMode:motionAttachmentsSource:motionCallbackThreadPriority:provideSourceVideoWithMotionAttachmentsOutput:provideOfflineVISMotionDataOutput:inputFormatIsProResRaw:errorOut:" tuningParameters:a7 activePortTypes:a8 horizontalSensorBinningFactor:v20 verticalSensorBinningFactor:a10 maxSupportedFrameRate:a3 motionAttachmentsMode:a4 motionAttachmentsSource:v23 motionCallbackThreadPriority:__PAIR64__(a6 provideSourceVideoWithMotionAttachmentsOutput:v21) provideOfflineVISMotionDataOutput:v28 inputFormatIsProResRaw:&v34 errorOut:?];
  if (v34)
  {
    FigCaptureBuildMotionAttachmentsNode_cold_1();
    a2 = 0;
LABEL_15:
    v25 = a16;
    goto LABEL_11;
  }

  if (([a1 addNode:v24 error:&v35] & 1) == 0)
  {
    FigCaptureBuildMotionAttachmentsNode_cold_2();
    goto LABEL_15;
  }

  if (([objc_msgSend(a1 "graph")] & 1) == 0)
  {
    FigCaptureBuildMotionAttachmentsNode_cold_3();
    goto LABEL_15;
  }

  v25 = a16;
  if (a14)
  {
    v26 = [(BWMotionAttachmentsNode *)v24 sourceVideoWithMotionAttachmentsOutput];
  }

  else
  {
    v26 = [(BWMotionAttachmentsNode *)v24 offlineVISMotionDataOutput];
  }

  a2 = v26;
LABEL_11:
  *v25 = v34;
  return a2;
}

uint64_t FigCaptureConfigureVideoDataConverterRotatorNode(void *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t LossyCompressionLevel, int a8)
{
  v8 = a3;
  v11 = HIDWORD(a3);
  if (a2)
  {
    v28 = HIDWORD(a3);
    v14 = &unk_1F2249888;
    if (a8 != 6)
    {
      v14 = 0;
    }

    v15 = [a2 transform];
    v29 = v16;
    v17 = +[BWVideoFormat colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:supportedColorSpaces:](BWVideoFormat, "colorSpacePropertiesForSourceThatSupportsWideColor:sourceColorSpace:sourcePixelFormat:sourceDimensions:requestedPixelFormat:supportedColorSpaces:", a5, [objc_msgSend(a2 "sourceConfiguration")], objc_msgSend(objc_msgSend(objc_msgSend(a2, "sourceConfiguration"), "requiredFormat"), "format"), objc_msgSend(objc_msgSend(objc_msgSend(a2, "sourceConfiguration"), "requiredFormat"), "dimensions"), objc_msgSend(a2, "outputFormat"), v26);
    [a1 setOutputPixelFormat:objc_msgSend(a2, "outputFormat")];
    if (FigCapturePixelFormatGetLossyCompressionLevel([a2 outputFormat]) >= LossyCompressionLevel)
    {
      LossyCompressionLevel = FigCapturePixelFormatGetLossyCompressionLevel([a2 outputFormat]);
    }

    [a1 setMaxLossyCompressionLevel:LossyCompressionLevel];
    if (a6)
    {
      v18 = 6;
    }

    else
    {
      v18 = v17;
    }

    [a1 setOutputColorSpaceProperties:v18];
    LODWORD(v11) = v28;
    v19 = v29;
  }

  else
  {
    v15 = 0;
    v19 = 0;
  }

  v20 = FigCaptureNormalizeAngle(HIDWORD(v15) - v11);
  [a1 setRotationDegrees:v20];
  if ((v8 & 1) == 0)
  {
    v22 = v15 & 1;
    v23 = HIDWORD(v15);
LABEL_16:
    v21 = FigCaptureTransformFlipAppliedBeforeRotationToAfter(v22, v23);
    goto LABEL_17;
  }

  if ((v15 & 1) == 0)
  {
    v22 = FigCaptureTransformFlipAppliedBeforeRotationToAfter(1, v11);
    LODWORD(v23) = v20;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_17:
  [a1 setFlipHorizontal:v21 == 1];
  [a1 setFlipVertical:v21 == 2];
  if ([a2 deviceOrientationCorrectionEnabled] && (objc_msgSend(objc_msgSend(a2, "sourceConfiguration"), "cinematicFramingEnabled") & 1) == 0)
  {
    v24 = [objc_msgSend(a2 "sourceConfiguration")] ^ 1;
  }

  else
  {
    v24 = 0;
  }

  [a1 setDeviceOrientationCorrectionEnabled:v24];
  [a1 setCropMode:1];
  [a1 setOutputWidth:v19];

  return [a1 setOutputHeight:v19 >> 32];
}

uint64_t __FigCaptureBuildSceneClassifierPipeline_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];

  return [v1 tearDownInferenceEngine];
}

uint64_t __FigCaptureBuildSceneClassifierPipeline_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) referencedObject];

  return [v3 setInferencesToSkip:a2];
}

uint64_t FigMetadataItemConnectionConfigurationRequiresObjectDetection(void *a1)
{
  Identifiers = CMMetadataFormatDescriptionGetIdentifiers([a1 formatDescription]);
  if (([(__CFArray *)Identifiers containsObject:*MEMORY[0x1E6960388]]& 1) != 0 || ([(__CFArray *)Identifiers containsObject:*MEMORY[0x1E6960390]]& 1) != 0 || ([(__CFArray *)Identifiers containsObject:@"mdta/com.apple.quicktime.detected-cat-head"]& 1) != 0 || ([(__CFArray *)Identifiers containsObject:*MEMORY[0x1E6960368]]& 1) != 0 || ([(__CFArray *)Identifiers containsObject:@"mdta/com.apple.quicktime.detected-dog-head"]& 1) != 0 || ([(__CFArray *)Identifiers containsObject:*MEMORY[0x1E6960378]]& 1) != 0)
  {
    return 1;
  }

  v3 = *MEMORY[0x1E6960398];

  return [(__CFArray *)Identifiers containsObject:v3];
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresOfflineVideoStabilizationMotionData(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *MEMORY[0x1E69629D8];

  return [v1 containsObject:v2];
}

uint64_t FigCaptureMetadataObjectConfigurationRequiresSpatialAudioMix(void *a1)
{
  v1 = [a1 metadataIdentifiers];
  v2 = *MEMORY[0x1E69603C0];

  return [v1 containsObject:v2];
}

uint64_t FigCaptureSpatialAudioMixMetadataRequiresFOAAudioOutput(void *a1)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 parsedMetadataSinkConfigurations];
  result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v9;
    v5 = *MEMORY[0x1E69603C0];
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v8 + 1) + 8 * v6) "metadataObjectConnectionConfiguration")])
        {
          return 1;
        }

        ++v6;
      }

      while (v3 != v6);
      result = [v1 countByEnumeratingWithState:&v8 objects:v7 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *FigCaptureConnectionConfigurationWithSourceType(void *a1, int a2)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(a1);
    }

    v8 = *(*(&v11 + 1) + 8 * v7);
    if ([objc_msgSend(v8 "sourceConfiguration")] == a2)
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

uint64_t __BWInferenceSmartCameraCurrentVersion_block_invoke()
{
  v0 = [BWEspressoInferenceAdapter allowE5ForInferenceType:101];
  result = [BWEspressoInferenceAdapter findAvailableVersion:&unk_1F22498B8 defaultOverrideKey:@"smart_camera_pipeline_version" versionLocator:BWInferenceSmartCameraNetworkForVersion e5Bundle:v0];
  BWInferenceSmartCameraCurrentVersion_version = result;
  word_1ED844BC4 = WORD2(result);
  return result;
}

uint64_t lnrpc_formatFromInputFormatsByResolutionFlavor(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a8)
  {
    if (!a7)
    {
      if ((a2 & 1) != 0 || a3)
      {
        v11 = [a1 objectForKeyedSubscript:{&unk_1F2246480, a4, a5, a6}];
        if ([v11 count] && objc_msgSend(v11, "count") != 1)
        {
          lnrpc_formatFromInputFormatsByResolutionFlavor_cold_5();
        }

        else
        {
          v12 = [v11 firstObject];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v13 = [a1 objectForKeyedSubscript:&unk_1F2246498];
          v14 = [v13 countByEnumeratingWithState:&v25 objects:v24 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v26;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v25 + 1) + 8 * i);
                v19 = [v18 width];
                v20 = [v12 width];
                if (a2)
                {
                  if (v19 == v20)
                  {
                    v21 = [v18 height];
                    if (v21 == [v12 height])
                    {
                      return v18;
                    }
                  }
                }

                else
                {
                  if (v19 != v20)
                  {
                    return v18;
                  }

                  v22 = [v18 height];
                  if (v22 != [v12 height])
                  {
                    return v18;
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v25 objects:v24 count:16];
              v18 = 0;
            }

            while (v15);
            return v18;
          }
        }
      }

      return 0;
    }

    v10 = [a1 objectForKeyedSubscript:{&unk_1F2246468, a4, a5, a6}];
    if ([v10 count] && objc_msgSend(v10, "count") != 1)
    {
      lnrpc_formatFromInputFormatsByResolutionFlavor_cold_6();
      return 0;
    }
  }

  else if (a2)
  {
    v10 = [a1 objectForKeyedSubscript:{&unk_1F2246480, a4, a5, a6, a7}];
    if ([v10 count] && objc_msgSend(v10, "count") != 1)
    {
      lnrpc_formatFromInputFormatsByResolutionFlavor_cold_4();
      return 0;
    }
  }

  else if (a4)
  {
    v10 = [a1 objectForKeyedSubscript:{&unk_1F22464B0, a4, a5, a6, a7}];
    if ([v10 count] && objc_msgSend(v10, "count") != 1)
    {
      lnrpc_formatFromInputFormatsByResolutionFlavor_cold_3();
      return 0;
    }
  }

  else if (a5)
  {
    v10 = [a1 objectForKeyedSubscript:&unk_1F22464C8];
    if ([v10 count] && objc_msgSend(v10, "count") != 1)
    {
      lnrpc_formatFromInputFormatsByResolutionFlavor_cold_2();
      return 0;
    }
  }

  else
  {
    if (!a6)
    {
      return 0;
    }

    v10 = [a1 objectForKeyedSubscript:&unk_1F22464E0];
    if ([v10 count] && objc_msgSend(v10, "count") != 1)
    {
      lnrpc_formatFromInputFormatsByResolutionFlavor_cold_1();
      return 0;
    }
  }

  return [v10 firstObject];
}

void sub_1ACBE3C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

void cmmsn_deviceMotionCallback(__int128 *a1, uint64_t a2)
{
  if (a1)
  {
    v12[0] = 0;
    v12[1] = v12;
    v2 = *(a1 + 11);
    v12[2] = 0x2020000000;
    v12[3] = v2;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x4010000000;
    v9[3] = &unk_1AD138BA7;
    v3 = a1[1];
    v10 = *a1;
    v11 = v3;
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x3010000000;
    v4 = *(a1 + 4);
    v7[3] = &unk_1AD138BA7;
    v7[4] = v4;
    v8 = *(a1 + 10);
    v5 = *(a2 + 184);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __cmmsn_deviceMotionCallback_block_invoke;
    v6[3] = &unk_1E799BB38;
    v6[4] = a2;
    v6[5] = v12;
    v6[6] = v9;
    v6[7] = v7;
    dispatch_async(v5, v6);
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(v9, 8);
    _Block_object_dispose(v12, 8);
  }
}

void __cmmsn_deviceMotionCallback_block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 144) == 1)
  {
    v2 = *(v1 + 152) + 60 * *(v1 + 160);
    *(v2 + 8) = *(*(result[5] + 8) + 24);
    *(v2 + 16) = *(*(result[6] + 8) + 32);
    *(v2 + 24) = *(*(result[6] + 8) + 40);
    *(v2 + 32) = *(*(result[6] + 8) + 48);
    *(v2 + 40) = *(*(result[6] + 8) + 56);
    *(v2 + 48) = *(*(result[7] + 8) + 32);
    *(v2 + 52) = *(*(result[7] + 8) + 36);
    *(v2 + 56) = *(*(result[7] + 8) + 40);
    ++*(result[4] + 160);
    v3 = result[4];
    if (*(v3 + 160) >= *(v3 + 140))
    {
      [(BWCoreMotionMetadataSourceNode *)v3 _emitMetadataSampleBuffer];
    }
  }
}

uint64_t captureDeferredPhotoProcessor_createSerializedNotification(int a1, CFDictionaryRef theDict, const char *a3, CFMutableDictionaryRef *a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (a4)
  {
    Count = CFDictionaryGetCount(theDict);
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], Count, theDict);
    v10 = cdpp_surfaceSerializedPayloadKeysByPayloadKey();
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __captureDeferredPhotoProcessor_createSerializedNotification_block_invoke;
    v17 = &unk_1E799BB60;
    v20 = theDict;
    v21 = MutableCopy;
    v18 = a3;
    v19 = &v22;
    [v10 enumerateKeysAndObjectsUsingBlock:&v14];
    *a4 = MutableCopy;
    v11 = *(v23 + 6);
  }

  else
  {
    v13 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v4, v14, v15, v16, v17, v18, v19);
    v11 = 4294954516;
    *(v23 + 6) = -12780;
  }

  _Block_object_dispose(&v22, 8);
  return v11;
}

uint64_t cdpp_surfaceSerializedPayloadKeysByPayloadKey()
{
  v2[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:{kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_Surface_Serialized, @"Surface"}];
  v1[1] = @"PreviewSurface";
  v2[1] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_PreviewSurface_Serialized];
  v1[2] = @"ThumbnailSurface";
  v2[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_ThumbnailSurface_Serialized];
  v1[3] = @"PhotoLibraryThumbnails";
  v2[3] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_PhotoLibraryThumbnails_Serialized];
  v1[4] = @"DepthDataSurface";
  v2[4] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_DepthDataSurface_Serialized];
  v1[5] = @"PortraitEffectsMatteSurface";
  v2[5] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_PortraitEffectsMatteSurface_Serialized];
  v1[6] = @"HairSegmentationMatteSurface";
  v2[6] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_HairSegmentationMatteSurface_Serialized];
  v1[7] = @"SkinSegmentationMatteSurface";
  v2[7] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_SkinSegmentationMatteSurface_Serialized];
  v1[8] = @"TeethSegmentationMatteSurface";
  v2[8] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_TeethSegmentationMatteSurface_Serialized];
  v1[9] = @"GlassesSegmentationMatteSurface";
  v2[9] = [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_GlassesSegmentationMatteSurface_Serialized];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:10];
}

void __captureDeferredPhotoProcessor_createSerializedNotification_block_invoke(uint64_t a1, const void *a2, void *a3, _BYTE *a4)
{
  v8 = FigCFEqual();
  Value = CFDictionaryGetValue(*(a1 + 48), a2);
  v10 = Value;
  if (v8)
  {
    v11 = xpc_array_create(0, 0);
    CFDictionaryRemoveValue(*(a1 + 56), a2);
    if (v11)
    {
      v12 = 0;
      if (!v10)
      {
        goto LABEL_5;
      }

LABEL_4:
      for (i = CFArrayGetCount(v10); v12 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
        XPCObject = IOSurfaceCreateXPCObject(ValueAtIndex);
        if (XPCObject)
        {
          xpc_array_append_value(v11, XPCObject);
          FigXPCRelease();
        }

        ++v12;
        if (v10)
        {
          goto LABEL_4;
        }

LABEL_5:
        ;
      }

      xpc_dictionary_set_value(*(a1 + 32), [a3 UTF8String], v11);

      FigXPCRelease();
    }
  }

  else if (Value)
  {
    v16 = CFGetTypeID(Value);
    if (v16 == IOSurfaceGetTypeID())
    {
      CFDictionaryRemoveValue(*(a1 + 56), a2);
      v17 = IOSurfaceCreateXPCObject(v10);
      if (v17)
      {
        v18 = v17;
        xpc_dictionary_set_value(*(a1 + 32), [a3 UTF8String], v17);

        xpc_release(v18);
      }

      else
      {
        *(*(*(a1 + 40) + 8) + 24) = -12786;
        *a4 = 1;
      }
    }
  }
}

uint64_t captureDeferredPhotoProcessor_createDeserializedNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (a4)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v8 = cdpp_surfaceSerializedPayloadKeysByPayloadKey();
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __captureDeferredPhotoProcessor_createDeserializedNotification_block_invoke;
      v15 = &unk_1E799BB88;
      v16 = a2;
      v17 = &v19;
      v18 = MutableCopy;
      [v8 enumerateKeysAndObjectsUsingBlock:&v12];
      v9 = *(v20 + 6);
    }

    else
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v11, v12, v13, v14, v15, v16);
      v9 = 4294954510;
      *(v20 + 6) = -12786;
    }

    *a4 = MutableCopy;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v11, v12, v13, v14, v15, v16);
    v9 = 4294954516;
    *(v20 + 6) = -12780;
  }

  _Block_object_dispose(&v19, 8);
  return v9;
}

void __captureDeferredPhotoProcessor_createDeserializedNotification_block_invoke(uint64_t a1, const void *a2, void *a3, _BYTE *a4)
{
  [MEMORY[0x1E696AEC0] stringWithUTF8String:kFigCaptureDeferredPhotoProcessorNotificationPayloadKey_PhotoLibraryThumbnails_Serialized];
  isEqualToString = objc_msgSend_isEqualToString_(a3);
  value = xpc_dictionary_get_value(*(a1 + 32), [a3 UTF8String]);
  v10 = value;
  if (!isEqualToString)
  {
    if (!value || ![a3 hasSuffix:@"Surface_Serialized"])
    {
      return;
    }

    v18 = IOSurfaceLookupFromXPCObject(v10);
    if (!v18)
    {
      *(*(*(a1 + 40) + 8) + 24) = -12786;
      *a4 = 1;
      return;
    }

    v19 = v18;
    CFDictionarySetValue(*(a1 + 48), a2, v18);
    v17 = v19;
    goto LABEL_14;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (v10)
  {
    v12 = Mutable;
    if (xpc_array_get_count(v10))
    {
      v13 = 0;
      do
      {
        v14 = xpc_array_get_value(v10, v13);
        v15 = IOSurfaceLookupFromXPCObject(v14);
        if (v15)
        {
          v16 = v15;
          CFArrayAppendValue(v12, v15);
          CFRelease(v16);
        }

        ++v13;
      }

      while (v13 < xpc_array_get_count(v10));
    }

    CFDictionarySetValue(*(a1 + 48), a2, v12);
    if (v12)
    {
      v17 = v12;
LABEL_14:

      CFRelease(v17);
    }
  }
}

uint64_t FigCaptureDeferredPhotoProcessorSetXPCConnection(uint64_t a1, void *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v6 = DerivedStorage;
    xpc_retain(a2);
    *(v6 + 10) = a2;
    *(v6 + 11) = a3;
  }

  return 0;
}

uint64_t FigCaptureDeferredPhotoProcessorCopyProcessorForPID(int a1, _OWORD *a2)
{
  if (FigCaptureDeferredPhotoProcessorCopyProcessorForPID_onceToken != -1)
  {
    FigCaptureDeferredPhotoProcessorCopyProcessorForPID_cold_1();
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = a2[1];
  *token.val = *a2;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = SecTaskCopySigningIdentifier(v6, 0);
  v9 = FigCaptureClientHasEntitlementWithSecTask(v7, @"com.apple.private.avfoundation.capture.deferred-photo-processor.allow");
  if (v9)
  {
    v36 = 0;
    if (!a1)
    {
      FigCaptureDeferredPhotoProcessorCopyProcessorForPID_cold_4();
      v20 = 0;
LABEL_17:
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v22 = *(DerivedStorage + 24);
      if (!v22)
      {
        v22 = v8;
        *(DerivedStorage + 24) = v22;
      }

      if (objc_msgSend_isEqualToString_(v22, p_out_token, v25))
      {

        *(DerivedStorage + 24) = @"com.apple.camera";
      }

      goto LABEL_21;
    }

    if (cdpp_initializeStatics_onceToken != -1)
    {
      FigCaptureDeferredPhotoProcessorCopyProcessorForPID_cold_2();
    }

    FigCaptureDeferredPhotoProcessorGetClassID(v9, v10);
    v11 = CMDerivedObjectCreate();
    if (!v11)
    {
      v12 = CMBaseObjectGetDerivedStorage();
      *(v12 + 8) = FigDispatchQueueCreateWithPriority();
      *(v12 + 16) = FigDispatchQueueCreateWithPriority();
      *(v12 + 32) = a1;
      *(v12 + 1) = MGGetBoolAnswer();
      if (dword_1ED843F90)
      {
        v35 = 0;
        v34 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v14 = v35;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v34))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v16 = *(v12 + 32);
          out_token = 136315650;
          v27 = "FigCaptureDeferredPhotoProcessorCreate";
          v28 = 2048;
          v29 = v36;
          v30 = 1024;
          v31 = v16;
          v25 = 28;
          p_out_token = &out_token;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(v12 + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = [BWCaptureDeferredPhotoProcessor alloc];
      *(v12 + 96) = [(BWCaptureDeferredPhotoProcessor *)v17 initWithFigCaptureDeferredPhotoProcessor:v36];
      *v12 = 1;
      out_token = 0;
      v18 = [FigWeakReference weakReferenceToObject:v36];
      v19 = *(v12 + 16);
      *token.val = MEMORY[0x1E69E9820];
      *&token.val[2] = 3221225472;
      *&token.val[4] = __FigCaptureDeferredPhotoProcessorCreate_block_invoke;
      *&token.val[6] = &unk_1E7991270;
      v33 = v18;
      notify_register_dispatch(kFigCaptureDeferredNotification_deferredmediadImmediateTermination, &out_token, v19, &token);
      v20 = v36;
      goto LABEL_17;
    }

    FigCaptureDeferredPhotoProcessorCopyProcessorForPID_cold_3(v11, &v36, &out_token, &token);
  }

  v20 = 0;
LABEL_21:

  CFRelease(v7);
  return v20;
}

FigCaptureThermalMonitor *__FigCaptureDeferredPhotoProcessorCopyProcessorForPID_block_invoke()
{
  result = objc_alloc_init(FigCaptureThermalMonitor);
  _MergedGlobals_11 = result;
  return result;
}

void captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    v6 = *(v5 + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync_block_invoke;
    v7[3] = &unk_1E79903B8;
    v7[4] = a2;
    v7[5] = a1;
    dispatch_async(v6, v7);
  }

  else
  {
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync_cold_1(DerivedStorage);
  }
}

void captureDeferredPhotoProcessor_cleanupForCurrentProcessingRequest(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureDeferredPhotoProcessor_cleanupForCurrentProcessingRequest_cold_1();
  }

  *(DerivedStorage + 48) = 0;
  if (dword_1ED843F90)
  {
    v21 = 0;
    v20 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[BWDeferredTransactionBroker closeTransaction:v8], "closeTransaction:", 2];
  if ([*(DerivedStorage + 40) count] && *DerivedStorage)
  {
    captureDeferredPhotoProcessor_workloop(a1);
  }

  else
  {
    [+[FigCaptureDeferredProcessingEngine sharedProcessingEngine](FigCaptureDeferredProcessingEngine "sharedProcessingEngine")];
    dispatch_sync(*(DerivedStorage + 8), &__block_literal_global_222);
    if (dword_1ED843F90)
    {
      v21 = 0;
      v20 = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v5 = v21;
      if (os_log_type_enabled(v4, v20))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = *(DerivedStorage + 32);
        v12 = 136315906;
        v13 = "captureDeferredPhotoProcessor_cleanupForCurrentProcessingRequest";
        v14 = 2048;
        v15 = a1;
        v16 = 1024;
        v17 = v7;
        v18 = 1024;
        v19 = v7;
        LODWORD(v11) = 34;
        v9 = &v12;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [+[BWDeferredTransactionBroker closeTransaction:v9], "closeTransaction:", 2];
  }
}

CFTypeRef fcdpp_copyAttachedMediaSurfaceDataFromSampleBufferIntoNotificationPayload(void *a1, uint64_t a2, const __CFString *a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  AttachedMedia = BWSampleBufferGetAttachedMedia(a1, a2);
  v14 = AttachedMedia;
  if (AttachedMedia)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
    if (ImageBuffer)
    {
      IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
      if (IOSurface)
      {
        [a5 setObject:IOSurface forKeyedSubscript:a6];
      }
    }
  }

  if (a4)
  {
    v17 = v14;
  }

  else
  {
    v17 = a1;
  }

  result = CMGetAttachment(v17, a3, 0);
  if (result)
  {

    return [a5 setObject:result forKeyedSubscript:a7];
  }

  return result;
}

void __FigCaptureDeferredPhotoProcessorCreate_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) retainReferencedObject];
  captureDeferredPhotoProcessor_terminateImmediatelyDueToError(v1, 4294950475);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t __cdpp_initializeStatics_block_invoke(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t captureDeferredPhotoProcessor_Invalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED843F90)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    *DerivedStorage = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __captureDeferredPhotoProcessor_Invalidate_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = DerivedStorage;
    v5[5] = a1;
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v5);
  }

  return 0;
}

void captureDeferredPhotoProcessor_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED843F90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  captureDeferredPhotoProcessor_Invalidate(a1);
  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 8) = 0;
  }

  v5 = *(DerivedStorage + 16);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 16) = 0;
  }
}

id captureDeferredPhotoProcessor_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v5 = "";
  }

  else
  {
    v5 = " (never set/invalidated)";
  }

  [v3 appendFormat:@"<FigCaptureDeferredPhotoProcessor %p retainCount: %ld%s allocator: %p>", a1, v4, v5, CFGetAllocator(a1)];
  return v3;
}

uint64_t captureDeferredPhotoProcessor_CopyProperty(const void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (a2)
    {
      v16 = DerivedStorage;
      if (FigCFEqual())
      {
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = 0;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __captureDeferredPhotoProcessor_CopyProperty_block_invoke;
        v23[3] = &unk_1E798FC10;
        v23[4] = &v24;
        v23[5] = v16;
        captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v23);
        if (*(v25 + 24))
        {
          v17 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v17 = MEMORY[0x1E695E4C0];
        }

        v18 = CFRetain(*v17);
      }

      else
      {
        if (!FigCFEqual())
        {
          return 4294954509;
        }

        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v27 = 0;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __captureDeferredPhotoProcessor_CopyProperty_block_invoke_2;
        v22[3] = &unk_1E798FC38;
        v22[4] = &v24;
        captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v22);
        if (*(v25 + 24))
        {
          v21 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v21 = MEMORY[0x1E695E4C0];
        }

        v18 = CFRetain(*v21);
      }

      *a4 = v18;
      _Block_object_dispose(&v24, 8);
      return 0;
    }

    else
    {
      captureDeferredPhotoProcessor_CopyProperty_cold_1(&v24);
      return v24;
    }
  }

  else
  {
    v19 = qword_1ED843F88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredPhotoProcessor >>>>", 0x48D, v9, v14, v15, a9);
  }
}

uint64_t captureDeferredPhotoProcessor_SetProperty(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    if (a2)
    {
      v16 = DerivedStorage;
      if (FigCFEqual())
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __captureDeferredPhotoProcessor_SetProperty_block_invoke;
        v19[3] = &__block_descriptor_56_e5_v8__0l;
        v19[4] = a3;
        v19[5] = v16;
        v19[6] = a1;
        captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v19);
        return 0;
      }

      else
      {
        return 4294954509;
      }
    }

    else
    {
      captureDeferredPhotoProcessor_SetProperty_cold_1(&v20);
      return v20;
    }
  }

  else
  {
    v18 = qword_1ED843F88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredPhotoProcessor >>>>", 0x4B5, v9, v14, v15, a9);
  }
}

void captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    if (a1)
    {
      CFRetain(a1);
    }

    v6 = *(v5 + 16);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync_block_invoke;
    v7[3] = &unk_1E79903B8;
    v7[4] = a2;
    v7[5] = a1;
    dispatch_sync(v6, v7);
  }

  else
  {
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync_cold_1(DerivedStorage);
  }
}

void __captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void captureDeferredPhotoProcessor_workloop(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    captureDeferredPhotoProcessor_workloop_cold_1();
  }

  if ((*(DerivedStorage + 56) & 1) != 0 || *(DerivedStorage + 48) || ![*(DerivedStorage + 40) count])
  {
    v3 = 0;
    goto LABEL_7;
  }

  *(DerivedStorage + 48) = [*(DerivedStorage + 40) firstObject];
  [*(DerivedStorage + 40) removeObjectAtIndex:0];
  if (*(DerivedStorage + 1) && captureDeferredPhotoProcessor_workloop_waitForShaderCompilationToken != -1)
  {
    captureDeferredPhotoProcessor_workloop_cold_2();
  }

  v4 = [*(DerivedStorage + 48) captureRequestIdentifier];
  v5 = [*(DerivedStorage + 48) photoIdentifier];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v4, v5];
  if (dword_1ED843F90)
  {
    v35[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithObjects:{v5, 0, v23}];
  v35[0] = 0;
  v8 = [[FigCaptureDeferredProcessingJob alloc] initWithProcessorRequest:*(DerivedStorage + 48) delegate:*(DerivedStorage + 96) error:v35];
  v3 = v8;
  if (v8)
  {
    [*(DerivedStorage + 48) setContainer:{-[FigCaptureDeferredProcessingJob container](v8, "container")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [-[FigCaptureDeferredProcessingJob container](v3 "container")];
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          if (([v7 containsObject:{objc_msgSend(v14, "photoIdentifier")}] & 1) == 0)
          {
            [v7 addObject:{objc_msgSend(v14, "photoIdentifier")}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v30 count:16];
      }

      while (v11);
    }
  }

  v28[0] = @"CaptureRequestIdentifier";
  v28[1] = @"PhotoIdentifiers";
  v29[0] = v4;
  v29[1] = v7;
  captureDeferredPhotoProcessor_sendXPCNotificationWithPayload(a1, @"WillBeginProcessingPhotoProxy", [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2]);
  if (!*(DerivedStorage + 1))
  {
    v16 = *(DerivedStorage + 96);
    v17 = *(DerivedStorage + 48);
    v18 = 4294950476;
    [v16 request:v17 failedWithError:4294950476];
LABEL_34:
    cdpp_reportAnalytics(v18);
    goto LABEL_7;
  }

  if (v35[0])
  {
    if ([FigCaptureDeferredProcessingJob isPotentiallyRecoverableError:?])
    {
      if (dword_1ED843F90)
      {
        *type = 0;
        v26 = OS_LOG_TYPE_DEFAULT;
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v21 = 4294950471;
      v35[0] = -16825;
    }

    else
    {
      v21 = v35[0];
    }

    [*(DerivedStorage + 96) request:*(DerivedStorage + 48) failedWithError:{v21, v22, v24}];
    v18 = v35[0];
    goto LABEL_34;
  }

  if (v3)
  {
    v19 = [(FigCaptureDeferredPhotoProcessorRequest *)[(FigCaptureDeferredProcessingJob *)v3 processorRequest] qosClass];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __captureDeferredPhotoProcessor_workloop_block_invoke_178;
    block[3] = &unk_1E798F870;
    block[4] = v3;
    v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v19, 0, block);
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync(a1, v20);
  }

LABEL_7:
}

uint64_t cdpp_reportAnalytics(uint64_t a1)
{
  v2 = objc_alloc_init(BWDeferredProcessingAnalyticsPayload);
  [(BWDeferredProcessingAnalyticsPayload *)v2 setError:a1];
  if (a1 == -16140)
  {
    [(BWDeferredProcessingAnalyticsPayload *)v2 setProcessingResult:0x1F2197F30];
    [(BWDeferredProcessingAnalyticsPayload *)v2 setContainerProcessingCount:0xFFFFFFFFLL];
  }

  else if (![FigCaptureDeferredProcessingJob isPotentiallyRecoverableError:a1])
  {
    [(BWDeferredProcessingAnalyticsPayload *)v2 setProcessingResult:0x1F2197F10];
  }

  v3 = +[BWCoreAnalyticsReporter sharedInstance];

  return [(BWCoreAnalyticsReporter *)v3 sendEvent:v2];
}

uint64_t __captureDeferredPhotoProcessor_workloop_block_invoke_178(uint64_t a1)
{
  v2 = +[FigCaptureDeferredProcessingEngine sharedProcessingEngine];
  v3 = *(a1 + 32);

  return [v2 executeJob:v3];
}

uint64_t captureDeferredPhotoProcessor_ProcessPhoto(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED843F90)
  {
    v23 = 0;
    v22 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*DerivedStorage)
  {
    v17 = [[FigCaptureDeferredPhotoProcessorRequest alloc] initWithApplicationID:*(DerivedStorage + 24) captureRequstIdentifier:a2 photoIdentifier:a3 clientPID:*(DerivedStorage + 32) message:a6 qosClass:qos_class_self() parent:0];
    [(FigCaptureDeferredPhotoProcessorRequest *)v17 setPhotoLibraryThumbnailDimensions:a5];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __captureDeferredPhotoProcessor_ProcessPhoto_block_invoke;
    v21[3] = &unk_1E799BBD8;
    v21[6] = DerivedStorage;
    v21[7] = a1;
    v21[8] = a2;
    v21[9] = a3;
    v21[4] = v17;
    v21[5] = &v24;
    v21[10] = a4;
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v21);
    if (*(v25 + 6) == -16829)
    {
      *(v25 + 6) = 0;
    }

    v18 = *(v25 + 6);
  }

  else
  {
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843F88, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredPhotoProcessor >>>>", 0x314, v6, v13, v14, v20);
  }

  _Block_object_dispose(&v24, 8);
  return v18;
}

uint64_t captureDeferredPhotoProcessor_CancelPhotoProcessing(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v10 = cdpp_validateIdentifiersAreUUIDs(a2, a3);
    *(v24 + 6) = v10;
    if (v10)
    {
      v14 = v10;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v3, v15, v16, v17, v18, v19, v20);
    }

    else
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __captureDeferredPhotoProcessor_CancelPhotoProcessing_block_invoke;
      v19 = &unk_1E7998B00;
      v21 = DerivedStorage;
      v22 = a3;
      v20 = &v23;
      captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, &v16);
    }

    v11 = *(v24 + 6);
  }

  else
  {
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843F88, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredPhotoProcessor >>>>", 0x3A7, v3, v7, v8, v13);
  }

  _Block_object_dispose(&v23, 8);
  return v11;
}

void sub_1ACBE73AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t captureDeferredPhotoProcessor_Prewarm(const void *a1, uint64_t a2, uint64_t a3)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  kdebug_trace();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED843F90)
  {
    v27 = 0;
    v26 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED843F90)
    {
      v27 = 0;
      v26 = OS_LOG_TYPE_DEFAULT;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v12 = v27;
      if (os_log_type_enabled(v11, v26))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = *(DerivedStorage + 32);
        v18 = 136315906;
        v19 = "captureDeferredPhotoProcessor_Prewarm";
        v20 = 2048;
        v21 = a1;
        v22 = 1024;
        v23 = v14;
        v24 = 2114;
        v25 = a2;
        v16 = &v18;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (!*DerivedStorage)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843F88, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredPhotoProcessor >>>>", 0x3D5, v3, v7, v8, v16);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __captureDeferredPhotoProcessor_Prewarm_block_invoke;
  v17[3] = &unk_1E7998380;
  v17[6] = DerivedStorage;
  v17[7] = a1;
  v17[4] = a2;
  v17[5] = a3;
  captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v17);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  kdebug_trace();
  return 0;
}

uint64_t captureDeferredPhotoProcessor_CancelAllPrewarming(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1ED843F90)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!*DerivedStorage)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED843F88, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredPhotoProcessor >>>>", 0x423, v1, v3, v4, v8);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __captureDeferredPhotoProcessor_CancelAllPrewarming_block_invoke;
  v9[3] = &__block_descriptor_48_e5_v8__0l;
  v9[4] = DerivedStorage;
  v9[5] = a1;
  captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, v9);
  return 0;
}

uint64_t captureDeferredPhotoProcessor_DeletePersistentStorageForPhoto(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v15 = DerivedStorage;
    v16 = cdpp_validateIdentifiersAreUUIDs(a2, a3);
    if (v16)
    {
      v21 = v16;
      captureDeferredPhotoProcessor_DeletePersistentStorageForPhoto_cold_1();
      return v21;
    }

    else
    {
      v17 = +[BWDeferredProcessingContainerManager sharedInstance];
      v18 = *(v15 + 3);

      return [(BWDeferredProcessingContainerManager *)v17 deleteContainerForApplicationID:v18 captureRequestIdentifier:a2];
    }
  }

  else
  {
    v20 = qword_1ED843F88;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredPhotoProcessor >>>>", 0x444, v9, v13, v14, a9);
  }
}

id captureDeferredPhotoProcessor_PrettyPrintContainerDescription(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (*DerivedStorage)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __captureDeferredPhotoProcessor_PrettyPrintContainerDescription_block_invoke;
    v12 = &unk_1E799BC20;
    v15 = DerivedStorage;
    v16 = a2;
    v13 = &v17;
    v14 = a1;
    captureDeferredPhotoProcessor_performBlockOnWorkerQueueSync(a1, &v9);
  }

  else
  {
    v8 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v2, v9, v10, v11, v12, v13, v14);
  }

  v6 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v6;
}

uint64_t cdpp_validateIdentifiersAreUUIDs(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a1];
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:a2];
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    if (v6)
    {
      return 0;
    }

    cdpp_validateIdentifiersAreUUIDs_cold_1();
  }

  else
  {
    cdpp_validateIdentifiersAreUUIDs_cold_2();
  }

  return 4294950470;
}

void __captureDeferredPhotoProcessor_performBlockOnWorkerQueueAsync_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1ACBEA5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1ACBEDFE0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x590], 8);
  _Block_object_dispose(&STACK[0x5B0], 8);
  _Block_object_dispose(&STACK[0x5D0], 8);
  _Block_object_dispose(&STACK[0x600], 8);
  _Block_object_dispose(&STACK[0x620], 8);
  _Block_object_dispose(&STACK[0x648], 8);
  _Block_object_dispose(&STACK[0x668], 8);
  _Block_object_dispose(&STACK[0x688], 8);
  _Block_object_dispose((v1 - 232), 8);
  _Unwind_Resume(a1);
}

uint64_t pen_clapDimensionsFromPixelBuffer(__CVBuffer *a1, unsigned int *a2)
{
  result = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965D70], 0);
  if (result)
  {
    result = CFAutorelease(result);
    if (result)
    {
      v4 = result;
      v5 = [result objectForKeyedSubscript:*MEMORY[0x1E6965D80]];
      v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6965D60]];
      if (v5)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        return 0;
      }

      else
      {
        v8 = v6;
        v9 = [v5 intValue];
        v10 = [v8 intValue];
        if (a2)
        {
          *a2 = v9;
          a2[1] = v10;
        }

        return 1;
      }
    }
  }

  return result;
}

void sub_1ACBF6C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void bwfcd_handleFigCaptureDeviceNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (a4)
    {
      if (a3)
      {
        if (([a2 invalidated] & 1) == 0)
        {
          if (dword_1ED844390)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (*off_1E7989FA0 == a3 || *off_1E7989F90 == a3 || *off_1E7989FB0 == a3 || *off_1E7989F98 == a3)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
          }
        }
      }

      else
      {
        bwfcd_handleFigCaptureDeviceNotification_cold_1(a1);
      }
    }

    else
    {
      bwfcd_handleFigCaptureDeviceNotification_cold_2(a1);
    }
  }

  else
  {
    bwfcd_handleFigCaptureDeviceNotification_cold_3(a1, 0, a3, a4, a5);
  }
}

void sub_1ACBFD0AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x210]);
  _Unwind_Resume(a1);
}

uint64_t getDKNotificationAgentClass()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x3052000000;
  v5 = __Block_byref_object_copy__40;
  v0 = getDKNotificationAgentClass_softClass;
  v6 = __Block_byref_object_dispose__40;
  v7 = getDKNotificationAgentClass_softClass;
  if (!getDKNotificationAgentClass_softClass)
  {
    DockKitCoreLibraryCore();
    v3[5] = objc_getClass("DKNotificationAgent");
    getDKNotificationAgentClass_softClass = v3[5];
    v0 = v3[5];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1ACBFD1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DockKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  DockKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getDKTrackingAgentClass_block_invoke(uint64_t a1)
{
  DockKitCoreLibraryCore();
  result = objc_getClass("DKTrackingAgent");
  *(*(*(a1 + 32) + 8) + 40) = result;
  getDKTrackingAgentClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getDKNotificationAgentClass_block_invoke(uint64_t a1)
{
  DockKitCoreLibraryCore();
  result = objc_getClass("DKNotificationAgent");
  *(*(*(a1 + 32) + 8) + 40) = result;
  getDKNotificationAgentClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getDKFocusObservationClass()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x3052000000;
  v5 = __Block_byref_object_copy__40;
  v0 = getDKFocusObservationClass_softClass;
  v6 = __Block_byref_object_dispose__40;
  v7 = getDKFocusObservationClass_softClass;
  if (!getDKFocusObservationClass_softClass)
  {
    DockKitCoreLibraryCore();
    v3[5] = objc_getClass("DKFocusObservation");
    getDKFocusObservationClass_softClass = v3[5];
    v0 = v3[5];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1ACBFD5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDKFocusObservationClass_block_invoke(uint64_t a1)
{
  DockKitCoreLibraryCore();
  result = objc_getClass("DKFocusObservation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  getDKFocusObservationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t FigSetupIOSurfaceAccelerator(uint64_t a1)
{
  v2 = *MEMORY[0x1E696CD60];
  v3 = IOServiceMatching("AppleM2ScalerCSCDriver");
  result = IOServiceGetMatchingService(v2, v3);
  if (result)
  {
    v5 = result;
    v6 = IORegistryEntrySearchCFProperty(result, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
    if (v6)
    {
      v7 = v6;
      Value = CFDictionaryGetValue(v6, @"IOSurfaceAcceleratorFilterHorizontalTapsCount");
      CFNumberGetValue(Value, kCFNumberSInt32Type, a1);
      v9 = CFDictionaryGetValue(v7, @"IOSurfaceAcceleratorFilterVerticalTapsCount");
      CFNumberGetValue(v9, kCFNumberSInt32Type, (a1 + 4));
      v10 = CFDictionaryGetValue(v7, @"IOSurfaceAcceleratorFilterHorizontalPhasesCount");
      CFNumberGetValue(v10, kCFNumberSInt32Type, (a1 + 8));
      v11 = CFDictionaryGetValue(v7, @"IOSurfaceAcceleratorFilterVerticalPhasesCount");
      CFNumberGetValue(v11, kCFNumberSInt32Type, (a1 + 12));
      v12 = CFDictionaryGetValue(v7, @"IOSurfaceAcceleratorFilterCoefficientsPrePointBits");
      CFNumberGetValue(v12, kCFNumberSInt32Type, (a1 + 16));
      v13 = CFDictionaryGetValue(v7, @"IOSurfaceAcceleratorFilterCoefficientsPostPointBits");
      CFNumberGetValue(v13, kCFNumberSInt32Type, (a1 + 20));
      CFRelease(v7);
    }

    return IOObjectRelease(v5);
  }

  return result;
}

uint64_t FigSetupIOSurfaceAcceleratorCustomFilter1to1(uint64_t a1, unsigned int *a2, float *a3, float *a4, float *a5, float *a6)
{
  v10 = a2[1];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[2];
  v14 = *a2;
  v15 = a2[3];
  v16 = malloc_type_calloc(1uLL, 4 * (2 * (v13 * v14 + v15 * v10)), 0x100004052888210uLL);
  if (!v16)
  {
    return 3758097085;
  }

  v17 = v16;
  if (v10)
  {
    v18 = (1 << v12);
    v19 = ~(-1 << (v12 + v11));
    v20 = 4 * v15;
    v21 = v10;
    v17 = v16;
    do
    {
      v22 = *a6++;
      *v17 = ((v22 * v18) + 0.5) & v19;
      v17 = (v17 + v20);
      --v21;
    }

    while (v21);
    v23 = v10;
    do
    {
      v24 = *a4++;
      *v17 = ((v24 * v18) + 0.5) & v19;
      v17 = (v17 + v20);
      --v23;
    }

    while (v23);
  }

  if (v14)
  {
    v25 = (1 << v12);
    v26 = ~(-1 << (v12 + v11));
    v27 = 4 * v13;
    v28 = v14;
    do
    {
      v29 = *a5++;
      *v17 = ((v29 * v25) + 0.5) & v26;
      v17 = (v17 + v27);
      --v28;
    }

    while (v28);
    v30 = v14;
    do
    {
      v31 = *a3++;
      *v17 = ((v31 * v25) + 0.5) & v26;
      v17 = (v17 + v27);
      --v30;
    }

    while (v30);
  }

  v32 = v16;
  v33 = IOSurfaceAcceleratorSetCustomFilter();
  free(v32);
  return v33;
}

_DWORD *multiBandNoiseReductionContextCreate(int a1, int a2, const __CFDictionary *a3)
{
  v6 = malloc_type_malloc(0x208uLL, 0x10E004008523159uLL);
  v7 = v6;
  if (v6 && (bzero(v6 + 1, 0x204uLL), *v7 = 1459126783, v7[16] = a2, *(v7 + 512) = CFDictionaryGetValue(a3, @"TMBNR_Fusion") == *MEMORY[0x1E695E4D0], v8 = *MEMORY[0x1E695E480], v9 = MEMORY[0x1E695E9D8], v10 = MEMORY[0x1E695E9E8], *(v7 + 58) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), Mutable = CFDictionaryCreateMutable(v8, 0, v9, v10), (*(v7 + 59) = Mutable) != 0))
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, *off_1E798A0C0);
      if (Value)
      {
        v13 = Value;
        v14 = CFGetTypeID(Value);
        if (v14 == CFDictionaryGetTypeID())
        {
          CFDictionaryApplyFunction(v13, get_noise_models_for_sensor_id, v7);
        }
      }

      v15 = CFDictionaryGetValue(a3, *off_1E798A0D8);
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        if (v17 == CFDictionaryGetTypeID())
        {
          CFDictionaryApplyFunction(v16, get_noise_models_for_sensor_id, v7);
        }
      }

      v18 = CFDictionaryGetValue(a3, *off_1E798A0E0);
      if (v18)
      {
        v19 = v18;
        v20 = CFGetTypeID(v18);
        if (v20 == CFDictionaryGetTypeID())
        {
          CFDictionaryApplyFunction(v19, get_noise_models_for_sensor_id, v7);
        }
      }
    }

    valuePtr = 0;
    *(v7 + 60) = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    valuePtr = 3;
    *(v7 + 61) = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    v21 = 1;
    valuePtr = 1;
    *(v7 + 62) = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    v22 = 2;
    valuePtr = 2;
    *(v7 + 63) = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
    v7[2] = 0;
    *(v7 + 2) = 0;
    if (a1 != 1)
    {
      if (a1 == 3)
      {
        v22 = -2;
      }

      else
      {
        v21 = a1 == 2;
        v22 = 0;
      }
    }

    *v33 = 0;
    if (a3)
    {
      v23 = CFDictionaryGetValue(a3, @"kglContextAddress");
      if (v23)
      {
        v24 = v23;
        v25 = CFGetTypeID(v23);
        if (v25 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v24, kCFNumberSInt64Type, v33);
        }
      }
    }

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(v22, 0);
    v28 = dispatch_queue_create_with_target_V2("noise-reduction-context-init", v26, global_queue);
    *(v7 + 2) = v28;
    v29 = !v21;
    if (!v28)
    {
      v29 = 1;
    }

    if (v29)
    {
      multiBandNoiseReductionContextInit_internal((v7 + 2), *v33, a3);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __multiBandNoiseReductionGPUContextInit_block_invoke;
      block[3] = &unk_1E7991EF8;
      block[4] = *v33;
      block[5] = v7 + 2;
      block[6] = a3;
      dispatch_async(v28, block);
    }
  }

  else
  {
    multiBandNoiseReductionContextDestroy(v7);
    return 0;
  }

  return v7;
}

void get_noise_models_for_sensor_id(const __CFString *a1, const void *a2, uint64_t a3)
{
  range = 0u;
  *v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *bytes = 0u;
  v60[2] = xmmword_1E799BE48;
  v60[3] = unk_1E799BE58;
  v60[4] = xmmword_1E799BE68;
  v60[5] = *&off_1E799BE78;
  v60[0] = xmmword_1E799BE28;
  v60[1] = *algn_1E799BE38;
  v58[2] = xmmword_1E799BEA8;
  v58[3] = unk_1E799BEB8;
  v59 = 1;
  v58[0] = xmmword_1E799BE88;
  v58[1] = *algn_1E799BE98;
  v5 = CFGetTypeID(a1);
  if (v5 != CFStringGetTypeID())
  {
    goto LABEL_67;
  }

  v6 = CFGetTypeID(a2);
  if (v6 != CFDictionaryGetTypeID())
  {
    goto LABEL_67;
  }

  if (*(a3 + 512))
  {
    v7 = v58;
  }

  else
  {
    v7 = v60;
  }

  allocator = *MEMORY[0x1E695E480];
  if (*(a3 + 512))
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  while (1)
  {
    range = 0u;
    *v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    *bytes = 0u;
    Value = CFDictionaryGetValue(a2, *(v7 + 1));
    if (!Value)
    {
      if ((v7[1] & 1) == 0)
      {
LABEL_60:
        get_noise_models_for_sensor_id_cold_17();
        goto LABEL_67;
      }

      goto LABEL_58;
    }

    v10 = Value;
    v11 = CFGetTypeID(Value);
    if (v11 != CFDictionaryGetTypeID() && (v7[1] & 1) != 0)
    {
      goto LABEL_58;
    }

    v12 = CFGetTypeID(v10);
    if (v12 != CFDictionaryGetTypeID())
    {
      goto LABEL_60;
    }

    v13 = CFDictionaryGetValue(v10, @"Bands");
    v70[0] = 0;
    v70[1] = 0;
    if (!v13 || (v14 = v13, v15 = CFGetTypeID(v13), v15 != CFArrayGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_16();
LABEL_66:
      free(v70[0]);
      v70[0] = 0;
      free(v70[1]);
      v70[1] = 0;
      goto LABEL_67;
    }

    HIDWORD(range) = CFArrayGetCount(v14);
    v16 = malloc_type_malloc(96 * SHIDWORD(range), 0x1020040D89758F9uLL);
    v70[0] = v16;
    if (!v16)
    {
      get_noise_models_for_sensor_id_cold_15();
      goto LABEL_66;
    }

    bzero(v16, 96 * SHIDWORD(range));
    context = 0;
    v73 = v70[0];
    v74 = 0;
    v75 = v70[1];
    v76.length = SHIDWORD(range);
    v76.location = 0;
    CFArrayApplyFunction(v14, v76, band_iterator, &context);
    if (context)
    {
      get_noise_models_for_sensor_id_cold_1();
      goto LABEL_66;
    }

    v17 = malloc_type_malloc(8 * v74, 0x100004000313F17uLL);
    v70[1] = v17;
    if (!v17)
    {
      get_noise_models_for_sensor_id_cold_14();
      goto LABEL_66;
    }

    v71[0] = 0;
    v71[1] = v70[0];
    v71[2] = 0;
    v71[3] = v17;
    v77.length = SHIDWORD(range);
    v77.location = 0;
    CFArrayApplyFunction(v14, v77, band_iterator, v71);
    if (LODWORD(v71[0]))
    {
      get_noise_models_for_sensor_id_cold_2();
      goto LABEL_66;
    }

    v18 = CFDictionaryGetValue(v10, @"HighGainThreshold");
    if (!v18 || (v19 = v18, v20 = CFGetTypeID(v18), v20 != CFArrayGetTypeID()))
    {
      v21 = CFDictionaryGetValue(v10, @"HighGainThreshold");
      if (!v21 || (v22 = v21, v23 = CFGetTypeID(v21), v23 != CFNumberGetTypeID()))
      {
        get_noise_models_for_sensor_id_cold_13();
        goto LABEL_67;
      }

      CFNumberGetValue(v22, kCFNumberFloatType, &v64 + 8);
      DWORD2(range) = 1;
      goto LABEL_28;
    }

    if (CFArrayGetCount(v19) > 5)
    {
      break;
    }

    context = (&v64 + 8);
    handle_band_data(v19, &range + 2, &context);
LABEL_28:
    v24 = CFDictionaryGetValue(v10, @"GammaY");
    if (!v24 || (v25 = v24, v26 = CFGetTypeID(v24), v26 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_12();
      goto LABEL_67;
    }

    CFNumberGetValue(v25, kCFNumberFloatType, bytes);
    v27 = CFDictionaryGetValue(v10, @"BandFactorY");
    if (!v27 || (v28 = v27, v29 = CFGetTypeID(v27), v29 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_11();
      goto LABEL_67;
    }

    CFNumberGetValue(v28, kCFNumberFloatType, &bytes[4]);
    v30 = CFDictionaryGetValue(v10, @"BiasFactor");
    if (!v30 || (v31 = v30, v32 = CFGetTypeID(v30), v32 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_10();
      goto LABEL_67;
    }

    CFNumberGetValue(v31, kCFNumberFloatType, &bytes[8]);
    v33 = CFDictionaryGetValue(v10, @"SlopeFactor");
    if (!v33 || (v34 = v33, v35 = CFGetTypeID(v33), v35 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_9();
      goto LABEL_67;
    }

    CFNumberGetValue(v34, kCFNumberFloatType, (bytes | 0xC));
    v36 = CFDictionaryGetValue(v10, @"GammaC");
    if (!v36 || (v37 = v36, v38 = CFGetTypeID(v36), v38 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_8();
      goto LABEL_67;
    }

    CFNumberGetValue(v37, kCFNumberFloatType, &v63);
    v39 = CFDictionaryGetValue(v10, @"BandFactorC");
    if (!v39 || (v40 = v39, v41 = CFGetTypeID(v39), v41 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_7();
      goto LABEL_67;
    }

    CFNumberGetValue(v40, kCFNumberFloatType, &v63 + 4);
    v42 = CFDictionaryGetValue(v10, @"LensShadingFactorLuma");
    if (!v42 || (v43 = v42, v44 = CFGetTypeID(v42), v44 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_6();
      goto LABEL_67;
    }

    CFNumberGetValue(v43, kCFNumberFloatType, &v63 + 8);
    v45 = CFDictionaryGetValue(v10, @"LensShadingFactorChroma");
    if (!v45 || (v46 = v45, v47 = CFGetTypeID(v45), v47 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_5();
      goto LABEL_67;
    }

    CFNumberGetValue(v46, kCFNumberFloatType, &v63 + 12);
    v48 = CFDictionaryGetValue(v10, @"ChromaDemoireStrength");
    if (!v48 || (v49 = v48, v50 = CFGetTypeID(v48), v50 != CFNumberGetTypeID()))
    {
      get_noise_models_for_sensor_id_cold_4();
      goto LABEL_67;
    }

    CFNumberGetValue(v49, kCFNumberFloatType, &v64);
    if (!CFStringGetCString(a1, buffer, 10, 0))
    {
      goto LABEL_67;
    }

    LODWORD(v71[0]) = strtoul(buffer, 0, 16);
    v51 = CFNumberCreate(allocator, kCFNumberSInt32Type, v71);
    v52 = CFNumberCreate(allocator, kCFNumberSInt32Type, v7);
    context = v51;
    v73 = v52;
    v53 = CFArrayCreate(allocator, &context, 2, MEMORY[0x1E695E9C0]);
    v54 = CFDataCreate(allocator, bytes, 144);
    v55 = v54;
    if (v53 && v54)
    {
      CFDictionaryAddValue(*(a3 + 472), v53, v54);
      CFDictionaryAddValue(*(a3 + 464), v53, v10);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    if (v53)
    {
      CFRelease(v53);
    }

    if (v55)
    {
      CFRelease(v55);
    }

LABEL_58:
    v7 = (v7 + 24);
    if (!--v8)
    {
      return;
    }
  }

  get_noise_models_for_sensor_id_cold_3();
LABEL_67:
  free(v70[0]);
  v70[0] = 0;
  free(v70[1]);
}

void multiBandNoiseReductionContextDestroy(_DWORD *a1)
{
  if (a1 && *a1 == 1459126783)
  {
    v2 = a1 + 2;
    WaitForInitializationToFinish_0((a1 + 2));
    v3 = *(a1 + 3);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 3) = 0;
    }

    [MEMORY[0x1E6977FE8] setCurrentContext:*(a1 + 7)];
    glUseProgram(0);
    glActiveTexture(0x84C0u);
    glBindTexture(0xDE1u, 0);
    glActiveTexture(0x84C1u);
    glBindTexture(0xDE1u, 0);
    glBindFramebuffer(0x8D40u, 0);
    glDeleteFramebuffers(4, a1 + 27);
    glDeleteFramebuffers(4, a1 + 48);
    glDeleteFramebuffers(4, a1 + 56);
    glDeleteFramebuffers(4, a1 + 37);
    glDeleteFramebuffers(1, a1 + 43);
    glDeleteTextures(4, a1 + 23);
    glDeleteTextures(4, a1 + 33);
    glDeleteTextures(4, a1 + 44);
    glDeleteTextures(4, a1 + 52);
    glDeleteTextures(2, a1 + 31);
    glDeleteTextures(2, a1 + 41);
    releasePixelBuffers((a1 + 2));
    glDeleteProgram(a1[77]);
    glDeleteProgram(a1[80]);
    glDeleteProgram(a1[86]);
    glDeleteProgram(a1[83]);
    glDeleteProgram(a1[89]);
    glDeleteProgram(a1[92]);
    glDeleteProgram(a1[95]);
    glDeleteProgram(a1[98]);
    glDeleteProgram(a1[101]);
    glDeleteProgram(a1[104]);
    glDeleteProgram(a1[107]);
    glDeleteProgram(a1[110]);
    glDeleteProgram(a1[113]);
    [MEMORY[0x1E6977FE8] setCurrentContext:0];
    if (*(a1 + 306) == 1)
    {
      v4 = *(a1 + 7);
      if (v4)
      {
      }
    }

    v5 = *(a1 + 2);
    if (v5)
    {
      dispatch_release(v5);
    }

    *(a1 + 57) = 0;
    *(a1 + 106) = 0u;
    *(a1 + 110) = 0u;
    *(a1 + 98) = 0u;
    *(a1 + 102) = 0u;
    *(a1 + 90) = 0u;
    *(a1 + 94) = 0u;
    *(a1 + 82) = 0u;
    *(a1 + 86) = 0u;
    *(a1 + 74) = 0u;
    *(a1 + 78) = 0u;
    *(a1 + 66) = 0u;
    *(a1 + 70) = 0u;
    *(a1 + 58) = 0u;
    *(a1 + 62) = 0u;
    *(a1 + 50) = 0u;
    *(a1 + 54) = 0u;
    *(a1 + 42) = 0u;
    *(a1 + 46) = 0u;
    *(a1 + 34) = 0u;
    *(a1 + 38) = 0u;
    *(a1 + 26) = 0u;
    *(a1 + 30) = 0u;
    *(a1 + 18) = 0u;
    *(a1 + 22) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 14) = 0u;
    *v2 = 0u;
    *(a1 + 6) = 0u;
    v6 = *(a1 + 59);
    if (v6)
    {
      CFDictionaryApplyFunction(v6, free_calibration_data_allocations, 0);
      v7 = *(a1 + 59);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    v8 = *(a1 + 58);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 60);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 60) = 0;
    }

    v10 = *(a1 + 61);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 61) = 0;
    }

    v11 = *(a1 + 62);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 62) = 0;
    }

    v12 = *(a1 + 63);
    if (v12)
    {
      CFRelease(v12);
    }

    bzero(a1, 0x208uLL);

    free(a1);
  }
}

void free_calibration_data_allocations(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  free(*(BytePtr + 16));
  v3 = *(BytePtr + 17);

  free(v3);
}

_DWORD *multiBandNoiseReductionReleaseBuffers(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (*result == 1459126783)
    {
      WaitForInitializationToFinish_0((result + 2));
      [MEMORY[0x1E6977FE8] setCurrentContext:*(v1 + 7)];
      glActiveTexture(0x84C0u);
      *(v1 + 19) = -1;
      v1[22] = -1;
      glDeleteTextures(4, v1 + 44);
      glGenTextures(4, v1 + 44);
      glDeleteTextures(4, v1 + 52);
      glGenTextures(4, v1 + 52);
      glDeleteTextures(4, v1 + 23);
      glGenTextures(4, v1 + 23);
      glDeleteTextures(4, v1 + 33);
      glGenTextures(4, v1 + 33);
      glDeleteTextures(2, v1 + 31);
      glGenTextures(2, v1 + 31);
      glDeleteTextures(2, v1 + 41);
      glGenTextures(2, v1 + 41);
      releasePixelBuffers((v1 + 2));
      glFinish();
      v2 = MEMORY[0x1E6977FE8];

      return [v2 setCurrentContext:0];
    }
  }

  return result;
}

uint64_t multiBandNoiseReductionWithTuningOptions(_DWORD *a1, CMSampleBufferRef sbuf, opaqueCMSampleBuffer *a3, const __CFDictionary *a4)
{
  if (sbuf == a3)
  {
    multiBandNoiseReductionWithTuningOptions_cold_3(a1);
    return 4294954516;
  }

  if (!a1 || *a1 != 1459126783)
  {
    multiBandNoiseReductionWithTuningOptions_cold_2();
    return 4294954516;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v14 = CMSampleBufferGetImageBuffer(a3);
  v9 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  v10 = CMGetAttachment(sbuf, *off_1E798D3B0, 0);
  v11 = multiBandNoiseReductionGPU(a1, ImageBuffer, &v14, 1u, v9, a4, v10);
  v12 = v11;
  if (v11)
  {
    multiBandNoiseReductionWithTuningOptions_cold_1(v11);
  }

  return v12;
}

uint64_t multiBandNoiseReductionGPU(uint64_t a1, __CVBuffer *a2, CVPixelBufferRef *a3, unsigned int a4, const char *a5, const __CFDictionary *a6, const void *a7)
{
  WaitForInitializationToFinish_0(a1 + 8);
  v16 = 0x1E6977000uLL;
  if (!*(a1 + 56))
  {
    multiBandNoiseReductionGPU_cold_36(v15);
LABEL_144:
    v17 = 4294954516;
    goto LABEL_113;
  }

  if ((*(a1 + 8) | 2) == 2)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v7, v157, v158, v159, theDict, v162, v165);
    v17 = 4294967294;
    goto LABEL_113;
  }

  v18 = [MEMORY[0x1E6977FE8] setCurrentContext:?];
  if (!a2)
  {
    multiBandNoiseReductionGPU_cold_35(v18);
    goto LABEL_144;
  }

  if (!a3)
  {
    multiBandNoiseReductionGPU_cold_34(v18);
    goto LABEL_144;
  }

  if (*a3 == a2)
  {
    multiBandNoiseReductionGPU_cold_33(v18);
    goto LABEL_144;
  }

  theDicta = a5;
  v163 = v7;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  if ((PixelFormatType & 0xFFFFFFEF) != 0x34323066)
  {
    multiBandNoiseReductionGPU_cold_1(v184);
    v17 = v184[0];
    goto LABEL_113;
  }

  v20 = PixelFormatType;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, 1uLL);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, 1uLL);
  v23 = CVPixelBufferGetWidthOfPlane(a2, 0);
  v169 = CVPixelBufferGetHeightOfPlane(a2, 0);
  if (v20 != CVPixelBufferGetPixelFormatType(*a3))
  {
    multiBandNoiseReductionGPU_cold_2();
LABEL_151:
    v17 = 4294954516;
    goto LABEL_134;
  }

  if (WidthOfPlane != CVPixelBufferGetWidthOfPlane(*a3, 1uLL))
  {
    multiBandNoiseReductionGPU_cold_3();
    goto LABEL_151;
  }

  if (HeightOfPlane != CVPixelBufferGetHeightOfPlane(*a3, 1uLL))
  {
    multiBandNoiseReductionGPU_cold_4();
    goto LABEL_151;
  }

  if (v23 != CVPixelBufferGetWidthOfPlane(*a3, 0))
  {
    multiBandNoiseReductionGPU_cold_5();
    goto LABEL_151;
  }

  if (v169 != CVPixelBufferGetHeightOfPlane(*a3, 0))
  {
    multiBandNoiseReductionGPU_cold_6();
    goto LABEL_151;
  }

  IOSurface = CVPixelBufferGetIOSurface(a2);
  if (!IOSurface)
  {
    multiBandNoiseReductionGPU_cold_32();
    goto LABEL_133;
  }

  v166 = a6;
  allocator = a4;
  if (a4 >= 1)
  {
    v24 = a4;
    v25 = a3;
    while (CVPixelBufferGetIOSurface(*v25))
    {
      ++v25;
      if (!--v24)
      {
        goto LABEL_18;
      }
    }

    multiBandNoiseReductionGPU_cold_31();
    goto LABEL_133;
  }

LABEL_18:
  if (WidthOfPlane < 1 || *(a1 + 68) < WidthOfPlane || HeightOfPlane < 1 || *(a1 + 72) < HeightOfPlane || (v23 & 3) != 0 || (v169 & 3) != 0)
  {
    multiBandNoiseReductionGPU_cold_30();
LABEL_133:
    v17 = 0xFFFFFFFFLL;
LABEL_134:
    v16 = 0x1E6977000;
    goto LABEL_113;
  }

  key = CVPixelBufferGetWidthOfPlane(a2, 0);
  v170 = CVPixelBufferGetHeightOfPlane(a2, 0);
  v175 = CVPixelBufferGetPixelFormatType(a2);
  glActiveTexture(0x84C0u);
  v26 = CVPixelBufferGetIOSurface(a2);
  if (!v26)
  {
    multiBandNoiseReductionGPU_cold_29(v184);
LABEL_116:
    v150 = *v184;
    v151 = -1;
LABEL_126:
    v16 = 0x1E6977000;
    v50 = v7;
LABEL_127:
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v151, v150, v157, v158, v159, theDicta, v7, v166);
    goto LABEL_162;
  }

  v27 = v26;
  v158 = v23;
  v159 = a7;
  v167 = a4;
  v28 = CVPixelBufferGetWidthOfPlane(a2, 0);
  v29 = CVPixelBufferGetHeightOfPlane(a2, 0);
  v30 = CVPixelBufferGetPixelFormatType(a2);
  v31 = v30;
  if (*(a1 + 76) != v28 || *(a1 + 80) != v29 || *(a1 + 88) != v30)
  {
    v32 = v27;
    v33 = 0;
    v34 = a1 + 240;
    v35 = a1 + 248;
    do
    {
      v36 = *(v35 + v33);
      if (v36)
      {
        CVPixelBufferRelease(v36);
        *(v35 + v33) = 0;
      }

      v33 += 8;
    }

    while (v33 != 24);
    v37 = (a1 + 112);
    v38 = 3;
    v27 = v32;
    while (1)
    {
      if (v38 == 3)
      {
        v39 = CVPixelBufferGetWidthOfPlane(a2, 1uLL);
        v40 = a2;
      }

      else
      {
        v39 = CVPixelBufferGetWidthOfPlane(*v34, 1uLL);
        v40 = *v34;
      }

      v41 = CVPixelBufferGetHeightOfPlane(v40, 1uLL);
      YCC420CVPixelBufferRef = createYCC420CVPixelBufferRef(v39, v41, v31);
      *(v34 + 8) = YCC420CVPixelBufferRef;
      v43 = CVPixelBufferGetIOSurface(YCC420CVPixelBufferRef);
      if (!v43)
      {
        break;
      }

      v44 = v43;
      if (v38 == 3)
      {
        v45 = BindTextureToFbo(*(a1 + 56), v43, *(a1 + 128), 0, 0x1908u, 0);
        if (v45)
        {
          v151 = v45;
          multiBandNoiseReductionGPU_cold_7();
          goto LABEL_125;
        }
      }

      v46 = BindTextureToFbo(*(a1 + 56), v44, *(v37 - 4), *v37, 0x8227u, 0);
      if (v46)
      {
        v151 = v46;
        multiBandNoiseReductionGPU_cold_8();
        goto LABEL_125;
      }

      v47 = BindTextureToFbo(*(a1 + 56), v44, v37[17], v37[21], 0x1908u, 1uLL);
      if (v47)
      {
        v151 = v47;
        multiBandNoiseReductionGPU_cold_9();
        goto LABEL_125;
      }

      v34 += 8;
      ++v37;
      if (!--v38)
      {
        goto LABEL_42;
      }
    }

    multiBandNoiseReductionGPU_cold_10(v184);
    goto LABEL_116;
  }

LABEL_42:
  *(a1 + 240) = a2;
  v48 = BindTextureToFbo(*(a1 + 56), v27, *(a1 + 124), 0, 0x1908u, 0);
  if (v48)
  {
    v151 = v48;
    multiBandNoiseReductionGPU_cold_11();
LABEL_125:
    v150 = *v184;
    goto LABEL_126;
  }

  v49 = BindTextureToFbo(*(a1 + 56), v27, *(a1 + 176), *(a1 + 192), 0x1908u, 1uLL);
  v16 = 0x1E6977000;
  v50 = v7;
  if (v49)
  {
    v151 = v49;
    multiBandNoiseReductionGPU_cold_12();
LABEL_157:
    v150 = *v184;
    goto LABEL_127;
  }

  v51 = BindTextureToFbo(*(a1 + 56), v27, *(a1 + 92), *(a1 + 108), 0x8227u, 0);
  if (v51)
  {
    v151 = v51;
    multiBandNoiseReductionGPU_cold_13();
    goto LABEL_157;
  }

  if (*(a1 + 76) != key || *(a1 + 80) != v170 || *(a1 + 84) != v167)
  {
    if (v167 != 1)
    {
      goto LABEL_66;
    }

LABEL_52:
    releaseOutputPixelBuffers(a1 + 8);
    v52 = 0;
    v53 = 1;
    v54 = 136;
    while (1)
    {
      v55 = a1 + v52;
      v56 = v52 ? (a1 + v52 + 272) : a3;
      v57 = CVPixelBufferGetWidthOfPlane(*v56, 1uLL);
      v58 = CVPixelBufferGetHeightOfPlane(*v56, 1uLL);
      v59 = createYCC420CVPixelBufferRef(v57, v58, v175);
      *(v55 + 280) = v59;
      v60 = CVPixelBufferGetIOSurface(v59);
      if (!v60)
      {
        break;
      }

      v61 = v60;
      v62 = CVPixelBufferGetIOSurface(*v56);
      if (!v62)
      {
        multiBandNoiseReductionGPU_cold_27(v184);
        goto LABEL_136;
      }

      v63 = BindLumaAndChromaTexturesToDualFbo(*(a1 + 56), v61, *(a1 + v54), v62, *(a1 + v54 + 72), *(a1 + v54 + 16));
      if (v63)
      {
        v153 = v63;
        multiBandNoiseReductionGPU_cold_14();
        goto LABEL_138;
      }

      if (v53 == 3)
      {
        v65 = CVPixelBufferGetIOSurface(*(v55 + 280));
        if (!v65)
        {
          multiBandNoiseReductionGPU_cold_16(v184);
          goto LABEL_136;
        }

        v66 = BindTextureToFbo(*(a1 + 56), v65, *(a1 + v54 + 76), *(a1 + v54 + 92), 0x1908u, 1uLL);
        if (v66)
        {
          v153 = v66;
          multiBandNoiseReductionGPU_cold_15();
LABEL_138:
          emitter = fig_log_get_emitter();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< NoiseReduction (MultiBand) >>>> Fig", "err == 0 ", "bail", 0, "NoiseReductionMultiBand.m", 1106, v153);
LABEL_161:
          v16 = 0x1E6977000;
          v50 = v7;
LABEL_162:
          glBindTexture(0xDE1u, 0);
          fig_log_get_emitter();
          LODWORD(v156) = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v156, v50, v157, v158, v159, theDicta, v163, v166);
LABEL_163:
          v17 = 0xFFFFFFFFLL;
          goto LABEL_113;
        }
      }

      else if (v53 == 1)
      {
        v64 = BindTextureToFbo(*(a1 + 56), v61, *(a1 + v54 + 32), 0, 0x1908u, 0);
        if (v64)
        {
          v153 = v64;
          multiBandNoiseReductionGPU_cold_17();
          goto LABEL_138;
        }
      }

      v52 += 8;
      ++v53;
      v54 += 4;
      if (v52 == 24)
      {
        goto LABEL_66;
      }
    }

    multiBandNoiseReductionGPU_cold_28(v184);
LABEL_136:
    v153 = -1;
    goto LABEL_138;
  }

  if (v167 == 1 && *(a1 + 88) != v175)
  {
    goto LABEL_52;
  }

LABEL_66:
  *(a1 + 76) = key;
  *(a1 + 80) = v170;
  *(a1 + 84) = v167;
  *(a1 + 88) = v175;
  v67 = CVPixelBufferGetIOSurface(*a3);
  if (!v67)
  {
    multiBandNoiseReductionGPU_cold_26(v184);
LABEL_130:
    v152 = -1;
    goto LABEL_160;
  }

  v68 = BindTextureToFbo(*(a1 + 56), v67, *(a1 + 164), *(a1 + 172), 0x1908u, 0);
  if (v68)
  {
    v152 = v68;
    multiBandNoiseReductionGPU_cold_18();
LABEL_160:
    v155 = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v155, "<<<< NoiseReduction (MultiBand) >>>> Fig", "err == 0 ", "bail", 0, "NoiseReductionMultiBand.m", 1119, v152);
    goto LABEL_161;
  }

  if (v167 >= 1)
  {
    v69 = 0;
    v70 = a1 + 208;
    do
    {
      v71 = CVPixelBufferGetIOSurface(a3[v69]);
      if (!v71)
      {
        multiBandNoiseReductionGPU_cold_25(v184);
        goto LABEL_130;
      }

      v72 = v71;
      if (v69 >= (v167 - 1))
      {
        v78 = BindTextureToFbo(*(a1 + 56), v71, *(v70 + 4 * v69), *(a1 + 224 + 4 * v69), 0x1908u, 1uLL);
        if (v78)
        {
          v152 = v78;
          multiBandNoiseReductionGPU_cold_19();
          goto LABEL_160;
        }

        v73 = v69 + 1;
      }

      else
      {
        v73 = v69 + 1;
        v74 = CVPixelBufferGetIOSurface(a3[v69 + 1]);
        if (!v74)
        {
          multiBandNoiseReductionGPU_cold_24(v184);
          goto LABEL_130;
        }

        v75 = v74;
        v76 = BindLumaAndChromaTexturesToDualFbo(*(a1 + 56), v74, *(a1 + 132 + 4 * v73), v72, *(v70 + 4 * v69), *(a1 + 148 + 4 * v73));
        if (v76)
        {
          v152 = v76;
          multiBandNoiseReductionGPU_cold_20();
          goto LABEL_160;
        }

        if (!v69)
        {
          v77 = BindTextureToFbo(*(a1 + 56), v75, *(a1 + 164 + 4 * v73), 0, 0x1908u, 0);
          if (v77)
          {
            v152 = v77;
            multiBandNoiseReductionGPU_cold_21();
            goto LABEL_160;
          }

          v73 = 1;
        }
      }

      *(a1 + 272 + 8 * v69) = a3[v69];
      v69 = v73;
    }

    while (v73 != allocator);
  }

  glBindTexture(0xDE1u, 0);
  v79 = v183;
  v182 = IOSurface;
  memset(v183, 0, sizeof(v183));
  for (i = 31; i != 34; ++i)
  {
    CVBufferPropagateAttachments(a2, *(a1 + 8 * i));
    v81 = CVPixelBufferGetIOSurface(*(a1 + 8 * i));
    *v79 = v81;
    if (!v81)
    {
      multiBandNoiseReductionGPU_cold_23();
      goto LABEL_133;
    }

    ++v79;
  }

  v180 = 0.0;
  v179 = 0;
  get_exposure_parameters(theDicta, v166, &v179);
  device_parameters = get_device_parameters(a1, theDicta, v166, v159);
  v83 = 0;
  v84 = v179;
  v85 = v181;
  v86 = v180;
  do
  {
    compute_noise_model(a1 + 8, v85, device_parameters, v83++, 1, *&v84, *(&v84 + 1), v86);
    v85 += 14;
  }

  while (v83 != 4);
  v87 = *(device_parameters + 8);
  v88 = MEMORY[0x1E695E8D0];
  if (*(a1 + 24))
  {
    RunLoopSource = IOSurfaceAcceleratorGetRunLoopSource();
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, RunLoopSource, *v88);
  }

  else
  {
    RunLoopSource = 0;
  }

  v164 = device_parameters;
  v168 = RunLoopSource;
  if (((v169 | v158) & 0xC) != 0 || (*(a1 + 304) & 1) == 0)
  {
    allocatorb = (a1 + 344);
    v111 = (a1 + 196);
    v112 = (a1 + 248);
    for (j = 10; j != 52; j += 14)
    {
      glActiveTexture(0x84C0u);
      glBindTexture(0xDE1u, *(v111 - 26));
      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      glTexParameterf(0xDE1u, 0x2800u, 9729.0);
      glTexParameterf(0xDE1u, 0x2801u, 9729.0);
      glBindFramebuffer(0x8D40u, *(v111 - 21));
      v114 = *&v181[j];
      bindVertexAttributes(v114);
      v115 = CVPixelBufferGetWidthOfPlane(*v112, 0) / 2;
      v116 = CVPixelBufferGetHeightOfPlane(*v112, 0);
      v117 = CVPixelBufferGetWidthOfPlane(*(v112 - 1), 0) / 2;
      v118 = CVPixelBufferGetHeightOfPlane(*(v112 - 1), 0);
      glViewport(0, 0, v115, v116);
      glUseProgram(*v114);
      UniformLocation = glGetUniformLocation(*v114, "pixel_pitch");
      glUniform2f(UniformLocation, 1.0 / (v117 - 1), 1.0 / (v118 - 1));
      glDrawArrays(5u, 0, 4);
      glFlush();
      glActiveTexture(0x84C0u);
      glBindTexture(0xDE1u, *(v111 - 5));
      glTexParameterf(0xDE1u, 0x2802u, 33648.0);
      glTexParameterf(0xDE1u, 0x2803u, 33648.0);
      glTexParameterf(0xDE1u, 0x2800u, 9729.0);
      glTexParameterf(0xDE1u, 0x2801u, 9729.0);
      bindVertexAttributes(allocatorb);
      v120 = *v111++;
      glBindFramebuffer(0x8D40u, v120);
      LODWORD(v114) = CVPixelBufferGetWidthOfPlane(*v112, 1uLL) / 2;
      v121 = CVPixelBufferGetHeightOfPlane(*v112, 1uLL);
      v122 = CVPixelBufferGetWidthOfPlane(*(v112 - 1), 1uLL) / 2;
      v123 = CVPixelBufferGetHeightOfPlane(*(v112 - 1), 1uLL);
      glViewport(0, 0, v114, v121);
      glUseProgram(*allocatorb);
      v124 = glGetUniformLocation(*allocatorb, "pixel_pitch");
      glUniform2f(v124, 1.0 / (v122 - 1), 1.0 / (v123 - 1));
      glDrawArrays(5u, 0, 4);
      glFlush();
      ++v112;
    }
  }

  else
  {
    v184[0] = 0;
    v91 = v181[12];
    v92 = v181[13];
    v94 = *(a1 + 32);
    v93 = *(a1 + 36);
    v95 = *(a1 + 40);
    v96 = *(a1 + 44);
    v97 = *(a1 + 48);
    v98 = *(a1 + 52);
    v99 = v96 * v93;
    v100 = malloc_type_calloc(1uLL, 4 * (2 * (v96 * v93 + v95 * v94)), 0x100004052888210uLL);
    if (v100)
    {
      v101 = v100;
      m2m_filter_coefficients(v93, v96, v97, v98, v100, v92);
      m2m_filter_coefficients(v93, v96, v97, v98, &v101[v99], v91);
      m2m_filter_coefficients(v94, v95, v97, v98, &v101[v99 + v99], v92);
      m2m_filter_coefficients(v94, v95, v97, v98, &v101[v99 + v99 + v95 * v94], v91);
      IOSurfaceAcceleratorSetCustomFilter();
      free(v101);
    }

    v102 = 0;
    allocatora = *MEMORY[0x1E695E480];
    keya = *MEMORY[0x1E69A85C8];
    v103 = *MEMORY[0x1E695E4D0];
    v104 = *MEMORY[0x1E69A8508];
    v105 = *MEMORY[0x1E69A84D0];
    v171 = *MEMORY[0x1E69A85B8];
    while (v102 != 24)
    {
      Mutable = CFDictionaryCreateMutable(allocatora, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, keya, v103);
      CFDictionarySetValue(Mutable, v104, v103);
      CFDictionarySetValue(Mutable, v105, v103);
      if (v102 != 16)
      {
        CFDictionarySetValue(Mutable, v171, v103);
      }

      v107 = IOSurfaceAcceleratorTransferSurface();
      CFRelease(Mutable);
      v102 += 8;
      if (v107)
      {
        v108 = 0;
        v109 = v167;
        v110 = v166;
        goto LABEL_107;
      }
    }

    if (v184[0] <= 0)
    {
      v125 = *MEMORY[0x1E695E8E0];
      do
      {
        CFRunLoopRunInMode(v125, 1.0, 1u);
      }

      while (v184[0] < 1);
    }
  }

  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, *(a1 + 188));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  glActiveTexture(0x84C1u);
  glBindTexture(0xDE1u, *(a1 + 104));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  glBindFramebuffer(0x8D40u, *(a1 + 236));
  bindVertexAttributes(a1 + 356);
  v126 = CVPixelBufferGetWidthOfPlane(*(a1 + 296), 1uLL) / 2;
  v127 = CVPixelBufferGetHeightOfPlane(*(a1 + 296), 1uLL);
  glViewport(0, 0, v126, v127);
  glUseProgram(*(a1 + 356));
  v128 = glGetUniformLocation(*(a1 + 356), "luma_sigma_constant");
  glUniform1f(v128, v181[44]);
  v129 = glGetUniformLocation(*(a1 + 356), "chroma_sigma_r");
  glUniform1f(v129, v181[46]);
  v130 = glGetUniformLocation(*(a1 + 356), "chroma_sigma_b");
  glUniform1f(v130, v181[47]);
  v131 = glGetUniformLocation(*(a1 + 356), "lens_shading_factors");
  glUniform2f(v131, *(v164 + 6) + -1.0, *(v164 + 7) + -1.0);
  v132 = glGetUniformLocation(*(a1 + 356), "chroma_demoire_strength");
  glUniform1f(v132, v87);
  v133 = glGetUniformLocation(*(a1 + 356), "pixel_pitch");
  glUniform2f(v133, 1.0 / v126, 1.0 / v127);
  glDrawArrays(5u, 0, 4);
  glFlush();
  remix_denoise_luma_chroma_level(a1 + 8, v181, v164 + 6, 3, v87);
  v134 = 2;
  do
  {
    remix_denoise_luma_chroma_level(a1 + 8, v181, v164 + 6, v134, v87);
    v135 = v134-- != 0;
  }

  while (v134 != 0 && v135);
  v136 = CVPixelBufferGetWidthOfPlane(*(a1 + 272), 0) / 4;
  v137 = CVPixelBufferGetHeightOfPlane(*(a1 + 272), 0);
  v138 = CVPixelBufferGetWidthOfPlane(*(a1 + 280), 0) / 4;
  v139 = CVPixelBufferGetHeightOfPlane(*(a1 + 280), 0);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, *(a1 + 124));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9728.0);
  glTexParameterf(0xDE1u, 0x2801u, 9728.0);
  glActiveTexture(0x84C1u);
  glBindTexture(0xDE1u, *(a1 + 128));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  glActiveTexture(0x84C2u);
  glBindTexture(0xDE1u, *(a1 + 168));
  glTexParameterf(0xDE1u, 0x2802u, 33648.0);
  glTexParameterf(0xDE1u, 0x2803u, 33648.0);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  glBindFramebuffer(0x8D40u, *(a1 + 172));
  bindVertexAttributes(a1 + 368);
  glViewport(0, 0, v136, v137);
  glUseProgram(*(a1 + 368));
  v140 = glGetUniformLocation(*(a1 + 368), "diff_remix");
  glUniform1f(v140, v181[6]);
  v141 = glGetUniformLocation(*(a1 + 368), "pixel_pitch");
  v142 = 1.0 / (v138 - 1);
  v143 = 1.0 / (v139 - 1);
  glUniform2f(v141, v142, v143);
  v144 = glGetUniformLocation(*(a1 + 368), "luma_sigma_intercept");
  glUniform1f(v144, v181[0]);
  v145 = glGetUniformLocation(*(a1 + 368), "luma_sigma_max");
  glUniform1f(v145, v181[2]);
  v146 = glGetUniformLocation(*(a1 + 368), "luma_sigma_slope");
  glUniform1f(v146, v181[1]);
  v147 = glGetUniformLocation(*(a1 + 368), "flatness_threshold");
  glUniform1f(v147, v181[9]);
  glDrawArrays(5u, 0, 4);
  glFlush();
  v108 = 1;
  v110 = v166;
  v109 = v167;
LABEL_107:
  v16 = 0x1E6977000uLL;
  if (v168)
  {
    v148 = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(v148, v168, *MEMORY[0x1E695E8D0]);
  }

  if (!v108)
  {
    multiBandNoiseReductionGPU_cold_22();
    goto LABEL_163;
  }

  if (v109 >= 2)
  {
    bzero((a1 + 280), 8 * (v167 - 1));
  }

  multibandNoiseReductionFinalize(v110);
  v17 = 0;
LABEL_113:
  glGetError();
  [*(v16 + 4072) setCurrentContext:0];
  return v17;
}