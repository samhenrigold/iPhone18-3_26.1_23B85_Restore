void sub_297F979E8(double a1, uint64_t a2, uint64_t a3, int a4, unsigned int *a5, double a6)
{
  v8 = a3;
  v300 = *MEMORY[0x29EDCA608];
  if (a4 > 121)
  {
    if (a4 > 154)
    {
      if (a4 > 208)
      {
        if (a4 != 209)
        {
          if (a4 == 216)
          {
            v164 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              Logger(6, "%s:%i eSE Restricted Event %d %d", "_Callback_NFDriverNotifyGeneral", 2396, *a5, a5[1]);
            }

            dispatch_get_specific(*v164);
            v166 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
            {
              return;
            }

            v167 = *a5;
            v168 = a5[1];
            *buf = 136446978;
            *&buf[4] = "_Callback_NFDriverNotifyGeneral";
            *&buf[12] = 1024;
            *&buf[14] = 2396;
            *&buf[18] = 1024;
            *&buf[20] = v167;
            *&buf[24] = 1024;
            *&buf[26] = v168;
            v25 = "%{public}s:%i eSE Restricted Event %d %d";
            v41 = v166;
            v42 = OS_LOG_TYPE_DEFAULT;
            v109 = 30;
LABEL_322:
            _os_log_impl(&dword_297F97000, v41, v42, v25, buf, v109);
            return;
          }

          if (a4 == 304)
          {
            v15 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v16 = NFLogGetLogger();
            if (v16)
            {
              v16(3, "%s:%i MW requested VEN reset.", "_Callback_NFDriverNotifyGeneral", 2374);
            }

            dispatch_get_specific(*v15);
            v17 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2374;
              _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i MW requested VEN reset.", buf, 0x12u);
            }

            v18 = phTmlNfc_IoCtl();
            if (v18 || (v18 = phTmlNfc_IoCtl()) != 0)
            {
              v19 = v18;
              dispatch_get_specific(*v15);
              v20 = NFLogGetLogger();
              if (v20)
              {
                v20(3, "%s:%i Failed to VEN reset !!!!! : 0x%04X", "_Callback_NFDriverNotifyGeneral", 2387, v19);
              }

              dispatch_get_specific(*v15);
              v21 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "_Callback_NFDriverNotifyGeneral";
                *&buf[12] = 1024;
                *&buf[14] = 2387;
                *&buf[18] = 1024;
                *&buf[20] = v19;
                _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to VEN reset !!!!! : 0x%04X", buf, 0x18u);
              }
            }

            else
            {
              dispatch_get_specific(*v15);
              v255 = NFLogGetLogger();
              if (v255)
              {
                v255(6, "%s:%i Success!", "_Callback_NFDriverNotifyGeneral", 2385);
              }

              dispatch_get_specific(*v15);
              v256 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136446466;
                *&buf[4] = "_Callback_NFDriverNotifyGeneral";
                *&buf[12] = 1024;
                *&buf[14] = 2385;
                _os_log_impl(&dword_297F97000, v256, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Success!", buf, 0x12u);
              }
            }

            phLibNfc_Mgt_VenResetStatus();
            return;
          }

          goto LABEL_51;
        }

        v169 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v170 = NFLogGetLogger();
        if (v170)
        {
          v170(6, "%s:%i ==== NFCC/SE TEMPERATURE CONDITION EXITED ====", "_Callback_NFDriverNotifyGeneral", 2200);
        }

        dispatch_get_specific(*v169);
        v171 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2200;
          _os_log_impl(&dword_297F97000, v171, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ==== NFCC/SE TEMPERATURE CONDITION EXITED ====", buf, 0x12u);
        }

        v172 = *(v8 + 24);
        v173 = 0x6BE24Fu >> sub_297FA01E8(*(v172 + 620), *(v172 + 624));
        v13 = *(v172 + 568);
        v271[0] = MEMORY[0x29EDCA5F8];
        v271[1] = 0x40000000;
        v271[2] = sub_297FBD86C;
        v271[3] = &unk_29EE882F8;
        v271[4] = v8;
        v272 = v173 & 1;
        v14 = v271;
LABEL_355:
        dispatch_async(v13, v14);
        return;
      }

      if (a4 != 155)
      {
        if (a4 == 159)
        {
          if (*(a3 + 57) == 1)
          {
            LODWORD(a1) = a5[2];
            v28 = *&a1 * 0.07374;
            v29 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v30 = NFLogGetLogger();
            if (v30)
            {
              v30(6, "%s:%i Response time : %f us (%d), PICC Response: 0x%04X, PCD response = 0x%04X", "_Callback_NFDriverNotifyGeneral", 2343, v28, a5[2], a5[1], *a5);
            }

            dispatch_get_specific(*v29);
            v31 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v33 = a5[1];
              v32 = a5[2];
              v34 = *a5;
              *buf = 136447490;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2343;
              *&buf[18] = 2048;
              *&buf[20] = v28;
              *&buf[28] = 1024;
              *&buf[30] = v32;
              *&buf[34] = 1024;
              *&buf[36] = v33;
              *&buf[40] = 1024;
              *&buf[42] = v34;
              _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Response time : %f us (%d), PICC Response: 0x%04X, PCD response = 0x%04X", buf, 0x2Eu);
            }

            v35 = NFSharedSignpostLog();
            if (os_signpost_enabled(v35))
            {
              *buf = 134217984;
              *&buf[4] = v28;
              _os_signpost_emit_with_name_impl(&dword_297F97000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ANTI_RELAY", "%f", buf, 0xCu);
            }
          }

          return;
        }

        goto LABEL_51;
      }

      if (a5)
      {
        v263 = malloc_type_calloc(1uLL, 0x300uLL, 0x1080040DD2123E5uLL);
        v174 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v175 = NFLogGetLogger();
        if (v175)
        {
          v175(6, "%s:%i Num Tags Added=%d, Detected=%d, Removed=%d, Not Interested=%d", "_Callback_NFDriverNotifyGeneral", 2255, *a5, *(a5 + 32), *(a5 + 16), *(a5 + 48));
        }

        v262 = v8;
        dispatch_get_specific(*v174);
        v176 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
        {
          v177 = *a5;
          v178 = *(a5 + 32);
          v179 = *(a5 + 16);
          v180 = *(a5 + 48);
          *buf = 136447490;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2255;
          *&buf[18] = 1024;
          *&buf[20] = v177;
          *&buf[24] = 1024;
          *&buf[26] = v178;
          *&buf[30] = 1024;
          *&buf[32] = v179;
          *&buf[36] = 1024;
          *&buf[38] = v180;
          _os_log_impl(&dword_297F97000, v176, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Num Tags Added=%d, Detected=%d, Removed=%d, Not Interested=%d", buf, 0x2Au);
        }

        if (*a5)
        {
          v181 = 0;
          v182 = 0;
          v183 = v263 + 72;
          do
          {
            dispatch_get_specific(*v174);
            v184 = NFLogGetLogger();
            if (v184)
            {
              v185 = (*(a5 + 1) + v181);
              v184(6, "%s:%i Added Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", "_Callback_NFDriverNotifyGeneral", 2265, v182, *v185, v185[1], v185[2], v185[3], v185[4]);
            }

            dispatch_get_specific(*v174);
            v186 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
            {
              v187 = (*(a5 + 1) + v181);
              v188 = *v187;
              v189 = v187[1];
              v190 = v187[2];
              v191 = v187[3];
              LODWORD(v187) = v187[4];
              *buf = 136448002;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2265;
              *&buf[18] = 1024;
              *&buf[20] = v182;
              *&buf[24] = 1024;
              *&buf[26] = v188;
              *&buf[30] = 1024;
              *&buf[32] = v189;
              *&buf[36] = 1024;
              *&buf[38] = v190;
              *&buf[42] = 1024;
              *&buf[44] = v191;
              *&buf[48] = 1024;
              *&buf[50] = v187;
              _os_log_impl(&dword_297F97000, v186, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Added Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", buf, 0x36u);
            }

            if (v182 <= 1)
            {
              v192 = (*(a5 + 1) + v181);
              *(v183 - 16) = sub_297FBD8FC(*v192);
              v183[16] = 4;
              *v183 = *(v192 + 1);
            }

            ++v182;
            v183 += 96;
            v181 += 5;
          }

          while (v182 < *a5);
        }

        if (*(a5 + 32))
        {
          v193 = 0;
          v194 = 0;
          v195 = v263 + 280;
          do
          {
            dispatch_get_specific(*v174);
            v196 = NFLogGetLogger();
            if (v196)
            {
              v197 = (*(a5 + 5) + v193);
              v196(6, "%s:%i Detected Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", "_Callback_NFDriverNotifyGeneral", 2279, v194, *v197, v197[1], v197[2], v197[3], v197[4]);
            }

            dispatch_get_specific(*v174);
            v198 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
            {
              v199 = (*(a5 + 5) + v193);
              v200 = *v199;
              v201 = v199[1];
              v202 = v199[2];
              v203 = v199[3];
              LODWORD(v199) = v199[4];
              *buf = 136448002;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2279;
              *&buf[18] = 1024;
              *&buf[20] = v194;
              *&buf[24] = 1024;
              *&buf[26] = v200;
              *&buf[30] = 1024;
              *&buf[32] = v201;
              *&buf[36] = 1024;
              *&buf[38] = v202;
              *&buf[42] = 1024;
              *&buf[44] = v203;
              *&buf[48] = 1024;
              *&buf[50] = v199;
              _os_log_impl(&dword_297F97000, v198, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Detected Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", buf, 0x36u);
            }

            if (v194 <= 1)
            {
              v204 = (*(a5 + 5) + v193);
              *(v195 - 20) = sub_297FBD8FC(*v204);
              *v195 = 4;
              *(v195 - 4) = *(v204 + 1);
            }

            ++v194;
            v193 += 5;
            v195 += 96;
          }

          while (v194 < *(a5 + 32));
        }

        if (*(a5 + 16))
        {
          v205 = 0;
          v206 = 0;
          v207 = v263 + 472;
          do
          {
            dispatch_get_specific(*v174);
            v208 = NFLogGetLogger();
            if (v208)
            {
              v209 = (*(a5 + 3) + v205);
              v208(6, "%s:%i Removed Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", "_Callback_NFDriverNotifyGeneral", 2293, v206, *v209, v209[1], v209[2], v209[3], v209[4]);
            }

            dispatch_get_specific(*v174);
            v210 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
            {
              v211 = (*(a5 + 3) + v205);
              v212 = *v211;
              v213 = v211[1];
              v214 = v211[2];
              v215 = v211[3];
              LODWORD(v211) = v211[4];
              *buf = 136448002;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2293;
              *&buf[18] = 1024;
              *&buf[20] = v206;
              *&buf[24] = 1024;
              *&buf[26] = v212;
              *&buf[30] = 1024;
              *&buf[32] = v213;
              *&buf[36] = 1024;
              *&buf[38] = v214;
              *&buf[42] = 1024;
              *&buf[44] = v215;
              *&buf[48] = 1024;
              *&buf[50] = v211;
              _os_log_impl(&dword_297F97000, v210, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Removed Tag (%d) rfTech = %d id= 0x%02x 0x%02x 0x%02x 0x%02x", buf, 0x36u);
            }

            if (v206 <= 1)
            {
              v216 = (*(a5 + 3) + v205);
              *(v207 - 20) = sub_297FBD8FC(*v216);
              *v207 = 4;
              *(v207 - 4) = *(v216 + 1);
            }

            ++v206;
            v205 += 5;
            v207 += 96;
          }

          while (v206 < *(a5 + 16));
        }

        if (*(a5 + 48))
        {
          v217 = 0;
          v218 = 0;
          v219 = 0;
          v220 = v263 + 584;
          do
          {
            dispatch_get_specific(*v174);
            v221 = NFLogGetLogger();
            if (v221)
            {
              v221(6, "%s:%i Not interested Tag (%d) rfTech = %d, rfError = %d, numTagsDet = %d", "_Callback_NFDriverNotifyGeneral", 2305, v218, *(*(a5 + 7) + v217), *(*(a5 + 7) + v217 + 1), *(*(a5 + 7) + v217 + 2));
            }

            dispatch_get_specific(*v174);
            v222 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
            {
              v223 = (*(a5 + 7) + v217);
              v224 = *v223;
              v225 = v223[1];
              LODWORD(v223) = v223[2];
              *buf = 136447490;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2305;
              *&buf[18] = 1024;
              *&buf[20] = v218;
              *&buf[24] = 1024;
              *&buf[26] = v224;
              *&buf[30] = 1024;
              *&buf[32] = v225;
              *&buf[36] = 1024;
              *&buf[38] = v223;
              _os_log_impl(&dword_297F97000, v222, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Not interested Tag (%d) rfTech = %d, rfError = %d, numTagsDet = %d", buf, 0x2Au);
            }

            v226 = *(a5 + 7);
            v227 = *(v226 + v217 + 1) != 0;
            if (v218 <= 1)
            {
              *v220 = sub_297FBD8FC(*(v226 + v217));
            }

            v219 |= v227;
            ++v218;
            v217 += 3;
            v220 += 24;
          }

          while (v218 < *(a5 + 48));
        }

        else
        {
          v219 = 0;
        }

        v242 = *(*(v262 + 24) + 568);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 0x40000000;
        block[2] = sub_297FBDAA0;
        block[3] = &unk_29EE88338;
        block[4] = v262;
        block[5] = v263;
        v269 = v219 & 1;
        dispatch_async(v242, block);
      }

      else
      {
        v236 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v237 = NFLogGetLogger();
        if (v237)
        {
          v237(3, "%s:%i Multitag structure is missing", "_Callback_NFDriverNotifyGeneral", 2328);
        }

        dispatch_get_specific(*v236);
        v238 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2328;
          _os_log_impl(&dword_297F97000, v238, OS_LOG_TYPE_ERROR, "%{public}s:%i Multitag structure is missing", buf, 0x12u);
        }
      }

      v243 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v244 = NFLogGetLogger();
      if (v244)
      {
        v244(6, "%s:%i Multi tag status notification received", "_Callback_NFDriverNotifyGeneral", 2330);
      }

      dispatch_get_specific(*v243);
      v93 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136446466;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2330;
      v25 = "%{public}s:%i Multi tag status notification received";
LABEL_320:
      v41 = v93;
      v42 = OS_LOG_TYPE_DEFAULT;
LABEL_321:
      v109 = 18;
      goto LABEL_322;
    }

    if (a4 <= 132)
    {
      if (a4 == 122)
      {
        if (!a5)
        {
          return;
        }

        v153 = *a5;
        v154 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v155 = NFLogGetLogger();
        if (v153)
        {
          if (v155)
          {
            v155(5, "%s:%i No compensation applied due to underflow, poll phase duration (ms): %d", "_Callback_NFDriverNotifyGeneral", 2458, *(a5 + 1));
          }

          dispatch_get_specific(*v154);
          v156 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v157 = *(a5 + 1);
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2458;
          *&buf[18] = 1024;
          *&buf[20] = v157;
          v25 = "%{public}s:%i No compensation applied due to underflow, poll phase duration (ms): %d";
        }

        else
        {
          if (v155)
          {
            v155(5, "%s:%i Compensation applied, poll phase duration (ms): %d", "_Callback_NFDriverNotifyGeneral", 2456, *(a5 + 1));
          }

          dispatch_get_specific(*v154);
          v156 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v241 = *(a5 + 1);
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2456;
          *&buf[18] = 1024;
          *&buf[20] = v241;
          v25 = "%{public}s:%i Compensation applied, poll phase duration (ms): %d";
        }

        v41 = v156;
        v42 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_313;
      }

      if (a4 == 123)
      {
        v22 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v23 = NFLogGetLogger();
        if (v23)
        {
          v23(4, "%s:%i EMVCO field collision detected", "_Callback_NFDriverNotifyGeneral", 2465);
        }

        dispatch_get_specific(*v22);
        v24 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2465;
        v25 = "%{public}s:%i EMVCO field collision detected";
LABEL_296:
        v41 = v24;
        v42 = OS_LOG_TYPE_ERROR;
        goto LABEL_321;
      }

LABEL_51:
      v38 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v39 = NFLogGetLogger();
      if (v39)
      {
        v39(3, "%s:%i Unknown notification: 0x%x", "_Callback_NFDriverNotifyGeneral", 2522, a4);
      }

      dispatch_get_specific(*v38);
      v40 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136446722;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2522;
      *&buf[18] = 1024;
      *&buf[20] = a4;
      v25 = "%{public}s:%i Unknown notification: 0x%x";
      v41 = v40;
      v42 = OS_LOG_TYPE_ERROR;
LABEL_313:
      v109 = 24;
      goto LABEL_322;
    }

    if (a4 == 133)
    {
      v158 = *a5;
      v159 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v160 = NFLogGetLogger();
      if (v160)
      {
        v160(3, "%s:%i Generic error : 0x%04X", "_Callback_NFDriverNotifyGeneral", 2123, v158);
      }

      dispatch_get_specific(*v159);
      v161 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2123;
        *&buf[18] = 1024;
        *&buf[20] = v158;
        _os_log_impl(&dword_297F97000, v161, OS_LOG_TYPE_ERROR, "%{public}s:%i Generic error : 0x%04X", buf, 0x18u);
      }

      if (v158 > 226)
      {
        if (v158 <= 234)
        {
          if (v158 == 227)
          {
            dispatch_get_specific(*v159);
            v257 = NFLogGetLogger();
            if (v257)
            {
              v257(3, "%s:%i TxLDO OverCurrent Error", "_Callback_NFDriverNotifyGeneral", 2169);
            }

            dispatch_get_specific(*v159);
            v258 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v258, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              *&buf[4] = "_Callback_NFDriverNotifyGeneral";
              *&buf[12] = 1024;
              *&buf[14] = 2169;
              _os_log_impl(&dword_297F97000, v258, OS_LOG_TYPE_ERROR, "%{public}s:%i TxLDO OverCurrent Error", buf, 0x12u);
            }

            if (*(*(v8 + 24) + 764) == 1)
            {
              postAnalyticsTxLdoOverCurrentErrorEvent();
            }

            return;
          }

          if (v158 != 234)
          {
            return;
          }

          v13 = *(*(v8 + 24) + 568);
          v278[0] = MEMORY[0x29EDCA5F8];
          v278[1] = 0x40000000;
          v278[2] = sub_297FBD6D8;
          v278[3] = &unk_29EE88298;
          v278[4] = v8;
          v279 = 234;
          v14 = v278;
          goto LABEL_355;
        }

        if (v158 == 235)
        {
          v162 = 1;
          v163 = "ADC LOW";
        }

        else
        {
          if (v158 != 250)
          {
            return;
          }

          v162 = 2;
          v163 = "ADC HIGH";
        }
      }

      else if ((v158 - 204) < 2)
      {
        if (v158 == 205)
        {
          v163 = "ESE LOW";
        }

        else
        {
          v163 = "ESE HIGH";
        }

        if (v158 == 205)
        {
          v162 = 6;
        }

        else
        {
          v162 = 7;
        }
      }

      else if (v158 == 202)
      {
        v162 = 5;
        v163 = "NFCC HIGH";
      }

      else
      {
        if (v158 != 203)
        {
          return;
        }

        v162 = 4;
        v163 = "NFCC LOW";
      }

      v259 = *(v8 + 24);
      v260 = sub_297FA01E8(*(v259 + 620), *(v259 + 624));
      v27 = *(v259 + 568);
      v275[0] = MEMORY[0x29EDCA5F8];
      v275[1] = 0x40000000;
      v275[2] = sub_297FBD708;
      v275[3] = &unk_29EE882B8;
      v275[4] = v163;
      v275[5] = v8;
      v276 = v162;
      v277 = (0x6BE24Fu >> v260) & 1;
      v14 = v275;
    }

    else
    {
      if (a4 != 134)
      {
        goto LABEL_51;
      }

      if (!a5 || !*a5 || !a5[2])
      {
        v228 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v229 = NFLogGetLogger();
        if (v229)
        {
          v229(3, "%s:%i Chipscope buffer empty", "_Callback_NFDriverNotifyGeneral", 2240);
        }

        dispatch_get_specific(*v228);
        v24 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2240;
        v25 = "%{public}s:%i Chipscope buffer empty";
        goto LABEL_296;
      }

      v26 = NFDataCreateWithBytes();
      v27 = *(*(v8 + 24) + 568);
      v270[0] = MEMORY[0x29EDCA5F8];
      v270[1] = 0x40000000;
      v270[2] = sub_297FBD8A0;
      v270[3] = &unk_29EE88318;
      v270[4] = v8;
      v270[5] = v26;
      v14 = v270;
    }

    v13 = v27;
    goto LABEL_355;
  }

  switch(a4)
  {
    case '""':
      v110 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v111 = NFLogGetLogger();
      if (v111)
      {
        v111(3, "%s:%i CRC error", "_Callback_NFDriverNotifyGeneral", 2110);
      }

      dispatch_get_specific(*v110);
      v112 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2110;
        _os_log_impl(&dword_297F97000, v112, OS_LOG_TYPE_ERROR, "%{public}s:%i CRC error", buf, 0x12u);
      }

      v13 = *(*(v8 + 24) + 568);
      v280[0] = MEMORY[0x29EDCA5F8];
      v280[1] = 0x40000000;
      v280[2] = sub_297FBD628;
      v280[3] = &unk_29EE88278;
      v280[4] = v8;
      v14 = v280;
      goto LABEL_355;
    case '#':
    case '$':
    case '%':
    case '&':
    case '\'':
    case '(':
    case ')':
    case '*':
    case '+':
    case ',':
    case '-':
    case '.':
    case '/':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
    case ':':
    case ';':
    case '<':
    case '=':
    case '@':
    case 'A':
    case 'B':
    case 'C':
    case 'J':
    case 'M':
    case 'Q':
    case 'R':
    case 'T':
    case 'U':
      goto LABEL_51;
    case '0':
      v113 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v114 = NFLogGetLogger();
      if (v114)
      {
        v114(3, "%s:%i ==== HARDWARE RESET ====", "_Callback_NFDriverNotifyGeneral", 1959);
      }

      dispatch_get_specific(*v113);
      v115 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 1959;
        _os_log_impl(&dword_297F97000, v115, OS_LOG_TYPE_ERROR, "%{public}s:%i ==== HARDWARE RESET ====", buf, 0x12u);
      }

      if (a5)
      {
        sub_297FB908C(a5);
        if (*(*(v8 + 24) + 764) == 1)
        {
          sub_297FBA53C(v8);
          postAnalyticsHardwareExceptionEvent();
        }
      }

      v13 = *(*(v8 + 24) + 568);
      v291[0] = MEMORY[0x29EDCA5F8];
      v291[1] = 0x40000000;
      v291[2] = sub_297FBD15C;
      v291[3] = &unk_29EE881D0;
      v291[4] = v8;
      v14 = v291;
      goto LABEL_355;
    case '>':
      if (a5)
      {
        v97 = *(a5 + 1);

        sub_297FBBE78(v97, a1);
      }

      return;
    case '?':
      if (a5)
      {
        v116 = *(a5 + 1);

        sub_297FBC5D4(v116, a1, a6);
      }

      return;
    case 'D':
    case 'G':
    case 'H':
    case 'I':
      v9 = NFDataCreateWithBytes();
      v10 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(6, "%s:%i MFW Notification received", "_Callback_NFDriverNotifyGeneral", 2510);
      }

      dispatch_get_specific(*v10);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2510;
        _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i MFW Notification received", buf, 0x12u);
      }

      v13 = *(*(v8 + 24) + 568);
      v265[0] = MEMORY[0x29EDCA5F8];
      v265[1] = 0x40000000;
      v265[2] = sub_297FBDB60;
      v265[3] = &unk_29EE88398;
      v265[4] = v8;
      v265[5] = v9;
      v14 = v265;
      goto LABEL_355;
    case 'E':
      if (a5)
      {
        *&buf[16] = 0x3800000000;
        *&v292[16] = 0x2000000000;
        v125 = *(a5 + 1);
        *&buf[24] = *a5;
        *buf = 0;
        *&buf[8] = buf;
        *v292 = 0;
        *&v292[8] = v292;
        *&v292[24] = 0;
        *&buf[40] = v125;
        *&buf[32] = 0;
        *&buf[40] = 0;
        v126 = a5[4];
        if (v126)
        {
          v127 = malloc_type_calloc(1uLL, v126, 0x50F08A60uLL);
          v128 = *&buf[8];
          *(*&buf[8] + 32) = v127;
          if (v127)
          {
            v129 = a5[4];
            *(v128 + 40) = v129;
            memcpy(v127, *(a5 + 1), v129);
          }

          else
          {
            v251 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v252 = NFLogGetLogger();
            if (v252)
            {
              v252(3, "%s:%i No memory available", "_Callback_NFDriverNotifyGeneral", 2012);
            }

            dispatch_get_specific(*v251);
            v253 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
            {
              *v295 = 136446466;
              v296 = "_Callback_NFDriverNotifyGeneral";
              v297 = 1024;
              v298 = 2012;
              _os_log_impl(&dword_297F97000, v253, OS_LOG_TYPE_ERROR, "%{public}s:%i No memory available", v295, 0x12u);
            }
          }
        }

        v254 = *(*(v8 + 24) + 568);
        v290[0] = MEMORY[0x29EDCA5F8];
        v290[1] = 0x40000000;
        v290[2] = sub_297FBD20C;
        v290[3] = &unk_29EE881F8;
        v290[6] = v8;
        v290[4] = v292;
        v290[5] = buf;
        dispatch_async(v254, v290);
        _Block_object_dispose(v292, 8);
        _Block_object_dispose(buf, 8);
      }

      return;
    case 'F':
      v94 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v95 = NFLogGetLogger();
      if (v95)
      {
        v95(3, "%s:%i ==== PLL UNLOCKED ====", "_Callback_NFDriverNotifyGeneral", 2050);
      }

      dispatch_get_specific(*v94);
      v96 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2050;
        _os_log_impl(&dword_297F97000, v96, OS_LOG_TYPE_ERROR, "%{public}s:%i ==== PLL UNLOCKED ====", buf, 0x12u);
      }

      v13 = *(*(v8 + 24) + 568);
      v289[0] = MEMORY[0x29EDCA5F8];
      v289[1] = 0x40000000;
      v289[2] = sub_297FBD354;
      v289[3] = &unk_29EE88218;
      v289[4] = v8;
      v14 = v289;
      goto LABEL_355;
    case 'K':
      if (a5)
      {

        sub_297FBD3E8(a5);
      }

      return;
    case 'L':
      if (*(a3 + 57) == 1)
      {
        if (!a5)
        {
          return;
        }

        LOWORD(a1) = *(a5 + 2);
        v133 = *&a1 / 1000.0;
        if (*a5 == 2)
        {
          v134 = v133 * -69.25 + 150.2;
          v135 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v136 = NFLogGetLogger();
          if (v136)
          {
            v136(6, "%s:%i Got temperature notification SWIO2 / AIO2: %d, 0x%x -> %lf", "_Callback_NFDriverNotifyGeneral", 2357, *a5, *(a5 + 2), *&v134);
          }

          dispatch_get_specific(*v135);
          v137 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_334;
          }

          v138 = *a5;
          v139 = *(a5 + 2);
          *buf = 136447234;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2357;
          *&buf[18] = 1024;
          *&buf[20] = v138;
          *&buf[24] = 1024;
          *&buf[26] = v139;
          *&buf[30] = 2048;
          *&buf[32] = v134;
          v140 = "%{public}s:%i Got temperature notification SWIO2 / AIO2: %d, 0x%x -> %lf";
        }

        else
        {
          v134 = 4250.0 / (log(v133 * 2838800000.0 / (v133 * -107400.0 + 108720.0)) + 2.7416) + -273.15;
          v245 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v246 = NFLogGetLogger();
          if (v246)
          {
            v246(6, "%s:%i Got temperature notification SWIO1 / AIO3: %d, 0x%x -> %lf", "_Callback_NFDriverNotifyGeneral", 2361, *a5, *(a5 + 2), *&v134);
          }

          dispatch_get_specific(*v245);
          v137 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_334;
          }

          v247 = *a5;
          v248 = *(a5 + 2);
          *buf = 136447234;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2361;
          *&buf[18] = 1024;
          *&buf[20] = v247;
          *&buf[24] = 1024;
          *&buf[26] = v248;
          *&buf[30] = 2048;
          *&buf[32] = v134;
          v140 = "%{public}s:%i Got temperature notification SWIO1 / AIO3: %d, 0x%x -> %lf";
        }

        _os_log_impl(&dword_297F97000, v137, OS_LOG_TYPE_DEFAULT, v140, buf, 0x28u);
LABEL_334:
        v249 = *(v8 + 24);
        v250 = *(v249 + 176);
        if (v250)
        {
          v250(*(v249 + 440), v134);
        }

        return;
      }

      v230 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v231 = NFLogGetLogger();
      if (v231)
      {
        v231(6, "%s:%i Dropping temperature notification", "_Callback_NFDriverNotifyGeneral", 2369);
      }

      dispatch_get_specific(*v230);
      v93 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2369;
        v25 = "%{public}s:%i Dropping temperature notification";
        goto LABEL_320;
      }

      break;
    case 'N':
      v91 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v92 = NFLogGetLogger();
      if (v92)
      {
        v92(6, "%s:%i CW detected!", "_Callback_NFDriverNotifyGeneral", 2402);
      }

      dispatch_get_specific(*v91);
      v93 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136446466;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2402;
      v25 = "%{public}s:%i CW detected!";
      goto LABEL_320;
    case 'O':
      v98 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v99 = NFLogGetLogger();
      if (v99)
      {
        v99(5, "%s:%i LPCD assist completed successfully", "_Callback_NFDriverNotifyGeneral", 2449);
      }

      dispatch_get_specific(*v98);
      v93 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 136446466;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2449;
      v25 = "%{public}s:%i LPCD assist completed successfully";
      goto LABEL_320;
    case 'P':
      if (*(a3 + 32))
      {
        return;
      }

      v74 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v75 = NFLogGetLogger();
      if (v75)
      {
        v75(3, "%s:%i ==== UART ERROR ====", "_Callback_NFDriverNotifyGeneral", 2065);
      }

      dispatch_get_specific(*v74);
      v76 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2065;
        _os_log_impl(&dword_297F97000, v76, OS_LOG_TYPE_ERROR, "%{public}s:%i ==== UART ERROR ====", buf, 0x12u);
      }

      v13 = *(*(v8 + 24) + 568);
      v288[0] = MEMORY[0x29EDCA5F8];
      v288[1] = 0x40000000;
      v288[2] = sub_297FBD37C;
      v288[3] = &unk_29EE88238;
      v288[4] = v8;
      v14 = v288;
      goto LABEL_355;
    case 'S':
      if (!a5)
      {
        return;
      }

      v117 = *a5;
      if (*a5)
      {
        v118 = *(a5 + 1);
        v119 = a5[1];
        v120 = *(a5 + 4);
        v121 = *(a5 + 5);
        v122 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v123 = NFLogGetLogger();
        if (v123)
        {
          v123(6, "%s:%i RSSI stats count %d, min=%d, max=%d, average=%d", "_Callback_NFDriverNotifyGeneral", 2087, v117, v121, v120, v119 / v117);
        }

        dispatch_get_specific(*v122);
        v124 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136447490;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2087;
          *&buf[18] = 1024;
          *&buf[20] = v117;
          *&buf[24] = 1024;
          *&buf[26] = v121;
          *&buf[30] = 1024;
          *&buf[32] = v120;
          *&buf[36] = 1024;
          *&buf[38] = v119 / v117;
          _os_log_impl(&dword_297F97000, v124, OS_LOG_TYPE_DEFAULT, "%{public}s:%i RSSI stats count %d, min=%d, max=%d, average=%d", buf, 0x2Au);
        }

        v13 = *(*(v8 + 24) + 568);
        v281[0] = MEMORY[0x29EDCA5F8];
        v281[1] = 0x40000000;
        v281[2] = sub_297FBD3AC;
        v281[3] = &unk_29EE88258;
        v281[4] = v8;
        v282 = v117;
        v283 = v118;
        v284 = v119;
        v285 = v120;
        v286 = v121;
        v287 = v119 / v117;
        v14 = v281;
        goto LABEL_355;
      }

      v239 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v240 = NFLogGetLogger();
      if (v240)
      {
        v240(6, "%s:%i RSSI stats with no sample", "_Callback_NFDriverNotifyGeneral", 2095);
      }

      dispatch_get_specific(*v239);
      v93 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2095;
        v25 = "%{public}s:%i RSSI stats with no sample";
        goto LABEL_320;
      }

      return;
    case 'V':
      v130 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v131 = NFLogGetLogger();
      if (v131)
      {
        v131(3, "%s:%i Flash counter exceeded notification. This is NOT expected unless you live in the 22nd century or later. File a radar and get a new device.", "_Callback_NFDriverNotifyGeneral", 2430);
      }

      dispatch_get_specific(*v130);
      v132 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2430;
        _os_log_impl(&dword_297F97000, v132, OS_LOG_TYPE_ERROR, "%{public}s:%i Flash counter exceeded notification. This is NOT expected unless you live in the 22nd century or later. File a radar and get a new device.", buf, 0x12u);
      }

      v13 = *(*(v8 + 24) + 568);
      v266[0] = MEMORY[0x29EDCA5F8];
      v266[1] = 0x40000000;
      v266[2] = sub_297FBDB38;
      v266[3] = &unk_29EE88378;
      v266[4] = v8;
      v14 = v266;
      goto LABEL_355;
    case 'W':
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v77 = NFLogGetLogger();
      if (v77)
      {
        v77(3, "%s:%i TXLDO error!", "_Callback_NFDriverNotifyGeneral", 2406);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v78 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2406;
        _os_log_impl(&dword_297F97000, v78, OS_LOG_TYPE_ERROR, "%{public}s:%i TXLDO error!", buf, 0x12u);
      }

      if (a5)
      {
        v79 = a5[2];
        if (v79)
        {
          memset(buf, 0, 48);
          v80 = *a5;
          v81 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v82 = NFLogGetLogger();
          dispatch_get_specific(*v81);
          v83 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = a5[2];
            *v292 = 136315906;
            *&v292[4] = "_Callback_NFDriverNotifyGeneral";
            *&v292[12] = 1024;
            *&v292[14] = 2410;
            *&v292[18] = 2082;
            *&v292[20] = "[TXLDO]";
            v293 = 2048;
            v294 = v84;
            _os_log_impl(&dword_297F97000, v83, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v292, 0x26u);
          }

          v261 = v8;
          if (v82)
          {
            v82(5, "%s:%i %s %lu bytes :", "_Callback_NFDriverNotifyGeneral", 2410, "[TXLDO]", a5[2]);
          }

          v85 = 0;
          do
          {
            v86 = 0;
            v87 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v85)];
            do
            {
              v88 = *(v80 + v85++);
              v89 = sprintf(v87, "0x%02X ", v88);
              if (v86 > 6)
              {
                break;
              }

              v87 += v89;
              ++v86;
            }

            while (v85 < v79);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v90 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *v292 = 136446210;
              *&v292[4] = buf;
              _os_log_impl(&dword_297F97000, v90, OS_LOG_TYPE_DEFAULT, "%{public}s", v292, 0xCu);
            }

            if (v82)
            {
              v82(5, "%s", buf);
            }
          }

          while (v85 < v79);
          v8 = v261;
          if (*(*(v261 + 24) + 764) == 1)
          {
            postAnalyticsTxLdoErrorEvent();
          }
        }
      }

      v13 = *(*(v8 + 24) + 568);
      v267[0] = MEMORY[0x29EDCA5F8];
      v267[1] = 0x40000000;
      v267[2] = sub_297FBDB10;
      v267[3] = &unk_29EE88358;
      v267[4] = v8;
      v14 = v267;
      goto LABEL_355;
    case 'X':
      v57 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v58 = NFLogGetLogger();
      if (v58)
      {
        v58(6, "%s:%i ==== GPADC TEMPERATURE CONDITION NORMAL ====", "_Callback_NFDriverNotifyGeneral", 2183);
      }

      dispatch_get_specific(*v57);
      v59 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifyGeneral";
        *&buf[12] = 1024;
        *&buf[14] = 2183;
        _os_log_impl(&dword_297F97000, v59, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ==== GPADC TEMPERATURE CONDITION NORMAL ====", buf, 0x12u);
      }

      v60 = *(v8 + 24);
      v61 = 0x6BE24Fu >> sub_297FA01E8(*(v60 + 620), *(v60 + 624));
      v13 = *(v60 + 568);
      v273[0] = MEMORY[0x29EDCA5F8];
      v273[1] = 0x40000000;
      v273[2] = sub_297FBD838;
      v273[3] = &unk_29EE882D8;
      v273[4] = v8;
      v274 = v61 & 1;
      v14 = v273;
      goto LABEL_355;
    case 'Y':
      if (a5)
      {
        v141 = a5[2];
        if (v141)
        {
          memset(buf, 0, 48);
          v142 = *a5;
          v143 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v144 = NFLogGetLogger();
          dispatch_get_specific(*v143);
          v145 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
          {
            v146 = a5[2];
            *v292 = 136315906;
            *&v292[4] = "_Callback_NFDriverNotifyGeneral";
            *&v292[12] = 1024;
            *&v292[14] = 2443;
            *&v292[18] = 2082;
            *&v292[20] = "[FLC_TRIMMING failed]";
            v293 = 2048;
            v294 = v146;
            _os_log_impl(&dword_297F97000, v145, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v292, 0x26u);
          }

          if (v144)
          {
            v144(5, "%s:%i %s %lu bytes :", "_Callback_NFDriverNotifyGeneral", 2443, "[FLC_TRIMMING failed]", a5[2]);
          }

          v147 = 0;
          do
          {
            v148 = 0;
            v149 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v147)];
            do
            {
              v150 = *(v142 + v147++);
              v151 = sprintf(v149, "0x%02X ", v150);
              if (v148 > 6)
              {
                break;
              }

              v149 += v151;
              ++v148;
            }

            while (v147 < v141);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v152 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
            {
              *v292 = 136446210;
              *&v292[4] = buf;
              _os_log_impl(&dword_297F97000, v152, OS_LOG_TYPE_DEFAULT, "%{public}s", v292, 0xCu);
            }

            if (v144)
            {
              v144(5, "%s", buf);
            }
          }

          while (v147 < v141);
          postAnalyticsFlcTrimmingErrorEvent();
        }
      }

      return;
    case 'Z':
      v55 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v56 = NFLogGetLogger();
      if (v56)
      {
        v56(3, "%s:%i XTAL start error received", "_Callback_NFDriverNotifyGeneral", 2426);
      }

      dispatch_get_specific(*v55);
      v24 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136446466;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2426;
      v25 = "%{public}s:%i XTAL start error received";
      goto LABEL_296;
    case '[':
      v100 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v101 = NFLogGetLogger();
      if (a5)
      {
        if (v101)
        {
          v101(4, "%s:%i Received Spmi Error Register Info notification: 0x%02x, 0x%02x, 0x%02x , 0x%02x, 0x%02x ,0x%02x", "_Callback_NFDriverNotifyGeneral", 2475, *a5, *(a5 + 1), *(a5 + 2), *(a5 + 3), *(a5 + 4), *(a5 + 5));
        }

        dispatch_get_specific(*v100);
        v102 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
        {
          v103 = *a5;
          v104 = *(a5 + 1);
          v105 = *(a5 + 2);
          v106 = *(a5 + 3);
          v107 = *(a5 + 4);
          v108 = *(a5 + 5);
          *buf = 136448002;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2475;
          *&buf[18] = 1024;
          *&buf[20] = v103;
          *&buf[24] = 1024;
          *&buf[26] = v104;
          *&buf[30] = 1024;
          *&buf[32] = v105;
          *&buf[36] = 1024;
          *&buf[38] = v106;
          *&buf[42] = 1024;
          *&buf[44] = v107;
          *&buf[48] = 1024;
          *&buf[50] = v108;
          v25 = "%{public}s:%i Received Spmi Error Register Info notification: 0x%02x, 0x%02x, 0x%02x , 0x%02x, 0x%02x ,0x%02x";
          v41 = v102;
          v42 = OS_LOG_TYPE_ERROR;
          v109 = 54;
          goto LABEL_322;
        }
      }

      else
      {
        if (v101)
        {
          v101(4, "%s:%i Received Spmi Error Register Info notification", "_Callback_NFDriverNotifyGeneral", 2477);
        }

        dispatch_get_specific(*v100);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2477;
          v25 = "%{public}s:%i Received Spmi Error Register Info notification";
          goto LABEL_296;
        }
      }

      return;
    case '\\':
      if (a5)
      {
        memset(buf, 0, 48);
        v43 = a5[2];
        v44 = *a5;
        v45 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v46 = NFLogGetLogger();
        dispatch_get_specific(*v45);
        v47 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = a5[2];
          *v292 = 136315906;
          *&v292[4] = "_Callback_NFDriverNotifyGeneral";
          *&v292[12] = 1024;
          *&v292[14] = 2485;
          *&v292[18] = 2082;
          *&v292[20] = "received core dump debug info from NFCC";
          v293 = 2048;
          v294 = v48;
          _os_log_impl(&dword_297F97000, v47, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v292, 0x26u);
        }

        if (v46)
        {
          v46(4, "%s:%i %s %lu bytes :", "_Callback_NFDriverNotifyGeneral", 2485, "received core dump debug info from NFCC", a5[2]);
        }

        if (v43)
        {
          v49 = 0;
          do
          {
            v50 = 0;
            v51 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v49)];
            do
            {
              v52 = *(v44 + v49++);
              v53 = sprintf(v51, "0x%02X ", v52);
              if (v50 > 6)
              {
                break;
              }

              v51 += v53;
              ++v50;
            }

            while (v49 < v43);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v54 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              *v292 = 136446210;
              *&v292[4] = buf;
              _os_log_impl(&dword_297F97000, v54, OS_LOG_TYPE_ERROR, "%{public}s", v292, 0xCu);
            }

            if (v46)
            {
              v46(4, "%s", buf);
            }
          }

          while (v49 < v43);
        }
      }

      else
      {
        v232 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v233 = NFLogGetLogger();
        if (v233)
        {
          v233(4, "%s:%i Received empty core dump debug info from NFCC", "_Callback_NFDriverNotifyGeneral", 2487);
        }

        dispatch_get_specific(*v232);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2487;
          v25 = "%{public}s:%i Received empty core dump debug info from NFCC";
          goto LABEL_296;
        }
      }

      return;
    case ']':
      if (a5)
      {
        memset(buf, 0, 48);
        v62 = a5[2];
        v264 = *a5;
        v63 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v64 = NFLogGetLogger();
        dispatch_get_specific(*v63);
        v65 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = a5[2];
          *v292 = 136315906;
          *&v292[4] = "_Callback_NFDriverNotifyGeneral";
          *&v292[12] = 1024;
          *&v292[14] = 2495;
          *&v292[18] = 2082;
          *&v292[20] = "received SPMI debug info from NFCC";
          v293 = 2048;
          v294 = v66;
          _os_log_impl(&dword_297F97000, v65, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", v292, 0x26u);
        }

        if (v64)
        {
          v64(4, "%s:%i %s %lu bytes :", "_Callback_NFDriverNotifyGeneral", 2495, "received SPMI debug info from NFCC", a5[2]);
        }

        if (v62)
        {
          v67 = 0;
          do
          {
            v68 = 0;
            v69 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v67)];
            do
            {
              v70 = v68 + 1;
              v71 = v68 + 1 + v67;
              v72 = sprintf(v69, "0x%02X ", *(v264 + v67 + v68));
              if (v68 > 6)
              {
                break;
              }

              v69 += v72;
              ++v68;
            }

            while (v71 < v62);
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v73 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              *v292 = 136446210;
              *&v292[4] = buf;
              _os_log_impl(&dword_297F97000, v73, OS_LOG_TYPE_ERROR, "%{public}s", v292, 0xCu);
            }

            if (v64)
            {
              v64(4, "%s", buf);
            }

            v67 += v70;
          }

          while (v71 < v62);
        }
      }

      else
      {
        v234 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v235 = NFLogGetLogger();
        if (v235)
        {
          v235(4, "%s:%i Received empty SPMI Debug Data RAM from NFCC", "_Callback_NFDriverNotifyGeneral", 2497);
        }

        dispatch_get_specific(*v234);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_Callback_NFDriverNotifyGeneral";
          *&buf[12] = 1024;
          *&buf[14] = 2497;
          v25 = "%{public}s:%i Received empty SPMI Debug Data RAM from NFCC";
          goto LABEL_296;
        }
      }

      return;
    default:
      if (a4 != 15)
      {
        goto LABEL_51;
      }

      v36 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v37 = NFLogGetLogger();
      if (v37)
      {
        v37(3, "%s:%i ==== COMM ERROR ====", "_Callback_NFDriverNotifyGeneral", 2045);
      }

      dispatch_get_specific(*v36);
      v24 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136446466;
      *&buf[4] = "_Callback_NFDriverNotifyGeneral";
      *&buf[12] = 1024;
      *&buf[14] = 2045;
      v25 = "%{public}s:%i ==== COMM ERROR ====";
      goto LABEL_296;
  }
}

void sub_297F9ADAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int *a5, int a6)
{
  v135 = *MEMORY[0x29EDCA608];
  if (!a6 || a3 == 16 || a3 == 27)
  {
    switch(a3)
    {
      case 2:
        if (a5[6] != 2)
        {
          goto LABEL_147;
        }

        v11 = *(a5 + 2);
        if (!v11)
        {
          goto LABEL_147;
        }

        v12 = *v11;
        v13 = v11[1];
        v14 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (v12 == 3)
        {
          if (v13 == 11)
          {
            if (Logger)
            {
              Logger(5, "%s:%i ProhibitTimer.Host.Start", "_NFDriverLogHostProhibitTimerSignpost", 2869);
            }

            dispatch_get_specific(*v14);
            v16 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_147;
            }

            *buf = 136446466;
            *&buf[4] = "_NFDriverLogHostProhibitTimerSignpost";
            *&buf[12] = 1024;
            *&buf[14] = 2869;
            v17 = "%{public}s:%i ProhibitTimer.Host.Start";
          }

          else
          {
            if (Logger)
            {
              Logger(5, "%s:%i ProhibitTimer.SE.Start", "_NFDriverLogHostProhibitTimerSignpost", 2871);
            }

            dispatch_get_specific(*v14);
            v16 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_147;
            }

            *buf = 136446466;
            *&buf[4] = "_NFDriverLogHostProhibitTimerSignpost";
            *&buf[12] = 1024;
            *&buf[14] = 2871;
            v17 = "%{public}s:%i ProhibitTimer.SE.Start";
          }
        }

        else if (v13 == 11)
        {
          if (Logger)
          {
            Logger(5, "%s:%i ProhibitTimer.Host.End", "_NFDriverLogHostProhibitTimerSignpost", 2875);
          }

          dispatch_get_specific(*v14);
          v16 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_147;
          }

          *buf = 136446466;
          *&buf[4] = "_NFDriverLogHostProhibitTimerSignpost";
          *&buf[12] = 1024;
          *&buf[14] = 2875;
          v17 = "%{public}s:%i ProhibitTimer.Host.End";
        }

        else
        {
          if (Logger)
          {
            Logger(5, "%s:%i ProhibitTimer.SE.End", "_NFDriverLogHostProhibitTimerSignpost", 2877);
          }

          dispatch_get_specific(*v14);
          v16 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_147;
          }

          *buf = 136446466;
          *&buf[4] = "_NFDriverLogHostProhibitTimerSignpost";
          *&buf[12] = 1024;
          *&buf[14] = 2877;
          v17 = "%{public}s:%i ProhibitTimer.SE.End";
        }

        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0x12u);
LABEL_147:
        if (a5[2])
        {
          v94 = NFDataCreateWithBytes();
        }

        else
        {
          v94 = 0;
        }

        if (a5[6])
        {
          v95 = NFDataCreateWithBytes();
        }

        else
        {
          v95 = 0;
        }

        v35 = *(*(a2 + 24) + 568);
        v125[0] = MEMORY[0x29EDCA5F8];
        v125[1] = 0x40000000;
        v125[2] = sub_297FBEC1C;
        v125[3] = &unk_29EE88478;
        v125[4] = a2;
        v125[5] = v94;
        v125[6] = v95;
        v29 = v125;
        goto LABEL_154;
      case 4:
        v30 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v31 = NFLogGetLogger();
        if (v31)
        {
          v31(6, "%s:%i SE Restricted Mode Enable! OS_ID = %d", "_Callback_NFDriverNotifySE", 2957, a5[8]);
        }

        dispatch_get_specific(*v30);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = a5[8];
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifySE";
          *&buf[12] = 1024;
          *&buf[14] = 2957;
          *&buf[18] = 1024;
          *&buf[20] = v33;
          _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE Restricted Mode Enable! OS_ID = %d", buf, 0x18u);
        }

        v28 = *(*(a2 + 24) + 568);
        v124[0] = MEMORY[0x29EDCA5F8];
        v124[1] = 0x40000000;
        v124[2] = sub_297FBEC80;
        v124[3] = &unk_29EE88498;
        v124[4] = a2;
        v124[5] = a4;
        v124[6] = a5;
        v29 = v124;
        goto LABEL_155;
      case 5:
        kdebug_trace();
        v36 = NFSharedSignpostLog();
        if (os_signpost_enabled(v36))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_297F97000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FIELD_ON", &unk_297FE9C47, buf, 2u);
        }

        v28 = *(*(a2 + 24) + 568);
        v128[0] = MEMORY[0x29EDCA5F8];
        v128[1] = 0x40000000;
        v128[2] = sub_297F9C410;
        v128[3] = &unk_29EE88418;
        v128[4] = a2;
        v29 = v128;
        goto LABEL_155;
      case 6:
        kdebug_trace();
        v40 = NFSharedSignpostLog();
        if (os_signpost_enabled(v40))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_297F97000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FIELD_OFF", &unk_297FE9C47, buf, 2u);
        }

        v28 = *(*(a2 + 24) + 568);
        v127[0] = MEMORY[0x29EDCA5F8];
        v127[1] = 0x40000000;
        v127[2] = sub_297FBEB94;
        v127[3] = &unk_29EE88438;
        v127[4] = a2;
        v29 = v127;
        goto LABEL_155;
      case 10:
      case 11:
      case 15:
        return;
      case 14:
        if (a5[2])
        {
          v41 = NFDataCreateWithBytes();
        }

        else
        {
          v41 = 0;
        }

        v35 = *(*(a2 + 24) + 568);
        v126[0] = MEMORY[0x29EDCA5F8];
        v126[1] = 0x40000000;
        v126[2] = sub_297FBEBC0;
        v126[3] = &unk_29EE88458;
        v126[4] = a2;
        v126[5] = v41;
        v29 = v126;
        goto LABEL_154;
      case 16:
        if (a5)
        {
          v47 = *a5;
          v48 = *(a5 + 4);
        }

        else
        {
          v47 = 0;
          v48 = 0;
        }

        v75 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v76 = NFLogGetLogger();
        if (v76)
        {
          v76(6, "%s:%i Got SE Removed with status %d", "_Callback_NFDriverNotifySE", 3012, a6);
        }

        dispatch_get_specific(*v75);
        v77 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifySE";
          *&buf[12] = 1024;
          *&buf[14] = 3012;
          *&buf[18] = 1024;
          *&buf[20] = a6;
          _os_log_impl(&dword_297F97000, v77, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Got SE Removed with status %d", buf, 0x18u);
        }

        v78 = *(*(a2 + 24) + 528);
        if (v78)
        {
          v79 = *(v78 + 8);
        }

        else
        {
          v79 = 0;
        }

        dispatch_get_specific(*v75);
        v80 = NFLogGetLogger();
        if (v79 == a4)
        {
          if (v80)
          {
            v80(3, "%s:%i Embedded SE removed: reason=0x%02x, other=0x%02x", "_Callback_NFDriverNotifySE", 3017, v47, v48);
          }

          dispatch_get_specific(*v75);
          v83 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            *&buf[4] = "_Callback_NFDriverNotifySE";
            *&buf[12] = 1024;
            *&buf[14] = 3017;
            *&buf[18] = 1024;
            *&buf[20] = v47;
            *v134 = 1024;
            *&v134[2] = v48;
            _os_log_impl(&dword_297F97000, v83, OS_LOG_TYPE_ERROR, "%{public}s:%i Embedded SE removed: reason=0x%02x, other=0x%02x", buf, 0x1Eu);
          }

          v82 = 1;
        }

        else
        {
          if (v80)
          {
            v80(3, "%s:%i Unknown SE removed: reason=0x%02x, other=0x%02x", "_Callback_NFDriverNotifySE", 3020, v47, v48);
          }

          dispatch_get_specific(*v75);
          v81 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            *&buf[4] = "_Callback_NFDriverNotifySE";
            *&buf[12] = 1024;
            *&buf[14] = 3020;
            *&buf[18] = 1024;
            *&buf[20] = v47;
            *v134 = 1024;
            *&v134[2] = v48;
            _os_log_impl(&dword_297F97000, v81, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown SE removed: reason=0x%02x, other=0x%02x", buf, 0x1Eu);
          }

          v82 = 0;
        }

        if (a6 > 130)
        {
          if (a6 != 255)
          {
            if (a6 == 131)
            {
              v84 = *(a2 + 24);
              *(v84 + 763) = 1;
              if (*(v84 + 764) == 1)
              {
                sub_297FBA53C(a2);
                postAnalyticsMainSERemovedEvent();
              }

              return;
            }

            goto LABEL_158;
          }
        }

        else
        {
          if (!a6)
          {
            if (*(*(a2 + 24) + 764) == 1)
            {
              sub_297FBA53C(a2);
              postAnalyticsMainSERemovedEvent();
            }

LABEL_158:
            NFDriverDumpUART(a2);
            v28 = *(*(a2 + 24) + 568);
            v118[0] = MEMORY[0x29EDCA5F8];
            v118[1] = 0x40000000;
            v118[2] = sub_297FBEF18;
            v118[3] = &unk_29EE88518;
            v118[4] = a2;
            v119 = v82;
            v120 = v47;
            v29 = v118;
LABEL_155:
            dispatch_async(v28, v29);
            return;
          }

          if (a6 != 66)
          {
            goto LABEL_158;
          }
        }

        NFDriverDumpUART(a2);
        NFDriverSimulateCrash(a2, 57005, "SE Recovery Failed");
        return;
      case 17:
        v28 = *(*(a2 + 24) + 568);
        v122[0] = MEMORY[0x29EDCA5F8];
        v122[1] = 0x40000000;
        v122[2] = sub_297FBEE5C;
        v122[3] = &unk_29EE884D8;
        v122[4] = a2;
        v29 = v122;
        goto LABEL_155;
      case 18:
        v28 = *(*(a2 + 24) + 568);
        v121[0] = MEMORY[0x29EDCA5F8];
        v121[1] = 0x40000000;
        v121[2] = sub_297FBEE84;
        v121[3] = &unk_29EE884F8;
        v121[4] = a2;
        v29 = v121;
        goto LABEL_155;
      case 19:
        v37 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v38 = NFLogGetLogger();
        if (v38)
        {
          v38(6, "%s:%i NFCEE powered off", "_Callback_NFDriverNotifySE", 3005);
        }

        dispatch_get_specific(*v37);
        v39 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifySE";
        *&buf[12] = 1024;
        *&buf[14] = 3005;
        v21 = "%{public}s:%i NFCEE powered off";
        v22 = v39;
        v23 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_69;
      case 20:
        if (!a5[2])
        {
          return;
        }

        v34 = NFDataCreateWithBytes();
        if (!v34)
        {
          return;
        }

        v35 = *(*(a2 + 24) + 568);
        v113[0] = MEMORY[0x29EDCA5F8];
        v113[1] = 0x40000000;
        v113[2] = sub_297FBF164;
        v113[3] = &unk_29EE88578;
        v113[4] = a2;
        v113[5] = v34;
        v29 = v113;
LABEL_154:
        v28 = v35;
        goto LABEL_155;
      case 21:
        v28 = *(*(a2 + 24) + 568);
        v114[0] = MEMORY[0x29EDCA5F8];
        v114[1] = 0x40000000;
        v114[2] = sub_297FBF13C;
        v114[3] = &unk_29EE88558;
        v114[4] = a2;
        v29 = v114;
        goto LABEL_155;
      case 23:
        v42 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v43 = NFLogGetLogger();
        if (v43)
        {
          v43(6, "%s:%i SE Restricted Mode Exit! OS_ID = %d", "_Callback_NFDriverNotifySE", 2973, a5[8]);
        }

        dispatch_get_specific(*v42);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = a5[8];
          *buf = 136446722;
          *&buf[4] = "_Callback_NFDriverNotifySE";
          *&buf[12] = 1024;
          *&buf[14] = 2973;
          *&buf[18] = 1024;
          *&buf[20] = v45;
          _os_log_impl(&dword_297F97000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE Restricted Mode Exit! OS_ID = %d", buf, 0x18u);
        }

        v28 = *(*(a2 + 24) + 568);
        v123[0] = MEMORY[0x29EDCA5F8];
        v123[1] = 0x40000000;
        v123[2] = sub_297FBEDF8;
        v123[3] = &unk_29EE884B8;
        v123[4] = a2;
        v123[5] = a5;
        v29 = v123;
        goto LABEL_155;
      case 24:
        v109 = 0;
        v110 = &v109;
        v111 = 0x2000000000;
        v112 = 0;
        v46 = *a5;
        if (*a5 > 3)
        {
          if (v46 != 4 && v46 != 5)
          {
            if (v46 == 6)
            {
              v61 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v62 = NFLogGetLogger();
              if (v62)
              {
                v62(6, "%s:%i unknown express mode type (%d)", "_Callback_NFDriverNotifySE", 3197, *a5);
              }

              dispatch_get_specific(*v61);
              v63 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v64 = *a5;
                *buf = 136446722;
                *&buf[4] = "_Callback_NFDriverNotifySE";
                *&buf[12] = 1024;
                *&buf[14] = 3197;
                *&buf[18] = 1024;
                *&buf[20] = v64;
                _os_log_impl(&dword_297F97000, v63, OS_LOG_TYPE_DEFAULT, "%{public}s:%i unknown express mode type (%d)", buf, 0x18u);
              }

              *(v110 + 6) = 0;
            }

LABEL_93:
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3800000000;
            v105 = 0;
            v106 = &v105;
            v107 = 0x2000000000;
            v108 = 0;
            *v134 = *(a5 + 2);
            *&v134[16] = *(a5 + 6);
            *&v134[8] = 0;
            *&v134[16] = 0;
            v71 = a5[6];
            if (v71)
            {
              v72 = malloc_type_calloc(1uLL, v71, 0x347C4493uLL);
              v73 = *&buf[8];
              *(*&buf[8] + 32) = v72;
              if (v72)
              {
                v74 = a5[6];
                *(v73 + 40) = v74;
                memcpy(v72, *(a5 + 2), v74);
              }

              else
              {
                v85 = MEMORY[0x29EDC9730];
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v86 = NFLogGetLogger();
                if (v86)
                {
                  v86(3, "%s:%i No memory available", "_Callback_NFDriverNotifySE", 3224);
                }

                dispatch_get_specific(*v85);
                v87 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                {
                  *v129 = 136446466;
                  v130 = "_Callback_NFDriverNotifySE";
                  v131 = 1024;
                  v132 = 3224;
                  _os_log_impl(&dword_297F97000, v87, OS_LOG_TYPE_ERROR, "%{public}s:%i No memory available", v129, 0x12u);
                }
              }
            }

            v88 = *&buf[8];
            v89 = v106;
            v90 = v106[3] & 0xFE | (*(*&buf[8] + 24) >> 1) & 1;
            *(v106 + 24) = v90;
            v91 = v90 & 0xFFFFFFFD | (2 * ((*(v88 + 24) >> 2) & 1));
            *(v89 + 24) = v91;
            v92 = v91 & 0xFFFFFFFB | (4 * ((*(v88 + 24) >> 3) & 1));
            *(v89 + 24) = v92;
            LOBYTE(v92) = v92 & 0xF7 | (8 * (*(v88 + 24) & 1));
            *(v89 + 24) = v92;
            *(v89 + 24) = v92 & 0xEF | (*(v88 + 24) >> 4) & 0x10;
            *(v89 + 13) = *(v88 + 48);
            v93 = *(*(a2 + 24) + 568);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 0x40000000;
            block[2] = sub_297FBF1C8;
            block[3] = &unk_29EE885A0;
            block[4] = &v109;
            block[5] = &v105;
            block[6] = buf;
            block[7] = a2;
            dispatch_async(v93, block);
            _Block_object_dispose(&v105, 8);
            _Block_object_dispose(buf, 8);
            _Block_object_dispose(&v109, 8);
            return;
          }
        }

        else
        {
          if (v46 == 1)
          {
LABEL_92:
            v112 = v46;
            goto LABEL_93;
          }

          if (v46 != 2)
          {
            if (v46 != 3)
            {
              goto LABEL_93;
            }

            if ((*(*(a2 + 24) + 692) & 8) != 0)
            {
              v46 = 32;
            }

            else
            {
              v46 = 4;
            }

            goto LABEL_92;
          }
        }

        v46 = 2;
        goto LABEL_92;
      case 25:
        v54 = *a5;
        v55 = *(a5 + 4);
        LOWORD(v109) = *(a5 + 5);
        BYTE2(v109) = *(a5 + 7);
        if (v54 != 255)
        {
          v66 = a5[2];
          v65 = a5[3];
          if (v66 == 1)
          {
            v67 = 2;
          }

          else
          {
            v67 = v66 == 0;
          }

          v68 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v69 = NFLogGetLogger();
          if (v69)
          {
            v69(6, "%s:%i SE reader mode event : {se=0x%x, startEnd=%d, poll=0x%x, protocol=0x%x}", "_Callback_NFDriverNotifySE", 3265, v55, v54, v66, v65);
          }

          dispatch_get_specific(*v68);
          v70 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447490;
            *&buf[4] = "_Callback_NFDriverNotifySE";
            *&buf[12] = 1024;
            *&buf[14] = 3265;
            *&buf[18] = 1024;
            *&buf[20] = v55;
            *v134 = 1024;
            *&v134[2] = v54;
            *&v134[6] = 1024;
            *&v134[8] = v66;
            *&v134[12] = 1024;
            *&v134[14] = v65;
            _os_log_impl(&dword_297F97000, v70, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE reader mode event : {se=0x%x, startEnd=%d, poll=0x%x, protocol=0x%x}", buf, 0x2Au);
          }

          v28 = *(*(a2 + 24) + 568);
          v96[0] = MEMORY[0x29EDCA5F8];
          v96[1] = 0x40000000;
          v96[2] = sub_297FBF250;
          v96[3] = &unk_29EE885C0;
          v96[4] = a2;
          v97 = v54;
          v98 = v55;
          v99 = v109;
          v100 = BYTE2(v109);
          v101 = v66;
          v102 = v65;
          v103 = v67;
          v29 = v96;
          goto LABEL_155;
        }

        v56 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v57 = NFLogGetLogger();
        if (v57)
        {
          v57(3, "%s:%i Error : invalid reader event", "_Callback_NFDriverNotifySE", 3259);
        }

        dispatch_get_specific(*v56);
        v27 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifySE";
        *&buf[12] = 1024;
        *&buf[14] = 3259;
        v21 = "%{public}s:%i Error : invalid reader event";
LABEL_68:
        v22 = v27;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_69:
        v24 = 18;
        goto LABEL_74;
      case 27:
        v49 = *a5;
        v50 = *(a5 + 4);
        v51 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v52 = NFLogGetLogger();
        if (v52)
        {
          v52(3, "%s:%i OS %d removed for reason 0x%x", "_Callback_NFDriverNotifySE", 3080, v49, v50);
        }

        dispatch_get_specific(*v51);
        v53 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          *&buf[4] = "_Callback_NFDriverNotifySE";
          *&buf[12] = 1024;
          *&buf[14] = 3080;
          *&buf[18] = 1024;
          *&buf[20] = v49;
          *v134 = 1024;
          *&v134[2] = v50;
          _os_log_impl(&dword_297F97000, v53, OS_LOG_TYPE_ERROR, "%{public}s:%i OS %d removed for reason 0x%x", buf, 0x1Eu);
        }

        if (v49 > 2)
        {
          return;
        }

        v28 = *(*(a2 + 24) + 568);
        v115[0] = MEMORY[0x29EDCA5F8];
        v115[1] = 0x40000000;
        v115[2] = sub_297FBF108;
        v115[3] = &unk_29EE88538;
        v115[4] = a2;
        v116 = v49;
        v117 = v50;
        v29 = v115;
        goto LABEL_155;
      case 28:
        v25 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v26(3, "%s:%i SMB Tx Blocked!", "_Callback_NFDriverNotifySE", 3103);
        }

        dispatch_get_specific(*v25);
        v27 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 136446466;
        *&buf[4] = "_Callback_NFDriverNotifySE";
        *&buf[12] = 1024;
        *&buf[14] = 3103;
        v21 = "%{public}s:%i SMB Tx Blocked!";
        goto LABEL_68;
      default:
        v58 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v59 = NFLogGetLogger();
        if (v59)
        {
          v59(5, "%s:%i Unexpected event: %x", "_Callback_NFDriverNotifySE", 3283, a3);
        }

        dispatch_get_specific(*v58);
        v60 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 136446722;
        *&buf[4] = "_Callback_NFDriverNotifySE";
        *&buf[12] = 1024;
        *&buf[14] = 3283;
        *&buf[18] = 1024;
        *&buf[20] = a3;
        v21 = "%{public}s:%i Unexpected event: %x";
        v22 = v60;
        v23 = OS_LOG_TYPE_DEFAULT;
        v24 = 24;
        goto LABEL_74;
    }
  }

  v18 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(5, "%s:%i status=0x%04X for event %d", "_Callback_NFDriverNotifySE", 2887, a6, a3);
  }

  dispatch_get_specific(*v18);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    *&buf[4] = "_Callback_NFDriverNotifySE";
    *&buf[12] = 1024;
    *&buf[14] = 2887;
    *&buf[18] = 1024;
    *&buf[20] = a6;
    *v134 = 1024;
    *&v134[2] = a3;
    v21 = "%{public}s:%i status=0x%04X for event %d";
    v22 = v20;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 30;
LABEL_74:
    _os_log_impl(&dword_297F97000, v22, v23, v21, buf, v24);
  }
}

uint64_t sub_297F9C410(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (*(v1 + 762) == 1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return v2(*(v1 + 272), 1);
    }
  }

  return result;
}

void NFDriverSetTemporaryPollingPeriod(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Setting polling period to %u", "NFDriverSetTemporaryPollingPeriod", 10085, a2);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v8 = "NFDriverSetTemporaryPollingPeriod";
      v9 = 1024;
      v10 = 10085;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Setting polling period to %u", buf, 0x18u);
    }

    *(*(a1 + 24) + 736) = a2;
  }
}

BOOL NFDriverSetConfiguration(uint64_t a1, char *a2, unint64_t *a3)
{
  v126 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = a2[8];
  v8 = a2[16];
  v9 = *(a2 + 3);
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  if (a3)
  {
    v10 = *a3;
    v104 = v10;
    v105 = *(a3 + 2);
    v11 = HIDWORD(v10);
  }

  else
  {
    LODWORD(v11) = 0;
    LODWORD(v10) = 0;
  }

  v13 = v10 == 2 || v11 == 2;
  if (v6 - 1 >= 2)
  {
    if (v6)
    {
      v103 = 0;
      goto LABEL_16;
    }

    v14 = *(a1 + 32) != 0;
  }

  else
  {
    v14 = 1;
  }

  v103 = v14;
LABEL_16:
  if (*(a1 + 57))
  {
    if (v13)
    {
      v101 = *(a2 + 3);
      if (!v101)
      {
        v27 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Missing CE interface type", "NFDriverSetConfiguration", 5529);
        }

        dispatch_get_specific(*v27);
        v17 = NFSharedLogGetLogger();
        result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverSetConfiguration";
          *&buf[12] = 1024;
          *&buf[14] = 5529;
          v19 = "%{public}s:%i Missing CE interface type";
          goto LABEL_33;
        }

        return result;
      }

      if (v8)
      {
        v15 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v16 = NFLogGetLogger();
        if (v16)
        {
          v16(3, "%s:%i CE and Reader not allowed at the same time", "NFDriverSetConfiguration", 5541);
        }

        dispatch_get_specific(*v15);
        v17 = NFSharedLogGetLogger();
        result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverSetConfiguration";
          *&buf[12] = 1024;
          *&buf[14] = 5541;
          v19 = "%{public}s:%i CE and Reader not allowed at the same time";
LABEL_33:
          _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x12u);
          return 0;
        }

        return result;
      }

      v94 = v9;
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v94 = v9;
      v101 = 0;
      v7 &= v8 ^ 1;
      if (v8)
      {
        v6 = 1;
      }

      v25 = (v8 ^ 1) & v5;
      v26 = v8;
    }

    v100 = (v7 | v25) & 1;
    v29 = *(a1 + 60) != v100;
    v30 = *(a1 + 32);
    if (v30 != v6)
    {
      if (v6 == 2)
      {
        v31 = NFSharedSignpostLog();
        if (os_signpost_enabled(v31))
        {
          *buf = 0;
          v29 = 1;
          _os_signpost_emit_with_name_impl(&dword_297F97000, v31, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LPCDPolling", &unk_297FE9C47, buf, 2u);
          goto LABEL_56;
        }
      }

      else if (v30 == 2)
      {
        v32 = NFSharedSignpostLog();
        if (os_signpost_enabled(v32))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_297F97000, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LPCDPolling", &unk_297FE9C47, buf, 2u);
        }
      }

      v29 = 1;
    }

LABEL_56:
    v99 = v7 & 1;
    v34 = *(a1 + 61) != v99 || *(a1 + 36) != v13;
    v98 = v8 & 1;
    v96 = v7;
    if (*(a1 + 62) == v98)
    {
      v35 = 0;
      v36 = v34 || v29;
    }

    else
    {
      v37 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v38 = NFLogGetLogger();
      if (v38)
      {
        v38(6, "%s:%i ESE reader discovery change requested %d -> %d!", "NFDriverSetConfiguration", 5580, *(a1 + 62), v98);
      }

      dispatch_get_specific(*v37);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 62);
        *buf = 136446978;
        *&buf[4] = "NFDriverSetConfiguration";
        *&buf[12] = 1024;
        *&buf[14] = 5580;
        *&buf[18] = 1024;
        *&buf[20] = v40;
        *&buf[24] = 1024;
        *&buf[26] = v8 & 1;
        _os_log_impl(&dword_297F97000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ESE reader discovery change requested %d -> %d!", buf, 0x1Eu);
      }

      v35 = v26 ^ 1;
      v36 = 1;
    }

    v41 = *(a1 + 44);
    v97 = (a1 + 44);
    v95 = v26;
    if (v41 == v10 && *(a1 + 48) == v11)
    {
      v42 = 0;
    }

    else
    {
      if (v41 == 2)
      {
        v43 = 1;
      }

      else
      {
        v43 = v13;
      }

      if ((v43 & 1) != 0 || *(a1 + 48) == 2)
      {
        v42 = 1;
        v36 = 1;
      }

      else
      {
        v42 = 1;
      }
    }

    v44 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v45(6, "%s:%i wantsFieldDetect=%d wantsPolling=%d wantsExpress=%d eSE=%d host=%d ceType=%d, hasDiscoveryChanges=%d hasRoutingChanges=%d fullHCE=%d", "NFDriverSetConfiguration", 5604, v100, v6, v99, v10, v11, v101, v36 & 1, v42, BYTE1(v105));
    }

    dispatch_get_specific(*v44);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136448770;
      *&buf[4] = "NFDriverSetConfiguration";
      *&buf[12] = 1024;
      *&buf[14] = 5604;
      *&buf[18] = 1024;
      *&buf[20] = v100;
      *&buf[24] = 1024;
      *&buf[26] = v6;
      *&buf[30] = 1024;
      LODWORD(v117) = v99;
      WORD2(v117) = 1024;
      *(&v117 + 6) = v10;
      WORD5(v117) = 1024;
      HIDWORD(v117) = v11;
      v118 = 1024;
      v119 = v101;
      v120 = 1024;
      v121 = v36 & 1;
      v122 = 1024;
      v123 = v42;
      v124 = 1024;
      v125 = BYTE1(v105);
      _os_log_impl(&dword_297F97000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s:%i wantsFieldDetect=%d wantsPolling=%d wantsExpress=%d eSE=%d host=%d ceType=%d, hasDiscoveryChanges=%d hasRoutingChanges=%d fullHCE=%d", buf, 0x48u);
    }

    if ((v35 | v42 | v103))
    {
      if ((*(a1 + 60) & 1) != 0 || *(a1 + 32) || (*(a1 + 62) & 1) != 0 || *v97 == 2 || (v35 | v103) & 1 | (*(a1 + 48) == 2))
      {
        if (sub_297F9D8BC(a1, 0, 0, 0, 0, 0, 0))
        {
          if (*(a1 + 62) == 1)
          {
            dispatch_get_specific(*v44);
            v47 = NFLogGetLogger();
            if (v47)
            {
              v47(6, "%s:%i ESE Reader config %d -> %d", "NFDriverSetConfiguration", 5618, *(a1 + 62), 0);
            }

            dispatch_get_specific(*v44);
            v48 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v49 = *(a1 + 62);
              *buf = 136446978;
              *&buf[4] = "NFDriverSetConfiguration";
              *&buf[12] = 1024;
              *&buf[14] = 5618;
              *&buf[18] = 1024;
              *&buf[20] = v49;
              *&buf[24] = 1024;
              *&buf[26] = 0;
              _os_log_impl(&dword_297F97000, v48, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ESE Reader config %d -> %d", buf, 0x1Eu);
            }

            *(a1 + 62) = 0;
          }

          if ((NFProductHasNFCRadio() & v103) == 1)
          {
            if (v6 && v94)
            {
              v117 = 0u;
              memset(buf, 0, sizeof(buf));
              v51 = *v94;
              v50 = *(v94 + 8);
              dispatch_get_specific(*v44);
              v52 = NFLogGetLogger();
              dispatch_get_specific(*v44);
              v53 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = *(v94 + 8);
                *v108 = 136315906;
                v109 = "NFDriverSetConfiguration";
                v110 = 1024;
                v111 = 5634;
                v112 = 2082;
                v113 = "ECP Frame";
                v114 = 2048;
                v115 = v54;
                _os_log_impl(&dword_297F97000, v53, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", v108, 0x26u);
              }

              if (v52)
              {
                v52(6, "%s:%i %s %lu bytes :", "NFDriverSetConfiguration", 5634, "ECP Frame", *(v94 + 8));
              }

              if (v50)
              {
                v55 = 0;
                do
                {
                  v56 = 0;
                  v57 = &buf[__sprintf_chk(buf, 0, 0x30uLL, "%04lX: ", v55)];
                  do
                  {
                    v58 = *(v51 + v55++);
                    v59 = sprintf(v57, "0x%02X ", v58);
                    if (v56 > 6)
                    {
                      break;
                    }

                    v57 += v59;
                    ++v56;
                  }

                  while (v55 < v50);
                  dispatch_get_specific(*MEMORY[0x29EDC9730]);
                  v60 = NFSharedLogGetLogger();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *v108 = 136446210;
                    v109 = buf;
                    _os_log_impl(&dword_297F97000, v60, OS_LOG_TYPE_DEFAULT, "%{public}s", v108, 0xCu);
                  }

                  if (v52)
                  {
                    v52(6, "%s", buf);
                  }
                }

                while (v55 < v50);
              }

              v61 = NFDriverConfigureVASPolling(a1, *v94, *(v94 + 8));
              v44 = MEMORY[0x29EDC9730];
              if (!v61)
              {
LABEL_176:
                dispatch_get_specific(*v44);
                v87 = NFLogGetLogger();
                if (v87)
                {
                  v87(3, "%s:%i Failed to set ECP Frame", "NFDriverSetConfiguration", 5638);
                }

                dispatch_get_specific(*v44);
                v83 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  *&buf[4] = "NFDriverSetConfiguration";
                  *&buf[12] = 1024;
                  *&buf[14] = 5638;
                  v84 = "%{public}s:%i Failed to set ECP Frame";
                  goto LABEL_180;
                }

                goto LABEL_181;
              }
            }

            else if (!NFDriverConfigureVASPolling(a1, 0, 0))
            {
              goto LABEL_176;
            }
          }
        }

        else
        {
          dispatch_get_specific(*v44);
          v63 = NFLogGetLogger();
          if (v63)
          {
            v63(4, "%s:%i Failed to stop discovery", "NFDriverSetConfiguration", 5615);
          }

          dispatch_get_specific(*v44);
          v64 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "NFDriverSetConfiguration";
            *&buf[12] = 1024;
            *&buf[14] = 5615;
            _os_log_impl(&dword_297F97000, v64, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to stop discovery", buf, 0x12u);
          }
        }

        v36 = 1;
      }

      if (v13 && BYTE1(v105) == 1)
      {
        if (v96)
        {
          dispatch_get_specific(*v44);
          v65 = NFLogGetLogger();
          if (v65)
          {
            v65(4, "%s:%i ***WARNING*** Express mode is requested; express won't work under this config!!!", "NFDriverSetConfiguration", 5648);
          }

          dispatch_get_specific(*v44);
          v66 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "NFDriverSetConfiguration";
            *&buf[12] = 1024;
            *&buf[14] = 5648;
            _os_log_impl(&dword_297F97000, v66, OS_LOG_TYPE_ERROR, "%{public}s:%i ***WARNING*** Express mode is requested; express won't work under this config!!!", buf, 0x12u);
          }

          if (NFIsInternalBuild())
          {
            __assert_rtn("NFDriverSetConfiguration", "NFDriver.c", 5653, "false");
          }
        }

        dispatch_get_specific(*v44);
        v67 = NFLogGetLogger();
        if (v67)
        {
          v67(6, "%s:%i Enabling full HCE routing", "NFDriverSetConfiguration", 5656);
        }

        dispatch_get_specific(*v44);
        v68 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverSetConfiguration";
          *&buf[12] = 1024;
          *&buf[14] = 5656;
          _os_log_impl(&dword_297F97000, v68, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling full HCE routing", buf, 0x12u);
        }

        v62 = 1;
      }

      else
      {
        v62 = 0;
      }

      if (!sub_297FA075C(a1, &v104))
      {
        dispatch_get_specific(*v44);
        v82 = NFLogGetLogger();
        if (v82)
        {
          v82(3, "%s:%i Failed to set routing", "NFDriverSetConfiguration", 5661);
        }

        dispatch_get_specific(*v44);
        v83 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "NFDriverSetConfiguration";
          *&buf[12] = 1024;
          *&buf[14] = 5661;
          v84 = "%{public}s:%i Failed to set routing";
LABEL_180:
          _os_log_impl(&dword_297F97000, v83, OS_LOG_TYPE_ERROR, v84, buf, 0x12u);
        }

LABEL_181:
        if (sub_297F9D8BC(a1, 0, 0, 0, 0, 0, 0))
        {
          *(a1 + 60) = 0;
          *(a1 + 32) = 0;
          *(a1 + 65) = 0;
          dispatch_get_specific(*v44);
          v88 = NFLogGetLogger();
          if (v88)
          {
            v88(6, "%s:%i ESE reader config %d -> %d", "NFDriverSetConfiguration", 5718, *(a1 + 62), 0);
          }

          dispatch_get_specific(*v44);
          v89 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            v90 = *(a1 + 62);
            *buf = 136446978;
            *&buf[4] = "NFDriverSetConfiguration";
            *&buf[12] = 1024;
            *&buf[14] = 5718;
            *&buf[18] = 1024;
            *&buf[20] = v90;
            *&buf[24] = 1024;
            *&buf[26] = 0;
            _os_log_impl(&dword_297F97000, v89, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ESE reader config %d -> %d", buf, 0x1Eu);
          }

          *(a1 + 62) = 0;
        }

        else
        {
          dispatch_get_specific(*v44);
          v91 = NFLogGetLogger();
          if (v91)
          {
            v91(4, "%s:%i Failed to stop discovery", "NFDriverSetConfiguration", 5711);
          }

          dispatch_get_specific(*v44);
          v92 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "NFDriverSetConfiguration";
            *&buf[12] = 1024;
            *&buf[14] = 5711;
            _os_log_impl(&dword_297F97000, v92, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to stop discovery", buf, 0x12u);
          }
        }

        if (sub_297FA075C(a1, v97))
        {
          result = 0;
          *v97 = v106;
          *(a1 + 52) = v107;
        }

        else
        {
          dispatch_get_specific(*v44);
          v93 = NFLogGetLogger();
          if (v93)
          {
            v93(4, "%s:%i Failed to stop routing", "NFDriverSetConfiguration", 5724);
          }

          dispatch_get_specific(*v44);
          v17 = NFSharedLogGetLogger();
          result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 136446466;
            *&buf[4] = "NFDriverSetConfiguration";
            *&buf[12] = 1024;
            *&buf[14] = 5724;
            v19 = "%{public}s:%i Failed to stop routing";
            goto LABEL_33;
          }
        }

        return result;
      }

      *v97 = v104;
      *(a1 + 52) = v105;
      if ((v36 & 1) == 0)
      {
LABEL_151:
        v74 = *(a1 + 24);
        v75 = v74[88];
        if (*(a1 + 60) == 1)
        {
          if (v75)
          {
            goto LABEL_157;
          }

          v76 = mach_continuous_time();
          v74 = *(a1 + 24);
        }

        else
        {
          if (!v75)
          {
            goto LABEL_157;
          }

          mach_continuous_time();
          ElapsedTimeInMillisecondsFromMachTime = GetElapsedTimeInMillisecondsFromMachTime();
          v76 = 0;
          v74 = *(a1 + 24);
          v74[89] += ElapsedTimeInMillisecondsFromMachTime;
        }

        v74[88] = v76;
LABEL_157:
        v78 = v74[90];
        if (*(a1 + 61) == 1)
        {
          if (!v78)
          {
            v79 = mach_continuous_time();
            v80 = *(a1 + 24);
LABEL_162:
            *(v80 + 720) = v79;
          }
        }

        else if (v78)
        {
          mach_continuous_time();
          v81 = GetElapsedTimeInMillisecondsFromMachTime();
          v79 = 0;
          v80 = *(a1 + 24);
          *(v80 + 728) += v81;
          goto LABEL_162;
        }

        return 1;
      }
    }

    else
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_151;
      }

      v62 = 0;
    }

    if (v95)
    {
      v69 = 1;
    }

    else
    {
      v69 = 2;
    }

    *(a1 + 65) = v62;
    if ((*(*(a1 + 24) + 584) & 0x20000000) != 0)
    {
      v70 = 0;
    }

    else
    {
      v70 = v100;
    }

    if (!sub_297F9D8BC(a1, v6, v101, v70, 0, v96 & 1, v69))
    {
      dispatch_get_specific(*v44);
      v85 = NFLogGetLogger();
      if (v85)
      {
        v85(3, "%s:%i Failed to update discovery", "NFDriverSetConfiguration", 5686);
      }

      dispatch_get_specific(*v44);
      v86 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "NFDriverSetConfiguration";
        *&buf[12] = 1024;
        *&buf[14] = 5686;
        _os_log_impl(&dword_297F97000, v86, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to update discovery", buf, 0x12u);
      }

      if (!((v6 != 0) | v13 & 1) && (v100 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_181;
    }

    *(a1 + 60) = v100;
    *(a1 + 32) = v6;
    *(a1 + 36) = v101;
    *(a1 + 61) = v99;
    if (*(a1 + 62) != v98)
    {
      dispatch_get_specific(*v44);
      v71 = NFLogGetLogger();
      if (v71)
      {
        v71(6, "%s:%i ESE reader config %d -> %d", "NFDriverSetConfiguration", 5697, *(a1 + 62), v98);
      }

      dispatch_get_specific(*v44);
      v72 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = *(a1 + 62);
        *buf = 136446978;
        *&buf[4] = "NFDriverSetConfiguration";
        *&buf[12] = 1024;
        *&buf[14] = 5697;
        *&buf[18] = 1024;
        *&buf[20] = v73;
        *&buf[24] = 1024;
        *&buf[26] = v98;
        _os_log_impl(&dword_297F97000, v72, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ESE reader config %d -> %d", buf, 0x1Eu);
      }

      *(a1 + 62) = v98;
    }

    goto LABEL_151;
  }

  v20 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v21 = NFLogGetLogger();
  if (v21)
  {
    v21(6, "%s:%i wantsFieldDetect=%d wantsPolling=%d wantsExpress=%d eSE=%d host=%d wantsEcpUpdate=%d", "NFDriverSetConfiguration", 5514, v5 & 1, v6, v7 & 1, v10, v11, v103);
  }

  v22 = v7;
  dispatch_get_specific(*v20);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448002;
    *&buf[4] = "NFDriverSetConfiguration";
    *&buf[12] = 1024;
    *&buf[14] = 5514;
    *&buf[18] = 1024;
    *&buf[20] = v5 & 1;
    *&buf[24] = 1024;
    *&buf[26] = v6;
    *&buf[30] = 1024;
    LODWORD(v117) = v22 & 1;
    WORD2(v117) = 1024;
    *(&v117 + 6) = v10;
    WORD5(v117) = 1024;
    HIDWORD(v117) = v11;
    v118 = 1024;
    v119 = v103;
    _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i wantsFieldDetect=%d wantsPolling=%d wantsExpress=%d eSE=%d host=%d wantsEcpUpdate=%d", buf, 0x36u);
  }

  if ((v13 & 1) == 0 && (v5 & 1) == 0 && (v8 & 1) == 0 && !v6 && (v22 & 1) == 0)
  {
    *(a1 + 44) = *a3;
    return 1;
  }

  dispatch_get_specific(*v20);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v24(3, "%s:%i Unable to do any RF operations. Returning false.", "NFDriverSetConfiguration", 5517);
  }

  dispatch_get_specific(*v20);
  v17 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    *&buf[4] = "NFDriverSetConfiguration";
    *&buf[12] = 1024;
    *&buf[14] = 5517;
    v19 = "%{public}s:%i Unable to do any RF operations. Returning false.";
    goto LABEL_33;
  }

  return result;
}

BOOL sub_297F9D8BC(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6, int a7)
{
  v34 = *MEMORY[0x29EDCA608];
  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i polling=%d emulation=%d field=%d express=%d resume=%d reader config=%d", "_Async_NFDriverConfigureDiscovery", 1001, a2, a3, a4, a6, a5, a7);
  }

  dispatch_get_specific(*v14);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136448002;
    *&buf[4] = "_Async_NFDriverConfigureDiscovery";
    *&buf[12] = 1024;
    *&buf[14] = 1001;
    *&buf[18] = 1024;
    *&buf[20] = a2;
    *&buf[24] = 1024;
    *&buf[26] = a3;
    *&buf[30] = 1024;
    LODWORD(v28) = a4;
    WORD2(v28) = 1024;
    *(&v28 + 6) = a6;
    WORD5(v28) = 1024;
    HIDWORD(v28) = a5;
    LOWORD(v29) = 1024;
    *(&v29 + 2) = a7;
    _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i polling=%d emulation=%d field=%d express=%d resume=%d reader config=%d", buf, 0x36u);
  }

  v17 = sub_297F9DC04();
  pthread_mutex_lock((v17[3] + 8));
  v18 = v17[3];
  ++*v18;
  pthread_mutex_unlock((v18 + 8));
  v19 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297F9DF54;
  *&buf[24] = &unk_29EE88AA8;
  *&v28 = a1;
  *(&v28 + 1) = v17;
  v29 = __PAIR64__(a3, a2);
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v30 = a7;
  dispatch_async_and_wait(v19, buf);
  v20 = sub_297F9F694(v17);
  if (v20)
  {
    dispatch_get_specific(*v14);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i status=0x%04llX", "_NFDriverConfigureDiscovery", 4156, *v17);
    }

    dispatch_get_specific(*v14);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = *v17;
      *buf = 136446722;
      *&buf[4] = "_NFDriverConfigureDiscovery";
      *&buf[12] = 1024;
      *&buf[14] = 4156;
      *&buf[18] = 2048;
      *&buf[20] = v23;
      _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
    }

    v24 = *(v17 + 6);
    v25 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FB7B1C;
    *&buf[24] = &unk_29EE880F8;
    *&v28 = a1;
    dispatch_async(v25, buf);
    if (v24 == 44 || v24 == 34)
    {
      NFDriverSimulateCrash(a1, 57005, "_NFDriverConfigureDiscovery: CRC error or response timeout");
    }
  }

  sub_297F9FBDC(v17);
  return v20 == 0;
}

void *sub_297F9DC04()
{
  v25 = *MEMORY[0x29EDCA608];
  v0 = malloc_type_calloc(1uLL, 0x20uLL, 0x10800402A1AAB09uLL);
  if (v0)
  {
    v1 = malloc_type_calloc(1uLL, 0xC8uLL, 0x1000040BEF03554uLL);
    if (!v1)
    {
      free(v0);
      return 0;
    }

    v2 = v1;
    *v0 = 0xBADCAFEF00DLL;
    *(v0 + 2) = -1;
    *(v0 + 6) = -1;
    v0[3] = v1;
    *v1 = 1;
    v3 = (v1 + 136);
    v4 = pthread_mutex_init((v1 + 136), 0);
    if (v4)
    {
      v5 = v4;
      free(v2);
      free(v0);
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Mutex init failed : %d", "NFCallbackMutexCreate", 67, v5);
      }

      dispatch_get_specific(*v6);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446722;
      v20 = "NFCallbackMutexCreate";
      v21 = 1024;
      v22 = 67;
      v23 = 1024;
      v24 = v5;
      v9 = "%{public}s:%i Mutex init failed : %d";
      goto LABEL_19;
    }

    v10 = pthread_mutex_init((v2 + 8), 0);
    if (v10)
    {
      v11 = v10;
      pthread_mutex_destroy(v3);
      free(v2);
      free(v0);
      v12 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(3, "%s:%i Mutex init failed : %d", "NFCallbackMutexCreate", 75, v11);
      }

      dispatch_get_specific(*v12);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446722;
      v20 = "NFCallbackMutexCreate";
      v21 = 1024;
      v22 = 75;
      v23 = 1024;
      v24 = v11;
      v9 = "%{public}s:%i Mutex init failed : %d";
      goto LABEL_19;
    }

    v14 = pthread_cond_init((v2 + 72), 0);
    if (v14)
    {
      v15 = v14;
      pthread_mutex_destroy((v2 + 8));
      pthread_mutex_destroy(v3);
      free(v2);
      free(v0);
      v16 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v17 = NFLogGetLogger();
      if (v17)
      {
        v17(3, "%s:%i Cond init failed : %d", "NFCallbackMutexCreate", 84, v15);
      }

      dispatch_get_specific(*v16);
      v8 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136446722;
      v20 = "NFCallbackMutexCreate";
      v21 = 1024;
      v22 = 84;
      v23 = 1024;
      v24 = v15;
      v9 = "%{public}s:%i Cond init failed : %d";
LABEL_19:
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x18u);
      return 0;
    }
  }

  return v0;
}

void sub_297F9DF54(uint64_t a1)
{
  v130 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v109 = *(a1 + 60);
  v110 = *(a1 + 52);
  v107 = *(a1 + 62);
  v4 = *(a1 + 56);
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  memset(v129, 0, sizeof(v129));
  if (!NF_isFeatureSupported())
  {
    goto LABEL_10;
  }

  if (!v4 && (*(v1 + 62) & 1) != 0)
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Marking ESE reader as disabled!", "_Dispatched_NFDriverConfigureDiscovery", 706);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v112 = "_Dispatched_NFDriverConfigureDiscovery";
      *v113 = 1024;
      *&v113[2] = 706;
      _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Marking ESE reader as disabled!", buf, 0x12u);
    }

    v8 = 1;
    goto LABEL_11;
  }

  if ((v4 | 2) == 2)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v30 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v31 = NFLogGetLogger();
  if (v31)
  {
    v31(6, "%s:%i Marking ESE reader as enabled!", "_Dispatched_NFDriverConfigureDiscovery", 712);
  }

  dispatch_get_specific(*v30);
  v32 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v112 = "_Dispatched_NFDriverConfigureDiscovery";
    *v113 = 1024;
    *&v113[2] = 712;
    _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Marking ESE reader as enabled!", buf, 0x12u);
  }

  v8 = 2;
LABEL_11:
  if (*(v1 + 56))
  {
LABEL_12:
    v9 = 0;
    goto LABEL_15;
  }

  if (*(*(v1 + 24) + 586))
  {
    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(6, "%s:%i LPCD force always OFF", "_Dispatched_NFDriverConfigureDiscovery", 727);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v112 = "_Dispatched_NFDriverConfigureDiscovery";
      *v113 = 1024;
      *&v113[2] = 727;
      _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i LPCD force always OFF", buf, 0x12u);
    }

    goto LABEL_12;
  }

  v9 = 1;
LABEL_15:
  if (v3 == 3)
  {
    v106 = v9;
    v10 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v11 = NFLogGetLogger();
    if (v11)
    {
      v11(6, "%s:%i Enabling multi tag polling!", "_Dispatched_NFDriverConfigureDiscovery", 734);
    }

    dispatch_get_specific(*v10);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v112 = "_Dispatched_NFDriverConfigureDiscovery";
      *v113 = 1024;
      *&v113[2] = 734;
      _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling multi tag polling!", buf, 0x12u);
    }

    v13 = *(v1 + 24);
    v14 = *(v13 + 688) & 0x1821;
    v108 = *(v13 + 740);
    if (v108 != 300)
    {
      dispatch_get_specific(*v10);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(6, "%s:%i Non-default polling period: %u", "_Dispatched_NFDriverConfigureDiscovery", 747, v108);
      }

      dispatch_get_specific(*v10);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v112 = "_Dispatched_NFDriverConfigureDiscovery";
        *v113 = 1024;
        *&v113[2] = 747;
        *&v113[6] = 1024;
        *&v113[8] = v108;
        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Non-default polling period: %u", buf, 0x18u);
      }
    }

    v17 = v14 | 0x40000;
    dispatch_get_specific(*v10);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v18(6, "%s:%i Enabling automatic multi-tag polling", "_Dispatched_NFDriverConfigureDiscovery", 751);
    }

    dispatch_get_specific(*v10);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v112 = "_Dispatched_NFDriverConfigureDiscovery";
      *v113 = 1024;
      *&v113[2] = 751;
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling automatic multi-tag polling", buf, 0x12u);
    }

    v105 = 1;
  }

  else if (v3)
  {
    if ((*(*(v1 + 24) + 585) & 0x10) != 0)
    {
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(6, "%s:%i LPCD force always ON", "_Dispatched_NFDriverConfigureDiscovery", 760);
      }

      dispatch_get_specific(*v23);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v112 = "_Dispatched_NFDriverConfigureDiscovery";
        *v113 = 1024;
        *&v113[2] = 760;
        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i LPCD force always ON", buf, 0x12u);
      }

      v9 = 1;
    }

    else if (v3 == 1)
    {
      v9 = 0;
    }

    if (v4 == 1 || v4 == 2 && (*(v1 + 62) & 1) != 0)
    {
      v26 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(6, "%s:%i ESE reader as config set (%d / %d)!", "_Dispatched_NFDriverConfigureDiscovery", 769, *(v1 + 62), v4);
      }

      dispatch_get_specific(*v26);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(v1 + 62);
        *buf = 136446978;
        v112 = "_Dispatched_NFDriverConfigureDiscovery";
        *v113 = 1024;
        *&v113[2] = 769;
        *&v113[6] = 1024;
        *&v113[8] = v29;
        *&v113[12] = 1024;
        *&v113[14] = v4;
        _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ESE reader as config set (%d / %d)!", buf, 0x1Eu);
      }

      BYTE4(v105) = 0;
      v106 = 0;
      v108 = *(*(v1 + 24) + 740);
      v17 = 262179;
    }

    else
    {
      v106 = v9;
      v33 = *(v1 + 24);
      v34 = *(v33 + 688) & 0x3983F;
      HIDWORD(v105) = *(v33 + 765);
      if (HIDWORD(v105) == 1)
      {
        v35 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v36(6, "%s:%i Frame RF INTF activated", "_Dispatched_NFDriverConfigureDiscovery", 802);
        }

        dispatch_get_specific(*v35);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v112 = "_Dispatched_NFDriverConfigureDiscovery";
          *v113 = 1024;
          *&v113[2] = 802;
          _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Frame RF INTF activated", buf, 0x12u);
        }

        v17 = v34 | 0x40002;
        v33 = *(v1 + 24);
      }

      else
      {
        v17 = v34 | 0x40000;
      }

      v38 = *(v33 + 736);
      if (!v38)
      {
        LOWORD(v38) = *(v33 + 740);
      }

      LOWORD(v108) = v38;
      v39 = v38;
      if (v38 != 300)
      {
        v40 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v41 = NFLogGetLogger();
        if (v41)
        {
          v41(6, "%s:%i Non-default polling period: %u", "_Dispatched_NFDriverConfigureDiscovery", 813, v39);
        }

        dispatch_get_specific(*v40);
        v42 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v112 = "_Dispatched_NFDriverConfigureDiscovery";
          *v113 = 1024;
          *&v113[2] = 813;
          *&v113[6] = 1024;
          *&v113[8] = v39;
          _os_log_impl(&dword_297F97000, v42, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Non-default polling period: %u", buf, 0x18u);
        }
      }
    }

    v43 = phLibNfc_RemoteDev_NtfRegister();
    if (v43)
    {
      v44 = v43;
      v45 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v46 = NFLogGetLogger();
      if (v46)
      {
        v46(3, "%s:%i status=0x%04X", "_Dispatched_NFDriverConfigureDiscovery", 838, v44);
      }

      dispatch_get_specific(*v45);
      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v112 = "_Dispatched_NFDriverConfigureDiscovery";
        *v113 = 1024;
        *&v113[2] = 838;
        *&v113[6] = 1024;
        *&v113[8] = v44;
        _os_log_impl(&dword_297F97000, v47, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
      }

      sub_297FBE498(*(*(v1 + 24) + 576), 0, (v2 + 12), (v2 + 8));
      sub_297F9FB20(v2, v44);
    }

    LOBYTE(v105) = 0;
  }

  else
  {
    v106 = v9;
    v105 = 0;
    LOWORD(v108) = 0;
    v17 = 0x40000;
  }

  if (v110)
  {
    v17 &= 0x3FFFFu;
    v48 = *(*(v1 + 24) + 584);
    v49 = (v48 >> 5) & 0xB;
    if (v49 > 7)
    {
      v54 = MEMORY[0x29EDC9730];
      if (((v48 >> 5) & 0xB) > 9)
      {
        if (v49 == 10)
        {
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v61 = NFLogGetLogger();
          if (v61)
          {
            v61(4, "%s:%i Types-BF only", "_Dispatched_NFDriverConfigureDiscovery", 870);
          }

          dispatch_get_specific(*v54);
          v62 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v112 = "_Dispatched_NFDriverConfigureDiscovery";
            *v113 = 1024;
            *&v113[2] = 870;
            _os_log_impl(&dword_297F97000, v62, OS_LOG_TYPE_ERROR, "%{public}s:%i Types-BF only", buf, 0x12u);
          }

          v57 = 6;
        }

        else
        {
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v70 = NFLogGetLogger();
          if (v70)
          {
            v70(4, "%s:%i Types-ABF only", "_Dispatched_NFDriverConfigureDiscovery", 874);
          }

          dispatch_get_specific(*v54);
          v71 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v112 = "_Dispatched_NFDriverConfigureDiscovery";
            *v113 = 1024;
            *&v113[2] = 874;
            _os_log_impl(&dword_297F97000, v71, OS_LOG_TYPE_ERROR, "%{public}s:%i Types-ABF only", buf, 0x12u);
          }

          v57 = 15;
        }
      }

      else if (v49 == 8)
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v55 = NFLogGetLogger();
        if (v55)
        {
          v55(4, "%s:%i Type-F only", "_Dispatched_NFDriverConfigureDiscovery", 858);
        }

        dispatch_get_specific(*v54);
        v56 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v112 = "_Dispatched_NFDriverConfigureDiscovery";
          *v113 = 1024;
          *&v113[2] = 858;
          _os_log_impl(&dword_297F97000, v56, OS_LOG_TYPE_ERROR, "%{public}s:%i Type-F only", buf, 0x12u);
        }

        v57 = 4;
      }

      else
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v66 = NFLogGetLogger();
        if (v66)
        {
          v66(4, "%s:%i Types-AF only", "_Dispatched_NFDriverConfigureDiscovery", 866);
        }

        dispatch_get_specific(*v54);
        v67 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v112 = "_Dispatched_NFDriverConfigureDiscovery";
          *v113 = 1024;
          *&v113[2] = 866;
          _os_log_impl(&dword_297F97000, v67, OS_LOG_TYPE_ERROR, "%{public}s:%i Types-AF only", buf, 0x12u);
        }

        v57 = 5;
      }
    }

    else if (((v48 >> 5) & 0xB) > 1)
    {
      v58 = MEMORY[0x29EDC9730];
      if (v49 == 2)
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v59 = NFLogGetLogger();
        if (v59)
        {
          v59(4, "%s:%i Type-B only", "_Dispatched_NFDriverConfigureDiscovery", 854);
        }

        dispatch_get_specific(*v58);
        v60 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v112 = "_Dispatched_NFDriverConfigureDiscovery";
          *v113 = 1024;
          *&v113[2] = 854;
          _os_log_impl(&dword_297F97000, v60, OS_LOG_TYPE_ERROR, "%{public}s:%i Type-B only", buf, 0x12u);
        }

        v57 = 2;
      }

      else
      {
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v68 = NFLogGetLogger();
        if (v68)
        {
          v68(4, "%s:%i Types-AB only", "_Dispatched_NFDriverConfigureDiscovery", 862);
        }

        dispatch_get_specific(*v58);
        v69 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v112 = "_Dispatched_NFDriverConfigureDiscovery";
          *v113 = 1024;
          *&v113[2] = 862;
          _os_log_impl(&dword_297F97000, v69, OS_LOG_TYPE_ERROR, "%{public}s:%i Types-AB only", buf, 0x12u);
        }

        v57 = 3;
      }
    }

    else if (v49)
    {
      v63 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v64 = NFLogGetLogger();
      if (v64)
      {
        v64(4, "%s:%i Type-A only", "_Dispatched_NFDriverConfigureDiscovery", 850);
      }

      dispatch_get_specific(*v63);
      v65 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v112 = "_Dispatched_NFDriverConfigureDiscovery";
        *v113 = 1024;
        *&v113[2] = 850;
        _os_log_impl(&dword_297F97000, v65, OS_LOG_TYPE_ERROR, "%{public}s:%i Type-A only", buf, 0x12u);
      }

      v57 = 1;
    }

    else
    {
      v50 = v110 & 1;
      if ((v110 & 2) != 0)
      {
        if ((v48 & 0x100000000) != 0 || (*(v1 + 59) & 1) == 0)
        {
          v50 |= 2u;
        }

        else
        {
          v51 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v52 = NFLogGetLogger();
          if (v52)
          {
            v52(6, "%s:%i Type-B disabled", "_Dispatched_NFDriverConfigureDiscovery", 884);
          }

          dispatch_get_specific(*v51);
          v53 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v112 = "_Dispatched_NFDriverConfigureDiscovery";
            *v113 = 1024;
            *&v113[2] = 884;
            _os_log_impl(&dword_297F97000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Type-B disabled", buf, 0x12u);
          }
        }
      }

      v57 = v50 | v110 & 4;
    }

    v104 = v57;
  }

  else
  {
    v104 = 0;
  }

  if (v109)
  {
    v17 |= 0x80000u;
  }

  v72 = v3;
  if (NF_isFeatureSupported() && v107)
  {
    v73 = *(*(v1 + 24) + 692);
    if (*(v1 + 63) == 1)
    {
      if ((*(*(v1 + 24) + 692) & 8) != 0)
      {
        v76 = v17 & 0x7FFFF;
        v77 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v78 = NFLogGetLogger();
        if (v78)
        {
          v78(5, "%s:%i Disabling field detection for Single Poll express", "_Dispatched_NFDriverConfigureDiscovery", 912);
        }

        v102 = v76;
        dispatch_get_specific(*v77);
        v79 = NFSharedLogGetLogger();
        v74 = v2;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v112 = "_Dispatched_NFDriverConfigureDiscovery";
          *v113 = 1024;
          *&v113[2] = 912;
          _os_log_impl(&dword_297F97000, v79, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Disabling field detection for Single Poll express", buf, 0x12u);
        }

        v75 = 8;
      }

      else
      {
        v102 = v17;
        v74 = v2;
        v75 = v73 & 0xF;
      }
    }

    else
    {
      v102 = v17;
      v74 = v2;
      v75 = v73 & 7;
    }

    v80 = *(v1 + 24);
    if ((*(v80 + 584) & 0x400) != 0)
    {
      v81 = 16;
    }

    else
    {
      v81 = *(v80 + 692) & 0x10;
    }

    v103 = v81 | v75;
    v82 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v83 = NFLogGetLogger();
    v84 = v81 >> 4;
    if (v83)
    {
      v83(6, "%s:%i Enabling express: transit=%d vas=%d generic-a=%d single_poll=%d debug=%d block=%d ", "_Dispatched_NFDriverConfigureDiscovery", 932, v75 & 1, (v75 >> 1) & 1, (v75 >> 2) & 1, v75 >> 3, v84, 0);
    }

    dispatch_get_specific(*v82);
    v85 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136448002;
      v112 = "_Dispatched_NFDriverConfigureDiscovery";
      *v113 = 1024;
      *&v113[2] = 932;
      *&v113[6] = 1024;
      *&v113[8] = v75 & 1;
      *&v113[12] = 1024;
      *&v113[14] = (v75 >> 1) & 1;
      *&v113[18] = 1024;
      *&v113[20] = (v75 >> 2) & 1;
      *&v113[24] = 1024;
      *&v113[26] = v75 >> 3;
      *&v113[30] = 1024;
      *&v113[32] = v84;
      *&v113[36] = 1024;
      *&v113[38] = 0;
      _os_log_impl(&dword_297F97000, v85, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Enabling express: transit=%d vas=%d generic-a=%d single_poll=%d debug=%d block=%d ", buf, 0x36u);
    }

    v2 = v74;
    v17 = v102;
  }

  else
  {
    v103 = 0;
  }

  if (NF_isFeatureSupported())
  {
    if (!v110 && (v107 & 1) == 0 && (v109 & 1) == 0)
    {
      goto LABEL_164;
    }
  }

  else if (!v110 && !v109)
  {
    goto LABEL_164;
  }

  v86 = *(v1 + 24);
  if (*(v86 + 596))
  {
    v87 = (*(v86 + 587) & 2) == 0;
    goto LABEL_165;
  }

LABEL_164:
  v87 = 0;
LABEL_165:
  if (*(v1 + 65) != 1)
  {
LABEL_171:
    if (v72 == 3)
    {
      v91 = v17;
      v92 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v93 = NFLogGetLogger();
      if (v93)
      {
        v93(6, "%s:%i Changing config mode to MULTI_TAG", "_Dispatched_NFDriverConfigureDiscovery", 974);
      }

      dispatch_get_specific(*v92);
      v94 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v112 = "_Dispatched_NFDriverConfigureDiscovery";
        *v113 = 1024;
        *&v113[2] = 974;
        _os_log_impl(&dword_297F97000, v94, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Changing config mode to MULTI_TAG", buf, 0x12u);
      }

      v95 = 0;
      v17 = v91;
    }

    else
    {
      v95 = 0;
    }

    goto LABEL_183;
  }

  v88 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v89 = NFLogGetLogger();
  if (v72)
  {
    if (v89)
    {
      v89(4, "%s:%i Full HCE can't be used with polling", "_Dispatched_NFDriverConfigureDiscovery", 968);
    }

    dispatch_get_specific(*v88);
    v90 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v112 = "_Dispatched_NFDriverConfigureDiscovery";
      *v113 = 1024;
      *&v113[2] = 968;
      _os_log_impl(&dword_297F97000, v90, OS_LOG_TYPE_ERROR, "%{public}s:%i Full HCE can't be used with polling", buf, 0x12u);
    }

    goto LABEL_171;
  }

  if (v89)
  {
    v89(6, "%s:%i Forcing full hce routing", "_Dispatched_NFDriverConfigureDiscovery", 964);
  }

  dispatch_get_specific(*v88);
  v96 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v112 = "_Dispatched_NFDriverConfigureDiscovery";
    *v113 = 1024;
    *&v113[2] = 964;
    _os_log_impl(&dword_297F97000, v96, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Forcing full hce routing", buf, 0x12u);
  }

  v95 = 1;
LABEL_183:
  *&v113[17] = v127;
  *&v113[33] = v128;
  *v114 = *v129;
  *buf = v17;
  LOWORD(v112) = v108;
  WORD1(v112) = 256;
  BYTE4(v112) = 0;
  BYTE5(v112) = v104;
  HIWORD(v112) = 0;
  v113[0] = v103;
  *&v114[15] = *&v129[15];
  *&v113[1] = v126;
  v115 = v106;
  v116 = 0;
  v117 = 0;
  v118 = v87;
  v119 = v87;
  v120 = v105;
  v121 = 0;
  v122 = v8;
  v123 = BYTE4(v105);
  v124 = v95;
  v125 = 0;
  v97 = phLibNfc_Mgt_ConfigureDiscovery();
  if (v97 != 13)
  {
    v98 = v97;
    v99 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v100 = NFLogGetLogger();
    if (v100)
    {
      v100(3, "%s:%i status=0x%04X", "_Dispatched_NFDriverConfigureDiscovery", 986, v98);
    }

    dispatch_get_specific(*v99);
    v101 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v112 = "_Dispatched_NFDriverConfigureDiscovery";
      *v113 = 1024;
      *&v113[2] = 986;
      *&v113[6] = 1024;
      *&v113[8] = v98;
      _os_log_impl(&dword_297F97000, v101, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297FBE498(*(*(v1 + 24) + 576), 0, (v2 + 12), (v2 + 8));
    sub_297F9FB20(v2, v98);
    sub_297F9FBDC(v2);
  }
}

uint64_t sub_297F9F5F4(uint64_t a1, double a2)
{
  v4 = *(a1 + 24);
  pthread_mutex_lock((v4 + 136));
  clock_gettime(_CLOCK_MONOTONIC_RAW, (v4 + 120));
  v5 = *(v4 + 128);
  *(v4 + 120) += vcvtmd_s64_f64(a2);
  *(v4 + 128) = v5 + ((a2 - floor(a2)) * 1000.0 * 1000.0 * 1000.0);
  v6 = (*(a1 + 24) + 136);

  return pthread_mutex_unlock(v6);
}

uint64_t sub_297F9F694(uint64_t *a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = 0xBADCAFEF00DLL;
  sub_297F9F5F4(a1, 60.0);
  pthread_mutex_lock((a1[3] + 8));
  v3 = *a1;
  if (*a1 != 0xBADCAFEF00DLL)
  {
    goto LABEL_39;
  }

  v4 = MEMORY[0x29EDC9730];
  while (1)
  {
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    v24.tv_sec = 0;
    v24.tv_nsec = 0;
    pthread_mutex_lock((a1[3] + 136));
    clock_gettime(_CLOCK_MONOTONIC_RAW, &__tp);
    v5 = a1[3];
    v7 = *(v5 + 120);
    v6 = *(v5 + 128);
    pthread_mutex_unlock((v5 + 136));
    v8 = v7 - __tp.tv_sec;
    v9 = v6 - __tp.tv_nsec;
    v24.tv_sec = v7 - __tp.tv_sec;
    v24.tv_nsec = v6 - __tp.tv_nsec;
    if (v6 - __tp.tv_nsec < 0)
    {
      --v8;
      v9 += 1000000000;
      v24.tv_sec = v8;
      v24.tv_nsec = v9;
      if (v8 < 0)
      {
        break;
      }
    }

    else if (v8 < 0)
    {
      break;
    }

    if (!(v8 | v9))
    {
      break;
    }

LABEL_21:
    v15 = pthread_cond_timedwait_relative_np((a1[3] + 72), (a1[3] + 8), &v24);
    if (v15 != 60)
    {
      if (v15 == 22)
      {
        dispatch_get_specific(*v4);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Invalid parameter", "NFCallbackMutexWait", 210);
        }

        dispatch_get_specific(*v4);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v27 = "NFCallbackMutexWait";
          v28 = 1024;
          v29 = 210;
          _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid parameter", buf, 0x12u);
        }

        goto LABEL_38;
      }

      if (*a1 != 0xBADCAFEF00DLL)
      {
        v2 = *a1;
        goto LABEL_38;
      }

      dispatch_get_specific(*v4);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i semaphore released without signal!", "NFCallbackMutexWait", 217);
      }

      dispatch_get_specific(*v4);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v27 = "NFCallbackMutexWait";
        v28 = 1024;
        v29 = 217;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i semaphore released without signal!", buf, 0x12u);
      }
    }
  }

  dispatch_get_specific(*v4);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(3, "%s:%i TIMEOUT!", "NFCallbackMutexWait", 171);
  }

  dispatch_get_specific(*v4);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v27 = "NFCallbackMutexWait";
    v28 = 1024;
    v29 = 171;
    _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i TIMEOUT!", buf, 0x12u);
  }

  if ((byte_2A13A5DC8 & 1) == 0)
  {
    MEMORY[0x29C27DA60]();
    byte_2A13A5DC8 = 1;
  }

  if (NFIsRestoreOS())
  {
    goto LABEL_38;
  }

  NFSimulateCrash();
  v12 = byte_2A18BD381;
  dispatch_get_specific(*v4);
  v13 = NFLogGetLogger();
  if (v12)
  {
    if (v13)
    {
      v13(4, "%s:%i Extending timeout 10 seconds. User has requested us to avoid crashing.", "NFCallbackMutexWait", 191);
    }

    dispatch_get_specific(*v4);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v27 = "NFCallbackMutexWait";
      v28 = 1024;
      v29 = 191;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Extending timeout 10 seconds. User has requested us to avoid crashing.", buf, 0x12u);
    }

    v24 = xmmword_297FDB550;
    goto LABEL_21;
  }

  if (v13)
  {
    v13(4, "%s:%i Queuing exit due to timeout", "NFCallbackMutexWait", 185);
  }

  dispatch_get_specific(*v4);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v27 = "NFCallbackMutexWait";
    v28 = 1024;
    v29 = 185;
    _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Queuing exit due to timeout", buf, 0x12u);
  }

  v19 = dispatch_time(0, 2000000000);
  global_queue = dispatch_get_global_queue(33, 0);
  dispatch_after(v19, global_queue, &unk_2A1E980A8);
LABEL_38:
  v3 = v2;
LABEL_39:
  pthread_mutex_unlock((a1[3] + 8));
  return v3;
}

uint64_t sub_297F9FB20(void *a1, uint64_t a2)
{
  pthread_mutex_lock((a1[3] + 8));
  *a1 = a2;
  nfc_err = a2;
  pthread_cond_signal((a1[3] + 72));
  v4 = (a1[3] + 8);

  return pthread_mutex_unlock(v4);
}

void sub_297F9FB84(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3)
  {
    sub_297FBE498(a1, 0, a2 + 6, a2 + 2);
  }

  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

void sub_297F9FBDC(void **a1)
{
  pthread_mutex_lock((a1[3] + 8));
  v2 = a1[3];
  v3 = *v2 - 1;
  *v2 = v3;
  pthread_mutex_unlock((v2 + 8));
  if (!v3)
  {
    pthread_cond_destroy((a1[3] + 72));
    pthread_mutex_destroy((a1[3] + 8));
    pthread_mutex_destroy((a1[3] + 136));
    free(a1[3]);

    free(a1);
  }
}

BOOL NFDriverConfigureVASPolling(uint64_t a1, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(v26, 0, 44);
  NFDriverGetControllerInfo(a1, v26);
  if (DWORD1(v26[0]) < 7)
  {
    return 1;
  }

  v25 = 0;
  v24 = xmmword_297FDB668;
  v6 = MEMORY[0x29EDC9730];
  if (a3 <= 21 && a2 && a3)
  {
    BYTE3(v24) = a3;
    v7 = &v24;
    __memcpy_chk();
  }

  else
  {
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Use default ECP value", "NFDriverConfigureVASPolling", 4362);
    }

    dispatch_get_specific(*v6);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v19 = "NFDriverConfigureVASPolling";
      v20 = 1024;
      v21 = 4362;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Use default ECP value", buf, 0x12u);
    }

    v7 = &unk_2A13A5D90;
  }

  v17 = sub_297FA02E4(0x18u, v7);
  v11 = sub_297FA0380(a1, 37025, v17, 0);
  v12 = sub_297F9F694(v11);
  v8 = v12 == 0;
  if (v12)
  {
    dispatch_get_specific(*v6);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to set ECP VAS polling: 0x%08llx", "NFDriverConfigureVASPolling", 4373, *v11);
    }

    dispatch_get_specific(*v6);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *v11;
      *buf = 136446722;
      v19 = "NFDriverConfigureVASPolling";
      v20 = 1024;
      v21 = 4373;
      v22 = 2048;
      v23 = v15;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to set ECP VAS polling: 0x%08llx", buf, 0x1Cu);
    }
  }

  sub_297F9FBDC(v11);
  sub_297FA0714(&v17);
  return v8;
}

uint64_t NFDriverGetControllerInfo(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 20) = 83952656;
  if (*(a1 + 57))
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 620);
    *a2 = v5;
    v6 = *(v4 + 624);
    *(a2 + 24) = v6;
    *(a2 + 4) = sub_297FA01E8(v5, v6);
    *(a2 + 8) = *(v4 + 657);
    *(a2 + 12) = *(v4 + 612);
    *(a1 + 63) = (*(v4 + 680) & 8) != 0;
    *(a1 + 64) = (*(v4 + 680) & 0x20) != 0;
    return 1;
  }

  result = malloc_type_calloc(1uLL, 0x18uLL, 0x1000040C460F39EuLL);
  if (result)
  {
    v8 = result;
    v9 = sub_297F9DC04();
    pthread_mutex_lock((v9[3] + 8));
    v10 = v9[3];
    ++*v10;
    pthread_mutex_unlock((v10 + 8));
    v11 = *(*(a1 + 24) + 560);
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 0x40000000;
    *&block[16] = sub_297FD75A8;
    *&block[24] = &unk_29EE88B68;
    v20 = a1;
    v21 = v8;
    v22 = v9;
    dispatch_async_and_wait(v11, block);
    if (!sub_297F9F694(v9))
    {
      v17 = *v8;
      *a2 = v17;
      v18 = v8[2];
      *(a2 + 24) = v18;
      *(a2 + 4) = sub_297FA01E8(v17, v18);
      *(a2 + 8) = v8[1];
      *(a2 + 12) = __rev16(*(v8 + 3));
      *(a2 + 16) = *(v8 + 1);
      *(a1 + 63) = 0;
      sub_297F9FBDC(v9);
      free(v8);
      return 1;
    }

    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04llX", "NFDriverGetControllerInfo", 5372, *v9);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *v9;
      *block = 136446722;
      *&block[4] = "NFDriverGetControllerInfo";
      *&block[12] = 1024;
      *&block[14] = 5372;
      *&block[18] = 2048;
      *&block[20] = v15;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", block, 0x1Cu);
    }

    sub_297F9FBDC(v9);
    v16 = *(*(a1 + 24) + 560);
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 0x40000000;
    *&block[16] = sub_297FB7B1C;
    *&block[24] = &unk_29EE880F8;
    v20 = a1;
    dispatch_async(v16, block);
    sub_297FB7E3C(a1);
    free(v8);
    return 0;
  }

  return result;
}

uint64_t sub_297FA01E8(int a1, int a2)
{
  if (a1 > 185)
  {
    if (a1 <= 209)
    {
      if (a1 == 186)
      {
        return 20;
      }

      if (a1 != 188)
      {
        if (a1 == 209)
        {
          return 14;
        }

        return 0;
      }
    }

    else
    {
      if (a1 <= 217)
      {
        if (a1 == 210)
        {
          return 15;
        }

        if (a1 == 211)
        {
          return 16;
        }

        return 0;
      }

      if (a1 == 218)
      {
        return 22;
      }

      if (a1 != 16800)
      {
        return 0;
      }
    }

    return 21;
  }

  if (a1 <= 163)
  {
    switch(a1)
    {
      case 66:
        return 5;
      case 96:
        return 18;
      case 163:
        return 7;
    }

    return 0;
  }

  if (a1 == 164)
  {
    return 8;
  }

  if (a1 == 177)
  {
    return 10;
  }

  if (a1 != 178)
  {
    return 0;
  }

  if (a2)
  {
    return 12;
  }

  else
  {
    return 11;
  }
}

unsigned int *sub_297FA02E4(unsigned int a1, const void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = a1;
    v6 = malloc_type_calloc(1uLL, a1, 0x100004077774924uLL);
    *v5 = v6;
    if (v6)
    {
      if (a2)
      {
        memcpy(v6, a2, v5[2]);
      }
    }

    else
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

void *sub_297FA0380(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_297F9DC04();
  pthread_mutex_lock((v8[3] + 8));
  v9 = v8[3];
  ++*v9;
  pthread_mutex_unlock((v9 + 8));
  v8[2] = a4;
  v10 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FA0454;
  block[3] = &unk_29EE88168;
  v13 = a2;
  block[4] = a1;
  block[5] = a3;
  block[6] = a4;
  block[7] = v8;
  dispatch_async_and_wait(v10, block);
  return v8;
}

void sub_297FA0454(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = phLibNfc_Mgt_IoCtl();
  if (v2 != 13)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverIoCtl_block_invoke", 506, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "_Async_NFDriverIoCtl_block_invoke";
      v9 = 1024;
      v10 = 506;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 56), v3);
    sub_297F9FBDC(*(a1 + 56));
  }
}

void sub_297FA05A0(uint64_t a1, void **a2, uint64_t a3, unsigned int a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v6 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Callback_NFDriverIoCtl", 481, a4);
    }

    dispatch_get_specific(*v6);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "_Callback_NFDriverIoCtl";
      v15 = 1024;
      v16 = 481;
      v17 = 1024;
      v18 = a4;
      _os_log_impl(&dword_297F97000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }

  else if (a3)
  {
    v10 = a2[2];
    if (v10)
    {
      if (*v10 != *a3)
      {
        free(*v10);
        v11 = *(a3 + 8);
        *(v10 + 2) = v11;
        v12 = malloc_type_calloc(1uLL, v11, 0xB8D80EABuLL);
        *v10 = v12;
        if (v12)
        {
          memcpy(v12, *a3, *(v10 + 2));
        }
      }
    }
  }

  sub_297F9FB20(a2, a4);
  sub_297F9FBDC(a2);
}

void sub_297FA0714(void ***a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2)
      {
        free(*v2);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

BOOL sub_297FA075C(uint64_t a1, int *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = *a2;
  v5 = *(a1 + 44);
  if (*a2)
  {
    goto LABEL_2;
  }

  if (v5)
  {
    v12 = v5 == 6;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (!sub_297FD7730(a1, 1, 1))
    {
      v21 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Failed to power off eSE", "_NFDriverSetSecureElementRouting", 5420);
      }

      dispatch_get_specific(*v21);
      v9 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v26 = "_NFDriverSetSecureElementRouting";
        v27 = 1024;
        v28 = 5420;
        v11 = "%{public}s:%i Failed to power off eSE";
        goto LABEL_52;
      }

      return result;
    }

    v5 = *(a1 + 44);
    v4 = *a2;
LABEL_2:
    v6 = v4 != 6 || v5 == 6;
    if (!v6 && !sub_297FD7730(a1, 1, 3))
    {
      v7 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v8(3, "%s:%i Failed to fully power off eSE", "_NFDriverSetSecureElementRouting", 5429);
      }

      dispatch_get_specific(*v7);
      v9 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v26 = "_NFDriverSetSecureElementRouting";
        v27 = 1024;
        v28 = 5429;
        v11 = "%{public}s:%i Failed to fully power off eSE";
LABEL_52:
        _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0x12u);
        return 0;
      }

      return result;
    }
  }

  if (*(a1 + 48))
  {
    v13 = a2[1] == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && !sub_297FD7730(a1, 4, 1))
  {
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Failed to power off Host", "_NFDriverSetSecureElementRouting", 5438);
    }

    dispatch_get_specific(*v16);
    v9 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v26 = "_NFDriverSetSecureElementRouting";
      v27 = 1024;
      v28 = 5438;
      v11 = "%{public}s:%i Failed to power off Host";
      goto LABEL_52;
    }

    return result;
  }

  if (!*(*(a1 + 24) + 528))
  {
    goto LABEL_37;
  }

  if (*a2 == 2)
  {
    if (!sub_297FD7730(a1, 1, 0))
    {
      v23 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v24(3, "%s:%i Failed to set eSE to virtual mode", "_NFDriverSetSecureElementRouting", 5456);
      }

      dispatch_get_specific(*v23);
      v9 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v26 = "_NFDriverSetSecureElementRouting";
        v27 = 1024;
        v28 = 5456;
        v11 = "%{public}s:%i Failed to set eSE to virtual mode";
        goto LABEL_52;
      }

      return result;
    }

    goto LABEL_37;
  }

  if (*a2 != 1 || sub_297FD7730(a1, 1, 2))
  {
LABEL_37:
    if (a2[1] != 2 || sub_297FD7730(a1, 4, 0))
    {
      return 1;
    }

    v19 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v20(3, "%s:%i Failed to set HOST to virtual mode", "_NFDriverSetSecureElementRouting", 5471);
    }

    dispatch_get_specific(*v19);
    v9 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v26 = "_NFDriverSetSecureElementRouting";
      v27 = 1024;
      v28 = 5471;
      v11 = "%{public}s:%i Failed to set HOST to virtual mode";
      goto LABEL_52;
    }

    return result;
  }

  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(3, "%s:%i Failed to set eSE to wired mode", "_NFDriverSetSecureElementRouting", 5449);
  }

  dispatch_get_specific(*v14);
  v9 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v26 = "_NFDriverSetSecureElementRouting";
    v27 = 1024;
    v28 = 5449;
    v11 = "%{public}s:%i Failed to set eSE to wired mode";
    goto LABEL_52;
  }

  return result;
}

uint64_t NFDriverGetPowerCounter(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Power state tracking query", "NFDriverGetPowerCounter", 8784);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "NFDriverGetPowerCounter";
    *&buf[12] = 1024;
    *&buf[14] = 8784;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Power state tracking query", buf, 0x12u);
  }

  if (a2)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4000000000;
    v82 = 0u;
    v83 = 0u;
    v84 = 0;
    v75[0] = MEMORY[0x29EDCA5F8];
    v75[1] = 0x40000000;
    v75[2] = sub_297FA1C60;
    v75[3] = &unk_29EE888A8;
    v75[4] = buf;
    v75[5] = a1;
    v7 = sub_297FA1B10(a1, v75);
    v8 = sub_297F9F694(v7);
    if (v8)
    {
      v9 = v8;
      if (v8 == 51)
      {
        dispatch_get_specific(*v4);
        v10 = NFLogGetLogger();
        if (v10)
        {
          v10(3, "%s:%i Not supported", "NFDriverGetPowerCounter", 8806);
        }

        dispatch_get_specific(*v4);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *block = 136446466;
          *&block[4] = "NFDriverGetPowerCounter";
          *&block[12] = 1024;
          *&block[14] = 8806;
          _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported", block, 0x12u);
        }
      }

      else
      {
        dispatch_get_specific(*v4);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v17(3, "%s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", "NFDriverGetPowerCounter", 8809, v9);
        }

        dispatch_get_specific(*v4);
        v18 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *block = 136446722;
          *&block[4] = "NFDriverGetPowerCounter";
          *&block[12] = 1024;
          *&block[14] = 8809;
          *&block[18] = 2048;
          *&block[20] = v9;
          _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i phLibNfc_Mgt_GetNfccParams failed 0x%04llx", block, 0x1Cu);
        }

        v19 = *(v7 + 6);
        if (v19 == 44 || v19 == 34)
        {
          dispatch_get_specific(*v4);
          v20 = NFLogGetLogger();
          if (v20)
          {
            v20(3, "%s:%i CRC error or response timeout - 0x%04llx", "NFDriverGetPowerCounter", 8814, v9);
          }

          dispatch_get_specific(*v4);
          v21 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *block = 136446722;
            *&block[4] = "NFDriverGetPowerCounter";
            *&block[12] = 1024;
            *&block[14] = 8814;
            *&block[18] = 2048;
            *&block[20] = v9;
            _os_log_impl(&dword_297F97000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i CRC error or response timeout - 0x%04llx", block, 0x1Cu);
          }

          v22 = *(*(a1 + 24) + 560);
          *block = MEMORY[0x29EDCA5F8];
          *&block[8] = 0x40000000;
          *&block[16] = sub_297FB7B1C;
          *&block[24] = &unk_29EE880F8;
          *v77 = a1;
          dispatch_async(v22, block);
          NFDriverSimulateCrash(a1, 57005, "NFDriverGetPowerCounter: CRC error or response timeout");
        }
      }

      v12 = 1;
LABEL_112:
      sub_297F9FBDC(v7);
      _Block_object_dispose(buf, 8);
      return v12;
    }

    v13 = *(*&buf[8] + 24);
    dispatch_get_specific(*v4);
    v14 = NFLogGetLogger();
    if (v13 < 0x3FFFF)
    {
      if (v14)
      {
        v14(6, "%s:%i Idle=%d", "NFDriverGetPowerCounter", 8824, *(*&buf[8] + 24));
      }

      dispatch_get_specific(*v4);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(*&buf[8] + 24);
        *block = 136446722;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8824;
        *&block[18] = 1024;
        *&block[20] = v24;
        _os_log_impl(&dword_297F97000, v23, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Idle=%d", block, 0x18u);
      }

      v12 = 0;
      v16 = 100 * *(*&buf[8] + 24);
    }

    else
    {
      if (v14)
      {
        v14(4, "%s:%i Idle counter overflown", "NFDriverGetPowerCounter", 8820);
      }

      dispatch_get_specific(*v4);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8820;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Idle counter overflown", block, 0x12u);
      }

      v12 = 15;
      v16 = -1;
    }

    *a2 = v16;
    v25 = *(*&buf[8] + 28);
    dispatch_get_specific(*v4);
    v26 = NFLogGetLogger();
    if (v25 < 0x3FFF)
    {
      if (v26)
      {
        v26(6, "%s:%i RF=%d", "NFDriverGetPowerCounter", 8833, *(*&buf[8] + 28));
      }

      dispatch_get_specific(*v4);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(*&buf[8] + 28);
        *block = 136446722;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8833;
        *&block[18] = 1024;
        *&block[20] = v30;
        _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i RF=%d", block, 0x18u);
      }

      v28 = 100 * *(*&buf[8] + 28);
    }

    else
    {
      if (v26)
      {
        v26(4, "%s:%i RF counter overflown", "NFDriverGetPowerCounter", 8829);
      }

      dispatch_get_specific(*v4);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8829;
        _os_log_impl(&dword_297F97000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i RF counter overflown", block, 0x12u);
      }

      v12 = 15;
      v28 = -1;
    }

    *(a2 + 4) = v28;
    if (*(a1 + 56) == 1)
    {
      v31 = *(*&buf[8] + 32);
      dispatch_get_specific(*v4);
      v32 = NFLogGetLogger();
      if (v31 >= 0xFFFF)
      {
        if (v32)
        {
          v32(4, "%s:%i MultiTag false detect counter overflown", "NFDriverGetPowerCounter", 8840);
        }

        dispatch_get_specific(*v4);
        v33 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8840;
        v34 = "%{public}s:%i MultiTag false detect counter overflown";
LABEL_62:
        _os_log_impl(&dword_297F97000, v33, OS_LOG_TYPE_ERROR, v34, block, 0x12u);
LABEL_63:
        v41 = -1;
        v12 = 15;
        goto LABEL_74;
      }

      if (v32)
      {
        v32(6, "%s:%i MultiTag-FC=%d", "NFDriverGetPowerCounter", 8844, *(*&buf[8] + 32));
      }

      dispatch_get_specific(*v4);
      v42 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(*&buf[8] + 32);
        *block = 136446722;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8844;
        *&block[18] = 1024;
        *&block[20] = v43;
        v44 = "%{public}s:%i MultiTag-FC=%d";
LABEL_72:
        _os_log_impl(&dword_297F97000, v42, OS_LOG_TYPE_DEFAULT, v44, block, 0x18u);
      }
    }

    else
    {
      v35 = *(a1 + 24);
      if (*(v35 + 704))
      {
        mach_continuous_time();
        *(*(a1 + 24) + 712) += GetElapsedTimeInMillisecondsFromMachTime();
        v36 = mach_continuous_time();
        v35 = *(a1 + 24);
        *(v35 + 704) = v36;
      }

      *(a2 + 40) = *(v35 + 712) / 0x3E8uLL;
      v37 = *(a1 + 24);
      v37[89] = 0;
      if (v37[90])
      {
        mach_continuous_time();
        *(*(a1 + 24) + 728) += GetElapsedTimeInMillisecondsFromMachTime();
        v38 = mach_continuous_time();
        v37 = *(a1 + 24);
        v37[90] = v38;
      }

      *(a2 + 32) = v37[91] / 0x3E8uLL;
      *(*(a1 + 24) + 728) = 0;
      v39 = *(*&buf[8] + 32);
      dispatch_get_specific(*v4);
      v40 = NFLogGetLogger();
      if (v39 >= 0xFFFF)
      {
        if (v40)
        {
          v40(4, "%s:%i LPCD false detect counter overflown", "NFDriverGetPowerCounter", 8874);
        }

        dispatch_get_specific(*v4);
        v33 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8874;
        v34 = "%{public}s:%i LPCD false detect counter overflown";
        goto LABEL_62;
      }

      if (v40)
      {
        v40(6, "%s:%i LPCD-FC=%d", "NFDriverGetPowerCounter", 8878, *(*&buf[8] + 32));
      }

      dispatch_get_specific(*v4);
      v42 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(*&buf[8] + 32);
        *block = 136446722;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8878;
        *&block[18] = 1024;
        *&block[20] = v45;
        v44 = "%{public}s:%i LPCD-FC=%d";
        goto LABEL_72;
      }
    }

    v41 = *(*&buf[8] + 32);
LABEL_74:
    *(a2 + 24) = v41;
    if (*(*&buf[8] + 40) == -1)
    {
      dispatch_get_specific(*v4);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v50(4, "%s:%i SE uptime counter overflown", "NFDriverGetPowerCounter", 8887);
      }

      dispatch_get_specific(*v4);
      v51 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8887;
        _os_log_impl(&dword_297F97000, v51, OS_LOG_TYPE_ERROR, "%{public}s:%i SE uptime counter overflown", block, 0x12u);
      }

      *(a2 + 8) = -1;
      v12 = 15;
      goto LABEL_97;
    }

    if (*(*&buf[8] + 38))
    {
      dispatch_get_specific(*v4);
      v46 = NFLogGetLogger();
      if (v46)
      {
        v46(4, "%s:%i SE uptime failed to be queried, power=%d, mailbox=%d", "NFDriverGetPowerCounter", 8891, *(*&buf[8] + 36), *(*&buf[8] + 37));
      }

      dispatch_get_specific(*v4);
      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = *(*&buf[8] + 36);
        v49 = *(*&buf[8] + 37);
        *block = 136446978;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8891;
        *&block[18] = 1024;
        *&block[20] = v48;
        *&block[24] = 1024;
        *&block[26] = v49;
        _os_log_impl(&dword_297F97000, v47, OS_LOG_TYPE_ERROR, "%{public}s:%i SE uptime failed to be queried, power=%d, mailbox=%d", block, 0x1Eu);
      }

      *(a2 + 8) = -1;
      v12 = 4;
      goto LABEL_97;
    }

    memset(v80, 0, 44);
    NFDriverGetControllerInfo(a1, v80);
    v52 = DWORD1(v80[0]) - 14;
    dispatch_get_specific(*v4);
    v53 = NFLogGetLogger();
    if (v52 > 4)
    {
      if (v53)
      {
        v53(6, "%s:%i SE=%d, power=%d, mailbox=%d", "NFDriverGetPowerCounter", 8910, *(*&buf[8] + 40), *(*&buf[8] + 36), *(*&buf[8] + 37));
      }

      dispatch_get_specific(*v4);
      v63 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      v64 = *(*&buf[8] + 40);
      v65 = *(*&buf[8] + 36);
      v66 = *(*&buf[8] + 37);
      *block = 136447234;
      *&block[4] = "NFDriverGetPowerCounter";
      *&block[12] = 1024;
      *&block[14] = 8910;
      *&block[18] = 1024;
      *&block[20] = v64;
      *&block[24] = 1024;
      *&block[26] = v65;
      *&block[30] = 1024;
      *v77 = v66;
      v60 = "%{public}s:%i SE=%d, power=%d, mailbox=%d";
      v61 = v63;
      v62 = 36;
    }

    else
    {
      if (v53)
      {
        v53(6, "%s:%i SE=%d, JCOP=%d eUICC=%d power=%d, mailbox=%d", "NFDriverGetPowerCounter", 8907, *(*&buf[8] + 40), *(*&buf[8] + 44), *(*&buf[8] + 48), *(*&buf[8] + 36), *(*&buf[8] + 37));
      }

      dispatch_get_specific(*v4);
      v54 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_96;
      }

      v55 = *(*&buf[8] + 40);
      v56 = *(*&buf[8] + 44);
      v57 = *(*&buf[8] + 48);
      v58 = *(*&buf[8] + 36);
      v59 = *(*&buf[8] + 37);
      *block = 136447746;
      *&block[4] = "NFDriverGetPowerCounter";
      *&block[12] = 1024;
      *&block[14] = 8907;
      *&block[18] = 1024;
      *&block[20] = v55;
      *&block[24] = 1024;
      *&block[26] = v56;
      *&block[30] = 1024;
      *v77 = v57;
      v77[4] = 0;
      v77[5] = 4;
      *&v77[6] = v58;
      v78 = 1024;
      v79 = v59;
      v60 = "%{public}s:%i SE=%d, JCOP=%d eUICC=%d power=%d, mailbox=%d";
      v61 = v54;
      v62 = 48;
    }

    _os_log_impl(&dword_297F97000, v61, OS_LOG_TYPE_DEFAULT, v60, block, v62);
LABEL_96:
    *(a2 + 8) = 100 * *(*&buf[8] + 40);
LABEL_97:
    v67 = *&buf[8];
    v68 = *(*&buf[8] + 44);
    if (v68 == -1)
    {
      dispatch_get_specific(*v4);
      v69 = NFLogGetLogger();
      if (v69)
      {
        v69(4, "%s:%i JCOP uptime counter overflown", "NFDriverGetPowerCounter", 8917);
      }

      dispatch_get_specific(*v4);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8917;
        _os_log_impl(&dword_297F97000, v70, OS_LOG_TYPE_ERROR, "%{public}s:%i JCOP uptime counter overflown", block, 0x12u);
      }

      *(a2 + 12) = -1;
      v12 = 15;
      v67 = *&buf[8];
    }

    else
    {
      *(a2 + 12) = 100 * v68;
    }

    v71 = *(v67 + 48);
    if (v71 == -1)
    {
      dispatch_get_specific(*v4);
      v72 = NFLogGetLogger();
      if (v72)
      {
        v72(4, "%s:%i JCOP uptime counter overflown", "NFDriverGetPowerCounter", 8925);
      }

      dispatch_get_specific(*v4);
      v73 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "NFDriverGetPowerCounter";
        *&block[12] = 1024;
        *&block[14] = 8925;
        _os_log_impl(&dword_297F97000, v73, OS_LOG_TYPE_ERROR, "%{public}s:%i JCOP uptime counter overflown", block, 0x12u);
      }

      *(a2 + 16) = -1;
      v12 = 15;
      v67 = *&buf[8];
    }

    else
    {
      *(a2 + 16) = 100 * v71;
    }

    *(a2 + 20) = *(v67 + 36) != 0;
    *(a2 + 21) = *(v67 + 37) != 0;
    goto LABEL_112;
  }

  return 5;
}

void *sub_297FA1B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_297F9DC04();
  pthread_mutex_lock((v4[3] + 8));
  v5 = v4[3];
  ++*v5;
  pthread_mutex_unlock((v5 + 8));
  v6 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FA1BCC;
  block[3] = &unk_29EE886B8;
  block[4] = a2;
  block[5] = v4;
  block[6] = a1;
  dispatch_async_and_wait(v6, block);
  return v4;
}

void sub_297FA1BCC(void *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    v4 = 1;
LABEL_6:
    sub_297FBE498(*(*(a1[6] + 24) + 576), 0, (a1[5] + 12), (a1[5] + 8));
    goto LABEL_7;
  }

  v3 = (*(v2 + 16))(v2, a1[5]);
  v4 = v3;
  if (v3)
  {
    if (v3 == 13)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  sub_297F9FB20(a1[5], v4);
  v5 = a1[5];

  sub_297F9FBDC(v5);
}

BOOL sub_297FA1DA4(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 32) = sub_297FA1E1C;
    *(a1 + 40) = sub_297FA1F0C;
    *(a1 + 48) = sub_297FA1FFC;
    *(a1 + 56) = sub_297FA2104;
    *(a1 + 64) = sub_297FA21F4;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0;
    *(a1 + 20) = 4;
  }

  return a1 != 0;
}

uint64_t sub_297FA1E1C()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for UICC!", "SetPower_UICC", 23);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v5 = "SetPower_UICC";
    v6 = 1024;
    v7 = 23;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for UICC!", buf, 0x12u);
  }

  return 0;
}

uint64_t sub_297FA1F0C()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for UICC!", "GetOSInfo_UICC", 29);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v5 = "GetOSInfo_UICC";
    v6 = 1024;
    v7 = 29;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for UICC!", buf, 0x12u);
  }

  return 0;
}

uint64_t sub_297FA1FFC(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for UICC!", "GetOSMode_UICC", 35);
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v9 = "GetOSMode_UICC";
    v10 = 1024;
    v11 = 35;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for UICC!", buf, 0x12u);
  }

  *(a2 + 1224) = *(a1 + 20);
  return 0;
}

uint64_t sub_297FA2104()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for UICC!", "GetOSUpdateLog_UICC", 42);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v5 = "GetOSUpdateLog_UICC";
    v6 = 1024;
    v7 = 42;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for UICC!", buf, 0x12u);
  }

  return 0;
}

uint64_t sub_297FA21F4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(4, "%s:%i Not supported for UICC!", "GetAttackCounterLog_UICC", 48);
  }

  dispatch_get_specific(*v5);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v10 = "GetAttackCounterLog_UICC";
    v11 = 1024;
    v12 = 48;
    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Not supported for UICC!", buf, 0x12u);
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  return 0;
}

uint64_t sub_297FA2304(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _WORD *a5)
{
  v8 = a2;
  v32 = *MEMORY[0x29EDCA608];
  v10 = NFDataCreateWithBytes();
  v11 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), v8, 128, 202, SBYTE1(a3), a3, 0, v10);
  NFDataRelease();
  if (v11)
  {
    v12 = v11[1];
    if (v12 >= 2)
    {
      v13 = __rev16(*(*v11 + v12 - 2));
      if (!a5)
      {
LABEL_13:
        if (v13 == 36864)
        {
          v17 = NFDataCreateWithBytes();
          NFDataRelease();
          return v17;
        }

        v18 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(4, "%s:%i Returned error: 0x%04x for (0x%x/0x%x)", "NFDriverSecureElementGetDataWithOS", 63, v13, a3, a4);
        }

        dispatch_get_specific(*v18);
        v20 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136447234;
          v23 = "NFDriverSecureElementGetDataWithOS";
          v24 = 1024;
          v25 = 63;
          v26 = 1024;
          v27 = v13;
          v28 = 1024;
          v29 = a3;
          v30 = 1024;
          v31 = a4;
          _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x for (0x%x/0x%x)", buf, 0x24u);
        }

        NFDataRelease();
        return 0;
      }
    }

    else
    {
      v13 = 0;
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    *a5 = v13;
    goto LABEL_13;
  }

  v14 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(3, "%s:%i Failed to get data", "NFDriverSecureElementGetDataWithOS", 49);
  }

  dispatch_get_specific(*v14);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v23 = "NFDriverSecureElementGetDataWithOS";
    v24 = 1024;
    v25 = 49;
    _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get data", buf, 0x12u);
  }

  if (!a5)
  {
    return 0;
  }

  v17 = 0;
  *a5 = 0;
  return v17;
}

unsigned __int8 **sub_297FA25B8(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  result = sub_297FA2304(a1, 2, 0xFEu, 0xDF23u, 0);
  if (result)
  {
    if (result[1] >= 4)
    {
      v4 = *result;
      v5 = **result << 24;
      *(a2 + 1236) = v5;
      v6 = v5 | (v4[1] << 16);
      *(a2 + 1236) = v6;
      v7 = v6 | (v4[2] << 8);
      *(a2 + 1236) = v7;
      v8 = v7 | v4[3];
      *(a2 + 1236) = v8;
      if (*(a2 + 1208))
      {
        v9 = *(a2 + 1252);
        if (v9 > 0xC7)
        {
          if (v9 != 210 && v9 != 200)
          {
            return NFDataRelease();
          }
        }

        else if (v9 != 100 && v9 != 115)
        {
          return NFDataRelease();
        }
      }

      v10 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i Resolve key type from config", "_NFDriverUpdateKeyWithConfigID", 91);
      }

      dispatch_get_specific(*v10);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v20 = "_NFDriverUpdateKeyWithConfigID";
        v21 = 1024;
        v22 = 91;
        _os_log_impl(&dword_297F97000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Resolve key type from config", buf, 0x12u);
      }

      if (v8 >= 3)
      {
        v13 = v8 & 0xFFFFFF;
        if ((v8 & 0xFFFFFF) == 0x535443)
        {
LABEL_19:
          v16 = 1;
          *(a2 + 1208) = 1;
        }

        else
        {
          v14 = 4u;
          while (v14 != 32)
          {
            v15 = *&aCts[v14];
            v14 += 4;
            if (v13 == v15)
            {
              goto LABEL_19;
            }
          }

          v16 = 0;
        }

        for (i = 0; i != 4; ++i)
        {
          if (v13 == dword_297FDB2A4[i])
          {
            v18 = 2;
            goto LABEL_29;
          }
        }

        if (v16)
        {
          return NFDataRelease();
        }

        if (v5 < 0)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

LABEL_29:
        *(a2 + 1208) = v18;
      }
    }

    return NFDataRelease();
  }

  return result;
}

BOOL sub_297FA27E0(void *a1, uint64_t a2)
{
  v58 = *MEMORY[0x29EDCA608];
  v2 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 128, 202, 127, 33, 0, 0);
  v3 = MEMORY[0x29EDC9730];
  if (v2)
  {
    v6 = v2;
    v4 = *v2;
    v5 = v6[1];
    if (v5 >= 2)
    {
      v7 = bswap32(*(v4 + v5 - 2)) >> 16;
    }

    else
    {
      LOWORD(v7) = 0;
    }

    v11 = NFDataCreateWithBytes();
    NFDataRelease();
    v12 = 0;
    v13 = 0;
    while (1)
    {
      if (BYTE1(v7) == 97)
      {
        v14 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 128, 192, 0, 0, v7, 0);
      }

      else
      {
        if (v7 != 25360)
        {
          goto LABEL_15;
        }

        v14 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 4), 0, 128, 204, 127, 33, 0, 0);
      }

      v13 = v14;
LABEL_15:
      if (!v13)
      {
        dispatch_get_specific(*v3);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(3, "%s:%i Transceive failure", "NFDriverSecureElementGetCertificates", 330);
        }

        dispatch_get_specific(*v3);
        v9 = NFSharedLogGetLogger();
        result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          v49 = "NFDriverSecureElementGetCertificates";
          v50 = 1024;
          v51 = 330;
          goto LABEL_59;
        }

        return result;
      }

      v15 = *(v13 + 8);
      if (v15 >= 2)
      {
        v17 = *(*v13 + v15 - 2);
        if (v15 != 2)
        {
          v18 = NFDataCreateWithLength();
          if (v18)
          {
            v19 = v18;
            memcpy(*v18, *v11, *(v11 + 8));
            memcpy(*v19 + *(v11 + 8), *v13, *(v13 + 8) - 2);
            NFDataRelease();
            v11 = v19;
          }

          NFDataRelease();
          v13 = 0;
        }

        v7 = __rev16(v17);
        v16 = v7 == 25360;
        if (v7 != 36864 && v7 != 25360)
        {
          goto LABEL_50;
        }

        v21 = TLVCreateWithDataMixed();
        v47 = v21;
        if (v21)
        {
          v23 = v21;
          if (*(a1 + 5) != 6 || *(v21 + 32) != 32545 || (v23 = *(v21 + 16)) != 0)
          {
            do
            {
              v24 = sub_297FA2DC8(*(v23 + 16), v22);
              if ((v24 - 1) <= 2)
              {
                v25 = *(v23 + 40);
                v26 = *(v25 + 8);
                if (v26 > 0x100)
                {
                  dispatch_get_specific(*v3);
                  v28 = NFLogGetLogger();
                  if (v28)
                  {
                    v28(4, "%s:%i Certificate too long: %zu", "NFDriverSecureElementGetCertificates", 371, *(*(v23 + 40) + 8));
                  }

                  dispatch_get_specific(*v3);
                  v29 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_44;
                  }

                  v30 = *(*(v23 + 40) + 8);
                  *buf = 136446722;
                  v49 = "NFDriverSecureElementGetCertificates";
                  v50 = 1024;
                  v51 = 371;
                  v52 = 2048;
                  *v53 = v30;
                  v31 = v29;
                  v32 = "%{public}s:%i Certificate too long: %zu";
                  v33 = 28;
LABEL_43:
                  _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, v32, buf, v33);
                  goto LABEL_44;
                }

                if (v12 > 2)
                {
                  dispatch_get_specific(*v3);
                  v34 = NFLogGetLogger();
                  if (v34)
                  {
                    v36 = v34;
                    v37 = *(*(v23 + 40) + 8);
                    v38 = *(v23 + 32);
                    v39 = sub_297FA2DC8(*(v23 + 16), v35);
                    v36(3, "%s:%i Not enough storage for cert %d (tag 0x%x). Len = %lu, type = %d !", "NFDriverSecureElementGetCertificates", 368, v12, v38, v37, v39);
                  }

                  dispatch_get_specific(*v3);
                  v40 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_44;
                  }

                  v41 = *(v23 + 32);
                  v42 = *(*(v23 + 40) + 8);
                  v43 = sub_297FA2DC8(*(v23 + 16), v22);
                  *buf = 136447490;
                  v49 = "NFDriverSecureElementGetCertificates";
                  v50 = 1024;
                  v51 = 368;
                  v52 = 1024;
                  *v53 = v12;
                  *&v53[4] = 1024;
                  *&v53[6] = v41;
                  v54 = 2048;
                  v55 = v42;
                  v56 = 1024;
                  v57 = v43;
                  v31 = v40;
                  v32 = "%{public}s:%i Not enough storage for cert %d (tag 0x%x). Len = %lu, type = %d !";
                  v33 = 46;
                  goto LABEL_43;
                }

                v27 = a2 + 272 * v12;
                *(v27 + 264) = v24;
                *(v27 + 256) = v26;
                memcpy(v27, *v25, v26);
                ++v12;
              }

LABEL_44:
              v23 = *(v23 + 24);
            }

            while (v23);
          }
        }

        else
        {
          NFDataPrintAsHexString();
        }

        if (v47)
        {
          TLVRelease();
        }

        NFDataRelease();
        v11 = NFDataCreateWithLength();
        goto LABEL_50;
      }

      v16 = 0;
      LOWORD(v7) = 0;
LABEL_50:
      if (!v16 && (v7 & 0xFF00) != 0x6100)
      {
        if (v11)
        {
          NFDataRelease();
        }

        return 1;
      }
    }
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v8 = NFLogGetLogger();
  if (v8)
  {
    v8(3, "%s:%i Transceive failure", "NFDriverSecureElementGetCertificates", 283);
  }

  dispatch_get_specific(*v3);
  v9 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v49 = "NFDriverSecureElementGetCertificates";
    v50 = 1024;
    v51 = 283;
LABEL_59:
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Transceive failure", buf, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_297FA2DC8(uint64_t a1, __n128 a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  if (!a1)
  {
    v4 = 0;
    goto LABEL_39;
  }

  v3 = a1;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(v3 + 32);
    if (v6 != 32585)
    {
      if (v6 == 149)
      {
        v7 = *(v3 + 40);
        v8 = v7[1];
        if (v8)
        {
          v9 = *v7;
          v4 = *v9;
          if (v8 != 1)
          {
            v4 = v9[1] | (v4 << 8);
          }
        }
      }

      goto LABEL_28;
    }

    v10 = *(v3 + 16);
    if (v10)
    {
      v22 = *(v3 + 16);
      goto LABEL_11;
    }

    *buf = 0xF000B07F49;
    v10 = TLVCreateWithDataMixed();
    v22 = v10;
    if (!v10)
    {
      goto LABEL_22;
    }

    while (1)
    {
LABEL_11:
      if (*(v10 + 32) != 240)
      {
        goto LABEL_16;
      }

      v11 = *(v10 + 40);
      if (!v11 || !v11[1])
      {
        break;
      }

      v12 = **v11;
      if (!v12)
      {
        v5 = 1;
        goto LABEL_23;
      }

      if (v12 == 1)
      {
        v5 = 2;
        goto LABEL_23;
      }

LABEL_16:
      v10 = *(v10 + 24);
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    dispatch_get_specific(*v2);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i ERROR: no value !", "_getKeySize", 181);
    }

    dispatch_get_specific(*v2);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "_getKeySize";
      v24 = 1024;
      v25 = 181;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ERROR: no value !", buf, 0x12u);
    }

LABEL_22:
    v5 = 0;
LABEL_23:
    if (*(v3 + 16))
    {
      v15 = 1;
    }

    else
    {
      v15 = v22 == 0;
    }

    if (!v15)
    {
      TLVRelease();
    }

LABEL_28:
    if (v5 && v4)
    {
      break;
    }

    v3 = *(v3 + 24);
  }

  while (v3);
  if (v4 == 33280)
  {
    v16 = v5 == 2;
    v17 = 2;
    v18 = 4;
    goto LABEL_45;
  }

  if (v4 == 130)
  {
    return 1;
  }

  if (v4 != 128)
  {
LABEL_39:
    dispatch_get_specific(*v2);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v19(3, "%s:%i Unknow Key Usage 0x%x", "_getCertificateType", 259, v4);
    }

    dispatch_get_specific(*v2);
    v20 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446722;
      *&buf[4] = "_getCertificateType";
      v24 = 1024;
      v25 = 259;
      v26 = 1024;
      v27 = v4;
      _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknow Key Usage 0x%x", buf, 0x18u);
      return 0;
    }

    return result;
  }

  v16 = v5 == 2;
  v17 = 3;
  v18 = 5;
LABEL_45:
  if (v16)
  {
    return v18;
  }

  else
  {
    return v17;
  }
}

void sub_297FA30D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = *MEMORY[0x29EDCA608];
  v4 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), a2, 128, 170, 3, 0, 0, 0);
  if (v4)
  {
    v5 = v4[1];
    if (v5 < 2)
    {
      v6 = 0;
LABEL_89:
      v65 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(4, "%s:%i Returned error: 0x%04x", "NFDriverSecureElementGetMigrationInfoJCOP", 423, v6);
      }

      dispatch_get_specific(*v65);
      v67 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
        v76 = 1024;
        v77 = 423;
        v78 = 1024;
        *v79 = v6;
        _os_log_impl(&dword_297F97000, v67, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x", buf, 0x18u);
      }

      NFDataRelease();
      return;
    }

    v6 = __rev16(*(*v4 + v5 - 2));
    if (v6 != 36864)
    {
      goto LABEL_89;
    }

    NFDataCreateWithBytes();
    NFDataRelease();
    v11 = TLVCreateWithData();
    NFDataRelease();
    if (v11)
    {
      if (*(v11 + 32) == 192)
      {
        v12 = TLVCreateWithData();
        if (v12)
        {
          v13 = v12;
          v14 = MEMORY[0x29EDC9730];
          v15 = &dword_297F97000;
          v16 = "%{public}s:%i ISD sequence counter %d does not match migration update counter %d";
          v17 = "%s:%i ISD sequence counter %d does not match migration update counter %d";
          do
          {
            v18 = *(v13 + 32);
            if (v18 > 201)
            {
              if (v18 != 202)
              {
                if (v18 == 203)
                {
                  v22 = *(v13 + 40);
                  if (v22[1] != 2)
                  {
                    dispatch_get_specific(*v14);
                    v39 = NFLogGetLogger();
                    if (v39)
                    {
                      v39(4, "%s:%i Invalid length for 0xCB", "NFDriverSecureElementGetMigrationInfoJCOP", 488);
                    }

                    dispatch_get_specific(*v14);
                    v40 = NFSharedLogGetLogger();
                    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_87;
                    }

                    *buf = 136446466;
                    v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
                    v76 = 1024;
                    v77 = 488;
                    v28 = v15;
                    v29 = v40;
                    v30 = "%{public}s:%i Invalid length for 0xCB";
                    goto LABEL_57;
                  }

                  v23 = __rev16(**v22);
                  if (v23 <= 23129)
                  {
                    if (!v23)
                    {
                      v24 = 1;
                      goto LABEL_73;
                    }

                    if (v23 == 13260)
                    {
                      v24 = 4;
                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    switch(v23)
                    {
                      case 23130:
                        v24 = 3;
                        goto LABEL_73;
                      case 42405:
                        v24 = 2;
                        goto LABEL_73;
                      case 52275:
                        v24 = 5;
LABEL_73:
                        *(a3 + 1216) = v24;
                        goto LABEL_87;
                    }
                  }

                  dispatch_get_specific(*v14);
                  v48 = NFLogGetLogger();
                  if (v48)
                  {
                    v48(4, "%s:%i Invalid context 0x%02x", "NFDriverSecureElementGetMigrationInfoJCOP", 508, v23);
                  }

                  dispatch_get_specific(*v14);
                  v49 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_87;
                  }

                  *buf = 136446722;
                  v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
                  v76 = 1024;
                  v77 = 508;
                  v78 = 1024;
                  *v79 = v23;
                  v28 = v15;
                  v29 = v49;
                  v30 = "%{public}s:%i Invalid context 0x%02x";
LABEL_35:
                  v31 = 24;
LABEL_58:
                  _os_log_impl(v28, v29, OS_LOG_TYPE_ERROR, v30, buf, v31);
                  goto LABEL_87;
                }

LABEL_31:
                dispatch_get_specific(*v14);
                v25 = NFLogGetLogger();
                if (v25)
                {
                  v25(4, "%s:%i Unexpected element found in status container: 0x%04x", "NFDriverSecureElementGetMigrationInfoJCOP", 514, *(v13 + 32));
                }

                dispatch_get_specific(*v14);
                v26 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                v27 = *(v13 + 32);
                *buf = 136446722;
                v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
                v76 = 1024;
                v77 = 514;
                v78 = 1024;
                *v79 = v27;
                v28 = v15;
                v29 = v26;
                v30 = "%{public}s:%i Unexpected element found in status container: 0x%04x";
                goto LABEL_35;
              }

              v35 = *(v13 + 40);
              if (v35[1] != 4)
              {
                dispatch_get_specific(*v14);
                v43 = NFLogGetLogger();
                if (v43)
                {
                  v43(4, "%s:%i Invalid length for 0xCA", "NFDriverSecureElementGetMigrationInfoJCOP", 477);
                }

                dispatch_get_specific(*v14);
                v44 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                *buf = 136446466;
                v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
                v76 = 1024;
                v77 = 477;
                v28 = v15;
                v29 = v44;
                v30 = "%{public}s:%i Invalid length for 0xCA";
                goto LABEL_57;
              }

              v36 = *v35;
              *(a3 + 1246) = bswap32(*v36) >> 16;
              *(a3 + 1248) = bswap32(v36[1]) >> 16;
            }

            else
            {
              if (v18 != 200)
              {
                if (v18 == 201)
                {
                  v19 = *(v13 + 40);
                  if (v19[1] == 2)
                  {
                    v20 = __rev16(**v19);
                    if (v20 > 39834)
                    {
                      switch(v20)
                      {
                        case 39835:
                          v21 = 3;
                          goto LABEL_86;
                        case 42356:
                          v21 = 5;
                          goto LABEL_86;
                        case 47545:
                          v21 = 4;
                          goto LABEL_86;
                      }
                    }

                    else
                    {
                      switch(v20)
                      {
                        case 13107:
                          v21 = 6;
                          goto LABEL_86;
                        case 23130:
                          v21 = 1;
                          goto LABEL_86;
                        case 34695:
                          v21 = 2;
LABEL_86:
                          *(a3 + 1212) = v21;
                          goto LABEL_87;
                      }
                    }

                    dispatch_get_specific(*v14);
                    v50 = NFLogGetLogger();
                    if (v50)
                    {
                      v51 = v50;
                      v52 = __error();
                      v53 = v15;
                      v54 = v17;
                      v55 = v16;
                      v56 = strerror(*v52);
                      v57 = __error();
                      v73 = v56;
                      v16 = v55;
                      v17 = v54;
                      v15 = v53;
                      v51(3, "%s:%i %s errno=%d Unknown migration state: 0x%04x", "NFDriverSecureElementGetMigrationInfoJCOP", 470, v73, *v57, v20);
                    }

                    dispatch_get_specific(*v14);
                    v58 = NFSharedLogGetLogger();
                    if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_87;
                    }

                    v59 = __error();
                    v60 = v15;
                    v61 = v17;
                    v62 = v16;
                    v63 = strerror(*v59);
                    v64 = *__error();
                    *buf = 136447234;
                    v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
                    v76 = 1024;
                    v77 = 470;
                    v78 = 2080;
                    *v79 = v63;
                    v16 = v62;
                    v17 = v61;
                    v15 = v60;
                    *&v79[8] = 1024;
                    v80 = v64;
                    v81 = 1024;
                    v82 = v20;
                    v28 = v60;
                    v29 = v58;
                    v30 = "%{public}s:%i %s errno=%d Unknown migration state: 0x%04x";
                    v31 = 40;
                    goto LABEL_58;
                  }

                  dispatch_get_specific(*v14);
                  v37 = NFLogGetLogger();
                  if (v37)
                  {
                    v37(4, "%s:%i Invalid length for 0xC9", "NFDriverSecureElementGetMigrationInfoJCOP", 458);
                  }

                  dispatch_get_specific(*v14);
                  v38 = NFSharedLogGetLogger();
                  if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_87;
                  }

                  *buf = 136446466;
                  v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
                  v76 = 1024;
                  v77 = 458;
                  v28 = v15;
                  v29 = v38;
                  v30 = "%{public}s:%i Invalid length for 0xC9";
LABEL_57:
                  v31 = 18;
                  goto LABEL_58;
                }

                goto LABEL_31;
              }

              v32 = *(v13 + 40);
              if (v32[1] != 4)
              {
                dispatch_get_specific(*v14);
                v41 = NFLogGetLogger();
                if (v41)
                {
                  v41(4, "%s:%i Invalid length for 0xC8", "NFDriverSecureElementGetMigrationInfoJCOP", 441);
                }

                dispatch_get_specific(*v14);
                v42 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                *buf = 136446466;
                v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
                v76 = 1024;
                v77 = 441;
                v28 = v15;
                v29 = v42;
                v30 = "%{public}s:%i Invalid length for 0xC8";
                goto LABEL_57;
              }

              v33 = *v32;
              v34 = __rev16(*v33);
              if (v34 != *(a3 + 1242))
              {
                dispatch_get_specific(*v14);
                v45 = NFLogGetLogger();
                if (v45)
                {
                  v45(4, v17);
                }

                dispatch_get_specific(*v14);
                v46 = NFSharedLogGetLogger();
                if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                v47 = *(a3 + 1242);
                *buf = 136446978;
                v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
                v76 = 1024;
                v77 = 448;
                v78 = 1024;
                *v79 = v47;
                *&v79[4] = 1024;
                *&v79[6] = v34;
                v28 = v15;
                v29 = v46;
                v30 = v16;
                v31 = 30;
                goto LABEL_58;
              }

              *(a3 + 1244) = bswap32(v33[1]) >> 16;
            }

LABEL_87:
            v13 = *(v13 + 24);
          }

          while (v13);
        }

        TLVRelease();
      }

      else
      {
        v70 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v71 = NFLogGetLogger();
        if (v71)
        {
          v71(4, "%s:%i Could not find status container", "NFDriverSecureElementGetMigrationInfoJCOP", 523);
        }

        dispatch_get_specific(*v70);
        v72 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
          v76 = 1024;
          v77 = 523;
          _os_log_impl(&dword_297F97000, v72, OS_LOG_TYPE_ERROR, "%{public}s:%i Could not find status container", buf, 0x12u);
        }
      }

      TLVRelease();
      return;
    }

    v68 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v69 = NFLogGetLogger();
    if (v69)
    {
      v69(3, "%s:%i Failed to parse TLV", "NFDriverSecureElementGetMigrationInfoJCOP", 528);
    }

    dispatch_get_specific(*v68);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
      v76 = 1024;
      v77 = 528;
      v10 = "%{public}s:%i Failed to parse TLV";
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v8(4, "%s:%i Transceive failure", "NFDriverSecureElementGetMigrationInfoJCOP", 417);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v75 = "NFDriverSecureElementGetMigrationInfoJCOP";
      v76 = 1024;
      v77 = 417;
      v10 = "%{public}s:%i Transceive failure";
LABEL_8:
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x12u);
    }
  }
}

BOOL sub_297FA3B84(void *a1, uint64_t a2, void (*a3)(void *, uint64_t), void (*a4)(void *, uint64_t, __n128))
{
  v93 = *MEMORY[0x29EDCA608];
  v84 = 0;
  v8 = NFDataCreateWithBytes();
  NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v8, &v84);
  NFDataRelease();
  switch(v84)
  {
    case 0x6614u:
      v13 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(5, "%s:%i JCOP OS Update Mode detected", "NFDriverSecureElementGetOSInfoJCOP", 587);
      }

      dispatch_get_specific(*v13);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v86 = "NFDriverSecureElementGetOSInfoJCOP";
        v87 = 1024;
        v88 = 587;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i JCOP OS Update Mode detected", buf, 0x12u);
      }

      *(a2 + 1256) = 1;
      v12 = (a2 + 1255);
      if (*(a2 + 1255))
      {
LABEL_24:
        if ((*v12 & 1) != 0 || *(a2 + 1256) == 1)
        {
          v20 = NFDataCreateWithBytes();
          if (!NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v20, &v84))
          {
            v26 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v27 = NFLogGetLogger();
            if (v27)
            {
              v27(3, "%s:%i Returned error: 0x%04x", "NFDriverSecureElementGetOSInfoJCOP", 618, v84);
            }

            dispatch_get_specific(*v26);
            v28 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            *buf = 136446722;
            v86 = "NFDriverSecureElementGetOSInfoJCOP";
            v87 = 1024;
            v88 = 618;
            v89 = 1024;
            *v90 = v84;
LABEL_38:
            _os_log_impl(&dword_297F97000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x", buf, 0x18u);
LABEL_39:
            NFDataRelease();
            return 0;
          }

          NFDataRelease();
          sub_297FA25B8(a1, a2);
        }

        v21 = sub_297FA2304(a1, 0, 0xFEu, 0xDF20u, 0);
        if (v21)
        {
          v22 = *(v21 + 8);
          if (v22 - 48 > 0xFFFFFFFFFFFFFFCELL)
          {
            memcpy((a2 + 1072), *v21, v22);
            *(a2 + 1072 + v22) = 0;
          }

          else
          {
            v23 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v24 = NFLogGetLogger();
            if (v24)
            {
              v24(4, "%s:%i Platform id too long: %ld", "NFDriverSecureElementGetOSInfoJCOP", 638, v22);
            }

            dispatch_get_specific(*v23);
            v25 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              v86 = "NFDriverSecureElementGetOSInfoJCOP";
              v87 = 1024;
              v88 = 638;
              v89 = 2048;
              *v90 = v22;
              _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, "%{public}s:%i Platform id too long: %ld", buf, 0x1Cu);
            }
          }

          NFDataRelease();
        }

        else
        {
          v29 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v30 = NFLogGetLogger();
          if (v30)
          {
            v30(4, "%s:%i Failed to get platform identifier", "NFDriverSecureElementGetOSInfoJCOP", 633);
          }

          dispatch_get_specific(*v29);
          v31 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v86 = "NFDriverSecureElementGetOSInfoJCOP";
            v87 = 1024;
            v88 = 633;
            _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get platform identifier", buf, 0x12u);
          }
        }

        v32 = sub_297FA2304(a1, 0, 0xFEu, 0xDF4Cu, 0);
        if (!v32)
        {
          v46 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v47 = NFLogGetLogger();
          if (v47)
          {
            v47(4, "%s:%i Failed to get JCOP Version", "NFDriverSecureElementGetOSInfoJCOP", 654);
          }

          dispatch_get_specific(*v46);
          v48 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v86 = "NFDriverSecureElementGetOSInfoJCOP";
            v87 = 1024;
            v88 = 654;
            _os_log_impl(&dword_297F97000, v48, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get JCOP Version", buf, 0x12u);
          }

LABEL_62:
          v49 = sub_297FA2304(a1, 0, 0xFEu, 0xDF21u, 0);
          if (v49)
          {
            v50 = v49;
            v51 = *(v49 + 8);
            if (v51 < 0x19)
            {
              memcpy((a2 + 1152), *v49, v51);
              memcpy((a2 + 1176), *v50, v51);
            }

            else
            {
              v52 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v53 = NFLogGetLogger();
              if (v53)
              {
                v53(4, "%s:%i serial number too long: %ld", "NFDriverSecureElementGetOSInfoJCOP", 675, v51);
              }

              dispatch_get_specific(*v52);
              v54 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v86 = "NFDriverSecureElementGetOSInfoJCOP";
                v87 = 1024;
                v88 = 675;
                v89 = 2048;
                *v90 = v51;
                _os_log_impl(&dword_297F97000, v54, OS_LOG_TYPE_ERROR, "%{public}s:%i serial number too long: %ld", buf, 0x1Cu);
              }
            }

            NFDataRelease();
          }

          else
          {
            v55 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v56 = NFLogGetLogger();
            if (v56)
            {
              v56(4, "%s:%i Failed to get serial number", "NFDriverSecureElementGetOSInfoJCOP", 670);
            }

            dispatch_get_specific(*v55);
            v57 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v86 = "NFDriverSecureElementGetOSInfoJCOP";
              v87 = 1024;
              v88 = 670;
              _os_log_impl(&dword_297F97000, v57, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get serial number", buf, 0x12u);
            }
          }

          v58 = sub_297FA2304(a1, 0, 0xFEu, 0xDF31u, 0);
          if (!v58)
          {
            v63 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v64 = NFLogGetLogger();
            if (v64)
            {
              v64(4, "%s:%i Failed to get update info", "NFDriverSecureElementGetOSInfoJCOP", 690);
            }

            dispatch_get_specific(*v63);
            v65 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v86 = "NFDriverSecureElementGetOSInfoJCOP";
              v87 = 1024;
              v88 = 690;
              _os_log_impl(&dword_297F97000, v65, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to get update info", buf, 0x12u);
            }

            goto LABEL_99;
          }

          v59 = v58;
          NFDataPrintAsHexString();
          v60 = v59[1];
          if (v60 < 2)
          {
            v66 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v67 = NFLogGetLogger();
            if (v67)
            {
              v67(3, "%s:%i Invalid update info length: %zu", "NFDriverSecureElementGetOSInfoJCOP", 715, v59[1]);
            }

            dispatch_get_specific(*v66);
            v68 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v69 = v59[1];
              *buf = 136446722;
              v86 = "NFDriverSecureElementGetOSInfoJCOP";
              v87 = 1024;
              v88 = 715;
              v89 = 2048;
              *v90 = v69;
              _os_log_impl(&dword_297F97000, v68, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid update info length: %zu", buf, 0x1Cu);
            }

            goto LABEL_98;
          }

          v61 = *v59;
          *(a2 + 1242) = bswap32(**v59) >> 16;
          if (v60 < 8)
          {
            if (v60 < 6)
            {
LABEL_98:
              NFDataRelease();
LABEL_99:
              if (*v12 & 1) != 0 || (*(a2 + 1256))
              {
                return 1;
              }

              v74 = NFDataCreateWithBytes();
              if (NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v74, &v84))
              {
                NFDataRelease();
                if (a4)
                {
                  (a4)(a1, a2);
                }

                else
                {
                  sub_297FA30D8(a1, 0, a2);
                }

                v83 = NFDataCreateWithBytes();
                NFDriverSecureElementSelectWithOS(*a1, *(a1 + 4), 0, v83, &v84);
                NFDataRelease();
                return 1;
              }

              v75 = MEMORY[0x29EDC9730];
              dispatch_get_specific(*MEMORY[0x29EDC9730]);
              v76 = NFLogGetLogger();
              if (v76)
              {
                v76(3, "%s:%i Returned error: 0x%04x", "NFDriverSecureElementGetOSInfoJCOP", 727, v84);
              }

              dispatch_get_specific(*v75);
              v28 = NFSharedLogGetLogger();
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_39;
              }

              *buf = 136446722;
              v86 = "NFDriverSecureElementGetOSInfoJCOP";
              v87 = 1024;
              v88 = 727;
              v89 = 1024;
              *v90 = v84;
              goto LABEL_38;
            }

            *(a2 + 1228) = __rev16(*(v61 + 2));
            *(a2 + 1232) = *(v61 + 4);
            v62 = *(v61 + 5);
          }

          else
          {
            *(a2 + 1228) = __rev16(*(v61 + 2));
            *(a2 + 1240) = bswap32(*(v61 + 4)) >> 16;
            *(a2 + 1232) = *(v61 + 6);
            v62 = *(v61 + 7);
          }

          *(a2 + 1252) = v62;
          goto LABEL_98;
        }

        v33 = v32[1];
        if (v33 < 2)
        {
LABEL_52:
          v39 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v40 = NFLogGetLogger();
          if (v40)
          {
            v40(3, "%s:%i Did not find version tag!", "NFDriverUpdateJCOPVersion", 546);
          }

          dispatch_get_specific(*v39);
          v41 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          *buf = 136446466;
          v86 = "NFDriverUpdateJCOPVersion";
          v87 = 1024;
          v88 = 546;
          v42 = "%{public}s:%i Did not find version tag!";
          v43 = v41;
          v44 = OS_LOG_TYPE_ERROR;
          v45 = 18;
        }

        else
        {
          v34 = 0;
          v35 = *v32;
          v36 = 1;
          while (1)
          {
            v37 = *(v35 + v36);
            v38 = v34 + v37 + 2;
            if (*(v35 + v34) == 133)
            {
              break;
            }

            v36 = v34 + v37 + 3;
            v34 += v37 + 2;
            if (v38 + 1 >= v33)
            {
              goto LABEL_52;
            }
          }

          if (v37 != 3 || v38 > v33)
          {
            v71 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v72 = NFLogGetLogger();
            if (v72)
            {
              v72(3, "%s:%i Invalid version tag length %d", "NFDriverUpdateJCOPVersion", 553, v37);
            }

            dispatch_get_specific(*v71);
            v73 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            *buf = 136446722;
            v86 = "NFDriverUpdateJCOPVersion";
            v87 = 1024;
            v88 = 553;
            v89 = 1024;
            *v90 = v37;
            v42 = "%{public}s:%i Invalid version tag length %d";
            v43 = v73;
            v44 = OS_LOG_TYPE_ERROR;
            v45 = 24;
          }

          else
          {
            *(a2 + 1200) = *(v35 + v34 + 2);
            *(a2 + 1201) = *(v35 + v34 + 3);
            *(a2 + 1202) = *(v35 + v34 + 4);
            v77 = MEMORY[0x29EDC9730];
            dispatch_get_specific(*MEMORY[0x29EDC9730]);
            v78 = NFLogGetLogger();
            if (v78)
            {
              v78(6, "%s:%i major = %d, minor %d, build = %d", "NFDriverUpdateJCOPVersion", 562, *(a2 + 1200), *(a2 + 1201), *(a2 + 1202));
            }

            dispatch_get_specific(*v77);
            v79 = NFSharedLogGetLogger();
            if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_57;
            }

            v80 = *(a2 + 1200);
            v81 = *(a2 + 1201);
            v82 = *(a2 + 1202);
            *buf = 136447234;
            v86 = "NFDriverUpdateJCOPVersion";
            v87 = 1024;
            v88 = 562;
            v89 = 1024;
            *v90 = v80;
            *&v90[4] = 1024;
            *&v90[6] = v81;
            v91 = 1024;
            v92 = v82;
            v42 = "%{public}s:%i major = %d, minor %d, build = %d";
            v43 = v79;
            v44 = OS_LOG_TYPE_DEFAULT;
            v45 = 36;
          }
        }

        _os_log_impl(&dword_297F97000, v43, v44, v42, buf, v45);
LABEL_57:
        NFDataRelease();
        goto LABEL_62;
      }

LABEL_15:
      sub_297FA25B8(a1, a2);
      if ((*(a2 + 1255) & 1) == 0 && (*(a2 + 1256) & 1) == 0)
      {
        if (a3)
        {
          a3(a1, a2);
        }

        else
        {
          sub_297FA27E0(a1, a2);
        }
      }

      goto LABEL_24;
    case 0x9000u:
      v12 = (a2 + 1255);
      *(a2 + 1255) = 0;
      goto LABEL_15;
    case 0x66A5u:
      v9 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v10 = NFLogGetLogger();
      if (v10)
      {
        v10(5, "%s:%i Restricted Mode detected", "NFDriverSecureElementGetOSInfoJCOP", 583);
      }

      dispatch_get_specific(*v9);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v86 = "NFDriverSecureElementGetOSInfoJCOP";
        v87 = 1024;
        v88 = 583;
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Restricted Mode detected", buf, 0x12u);
      }

      v12 = (a2 + 1255);
      *(a2 + 1255) = 1;
      goto LABEL_24;
  }

  v16 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v17(3, "%s:%i Returned error: 0x%04x", "NFDriverSecureElementGetOSInfoJCOP", 591, v84);
  }

  dispatch_get_specific(*v16);
  v18 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446722;
    v86 = "NFDriverSecureElementGetOSInfoJCOP";
    v87 = 1024;
    v88 = 591;
    v89 = 1024;
    *v90 = v84;
    _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Returned error: 0x%04x", buf, 0x18u);
    return 0;
  }

  return result;
}

uint64_t sub_297FA4A00(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v7 = 0;
  result = sub_297FA2304(a1, 0, 0xFEu, 0xDF29u, &v7);
  if (v7 == 26277)
  {
    v3 = NFDataCreateWithBytes();
    if (NFDriverSecureElementSelectWithOS(*a1, *(a1 + 16), 0, v3, &v7))
    {
      NFDataRelease();
      return sub_297FA2304(a1, 0, 0xFEu, 0xDF29u, &v7);
    }

    else
    {
      v4 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i SELECT returned error: 0x%04x", "NFDriverSecureElementGetOSUpdateLog", 766, v7);
      }

      dispatch_get_specific(*v4);
      v6 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v9 = "NFDriverSecureElementGetOSUpdateLog";
        v10 = 1024;
        v11 = 766;
        v12 = 1024;
        v13 = v7;
        _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i SELECT returned error: 0x%04x", buf, 0x18u);
      }

      NFDataRelease();
      return 0;
    }
  }

  return result;
}

BOOL sub_297FA4B94(uint64_t a1, _BYTE *a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v30 = -1;
  if (a2)
  {
    *a2 = 0;
  }

  v4 = NFDataCreateWithBytes();
  if (v4)
  {
    v5 = NFDriverSecureElementSelectWithOS(*a1, *(a1 + 16), 0, v4, &v30);
    NFDataRelease();
    if (v5)
    {
      v6 = sub_297FA2304(a1, 0, 0xFEu, 0xDF3Cu, 0);
      if (v6)
      {
        v7 = v6;
        if (*(v6 + 8) == 1)
        {
          if (**v6 != 90)
          {
LABEL_29:
            NFDataRelease();
            return 1;
          }

          if (a2)
          {
            *a2 = 1;
            goto LABEL_29;
          }

          v27 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(3, "%s:%i AC log exists, but supplied output parameter is NULL.", "GetPresenceOfAttackLog", 818);
          }

          dispatch_get_specific(*v27);
          v29 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          *buf = 136446466;
          v32 = "GetPresenceOfAttackLog";
          v33 = 1024;
          v34 = 818;
          v24 = "%{public}s:%i AC log exists, but supplied output parameter is NULL.";
          v25 = v29;
          v26 = 18;
        }

        else
        {
          v20 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          v21 = NFLogGetLogger();
          if (v21)
          {
            v21(3, "%s:%i Bad response APDU length %d", "GetPresenceOfAttackLog", 824, *(v7 + 8));
          }

          dispatch_get_specific(*v20);
          v22 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          v23 = *(v7 + 8);
          *buf = 136446722;
          v32 = "GetPresenceOfAttackLog";
          v33 = 1024;
          v34 = 824;
          v35 = 1024;
          v36 = v23;
          v24 = "%{public}s:%i Bad response APDU length %d";
          v25 = v22;
          v26 = 24;
        }

        _os_log_impl(&dword_297F97000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
        goto LABEL_29;
      }

      v18 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v19(3, "%s:%i Unable to get presence of AC log", "GetPresenceOfAttackLog", 806);
      }

      dispatch_get_specific(*v18);
      v10 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v32 = "GetPresenceOfAttackLog";
        v33 = 1024;
        v34 = 806;
        v12 = "%{public}s:%i Unable to get presence of AC log";
        goto LABEL_22;
      }
    }

    else
    {
      v13 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v14(3, "%s:%i SELECT returned error: 0x%04x. Cannot query presence of attack log without selecting ISD", "GetPresenceOfAttackLog", 799, v30);
      }

      dispatch_get_specific(*v13);
      v15 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446722;
        v32 = "GetPresenceOfAttackLog";
        v33 = 1024;
        v34 = 799;
        v35 = 1024;
        v36 = v30;
        v12 = "%{public}s:%i SELECT returned error: 0x%04x. Cannot query presence of attack log without selecting ISD";
        v16 = v15;
        v17 = 24;
LABEL_23:
        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, v12, buf, v17);
        return 0;
      }
    }
  }

  else
  {
    v8 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(3, "%s:%i Unable to create aid needed for selecting ISD", "GetPresenceOfAttackLog", 792);
    }

    dispatch_get_specific(*v8);
    v10 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v32 = "GetPresenceOfAttackLog";
      v33 = 1024;
      v34 = 792;
      v12 = "%{public}s:%i Unable to create aid needed for selecting ISD";
LABEL_22:
      v16 = v10;
      v17 = 18;
      goto LABEL_23;
    }
  }

  return result;
}

uint64_t sub_297FA4FE8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v23 = *MEMORY[0x29EDCA608];
  v4 = NFDataCreateWithBytes();
  v5 = NFDriverSecureElementSendCommandToOS(*a1, *(a1 + 16), v2, 128, 202, 0, 254, 0, v4);
  NFDataRelease();
  v6 = 0;
  v7 = v5[1];
  if (v7 < 2 || (v6 = __rev16(*(*v5 + v7 - 2)), v6 != 36864))
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Returned error: 0x%04x", "UnlockRequestInfo", 855, v6);
    }

    dispatch_get_specific(*v13);
    v10 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136446722;
    v18 = "UnlockRequestInfo";
    v19 = 1024;
    v20 = 855;
    v21 = 1024;
    v22 = v6;
    v12 = "%{public}s:%i Returned error: 0x%04x";
    goto LABEL_12;
  }

  if (v7 > 6)
  {
    v15 = NFDataCreateWithBytes();
    goto LABEL_14;
  }

  v8 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v9 = NFLogGetLogger();
  if (v9)
  {
    v9(3, "%s:%i rapdu length too short %d", "UnlockRequestInfo", 863, *(v5 + 4));
  }

  dispatch_get_specific(*v8);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = *(v5 + 4);
    *buf = 136446722;
    v18 = "UnlockRequestInfo";
    v19 = 1024;
    v20 = 863;
    v21 = 1024;
    v22 = v11;
    v12 = "%{public}s:%i rapdu length too short %d";
LABEL_12:
    _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x18u);
  }

LABEL_13:
  v15 = 0;
LABEL_14:
  NFDataRelease();
  return v15;
}

void NFDriverUnloadStackAndLeaveHWEnabled(uint64_t a1, uint8_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i isLoaded=%d", "NFDriverUnloadStackAndLeaveHWEnabled", 93, *(a1 + 57));
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 57);
    *buf = 136446722;
    *&buf[4] = "NFDriverUnloadStackAndLeaveHWEnabled";
    *&buf[12] = 1024;
    *&buf[14] = 93;
    *&buf[18] = 1024;
    *&buf[20] = v7;
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i isLoaded=%d", buf, 0x18u);
  }

  if ((*(a1 + 56) & 1) == 0 && (*(*(a1 + 24) + 592) & 6) != 0)
  {
    v30[0] = -16192608;
    *(v30 + 7) = -1;
    memset(buf, 0, 44);
    NFDriverGetControllerInfo(a1, buf);
    if (*&buf[4] <= 0xDu)
    {
      v23 = sub_297FA02E4(0xBu, v30);
      v8 = sub_297FA0380(a1, 37025, v23, 0);
      v9 = sub_297F9F694(v8);
      dispatch_get_specific(*v4);
      v10 = NFLogGetLogger();
      if (v10)
      {
        v10(6, "%s:%i Nuked SE gate info : %llu", "_NFDriverNukeSEGateInfo", 84, v9);
      }

      dispatch_get_specific(*v4);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 136446722;
        v25 = "_NFDriverNukeSEGateInfo";
        v26 = 1024;
        v27 = 84;
        v28 = 2048;
        v29 = v9;
        _os_log_impl(&dword_297F97000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Nuked SE gate info : %llu", v24, 0x1Cu);
      }

      sub_297F9FBDC(v8);
      sub_297FA0714(&v23);
    }
  }

  sub_297FB8080(a1);
  if (*(a1 + 57))
  {
    *(a1 + 57) = 0;
    v12 = sub_297F9DC04();
    pthread_mutex_lock((v12[3] + 8));
    v13 = v12[3];
    ++*v13;
    pthread_mutex_unlock((v13 + 8));
    v14 = *(*(a1 + 24) + 560);
    *buf = MEMORY[0x29EDCA5F8];
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_297FA56B4;
    *&buf[24] = &unk_29EE876B0;
    buf[48] = a2;
    *&buf[32] = a1;
    *&buf[40] = v12;
    dispatch_async_and_wait(v14, buf);
    if (sub_297F9F694(v12))
    {
      dispatch_get_specific(*v4);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i status=0x%04llX", "NFDriverUnloadStackAndLeaveHWEnabled", 119, *v12);
      }

      dispatch_get_specific(*v4);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *v12;
        *buf = 136446722;
        *&buf[4] = "NFDriverUnloadStackAndLeaveHWEnabled";
        *&buf[12] = 1024;
        *&buf[14] = 119;
        *&buf[18] = 2048;
        *&buf[20] = v17;
        _os_log_impl(&dword_297F97000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", buf, 0x1Cu);
      }

      v18 = *(*(a1 + 24) + 560);
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_297FB7B1C;
      *&buf[24] = &unk_29EE880F8;
      *&buf[32] = a1;
      dispatch_async(v18, buf);
    }

    sub_297F9FBDC(v12);
    dispatch_semaphore_signal(*(*(a1 + 24) + 552));
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
    v19 = *(a1 + 24);
    *(v19 + 763) = 0;
    v20 = *(v19 + 528);
    if (v20)
    {
      free(v20);
      v19 = *(a1 + 24);
    }

    *(v19 + 528) = 0;
    v21 = *(v19 + 536);
    if (v21)
    {
      free(v21);
      v19 = *(a1 + 24);
    }

    *(v19 + 536) = 0;
    v22 = *(v19 + 544);
    if (v22)
    {
      free(v22);
      v19 = *(a1 + 24);
    }

    *(v19 + 544) = 0;
  }

  else
  {
    sub_297FA6EF4(a1, 0);
    dispatch_semaphore_signal(*(*(a1 + 24) + 552));
  }
}

void sub_297FA56B4(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = phLibNfc_RemoteDev_NtfUnregister();
  v3 = MEMORY[0x29EDC9730];
  if (v2)
  {
    v4 = v2;
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(4, "%s:%i status=0x%04X", "_Async_NFDriverUnloadStack_block_invoke", 44, v4);
    }

    dispatch_get_specific(*v3);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "_Async_NFDriverUnloadStack_block_invoke";
      v17 = 1024;
      v18 = 44;
      v19 = 1024;
      v20 = v4;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }

  v7 = phLibNfc_SE_NtfUnregister();
  if (v7)
  {
    v8 = v7;
    dispatch_get_specific(*v3);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v9(4, "%s:%i status=0x%04X", "_Async_NFDriverUnloadStack_block_invoke", 48, v8);
    }

    dispatch_get_specific(*v3);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "_Async_NFDriverUnloadStack_block_invoke";
      v17 = 1024;
      v18 = 48;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_297F97000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }
  }

  v11 = phLibNfc_Mgt_DeInitialize();
  if (v11 != 13)
  {
    v12 = v11;
    dispatch_get_specific(*v3);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i status=0x%04X", "_Async_NFDriverUnloadStack_block_invoke", 57, v12);
    }

    dispatch_get_specific(*v3);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v16 = "_Async_NFDriverUnloadStack_block_invoke";
      v17 = 1024;
      v18 = 57;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v12);
    sub_297F9FBDC(*(a1 + 40));
  }
}

void sub_297FA5964(uint64_t a1, void **a2, unsigned int a3)
{
  phTmlNfc_IoCtl();
  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

uint64_t NFDriverLoadStack(uint64_t a1, unsigned int a2)
{
  v59 = *MEMORY[0x29EDCA608];
  v4 = NFProductAllowsWiredInDLMode();
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i isLoaded=%d flags = 0x%x", "NFDriverLoadStack", 407, *(a1 + 57), a2);
  }

  dispatch_get_specific(*v5);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 57);
    *buf = 136446978;
    *&buf[4] = "NFDriverLoadStack";
    *&buf[12] = 1024;
    *&buf[14] = 407;
    *&buf[18] = 1024;
    *&buf[20] = v8;
    *&buf[24] = 1024;
    *&buf[26] = a2;
    _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i isLoaded=%d flags = 0x%x", buf, 0x1Eu);
  }

  if (*(a1 + 57))
  {
    return 0;
  }

  if (qword_2A18BD378 != -1)
  {
    dispatch_once(&qword_2A18BD378, &unk_2A1E97DF8);
  }

  v10 = *(a1 + 24);
  *(v10 + 592) = a2;
  v11 = *(v10 + 584);
  v12 = *(v10 + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FA6514;
  block[3] = &unk_29EE876F0;
  block[4] = v11;
  block[5] = a1;
  dispatch_async_and_wait(v12, block);
  v13 = v4 & (a2 >> 4);
  if (v13 == 1)
  {
    dispatch_get_specific(*v5);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(6, "%s:%i Flags requested DL mode only.", "NFDriverLoadStack", 461);
    }

    dispatch_get_specific(*v5);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "NFDriverLoadStack";
      *&buf[12] = 1024;
      *&buf[14] = 461;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Flags requested DL mode only.", buf, 0x12u);
    }

    goto LABEL_14;
  }

  v17 = sub_297FA6688(a1);
  if (!v17)
  {
    v16 = 1;
    goto LABEL_28;
  }

  v18 = v17;
  if (!v4 || v17 != 14 && v17 != 2)
  {
    dispatch_get_specific(*v5);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i Stack load failed with 0x%x", "NFDriverLoadStack", 471, v18);
    }

    dispatch_get_specific(*v5);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "NFDriverLoadStack";
      *&buf[12] = 1024;
      *&buf[14] = 471;
      *&buf[18] = 1024;
      *&buf[20] = v18;
      _os_log_impl(&dword_297F97000, v22, OS_LOG_TYPE_ERROR, "%{public}s:%i Stack load failed with 0x%x", buf, 0x18u);
    }

    goto LABEL_87;
  }

  dispatch_get_specific(*v5);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(3, "%s:%i Stack load failed with 0x%x, continuing in DL mode.", "NFDriverLoadStack", 468, v18);
  }

  dispatch_get_specific(*v5);
  v20 = NFSharedLogGetLogger();
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    v16 = 24;
LABEL_28:
    v54 = v16;
    goto LABEL_29;
  }

  *buf = 136446722;
  *&buf[4] = "NFDriverLoadStack";
  *&buf[12] = 1024;
  *&buf[14] = 468;
  *&buf[18] = 1024;
  *&buf[20] = v18;
  v54 = 24;
  _os_log_impl(&dword_297F97000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Stack load failed with 0x%x, continuing in DL mode.", buf, 0x18u);
LABEL_29:
  v23 = 0;
  v24 = 0;
  v56 = *(a1 + 57);
  while (v23 < 7)
  {
    v25 = &unk_2A1E97E18 + 24 * v24;
    v26 = *v25;
    if ((*v25 & 1) != 0 && (*(a1 + 58) & 1) != 0 || (v26 & 8) != 0 && !NFProductHasNFCRadio() || (v26 & 0x10) != 0 && (*(*(a1 + 24) + 592) & 4) != 0 || (v26 & 0x20) != 0 && (*(*(a1 + 24) + 592) & 2) != 0 || (v26 & 0x100) == 0 && (v56 & 1) == 0)
    {
      dispatch_get_specific(*v5);
      v27 = NFLogGetLogger();
      if (v27)
      {
        v27(6, "%s:%i Skipping step %d", "_NFDriverLoadStackSteps", 340, v24);
      }

      dispatch_get_specific(*v5);
      v28 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 136446722;
      *&buf[4] = "_NFDriverLoadStackSteps";
      *&buf[12] = 1024;
      *&buf[14] = 340;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      v29 = v28;
      goto LABEL_45;
    }

    if ((v26 & 6) == 0)
    {
      dispatch_get_specific(*v5);
      v31 = NFLogGetLogger();
      if (v31)
      {
        v31(3, "%s:%i Error : function at index %d will never run", "_NFDriverLoadStackSteps", 344, v24);
      }

      dispatch_get_specific(*v5);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "_NFDriverLoadStackSteps";
        *&buf[12] = 1024;
        *&buf[14] = 344;
        *&buf[18] = 1024;
        *&buf[20] = v24;
        _os_log_impl(&dword_297F97000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : function at index %d will never run", buf, 0x18u);
      }
    }

    if (*(a1 + 56) == 1)
    {
      if ((v26 & 4) == 0)
      {
        goto LABEL_62;
      }
    }

    else if ((v26 & 2) == 0)
    {
LABEL_62:
      dispatch_get_specific(*v5);
      v40 = NFLogGetLogger();
      if (v40)
      {
        v40(6, "%s:%i Skipping step %d", "_NFDriverLoadStackSteps", 349, v24);
      }

      dispatch_get_specific(*v5);
      v41 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      *buf = 136446722;
      *&buf[4] = "_NFDriverLoadStackSteps";
      *&buf[12] = 1024;
      *&buf[14] = 349;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      v29 = v41;
LABEL_45:
      _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Skipping step %d", buf, 0x18u);
      goto LABEL_46;
    }

    v33 = (*(v25 + 1))(a1);
    if (!v33)
    {
      goto LABEL_46;
    }

    v18 = v33;
    v55 = v13;
    v34 = *(v25 + 2);
    dispatch_get_specific(*v5);
    v35 = NFLogGetLogger();
    if (v34)
    {
      if (v35)
      {
        v35(3, "%s:%i %s : 0x%x", "_NFDriverLoadStackSteps", 367, v34, v18);
      }

      dispatch_get_specific(*v5);
      v36 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "_NFDriverLoadStackSteps";
        *&buf[12] = 1024;
        *&buf[14] = 367;
        *&buf[18] = 2080;
        *&buf[20] = v34;
        *&buf[28] = 1024;
        *&buf[30] = v18;
        v37 = v36;
        v38 = "%{public}s:%i %s : 0x%x";
        v39 = 34;
LABEL_70:
        _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_ERROR, v38, buf, v39);
      }
    }

    else
    {
      if (v35)
      {
        v35(3, "%s:%i Step %d error : 0x%x", "_NFDriverLoadStackSteps", 369, v24, v18);
      }

      dispatch_get_specific(*v5);
      v42 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "_NFDriverLoadStackSteps";
        *&buf[12] = 1024;
        *&buf[14] = 369;
        *&buf[18] = 1024;
        *&buf[20] = v24;
        *&buf[24] = 1024;
        *&buf[26] = v18;
        v37 = v42;
        v38 = "%{public}s:%i Step %d error : 0x%x";
        v39 = 30;
        goto LABEL_70;
      }
    }

    if ((v26 & 0x80) != 0 && v18 == 13)
    {
      dispatch_get_specific(*v5);
      v43 = NFLogGetLogger();
      v13 = v55;
      if (v43)
      {
        v43(3, "%s:%i Error at step %d, re-initializing", "_NFDriverLoadStackSteps", 372, v24);
      }

      dispatch_get_specific(*v5);
      v44 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "_NFDriverLoadStackSteps";
        *&buf[12] = 1024;
        *&buf[14] = 372;
        *&buf[18] = 1024;
        *&buf[20] = v24;
        _os_log_impl(&dword_297F97000, v44, OS_LOG_TYPE_ERROR, "%{public}s:%i Error at step %d, re-initializing", buf, 0x18u);
      }

      NFDriverUnloadStackAndLeaveHWEnabled(a1, 0);
      v45 = sub_297FA6688(a1);
      if (v45)
      {
        v18 = v45;
        dispatch_get_specific(*v5);
        v53 = NFLogGetLogger();
        if (v53)
        {
          v53(3, "%s:%i Re-init failed. Bailing.", "_NFDriverLoadStackSteps", 376);
        }

        dispatch_get_specific(*v5);
        v47 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          *&buf[4] = "_NFDriverLoadStackSteps";
          *&buf[12] = 1024;
          *&buf[14] = 376;
          v48 = "%{public}s:%i Re-init failed. Bailing.";
          goto LABEL_85;
        }

        goto LABEL_86;
      }

      ++v23;
      v24 = -1;
    }

    else
    {
      v13 = v55;
      if ((v26 & 0x40) == 0)
      {
        goto LABEL_86;
      }
    }

LABEL_46:
    if (v24++ >= 23)
    {
      v9 = v54;
      if (*(a1 + 57))
      {
        v50 = 0;
      }

      else
      {
        v50 = v54;
      }

      if ((v13 | *(a1 + 57)))
      {
        return v50;
      }

      v51 = *(*(a1 + 24) + 560);
      *buf = MEMORY[0x29EDCA5F8];
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_297FB7B1C;
      *&buf[24] = &unk_29EE880F8;
      *&buf[32] = a1;
      dispatch_async(v51, buf);
      return v9;
    }
  }

  dispatch_get_specific(*v5);
  v46 = NFLogGetLogger();
  if (v46)
  {
    v46(3, "%s:%i Max retries reached.", "_NFDriverLoadStackSteps", 328);
  }

  dispatch_get_specific(*v5);
  v47 = NFSharedLogGetLogger();
  v18 = 16;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    *&buf[4] = "_NFDriverLoadStackSteps";
    *&buf[12] = 1024;
    *&buf[14] = 328;
    v48 = "%{public}s:%i Max retries reached.";
    v18 = 16;
LABEL_85:
    _os_log_impl(&dword_297F97000, v47, OS_LOG_TYPE_ERROR, v48, buf, 0x12u);
  }

LABEL_86:
  v9 = v18;
  if (v13)
  {
    goto LABEL_88;
  }

LABEL_87:
  v49 = *(*(a1 + 24) + 560);
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_297FB7B1C;
  *&buf[24] = &unk_29EE880F8;
  *&buf[32] = a1;
  dispatch_async(v49, buf);
  v9 = v18;
LABEL_88:
  if (*(a1 + 56) == 1)
  {
    NFDriverNFCCPowerOff(a1);
  }

  NFDriverUnloadStackAndLeaveHWEnabled(a1, 0);
  return v9;
}

void sub_297FA6428()
{
  v7 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Running build from (B&I) Stockholm_Base-361.6", "NFDriverLoadStack_block_invoke", 419);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v4 = "NFDriverLoadStack_block_invoke";
    v5 = 1024;
    v6 = 419;
    _os_log_impl(&dword_297F97000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Running build from (B&I) Stockholm_Base-361.6", buf, 0x12u);
  }
}

void sub_297FA6514(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = phLibNfc_Mgt_ConfigureMwLogging();
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Stack logging failed with 0x%x", "NFDriverLoadStack_block_invoke", 445, v2);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v7 = "NFDriverLoadStack_block_invoke";
      v8 = 1024;
      v9 = 445;
      v10 = 1024;
      v11 = v2;
      _os_log_impl(&dword_297F97000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Stack logging failed with 0x%x", buf, 0x18u);
    }
  }
}

uint64_t sub_297FA6688(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = 1;
  while (1)
  {
    v3 = sub_297F9DC04();
    pthread_mutex_lock((v3[3] + 8));
    v4 = v3[3];
    ++*v4;
    pthread_mutex_unlock((v4 + 8));
    v5 = *(*(a1 + 24) + 560);
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 0x40000000;
    *&block[16] = sub_297FA7458;
    *&block[24] = &unk_29EE87730;
    v39 = a1;
    v40 = v3;
    dispatch_async_and_wait(v5, block);
    v6 = sub_297F9F694(v3);
    if (!v6)
    {
      v10 = 0;
      v18 = 0;
      goto LABEL_53;
    }

    if (*(*(a1 + 24) + 764) == 1)
    {
      NFDriverGetStackBreadcrumb(a1);
      postAnalyticsMiddlewareExceptionEvent();
    }

    v7 = *v3;
    if (*v3 != 67)
    {
      break;
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i eSE power-on failed! (%d/%d)", "_NFDriverLoadMW", 244, v2, 3);
    }

    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *block = 136446978;
      *&block[4] = "_NFDriverLoadMW";
      *&block[12] = 1024;
      *&block[14] = 244;
      *&block[18] = 1024;
      *&block[20] = v2;
      *&block[24] = 1024;
      *&block[26] = 3;
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i eSE power-on failed! (%d/%d)", block, 0x1Eu);
    }

    if (++v2 == 4)
    {
      v10 = 0;
LABEL_52:
      v18 = 1;
      goto LABEL_53;
    }
  }

  if (v7 <= 136)
  {
    if ((v7 - 128) < 2)
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(3, "%s:%i Incompatible firmware !", "_NFDriverLoadMW", 249);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 249;
        v13 = "%{public}s:%i Incompatible firmware !";
        v14 = v12;
        v15 = 18;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v7 == 136)
    {
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v19(3, "%s:%i Error 0x%x using API %d - requires a new firmware !", "_NFDriverLoadMW", 271, *(v3 + 6), *(v3 + 2));
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v20 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(v3 + 6);
        v22 = *(v3 + 2);
        *block = 136446978;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 271;
        *&block[18] = 1024;
        *&block[20] = v21;
        *&block[24] = 1024;
        *&block[26] = v22;
        v13 = "%{public}s:%i Error 0x%x using API %d - requires a new firmware !";
        v14 = v20;
        v15 = 30;
LABEL_33:
        _os_log_impl(&dword_297F97000, v14, OS_LOG_TYPE_ERROR, v13, block, v15);
      }

LABEL_34:
      v10 = 0;
      v18 = 2;
      goto LABEL_53;
    }

    goto LABEL_47;
  }

  switch(v7)
  {
    case 137:
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v23(3, "%s:%i Error 0x%x using API %d - requires a reboot !", "_NFDriverLoadMW", 275, *(v3 + 6), *(v3 + 2));
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v24 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(v3 + 6);
        v26 = *(v3 + 2);
        *block = 136446978;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 275;
        *&block[18] = 1024;
        *&block[20] = v25;
        *&block[24] = 1024;
        *&block[26] = v26;
        _os_log_impl(&dword_297F97000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Error 0x%x using API %d - requires a reboot !", block, 0x1Eu);
      }

      v27 = phTmlNfc_IoCtl();
      if (v27)
      {
        v35 = v27;
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v36 = NFLogGetLogger();
        if (v36)
        {
          v36(3, "%s:%i Error 0x%x powering off !", "_NFDriverLoadMW", 282, v35);
        }

        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v37 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *block = 136446722;
          *&block[4] = "_NFDriverLoadMW";
          *&block[12] = 1024;
          *&block[14] = 282;
          *&block[18] = 1024;
          *&block[20] = v35;
          _os_log_impl(&dword_297F97000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i Error 0x%x powering off !", block, 0x18u);
        }

        __assert_rtn("_NFDriverLoadMW", "NFDriverStackInit.c", 283, "NFCSTATUS_OK == ioctlStatus");
      }

      v10 = 0;
      v18 = 16;
      break;
    case 153:
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v28(3, "%s:%i DL session already open.", "_NFDriverLoadMW", 253);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 253;
        _os_log_impl(&dword_297F97000, v29, OS_LOG_TYPE_ERROR, "%{public}s:%i DL session already open.", block, 0x12u);
      }

      v10 = 0;
      v18 = 14;
      break;
    case 180:
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v16 = NFLogGetLogger();
      if (v16)
      {
        v16(3, "%s:%i Follower ID unresponsive!", "_NFDriverLoadMW", 264);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *block = 136446466;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 264;
        _os_log_impl(&dword_297F97000, v17, OS_LOG_TYPE_ERROR, "%{public}s:%i Follower ID unresponsive!", block, 0x12u);
      }

      if (NFIsInternalBuild() && (*(a1 + 56) & 1) == 0)
      {
        v18 = 17;
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
        {
          *block = 0;
          _os_log_fault_impl(&dword_297F97000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "Stockholm SPMI unresponsive", block, 2u);
        }

        v10 = 0;
      }

      else
      {
        v10 = 0;
        v18 = 17;
      }

      break;
    default:
LABEL_47:
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v30(3, "%s:%i status=0x%04llX", "_NFDriverLoadMW", 287, *v3);
      }

      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = *v3;
        *block = 136446722;
        *&block[4] = "_NFDriverLoadMW";
        *&block[12] = 1024;
        *&block[14] = 287;
        *&block[18] = 2048;
        *&block[20] = v32;
        _os_log_impl(&dword_297F97000, v31, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04llX", block, 0x1Cu);
      }

      v10 = 1;
      goto LABEL_52;
  }

LABEL_53:
  sub_297F9FBDC(v3);
  if (*(*(a1 + 24) + 764) == 1)
  {
    resetCALoadStackExceptionCount();
  }

  if (!v10)
  {
    if (v6)
    {
      return v18;
    }

    goto LABEL_61;
  }

  v33 = sub_297FB7E3C(a1);
  if (v33)
  {
    v18 = 16;
  }

  else
  {
    v18 = v18;
  }

  if (!v6 && !v33)
  {
LABEL_61:
    v18 = 0;
    *(a1 + 57) = 1;
  }

  return v18;
}

uint64_t sub_297FA6EF4(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = sub_297F9DC04();
  pthread_mutex_lock((v4[3] + 8));
  v5 = v4[3];
  ++*v5;
  pthread_mutex_unlock((v5 + 8));
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    if (a2)
    {
      v8 = "Enabling";
    }

    else
    {
      v8 = "Deactivating";
    }

    Logger(6, "%s:%i %s SE in DL mode", "_NFDriverConfigureSEInDownload", 884, v8);
  }

  dispatch_get_specific(*v6);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v10 = "Enabling";
    }

    else
    {
      v10 = "Deactivating";
    }

    *buf = 136446722;
    v25 = "_NFDriverConfigureSEInDownload";
    v26 = 1024;
    v27 = 884;
    v28 = 2080;
    v29 = v10;
    _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s SE in DL mode", buf, 0x1Cu);
  }

  v11 = *(*(a1 + 24) + 560);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = sub_297FA7248;
  block[3] = &unk_29EE87710;
  v23 = a2;
  block[4] = a1;
  block[5] = v4;
  dispatch_async_and_wait(v11, block);
  v12 = sub_297F9F694(v4);
  dispatch_get_specific(*v6);
  v13 = NFLogGetLogger();
  if (v12)
  {
    if (v13)
    {
      if (a2)
      {
        v14 = "enable";
      }

      else
      {
        v14 = "deactivate";
      }

      v13(3, "%s:%i Failed to %s SE in DL mode.", "_NFDriverConfigureSEInDownload", 904, v14);
    }

    dispatch_get_specific(*v6);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (a2)
      {
        v16 = "enable";
      }

      else
      {
        v16 = "deactivate";
      }

      *buf = 136446722;
      v25 = "_NFDriverConfigureSEInDownload";
      v26 = 1024;
      v27 = 904;
      v28 = 2080;
      v29 = v16;
      _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to %s SE in DL mode.", buf, 0x1Cu);
    }

    v17 = 1;
  }

  else
  {
    if (v13)
    {
      if (a2)
      {
        v18 = "Enabled";
      }

      else
      {
        v18 = "deactivated";
      }

      v13(6, "%s:%i SE %s in download mode", "_NFDriverConfigureSEInDownload", 907, v18);
    }

    dispatch_get_specific(*v6);
    v19 = NFSharedLogGetLogger();
    v17 = 0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v20 = "Enabled";
      }

      else
      {
        v20 = "deactivated";
      }

      *buf = 136446722;
      v25 = "_NFDriverConfigureSEInDownload";
      v26 = 1024;
      v27 = 907;
      v28 = 2080;
      v29 = v20;
      _os_log_impl(&dword_297F97000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i SE %s in download mode", buf, 0x1Cu);
      v17 = 0;
    }
  }

  sub_297F9FBDC(v4);
  return v17;
}

void sub_297FA7248(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = phLibNfc_Mgt_eSeCfgDnldMode();
  if (v2 != 13)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_NFDriverConfigureSEInDownload_block_invoke", 897, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "_NFDriverConfigureSEInDownload_block_invoke";
      v9 = 1024;
      v10 = 897;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297F9FB20(*(a1 + 40), v3);
    sub_297F9FBDC(*(a1 + 40));
  }
}

void sub_297FA73AC(uint64_t a1, void **a2, unsigned int a3)
{
  if (a2)
  {
    sub_297F9FB20(a2, a3);

    sub_297F9FBDC(a2);
  }
}

uint64_t sub_297FA73F4(uint64_t a1)
{
  v2[4] = xmmword_297FDB330;
  v2[5] = unk_297FDB340;
  v2[6] = xmmword_297FDB350;
  memset(&v2[7], 0, 80);
  v2[0] = *"\nOSE.VAS.01";
  v2[1] = unk_297FDB300;
  v2[2] = xmmword_297FDB310;
  v2[3] = unk_297FDB320;
  v3 = 6;
  return sub_297FC09CC(a1, v2);
}

void sub_297FA7458(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  NFIsRestoreOS();
  NFGetProductType();
  v2 = phLibNfc_Mgt_Initialize();
  if (v2 != 13)
  {
    v3 = v2;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i status=0x%04X", "_Async_NFDriverLoadMW_block_invoke", 208, v3);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v8 = "_Async_NFDriverLoadMW_block_invoke";
      v9 = 1024;
      v10 = 208;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_ERROR, "%{public}s:%i status=0x%04X", buf, 0x18u);
    }

    sub_297FBE498(*(*(*(a1 + 32) + 24) + 576), 0, (*(a1 + 40) + 12), (*(a1 + 40) + 8));
    sub_297F9FB20(*(a1 + 40), v3);
    sub_297F9FBDC(*(a1 + 40));
  }
}

void sub_297FA7644(uint64_t a1, void **a2, unsigned int a3)
{
  if (a3)
  {
    sub_297FBE498(a1, 0, a2 + 6, a2 + 2);
  }

  sub_297F9FB20(a2, a3);

  sub_297F9FBDC(a2);
}

BOOL sub_297FA769C(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*(a1 + 57) == 1)
  {
    v2 = sub_297F9DC04();
    pthread_mutex_lock((v2[3] + 8));
    v3 = v2[3];
    ++*v3;
    pthread_mutex_unlock((v3 + 8));
    v4 = *(*(a1 + 24) + 560);
    block = MEMORY[0x29EDCA5F8];
    v19 = 0x40000000;
    v20 = sub_297FAA9A4;
    v21 = &unk_29EE87750;
    v22 = a1;
    v23 = v2;
    dispatch_async_and_wait(v4, &block);
    if (sub_297F9F694(v2))
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i failed to register for notifications: 0x%04llX", "_NFDriverRegisterNCINotifications", 858, *v2);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *v2;
        *buf = 136446722;
        v25 = "_NFDriverRegisterNCINotifications";
        v26 = 1024;
        v27 = 858;
        v28 = 2048;
        v29 = v8;
        _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to register for notifications: 0x%04llX", buf, 0x1Cu);
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    sub_297F9FBDC(v2);
  }

  else
  {
    v10 = sub_297F9DC04();
    pthread_mutex_lock((v10[3] + 8));
    v11 = v10[3];
    ++*v11;
    pthread_mutex_unlock((v11 + 8));
    v12 = *(*(a1 + 24) + 560);
    block = MEMORY[0x29EDCA5F8];
    v19 = 0x40000000;
    v20 = sub_297FAAD7C;
    v21 = &unk_29EE87770;
    v22 = a1;
    v23 = v10;
    dispatch_async_and_wait(v12, &block);
    if (sub_297F9F694(v10))
    {
      v13 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v14 = NFLogGetLogger();
      if (v14)
      {
        v14(3, "%s:%i failed to register for notifications: 0x%04llX", "_NFDriverRegisterFWDLNotifications", 939, *v10);
      }

      dispatch_get_specific(*v13);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *v10;
        *buf = 136446722;
        v25 = "_NFDriverRegisterFWDLNotifications";
        v26 = 1024;
        v27 = 939;
        v28 = 2048;
        v29 = v16;
        _os_log_impl(&dword_297F97000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to register for notifications: 0x%04llX", buf, 0x1Cu);
      }

      sub_297F9FBDC(v10);
      return 1;
    }

    else
    {
      sub_297F9FBDC(v10);
      return sub_297FA6EF4(a1, 1) != 0;
    }
  }

  return v9;
}

uint64_t sub_297FA79D0(uint64_t a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (*(a1 + 57) == 1)
  {
    v2 = *(*(a1 + 24) + 560);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FAAEBC;
    block[3] = &unk_29EE87798;
    block[4] = &v14;
    block[5] = a1;
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    memset(v22, 0, 44);
    if (NFDriverGetControllerInfo(a1, v22))
    {
      v3 = *(a1 + 24);
      v4 = BYTE8(v22[0]);
      *(v3 + 620) = v22[0];
      *(v3 + 624) = BYTE8(v22[1]);
      *(v3 + 657) = v4;
      *(v3 + 612) = *(v22 + 12);
    }

    else
    {
      v5 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(4, "%s:%i failed to get stack info", "_NFDriverSetControllerInfo", 569);
      }

      dispatch_get_specific(*v5);
      v7 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v19 = "_NFDriverSetControllerInfo";
        v20 = 1024;
        v21 = 569;
        _os_log_impl(&dword_297F97000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to get stack info", buf, 0x12u);
      }

      *(v15 + 6) = 1;
    }
  }

  v8 = *(a1 + 24);
  *(v8 + 756) = sub_297FA01E8(*(v8 + 620), *(v8 + 624));
  v9 = *(v8 + 684);
  if (v9 == 2)
  {
    LOBYTE(ControllerInfo) = 1;
  }

  else if (v9 == 1 || (memset(v22, 0, 44), (ControllerInfo = NFDriverGetControllerInfo(a1, v22)) != 0) && ((DWORD1(v22[0]) & 0xFFFFFFFE) != 4 || (BYTE12(v22[0]) & 0xE0u) - 160 > 0x3F))
  {
    LOBYTE(ControllerInfo) = 0;
  }

  *(a1 + 58) = ControllerInfo;
  sub_297FBA53C(a1);
  phOsalNfc_setHardwareType();
  v11 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t sub_297FA7C40(uint64_t a1)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = *(*(a1 + 24) + 592);
  *&buf[16] = 2030516999;
  *buf = xmmword_297FDB3B8;
  v3 = MGIsDeviceOneOfType();
  v38 = -762483149;
  v37 = xmmword_297FDB3CC;
  v4 = MGIsDeviceOneOfType();
  v36 = -1276010597;
  v35 = xmmword_297FDB3E0;
  v5 = MGIsDeviceOneOfType();
  v34 = -1926937532;
  v33 = xmmword_297FDB3F4;
  v6 = MGIsDeviceOneOfType();
  v32 = -1902732724;
  v31 = xmmword_297FDB408;
  v7 = MGIsDeviceOneOfType();
  v30 = 300442574;
  v29 = xmmword_297FDB41C;
  v8 = MGIsDeviceOneOfType();
  v28 = -342357580;
  v27 = xmmword_297FDB430;
  v9 = MGIsDeviceOneOfType();
  v26 = -1294188889;
  v25 = xmmword_297FDB444;
  v10 = MGIsDeviceOneOfType();
  if (*a1 != 3)
  {
    if ((v2 & 2) != 0)
    {
      v11 = 6;
    }

    else
    {
      v11 = 5;
    }

    if (((v10 | v9 | v8 | v7 | v6 | v5 | v4) | v3))
    {
      v12 = v11;
    }

    else
    {
      v12 = 5;
    }

    v13 = sub_297F9DC04();
    pthread_mutex_lock((v13[3] + 8));
    v14 = v13[3];
    ++*v14;
    pthread_mutex_unlock((v14 + 8));
    v15 = *(*(a1 + 24) + 560);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = sub_297FAAFF0;
    block[3] = &unk_29EE877B8;
    v22 = v12;
    block[4] = a1;
    block[5] = v13;
    dispatch_async_and_wait(v15, block);
    if (sub_297F9F694(v13))
    {
      v16 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i failed to set baud rate: 0x%04llX", "_NFDriverConfigureBaudRate", 677, *v13);
      }

      dispatch_get_specific(*v16);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = *v13;
        *buf = 136446722;
        *&buf[4] = "_NFDriverConfigureBaudRate";
        *&buf[12] = 1024;
        *&buf[14] = 677;
        *&buf[18] = 2048;
        v24 = v19;
        _os_log_impl(&dword_297F97000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to set baud rate: 0x%04llX", buf, 0x1Cu);
      }
    }

    sub_297F9FBDC(v13);
  }

  return 0;
}

uint64_t sub_297FA7FA8(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v12 = 1;
  memset(v19, 0, 44);
  NFDriverGetControllerInfo(a1, v19);
  if (DWORD1(v19[0]) < 5 || DWORD1(v19[0]) == 5 && (*(a1 + 58) & 1) != 0)
  {
    return 0;
  }

  v3 = sub_297FA02E4(1u, &v12);
  v11 = v3;
  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i %s CRC", "_NFDriverEnableCRC", 706, "Enabling");
  }

  dispatch_get_specific(*v4);
  v6 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v14 = "_NFDriverEnableCRC";
    v15 = 1024;
    v16 = 706;
    v17 = 2080;
    v18 = "Enabling";
    _os_log_impl(&dword_297F97000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s CRC", buf, 0x1Cu);
  }

  v7 = sub_297FA0380(a1, 226, v3, 0);
  if (sub_297F9F694(v7))
  {
    dispatch_get_specific(*v4);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v8(3, "%s:%i Failed to %s NFCC CRC", "_NFDriverEnableCRC", 710, "enable");
    }

    dispatch_get_specific(*v4);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v14 = "_NFDriverEnableCRC";
      v15 = 1024;
      v16 = 710;
      v17 = 2080;
      v18 = "enable";
      _os_log_impl(&dword_297F97000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to %s NFCC CRC", buf, 0x1Cu);
    }

    if (*v7 == 137)
    {
      v2 = 13;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  sub_297F9FBDC(v7);
  sub_297FA0714(&v11);
  return v2;
}