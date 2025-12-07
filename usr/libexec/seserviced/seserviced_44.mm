void sub_1003C2200(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 96))
    {
      sub_100057A60();
      sub_100057B28();
      v12 = sub_100370CA8;
      v13 = &unk_1004C08D8;
      v14 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_1003721A0();
        v15 = 397;
        sub_1003721EC(&_mh_execute_header, v4, v5, "%s : %i : hceSessionTimer is not running.", v6, v7, v8, v9, v10, block[0], block[1], v12, v13, v14);
      }
    }
  }
}

uint64_t sub_1003C22E0(uint64_t result)
{
  if (result)
  {
    return *(result + 192);
  }

  return result;
}

void sub_1003C22EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 128));
    v4 = *(a1 + 128);
    sub_1000167BC();
    v5[1] = 3221225472;
    v5[2] = sub_100372FA4;
    v5[3] = &unk_1004C22F0;
    v5[4] = a1;
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t sub_1003C2384(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 128));
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v4 = *(a1 + 128);
    sub_100057A60();
    v7 = 3221225472;
    v8 = sub_100373000;
    v9 = &unk_1004D1C80;
    v10 = a1;
    v11 = v3;
    v12 = &v13;
    dispatch_sync(v4, block);
    LOBYTE(a1) = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  return a1 & 1;
}

void sub_1003C244C(uint64_t a1)
{
  if (a1)
  {
    sub_1003673C4();
    v4[1] = 3221225472;
    v4[2] = sub_100373E0C;
    v4[3] = &unk_1004C2B00;
    v4[4] = v1;
    v4[5] = v2;
    dispatch_async(v3, v4);
  }
}

uint64_t sub_1003C24B0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 128));
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v12 = *(a1 + 128);
    sub_1000167BC();
    v15[1] = 3221225472;
    v15[2] = sub_1003730FC;
    v15[3] = &unk_1004D1CA8;
    v15[4] = a1;
    v16 = v10;
    v17 = v9;
    v20 = a4;
    v18 = v11;
    v19 = &v21;
    dispatch_sync(v12, v15);
    v13 = *(v22 + 24);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_1003C25D8(uint64_t a1)
{
  if (a1)
  {
    sub_100375724();
    v4 = 3221225472;
    v5 = sub_100373460;
    v6 = &unk_1004C08D8;
    v7 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1003C2638(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 128);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_100373700;
    v11 = &unk_1004C24A8;
    v12 = v6;
    v13 = a1;
    v14 = v5;
    dispatch_async(v7, block);
  }
}

void sub_1003C26E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 128);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_100373C9C;
    v11 = &unk_1004C24A8;
    v12 = a1;
    v13 = v5;
    v14 = v6;
    dispatch_async(v7, block);
  }
}

uint64_t sub_1003C2794(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 128));
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    sub_1003673C4();
    v5[1] = 3221225472;
    v5[2] = sub_100373970;
    v5[3] = &unk_1004C24F8;
    v5[4] = v1;
    v5[5] = v2;
    dispatch_sync(v3, v5);
    LOBYTE(v1) = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return v1 & 1;
}

void sub_1003C2834(uint64_t a1)
{
  if (a1)
  {
    sub_100375724();
    v4 = 3221225472;
    v5 = sub_100373AB0;
    v6 = &unk_1004C08D8;
    v7 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1003C2894(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      sub_100375748();
      v300 = 395;
      v301 = 2048;
      *v302 = v5;
      *&v302[8] = 2048;
      v303 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : OPManager: Current state %ld, new state %ld", buf, 0x26u);
    }

    *(a1 + 168) = *(a1 + 200);
    *(a1 + 200) = a2;
    switch(a2)
    {
      case 0uLL:
        v6 = KmlLogger();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_52;
        }

        sub_1003756CC();
        v300 = 401;
        v8 = "%s : %i : OPManager: Nothing to do here.";
        goto LABEL_51;
      case 1uLL:
        v66 = KmlLogger();
        if (sub_100057AEC(v66))
        {
          sub_1003756CC();
          v300 = 405;
          sub_100375714();
          _os_log_impl(v67, v68, v69, v70, v71, 0x12u);
        }

        v72 = KmlSignpostLogger();
        if (os_signpost_enabled(v72))
        {
          *buf = 0;
          sub_1003756E0();
          sub_1003757A0(v73, v74, v75, v76, v77, v78, v79);
        }

        sub_1003C4478(*(a1 + 16), *(a1 + 80));
        return;
      case 2uLL:
        v6 = KmlLogger();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_52;
        }

        sub_1003756CC();
        v300 = 411;
        v8 = "%s : %i : Done with Pre-Warm. Waiting for request to start pairing";
LABEL_51:
        sub_10036DC0C(&_mh_execute_header, v6, v7, v8, buf);
LABEL_52:

        return;
      case 3uLL:
        *(a1 + 160) = sub_100397680(KmlEndpointManager, @"OWNR");
        v108 = objc_opt_new();
        v109 = *(a1 + 80);
        v293 = 0;
        v110 = [v108 isManufacturerSupported:v109 error:&v293];
        v111 = v293;
        v112 = *(a1 + 80);
        if (v110)
        {
          if (v112)
          {
            v292 = 0;
            sub_1003C3C50(a1, v112, 0, 0, &v292);
            v113 = v292;
LABEL_98:
            v199 = v113;
            goto LABEL_100;
          }

          goto LABEL_99;
        }

        if (!v112)
        {
LABEL_99:
          v199 = 0;
          goto LABEL_100;
        }

        v197 = KmlLogger();
        if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
        {
          sub_100375748();
          sub_1003757B8();
          *&v302[8] = v198;
          v303 = v111;
          _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_ERROR, "%s : %i : Pairing is not supported for %@, error : %@", buf, 0x26u);
        }

        if (v111)
        {
          v113 = sesErrorToKmlError();
          goto LABEL_98;
        }

        v204 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v296 = NSLocalizedDescriptionKey;
        v205 = [NSString stringWithUTF8String:KmlErrorString()];
        v297 = v205;
        v206 = [NSDictionary dictionaryWithObjects:&v297 forKeys:&v296 count:1];
        v199 = [NSError errorWithDomain:v204 code:33 userInfo:v206];

LABEL_100:
        WeakRetained = objc_loadWeakRetained((a1 + 184));
        [WeakRetained handleKmlOwnerPairingStartResult:v199];

        v201 = KmlLogger();
        v202 = os_log_type_enabled(v201, OS_LOG_TYPE_INFO);
        if (v199)
        {
          if (v202)
          {
            sub_1003756CC();
            v300 = 451;
            sub_10036DC0C(&_mh_execute_header, v201, v203, "%s : %i : client should call endPairingSession to cancel and clean out", buf);
          }
        }

        else
        {
          if (v202)
          {
            sub_1003756CC();
            v300 = 453;
            sub_10036DC0C(&_mh_execute_header, v201, v272, "%s : %i : pre-conditions satisfied.", buf);
          }

          sub_1003C244C(a1);
        }

        return;
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
        return;
      case 0xBuLL:
        v48 = *(a1 + 176);
        v49 = KmlLogger();
        v50 = sub_100057AEC(v49);
        if (v48 == 1)
        {
          if (v50)
          {
            sub_1003756CC();
            v300 = 461;
            sub_100375714();
            _os_log_impl(v51, v52, v53, v54, v55, 0x12u);
          }

          v56 = KmlSignpostLogger();
          if (os_signpost_enabled(v56))
          {
            *buf = 0;
            sub_1003756E0();
            sub_1003757A0(v57, v58, v59, v60, v61, v62, v63);
          }

          sub_1003B78C0(*(a1 + 8));
          v64 = dispatch_time(0, 5000000000);
          v65 = *(a1 + 128);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100373F9C;
          block[3] = &unk_1004C08D8;
          block[4] = a1;
          dispatch_after(v64, v65, block);
        }

        else
        {
          if (v50)
          {
            sub_1003756CC();
            v300 = 478;
            sub_100375714();
            _os_log_impl(v184, v185, v186, v187, v188, 0x12u);
          }

          v189 = KmlSignpostLogger();
          if (os_signpost_enabled(v189))
          {
            *buf = 0;
            sub_1003756E0();
            sub_1003757A0(v190, v191, v192, v193, v194, v195, v196);
          }

          sub_1003B72D4(*(a1 + 8));
        }

        return;
      case 0xCuLL:
        v230 = KmlLogger();
        if (sub_100057AEC(v230))
        {
          sub_1003756CC();
          v300 = 485;
          sub_100375714();
          _os_log_impl(v231, v232, v233, v234, v235, 0x12u);
        }

        v236 = KmlSignpostLogger();
        if (os_signpost_enabled(v236))
        {
          *buf = 0;
          sub_1003756E0();
          sub_1003757A0(v237, v238, v239, v240, v241, v242, v243);
        }

        v244 = sub_10036C414(*(a1 + 8));
        v245 = *(a1 + 24);
        *(a1 + 24) = v244;

        v246 = [KmlDeviceConfigurationData alloc];
        v247 = sub_1003DEBC4(*(a1 + 24));
        v248 = [v246 initWithData:v247];
        v249 = *(a1 + 144);
        *(a1 + 144) = v248;

        v250 = sub_1003B85AC(*(a1 + 24));
        v251 = [v250 manufacturer];

        v252 = sub_1003B85AC(*(a1 + 24));
        v253 = [v252 brand];

        v254 = objc_opt_new();
        v255 = [*(a1 + 144) mfiPPID];
        v288 = v254;
        v256 = sub_10037576C();

        v257 = [*(a1 + 144) mfiPPID];
        v289 = v251;
        v290 = 0;
        v258 = sub_1003C3C50(a1, v251, v253, v257, &v290);
        v259 = v290;
        v260 = v290;

        if ((v256 & 1) == 0)
        {
          [*(a1 + 144) removeUwbSupportLocally];
          if (sub_1003B85B8(*(a1 + 8)) == 2)
          {
            v261 = KmlLogger();
            if (os_log_type_enabled(v261, OS_LOG_TYPE_INFO))
            {
              sub_1003756CC();
              v300 = 515;
              v301 = 2112;
              *v302 = v251;
              *&v302[8] = 2112;
              v303 = v253;
              _os_log_impl(&_mh_execute_header, v261, OS_LOG_TYPE_INFO, "%s : %i : UWB is blocked for (%@,%@). We'll allow pairing over UWB, then make it NFC only key", buf, 0x26u);
            }
          }
        }

        if (v258)
        {
          objc_storeStrong((a1 + 120), v259);
          sub_1003C244C(a1);
          v6 = v251;
        }

        else
        {
          v263 = *(a1 + 16);
          v262 = *(a1 + 24);
          v264 = *(a1 + 56);
          v265 = sub_1003B768C(*(a1 + 8));
          v266 = sub_1003B8594(*(a1 + 8));
          sub_1003B85A0(*(a1 + 8));
          v267 = v253;
          v269 = v268 = v260;
          v270 = sub_1003B85AC(*(a1 + 8));
          v271 = [*(a1 + 144) readerSupportsUwb];
          v287 = *(a1 + 152);
          v6 = v289;
          sub_1003C459C(v263, v262, v289, v264, v265, v266, v269, v270, v271, v287);

          v260 = v268;
          v253 = v267;
        }

        goto LABEL_52;
      case 0xDuLL:
        v94 = KmlLogger();
        if (sub_100057AEC(v94))
        {
          sub_1003756CC();
          v300 = 540;
          sub_100375714();
          _os_log_impl(v95, v96, v97, v98, v99, 0x12u);
        }

        v100 = KmlSignpostLogger();
        if (os_signpost_enabled(v100))
        {
          *buf = 0;
          sub_1003756E0();
          sub_1003757A0(v101, v102, v103, v104, v105, v106, v107);
        }

        sub_1003B73CC(*(a1 + 8), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
        return;
      case 0x15uLL:
        v80 = KmlLogger();
        if (sub_100057AEC(v80))
        {
          sub_1003756CC();
          v300 = 546;
          sub_100375714();
          _os_log_impl(v81, v82, v83, v84, v85, 0x12u);
        }

        v86 = KmlSignpostLogger();
        if (os_signpost_enabled(v86))
        {
          *buf = 0;
          sub_1003756E0();
          sub_1003757A0(v87, v88, v89, v90, v91, v92, v93);
        }

        sub_1003B76C0(*(a1 + 8), *(a1 + 192));
        return;
      case 0x16uLL:
        v114 = KmlLogger();
        if (sub_100057AEC(v114))
        {
          sub_1003756CC();
          v300 = 552;
          sub_100375714();
          _os_log_impl(v115, v116, v117, v118, v119, 0x12u);
        }

        if (sub_1003F6F5C(v120) && (v121 = objc_opt_new(), v122 = [v121 emulateNFCOnlyDevice], v121, v122))
        {
          v123 = KmlLogger();
          if (sub_100057AEC(v123))
          {
            sub_1003756CC();
            v300 = 557;
            sub_100375714();
            _os_log_impl(v124, v125, v126, v127, v128, 0x12u);
          }

          v129 = 0;
        }

        else
        {
          v129 = 1;
        }

        v168 = +[NISession deviceCapabilities];
        v169 = [v168 supportsPreciseDistanceMeasurement];

        if (![*(a1 + 144) readerSupportsUwb] || !v129 || !v169)
        {
          goto LABEL_84;
        }

        v170 = KmlLogger();
        if (sub_100057AEC(v170))
        {
          sub_1003756CC();
          v300 = 569;
          sub_100375714();
          _os_log_impl(v171, v172, v173, v174, v175, 0x12u);
        }

        v176 = sub_1003770D8(*(a1 + 16));
        if (v176)
        {
          v167 = v176;
          v273 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v274 = [v167 userInfo];
          v275 = [NSError errorWithDomain:v273 code:32 userInfo:v274];
          v276 = *(a1 + 120);
          *(a1 + 120) = v275;

          [SESTapToRadar requestTapToRadarKML:@"OP Unable to disable full power NFC express for UWB key" client:@"KMLDisableNFCExpressError"];
          sub_1003C244C(a1);
        }

        else
        {
LABEL_84:
          v177 = KmlLogger();
          if (sub_100057AEC(v177))
          {
            sub_1003756CC();
            v300 = 578;
            sub_100375714();
            _os_log_impl(v178, v179, v180, v181, v182, 0x12u);
          }

          v183 = *(a1 + 16);
          v167 = sub_1003B765C(*(a1 + 8));
          sub_1003C4818(v183, v167, *(a1 + 88));
        }

LABEL_87:

        return;
      case 0x17uLL:
        v130 = KmlLogger();
        if (sub_100057AEC(v130))
        {
          sub_1003756CC();
          v300 = 586;
          sub_100375714();
          _os_log_impl(v131, v132, v133, v134, v135, 0x12u);
        }

        v136 = KmlSignpostLogger();
        if (os_signpost_enabled(v136))
        {
          *buf = 0;
          sub_1003756E0();
          _os_signpost_emit_with_name_impl(v137, v138, OS_SIGNPOST_EVENT, v139, v140, v141, v142, 2u);
        }

        v143 = objc_loadWeakRetained((a1 + 184));
        [v143 handleKmlOwnerPairingCompletionWithResult:*(a1 + 120) keyInformation:*(a1 + 96) keyTrackingRequest:*(a1 + 104)];

        sub_1003740FC(a1);
        return;
      default:
        switch(a2)
        {
          case ')':
            v9 = KmlLogger();
            if (sub_100057AEC(v9))
            {
              sub_1003756CC();
              v300 = 628;
              sub_100375714();
              _os_log_impl(v10, v11, v12, v13, v14, 0x12u);
            }

            sub_1003B7514(*(a1 + 8));
            return;
          case '*':
            v22 = KmlLogger();
            if (sub_100057AEC(v22))
            {
              sub_1003756CC();
              v300 = 633;
              sub_100375714();
              _os_log_impl(v23, v24, v25, v26, v27, 0x12u);
            }

            v28 = KmlSignpostLogger();
            if (os_signpost_enabled(v28))
            {
              v29 = *(a1 + 120);
              *buf = 138412290;
              v299 = v29;
              sub_1003756E0();
              _os_signpost_emit_with_name_impl(v30, v31, OS_SIGNPOST_INTERVAL_END, v32, v33, v34, v35, 0xCu);
            }

            v36 = KmlLogger();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              v37 = sub_1003B7AE4(*(a1 + 8));
              sub_100376FF0(*(a1 + 16));
              sub_1003756CC();
              v300 = 637;
              v301 = v38;
              *v302 = v37;
              *&v302[4] = v38;
              *&v302[6] = v39;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s : %i : Debug states: DXManagerStep - %08x ; SEManagerStep - %08x", buf, 0x1Eu);
            }

            sub_100369DDC(KmlAnalyticsLogger);
            v40 = *(a1 + 120);
            *(a1 + 120) = 0;
            goto LABEL_27;
          case '+':
            v213 = KmlLogger();
            if (sub_100057AEC(v213))
            {
              sub_100375748();
              sub_1003757B8();
              sub_100375714();
              _os_log_impl(v214, v215, v216, v217, v218, 0x1Cu);
            }

            sub_1003C47A8(*(a1 + 16));
            if ((*(a1 + 177) & 1) == 0)
            {
              v219 = objc_loadWeakRetained((a1 + 184));
              [v219 handleKmlOwnerPairingCompletionWithResult:*(a1 + 120) keyInformation:0 keyTrackingRequest:0];

              if (sub_1003F6F5C(v220) && (v221 = objc_opt_new(), v222 = [v221 emulateNFCOnlyDevice], v221, v222))
              {
                v223 = KmlLogger();
                if (sub_100057AEC(v223))
                {
                  sub_1003756CC();
                  v300 = 654;
                  sub_100375714();
                  _os_log_impl(v224, v225, v226, v227, v228, 0x12u);
                }

                v229 = 0;
              }

              else
              {
                v229 = 1;
              }

              v277 = +[NISession deviceCapabilities];
              v278 = [v277 supportsPreciseDistanceMeasurement];

              sub_1003B7A28(*(a1 + 8), *(a1 + 120), v229 & [*(a1 + 144) readerSupportsUwb] & v278, *(a1 + 192));
              sub_1003740FC(a1);
            }

            v279 = *(a1 + 168);
            if (v279 == 21)
            {
              v280 = KmlSignpostLogger();
              if (!os_signpost_enabled(v280))
              {
                goto LABEL_148;
              }

              *buf = 0;
              goto LABEL_147;
            }

            if (v279 == 13)
            {
              v280 = KmlSignpostLogger();
              if (!os_signpost_enabled(v280))
              {
                goto LABEL_148;
              }

              *buf = 0;
              goto LABEL_147;
            }

            if (v279 != 11)
            {
              goto LABEL_149;
            }

            v280 = KmlSignpostLogger();
            if (os_signpost_enabled(v280))
            {
              *buf = 0;
LABEL_147:
              sub_1003756E0();
              _os_signpost_emit_with_name_impl(v281, v282, OS_SIGNPOST_INTERVAL_END, v283, v284, v285, v286, 2u);
            }

LABEL_148:

LABEL_149:
            sub_1003C244C(a1);
            break;
          case ',':
          case '-':
          case '.':
          case '/':
          case '0':
          case '1':
          case '2':
            return;
          case '3':
            v207 = KmlLogger();
            if (sub_100057AEC(v207))
            {
              sub_1003756CC();
              v300 = 685;
              sub_100375714();
              _os_log_impl(v208, v209, v210, v211, v212, 0x12u);
            }

            sub_1003C3FCC(a1);
            goto LABEL_149;
          case '4':
            v41 = KmlLogger();
            if (sub_100057AEC(v41))
            {
              sub_1003756CC();
              v300 = 692;
              sub_100375714();
              _os_log_impl(v42, v43, v44, v45, v46, 0x12u);
            }

            sub_1003C75AC(*(a1 + 16), 0);
            v47 = *(a1 + 16);
            *(a1 + 16) = 0;

            sub_1003B8584(*(a1 + 8), 0);
            v40 = *(a1 + 8);
            *(a1 + 8) = 0;
LABEL_27:

            return;
          default:
            if (a2 != 31)
            {
              if (a2 == 32)
              {
                v15 = KmlLogger();
                if (sub_100057AEC(v15))
                {
                  sub_1003756CC();
                  v300 = 615;
                  sub_100375714();
                  _os_log_impl(v16, v17, v18, v19, v20, 0x12u);
                }

                v21 = *(a1 + 8);
                if (v21)
                {
                  sub_1003B74C4(v21);
                }

                else
                {
                  [a1 handleOwnerPairingCancellationWithResult:1];
                }

                sub_1003C4748(*(a1 + 16));
              }

              return;
            }

            v144 = objc_loadWeakRetained((a1 + 184));
            [v144 handleKmlOwnerPairingTrackingReceiptSaveResult:0];

            if (*(a1 + 136) == 1)
            {
              v145 = KmlLogger();
              if (sub_100057AEC(v145))
              {
                sub_1003756CC();
                v300 = 599;
                sub_100375714();
                _os_log_impl(v146, v147, v148, v149, v150, 0x12u);
              }

              v144 = KmlSignpostLogger();
              if (os_signpost_enabled(v144))
              {
                *buf = 0;
                sub_1003756E0();
                sub_1003757A0(v151, v152, v153, v154, v155, v156, v157);
              }

              if (sub_1003B7750(*(a1 + 8), *(a1 + 192)))
              {
                return;
              }
            }

            v158 = KmlLogger();
            if (sub_100057AEC(v158))
            {
              sub_1003756CC();
              v300 = 607;
              sub_100375714();
              _os_log_impl(v159, v160, v161, v162, v163, 0x12u);
            }

            v164 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            v294 = NSLocalizedDescriptionKey;
            v165 = [NSString stringWithUTF8String:KmlErrorString()];
            v295 = v165;
            v166 = [NSDictionary dictionaryWithObjects:&v295 forKeys:&v294 count:1];
            v167 = [NSError errorWithDomain:v164 code:8 userInfo:v166];

            [a1 handleFirstPostPairingTransactionEndResult:v167];
            goto LABEL_87;
        }

        break;
    }
  }
}

uint64_t sub_1003C3C50(uint64_t result, void *a2, void *a3, void *a4, void *a5)
{
  if (!result)
  {
    return result;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = objc_opt_new();
  v12 = 1;
  v13 = [v11 BOOLValueForSetting:1 manufacturer:v10 brand:v9 uuid:v8 error:0];

  if (sub_1003F6F5C(v14))
  {
    if ([v11 emulateNFCOnlyDevice])
    {
      v15 = KmlLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        sub_10036DCC4();
        v35 = 946;
        sub_10036DC0C(&_mh_execute_header, v15, v16, "%s : %i : Emulating NFC only device", buf);
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  v17 = +[NISession deviceCapabilities];
  v18 = [v17 supportsPreciseDistanceMeasurement];

  v19 = 0;
  v20 = 0;
  if (v13 && (v12 & v18 & 1) == 0)
  {
    v21 = +[NRPairedDeviceRegistry sharedInstance];
    v22 = [v21 getActivePairedDevice];

    if (v22)
    {
      v23 = [[NSUUID alloc] initWithUUIDString:@"C4F6386A-780D-40E5-9900-0A26C16273A1"];
      if ([v22 supportsCapability:v23])
      {
        v24 = [[NSUUID alloc] initWithUUIDString:@"81D292E4-16D8-4630-82ED-BDF62B05E334"];
        v25 = [v22 supportsCapability:v24];

        if (v25)
        {
          v26 = KmlLogger();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            sub_10036DCC4();
            v35 = 960;
            sub_10036DC0C(&_mh_execute_header, v26, v27, "%s : %i : Allowing NFC only phone to have owner key since there is a paired UWB-capable watch", buf);
          }

          v20 = 0;
          v19 = 0;
LABEL_22:

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    v28 = KmlLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10036DCC4();
      v35 = 962;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s : %i : NFC-only devices are blocked for this vehicle", buf, 0x12u);
    }

    v26 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v32 = NSLocalizedDescriptionKey;
    v29 = [NSString stringWithUTF8String:KmlErrorString()];
    v33 = v29;
    v20 = 1;
    v30 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v19 = [NSError errorWithDomain:v26 code:218 userInfo:v30];

    goto LABEL_22;
  }

LABEL_23:
  if (a5)
  {
    v31 = v19;
    *a5 = v19;
  }

  return v20;
}

void sub_1003C3FCC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      v3 = [v2 code];
    }

    else
    {
      v3 = 0;
    }

    v4 = sub_1003B85AC(*(a1 + 24));

    if (v4)
    {
      v5 = sub_1003B85AC(*(a1 + 24));
      v6 = [v5 manufacturer];
      v7 = [v6 copy];

      v8 = sub_1003B85AC(*(a1 + 24));
      v9 = [v8 brand];
      v10 = [v9 copy];

      v11 = sub_1003B85AC(*(a1 + 24));
      v12 = [v11 regionString];
      v13 = [v12 copy];
    }

    else
    {
      v13 = @"Unknown";
      v10 = @"Unknown";
      v7 = @"Unknown";
    }

    v14 = [*(a1 + 144) readerSupportsNfc];
    if ([*(a1 + 144) readerSupportsUwb])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    sub_1003DE58C(*(a1 + 24));
    v16 = kmlUtilKeyClassOriginBitmap();
    v17 = sub_100369220(KmlAnalyticsLogger, *(a1 + 192));
    v18 = [NSNumber numberWithUnsignedInt:v3, @"errorCode"];
    v24[0] = v18;
    v24[1] = &off_1004DCD08;
    v23[1] = @"accountRole";
    v23[2] = @"didReceiveProductPlanIdentifier";
    v24[2] = &off_1004DCD20;
    v24[3] = &off_1004DCD20;
    v23[3] = @"didReceiveSlotIdentifier";
    v23[4] = @"didReceiveImmoToken";
    v24[4] = &off_1004DCD20;
    v24[5] = &off_1004DCD20;
    v23[5] = @"didReceiveOnlineBLEKeys";
    v23[6] = @"isOwner";
    v24[6] = &off_1004DCD38;
    v23[7] = @"keyClassOriginBitmap";
    v19 = [NSNumber numberWithUnsignedChar:v16];
    v24[7] = v19;
    v24[8] = v13;
    v23[8] = @"dataCenterCode";
    v23[9] = @"manufacturer";
    v24[9] = v7;
    v24[10] = v10;
    v23[10] = @"brand";
    v23[11] = @"transportSupported";
    v20 = [NSNumber numberWithUnsignedInteger:v15 | v14];
    v24[11] = v20;
    v23[12] = @"trackingRequestDuration";
    v21 = [NSNumber numberWithUnsignedInt:v17];
    v24[12] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:13];

    sub_1003695CC(KmlAnalyticsLogger, v22);
  }
}

id *sub_1003C42B4(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 23, a2);
  }

  return result;
}

uint64_t sub_1003C42C4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 176);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003C42DC(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 177);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id *sub_1003C42F4(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = KmlSeManager;
    a1 = objc_msgSendSuper2(&v14, "init");
    if (a1)
    {
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v15 = 136315394;
        v16 = "[KmlSeManager initWithDelegate:]";
        sub_10036F4A8();
        v17 = 76;
        sub_100377C78(&_mh_execute_header, v5, v6, "%s : %i : SEManager: let's init", &v15);
      }

      objc_storeWeak(a1 + 17, v3);
      a1[1] = 0;
      a1[2] = 0;
      *(a1 + 96) = 1;
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("com.apple.sesd.kml.seManager", v7);
      v9 = a1[16];
      a1[16] = v8;

      v10 = KmlLogger();
      if (sub_10036DCF8(v10))
      {
        v15 = 136315394;
        v16 = "[KmlSeManager initWithDelegate:]";
        sub_10036F4A8();
        v17 = 83;
        sub_100377C78(&_mh_execute_header, v11, v12, "%s : %i : SEManager: ready to roll", &v15);
      }
    }
  }

  return a1;
}

void sub_1003C4478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 128);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003769FC;
    v6[3] = &unk_1004C22F0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1003C4520(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 128);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100377664;
    v3[3] = &unk_1004C2B00;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003C459C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9, void *a10)
{
  v25 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  if (a1)
  {
    v24 = *(a1 + 128);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100377D84;
    block[3] = &unk_1004D1CF8;
    v27 = v17;
    v28 = a1;
    v29 = v25;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v36 = a9;
    v35 = v23;
    dispatch_async(v24, block);
  }
}

void sub_1003C4748(uint64_t a1)
{
  if (a1)
  {
    sub_100375724();
    v4 = 3221225472;
    v5 = sub_100376AF0;
    v6 = &unk_1004C08D8;
    v7 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1003C47A8(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 128));
    sub_100057A60();
    sub_100057B28();
    v4 = sub_100376B58;
    v5 = &unk_1004C08D8;
    v6 = a1;
    dispatch_sync(v2, block);
  }
}

void sub_1003C4818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 128);
    sub_100057A60();
    sub_100057B28();
    v9 = sub_100376D50;
    v10 = &unk_1004C24A8;
    v11 = a1;
    v12 = v5;
    v13 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1003C48C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    v68 = v9;
    v11 = &v75;
    if ((+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 104) agreedKmlVehicleVersion], 768) & 1) != 0 || !v7)
    {
      v12 = sub_1003C6E04(a1, v8);
      if (!v12)
      {
        v51 = KmlLogger();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v75 = 136315394;
          v76 = "[KmlSeManager buildTrackingRequestWithOpaqueAttestation:endpoint:anonymizedDsid:]";
          sub_1003674B0();
          v77 = 514;
          sub_10036F500(&_mh_execute_header, v51, v63, "%s : %i : Opaque attestation missing.", &v75);
        }

        v10 = v68;
        goto LABEL_33;
      }
    }

    else
    {
      v12 = v7;
    }

    v13 = +[NSMutableArray array];
    v14 = [KmlTlv TLVWithTag:32546 value:*(a1 + 160)];
    sub_100377C94(v14);

    v15 = [KmlTlv TLVWithTag:32548 value:*(a1 + 168)];
    sub_100377C94(v15);

    v16 = [KmlDeviceConfigurationData alloc];
    [v8 deviceConfiguration];
    objc_claimAutoreleasedReturnValue();
    v17 = [sub_10036746C() initWithData:&v75];

    v66 = v17;
    v67 = v12;
    if ([v17 isOwnerImmoTokenOrSlotOnline] && objc_msgSend_isImmoTokenNeeded(v17))
    {
      v73 = 0;
      v18 = SESEndPointCreateEncryptionKey();
      v19 = 0;
      if (v19)
      {
        v20 = v19;
        v21 = KmlLogger();
        if (sub_100377D18(v21))
        {
          v75 = 136315650;
          sub_100377C2C("[KmlSeManager buildTrackingRequestWithOpaqueAttestation:endpoint:anonymizedDsid:]");
          sub_100377CFC(531);
          *(v22 + 20) = v20;
          sub_100377CF0();
          _os_log_impl(v23, v24, v25, v26, v27, 0x1Cu);
        }

        goto LABEL_31;
      }

      v20 = v18;
      v12 = v67;
    }

    else
    {
      v20 = 0;
    }

    v28 = [KmlTlv TLVWithTag:213 value:v12];
    sub_100377C94(v28);

    [*(a1 + 40) dataUsingEncoding:4];
    objc_claimAutoreleasedReturnValue();
    v29 = [sub_10036746C() TLVWithTag:211 value:&v75];
    sub_100377C94(v29);

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 104) agreedKmlVehicleVersion], 768))
    {
      v30 = sub_1003DC544(*(a1 + 24));
      v10 = v68;
      v18 = kmlUtilGenerateAccountInfoHash();

      if ([v18 length])
      {
        v32 = KmlLogger();
        if (sub_10036DCF8(v32))
        {
          v75 = 136315394;
          sub_100377C2C("[KmlSeManager buildTrackingRequestWithOpaqueAttestation:endpoint:anonymizedDsid:]");
          *(v33 + 14) = 544;
          sub_100377C78(&_mh_execute_header, v34, v35, "%s : %i : Add account info hash", &v75);
        }

        v36 = [KmlTlv TLVWithTag:94 value:v18];
        sub_100377C94(v36);

        v37 = v68;
        v30 = *(a1 + 112);
        *(a1 + 112) = v37;
      }

      else
      {
        if (!sub_1003F6F5C(v31) || (v30 = objc_opt_new(), v11 = [v30 bypassAccountInfoHash], v30, !v11))
        {
          v56 = KmlLogger();
          if (sub_100377D18(v56))
          {
            v75 = 136315394;
            sub_100377C2C("[KmlSeManager buildTrackingRequestWithOpaqueAttestation:endpoint:anonymizedDsid:]");
            *(v57 + 14) = 552;
            sub_100377CF0();
            _os_log_impl(v58, v59, v60, v61, v62, 0x12u);
          }

          goto LABEL_32;
        }

        v52 = KmlLogger();
        if (sub_10036DCF8(v52))
        {
          v75 = 136315394;
          sub_100377C2C("[KmlSeManager buildTrackingRequestWithOpaqueAttestation:endpoint:anonymizedDsid:]");
          *(v53 + 14) = 550;
          sub_100377C78(&_mh_execute_header, v54, v55, "%s : %i : Ignoring error in generating account info hash", &v75);
        }
      }
    }

    v64 = v8;
    v65 = v7;
    [v8 privacyPublicKey];
    objc_claimAutoreleasedReturnValue();
    v38 = [sub_10036746C() TLVWithTag:24393 value:v11];
    sub_100377C94(v38);

    [@"ECIES_v1" dataUsingEncoding:4];
    objc_claimAutoreleasedReturnValue();
    v39 = [sub_10036746C() TLVWithTag:218 value:v11];
    sub_100377C94(v39);

    v18 = +[NSMutableData data];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v40 = v13;
    v41 = [v40 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v70;
      do
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v70 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v69 + 1) + 8 * i);
          if ([v45 tag] == 213 && v20 != 0)
          {
            [v18 appendData:v20];
          }

          v47 = [v45 asData];
          [v18 appendData:v47];
        }

        v42 = [v40 countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v42);
    }

    v48 = [KmlTlv TLVWithTag:32574 value:v18];
    v49 = [v48 asData];
    v50 = *(a1 + 48);
    *(a1 + 48) = v49;

    kmlUtilLogLargeData();
    v8 = v64;
    v7 = v65;
LABEL_31:
    v10 = v68;
LABEL_32:

    v51 = v67;
LABEL_33:
  }
}

void *sub_1003C4EE0(void *a1, void *a2)
{
  v6 = a2;
  if (a1)
  {
    if (a1[6])
    {
      v7 = SESEndPointPrivacyEncryption();
      v8 = 0;
      if (v8)
      {
        v9 = v8;
        v10 = KmlLogger();
        if (sub_10036F5C4(v10))
        {
          v35 = 136315650;
          v36 = "[KmlSeManager encryptTrackingRequestWithEndpoint:]";
          sub_10036F4A8();
          sub_10036F460();
          v38 = v9;
          sub_10036F590(&_mh_execute_header, v4, v11, "%s : %i : SEManager: Failed to encrypt tracking request with - %@", &v35);
        }

        v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v13 = [v9 userInfo];
        v14 = [NSError errorWithDomain:v12 code:28 userInfo:v13];
        v15 = a1[15];
        a1[15] = v14;
      }

      else
      {
        v25 = [DAAlishaKeyEncryptedRequest alloc];
        v26 = [sub_10036746C() version];
        v27 = [v7 ephemeralPublicKeydata];
        v28 = [v7 receiverPublicKeyHash];
        v29 = [v7 cipherText];
        v12 = [v3 initWithVersion:v26 ephemeralPublicKey:v27 publicKeyHash:v28 encryptedRequest:v29];

        v9 = sub_1003C737C(a1, v12, v6);
        if (!v9)
        {
          sub_1003C4520(a1, 6);
          v12 = v12;
          a1 = v12;
          goto LABEL_12;
        }

        v30 = KmlLogger();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v35 = 136315650;
          v36 = "[KmlSeManager encryptTrackingRequestWithEndpoint:]";
          sub_10036F4A8();
          sub_10036F460();
          v38 = v9;
          sub_10036F590(&_mh_execute_header, v30, v31, "%s : %i : SEManager: Failed to save tracking request with - %@", &v35);
        }

        v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v32 = [v9 userInfo];
        v33 = [NSError errorWithDomain:v13 code:28 userInfo:v32];
        v34 = a1[15];
        a1[15] = v33;
      }
    }

    else
    {
      v16 = KmlLogger();
      if (sub_100377D18(v16))
      {
        v35 = 136315394;
        v36 = "[KmlSeManager encryptTrackingRequestWithEndpoint:]";
        sub_10036F4A8();
        v37 = 595;
        sub_100377CF0();
        _os_log_impl(v17, v18, v19, v20, v21, 0x12u);
      }

      v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v39 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v7 = [sub_100377D30() stringWithUTF8String:?];
      v40 = v7;
      v12 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v22 = [NSError errorWithDomain:v9 code:28 userInfo:v12];
      v23 = a1[15];
      a1[15] = v22;
    }

    a1 = 0;
LABEL_12:
  }

  return a1;
}

void sub_1003C52D0(uint64_t a1)
{
  if (a1)
  {
    sub_100375724();
    v4 = 3221225472;
    v5 = sub_10037730C;
    v6 = &unk_1004C08D8;
    v7 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1003C5330(uint64_t a1, NSObject *a2)
{
  if (a1)
  {
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      v6 = *(a1 + 8);
      *buf = 136315906;
      v26 = "[KmlSeManager setCurrentState_sync:]";
      v27 = 1024;
      v28 = 287;
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      v32 = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : SEManager: Current state %ld, new state %ld", buf, 0x26u);
    }

    v7 = *(a1 + 8);
    *(a1 + 8) = a2;
    *(a1 + 16) = v7;
    switch(a2)
    {
      case 1uLL:
        sub_100057A60();
        sub_100057B28();
        SESEndPointPreWarmForAlisha();
        return;
      case 2uLL:
        WeakRetained = KmlLogger();
        if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        sub_100377C18();
        v28 = 313;
        v10 = "%s : %i : Done with pre-warm. Waiting for next steps.";
        goto LABEL_18;
      case 3uLL:
        WeakRetained = KmlLogger();
        if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        sub_100377C18();
        v28 = 317;
        v10 = "%s : %i : SEManager: No pre-conditions currently";
        goto LABEL_18;
      case 4uLL:
        v13 = sub_1003C56AC(a1);
        v14 = KmlLogger();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100377C18();
            v28 = 323;
            v29 = 2112;
            v30 = v13;
            sub_100377CF0();
            _os_log_impl(v19, v20, v21, v22, v23, 0x1Cu);
          }

          v24 = v13;
          v15 = *(a1 + 120);
          *(a1 + 120) = v24;
          v18 = 7;
        }

        else
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            sub_100377C18();
            v28 = 328;
            sub_100377C78(&_mh_execute_header, v16, v17, "%s : %i : SEManager: Endpoint created successfully. Time to track the key.", buf);
          }

          v18 = 5;
        }

        sub_1003C4520(a1, v18);
        goto LABEL_15;
      case 5uLL:
        v11 = KmlLogger();
        if (sub_100057AEC(v11))
        {
          sub_100377C18();
          v28 = 335;
          sub_10036DC0C(&_mh_execute_header, a2, v12, "%s : %i : SEManager: Ready to create key tracking request.", buf);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 136));
        [WeakRetained handleKeyCreationCompletionResult:0];
        goto LABEL_19;
      case 6uLL:
        WeakRetained = KmlLogger();
        if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        sub_100377C18();
        v28 = 340;
        v10 = "%s : %i : SEManager: Tracking request created. All Done";
LABEL_18:
        sub_10036DC0C(&_mh_execute_header, WeakRetained, v9, v10, buf);
        goto LABEL_19;
      case 7uLL:
        v13 = objc_loadWeakRetained((a1 + 136));
        [v13 handleKeyCreationCompletionResult:*(a1 + 120)];
LABEL_15:

        return;
      case 8uLL:
        WeakRetained = objc_loadWeakRetained((a1 + 136));
        [WeakRetained handleKeyCreationCancellationResult:1];
LABEL_19:

        break;
      default:
        return;
    }
  }
}

void *sub_1003C56AC(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_1003DE4BC(a1[3]);
    v3 = [SEEndPointConfiguration configurationWithOpt1:v2 opt2:sub_1003DE58C(v1[3])];
    if (!v3)
    {
      v10 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v145[0] = NSLocalizedDescriptionKey;
      KmlErrorString();
      v15 = [sub_100377D30() stringWithUTF8String:?];
      v145[1] = NSLocalizedFailureReasonErrorKey;
      v146[0] = v15;
      v146[1] = @"Invalid endpoint configuration option group values (RFU bits set)";
      v16 = [NSDictionary dictionaryWithObjects:v146 forKeys:v145 count:2];
      v17 = v10;
      v18 = 6;
LABEL_24:
      v1 = [NSError errorWithDomain:v17 code:v18 userInfo:v16];
LABEL_76:

      goto LABEL_77;
    }

    sub_1003DE58C(v1[3]);
    if (kmlUtilIsFleetKey())
    {
      if (!sub_1003F6F5C(v4) || (v5 = objc_opt_new(), v6 = [v5 allowFleetOwnerPairing], v5, !v6))
      {
        v19 = KmlLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100377C04();
          v129 = 364;
          sub_10036F500(&_mh_execute_header, v19, v20, "%s : %i : Owner Pairing attempt with a fleet car blocked", buf);
        }

        v10 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v143[0] = NSLocalizedDescriptionKey;
        KmlErrorString();
        v15 = [sub_100377D30() stringWithUTF8String:?];
        v143[1] = NSLocalizedFailureReasonErrorKey;
        v144[0] = v15;
        v144[1] = @"OwnerPairing with fleet cars blocked";
        v21 = v144;
        v22 = v143;
LABEL_23:
        v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v22 count:2];
        v17 = v10;
        v18 = 33;
        goto LABEL_24;
      }

      v7 = KmlLogger();
      if (sub_100057AEC(v7))
      {
        sub_100377C04();
        v129 = 362;
        sub_10036DC0C(&_mh_execute_header, v5, v8, "%s : %i : Allow Owner Pairing attempt with a fleet car", buf);
      }
    }

    if (!+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [v1[13] agreedKmlVehicleVersion], 768) || (~sub_1003DE4BC(v1[3]) & 0x30) == 0)
    {
      v9 = sub_1003DC544(v1[3]);
      v10 = sub_1003997A8(KmlEndpointManager, v9, v1[7], v1[8], 0);

      if (v10)
      {
        v11 = KmlLogger();
        if (sub_10036DCF8(v11))
        {
          sub_100377C04();
          v129 = 385;
          sub_100377C78(&_mh_execute_header, v12, v13, "%s : %i : Found unrevoked, duplicate endpoint, checking if its valid", buf);
        }

        v14 = [v10 trackingRequest];
        if (v14)
        {

LABEL_26:
          v25 = KmlLogger();
          if (sub_100377D18(v25))
          {
            sub_100377C04();
            v129 = 389;
            sub_100377CF0();
            _os_log_impl(v26, v27, v28, v29, v30, 0x12u);
          }

          v15 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v139[0] = NSLocalizedDescriptionKey;
          v16 = [(__objc2_class *)OBJC_CLASS___KmlSeManager.isa stringWithUTF8String:KmlErrorString()];
          v139[1] = NSLocalizedFailureReasonErrorKey;
          v140[0] = v16;
          v140[1] = @"Valid key already exists for this reader identifier";
          v31 = [NSDictionary dictionaryWithObjects:v140 forKeys:v139 count:2];
          v1 = [NSError errorWithDomain:v15 code:209 userInfo:v31];
          goto LABEL_75;
        }

        v9 = [v10 trackingReceipt];

        if (v9)
        {
          goto LABEL_26;
        }

        v32 = KmlLogger();
        if (sub_10036DCF8(v32))
        {
          sub_100377C04();
          v129 = 393;
          sub_100377C78(&_mh_execute_header, v33, v34, "%s : %i : Found dangling endpoint, cleaning up", buf);
        }

        v35 = [v10 publicKeyIdentifier];
        v36 = kmlUtilHexStringFromData();
        v125[1] = 0;
        _SESEndPointDeleteWithSession();
        v15 = 0;

        if (v15)
        {
          v37 = KmlLogger();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            sub_100377C04();
            sub_100377CD0();
            *v131 = v15;
            sub_10036F590(&_mh_execute_header, v37, v38, "%s : %i : Unable to delete duplicate endpoint: %@", buf);
          }

          v16 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v137[0] = NSLocalizedDescriptionKey;
          v31 = [(__objc2_class *)OBJC_CLASS___KmlSeManager.isa stringWithUTF8String:KmlErrorString()];
          v137[1] = NSLocalizedFailureReasonErrorKey;
          v138[0] = v31;
          v138[1] = @"Unable to delete duplicate endpoint";
          v39 = [NSDictionary dictionaryWithObjects:v138 forKeys:v137 count:2];
          v1 = [NSError errorWithDomain:v16 code:209 userInfo:v39];

          goto LABEL_75;
        }
      }

      v40 = sub_1003DC464(v1[3]);
      v15 = [v40 copy];

      v41 = sub_1003DDCFC(v1[3]);
      v16 = [v41 copy];

      v42 = sub_1003DDDDC(v1[3]);
      v122 = [v42 copy];

      v43 = sub_1003DC544(v1[3]);
      v119 = [v43 copy];

      v44 = sub_1003DDC1C(v1[3]);
      v121 = [NSArray arrayWithObjects:v44, 0];

      v45 = sub_10039737C(KmlEndpointManager, @"OWNR");
      v46 = v1[18];
      v1[18] = v45;

      if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [v1[13] agreedKmlVehicleVersion], 768))
      {
        v47 = KmlLogger();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          sub_100377C04();
          v129 = 416;
          sub_10036DC0C(&_mh_execute_header, v47, v48, "%s : %i : getting v3 mailbox data sizes", buf);
        }

        if (sub_1003DE360(v1[3]))
        {
          v49 = sub_100377D48();
          sub_1003DE360(v49);
          v124 = [sub_100377D3C() numberWithUnsignedInteger:?];
        }

        else
        {
          v124 = 0;
        }

        if (sub_1003DE134(v1[3]))
        {
          v51 = sub_100377D48();
          sub_1003DE134(v51);
LABEL_48:
          v123 = [sub_100377D3C() numberWithUnsignedInteger:?];
          goto LABEL_50;
        }
      }

      else
      {
        if (sub_1003DE068(v1[3]))
        {
          v50 = sub_100377D48();
          sub_1003DE068(v50);
          v124 = [sub_100377D3C() numberWithUnsignedInteger:?];
        }

        else
        {
          v124 = 0;
        }

        if (sub_1003DDF9C(v1[3]))
        {
          v52 = sub_100377D48();
          sub_1003DDF9C(v52);
          goto LABEL_48;
        }
      }

      v123 = 0;
LABEL_50:
      v118 = v10;
      v53 = KmlLogger();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v54 = [v123 unsignedIntValue];
        [v124 unsignedIntValue];
        sub_100377C04();
        v129 = 425;
        v130 = v55;
        *v131 = v54;
        *&v131[4] = v55;
        *&v131[6] = v56;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s : %i : getting mailbox data sizes: private: 0x%04x, confidential: 0x%04x", buf, 0x1Eu);
      }

      v57 = sub_1003DEEC8(v1[3]);
      sub_1003DDEBC(v1[3]);
      v116 = v125[0] = 0;
      v58 = v119;
      v59 = SESEndPointCreateForAlishaWithSession();
      v60 = 0;

      if (v60)
      {
        v61 = KmlLogger();
        if (sub_100377D54(v61))
        {
          *buf = 136315650;
          v127 = "[KmlSeManager createEndPoint]";
          v128 = 1024;
          sub_100377CD0();
          *v131 = v60;
          sub_100377CC0();
          _os_log_impl(v62, v63, v64, v65, v66, 0x1Cu);
        }

        v1 = sesErrorToKmlError();
      }

      else
      {
        v67 = [v59 certificates];
        v68 = [v67 objectAtIndexedSubscript:0];
        v69 = v1[19];
        v1[19] = v68;

        v70 = [v59 certificates];
        v71 = [v70 objectAtIndexedSubscript:1];
        v72 = v1[20];
        v1[20] = v71;

        v73 = [v59 certificates];
        v74 = [v73 objectAtIndexedSubscript:2];
        v75 = v1[21];
        v1[21] = v74;

        v76 = v1[19];
        if (v76 && [v76 length] && (v77 = v1[20]) != 0 && objc_msgSend(v77, "length") && (v78 = v1[21]) != 0 && objc_msgSend(v78, "length"))
        {
          v79 = [v59 publicKeyIdentifier];
          v80 = v1[22];
          v1[22] = v79;

          v81 = kmlUtilHexStringFromData();
          v82 = v1[23];
          v1[23] = v81;

          if (!+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [v1[13] agreedKmlVehicleVersion], 768))
          {
            goto LABEL_95;
          }

          v83 = KmlLogger();
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            sub_100377C40();
            v129 = 464;
            sub_10036DC0C(&_mh_execute_header, v83, v84, "%s : %i : Converting endpoint because endpoint is for a V3 car", buf);
          }

          v85 = kmlUtilTimeNow();
          v60 = SESEndpointConvertWithSession();

          v58 = v119;
          if (!v60)
          {
LABEL_95:
            if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [v1[13] agreedKmlVehicleVersion], 768))
            {
              v104 = KmlLogger();
              v31 = v122;
              if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
              {
                sub_100377C40();
                v129 = 476;
                sub_10036DC0C(&_mh_execute_header, v104, v105, "%s : %i : getting v3 mailbox data sizes", buf);
              }

              v120 = sub_1003DEA80(v1[3]);
              v117 = sub_1003DE81C(v1[3]);
            }

            else
            {
              v120 = sub_1003DE73C(v1[3]);
              v117 = sub_1003DE65C(v1[3]);
              v31 = v122;
            }

            v106 = KmlLogger();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
            {
              sub_100377C40();
              sub_100377CD0();
              *v131 = v120;
              *&v131[8] = v107;
              v132 = v117;
              _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_INFO, "%s : %i : SEManager: EndPoint created, setting MailBoxes configuration %@ %@", buf, 0x26u);
            }

            SESEndPointConfigureMailBoxesWithSession();
            v108 = 0;
            if (v108)
            {
              v109 = v108;
              v110 = KmlLogger();
              if (sub_100377D54(v110))
              {
                sub_100377C40();
                v129 = 493;
                sub_100377CC0();
                _os_log_impl(v111, v112, v113, v114, v115, 0x12u);
              }
            }

            else
            {
              v109 = sub_1003C66C0(v1);
            }

            v60 = v109;

            v1 = v60;
            goto LABEL_74;
          }

          v86 = KmlLogger();
          if (sub_100377D54(v86))
          {
            sub_100377C40();
            sub_100377CD0();
            *v131 = v60;
            sub_100377CC0();
            _os_log_impl(v87, v88, v89, v90, v91, 0x1Cu);
          }

          v92 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v133[0] = NSLocalizedDescriptionKey;
          v93 = [NSString stringWithUTF8String:KmlErrorString()];
          v133[1] = NSLocalizedFailureReasonErrorKey;
          v134[0] = v93;
          v134[1] = @"Error while converting V3 endpoint during endpoint creation";
          v94 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:2];
          v1 = [NSError errorWithDomain:v92 code:6 userInfo:v94];
        }

        else
        {
          v95 = KmlLogger();
          if (sub_100377D54(v95))
          {
            *buf = 136315394;
            v127 = "[KmlSeManager createEndPoint]";
            v128 = 1024;
            v129 = 456;
            sub_100377CC0();
            _os_log_impl(v96, v97, v98, v99, v100, 0x12u);
          }

          v60 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v135[0] = NSLocalizedDescriptionKey;
          v101 = [NSString stringWithUTF8String:KmlErrorString()];
          v135[1] = NSLocalizedFailureReasonErrorKey;
          v136[0] = v101;
          v136[1] = @"Missing attestations";
          v102 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:2];
          v1 = [NSError errorWithDomain:v60 code:6 userInfo:v102];
        }

        v10 = v118;
        v58 = v119;
      }

      v31 = v122;
LABEL_74:

LABEL_75:
      goto LABEL_76;
    }

    v23 = KmlLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100377C04();
      v129 = 372;
      sub_10036F500(&_mh_execute_header, v23, v24, "%s : %i : Invalid value for options one for V3 pairing (bits 4 and 5 must be set)", buf);
    }

    v10 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v141[0] = NSLocalizedDescriptionKey;
    KmlErrorString();
    v15 = [sub_100377D30() stringWithUTF8String:?];
    v141[1] = NSLocalizedFailureReasonErrorKey;
    v142[0] = v15;
    v142[1] = @"Invalid value for options one for V3 pairing (bits 4 and 5 must be set)";
    v21 = v142;
    v22 = v141;
    goto LABEL_23;
  }

LABEL_77:

  return v1;
}

NSObject *sub_1003C66C0(uint64_t a1)
{
  if (a1)
  {
    v4 = sub_1003DEB94(*(a1 + 24));
    v5 = KmlLogger();
    if (sub_100057AEC(v5))
    {
      v6 = kmlUtilHexStringFromData();
      sub_100377C54();
      sub_100377C68();
      v86 = v7;
      sub_100367454(&_mh_execute_header, v1, v8, "%s : %i : MailboxMappingData: %@", v84);
    }

    v9 = [[KmlMailboxMappingData alloc] initWithData:v4 preferredVersion:{objc_msgSend(*(a1 + 104), "agreedKmlVehicleVersion")}];
    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 104) agreedKmlVehicleVersion], 768))
    {
      [v9 vehicleProprietaryDataOffset];
      v83 = 0;
      v10 = SESEndPointGetPrivateDataWithSession();
      v11 = 0;
      if (v11)
      {
        v12 = v11;
        v13 = KmlLogger();
        if (sub_100377D18(v13))
        {
          sub_100377C54();
          sub_100377C68();
          v86 = v12;
          sub_100377CF0();
          _os_log_impl(v14, v15, v16, v17, v18, 0x1Cu);
        }

        v19 = v12;
        goto LABEL_41;
      }

      v23 = [[NSMutableData alloc] initWithData:v10];
      kmlUtilLogLargeData();
      v82 = 0x80;
      [v23 replaceBytesInRange:0 withBytes:1, &v82];
      v25 = [v9 vehicleProprietaryDataOffset];
      v2 = (v25 - [v9 signerSlotIdListOffset]);
      v26 = [NSMutableData dataWithLength:v2];
      memset([v26 mutableBytes], 255, v2);
      [v9 signerSlotIdListOffset];
      [sub_100377D3C() replaceBytesInRange:? withBytes:?];
      kmlUtilLogLargeData();
      SESEndPointSetPrivateDataWithSession();
      v27 = 0;
      if (v27)
      {
        v28 = v27;
        v29 = KmlLogger();
        if (sub_100377D18(v29))
        {
          sub_100377C54();
          sub_100377C68();
          v86 = v28;
          sub_100377CF0();
          _os_log_impl(v30, v31, v32, v33, v34, 0x1Cu);
        }

        v19 = v28;
LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      v22 = 0;
    }

    else
    {
      v20 = [v9 slotIdentifierLength];
      if (!v20)
      {
        v22 = 0;
LABEL_19:
        v35 = [KmlDeviceConfigurationData alloc];
        v36 = sub_1003DEBC4(*(a1 + 24));
        v37 = [v35 initWithData:v36];

        if ((*(a1 + 96) & 1) == 0)
        {
          [v37 removeUwbSupportLocally];
        }

        v38 = [v37 asData];
        v39 = KmlLogger();
        if (sub_100377D6C(v39))
        {
          v40 = kmlUtilHexStringFromData();
          sub_100377C54();
          sub_100377C68();
          v86 = v41;
          sub_100377CE0();
          _os_log_impl(v42, v43, v44, v45, v46, 0x1Cu);
        }

        if ([*(a1 + 104) doesAgreedVersionSupportOnlineBleKeys])
        {
          v47 = KmlLogger();
          if (sub_100377D6C(v47))
          {
            *v84 = 136315394;
            sub_100377CB0();
            v85 = 799;
            sub_100377CE0();
            _os_log_impl(v48, v49, v50, v51, v52, 0x12u);
          }

          v53 = [v37 deviceBtIntroKey];
          v54 = [v53 length];

          if (v54)
          {
            v55 = KmlLogger();
            if (sub_100377D6C(v55))
            {
              *v84 = 136315394;
              sub_100377CB0();
              v85 = 801;
              sub_100377CE0();
              _os_log_impl(v56, v57, v58, v59, v60, 0x12u);
            }

            v61 = [v37 deviceBtIntroKey];
            v62 = *(a1 + 72);
            *(a1 + 72) = v61;
          }

          v63 = [v37 onlineBleOOBMasterKeyOverride];
          if (v63)
          {
            v64 = v63;
            v65 = [v37 onlineBleOOBMasterKeyOverride];
            v66 = [v65 length];

            if (v66)
            {
              v67 = KmlLogger();
              if (sub_100377D6C(v67))
              {
                *v84 = 136315394;
                sub_100377CB0();
                v85 = 806;
                sub_100377CE0();
                _os_log_impl(v68, v69, v70, v71, v72, 0x12u);
              }

              v73 = [v37 onlineBleOOBMasterKeyOverride];
              v74 = *(a1 + 80);
              *(a1 + 80) = v73;
            }
          }
        }

        v75 = [*(a1 + 104) getVehicleSupportedVersionsData];
        sub_100057A60();
        sub_100057B28();
        v10 = v37;
        v81 = v4;
        v23 = v38;
        v76 = v75;
        v77 = SESEndPointUpdateWithBlock();

        if (v77)
        {
          v78 = KmlLogger();
          if (sub_10036F5C4(v78))
          {
            *v84 = 136315650;
            sub_100377CB0();
            sub_100377C68();
            v86 = v77;
            sub_10036F590(&_mh_execute_header, v22, v79, "%s : %i : SEManager: Could not update endpoint %@", v84);
          }
        }

        v19 = v77;

        goto LABEL_40;
      }

      v21 = 7 * v20;
      v10 = [NSMutableData dataWithLength:v21];
      memset([v10 mutableBytes], 255, v21);
      [v9 slotIdListOffset];
      SESEndPointSetPrivateDataWithSession();
      v22 = 0;
      v23 = KmlLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        sub_100377C54();
        sub_100377C68();
        v86 = v22;
        sub_100367454(&_mh_execute_header, v23, v24, "%s : %i : Friend SlotId initialization result: %@", v84);
      }
    }

    goto LABEL_19;
  }

  v19 = 0;
LABEL_42:

  return v19;
}

id sub_1003C6E04(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [NSData alloc];
    v6 = [v4 mailboxMapping];
    v7 = [v5 initWithData:v6];

    v8 = [[KmlMailboxMappingData alloc] initWithData:v7 preferredVersion:{objc_msgSend(*(a1 + 104), "agreedKmlVehicleVersion")}];
    [v8 mailboxEndOffset];
    [v8 signalingBitmapOffset];
    [v8 signalingBitmapOffset];
    v45 = 0;
    v9 = SESEndPointGetPrivateData();
    v10 = 0;
    if (v10)
    {
      v11 = v10;
      v12 = KmlLogger();
      if (sub_10036F5C4(v12))
      {
        *buf = 136315650;
        v48 = "[KmlSeManager getOpaqueFromEndpoint:]";
        sub_1003674B0();
        v50 = 660;
        v51 = 2112;
        *v52 = v11;
        sub_10036F590(&_mh_execute_header, v2, v13, "%s : %i : Error while getting signaling bitmap %@", buf);
      }

      v14 = 0;
    }

    else
    {
      kmlUtilLogLargeData();
      v2 = [[NSMutableData alloc] initWithData:v9];
      v15 = *[v9 bytes];
      if ([v8 isKeyAttestationSetByCarInSignalingBitmap:v15])
      {
        v44 = v15 & [v8 getMaskToIndicateKeyAttestationConsumed];
        [v2 replaceBytesInRange:0 withBytes:1, &v44];
        v16 = [v8 keyAttestationStartOffset];
        v17 = v16 - [v8 signalingBitmapOffset];
        v18 = [v8 attestationPackageLength];
        v19 = KmlLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v48 = "[KmlSeManager getOpaqueFromEndpoint:]";
          v49 = 1024;
          v50 = 681;
          v51 = 1024;
          *v52 = v17;
          *&v52[4] = 1024;
          *&v52[6] = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s : %i : KeyAttestation offsets: start (%02X), length(%02X)", buf, 0x1Eu);
        }

        v20 = [v9 subdataWithRange:{v17, v18}];
        [v2 resetBytesInRange:v17, v18];
        [v8 signalingBitmapOffset];
        v43 = 0;
        SESEndPointSetPrivateData();
        v11 = 0;
        if (v11)
        {
          v21 = KmlLogger();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v48 = "[KmlSeManager getOpaqueFromEndpoint:]";
            sub_1003674B0();
            sub_100377CFC(693);
            *(v22 + 20) = v11;
            sub_10036F590(&_mh_execute_header, v21, v23, "%s : %i : Failed to read and reset keyAttestation in private mailbox %@", buf);
          }

          v14 = 0;
        }

        else
        {
          v38 = v4;
          [KmlTlv TLVsWithData:v20];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v21 = v42 = 0u;
          v25 = [v21 countByEnumeratingWithState:&v39 objects:v46 count:16];
          if (v25)
          {
            v26 = v25;
            v37 = v20;
            v27 = *v40;
            while (2)
            {
              for (i = 0; i != v26; i = i + 1)
              {
                if (*v40 != v27)
                {
                  objc_enumerationMutation(v21);
                }

                v29 = *(*(&v39 + 1) + 8 * i);
                [v29 tag];
                if (isDeviceKeyAttestationTag())
                {
                  v30 = KmlLogger();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                  {
                    v31 = [v29 value];
                    v32 = kmlUtilHexStringFromData();
                    *buf = 136315650;
                    sub_100377C2C("[KmlSeManager getOpaqueFromEndpoint:]");
                    sub_100377CFC(701);
                    *(v34 + 20) = v33;
                    sub_100367454(&_mh_execute_header, v30, v35, "%s : %i : Opaque found in key attestation Data : %@", buf);
                  }

                  v14 = [v29 value];
                  goto LABEL_28;
                }
              }

              v26 = [v21 countByEnumeratingWithState:&v39 objects:v46 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }

            v14 = 0;
LABEL_28:
            v20 = v37;
          }

          else
          {
            v14 = 0;
          }

          v4 = v38;
        }
      }

      else
      {
        v20 = KmlLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v48 = "[KmlSeManager getOpaqueFromEndpoint:]";
          sub_1003674B0();
          v50 = 669;
          v51 = v24;
          *v52 = v15;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s : %i : As per signaling bitmap (%02X), opaque attestation is not set", buf, 0x18u);
        }

        v11 = 0;
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1003C737C(id a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v16 = 0;
    v6 = [a2 encodeWithError:&v16];
    v7 = v16;
    if (v7 || !v6)
    {
      v13 = KmlLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v18 = "[KmlSeManager saveTrackingRequest:endpoint:]";
        v19 = 1024;
        v20 = 626;
        v21 = 2112;
        v22 = v7;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s : %i : Encode key tracking request error %@, trackingRequestData=%@", buf, 0x26u);
      }

      a1 = v7;
    }

    else
    {
      v8 = [v5 publicKeyIdentifier];
      v9 = kmlUtilHexStringFromData();

      sub_100057A60();
      sub_100057B28();
      v15 = v6;
      v10 = SESEndPointUpdateWithBlock();
      if (v10)
      {
        v11 = KmlLogger();
        if (sub_10036F5C4(v11))
        {
          *buf = 136315394;
          v18 = "[KmlSeManager saveTrackingRequest:endpoint:]";
          v19 = 1024;
          v20 = 638;
          sub_10036F500(&_mh_execute_header, v8, v12, "%s : %i : SEManager: Could not update endpoint", buf);
        }
      }

      else
      {
        sub_100369040(KmlAnalyticsLogger, v9);
      }

      a1 = v10;
    }
  }

  return a1;
}

id *sub_1003C75AC(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 17, a2);
  }

  return result;
}

uint64_t sub_1003C75BC(uint64_t result)
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

uint64_t sub_1003C75C8(uint64_t result)
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

uint64_t sub_1003C75D4(uint64_t result)
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

uint64_t sub_1003C75E0(uint64_t result)
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

uint64_t sub_1003C75EC(uint64_t result)
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

void *sub_1003C75F8(void *a1, __int16 a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = KmlApduResponse;
    v6 = objc_msgSendSuper2(&v28, "init");
    a1 = v6;
    if (v6)
    {
      v21 = a2;
      v22 = v6;
      v7 = +[NSMutableData data];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23 = v5;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v35 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            v14 = KmlLogger();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v13 asData];
              *buf = 136315650;
              v30 = "[KmlApduResponse initWithStatus:tlvArray:]";
              v31 = 1024;
              v32 = 49;
              v33 = 2112;
              v34 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : TLV: add tlv %@ to response", buf, 0x1Cu);
            }

            v16 = [v13 asData];
            [v7 appendData:v16];
          }

          v10 = [v8 countByEnumeratingWithState:&v24 objects:v35 count:16];
        }

        while (v10);
      }

      v17 = [v7 copy];
      a1 = v22;
      v18 = *(v22 + 2);
      *(v22 + 2) = v17;

      *(v22 + 4) = v21;
      v19 = *(v22 + 4);
      *(v22 + 4) = 0;

      v5 = v23;
    }
  }

  return a1;
}

id sub_1003C7838(id a1, __int16 a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = KmlApduResponse;
    a1 = objc_msgSendSuper2(&v10, "init");
    if (a1)
    {
      v6 = [v5 copy];
      v7 = *(a1 + 2);
      *(a1 + 2) = v6;

      *(a1 + 4) = a2;
      v8 = *(a1 + 4);
      *(a1 + 4) = 0;
    }
  }

  return a1;
}

id sub_1003C78C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[NSMutableData data];
    v5 = (a1 + 32);
    if (*(a1 + 32))
    {
      v6 = KmlLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        sub_10036DC30();
        v41 = 100;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Response was encrypted already. Just send the same one", buf, 0x12u);
      }

      v7 = *v5;
LABEL_30:

      goto LABEL_31;
    }

    v8 = a1 + 8;
    v9 = *(a1 + 8);
    v10 = __rev16(v9);
    if (v3)
    {
      if ([*(a1 + 16) length] || v9 == 144 || (v10 - 25088) > 0xFF00u)
      {
        v11 = sub_1003DA868(v3, *(a1 + 16), *(a1 + 8));
        v12 = 0;
LABEL_15:
        v14 = KmlLogger();
        v15 = &unk_100409000;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          kmlUtilHexStringFromData();
          v17 = v16 = v10;
          *buf = 136315650;
          sub_10036DC30();
          sub_10036F0E4();
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : ResponseAPDU: PlainText Payload: %@", buf, 0x1Cu);

          v10 = v16;
          v15 = &unk_100409000;
        }

        v18 = KmlLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          sub_10036DC30();
          v41 = 115;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : %i : ResponseAPDU: PlainText Payload End ---", buf, 0x12u);
        }

        if (!v11 || v12)
        {
          [v4 appendData:*(a1 + 16)];
        }

        else
        {
          [v4 appendData:v11];
          v19 = KmlLogger();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = kmlUtilHexStringFromData();
            *buf = v15[277];
            sub_10036DC30();
            sub_10036F0E4();
            sub_10037827C();
            _os_log_impl(v21, v22, v23, v24, v25, 0x1Cu);
          }

          v26 = KmlLogger();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            sub_10036DC30();
            v41 = 119;
            sub_10037827C();
            _os_log_impl(v27, v28, v29, v30, v31, 0x12u);
          }
        }

        v32 = KmlLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = v15[277];
          sub_10036DC30();
          v41 = 124;
          v42 = v33;
          v43 = v10;
          sub_10037827C();
          _os_log_impl(v34, v35, v36, v37, v38, 0x18u);
        }

        [v4 appendBytes:v8 length:2];
        objc_storeStrong(v5, v4);
        v7 = v4;

        goto LABEL_30;
      }

      v13 = KmlLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        sub_10036DC30();
        v41 = 108;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Response has 0 length payload and error status. No encryption needed.", buf, 0x12u);
      }
    }

    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v7 = 0;
LABEL_31:

  return v7;
}

uint64_t sub_1003C7D1C(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t sub_1003C7D28(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t sub_1003C7D34(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t sub_1003C7D40(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

id sub_1003C7D4C(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [NSKeyedArchiver archivedDataWithRootObject:a1 requiringSecureCoding:1 error:a2];
    v2 = vars8;
  }

  return a1;
}

void sub_1003C7D90(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_1003C7DA0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_1003C7DB0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_1003C7DC0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_1003C7DD0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

uint64_t sub_1003C7DE0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 112) = a2;
  }

  return result;
}

uint64_t sub_1003C7DEC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

uint64_t sub_1003C7DF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

uint64_t sub_1003C7E04(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

uint64_t sub_1003C7E10(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

void sub_1003C7E1C(uint64_t a1)
{
  if (a1)
  {
    v23 = 0;
    v2 = SESEndPointGetInvitations();
    v3 = 0;
    if (v3 || !v2)
    {
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v26 = "[KmlSharingInvitationRecordsUpdater unpackAllSharingInvitationRecords_sync]";
        v27 = 1024;
        v28 = 245;
        v29 = 2112;
        v30 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : We don't have any sharing invitation records - %@", buf, 0x1Cu);
      }
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v4 = v2;
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v5)
      {
        v6 = v5;
        v17 = v2;
        v3 = 0;
        v7 = *v20;
        do
        {
          v8 = 0;
          v9 = v3;
          do
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v19 + 1) + 8 * v8);
            v18 = v9;
            v11 = sub_100378B14(KmlSharingInvitationRecord, v10, &v18);
            v3 = v18;

            v12 = KmlLogger();
            v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
            if (v3)
            {
              if (v13)
              {
                *buf = 136315394;
                v26 = "[KmlSharingInvitationRecordsUpdater unpackAllSharingInvitationRecords_sync]";
                v27 = 1024;
                v28 = 252;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : %i : Found a courrupted sharing record. Discarding it", buf, 0x12u);
              }
            }

            else
            {
              if (v13)
              {
                if (v11)
                {
                  v14 = v11[13];
                }

                else
                {
                  v14 = 0;
                }

                *buf = 136315650;
                v26 = "[KmlSharingInvitationRecordsUpdater unpackAllSharingInvitationRecords_sync]";
                v27 = 1024;
                v28 = 256;
                v29 = 2112;
                v30 = v14;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : %i : Found sharing invitation record for invitation Id : %@", buf, 0x1Cu);
              }

              if (v11)
              {
                v15 = v11[13];
              }

              else
              {
                v15 = 0;
              }

              [*(a1 + 8) setObject:v11 forKeyedSubscript:v15];
            }

            v8 = v8 + 1;
            v9 = v3;
          }

          while (v6 != v8);
          v16 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
          v6 = v16;
        }

        while (v16);
        v2 = v17;
      }

      else
      {
        v3 = 0;
      }
    }
  }
}

void sub_1003C811C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3 && v3[13])
    {
      v5 = *(a1 + 16);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100378F0C;
      v7[3] = &unk_1004C22F0;
      v8 = v3;
      v9 = a1;
      dispatch_async(v5, v7);
      v6 = v8;
    }

    else
    {
      v6 = KmlLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v11 = "[KmlSharingInvitationRecordsUpdater updateRecord:]";
        v12 = 1024;
        v13 = 183;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Invalid sharing record. Ignore it", buf, 0x12u);
      }
    }
  }
}

id sub_1003C8268(uint64_t a1)
{
  if (a1)
  {
    v24 = +[NSMutableArray array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *(a1 + 8);
    v2 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v5 = *v28;
      do
      {
        v6 = 0;
        do
        {
          if (*v28 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v27 + 1) + 8 * v6);
          v8 = [*(a1 + 8) objectForKeyedSubscript:v7];
          v9 = v8;
          if (v8 && (*(v8 + 8) & 1) != 0)
          {
            if (*(v8 + 112) == 6)
            {
              v10 = SESEndPointDeleteInvitationWithId();

              v11 = KmlLogger();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                *buf = 136315906;
                sub_10036F910();
                sub_100378ED4();
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Record for invitation Id %@ is ready for clean up. Removal result - %@", v12, 0x26u);
              }

              v4 = v10;
              if (!v10)
              {
                [v24 addObject:v7];
              }
            }

            else
            {
              v15 = KmlLogger();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                sub_10036F910();
                sub_100378EF8();
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : For invitation Id %@, replacing old record with new one", v16, 0x1Cu);
              }

              v26 = v4;
              v17 = sub_1003C7D4C(v9, &v26);
              v18 = v26;

              if (v18)
              {
                v19 = KmlLogger();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  sub_10036F910();
                  sub_100378ED4();
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s : %i : Sharing Invitation Record with Invitation Id (%@), could not be serialized : %@", v20, 0x26u);
                }

                [v24 addObject:v7];
              }

              else
              {
                v18 = SESEndPointAddInvitationWithId();
                if (v18)
                {
                  v21 = KmlLogger();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    sub_10036F910();
                    v32 = 229;
                    v33 = 2112;
                    v34 = v18;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s : %i : Failed to save sharing records on endPoint : %@", buf, 0x1Cu);
                  }
                }

                else
                {
                  v9[8] = 0;
                }
              }

              v4 = v18;
            }
          }

          else
          {
            v13 = KmlLogger();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              sub_10036F910();
              sub_100378EF8();
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Record for invitation Id %@, did not change", v14, 0x1Cu);
            }
          }

          v6 = v6 + 1;
        }

        while (v3 != v6);
        v22 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
        v3 = v22;
      }

      while (v22);
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 8) removeObjectsForKeys:v24];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_1003C8664(id *a1)
{
  if (a1)
  {
    a1 = [a1[1] allValues];
    v1 = vars8;
  }

  return a1;
}

void *sub_1003C8698(void *result)
{
  if (result)
  {
    v1 = sub_1003C86DC(result);
    v2 = [v1 bytes];

    return v2;
  }

  return result;
}

void *sub_1003C86DC(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (!v2)
    {
      v2 = a1[6];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

id *sub_1003C8714(id *a1, unsigned __int8 *a2, unint64_t a3, void *a4, void *a5)
{
  v10 = a4;
  if (!a1)
  {
    goto LABEL_53;
  }

  v47.receiver = a1;
  v47.super_class = KmlApduRequest;
  v11 = objc_msgSendSuper2(&v47, "init");
  a1 = v11;
  if (!v11)
  {
    goto LABEL_53;
  }

  objc_storeStrong(v11 + 4, a4);
  if (a3 <= 3)
  {
    if (a5)
    {
      [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      objc_claimAutoreleasedReturnValue();
      *a5 = [sub_100379228() errorWithDomain:? code:? userInfo:?];
    }

    v12 = KmlLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    sub_10036F494();
    *&buf[14] = 82;
    v13 = "%s : %i : APDU: command length incorrect, return code: 0x6700.";
    goto LABEL_8;
  }

  *(a1 + 8) = *a2;
  *(a1 + 9) = a2[1];
  *(a1 + 41) = a2[2];
  *(a1 + 42) = a2[3];
  *(a1 + 40) = 0;
  v16 = a1[7];
  a1[7] = 0;

  if (a3 == 4)
  {
    goto LABEL_53;
  }

  v17 = a2[4];
  *(a1 + 3) = v17;
  if (v17)
  {
    v18 = a2 + 5;
    v19 = 5;
  }

  else
  {
    if (a3 == 5)
    {
      *(a1 + 5) = 256;
      goto LABEL_53;
    }

    if ((a3 - 5) <= 2)
    {
      if (a5)
      {
        v21 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        *a5 = [NSError errorWithDomain:v21 code:27136 userInfo:0];
      }

      v12 = KmlLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      sub_10036F494();
      *&buf[14] = 114;
      v13 = "%s : %i : APDU: Invalid APDU format, return code: 0x6A00";
LABEL_8:
      v14 = v12;
      v15 = OS_LOG_TYPE_INFO;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, 0x12u);
LABEL_10:

      a1 = 0;
      goto LABEL_53;
    }

    v31 = a2[5];
    *(a1 + 3) = v31 << 8;
    v18 = a2 + 7;
    v17 = a2[6] | (v31 << 8);
    *(a1 + 3) = v17;
    v19 = 7;
  }

  v20 = a3 - v19;
  if (v20 < v17)
  {
    if (a5)
    {
      [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      objc_claimAutoreleasedReturnValue();
      *a5 = [sub_100379228() errorWithDomain:? code:? userInfo:?];
    }

    v12 = KmlLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    sub_10036F494();
    *&buf[14] = 127;
    v13 = "%s : %i : APDU: Incorrect length or address range error, return code: 0x6700";
    goto LABEL_8;
  }

  v22 = [NSData dataWithBytes:a2 length:v18 - a2];
  v23 = a1[3];
  a1[3] = v22;

  if (*(a1 + 3))
  {
    v28 = [NSData dataWithBytes:v18 length:?];
    v29 = a1[6];
    a1[6] = v28;

    v30 = *(a1 + 3);
    v18 += v30;
    v20 = a3 - (v30 + v19);
  }

  if (v20 >= 1)
  {
    if (v20 >= 4)
    {
      if (a5)
      {
        [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        objc_claimAutoreleasedReturnValue();
        *a5 = [sub_100379228() errorWithDomain:? code:? userInfo:?];
      }

      v12 = KmlLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      sub_10036F494();
      *&buf[14] = 147;
      v13 = "%s : %i : APDU: Incorrect length, return code: 0x6700";
      v14 = v12;
      v15 = OS_LOG_TYPE_DEBUG;
      goto LABEL_9;
    }

    v32 = v18 + 1;
    v33 = *v18;
    *(a1 + 5) = v33;
    if (v33 || v20 != 3)
    {
      if (v20 != 2)
      {
        if (v33)
        {
          goto LABEL_41;
        }

        v34 = 256;
        goto LABEL_40;
      }
    }

    else
    {
      v32 = v18 + 2;
      v33 = v18[1];
      *(a1 + 5) = v33;
    }

    v34 = *v32 | (v33 << 8);
LABEL_40:
    *(a1 + 5) = v34;
  }

LABEL_41:
  v35 = a1[6];
  if (v35)
  {
    v36 = a1[4];
    if (v36)
    {
      v37 = sub_1003DA5EC(v36, v35, a1[3], &v46, v24, v25, v26, v27, v45, *&v47, *buf, *&buf[8], *&buf[16], *&buf[24], v49, v50, v51, v52, v53, v54, v55, v56);
      v38 = v46;
      v39 = a1[7];
      a1[7] = v37;

      if (v38)
      {
        goto LABEL_47;
      }
    }
  }

  v40 = a1[7];
  if (!v40)
  {
    v38 = 0;
LABEL_47:
    v42 = KmlLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "[KmlApduRequest initWithBytes:length:secureChannel:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 173;
      *&buf[18] = 2112;
      *&buf[20] = v38;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s : %i : APDU: couldn't decrypt payload %@", buf, 0x1Cu);
    }

    v43 = a1[7];
    a1[7] = 0;

    v41 = 0;
    goto LABEL_50;
  }

  *(a1 + 40) = 1;
  v41 = [v40 length];
  v38 = 0;
LABEL_50:
  *(a1 + 4) = v41;
  if (!sub_1003D8EC8(v10))
  {
    *(a1 + 40) = 1;
  }

LABEL_53:
  return a1;
}

uint64_t sub_1003C8C7C(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      return sub_100073170();
    }

    else
    {
      return *(result + 9) == 164;
    }
  }

  return result;
}

uint64_t sub_1003C8C9C(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 132)
    {
      return *(result + 9) == 212;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8CC0(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 132)
    {
      return *(result + 9) == 202;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8CE4(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 132)
    {
      return *(result + 9) == 192;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8D08(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 132)
    {
      return *(result + 9) == 60;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8D2C(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 128)
    {
      return *(result + 9) == 60;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8D50(uint64_t result)
{
  if (result)
  {
    return *(result + 41);
  }

  return result;
}

uint64_t sub_1003C8D5C(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 128)
    {
      return *(result + 9) == 48;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8D80(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 128)
    {
      return *(result + 9) == 50;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

BOOL sub_1003C8DA4(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) == 132 && *(result + 9) == 192 || *(result + 56) != 0;
  }

  return result;
}

char *sub_1003C8DD8(char *a1)
{
  v1 = a1;
  if (a1)
  {
    sub_100379240();
    v2 = 16;
    if (v3)
    {
      v2 = 12;
    }

    if (*&v1[v2] && (sub_1003C86DC(v1), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      sub_100379240();
      if (v3)
      {
        v6 = 12;
      }

      else
      {
        v6 = 16;
      }

      v7 = 2 * *&v1[v6];
      v8 = malloc_type_malloc(v7 | 1, 0x100004077774924uLL);
      v8[v7] = 0;
      sub_1003C8698(v1);
      sub_100379240();
      if (v3)
      {
        v10 = 12;
      }

      else
      {
        v10 = 16;
      }

      if (*&v1[v10] >= 1)
      {
        v11 = v9;
        v12 = 0;
        v13 = v8;
        do
        {
          sprintf(v13, "%02X", *(v11 + v12++));
          sub_100379240();
          if (v3)
          {
            v14 = 12;
          }

          else
          {
            v14 = 16;
          }

          v13 += 2;
        }

        while (v12 < *&v1[v14]);
      }

      v1 = [[NSString alloc] initWithUTF8String:v8];
      free(v8);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_1003C8F2C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_1003C86DC(a1);

  if (!v2)
  {
    return 0;
  }

  sub_100379240();
  v3 = 16;
  if (v4)
  {
    v3 = 12;
  }

  if (*(a1 + v3) >= 3u)
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      v13 = 136315650;
      v14 = "[KmlApduRequest payloadAsUnsignedShort]";
      v15 = 1024;
      v16 = 274;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : APDU: Value too large: %@", &v13, 0x1Cu);
    }

    return 0;
  }

  sub_1003C8698(a1);
  sub_100379240();
  v10 = 16;
  if (v4)
  {
    v10 = 12;
  }

  v11 = *(a1 + v10);
  if (v11 < 1)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v12 = *v9++;
    v7 = v12 | (v7 << 8);
    --v11;
  }

  while (v11);
  return v7;
}

uint64_t sub_1003C9070(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (!*(result + 8) || v1 == 132 || v1 == 128)
    {
      return 1;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C9098(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 9);
    if (v1 - 164 <= 0x30 && ((1 << (v1 + 92)) & 0x1004010000001) != 0)
    {
      return 1;
    }

    result = 0;
    if (v1 <= 0x3C && ((1 << v1) & 0x1005000000000000) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1003C90F0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003C9108(uint64_t result)
{
  if (result)
  {
    return *(result + 42);
  }

  return result;
}

id *sub_1003C9114(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = KmlCommandHandler;
    v13 = objc_msgSendSuper2(&v19, "init");
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      a1[6] = a4;
      v14 = objc_alloc_init(KmlEndpointCreationConfig);
      v15 = a1[4];
      a1[4] = v14;

      v16 = a1[11];
      a1[11] = 0;

      objc_storeStrong(a1 + 7, a5);
      *(a1 + 40) = 0;
      a1[9] = 0;
      a1[10] = 0;
      *(a1 + 64) = -1;
      a1[12] = 0xFFFF;
      v17 = a1[1];
      a1[1] = &off_1004DC740;
    }
  }

  return a1;
}

void sub_1003C922C(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 80) = 0;
    *(a1 + 64) = -1;
    v2 = *(a1 + 8);
    *(a1 + 8) = &off_1004DC7D0;

    *(a1 + 72) = 0;
  }
}

void sub_1003C9278(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    switch(a2)
    {
      case 0:
        v11 = *(a1 + 8);
        v12 = &off_1004DC7D0;
        goto LABEL_12;
      case 1:
        v11 = *(a1 + 8);
        v12 = &off_1004DC758;
        goto LABEL_12;
      case 2:
        v11 = *(a1 + 8);
        v12 = &off_1004DC770;
        goto LABEL_12;
      case 3:
        v11 = *(a1 + 8);
        v12 = &off_1004DC788;
        goto LABEL_12;
      case 4:
        v11 = *(a1 + 8);
        v12 = &off_1004DC7A0;
        goto LABEL_12;
      case 5:
      case 6:
        v5 = KmlLogger();
        if (sub_10036DCF8(v5))
        {
          sub_10036DB8C();
          sub_10037BCBC();
          _os_log_impl(v6, v7, v8, v9, v10, 0x12u);
        }

        break;
      case 7:
      case 8:
        v11 = *(a1 + 8);
        v12 = &off_1004DC7B8;
LABEL_12:
        *(a1 + 8) = v12;

        break;
      default:
        break;
    }

    *(a1 + 72) = a2;
  }
}

id sub_1003C93C0(id result, uint64_t a2)
{
  if (result)
  {
    [NSNumber numberWithInteger:a2];
    objc_claimAutoreleasedReturnValue();
    v3 = [sub_10037BD5C() containsObject:?];

    return v3;
  }

  return result;
}

uint64_t sub_1003C9410(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_1003C8C7C(v3))
    {
      a1 = 1;
    }

    else if (sub_1003C8C9C(v4))
    {
      a1 = 4;
    }

    else if (sub_1003C8D5C(v4))
    {
      a1 = 2;
    }

    else if (sub_1003C8D80(v4))
    {
      a1 = 3;
    }

    else if (sub_1003C8D2C(v4))
    {
      a1 = 5;
    }

    else if (sub_1003C8D08(v4))
    {
      a1 = 6;
    }

    else if (sub_1003C8CC0(v4))
    {
      a1 = 7;
    }

    else if (sub_1003C8CE4(v4))
    {
      a1 = 8;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_1003C94E4(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a3 & 0xFFFFFFFFFFFFFFFBLL) == 1 || (sub_1003C90F0(v7))
  {
    a4 = 1;
    goto LABEL_5;
  }

  v10 = KmlLogger();
  if (sub_10036DCF8(v10))
  {
    sub_10036DB8C();
    sub_10037BCBC();
    _os_log_impl(v11, v12, v13, v14, v15, 0x12u);
  }

  if (a4)
  {
    v16 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    *a4 = [NSError errorWithDomain:v16 code:27013 userInfo:0];

LABEL_10:
    a4 = 0;
  }

LABEL_5:

  return a4;
}

uint64_t sub_1003C9618(NSObject *a1, void *a2, id *a3)
{
  v6 = a2;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_19;
  }

  if ((sub_1003C9070(v6) & 1) == 0)
  {
    v14 = KmlLogger();
    if (sub_10036DCF8(v14))
    {
      sub_10036DB8C();
      v41 = 183;
      sub_10037BCBC();
      _os_log_impl(v15, v16, v17, v18, v19, 0x12u);
    }

    if (a3)
    {
      goto LABEL_11;
    }

LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  if (sub_1003C9098(v7))
  {
    v22 = sub_1003C9410(a1, v7);
    if (sub_1003C93C0(a1, v22))
    {
      if (sub_1003C94E4(a1, v7, v22, a3))
      {
        sub_1003C9278(a1, v22);
        a1 = KmlLogger();
        v21 = 1;
        if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
        {
          sub_10036DB8C();
          v41 = 215;
          sub_10037BCBC();
          _os_log_impl(v33, v34, v35, v36, v37, 0x12u);
        }
      }

      else
      {
        v26 = KmlLogger();
        if (sub_10036DCF8(v26))
        {
          v27 = [*a3 code];
          v38 = 136315650;
          v39 = "[KmlCommandHandler isIncomingCommandAndDataValid:error:]";
          v40 = 1024;
          v41 = 208;
          v42 = 2048;
          v43 = v27;
          sub_10037BCBC();
          _os_log_impl(v28, v29, v30, v31, v32, 0x1Cu);
        }

        v21 = 0;
      }

      goto LABEL_13;
    }

    v23 = KmlLogger();
    if (sub_10036DC64(v23))
    {
      isa = a1[9].isa;
      v38 = 136315906;
      v39 = "[KmlCommandHandler isIncomingCommandAndDataValid:error:]";
      v40 = 1024;
      v41 = 200;
      v42 = 2048;
      v43 = v22;
      v44 = 2048;
      v45 = isa;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: command is not valid - currCommand = %ld, previous command = %ld, return code: 0x6985.", &v38, 0x26u);
    }

    if (a3)
    {
      [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      objc_claimAutoreleasedReturnValue();
      v20 = sub_10037BD4C();
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v8 = KmlLogger();
  if (sub_10036DCF8(v8))
  {
    sub_10036DB8C();
    v41 = 191;
    sub_10037BCBC();
    _os_log_impl(v9, v10, v11, v12, v13, 0x12u);
  }

  if (!a3)
  {
    goto LABEL_19;
  }

LABEL_11:
  [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  objc_claimAutoreleasedReturnValue();
  v20 = sub_10037BD4C();
LABEL_12:
  [v20 errorWithDomain:? code:? userInfo:?];
  *a3 = v21 = 0;
LABEL_13:

LABEL_20:
  return v21;
}

void *sub_1003C9978(void *a1, void *a2, id *a3)
{
  v6 = a2;
  if (a1)
  {
    v7 = KmlLogger();
    if (sub_10036F124(v7))
    {
      v45 = 136315394;
      v46 = "[KmlCommandHandler handleIncomingCommand:error:]";
      v47 = 1024;
      v48 = 221;
      sub_10037BD04();
      _os_log_impl(v8, v9, v10, v11, v12, v13);
    }

    v14 = sub_10037BCAC();
    if (sub_1003C9618(v14, v15, v16))
    {
      if (!v18 & v17)
      {
        a1 = 0;
      }

      else
      {
        switch(a1[9])
        {
          case 1:
            v26 = sub_1003C9BF4(a1, v6);
            break;
          case 2:
            v36 = sub_10037BCAC();
            v26 = sub_1003C9E78(v36, v37, v38);
            break;
          case 3:
            v27 = sub_10037BCAC();
            v26 = sub_1003CACA8(v27, v28, v29);
            break;
          case 4:
            v33 = sub_10037BCAC();
            v26 = sub_1003CB158(v33, v34, v35);
            break;
          case 5:
          case 6:
            v23 = sub_10037BCAC();
            v26 = sub_1003CB7C4(v23, v24, v25);
            break;
          case 7:
            v39 = sub_10037BCAC();
            v26 = sub_1003CB5DC(v39, v40, v41);
            break;
          case 8:
            v30 = sub_10037BCAC();
            v26 = sub_1003CB6D0(v30, v31, v32);
            break;
          default:
            JUMPOUT(0);
        }

        a1 = v26;
      }
    }

    else
    {
      if (*a3)
      {
        v19 = bswap32([*a3 code]) >> 16;
      }

      else
      {
        v19 = 33386;
      }

      a1 = sub_10037814C(KmlApduResponse, v19, 0);
      v20 = [sub_10037BDA0() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      KmlErrorString();
      v21 = [sub_10037BD94() stringWithUTF8String:NSLocalizedDescriptionKey];
      v44 = v21;
      v22 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *a3 = [NSError errorWithDomain:v20 code:206 userInfo:v22];
    }
  }

  return a1;
}

id sub_1003C9BF4(uint64_t a1, char *a2)
{
  if (a1)
  {
    v4 = sub_1003C8DD8(a2);
    v5 = [v4 isEqualToString:@"A000000809434343444B467631"];
    v6 = KmlLogger();
    v7 = sub_100057AEC(v6);
    if (v5)
    {
      if (v7)
      {
        sub_10037BDC0();
        v32 = 274;
        sub_10037BD04();
        _os_log_impl(v8, v9, v10, v11, v12, v13);
      }

      v14 = [*(a1 + 56) appletSupportedVersionsTlvForPairing];
      v15 = [*(a1 + 56) kmlSupportedVersionsTlvForPairing];
      buf[0] = 2 * (*(a1 + 24) != 0);
      v16 = [NSData dataWithBytes:buf length:1];
      v17 = [KmlTlv TLVWithTag:212 value:v16];
      v18 = [NSArray arrayWithObjects:v15, v14, v17, 0];

      v19 = 144;
    }

    else
    {
      if (v7)
      {
        sub_10037BDC0();
        v32 = 289;
        sub_10037BD04();
        _os_log_impl(v20, v21, v22, v23, v24, v25);
      }

      v18 = 0;
      v17 = 0;
      v14 = 0;
      v15 = 0;
      v19 = 33386;
    }

    v26 = KmlLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "[KmlCommandHandler handleSelectCommand:error:]";
      v31 = 1024;
      v32 = 292;
      v33 = 1024;
      v34 = __rev16(v19);
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: response status = 0x%02x", buf, 0x18u);
    }

    v27 = sub_10037814C(KmlApduResponse, v19, v18);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void *sub_1003C9E78(uint64_t a1, void *a2, void *a3)
{
  v112 = a2;
  if (a1)
  {
    v110 = a3;
    v117 = a1;
    v111 = +[NSMutableData data];
    sub_1003C86DC(v112);
    objc_claimAutoreleasedReturnValue();
    v7 = [sub_10037BD5C() TLVsWithData:?];

    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v129 objects:v151 count:16];
    if (v9)
    {
      v7 = v9;
      sub_10037BDAC();
      v10 = *v130;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v130 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v129 + 1) + 8 * i);
          if ([v12 tag] == 32592)
          {
            v13 = [v12 value];

            v3 = v13;
          }

          else if ([v12 tag] == 91)
          {
            v14 = [v12 asData];

            v4 = v14;
          }

          else if ([v12 tag] == 92)
          {
            v15 = [v12 asData];

            v120 = v15;
          }

          else if ([v12 tag] == 214)
          {
            *(v117 + 96) = [v12 valueAsUnsignedLong];
          }

          else if ([v12 tag] == 94)
          {
            v16 = [v12 asData];

            v118 = v16;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v129 objects:v151 count:16];
      }

      while (v7);
    }

    else
    {
      sub_10037BDAC();
    }

    p_info = &OBJC_METACLASS___KmlManagerInterface.info;
    v18 = &unk_100409000;
    if (!*(v117 + 24))
    {
      v41 = KmlLogger();
      if (sub_10036F978(v41))
      {
        sub_10037BCF0(4.8151e-34);
        v144 = 327;
        sub_10037BCCC();
        _os_log_impl(v42, v43, v44, v45, v46, 0x12u);
      }

      v47 = KmlApduResponse;
      v48 = 33940;
      goto LABEL_99;
    }

    v19 = v120;
    if (v4 && v120)
    {
      v20 = [*(v117 + 56) updateVehicleSupportedFrameworkVersions:v4];
      v21 = [*(v117 + 56) updateVehicleSupportedAppletVersions:v120];
      v22 = [*(v117 + 56) updateVehicleSupportedBluetoothVersions:v118];
      v23 = KmlLogger();
      if (sub_10036F978(v23))
      {
        v24 = *(v117 + 56);
        *buf = 136315650;
        v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
        v143 = 1024;
        v144 = 344;
        v145 = 2112;
        *v146 = v24;
        sub_10037BCCC();
        _os_log_impl(v25, v26, v27, v28, v29, 0x1Cu);
      }

      if ([*(v117 + 56) agreedKmlVehicleVersion])
      {
        v19 = v111;
        [v111 appendData:v4];
        [v111 appendData:v120];
        if (v3)
        {
          v30 = KmlLogger();
          if (sub_10036F978(v30))
          {
            sub_10037BCF0(4.8151e-34);
            v144 = 362;
            sub_10037BCCC();
            _os_log_impl(v31, v32, v33, v34, v35, 0x12u);
          }

          v19 = +[NSMutableArray array];
          [KmlTlv TLVsWithData:v3];
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          obj = v128 = 0u;
          v36 = [obj countByEnumeratingWithState:&v125 objects:v140 count:16];
          if (v36)
          {
            v18 = v36;
            v119 = 0;
            v37 = *v126;
            sub_10037BD7C();
            do
            {
              for (j = 0; j != v18; j = (j + 1))
              {
                if (*v126 != v37)
                {
                  objc_enumerationMutation(obj);
                }

                v39 = *(*(&v125 + 1) + 8 * j);
                +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v39 tag]);
                objc_claimAutoreleasedReturnValue();
                [sub_10037BD5C() addObject:?];

                if ([v39 tag] == 192)
                {
                  v40 = [v39 value];

                  v119 = v40;
                }

                else if ([v39 tag] == 193)
                {
                  v115 = [v39 valueAsUnsignedLong];
                }

                else if ([v39 tag] == 194)
                {
                  v114 = [v39 valueAsUnsignedShort];
                }

                else if ([v39 tag] == 195)
                {
                  v113 = [v39 valueAsUnsignedShort];
                }
              }

              v18 = [obj countByEnumeratingWithState:&v125 objects:v140 count:16];
            }

            while (v18);
          }

          else
          {
            v119 = 0;
            sub_10037BD7C();
          }

          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v65 = [&off_1004DC7E8 countByEnumeratingWithState:&v121 objects:v139 count:16];
          if (v65)
          {
            v66 = v65;
            v67 = *v122;
            while (2)
            {
              for (k = 0; k != v66; k = k + 1)
              {
                if (*v122 != v67)
                {
                  objc_enumerationMutation(&off_1004DC7E8);
                }

                v18 = *(*(&v121 + 1) + 8 * k);
                if (([v19 containsObject:v18] & 1) == 0)
                {
                  if (v110)
                  {
                    v70 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
                    v137 = NSLocalizedDescriptionKey;
                    v71 = [NSString stringWithUTF8String:KmlErrorString()];
                    v138 = v71;
                    v72 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                    *v110 = [NSError errorWithDomain:v70 code:21 userInfo:v72];
                  }

                  v73 = KmlLogger();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                  {
                    [v18 unsignedIntegerValue];
                    *buf = 136315650;
                    v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
                    sub_10037BD2C();
                    v144 = 388;
                    v145 = 2048;
                    *v146 = v74;
                    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: did not receive tag: 0x%02lx", buf, 0x1Cu);
                  }

                  p_info = &OBJC_METACLASS___KmlManagerInterface.info;
                  v18 = sub_10037814C(KmlApduResponse, 34922, 0);
                  v69 = 0;
                  goto LABEL_73;
                }
              }

              v66 = [&off_1004DC7E8 countByEnumeratingWithState:&v121 objects:v139 count:16];
              if (v66)
              {
                continue;
              }

              break;
            }

            v69 = 1;
            p_info = (&OBJC_METACLASS___KmlManagerInterface + 32);
          }

          else
          {
            v69 = 1;
            p_info = &OBJC_METACLASS___KmlManagerInterface.info;
          }

LABEL_73:

          if (!v69)
          {
            goto LABEL_92;
          }

          v18 = &unk_100409000;
          if (v119)
          {
            v75 = KmlSignpostLogger();
            if (os_signpost_enabled(v75))
            {
              *buf = 0;
              sub_10037BDF4(&_mh_execute_header, v75, OS_SIGNPOST_INTERVAL_BEGIN, v76, "OpPakeRequest", "getX", buf);
            }

            v77 = sub_1003D931C(*(v117 + 16), v3, *(v117 + 24), v119, v115, v114, v113, v111);
            v78 = KmlSignpostLogger();
            if (os_signpost_enabled(v78))
            {
              *buf = 0;
              sub_10037BDF4(&_mh_execute_header, v78, OS_SIGNPOST_INTERVAL_END, v79, "OpPakeRequest", "getX", buf);
            }

            v80 = KmlLogger();
            if (sub_100057AEC(v80))
            {
              *buf = 136315650;
              v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
              sub_10037BD2C();
              v144 = 405;
              v145 = 2112;
              *v146 = v77;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: CurvePointX = %@", buf, 0x1Cu);
            }

            if (!v77)
            {
              if (v110)
              {
                v78 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
                v133 = NSLocalizedDescriptionKey;
                v81 = p_info;
                v82 = [NSString stringWithUTF8String:KmlErrorString()];
                v134 = v82;
                v83 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
                *v110 = [NSError errorWithDomain:v78 code:18 userInfo:v83];

                p_info = v81;
                v77 = 0;
              }

              v84 = KmlLogger();
              if (sub_100057AEC(v84))
              {
                *buf = 136315394;
                v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
                sub_10037BD2C();
                v144 = 411;
                sub_10037BD04();
                _os_log_impl(v85, v86, v87, v88, v89, v90);
              }
            }

            v91 = v77;
            v92 = p_info;
            v93 = KmlLogger();
            if (sub_100057AEC(v93))
            {
              *buf = 136315394;
              v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
              sub_10037BD2C();
              v144 = 414;
              sub_10037BD04();
              _os_log_impl(v94, v95, v96, v97, v98, v99);
            }

            v100 = +[NSMutableArray array];
            v101 = [KmlTlv TLVWithTag:80 value:v91];
            [v100 addObject:v101];

            v102 = [*(v117 + 56) getAgreedBluetoothVersionsTlv];
            if (v102)
            {
              [v100 addObject:v102];
            }

            v18 = sub_10037814C((v92 + 151), 144, v100);

LABEL_92:
            v103 = v119;
            v104 = v120;
LABEL_100:

            goto LABEL_101;
          }
        }

        if (v110)
        {
          v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v135 = NSLocalizedDescriptionKey;
          v105 = [NSString stringWithUTF8String:KmlErrorString()];
          v136 = v105;
          [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
          v107 = v106 = p_info;
          *v110 = [NSError errorWithDomain:v19 code:20 userInfo:v107];

          p_info = v106;
          v18 = &unk_100409000;
        }

        v108 = KmlLogger();
        if (!sub_10036F978(v108))
        {
          goto LABEL_98;
        }

        sub_10037BCF0(COERCE_FLOAT(v18[278]));
        v144 = 398;
        sub_10037BCCC();
        v58 = 18;
      }

      else
      {
        if (v110)
        {
          v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v147 = NSLocalizedDescriptionKey;
          v59 = [NSString stringWithUTF8String:KmlErrorString()];
          v148 = v59;
          v60 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          *v110 = [NSError errorWithDomain:v19 code:215 userInfo:v60];

          p_info = &OBJC_METACLASS___KmlManagerInterface.info;
        }

        v61 = KmlLogger();
        if (!sub_10036F978(v61))
        {
          goto LABEL_98;
        }

        [*(v117 + 56) ourPreferredKmlVersion];
        *buf = 136315906;
        v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
        sub_10037BD2C();
        *(v62 + 14) = 350;
        v145 = 2112;
        *(v62 + 20) = v4;
        *&v146[8] = v63;
        *(v62 + 30) = v64;
        sub_10037BCCC();
        v58 = 34;
      }
    }

    else
    {
      if (v110)
      {
        v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v149 = NSLocalizedDescriptionKey;
        v49 = [NSString stringWithUTF8String:KmlErrorString()];
        v150 = v49;
        v50 = [NSDictionary dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        *v110 = [NSError errorWithDomain:v19 code:215 userInfo:v50];

        p_info = &OBJC_METACLASS___KmlManagerInterface.info;
      }

      v51 = KmlLogger();
      if (!sub_10036F978(v51))
      {
        goto LABEL_98;
      }

      sub_10037BCF0(4.8153e-34);
      v144 = 336;
      v145 = v52;
      *v146 = 91;
      *&v146[4] = v52;
      *&v146[6] = 92;
      sub_10037BCCC();
      v58 = 30;
    }

    _os_log_impl(v53, v54, v55, v56, v57, v58);
LABEL_98:

    v47 = (p_info + 151);
    v48 = 34922;
LABEL_99:
    v18 = sub_10037814C(v47, v48, 0);
    v103 = 0;
    v104 = v120;
    goto LABEL_100;
  }

  v18 = 0;
LABEL_101:

  return v18;
}

id sub_1003CACA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    v35 = 0;
    goto LABEL_34;
  }

  v7 = sub_1003C86DC(v5);
  v8 = [KmlTlv TLVsWithData:v7];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (!v10)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v48;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v48 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v47 + 1) + 8 * i);
      if ([v16 tag] == 82)
      {
        v17 = [v16 value];
        v18 = v13;
        v13 = v17;
      }

      else
      {
        if ([v16 tag] != 87)
        {
          continue;
        }

        v19 = [v16 value];
        v18 = v12;
        v12 = v19;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v47 objects:v59 count:16];
  }

  while (v11);
LABEL_16:

  v20 = KmlLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    sub_10037BD38();
    v54 = 437;
    v55 = 2112;
    v56 = v13;
    v57 = 2112;
    v58 = v12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: CurvePointY: %@, remoteEvidence: %@", buf, 0x26u);
  }

  if (!v13 || !v12)
  {
    goto LABEL_28;
  }

  v21 = KmlSignpostLogger();
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    sub_10037BDF4(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v22, "OpPakeVerify", "evidence", buf);
  }

  v23 = sub_1003D91CC(*(a1 + 16), v13, v12);
  v24 = KmlSignpostLogger();
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    sub_10037BDF4(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v25, "OpPakeVerify", "evidence", buf);
  }

  if (v23)
  {
    v26 = KmlLogger();
    if (sub_10036DC64(v26))
    {
      sub_10037BD38();
      v54 = 453;
      sub_10037BD04();
      _os_log_impl(v27, v28, v29, v30, v31, v32);
    }

    v33 = [KmlTlv TLVWithTag:88 value:v23];
    v34 = [NSArray arrayWithObjects:v33, 0];
    v35 = sub_10037814C(KmlApduResponse, 144, v34);
  }

  else
  {
LABEL_28:
    if (a3)
    {
      v36 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v51 = NSLocalizedDescriptionKey;
      v37 = [NSString stringWithUTF8String:KmlErrorString()];
      v52 = v37;
      v38 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      *a3 = [NSError errorWithDomain:v36 code:5 userInfo:v38];
    }

    v39 = KmlLogger();
    if (sub_10036DC64(v39))
    {
      sub_10037BD38();
      v54 = 449;
      sub_10037BD04();
      _os_log_impl(v40, v41, v42, v43, v44, v45);
    }

    v35 = sub_10037814C(KmlApduResponse, 34922, 0);
  }

LABEL_34:

  return v35;
}

id sub_1003CB158(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (!a1)
  {
    v24 = 0;
    goto LABEL_29;
  }

  v7 = KmlLogger();
  if (sub_10036F124(v7))
  {
    sub_10036DC9C();
    v52 = 537;
    sub_10037BD04();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
  }

  if (*(a1 + 40) != 1)
  {
    if (sub_1003C8D50(v6) == 128 && !sub_1003C9108(v6))
    {
      v34 = KmlLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = sub_1003C8D50(v6);
        sub_1003C9108(v6);
        sub_10036DC9C();
        v52 = 552;
        v53 = v36;
        v54 = v35;
        v55 = v36;
        v56 = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s : %i : Write data end: p1=%02x, p2=%02x", buf, 0x1Eu);
      }

      *(a1 + 40) = 1;
    }

    else if (sub_1003C8D50(v6) || sub_1003C9108(v6))
    {
      v25 = [sub_10037BDA0() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      KmlErrorString();
      v26 = [sub_10037BD94() stringWithUTF8String:NSLocalizedDescriptionKey];
      v50 = v26;
      v27 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v28 = [NSError errorWithDomain:v25 code:12 userInfo:v27];

      v29 = KmlLogger();
      if (sub_10036DC64(v29))
      {
        v30 = sub_1003C8D50(v6);
        sub_1003C9108(v6);
        sub_10036DC9C();
        v52 = 557;
        v53 = v31;
        v54 = v30;
        v55 = v31;
        v56 = v32;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s : %i : Wrong P1 or P2, return code: 0x6B00. p1=%02x, p2=%02x", buf, 0x1Eu);
      }

      v33 = 107;
      if (v28)
      {
        if (!a3)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_23:
      v38 = *(a1 + 32);
      v39 = sub_1003C86DC(v6);
      v28 = sub_1003DB100(v38, v39);

      if (!v28)
      {
        goto LABEL_28;
      }

      v40 = KmlLogger();
      if (sub_10036DCF8(v40))
      {
        sub_10036DC9C();
        v52 = 564;
        sub_10037BD04();
        _os_log_impl(v41, v42, v43, v44, v45, v46);
      }

      v33 = 32874;
      if (!a3)
      {
        goto LABEL_28;
      }

LABEL_27:
      v47 = v28;
      *a3 = v28;
LABEL_28:
      v24 = sub_10037814C(KmlApduResponse, v33, 0);

      goto LABEL_29;
    }

    v33 = 144;
    goto LABEL_23;
  }

  if (a3)
  {
    v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v57 = NSLocalizedDescriptionKey;
    v15 = [NSString stringWithUTF8String:KmlErrorString()];
    v58 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    *a3 = [NSError errorWithDomain:v14 code:26 userInfo:v16];
  }

  v17 = KmlLogger();
  if (sub_100057AEC(v17))
  {
    sub_10036DC9C();
    v52 = 545;
    sub_10037BD04();
    _os_log_impl(v18, v19, v20, v21, v22, v23);
  }

  v24 = sub_10037814C(KmlApduResponse, 34153, 0);
LABEL_29:

  return v24;
}

id sub_1003CB5DC(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a2;
    v7 = KmlLogger();
    if (sub_10036F124(v7))
    {
      sub_10036DB8C();
      sub_10037BD04();
      _os_log_impl(v8, v9, v10, v11, v12, v13);
    }

    v14 = sub_1003B5FE0(*(a1 + 88), v6, a3);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1003CB6D0(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a2;
    v7 = KmlLogger();
    if (sub_10036F124(v7))
    {
      sub_10036DB8C();
      sub_10037BD04();
      _os_log_impl(v8, v9, v10, v11, v12, v13);
    }

    v14 = sub_1003B65D4(*(a1 + 88), v6, a3);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1003CB7C4(uint64_t a1, void *a2, NSObject *a3)
{
  if (!a1)
  {
    v28 = 0;
    goto LABEL_26;
  }

  v5 = a2;
  v6 = sub_1003C8D50(v5);
  v7 = sub_1003C9108(v5);

  v49 = 0;
  v8 = sub_1003CBCE0(a1, v6, v7, &v49);
  v9 = v49;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10037BCDC();
      v59 = 471;
      v60 = v13;
      v61 = v6;
      v62 = v13;
      v63 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s : %i : KmlCommandHandler: Invalid flow control: p1:%02x p2:%02x", buf, 0x1Eu);
    }

    if (!v10)
    {
      v14 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v54 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v15 = [sub_100372244() stringWithUTF8String:?];
      v55 = v15;
      [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      objc_claimAutoreleasedReturnValue();
      v10 = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
    }

    v16 = 107;
    if (!a3)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v6 == 17)
  {
    v11 = 2;
LABEL_14:
    *(a1 + 80) = v11;
    goto LABEL_20;
  }

  if (v6 == 16)
  {
    if (v7 == 1)
    {
      v30 = sub_1003CC7F8(a1);

      v31 = *(a1 + 40);
      if (v31 != 1 || v30)
      {
        if (v31)
        {
          v32 = KmlLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10037BCDC();
            v59 = 493;
            sub_10037BDD4(&_mh_execute_header, v33, v34, "%s : %i : KmlCommandHandler: key creation config is invalid", v35, v36, v37, v38, v48, v49, v50, v51, v52, v53, v54, v55);
          }

          v10 = v30;
        }

        else
        {
          v39 = [sub_10037BDA0() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v52 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v40 = [sub_10037BD94() stringWithUTF8String:?];
          v53 = v40;
          v41 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v10 = [NSError errorWithDomain:v39 code:12 userInfo:v41];

          v32 = KmlLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10037BCDC();
            v59 = 491;
            sub_10037BDD4(&_mh_execute_header, v42, v43, "%s : %i : KmlCommandHandler: missing end P1 P2", v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
          }
        }

        *(a1 + 80) = 1;
        v16 = 32874;
        if (!a3)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v10 = 0;
      *(a1 + 80) = 4;
      *(a1 + 40) = 0;
      v16 = 144;
      goto LABEL_23;
    }

    v11 = 1;
    goto LABEL_14;
  }

  if (!v9)
  {
    v6 = [sub_10037BDA0() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v50 = NSLocalizedDescriptionKey;
    KmlErrorString();
    v17 = [sub_10037BD94() stringWithUTF8String:?];
    v51 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v10 = [NSError errorWithDomain:v6 code:17 userInfo:v18];
  }

  v19 = KmlLogger();
  if (sub_10036DC64(v19))
  {
    sub_10037BCDC();
    v59 = 509;
    sub_10037BD04();
    _os_log_impl(v20, v21, v22, v23, v24, v25);
  }

  *(a1 + 80) = 3;
  *(a1 + 64) = v7;
LABEL_20:
  v16 = 144;
  if (a3)
  {
LABEL_21:
    if (v10)
    {
      v26 = v10;
      a3->isa = v10;
    }
  }

LABEL_23:
  v27 = KmlLogger();
  if (sub_10036F978(v27))
  {
    *buf = 136315650;
    v57 = "[KmlCommandHandler handleOpControlFlowCommand:error:]";
    v58 = 1024;
    v59 = 518;
    v60 = 1024;
    v61 = __rev16(v16);
    _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: response status = 0x%02x", buf, 0x18u);
  }

  v28 = sub_10037814C(KmlApduResponse, v16, 0);

LABEL_26:

  return v28;
}

uint64_t sub_1003CBCE0(uint64_t a1, int a2, uint64_t a3, NSObject *a4)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a3;
  if (a2 == 18)
  {
    v4 = a4;
    switch(a3)
    {
      case 0:
        v41 = KmlLogger();
        if (sub_10037BD10(v41))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 634;
          goto LABEL_33;
        }

        break;
      case 1:
        if (a4)
        {
          v6 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v56[0] = NSLocalizedDescriptionKey;
          KmlErrorString();
          v42 = [sub_100372244() stringWithUTF8String:?];
          v56[1] = NSLocalizedFailureReasonErrorKey;
          v57[0] = v42;
          v57[1] = @"No matching PAKE version found";
          [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v43 = KmlLogger();
        if (sub_10037BD10(v43))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 640;
          goto LABEL_33;
        }

        break;
      case 2:
        if (a4)
        {
          v6 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v54[0] = NSLocalizedDescriptionKey;
          KmlErrorString();
          v34 = [sub_100372244() stringWithUTF8String:?];
          v54[1] = NSLocalizedFailureReasonErrorKey;
          v55[0] = v34;
          v55[1] = @"No matching digital key applet version found";
          [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v35 = KmlLogger();
        if (sub_10037BD10(v35))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 646;
          goto LABEL_33;
        }

        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        if (a4)
        {
          v6 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v52[0] = NSLocalizedDescriptionKey;
          KmlErrorString();
          v12 = [sub_100372244() stringWithUTF8String:?];
          v52[1] = NSLocalizedFailureReasonErrorKey;
          v53[0] = v12;
          v53[1] = @"Failed due to timeout";
          [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v13 = KmlLogger();
        if (sub_10037BD10(v13))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 652;
          goto LABEL_33;
        }

        break;
      case 8:
        if (a4)
        {
          v6 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v50[0] = NSLocalizedDescriptionKey;
          KmlErrorString();
          v39 = [sub_100372244() stringWithUTF8String:?];
          v50[1] = NSLocalizedFailureReasonErrorKey;
          v51[0] = v39;
          v51[1] = @"No key support present in remote reader";
          [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v40 = KmlLogger();
        if (sub_10037BD10(v40))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 659;
          goto LABEL_33;
        }

        break;
      case 9:
        if (a4)
        {
          v6 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v48[0] = NSLocalizedDescriptionKey;
          KmlErrorString();
          v29 = [sub_100372244() stringWithUTF8String:?];
          v48[1] = NSLocalizedFailureReasonErrorKey;
          v49[0] = v29;
          v49[1] = @"Evidence verification on car side failed";
          [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v30 = KmlLogger();
        if (sub_10037BD10(v30))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 665;
          goto LABEL_33;
        }

        break;
      case 10:
        if (a4)
        {
          v6 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v46[0] = NSLocalizedDescriptionKey;
          KmlErrorString();
          v37 = [sub_100372244() stringWithUTF8String:?];
          v46[1] = NSLocalizedFailureReasonErrorKey;
          v47[0] = v37;
          v47[1] = @"wrong digital key configuration";
          [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v38 = KmlLogger();
        if (sub_10037BD10(v38))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 671;
          goto LABEL_33;
        }

        break;
      case 11:
        if (a4)
        {
          v6 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          KmlErrorString();
          v26 = [sub_100372244() stringWithUTF8String:NSLocalizedDescriptionKey];
          v44[1] = NSLocalizedFailureReasonErrorKey;
          v45[0] = v26;
          v45[1] = @"certificate verification failed";
          [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v27 = KmlLogger();
        if (sub_10037BD10(v27))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 677;
          goto LABEL_33;
        }

        break;
      case 12:
        v28 = KmlLogger();
        if (sub_10037BD10(v28))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 680;
          goto LABEL_33;
        }

        break;
      case 13:
        v36 = KmlLogger();
        if (sub_10037BD10(v36))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 683;
          goto LABEL_33;
        }

        break;
      default:
        if (a3 != 127)
        {
          v31 = KmlLogger();
          if (!sub_10036F978(v31))
          {
            goto LABEL_53;
          }

          *buf = 136315650;
          sub_10037BC9C("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]");
          sub_10037BD6C(v32);
          v16 = "%s : %i : KmlCommandHandler: OpControlFlow command - abort, reason - unknown (%d)";
          goto LABEL_52;
        }

        v25 = KmlLogger();
        if (sub_10037BD10(v25))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v59 = 686;
          goto LABEL_33;
        }

        break;
    }

    goto LABEL_54;
  }

  if (a2 == 17)
  {
    v10 = KmlLogger();
    v11 = sub_10036F978(v10);
    if (v6 == 17)
    {
      if (v11)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v59 = 624;
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    if (v6 == 16)
    {
      if (v11)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v59 = 621;
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    if (!v11)
    {
      goto LABEL_53;
    }

    *buf = 136315650;
    sub_10037BC9C("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]");
    sub_10037BD6C(v17);
    v16 = "%s : %i : KmlCommandHandler: OpControlFlow command - end, reason - unknown (%d)";
LABEL_52:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v16, buf, 0x18u);
    goto LABEL_53;
  }

  if (a2 != 16)
  {
    v14 = KmlLogger();
    if (!sub_10036F978(v14))
    {
      goto LABEL_53;
    }

    *buf = 136315650;
    sub_10037BC9C("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]");
    v59 = 695;
    v60 = v15;
    v61 = a2;
    v16 = "%s : %i : KmlCommandHandler: unknown OpControlFlow command - %d";
    goto LABEL_52;
  }

  v8 = KmlLogger();
  v9 = sub_10036F978(v8);
  switch(v6)
  {
    case 0xF:
      if (v9)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v59 = 611;
LABEL_32:
        v6 = 1;
LABEL_33:
        sub_10037BD04();
        _os_log_impl(v18, v19, v20, v21, v22, v23);
        goto LABEL_54;
      }

      break;
    case 2:
      if (v9)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v59 = 605;
        goto LABEL_32;
      }

      break;
    case 3:
      if (v9)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v59 = 608;
        goto LABEL_32;
      }

      break;
    case 1:
      if (v9)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v59 = 602;
        goto LABEL_32;
      }

      break;
    default:
      if (v9)
      {
        *buf = 136315650;
        sub_10037BC9C("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]");
        sub_10037BD6C(v24);
        v16 = "%s : %i : KmlCommandHandler: OpControlFlow command - continue, reason - unknown (%d)";
        goto LABEL_52;
      }

LABEL_53:
      v6 = 0;
      goto LABEL_54;
  }

LABEL_34:
  v6 = 1;
LABEL_54:

  return v6;
}

id sub_1003CC7F8(uint64_t a1)
{
  if (a1)
  {
    a1 = sub_1003DC624(*(a1 + 32), *(a1 + 48), [*(a1 + 56) agreedKmlVehicleVersion]);
    v1 = vars8;
  }

  return a1;
}

void *sub_1003CC848(void *a1)
{
  if (a1)
  {
    a1 = sub_1003DEBF4(a1[4]);
    v1 = vars8;
  }

  return a1;
}

id *sub_1003CC87C(id *a1)
{
  if (a1)
  {
    a1 = a1[4];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1003CC8AC(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

id *sub_1003CC8B8(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v1[3] count]);
    [v2 setObject:v3 forKeyedSubscript:@"numberOfQueuedSessions"];

    if (v1[4])
    {
      v4 = &off_1004DCE88;
    }

    else
    {
      v4 = &off_1004DCEA0;
    }

    [v2 setObject:v4 forKeyedSubscript:@"hasActiveSession"];
    v5 = v1[4];
    if (v5)
    {
      v6 = [v5 clientName];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &stru_1004D9380;
      }

      [v2 setObject:v8 forKeyedSubscript:@"currentSessionClient"];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [v2 setObject:v10 forKeyedSubscript:@"currentSessionType"];

      v11 = [v1[4] dumpState];
      if (v11)
      {
        [v2 setObject:v11 forKeyedSubscript:@"currentSessionState"];
      }
    }

    v12 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:0];
    v13 = [v12 length];
    v1 = malloc_type_calloc(1uLL, v13 + 200, 0x1000040BEF03554uLL);
    *v1 = 1;
    *(v1 + 1) = v13;
    __strlcpy_chk();
    memcpy(v1 + 25, [v12 bytes], v13);
  }

  return v1;
}

void sub_1003CCA88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"ProxyObjects"];
    v7 = [NSSet setWithSet:v6];

    v8 = [v5 objectForKeyedSubscript:@"ClientName"];
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v25 = "[KeyManagementLibrary handleCloseForConnection:]";
      v26 = 1024;
      v27 = 215;
      v28 = 1024;
      *v29 = [v4 processIdentifier];
      *&v29[4] = 2112;
      *&v29[6] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : KmlXpcService: Goodbye from client pid=%d name=%@", buf, 0x22u);
    }

    v17 = v8;

    v18 = v4;
    sub_10038A89C(*(a1 + 16), v4);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = KmlLogger();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v25 = "[KeyManagementLibrary handleCloseForConnection:]";
            v26 = 1024;
            v27 = 222;
            v28 = 2112;
            *v29 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s : %i : Ending session %@", buf, 0x1Cu);
          }

          [v15 endSessionWithCompletion:&stru_1004D1E78];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v4 = v18;
  }
}

void sub_1003CCD48(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037FB1C;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_1003CCDC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 40);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_10037E2E0;
    v11 = &unk_1004C24A8;
    v12 = a1;
    v13 = v5;
    v14 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1003CCE74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      [*(a1 + 24) removeObjectForKey:v6];
      [*(a1 + 24) setObject:v5 forKey:v7];
      v8 = KmlLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12[0] = 136315650;
        sub_1003672C0();
        v13 = 402;
        v14 = 2112;
        v15 = v7;
        v9 = "%s : %i : KSTransport: added delegate for %@.";
        v10 = v8;
        v11 = 28;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, v12, v11);
      }
    }

    else
    {
      v8 = KmlLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12[0] = 136315394;
        sub_1003672C0();
        v13 = 396;
        v9 = "%s : %i : Unable to add delegate for nil sharingId, ignore this request";
        v10 = v8;
        v11 = 18;
        goto LABEL_7;
      }
    }
  }
}

void sub_1003CCFD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_1000167BC();
    sub_1003674E4();
    v4 = v3;
    v5 = sub_1003673F8();
    dispatch_async(v5, v6);
  }
}

void sub_1003CD05C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      [*(a1 + 24) removeObjectForKey:v3];
    }

    else
    {
      v5 = KmlLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6[0] = 136315394;
        sub_1003672C0();
        *(&v6[3] + 2) = 408;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Unable to remove delegate for nil sharingId, ignore this request", v6, 0x12u);
      }
    }
  }
}

void sub_1003CD134(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_1000167BC();
    sub_1003674E4();
    v4 = v3;
    v5 = sub_1003673F8();
    dispatch_async(v5, v6);
  }
}

void sub_1003CD1B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_1000167BC();
    sub_1003674E4();
    v4 = v3;
    v5 = sub_1003673F8();
    dispatch_async(v5, v6);
  }
}

void sub_1003CD23C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v24 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  if (a1)
  {
    v23 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037E618;
    block[3] = &unk_1004D1F10;
    v26 = v19;
    v27 = v24;
    v28 = v21;
    v29 = a1;
    v34 = a9;
    v30 = v17;
    v31 = v18;
    v32 = v20;
    v35 = a10;
    v33 = v22;
    dispatch_async(v23, block);
  }
}

const __CFString *sub_1003CD3CC(const __CFString *result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 1) > 8)
    {
      return @"kmlUnknown";
    }

    else
    {
      return off_1004D1F30[a2 - 1];
    }
  }

  return result;
}

void sub_1003CD3F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 40);
    sub_1000167BC();
    sub_1003674E4();
    v11[2] = sub_10037E7D0;
    v11[3] = &unk_1004D1B40;
    v12 = v8;
    v13 = v9;
    v14 = a1;
    v15 = v7;
    dispatch_async(v10, v11);
  }
}

void sub_1003CD4C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 40));
    sub_1000167BC();
    sub_1003674E4();
    v4 = v3;
    v5 = sub_1003673F8();
    dispatch_sync(v5, v6);
  }
}

void sub_1003CD554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 40));
    v7 = *(a1 + 40);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_10037EAC0;
    v11 = &unk_1004C24A8;
    v12 = a1;
    v13 = v5;
    v14 = v6;
    dispatch_sync(v7, block);
  }
}

void sub_1003CD60C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 40));
    sub_100057A60();
    v4 = 3221225472;
    v5 = sub_10037EBC8;
    v6 = &unk_1004C08D8;
    v7 = a1;
    dispatch_sync(v2, block);
  }
}

uint64_t sub_1003CD680(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 isEqualToString:@"kmlWatch"])
    {
      a1 = 2;
    }

    else if ([v4 isEqualToString:@"kmlPhone"])
    {
      a1 = 1;
    }

    else
    {
      a1 = 255;
    }
  }

  return a1;
}

void sub_1003CD6EC(uint64_t a1)
{
  if (a1)
  {
    sub_1003C42B4(*(a1 + 56), 0);
    v2 = *(a1 + 56);
    *(a1 + 56) = 0;

    v3 = *(a1 + 64);
    *(a1 + 64) = 0;

    v4 = *(a1 + 72);
    *(a1 + 72) = 0;

    v5 = *(a1 + 80);
    *(a1 + 80) = 0;
  }
}

id *sub_1003CD780(id *a1)
{
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

id sub_1003CD7B0(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 48, 1);
  }

  return result;
}

void sub_1003CD7C4(uint64_t a1, double a2)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100382080;
    v3[3] = &unk_1004C2B00;
    v3[4] = a1;
    *&v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003CD844(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100381FB0;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_1003CD8C0(uint64_t a1)
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003824B4;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(&_dispatch_main_q, block);
  }
}

CFTypeRef sub_1003CD93C(uint64_t a1, const __CFString *a2, SecTaskRef task)
{
  if (!a1)
  {
    return 0;
  }

  error = 0;
  v3 = SecTaskCopyValueForEntitlement(task, a2, &error);
  if (error)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v8 = "[KmlEntitlementChecker _copyValueOfEntitlement:secTask:]";
      v9 = 1024;
      v10 = 30;
      v11 = 2112;
      v12 = error;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s : %i : Failed to get entitlements: %@", buf, 0x1Cu);
    }

    CFRelease(error);
  }

  return v3;
}

uint64_t sub_1003CDA3C(uint64_t a1, void *a2, __SecTask *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = sub_1003CD93C(a1, v5, a3);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      a1 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
      CFRelease(v7);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

id sub_1003CDAD0(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = KmlEntitlementChecker;
    a1 = objc_msgSendSuper2(&v10, "init");
    if (a1)
    {
      bzero(buffer, 0xFFuLL);
      proc_name([v3 processIdentifier], buffer, 0xFEu);
      v4 = [NSString stringWithUTF8String:buffer];
      v5 = *(a1 + 1);
      *(a1 + 1) = v4;

      if (v3)
      {
        objc_msgSend_auditToken(v3);
      }

      else
      {
        memset(&token, 0, sizeof(token));
      }

      v6 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
      if (v6)
      {
        v9 = v6;
        *(a1 + 16) = sub_1003CDA3C(a1, @"com.apple.seserviced.kmlXpcService", v6);
        *(a1 + 17) = sub_1003CDA3C(a1, @"com.apple.seserviced.kmlBackGroundClient", v9);
        CFRelease(v9);
      }

      else
      {
        v7 = KmlLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          token.val[0] = 136315650;
          *&token.val[1] = "[KmlEntitlementChecker initWithConnection:]";
          LOWORD(token.val[3]) = 1024;
          *(&token.val[3] + 2) = 89;
          HIWORD(token.val[4]) = 2112;
          *&token.val[5] = v3;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s : %i : Cannot create SecTaskRef with XPC Connection: %@", &token, 0x1Cu);
        }

        a1 = 0;
      }
    }
  }

  return a1;
}

uint64_t sub_1003CDC98(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 17);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_1003CDCB0(uint64_t result)
{
  if (result)
  {
    sub_1003CDDF4(result);
    sub_1003CDFD8(result, v3, v4, v5, v6, v7, v8, v9, v24, v25, v26, v27, v28);
    [SESAlarm registerAlarm:@"com.apple.sesd.kml.sharingAuthExpiry" handler:result];
    v10 = KmlLogger();
    if (sub_100057AEC(v10))
    {
      sub_100389B08();
      sub_100389B80(&_mh_execute_header, v11, v12, "%s : %i : Auth Expiry Alarm registered - %u", v13, v14, v15, v16);
    }

    [SESAlarm registerAlarm:@"com.apple.sesd.kml.sharingOpt2AuthDeletion" handler:result];
    v17 = KmlLogger();
    if (sub_100057AEC(v17))
    {
      sub_100389B08();
      sub_100389B80(&_mh_execute_header, v18, v19, "%s : %i : Opt2 Auth Deletion Alarm registered - %u", v20, v21, v22, v23);
    }

    sub_1003CE160(result);
    sub_1003CE3AC(result);
  }
}

void sub_1003CDDF4(uint64_t a1)
{
  if (a1)
  {
    v3 = sub_1003CE670(a1);
    if (v3)
    {
      v4 = KmlLogger();
      if (sub_10036F5DC(v4))
      {
        v27 = 136315650;
        v28 = "[KmlSharingManager regenerateOwnerSharingObjects]";
        v29 = 1024;
        v30 = 164;
        v31 = 2112;
        v32 = v3;
        sub_100389AA8();
LABEL_5:
        _os_log_impl(v5, v6, v7, v8, v9, v10);
      }
    }

    else
    {
      if ([*(a1 + 8) count])
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v1 = *(a1 + 8);
        v11 = [v1 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          v18 = v11;
          v19 = *v23;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v23 != v19)
              {
                objc_enumerationMutation(v1);
              }

              sub_1003CE9C0(a1, *(*(&v22 + 1) + 8 * i), v12, v13, v14, v15, v16, v17, v22, *(&v22 + 1), v23, *(&v23 + 1), v24);
            }

            v18 = [v1 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v18);
        }

        goto LABEL_17;
      }

      v21 = KmlLogger();
      if (sub_100057AEC(v21))
      {
        v27 = 136315394;
        v28 = "[KmlSharingManager regenerateOwnerSharingObjects]";
        v29 = 1024;
        v30 = 169;
        sub_10037BD04();
        goto LABEL_5;
      }
    }

LABEL_17:
  }
}

void sub_1003CDFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  sub_100389B48();
  if (v13)
  {
    v14 = v13;
    v15 = sub_100378CC8(KmlSharingInvitationRecordsUpdater);
    v16 = *(v14 + 16);
    *(v14 + 16) = v15;

    v17 = sub_1003C8664(*(v14 + 16));
    sub_100389AC8();
    sub_100389B30();
    v19 = [v18 countByEnumeratingWithState:? objects:? count:?];
    if (v19)
    {
      v20 = v19;
      v21 = *a13;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*a13 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(a12 + 8 * i);
          v24 = KmlLogger();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = sub_1003C7D40(v23);
            sub_1003672F0();
            sub_100389A90();
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s : %i : Regenerate friend sharing session with id : %@", v26, 0x1Cu);
          }

          sub_10038CADC(KmlFriendSharingManager, v23);
        }

        sub_100389B30();
        v20 = [v17 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v20);
    }
  }

  sub_100389B64();
}

void sub_1003CE160(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    if (*(a1 + 32) == 1)
    {
      v10 = sub_1003CE670(a1);
      if (v10)
      {
        v1 = v10;
        v11 = KmlLogger();
        if (sub_10036F5DC(v11))
        {
          sub_10036DC30();
          sub_100389A7C();
          sub_100389AA8();
          _os_log_impl(v12, v13, v14, v15, v16, v17);
        }

        goto LABEL_24;
      }
    }

    *(v2 + 32) = 1;
    if (![*(v2 + 8) count])
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_10036DC30();
        sub_10037BD04();
        _os_log_impl(v4, v5, v6, v7, v8, v9);
      }

      goto LABEL_6;
    }

    v18 = sub_100389AF0();
    v2 = sub_1003CF438(v18, v19, v20);
    v1 = v41;
    if ([v2 BOOLValue])
    {
      v29 = sub_100389B1C(v21, v22, v23, v24, v25, v26, v27, v28, *&v41, v42);
      if (v30 && v29 > 2.0)
      {
        [SESAlarm setAlarm:@"com.apple.sesd.kml.sharingAuthExpiry" secondsFromNow:v29 + 1.0];
LABEL_24:

LABEL_6:
        return;
      }
    }

    v32 = [v2 BOOLValue];
    v33 = KmlLogger();
    v34 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        sub_10036DC30();
        sub_10037BD04();
LABEL_22:
        _os_log_impl(v35, v36, v37, v38, v39, v40);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10036DC30();
      sub_100389A7C();
      sub_100389AB8();
      goto LABEL_22;
    }

    goto LABEL_24;
  }
}

void sub_1003CE3AC(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    if (*(a1 + 32) == 1)
    {
      v10 = sub_1003CE670(a1);
      if (v10)
      {
        v1 = v10;
        v11 = KmlLogger();
        if (sub_10036F5DC(v11))
        {
          sub_10036DC30();
          sub_100389A7C();
          sub_100389AA8();
          _os_log_impl(v12, v13, v14, v15, v16, v17);
        }

        goto LABEL_24;
      }
    }

    *(v2 + 32) = 1;
    if (![*(v2 + 8) count])
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_10036DC30();
        sub_10037BD04();
        _os_log_impl(v4, v5, v6, v7, v8, v9);
      }

      goto LABEL_6;
    }

    v18 = sub_100389AF0();
    v2 = sub_1003CF060(v18, v19, v20);
    v1 = v41;
    if ([v2 BOOLValue])
    {
      v29 = sub_100389B1C(v21, v22, v23, v24, v25, v26, v27, v28, *&v41, v42);
      if (v30 && v29 > 2.0)
      {
        [SESAlarm setAlarm:@"com.apple.sesd.kml.sharingOpt2AuthDeletion" secondsFromNow:v29 + 1.0];
LABEL_24:

LABEL_6:
        return;
      }
    }

    v32 = [v2 BOOLValue];
    v33 = KmlLogger();
    v34 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        sub_10036DC30();
        sub_10037BD04();
LABEL_22:
        _os_log_impl(v35, v36, v37, v38, v39, v40);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10036DC30();
      sub_100389A7C();
      sub_100389AB8();
      goto LABEL_22;
    }

    goto LABEL_24;
  }
}

void sub_1003CE5F8(uint64_t a1)
{
  if (a1)
  {
    sub_100057A60();
    v4 = 3221225472;
    v5 = sub_100388C34;
    v6 = &unk_1004C2400;
    v7 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1003CE658(uint64_t a1)
{
  if (a1)
  {
    dispatch_async(*(a1 + 24), &stru_1004D20D0);
  }
}

id sub_1003CE670(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    [*(a1 + 8) removeAllObjects];
    v40 = 0;
    v3 = SESEndPointListWithSession();
    v4 = 0;
    if (v4)
    {
      v5 = v4;
      v6 = KmlLogger();
      if (sub_10036F5DC(v6))
      {
        *buf = 136315650;
        v43 = "[KmlSharingManager getFreshListOfValidShareInitiatorEndpoints]";
        v44 = 1024;
        v45 = 186;
        v46 = 2112;
        v47 = v5;
        sub_100389AA8();
        _os_log_impl(v7, v8, v9, v10, v11, v12);
      }

      v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v14 = [v5 userInfo];
      v15 = [NSError errorWithDomain:v13 code:210 userInfo:v14];
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = v3;
      v16 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v16)
      {
        v17 = v16;
        v35 = v3;
        v18 = *v37;
        v19 = &swift_cvw_destroy_ptr;
        p_info = &OBJC_METACLASS___KmlManagerInterface.info;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v37 != v18)
            {
              objc_enumerationMutation(v13);
            }

            v22 = *(*(&v36 + 1) + 8 * i);
            v23 = [objc_alloc(v19[277]) initWithEndpoint:v22];
            if (([v19[277] doesVersion:objc_msgSend(v23 support:{"agreedKmlVehicleVersion"), 768}] & 1) != 0 || sub_100399BE8((p_info + 411), v22))
            {
              v24 = [v22 revocationAttestation];

              if (!v24)
              {
                v25 = KmlLogger();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  [v22 publicKeyIdentifier];
                  v26 = v18;
                  v27 = v13;
                  v28 = p_info;
                  v30 = v29 = v2;
                  *buf = 136315650;
                  sub_100389B3C(buf);
                  v44 = v31;
                  *(v32 + 14) = 204;
                  v46 = 2112;
                  *(v32 + 20) = v33;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s : %i : Found un-revoked shareInitiator endpoint with id : %@", buf, 0x1Cu);

                  v2 = v29;
                  p_info = v28;
                  v13 = v27;
                  v18 = v26;
                  v19 = &swift_cvw_destroy_ptr;
                }

                [*(v2 + 8) addObject:v22];
              }
            }
          }

          v17 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v17);
        v15 = 0;
        v3 = v35;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_1003CE9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  sub_100389B48();
  v14 = v13;
  v16 = v15;
  if (v14)
  {
    v17 = sub_100394824(KmlSharingRecordsUpdater, v16);
    v18 = sub_100395D0C(v17);
    sub_100389AC8();
    sub_100389B30();
    v20 = [v19 countByEnumeratingWithState:? objects:? count:?];
    if (v20)
    {
      v21 = v20;
      v22 = *a13;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*a13 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(a12 + 8 * i);
          v25 = sub_1003B8594(v24);
          v26 = KmlLogger();
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
          if (v25 == 4)
          {
            if (v27)
            {
              v28 = sub_1003C75C8(v24);
              sub_1003672F0();
              sub_100389A90();
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : %@ is record of successful sharing. Leave it alone.", v29, 0x1Cu);
            }
          }

          else
          {
            if (v27)
            {
              v30 = sub_1003C75C8(v24);
              sub_1003672F0();
              sub_100389A90();
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : Regenerate owner sharing session with id : %@", v31, 0x1Cu);
            }

            sub_10039EAA4(KmlOwnerSharingManager, v16, v24, v17);
          }
        }

        sub_100389B30();
        v21 = [v18 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v21);
    }
  }

  sub_100389B64();
}

id sub_1003CEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, __int16 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_100389B48();
  a53 = v54;
  a54 = v56;
  v58 = v57;
  if (v57)
  {
    v88 = v55;
    v59 = KmlLogger();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      a35 = 136315394;
      sub_100389B3C(&a35);
      a38 = v60;
      *(v61 + 14) = 240;
      sub_10037BD04();
      _os_log_impl(v62, v63, v64, v65, v66, v67);
    }

    v68 = sub_100378CC8(KmlSharingInvitationRecordsUpdater);
    v69 = *(v58 + 16);
    *(v58 + 16) = v68;

    v70 = sub_1003C8664(*(v58 + 16));
    v71 = +[NSMutableArray array];
    sub_100389AC8();
    v72 = v70;
    v73 = [v72 countByEnumeratingWithState:&a11 objects:&a19 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *a13;
      do
      {
        for (i = 0; i != v74; i = i + 1)
        {
          if (*a13 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v77 = *(a12 + 8 * i);
          if (sub_1003C7D28(v77) <= 5)
          {
            v78 = [DAKeySharingInvitationData alloc];
            v79 = sub_1003AAA78(v77);
            v80 = sub_1003C7D40(v77);
            v81 = sub_1003C7D34(v77);
            v82 = sub_1003C7D28(v77) - 1;
            if (v82 > 5)
            {
              v83 = 8;
            }

            else
            {
              v83 = qword_1004174C8[v82];
            }

            v84 = [v78 initWithSessionUUID:v79 invitationIdentifier:v80 friendKeyIdentifier:v81 sharingTarget:1 state:v83 vehicleEnteredPasscode:0];

            [v71 addObject:v84];
          }
        }

        v74 = [v72 countByEnumeratingWithState:&a11 objects:&a19 count:16];
      }

      while (v74);
    }

    if (v88)
    {
      *v88 = 0;
    }
  }

  sub_100389B64();

  return v85;
}

uint64_t sub_1003CEE1C(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v17 = 136315394;
      v18 = "[KmlSharingManager cancelAllFriendInvitations]";
      v19 = 1024;
      v20 = 269;
      sub_10037BD04();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }

    sub_100057A60();
    v13 = 3221225472;
    v14 = sub_10038967C;
    v15 = &unk_1004C08D8;
    v16 = a1;
    dispatch_async(v10, block);
  }

  return 0;
}

uint64_t sub_1003CEF10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v10 = "[KmlSharingManager removeSharingInvitationId:]";
      v11 = 1024;
      v12 = 291;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Sharing invitation id : %@", buf, 0x1Cu);
    }

    if (v3)
    {
      v5 = *(a1 + 24);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100389890;
      v7[3] = &unk_1004C22F0;
      v7[4] = a1;
      v8 = v3;
      dispatch_async(v5, v7);
    }
  }

  return 0;
}

id *sub_1003CF060(id *a1, double *a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = a1[1];
    v33 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v33)
    {
      v32 = *v40;
      v3 = 1.79769313e308;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v5 = sub_100394824(KmlSharingRecordsUpdater, *(*(&v39 + 1) + 8 * i));
          v6 = sub_100395D0C(v5);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v7 = [v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
          if (v7)
          {
            v8 = v7;
            v34 = i;
            v9 = 0;
            v10 = *v36;
            do
            {
              for (j = 0; j != v8; j = j + 1)
              {
                if (*v36 != v10)
                {
                  objc_enumerationMutation(v6);
                }

                v12 = *(*(&v35 + 1) + 8 * j);
                v13 = sub_1003C7D34(v12);
                if (v13)
                {
                  v14 = v13;
                  v15 = sub_1003C7D40(v12);

                  if (v15)
                  {
                    v16 = KmlLogger();
                    if (sub_10036F978(v16))
                    {
                      v17 = sub_1003C75C8(v12);
                      v43 = 136315650;
                      v44 = "[KmlSharingManager removeExpiredOpt2Auths:outError:]";
                      v45 = 1024;
                      sub_100389AD8(v17, 380);
                      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : v3 sharing session with non-deleted auth with ID : %@", v18, 0x1Cu);
                    }

                    v19 = sub_1003C7D40(v12);
                    [v19 timeIntervalSinceNow];
                    v21 = fabs(v20);

                    v22 = objc_opt_new();
                    [v22 opt2AuthDeletionAlarmDurationSeconds];
                    v24 = v23;

                    if (v21 >= v24)
                    {
                      v25 = KmlLogger();
                      if (sub_10036F978(v25))
                      {
                        v26 = sub_1003AD0FC(v12);
                        v43 = 136315650;
                        v44 = "[KmlSharingManager removeExpiredOpt2Auths:outError:]";
                        v45 = 1024;
                        sub_100389AD8(v26, 388);
                        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s : %i : Auth for sharing session with uuid:%@ is expired.", v27, 0x1Cu);
                      }

                      v28 = sub_1003AD0FC(v12);
                      sub_10039F244(KmlOwnerSharingManager, v28);

                      sub_1003C7DC0(v12, 0);
                      sub_1003C7DD0(v12, 0);
                      sub_1003DAEB8(v5, v12);
                      v9 = 1;
                    }

                    else if (v3 >= v24 - v21)
                    {
                      v3 = v24 - v21;
                    }
                  }
                }
              }

              v8 = [v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
            }

            while (v8);
            if (v9)
            {
              sub_1003DAFF0(v5);
            }

            i = v34;
          }
        }

        v33 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v33);
    }

    else
    {
      v3 = 1.79769313e308;
    }

    *a2 = v3;
    a1 = [NSNumber numberWithBool:1];
  }

  return a1;
}

id sub_1003CF438(uint64_t a1, double *a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v5 = +[KmlCachedAuthorizationManager sharedManager];
    v72 = 0;
    v56 = [v5 getCachedAuthorizationsWithError:&v72];
    v6 = v72;

    v50 = v6;
    if (v6)
    {
      v7 = KmlLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v77 = "[KmlSharingManager reconcileInvitationsAndAuths:outError:]";
        v78 = 1024;
        v79 = 452;
        v80 = 2112;
        v81 = v6;
        sub_100389AB8();
        _os_log_impl(v8, v9, v10, v11, v12, v13);
      }

      if (a3)
      {
        *a3 = v6;
      }
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = *(a1 + 8);
      v53 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
      if (v53)
      {
        v52 = *v69;
        v14 = 1.79769313e308;
        do
        {
          v15 = 0;
          do
          {
            if (*v69 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v55 = v15;
            v54 = sub_100394824(KmlSharingRecordsUpdater, *(*(&v68 + 1) + 8 * v15));
            v16 = sub_100395D0C(v54);
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v59 = v16;
            v17 = [v16 countByEnumeratingWithState:&v64 objects:v74 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v65;
              v57 = *v65;
              do
              {
                v20 = 0;
                v58 = v18;
                do
                {
                  if (*v65 != v19)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v21 = *(*(&v64 + 1) + 8 * v20);
                  if (sub_1003B8594(v21) == 3)
                  {
                    v22 = KmlLogger();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                    {
                      v23 = sub_1003C75C8(v21);
                      *buf = 136315650;
                      sub_100389B3C(buf);
                      v78 = v24;
                      *(v25 + 14) = 468;
                      v80 = 2112;
                      *(v25 + 20) = v26;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s : %i : Found in-progress sharing session with ID : %@", buf, 0x1Cu);
                    }

                    v62 = 0u;
                    v63 = 0u;
                    v60 = 0u;
                    v61 = 0u;
                    v27 = v56;
                    v28 = [v27 countByEnumeratingWithState:&v60 objects:v73 count:16];
                    if (v28)
                    {
                      v29 = v28;
                      v30 = *v61;
LABEL_24:
                      v31 = 0;
                      while (1)
                      {
                        if (*v61 != v30)
                        {
                          objc_enumerationMutation(v27);
                        }

                        v32 = *(*(&v60 + 1) + 8 * v31);
                        v33 = sub_1003C7D34(v21);
                        v34 = [v32 authorizationID];
                        v35 = [v33 isEqualToData:v34];

                        if (v35)
                        {
                          break;
                        }

                        if (v29 == ++v31)
                        {
                          v29 = [v27 countByEnumeratingWithState:&v60 objects:v73 count:16];
                          if (v29)
                          {
                            goto LABEL_24;
                          }

                          goto LABEL_30;
                        }
                      }

                      v36 = v32;

                      if (!v36)
                      {
                        goto LABEL_38;
                      }

                      v19 = v57;
                      v18 = v58;
                      if ([v36 state] == 1)
                      {
                        v37 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00);
                        v38 = [v36 authExpirationTime];
                        [v38 doubleValue];
                        v40 = v39 - v37;

                        if (v40 < 0.0 || v40 < 2.0)
                        {
                          goto LABEL_39;
                        }
                      }

                      else
                      {
                        v40 = 1.79769313e308;
                      }

                      if (v14 >= v40)
                      {
                        v14 = v40;
                      }
                    }

                    else
                    {
LABEL_30:

                      v36 = 0;
LABEL_38:
                      v19 = v57;
                      v18 = v58;
LABEL_39:
                      v42 = KmlLogger();
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315394;
                        sub_100389B3C(buf);
                        v78 = v43;
                        *(v44 + 14) = 487;
                        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s : %i : Auth for this sharing session is expired.", buf, 0x12u);
                      }

                      v45 = sub_1003AD0FC(v21);
                      v46 = sub_1003C75C8(v21);
                      sub_10039F070(KmlOwnerSharingManager, v45, v46);
                    }
                  }

                  v20 = v20 + 1;
                }

                while (v20 != v18);
                v18 = [v59 countByEnumeratingWithState:&v64 objects:v74 count:16];
              }

              while (v18);
            }

            v15 = v55 + 1;
          }

          while ((v55 + 1) != v53);
          v53 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
        }

        while (v53);
      }

      else
      {
        v14 = 1.79769313e308;
      }

      *a2 = v14;
    }

    v47 = [NSNumber numberWithBool:v50 == 0];
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

void sub_1003CF9EC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v12 = "[KmlPowerAssertion _holdPowerAssertion:]";
      v13 = 1024;
      v14 = 50;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : holding assertion: %@", buf, 0x1Cu);
    }

    v6 = +[NSProcessInfo processInfo];
    v7 = [v6 processName];
    v8 = [NSString stringWithFormat:@"%@[%@]", v7, v4];

    *(a1 + 8) = 0;
    if (IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, v8, (a1 + 8)))
    {
      *(a1 + 8) = 0;
    }

    v9 = os_transaction_create();
    v10 = *(a1 + 24);
    *(a1 + 24) = v9;

    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_1003CFB74(uint64_t a1)
{
  if (a1)
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[KmlPowerAssertion _releasePowerAssertion]";
      v9 = 1024;
      v10 = 69;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s : %i : releasing assertion: %@", &v7, 0x1Cu);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      IOPMAssertionRelease(v4);
      *(a1 + 8) = 0;
    }

    v5 = *(a1 + 24);
    *(a1 + 24) = 0;

    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

char *sub_1003CFC6C(char *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v30.receiver = a1;
    v30.super_class = KmlFriendSharingManager;
    a1 = objc_msgSendSuper2(&v30, "init");
    if (a1)
    {
      v8 = KmlLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 44);
        v10 = [v9 UTF8String];

        v31 = 136315650;
        v32 = "[KmlFriendSharingManager initWithInvitationIdentifier:mailboxIdentifier:]";
        sub_10036F4A8();
        sub_100390948();
        v33 = v10;
        sub_100367454(&_mh_execute_header, v8, v11, "%s : %i : %s : FriendSharingManager: let's init", &v31);
      }

      *(a1 + 8) = vdupq_n_s64(2uLL);
      *(a1 + 3) = 2;
      objc_storeStrong(a1 + 44, a2);
      objc_storeStrong(a1 + 46, a3);
      *(a1 + 5) = 0;
      *(a1 + 120) = 0;
      *(a1 + 48) = 255;
      v12 = *(a1 + 44);
      v13 = KmlSignpostLogger();
      v14 = v13;
      v15 = 352;
      if (!v12)
      {
        v15 = 368;
      }

      *(a1 + 33) = os_signpost_id_make_with_pointer(v13, *&a1[v15]);

      v16 = sub_10038CE04(KmlFriendSharingManager);
      v17 = *(a1 + 36);
      *(a1 + 36) = v16;

      v18 = sub_10037E00C(KmlSharingTransport);
      v19 = *(a1 + 31);
      *(a1 + 31) = v18;

      v20 = objc_alloc_init(KmlSharingInvitationRecord);
      v21 = *(a1 + 32);
      *(a1 + 32) = v20;

      *(a1 + 5) = 0;
      *(a1 + 38) = 0;
      *(a1 + 39) = 0;
      *(a1 + 37) = 0;
      a1[320] = 0;
      v22 = [[KmlVersions alloc] initWithEndpoint:0];
      v23 = *(a1 + 28);
      *(a1 + 28) = v22;

      v24 = KmlLogger();
      if (sub_10036F124(v24))
      {
        v25 = *(a1 + 44);
        v26 = [v25 UTF8String];

        v31 = 136315650;
        v32 = "[KmlFriendSharingManager initWithInvitationIdentifier:mailboxIdentifier:]";
        sub_10036F4A8();
        sub_100390948();
        v33 = v26;
        sub_100390ABC(&_mh_execute_header, v27, v28, "%s : %i : %s : FriendSharingManager:  ready to roll", &v31);
      }
    }
  }

  return a1;
}

void sub_1003CFEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100390D04();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = v26;
  if (v29)
  {
    a9.receiver = v29;
    a9.super_class = KmlFriendSharingManager;
    v31 = objc_msgSendSuper2(&a9, "init");
    if (v31)
    {
      v32 = KmlLogger();
      if (sub_10036F124(v32))
      {
        v33 = v31[44];
        v34 = [v33 UTF8String];

        LODWORD(a10) = 136315650;
        *(&a10 + 4) = "[KmlFriendSharingManager initWithUUID:]";
        sub_10036F4A8();
        sub_100390948();
        *(&a11 + 4) = v34;
        sub_100390ABC(&_mh_execute_header, v35, v36, "%s : %i : %s : let's init", &a10);
      }

      v31[1] = 0;
      v31[2] = 0;
      v31[3] = 0;
      objc_storeStrong(v31 + 47, v27);
      v37 = [v31[47] UUIDString];
      v38 = v31[44];
      v31[44] = v37;

      *(v31 + 120) = 0;
      v31[48] = 255;
      v39 = KmlSignpostLogger();
      v31[33] = os_signpost_id_make_with_pointer(v39, v31[44]);

      v40 = sub_10038CE04(KmlFriendSharingManager);
      v41 = v31[36];
      v31[36] = v40;

      v42 = objc_alloc_init(KmlSharingInvitationRecord);
      v43 = v31[32];
      v31[32] = v42;

      v44 = sub_10037E00C(KmlSharingTransport);
      v45 = v31[31];
      v31[31] = v44;

      v46 = [[KmlVersions alloc] initWithEndpoint:0];
      v47 = v31[28];
      v31[28] = v46;

      v31[5] = 0;
      v48 = KmlLogger();
      if (sub_10036DCF8(v48))
      {
        v49 = v31[44];
        v50 = [v49 UTF8String];

        LODWORD(a10) = 136315650;
        *(&a10 + 4) = "[KmlFriendSharingManager initWithUUID:]";
        sub_10036F4A8();
        sub_100390948();
        *(&a11 + 4) = v50;
        sub_100390B00();
        _os_log_impl(v51, v52, v53, v54, v55, 0x1Cu);
      }
    }
  }

  sub_100390CEC();
}

id sub_1003D0130(id a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v63.receiver = a1;
    v63.super_class = KmlFriendSharingManager;
    a1 = objc_msgSendSuper2(&v63, "init");
    if (a1)
    {
      v6 = KmlLogger();
      if (sub_10036DCF8(v6))
      {
        v7 = *(a1 + 44);
        v8 = [v7 UTF8String];

        sub_10036DCC4();
        v65 = 446;
        v66 = 2080;
        v67 = v8;
        sub_100390B00();
        _os_log_impl(v9, v10, v11, v12, v13, 0x1Cu);
      }

      v14 = [v4 copy];
      v15 = *(a1 + 32);
      *(a1 + 32) = v14;

      v16 = sub_1003C7D40(*(a1 + 32));
      v17 = *(a1 + 44);
      *(a1 + 44) = v16;

      v18 = sub_1003AD0FC(*(a1 + 32));
      v19 = *(a1 + 10);
      *(a1 + 10) = v18;

      v20 = sub_1003ACF68(*(a1 + 32));
      v21 = *(a1 + 46);
      *(a1 + 46) = v20;

      v22 = sub_1003AAA78(*(a1 + 32));
      v23 = *(a1 + 47);
      *(a1 + 47) = v22;

      v24 = sub_1003C7D34(*(a1 + 32));
      v25 = *(a1 + 45);
      *(a1 + 45) = v24;

      v26 = kmlUtilDataForHexString();
      v27 = *(a1 + 13);
      *(a1 + 13) = v26;

      v28 = sub_1003C7D28(*(a1 + 32));
      sub_1003D057C(a1, v28);
      v29 = sub_1003AF3D8(*(a1 + 32));
      v30 = *(a1 + 18);
      *(a1 + 18) = v29;

      if (*(a1 + 18))
      {
        v31 = sub_1003DF2B8([KmlBindingAttestation alloc], *(a1 + 18));
        v32 = sub_1003BA3D0(v31);
        v33 = *(a1 + 29);
        *(a1 + 29) = v32;
      }

      v34 = *(a1 + 19);
      *(a1 + 19) = 0;

      *(a1 + 5) = sub_1003B85B8(*(a1 + 32));
      v35 = sub_1003BA3C4(*(a1 + 32));
      v36 = *(a1 + 7);
      *(a1 + 7) = v35;

      v37 = sub_1003BA3D0(*(a1 + 32));
      v38 = *(a1 + 21);
      *(a1 + 21) = v37;

      v39 = sub_1003BA3DC(*(a1 + 32));
      v40 = *(a1 + 22);
      *(a1 + 22) = v39;

      v41 = sub_1003C7D1C(*(a1 + 32));

      v42 = 0;
      if (v41)
      {
        v43 = sub_1003C7D1C(*(a1 + 32));
        v62 = 0;
        v44 = [DAAlishaKeyEncryptedRequest decodeWithData:v43 error:&v62];
        v42 = v62;
        v45 = *(a1 + 25);
        *(a1 + 25) = v44;
      }

      v46 = sub_1003BA3F8(*(a1 + 32));

      if (v46)
      {
        v47 = sub_1003BA3F8(*(a1 + 32));
        v61 = v42;
        v48 = [DAAlishaKeyEncryptedRequest decodeWithData:v47 error:&v61];
        v49 = v61;

        v50 = *(a1 + 24);
        *(a1 + 24) = v48;

        v42 = v49;
      }

      *(a1 + 38) = sub_1003B8594(*(a1 + 32));
      *(a1 + 39) = sub_1003B85A0(*(a1 + 32));
      *(a1 + 320) = 0;
      v51 = sub_10038CE04(KmlFriendSharingManager);
      v52 = *(a1 + 36);
      *(a1 + 36) = v51;

      v53 = sub_10037E00C(KmlSharingTransport);
      v54 = *(a1 + 31);
      *(a1 + 31) = v53;

      *(a1 + 120) = 0;
      *(a1 + 48) = 255;
      v55 = KmlSignpostLogger();
      *(a1 + 33) = os_signpost_id_make_with_pointer(v55, *(a1 + 44));

      sub_1003D05A0(a1);
      v56 = KmlLogger();
      if (sub_10036F124(v56))
      {
        v57 = *(a1 + 44);
        v58 = [v57 UTF8String];

        sub_10036DCC4();
        v65 = 500;
        v66 = 2080;
        v67 = v58;
        sub_100390ABC(&_mh_execute_header, v59, v60, "%s : %i : %s : ready to roll", v64);
      }
    }
  }

  return a1;
}

uint64_t sub_1003D057C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 1) <= 5)
    {
      *(result + 8) = qword_1004174F8[a2 - 1];
    }
  }

  return result;
}

void sub_1003D05A0(uint64_t a1)
{
  if (a1)
  {
    sub_100390854();
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10039103C, &unk_1004C08D8, v6);
  }
}

void sub_1003D05F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 288);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_10038CF18;
    v11 = &unk_1004C24A8;
    v12 = a1;
    v13 = v5;
    v14 = v6;
    dispatch_async(v7, block);
  }
}

void *sub_1003D06A4(void *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (a1[20])
    {
      v6 = KmlLogger();
      if (sub_100057AEC(v6))
      {
        sub_10036BED0();
        v35 = 2159;
LABEL_19:
        sub_100390968();
        _os_log_impl(v20, v21, v22, v23, v24, 0x12u);
      }
    }

    else
    {
      if (a1[21] && a1[22])
      {
        if (v4 && ([v4 encryptedRequest], objc_claimAutoreleasedReturnValue()) && (objc_msgSend(sub_10036F8CC(), "ephemeralPublicKey"), v7 = objc_claimAutoreleasedReturnValue(), v7, v2, v7))
        {
          [[SESKeyPair alloc] initWithPublicKey:a1[21] secretKey:a1[22]];
          v8 = [sub_10036F8CC() encryptedRequest];
          v9 = [v5 ephemeralPublicKey];
          v10 = SESEndPointPrivacyDecryptionWithKeyPair();
          v11 = 0;
          v12 = a1[20];
          a1[20] = v10;

          if (KmlLogIsInternalBuild())
          {
            v13 = KmlLogger();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              a1 = kmlUtilHexStringFromData();
              *v34 = 136315650;
              sub_10036DC30();
              v35 = 2178;
              v36 = 2112;
              v37 = v14;
              sub_100367454(&_mh_execute_header, v13, v15, "%s : %i : Decrypted PPID : %@", v34);
            }
          }

          v16 = KmlLogger();
          if (sub_10036F124(v16))
          {
            *v34 = 136315650;
            sub_10036DC30();
            v35 = 2179;
            v36 = 2112;
            v37 = v11;
            sub_100390ABC(&_mh_execute_header, v17, v18, "%s : %i : PPID decryption result: %@", v34);
          }

          a1 = sesErrorToKmlError();
        }

        else
        {
          v26 = KmlLogger();
          if (sub_100057AEC(v26))
          {
            sub_10036BED0();
            v35 = 2169;
            sub_100390968();
            _os_log_impl(v27, v28, v29, v30, v31, 0x12u);
          }

          v2 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v38 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v32 = [sub_100372244() stringWithUTF8String:?];
          v39 = v32;
          v33 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          a1 = [NSError errorWithDomain:v2 code:219 userInfo:v33];
        }

        goto LABEL_21;
      }

      v19 = KmlLogger();
      if (sub_100057AEC(v19))
      {
        sub_10036BED0();
        v35 = 2164;
        goto LABEL_19;
      }
    }

    a1 = 0;
LABEL_21:
  }

  return a1;
}

void sub_1003D0A54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 288);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10038FCA8;
    v3[3] = &unk_1004C2B00;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003D0AD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 288);
    sub_1000167BC();
    sub_1003674E4();
    v5[2] = sub_10038D170;
    v5[3] = &unk_1004C22F0;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void sub_1003D0B5C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4 && ([v4 genericData], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "message"), objc_claimAutoreleasedReturnValue(), v7 = sub_1003674F0(), v8 = sub_1003D1AF0(v7, v2), v2, v6, (v8 & 1) != 0))
    {
      v9 = *(a1 + 48);
      *(a1 + 48) = 0;

      v10 = [v5 genericData];
      v11 = [v10 sharingIdentifier];
      v12 = *(a1 + 352);
      *(a1 + 352) = v11;

      v13 = [v5 genericData];
      v14 = [v13 message];
      sub_1003ADB68(*(a1 + 256), v14);

      sub_1003C7DD0(*(a1 + 256), *(a1 + 352));
      sub_1003ABB00(*(a1 + 256), *(a1 + 368));
      v15 = [v5 additionalData];

      if (v15)
      {
        v23 = [v5 additionalData];
        v24 = [v23 sharingSessionUUID];
        v25 = *(a1 + 376);
        *(a1 + 376) = v24;

        v26 = [v5 additionalData];
        *(a1 + 384) = [v26 targetDeviceType];
      }

      else
      {
        *(a1 + 384) = 255;
      }

      v27 = *(a1 + 376);
      if (!v27)
      {
        v28 = +[NSUUID UUID];
        v29 = *(a1 + 376);
        *(a1 + 376) = v28;

        v27 = *(a1 + 376);
      }

      sub_1003AAB7C(*(a1 + 256), v27);
      v21 = a1;
      v22 = 3;
    }

    else
    {
      v16 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v30 = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithUTF8String:KmlErrorString()];
      v31 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v19 = [NSError errorWithDomain:v16 code:109 userInfo:v18];
      v20 = *(a1 + 272);
      *(a1 + 272) = v19;

      v21 = a1;
      if (*(a1 + 241) == 1)
      {
        v22 = 42;
      }

      else
      {
        v22 = 44;
      }
    }

    sub_1003D0A54(v21, v22);
  }
}

void sub_1003D0DF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 288);
    sub_1000167BC();
    sub_1003674E4();
    v11[2] = sub_10038D2CC;
    v11[3] = &unk_1004D1B40;
    v11[4] = a1;
    v12 = v9;
    v13 = v8;
    v14 = v7;
    dispatch_async(v10, v11);
  }
}

void *sub_1003D0EC4(void *a1, uint64_t a2, int a3)
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    if (a2 == 2 || a2 == 7)
    {
      v10 = [[DACarKeyGenericCrossPlatformSharingData alloc] initWithSharingIdentifier:a1[44] friendKeyIdentifier:a1[45] sharingMessageType:a2 message:a1[7]];
      v7 = [[DACarKeyAdditionalCrossPlatformSharingData alloc] initWithSharingSessionUUID:v3[47] bindingAttestation:v3[18] targetDeviceType:v3[48] initiatorIdsPseudonym:0];
      v8 = 0;
      if (a3)
      {
        v9 = KmlLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10036DB8C();
          v20 = 2796;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s : %i : Including private data in signing request", v19, 0x12u);
        }

        v8 = [[DACarKeyPrivateCrossPlatformSharingData alloc] initWithVehicleEnteredPasscode:0 pairedEntityIdentifier:v3[42]];
      }

      v3 = [[DACarKeySharingMessage alloc] initWithGenericCrossPlatformSharingData:v10 additionalData:v7 privateData:v8];
    }

    else
    {
      v10 = KmlLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19[0] = 136315650;
        sub_1003672C0();
        v20 = 2777;
        v21 = v12;
        v22 = v4;
        sub_1003909D4();
        _os_log_impl(v13, v14, v15, v16, v17, 0x18u);
      }

      v3 = 0;
    }
  }

  return v3;
}

void sub_1003D10A4(uint64_t a1)
{
  if (a1)
  {
    sub_100390854();
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10038D6A0, &unk_1004C08D8, v6);
  }
}

void sub_1003D10F8(uint64_t a1)
{
  if (a1)
  {
    SESEndPointDelete();
    v2 = 0;
    v3 = KmlLogger();
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 352);
        [v5 UTF8String];

        v14 = 136316418;
        sub_10036DC30();
        sub_100390948();
        sub_100390B84();
        v15 = v6;
        v16 = v2;
        v7 = &_mh_execute_header;
        v8 = "%s : %i : %s : Failed to delete key with name: %@, and idStr: %@, due to %@";
        v9 = &v14;
        v10 = v4;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 58;
LABEL_7:
        _os_log_impl(v7, v10, v11, v8, v9, v12);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 352);
      [v13 UTF8String];

      v14 = 136316162;
      sub_10036DC30();
      sub_100390948();
      sub_100390B84();
      sub_100390968();
      v12 = 48;
      goto LABEL_7;
    }
  }
}

void sub_1003D1284(uint64_t a1)
{
  if (a1)
  {
    sub_100390854();
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_100390D1C, &unk_1004C08D8, v6);
  }
}

dispatch_queue_t *sub_1003D12D8(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(a1[36]);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10038D98C;
    v17 = sub_10038D99C;
    v18 = 0;
    v4 = a1[36];
    sub_100390854();
    sub_10036DC58();
    v8 = sub_10038D9A4;
    v9 = &unk_1004D21D8;
    v10 = a1;
    v12 = v5;
    v11 = v3;
    dispatch_sync(v4, block);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void *sub_1003D13E4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = v3[26];
    if (a2 && !v4)
    {
      *a2 = v3[35];
      v4 = v3[26];
    }

    v5 = v4;
    v6 = sub_10036F8CC();
    objc_sync_exit(v6);
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

void *sub_1003D145C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = v3[24];
    if (a2 && !v4)
    {
      *a2 = v3[35];
      v4 = v3[24];
    }

    v5 = v4;
    v6 = sub_10036F8CC();
    objc_sync_exit(v6);
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

void *sub_1003D14D4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = v3[25];
    if (a2 && !v4)
    {
      *a2 = v3[35];
      v4 = v3[25];
    }

    v5 = v4;
    v6 = sub_10036F8CC();
    objc_sync_exit(v6);
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

void sub_1003D154C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 288));
    v4 = *(a1 + 288);
    sub_1000167BC();
    sub_1003674E4();
    v5[2] = sub_10038E778;
    v5[3] = &unk_1004C22F0;
    v6 = v3;
    v7 = a1;
    dispatch_sync(v4, v5);
  }
}

void sub_1003D15DC(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v4 = *(a1 + 352);
      [v4 UTF8String];
      v5 = *(a1 + 352);

      sub_10036BED0();
      sub_1003908FC();
      sub_100390BB8();
      *(&v36[4] + 6) = v5;
      sub_100390968();
      _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
    }

    v11 = sub_1003D88CC(a1);
    sub_1003C7DE0(*(a1 + 256), v11);
    sub_1003C7DC0(*(a1 + 256), *(a1 + 360));
    sub_1003C7DEC(*(a1 + 256), *(a1 + 304));
    sub_1003C7DF8(*(a1 + 256), *(a1 + 312));
    sub_1003C7E04(*(a1 + 256), *(a1 + 320));
    sub_1003C7E10(*(a1 + 256), *(a1 + 40));
    if (*(a1 + 8) < 24)
    {
      sub_1003BE4F4(*(a1 + 256), *(a1 + 144));
      sub_1003BAE64(*(a1 + 256), *(a1 + 56));
      sub_1003C7D90(*(a1 + 256), *(a1 + 168));
      sub_1003C7DA0(*(a1 + 256), *(a1 + 176));
      v24 = *(a1 + 200);
      if (v24)
      {
        v36[0] = 0;
        v25 = [v24 encodeWithError:v36];
        v26 = v36[0];
        sub_1003BA3E8(*(a1 + 256), v25);
      }

      else
      {
        v27 = sub_100390B48();
        sub_1003BA3E8(v27, v28);
        v26 = 0;
      }

      v29 = *(a1 + 192);
      if (v29)
      {
        v35 = v26;
        v30 = [v29 encodeWithError:&v35];
        v31 = v35;

        sub_1003C7DB0(*(a1 + 256), v30);
        v26 = v31;
      }

      else
      {
        v32 = sub_100390B48();
        sub_1003C7DB0(v32, v33);
      }
    }

    else
    {
      v12 = sub_100390B48();
      sub_1003BE4F4(v12, v13);
      v14 = sub_100390B48();
      sub_1003BAE64(v14, v15);
      v16 = sub_100390B48();
      sub_1003C7D90(v16, v17);
      v18 = sub_100390B48();
      sub_1003C7DA0(v18, v19);
      v20 = sub_100390B48();
      sub_1003BA3E8(v20, v21);
      v22 = sub_100390B48();
      sub_1003C7DB0(v22, v23);
    }

    v34 = sub_100378CC8(KmlSharingInvitationRecordsUpdater);
    sub_1003C811C(v34, *(a1 + 256));
  }
}

dispatch_queue_t *sub_1003D1830(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(a1[36]);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10038D98C;
    v17 = sub_10038D99C;
    v18 = 0;
    v4 = a1[36];
    sub_100390854();
    sub_10036DC58();
    v8 = sub_100390D28;
    v9 = &unk_1004D1EE8;
    v12 = v5;
    v10 = a1;
    v11 = v3;
    dispatch_sync(v4, block);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

dispatch_queue_t *sub_1003D193C(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(a1[36]);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10038D98C;
    v17 = sub_10038D99C;
    v18 = 0;
    v4 = a1[36];
    sub_100057A60();
    v7 = 3221225472;
    v8 = sub_10038E7F8;
    v9 = &unk_1004D1C80;
    v10 = a1;
    v11 = v3;
    v12 = &v13;
    dispatch_sync(v4, block);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void sub_1003D1A48(uint64_t a1)
{
  if (a1)
  {
    sub_100390854();
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_100390094, &unk_1004C08D8, v6);
  }
}

void sub_1003D1A9C(uint64_t a1)
{
  if (a1)
  {
    sub_100390854();
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_100390D78, &unk_1004C08D8, v6);
  }
}

uint64_t sub_1003D1AF0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = objc_alloc_init(KeySharingInvitation);
    v6 = sub_1003BEDDC(v5, v4);
    if (v6)
    {
      objc_storeStrong((a1 + 32), v5);
      v7 = sub_1003AAA6C(*(a1 + 32));
      v8 = sub_1003ACF68(v7);
      v2 = sub_1003DC544(v8);

      v9 = sub_1003AAA6C(*(a1 + 32));
      v10 = sub_1003ACF68(v9);
      v11 = sub_1003DEEC8(v10);

      v12 = [[KmlRoutingInformation alloc] initWithInformation:v11 readerIdentifier:v2];
      v13 = *(a1 + 112);
      *(a1 + 112) = v12;

      v14 = [*(a1 + 112) getReaderInformation];
      v15 = *(a1 + 336);
      *(a1 + 336) = v14;

      v16 = [*(a1 + 112) manufacturer];
      v17 = *(a1 + 120);
      *(a1 + 120) = v16;

      v18 = KmlLogger();
      if (sub_100377D6C(v18))
      {
        v19 = *(a1 + 352);
        v20 = [v19 UTF8String];
        v21 = *(a1 + 120);

        sub_10036DB8C();
        sub_1003672B0();
        v31 = v20;
        v32 = 2112;
        v33 = v21;
        sub_100390C18(&_mh_execute_header, v22, v23, "%s : %i : %s : Received valid sharing invitation for manufacturer - %@", v30);
      }

      kmlUtilLogLargeData();
    }

    else
    {
      v24 = KmlLogger();
      if (sub_10036F124(v24))
      {
        v25 = *(a1 + 352);
        v26 = [v25 UTF8String];

        *v30 = 136315650;
        sub_1003672C0();
        sub_1003672B0();
        v31 = v26;
        sub_100390ABC(&_mh_execute_header, v27, v28, "%s : %i : %s : Received sharing invitation is invalid", v30);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

SharingSignedResponse *sub_1003D1D60(SharingSignedResponse *a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v6 = KmlLogger();
    if (sub_10036DCF8(v6))
    {
      v3 = a1[3]._signedResponseTLV;
      v7 = [(KmlTlv *)v3 UTF8String];
      v8 = kmlUtilHexStringFromData();
      sub_10036DB78();
      sub_1003672B0();
      v23 = v7;
      v24 = 2112;
      v25 = v9;
      sub_100390B00();
      _os_log_impl(v10, v11, v12, v13, v14, 0x26u);
    }

    v15 = objc_alloc_init(SharingSignedResponse);
    if (sub_1003B99F4(v15, v5))
    {
      a1 = v15;
    }

    else
    {
      v16 = KmlLogger();
      if (sub_10036F124(v16))
      {
        v17 = a1[3]._signedResponseTLV;
        v18 = [(KmlTlv *)v17 UTF8String];

        sub_10036DB78();
        sub_1003672B0();
        v23 = v18;
        sub_100390ABC(&_mh_execute_header, v19, v20, "%s : %i : %s : FriendSharingManager: Still waiting for signed response", v22);
      }

      a1 = 0;
    }
  }

  return a1;
}

void sub_1003D1F10(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100390A64([*(a1 + 224) agreedKmlSharingVersion]);
    if (sub_10037E34C(*(a1 + 248), *(a1 + 80)))
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v77 = v3;
    v4 = sub_1003AAA6C(*(a1 + 32));
    v5 = sub_1003ACF68(v4);
    v6 = sub_1003DEBC4(v5);

    v83 = v6;
    v7 = [[KmlDeviceConfigurationData alloc] initWithData:v6];
    v8 = [v7 readerSupportsNfc];
    if ([v7 readerSupportsUwb])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_1003AAA6C(*(a1 + 32));
    v11 = sub_1003ACF68(v10);
    v12 = sub_1003DF01C() != 0;

    v13 = 2 * v12;
    if (v2)
    {
      if (*(a1 + 312))
      {
        v14 = v13 | 4;
      }

      else
      {
        v14 = 2 * v12;
      }

      if (*(a1 + 320) == 1)
      {
        v14 |= 8uLL;
      }
    }

    else if ([v7 sharingPasswordLength])
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2 * v12;
    }

    v79 = v14;
    v15 = sub_1003AAA6C(*(a1 + 32));
    v16 = sub_1003ACF68(v15);
    v17 = sub_1003DF1BC(v16);

    v66 = v17 != 0;
    if (v17)
    {
      v18 = [v17 u16BE:7];
    }

    else
    {
      v18 = 0;
    }

    v81 = v17;
    v82 = v7;
    v19 = *(a1 + 272);
    if (v19)
    {
      v20 = 16;
      if (*(a1 + 240))
      {
        v20 = 24;
      }

      v21 = *(a1 + v20);
      v68 = [v19 code];
    }

    else
    {
      v68 = 0;
      v21 = *(a1 + 8);
    }

    v22 = v8;
    v23 = *(a1 + 112);
    if (v23)
    {
      v24 = [v23 manufacturer];
      v25 = [v24 copy];

      v26 = [*(a1 + 112) brand];
      v27 = [v26 copy];

      v28 = [*(a1 + 112) regionString];
      v29 = [v28 copy];
    }

    else
    {
      v30 = KmlLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v87 = "[KmlFriendSharingManager reportSharingEventToCA]";
        v88 = 1024;
        v89 = 1485;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s : %i : No routing info available", buf, 0x12u);
      }

      v25 = @"Unknown";
      v27 = @"Unknown";
      v29 = @"Unknown";
    }

    if (!*(a1 + 40))
    {
      v31 = 1;
      if (!*(a1 + 312))
      {
        v31 = 2;
      }

      *(a1 + 40) = v31;
    }

    v32 = v9 | v22;
    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 224) agreedKmlVehicleVersion], 768))
    {
      v33 = 0x80;
    }

    else
    {
      v33 = 0;
    }

    v70 = v33;
    v34 = sub_1003AAA6C(*(a1 + 32));
    v35 = sub_1003ACF68(v34);
    sub_1003DE58C(v35);
    v75 = kmlUtilKeyClassOriginBitmap();

    v36 = [*(a1 + 224) ourSupportedFrameworkVersionsAsCAString];
    v37 = *(a1 + 384);
    if (v37 == 255)
    {
      v38 = MGGetSInt32Answer();
      if (v38 == 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2 * (v38 == 6);
      }
    }

    v39 = *(a1 + 80);
    if (v39)
    {
      if ([v39 isEqualToString:@"NON_OWNER_INTRA_ACCOUNT_IDS"])
      {
        v61 = 1;
      }

      else
      {
        sub_10037E00C(KmlSharingTransport);
        v41 = v40 = v36;
        v61 = sub_10037E34C(v41, *(a1 + 80));

        v36 = v40;
      }
    }

    else
    {
      v61 = 0;
    }

    v58 = v36;
    v84[0] = @"destination";
    v78 = [NSNumber numberWithUnsignedInt:v77];
    v85[0] = v78;
    v85[1] = &off_1004DCEB8;
    v84[1] = @"type";
    v84[2] = @"targetDeviceType";
    v74 = [NSNumber numberWithUnsignedInt:v37];
    v85[2] = v74;
    v84[3] = @"step";
    v72 = [NSNumber numberWithInteger:v21];
    v85[3] = v72;
    v85[4] = v29;
    v76 = v29;
    v84[4] = @"dataCenterCode";
    v84[5] = @"HUPDataSource";
    v67 = [NSNumber numberWithUnsignedInteger:v66];
    v85[5] = v67;
    v84[6] = @"vehicleCapabilities";
    v65 = [NSNumber numberWithUnsignedShort:v18];
    v85[6] = v65;
    v85[7] = v25;
    v73 = v25;
    v84[7] = @"manufacturer";
    v84[8] = @"brand";
    v71 = v27;
    v85[8] = v27;
    v84[9] = @"transportSupported";
    v64 = [NSNumber numberWithUnsignedInteger:v32];
    v85[9] = v64;
    v84[10] = @"totalSharedKeysOnFriendDevice";
    v63 = [NSNumber numberWithInteger:*(a1 + 296)];
    v85[10] = v63;
    v84[11] = @"status";
    v69 = [NSNumber numberWithUnsignedInt:v68];
    v85[11] = v69;
    v84[12] = @"activationOption";
    v80 = [NSNumber numberWithUnsignedInteger:v79];
    v85[12] = v80;
    v84[13] = @"sharingTransport";
    v62 = [NSNumber numberWithInteger:*(a1 + 40)];
    v85[13] = v62;
    v84[14] = @"pinAttempts";
    v60 = [NSNumber numberWithUnsignedInteger:*(a1 + 312) + *(a1 + 304)];
    v85[14] = v60;
    v84[15] = @"appleToApple";
    v59 = [NSNumber numberWithInt:*(a1 + 80) != 0];
    v85[15] = v59;
    v84[16] = @"senderSupportedFrameworkVersions";
    v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04X", [*(a1 + 224) agreedKmlSharingVersion]);
    v57 = v42;
    v43 = &stru_1004D9380;
    if (v36)
    {
      v43 = v36;
    }

    v85[16] = v42;
    v85[17] = v43;
    v84[17] = @"receiverSupportedFrameworkVersions";
    v84[18] = @"attestationChainLength";
    v56 = sub_1003BA3F8(*(a1 + 64));
    v55 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v56 count]);
    v85[18] = v55;
    v84[19] = @"certificateChainLength";
    v54 = sub_1003AD0FC(*(a1 + 32));
    sub_1003BBBD8(v54);
    v44 = [sub_100390A98() numberWithUnsignedChar:?];
    v85[19] = v44;
    v84[20] = @"accountRole";
    v45 = sub_1003AAA78(*(a1 + 32));
    sub_1003B918C(v45);
    v46 = [sub_100390A98() numberWithUnsignedShort:?];
    v85[20] = v46;
    v84[21] = @"isIntraAccountShare";
    v47 = [NSNumber numberWithBool:v61];
    v85[21] = v47;
    v85[22] = &off_1004DCED0;
    v84[22] = @"wasUserAuthRequired";
    v84[23] = @"mailboxVersion";
    v48 = [NSNumber numberWithUnsignedChar:v70];
    v85[23] = v48;
    v84[24] = @"frameworkVersion";
    [*(a1 + 224) agreedKmlSharingVersion];
    v49 = [sub_100390A98() numberWithUnsignedShort:?];
    v85[24] = v49;
    v84[25] = @"accessProfile";
    v50 = sub_1003AAA78(*(a1 + 32));
    v51 = [NSNumber numberWithUnsignedChar:sub_1003B9198(v50)];
    v85[25] = v51;
    v84[26] = @"keyClassOriginBitmap";
    v52 = [NSNumber numberWithUnsignedChar:v75];
    v85[26] = v52;
    v53 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:27];

    sub_100368DC8(KmlAnalyticsLogger, v53);
  }
}

unint64_t sub_1003D2814(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  [KmlTlv TLVsWithData:a2];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 tag] == 40727)
        {
          v3 = [v6 valueAsUnsignedShort];
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

void sub_1003D3AEC(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v4 = *(a1 + 352);
      [v4 UTF8String];

      sub_10036DC30();
      sub_1003908FC();
      sub_100390968();
      _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }

    v10 = [NSMutableData dataWithLength:32];
    v11 = *(a1 + 248);
    v12 = *(a1 + 352);
    v13 = *(a1 + 376);
    v14 = *(a1 + 80);
    v15 = MGGetSInt32Answer();
    v16 = 1;
    if (v15 == 6)
    {
      v16 = 2;
    }

    sub_1003CD23C(v11, v10, 0, 0, v12, 0, v13, v14, v16, 8);
  }
}

void sub_1003D3C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSErrorUserInfoKey a9, void *a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_100390D04();
  a24 = v27;
  a25 = v29;
  if (v28)
  {
    v30 = v28;
    v31 = KmlLogger();
    if (sub_100057AEC(v31))
    {
      v32 = *(v30 + 352);
      [v32 UTF8String];

      sub_100390978();
      sub_1003908FC();
      sub_100390968();
      _os_log_impl(v33, v34, v35, v36, v37, 0x1Cu);
    }

    v38 = MGGetSInt32Answer();
    if (v38 != 1)
    {
      if (v38 != 6)
      {
        goto LABEL_27;
      }

      v39 = *(v30 + 384);
      if (v39 != 255 && v39 != 2)
      {
        goto LABEL_27;
      }

      *(v30 + 384) = 2;
      v41 = KmlLogger();
      if (sub_100057AEC(v41))
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v42 = *(v30 + 384);
    if (v42 == 255)
    {
LABEL_16:
      *(v30 + 384) = 1;
      v43 = KmlLogger();
      if (sub_100057AEC(v43))
      {
LABEL_17:
        v44 = *(v30 + 352);
        [v44 UTF8String];

        sub_100390978();
        sub_1003908FC();
        sub_100390968();
        _os_log_impl(v45, v46, v47, v48, v49, 0x1Cu);
      }

LABEL_18:

      v50 = v30;
      v51 = 11;
LABEL_36:
      sub_1003D0A54(v50, v51);
      goto LABEL_37;
    }

    if (v42 != 2)
    {
      if (v42 == 1)
      {
        goto LABEL_16;
      }

LABEL_27:
      v67 = KmlLogger();
      if (sub_100057AEC(v67))
      {
        v68 = *(v30 + 352);
        [v68 UTF8String];

        sub_100390978();
        sub_1003908FC();
        sub_100390968();
        _os_log_impl(v69, v70, v71, v72, v73, 0x1Cu);
      }

      if (*(v30 + 368))
      {
        v81 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        a9 = NSLocalizedDescriptionKey;
        KmlErrorString();
        v82 = [sub_100372244() stringWithUTF8String:?];
        a10 = v82;
        [NSDictionary dictionaryWithObjects:&a10 forKeys:&a9 count:1];
        objc_claimAutoreleasedReturnValue();
        v83 = [sub_100390BAC() errorWithDomain:v81 code:115 userInfo:v26];
        v84 = *(v30 + 272);
        *(v30 + 272) = v83;

        v50 = v30;
        if (*(v30 + 241) == 1)
        {
          v51 = 42;
        }

        else
        {
          v51 = 44;
        }
      }

      else
      {
        v74 = KmlLogger();
        if (sub_100057AEC(v74))
        {
          v75 = *(v30 + 352);
          [v75 UTF8String];

          sub_100390978();
          sub_1003908FC();
          sub_100390968();
          _os_log_impl(v76, v77, v78, v79, v80, 0x1Cu);
        }

        sub_1003CD134(*(v30 + 248), *(v30 + 80));
        v50 = sub_100390C64();
      }

      goto LABEL_36;
    }

    if (*(v30 + 368))
    {
      goto LABEL_27;
    }

    v25 = +[NRPairedDeviceRegistry sharedInstance];
    v52 = [v25 getActivePairedDevice];

    v53 = KmlLogger();
    v54 = sub_100057AEC(v53);
    if (v52)
    {
      if (v54)
      {
        v61 = *(v30 + 352);
        v26 = [v61 UTF8String];

        sub_100390978();
        sub_100390948();
        *(&a13 + 4) = v26;
        sub_100390968();
        _os_log_impl(v62, v63, v64, v65, v66, 0x1Cu);
      }

      goto LABEL_27;
    }

    if (v54)
    {
      v55 = *(v30 + 352);
      [v55 UTF8String];

      sub_100390978();
      sub_1003908FC();
      sub_100390968();
      _os_log_impl(v56, v57, v58, v59, v60, 0x1Cu);
    }

    sub_1003D85F0(v30);
  }

LABEL_37:
  sub_100390CEC();
}

void sub_1003D4090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, int a17, int a18, int a19, int a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  sub_100390CB0();
  a52 = v54;
  a53 = v56;
  if (v55)
  {
    v57 = v55;
    v58 = *(v55 + 280);
    *(v55 + 280) = 0;

    v59 = [KmlDeviceConfigurationData alloc];
    v60 = sub_1003AAA6C(*(v57 + 32));
    v61 = sub_1003ACF68(v60);
    v62 = sub_1003DEBC4(v61);
    v63 = [sub_100390B78() initWithData:?];

    v64 = [v63 mfiPPID];

    v65 = KmlLogger();
    v66 = sub_10036DCF8(v65);
    if (v64)
    {
      if (v66)
      {
        sub_100390B0C();
        *(&a20 + 2) = 2093;
        sub_100390B00();
        _os_log_impl(v67, v68, v69, v70, v71, 0x12u);
      }

      v72 = *(v57 + 200);
      *(v57 + 200) = 0;
      goto LABEL_6;
    }

    if (v66)
    {
      sub_100390B0C();
      *(&a20 + 2) = 2098;
      sub_100390B00();
      _os_log_impl(v73, v74, v75, v76, v77, 0x12u);
    }

    v78 = sub_1003D84B4(v57);
    if (v78)
    {
      v72 = v78;
      v79 = 0;
    }

    else
    {
      v80 = +[NSMutableArray array];
      v108 = [*(v57 + 112) readerIdentifier];
      [KmlTlv TLVWithTag:77 value:?];
      objc_claimAutoreleasedReturnValue();
      [sub_1003909E4() addObject:?];

      [KmlTlv TLVWithTag:24393 value:*(v57 + 168)];
      objc_claimAutoreleasedReturnValue();
      [sub_1003909E4() addObject:?];

      [@"ECIES_v1" dataUsingEncoding:4];
      objc_claimAutoreleasedReturnValue();
      [sub_100390AD8() TLVWithTag:218 value:v53];
      objc_claimAutoreleasedReturnValue();
      [sub_1003909E4() addObject:?];

      v81 = +[NSMutableData data];
      a13 = 0u;
      a14 = 0u;
      a15 = 0u;
      a16 = 0u;
      v82 = v80;
      v83 = [v82 countByEnumeratingWithState:&a13 objects:&a24 count:16];
      if (v83)
      {
        v84 = v83;
        v85 = *a14;
        do
        {
          v86 = 0;
          do
          {
            if (*a14 != v85)
            {
              objc_enumerationMutation(v82);
            }

            v87 = [*(*(&a13 + 1) + 8 * v86) asData];
            [v81 appendData:v87];

            v86 = v86 + 1;
          }

          while (v84 != v86);
          v84 = [v82 countByEnumeratingWithState:&a13 objects:&a24 count:16];
        }

        while (v84);
      }

      v106 = [KmlTlv TLVWithTag:32595 value:v81];
      v88 = [*(v57 + 112) regionString];
      v89 = [v88 substringWithRange:{0, 2}];
      v90 = [v88 substringWithRange:{2, 1}];
      v91 = [*(v57 + 112) manufacturer];
      v92 = [v106 asData];
      v107 = SESEndPointPrivacyEncryptionWithManufacturer();
      v72 = 0;

      if (!v72)
      {
        v99 = [DAAlishaKeyEncryptedRequest alloc];
        v100 = [v107 version];
        v101 = [v107 ephemeralPublicKeydata];
        v102 = [v107 receiverPublicKeyHash];
        v103 = [v107 cipherText];
        v104 = [v99 initWithVersion:v100 ephemeralPublicKey:v101 publicKeyHash:v102 encryptedRequest:v103];
        v105 = *(v57 + 200);
        *(v57 + 200) = v104;

        v72 = v107;
LABEL_6:

        goto LABEL_7;
      }

      v79 = v107;
    }

    v93 = KmlLogger();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v94 = *(v57 + 352);
      v95 = [v94 UTF8String];

      sub_100390B0C();
      *(&a20 + 2) = 2127;
      WORD1(a21) = 2080;
      *(&a21 + 4) = v95;
      WORD6(a21) = 2112;
      *(&a21 + 14) = v72;
      sub_100390B60(&_mh_execute_header, v93, v96, "%s : %i : %s : Failed to encrypt pre-track request with - %@", &a17);
    }

    v97 = sesErrorToKmlError();
    v98 = *(v57 + 280);
    *(v57 + 280) = v97;

    goto LABEL_6;
  }

LABEL_7:
  sub_100390C94();
}

NSObject *sub_1003D4594(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [KmlDeviceConfigurationData alloc];
    v3 = sub_1003AAA6C(*(v1 + 4));
    v4 = sub_1003ACF68(v3);
    v5 = sub_1003DEBC4(v4);
    v6 = [sub_100390B78() initWithData:?];
    v7 = *(v1 + 27);
    *(v1 + 27) = v6;

    [*(v1 + 27) updatePPIDWithServerProvidedData:*(v1 + 20)];
    v8 = objc_opt_new();
    [*(v1 + 14) manufacturer];
    objc_claimAutoreleasedReturnValue();
    v9 = [sub_100390B54() brand];
    v10 = [*(v1 + 27) mfiPPID];
    v323 = 0;
    v11 = [v8 BOOLValueForSetting:8 manufacturer:v2 brand:v9 uuid:v10 error:&v323];
    v12 = v323;

    if ((v11 & 1) == 0)
    {
      v35 = KmlLogger();
      if (sub_10004F844(v35))
      {
        v36 = *(v1 + 44);
        v37 = [v36 UTF8String];

        sub_100390934();
        v327 = 1693;
        v328 = 2080;
        *v329 = v37;
        *&v329[8] = v38;
        *v330 = 1;
        *&v330[4] = 2112;
        *&v330[6] = v12;
        sub_100390AF0();
        _os_log_impl(v39, v40, v41, v42, v43, 0x2Cu);
      }

      if (v12)
      {
        v34 = sesErrorToKmlError();
        v16 = v12;
LABEL_137:

        goto LABEL_138;
      }

      v16 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v343[0] = NSLocalizedDescriptionKey;
      KmlErrorString();
      v32 = [sub_100367538() stringWithUTF8String:?];
      v343[1] = NSLocalizedFailureReasonErrorKey;
      v344[0] = v32;
      v344[1] = @"Sharing is blocked by configuration";
      v33 = [NSDictionary dictionaryWithObjects:v344 forKeys:v343 count:2];
      v34 = [sub_100390B78() errorWithDomain:? code:? userInfo:?];
LABEL_27:

      goto LABEL_137;
    }

    [*(v1 + 14) manufacturer];
    objc_claimAutoreleasedReturnValue();
    v13 = [sub_100390B54() brand];
    v14 = [*(v1 + 27) mfiPPID];
    v322 = v12;
    v15 = [v8 BOOLValueForSetting:2 manufacturer:&qword_10040A000 brand:v13 uuid:v14 error:&v322];
    v16 = v322;

    if (v15)
    {
      [*(v1 + 28) downgradePreferredVersion];
    }

    [*(v1 + 27) vehicleSupportedFrameworkVersionsData];
    objc_claimAutoreleasedReturnValue();
    v17 = [sub_10036F8CC() updateVehicleSupportedFrameworkVersions:v12];

    [*(v1 + 27) initiatorSupportedFrameworkVersionsData];
    objc_claimAutoreleasedReturnValue();
    v18 = [sub_10036F8CC() updateSupportedFrameworkVersionsForSharing:v12];

    v19 = *(v1 + 28);
    v20 = sub_1003AAA6C(*(v1 + 4));
    v21 = sub_1003ACF68(v20);
    v22 = sub_1003DEAB4();
    v23 = [v19 updateVehicleSupportedAppletVersions:v22];

    if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]) && objc_msgSend(*(v1 + 27), "maxOfflineAttestationCount") <= 1)
    {
      v24 = KmlLogger();
      if (sub_10036F5DC(v24))
      {
        v25 = *(v1 + 44);
        v26 = [v25 UTF8String];

        *buf = 136315650;
        v325 = "[KmlFriendSharingManager generateFriendEndpoint]";
        sub_100390A4C();
        sub_1003909C4(1718);
        *v329 = v26;
        sub_100390AB0();
        sub_10036F590(v27, v28, v29, v30, v31);
      }

      v32 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v341[0] = NSLocalizedDescriptionKey;
      v33 = [NSString stringWithUTF8String:KmlErrorString()];
      v341[1] = NSLocalizedFailureReasonErrorKey;
      v342[0] = v33;
      v342[1] = @"Max attestation count must be at least 2 for sharing in a chain";
      [NSDictionary dictionaryWithObjects:v342 forKeys:v341 count:2];
      objc_claimAutoreleasedReturnValue();
      v34 = [sub_100390A80() errorWithDomain:? code:? userInfo:?];

      goto LABEL_27;
    }

    v44 = sub_1003AAA6C(*(v1 + 4));
    v45 = sub_1003ACF68(v44);
    v46 = sub_1003DE4BC(v45);

    v47 = sub_1003AAA6C(*(v1 + 4));
    v48 = sub_1003ACF68(v47);
    v49 = sub_1003DE58C(v48);

    if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
    {
      v50 = sub_1003AAA6C(*(v1 + 4));
      v51 = sub_1003ACF68(v50);
      v46 = sub_1003DF2A0(v51);

      v52 = sub_1003AAA6C(*(v1 + 4));
      v53 = sub_1003ACF68(v52);
      v49 = sub_1003DF2AC(v53);
    }

    v54 = KmlLogger();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = *(v1 + 44);
      [v55 UTF8String];
      sub_100390934();
      v327 = 1730;
      v328 = 2080;
      *v329 = v56;
      *&v329[8] = v57;
      *v330 = v46;
      *&v330[4] = v57;
      *&v330[6] = v49;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s : %i : %s : options_1: %02x; options_2: %02x", buf, 0x28u);
    }

    v58 = [SEEndPointConfiguration configurationWithOpt1:v46 opt2:v49];
    if (!v58)
    {
      v72 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v339[0] = NSLocalizedDescriptionKey;
      v73 = [NSString stringWithUTF8String:KmlErrorString()];
      v339[1] = NSLocalizedFailureReasonErrorKey;
      v340[0] = v73;
      v340[1] = @"Invalid endpoint configuration option group values (RFU bits set)";
      [NSDictionary dictionaryWithObjects:v340 forKeys:v339 count:2];
      objc_claimAutoreleasedReturnValue();
      v34 = [sub_100390A80() errorWithDomain:? code:? userInfo:?];

LABEL_136:
      goto LABEL_137;
    }

    if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
    {
      v59 = v58;
      sub_1003AD0FC(*(v1 + 4));
      objc_claimAutoreleasedReturnValue();
      v60 = [sub_100390B54() manufacturer];
      v321 = v16;
      v61 = sub_1003BCA70(KmlVersions, v60, v49, &v321);
      v46 = v321;

      if ((v61 & 1) == 0)
      {
        v112 = KmlLogger();
        v58 = v59;
        if (sub_10004F844(v112))
        {
          v113 = *(v1 + 44);
          v114 = [v113 UTF8String];

          *buf = 136315650;
          v325 = "[KmlFriendSharingManager generateFriendEndpoint]";
          sub_100390A4C();
          sub_1003909C4(1738);
          *v329 = v114;
          sub_100390AF0();
          _os_log_impl(v115, v116, v117, v118, v119, 0x1Cu);
        }

        v16 = v46;
        v34 = v16;
        goto LABEL_136;
      }

      v16 = v46;
      v58 = v59;
    }

    v62 = sub_1003AAA78(*(v1 + 4));
    v63 = sub_1003ACF68(v62);

    v64 = KmlLogger();
    if (sub_100057AEC(v64))
    {
      v62 = *(v1 + 44);
      [v62 UTF8String];
      sub_100390934();
      sub_1003909C4(1743);
      *v329 = v65;
      sub_100390B3C();
      *v330 = v63;
      sub_1003909F4();
      _os_log_impl(v66, v67, v68, v69, v70, 0x26u);
    }

    if (v63)
    {
      v71 = kmlUtilSanitizeFriendlyName();
    }

    else
    {
      v71 = @"MyFriend1";
    }

    v74 = *(v1 + 12);
    *(v1 + 12) = v71;

    if (sub_1003F6F5C(v75) && [v8 emulateNFCOnlyDevice])
    {
      v76 = KmlLogger();
      if (sub_10036F978(v76))
      {
        sub_100390934();
        v327 = 1758;
        sub_100390A14();
        _os_log_impl(v77, v78, v79, v80, v81, 0x12u);
      }

      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v83 = +[NISession deviceCapabilities];
    v84 = v82 & [v83 supportsPreciseDistanceMeasurement];

    if (([*(v1 + 27) readerSupportsNfc] & 1) == 0 && (v84 & 1) == 0)
    {
      v85 = KmlLogger();
      if (sub_10036F5DC(v85))
      {
        v86 = *(v1 + 44);
        v87 = [v86 UTF8String];

        *buf = 136315650;
        v325 = "[KmlFriendSharingManager generateFriendEndpoint]";
        sub_100390A4C();
        sub_1003909C4(1769);
        *v329 = v87;
        sub_100390AB0();
        sub_10036F590(v88, v89, v90, v91, v92);
      }

      v93 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v337 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v94 = [sub_100367538() stringWithUTF8String:?];
      v338 = v94;
      v95 = [NSDictionary dictionaryWithObjects:&v338 forKeys:&v337 count:1];
      v34 = [NSError errorWithDomain:v93 code:114 userInfo:v95];

      goto LABEL_135;
    }

    v310 = v63;
    v318 = v58;
    [*(v1 + 14) manufacturer];
    objc_claimAutoreleasedReturnValue();
    v96 = [sub_100390B54() brand];
    v97 = [*(v1 + 27) mfiPPID];
    v99 = sub_100390CCC(v8, v98, 1);

    if (v84 & 1 | ((v99 & 1) == 0))
    {
LABEL_67:
      [*(v1 + 14) manufacturer];
      objc_claimAutoreleasedReturnValue();
      v132 = [sub_100390B54() brand];
      v133 = [*(v1 + 27) mfiPPID];
      v135 = sub_100390CCC(v8, v134, 10);

      if ((v135 & 1) == 0)
      {
        v136 = KmlLogger();
        if (sub_100057AEC(v136))
        {
          v137 = *(v1 + 44);
          [v137 UTF8String];
          v138 = [sub_100390B54() manufacturer];
          v139 = [*(v1 + 14) brand];
          *buf = 136316162;
          v325 = "[KmlFriendSharingManager generateFriendEndpoint]";
          sub_100390A4C();
          sub_1003909C4(1821);
          *v329 = v83;
          sub_100390B3C();
          *v330 = v138;
          *&v330[8] = v140;
          *&v330[10] = v141;
          sub_1003909F4();
          _os_log_impl(v142, v143, v144, v145, v146, 0x30u);
        }

        [*(v1 + 27) removeUwbSupportLocally];
      }

      v309 = [*(v1 + 27) asData];
      v147 = KmlLogger();
      if (sub_100057AEC(v147))
      {
        v148 = *(v1 + 44);
        v149 = [v148 UTF8String];
        v150 = kmlUtilHexStringFromData();
        sub_100390934();
        sub_1003909C4(1826);
        *v329 = v149;
        sub_100390B3C();
        *v330 = v151;
        sub_1003909F4();
        _os_log_impl(v152, v153, v154, v155, v156, 0x26u);
      }

      v317 = sub_10039737C(KmlEndpointManager, @"FRND");
      if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
      {
        v157 = KmlLogger();
        if (sub_100057AEC(v157))
        {
          v158 = *(v1 + 44);
          v159 = [v158 UTF8String];

          sub_100390934();
          sub_1003909C4(1833);
          *v329 = v159;
          sub_1003909F4();
          _os_log_impl(v160, v161, v162, v163, v164, 0x1Cu);
        }

        v165 = sub_1003AAA6C(*(v1 + 4));
        v166 = sub_1003ACF68(v165);
        v314 = sub_1003DE360(v166);

        v167 = sub_1003AAA6C(*(v1 + 4));
        v168 = sub_1003ACF68(v167);
        v169 = sub_1003DE134(v168);
      }

      else
      {
        v170 = sub_1003AAA6C(*(v1 + 4));
        v171 = sub_1003ACF68(v170);
        v314 = sub_1003DE068(v171);

        v167 = sub_1003AAA6C(*(v1 + 4));
        v168 = sub_1003ACF68(v167);
        v169 = sub_1003DDF9C(v168);
      }

      v307 = v169;
      v306 = v8;

      v172 = KmlLogger();
      if (sub_10036F978(v172))
      {
        sub_100390934();
        v327 = 1841;
        v328 = v173;
        *v329 = v307;
        *&v329[4] = v173;
        *&v329[6] = v314;
        sub_100390A14();
        _os_log_impl(v174, v175, v176, v177, v178, 0x1Eu);
      }

      v179 = sub_1003AAA6C(*(v1 + 4));
      v180 = sub_1003ACF68(v179);
      v181 = sub_1003DDC1C(v180);
      v316 = [NSArray arrayWithObjects:v181, 0];

      v305 = sub_1003AAA6C(*(v1 + 4));
      v304 = sub_1003ACF68(v305);
      v313 = sub_1003DC544(v304);
      v303 = sub_1003AAA6C(*(v1 + 4));
      v302 = sub_1003ACF68(v303);
      v312 = sub_1003DC464(v302);
      v182 = *(v1 + 42);
      v301 = sub_1003AAA6C(*(v1 + 4));
      v300 = sub_1003ACF68(v301);
      v311 = sub_1003DDCFC(v300);
      v299 = sub_1003AAA6C(*(v1 + 4));
      v298 = sub_1003ACF68(v299);
      v183 = sub_1003DDDDC(v298);
      v184 = sub_1003AAA6C(*(v1 + 4));
      v185 = sub_1003ACF68(v184);
      v186 = sub_1003DDEBC(v185);
      if (v314)
      {
        v187 = [NSNumber numberWithUnsignedInteger:v314];
      }

      else
      {
        v187 = 0;
      }

      v188 = v307;
      if (v307)
      {
        v189 = [NSNumber numberWithUnsignedInteger:v307];
      }

      else
      {
        v189 = 0;
      }

      v320 = v16;
      v297 = v189;
      v296 = v182;
      sub_100075DB0();
      v190 = SESEndPointCreateForAlishaWithSession();
      v308 = v16;

      v191 = *(v1 + 11);
      *(v1 + 11) = v190;

      if (v188)
      {
      }

      if (v314)
      {
      }

      v192 = v308;
      if (v308)
      {
        v193 = KmlLogger();
        v8 = v306;
        if (sub_10036F5DC(v193))
        {
          v194 = *(v1 + 44);
          v195 = [v194 UTF8String];

          *buf = 136315906;
          v325 = "[KmlFriendSharingManager generateFriendEndpoint]";
          sub_100390A4C();
          v327 = 1863;
          sub_100390AA4();
          *v329 = v195;
          sub_100390B3C();
          *v330 = v308;
          sub_100390AB0();
          sub_100390B60(v196, v197, v198, v199, v200);
        }

        v34 = sesErrorToKmlError();
LABEL_94:
        v58 = v318;
        v63 = v310;
LABEL_134:
        v93 = v309;

        v16 = v192;
LABEL_135:

        goto LABEL_136;
      }

      v201 = [*(v1 + 11) publicKeyIdentifier];
      v202 = *(v1 + 13);
      *(v1 + 13) = v201;

      v203 = kmlUtilHexStringFromData();
      v204 = *(v1 + 45);
      *(v1 + 45) = v203;

      v8 = v306;
      if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
      {
        v205 = KmlLogger();
        if (sub_10036F978(v205))
        {
          sub_10039098C();
          v327 = 1871;
          sub_100390A14();
          _os_log_impl(v206, v207, v208, v209, v210, 0x12u);
        }

        v187 = kmlUtilTimeNow();
        sub_100075DB0();
        v192 = SESEndpointConvertWithSession();

        if (v192)
        {
          v211 = KmlLogger();
          if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
          {
            sub_10039098C();
            v327 = 1875;
            v328 = 2112;
            *v329 = v192;
            sub_10036F590(&_mh_execute_header, v211, v212, "%s : %i : Error while converting V3 endpoint during endpoint creation: %@", buf);
          }

          v213 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v333[0] = NSLocalizedDescriptionKey;
          v214 = [NSString stringWithUTF8String:KmlErrorString()];
          v333[1] = NSLocalizedFailureReasonErrorKey;
          v334[0] = v214;
          v334[1] = @"Error while converting V3 endpoint during endpoint creation";
          [NSDictionary dictionaryWithObjects:v334 forKeys:v333 count:2];
          objc_claimAutoreleasedReturnValue();
          v34 = [sub_100390A80() errorWithDomain:? code:? userInfo:?];

          goto LABEL_94;
        }
      }

      if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
      {
        v215 = KmlLogger();
        if (sub_100057AEC(v215))
        {
          v216 = *(v1 + 44);
          v186 = [v216 UTF8String];

          sub_10039098C();
          v327 = 1883;
          sub_100390AA4();
          *v329 = v186;
          sub_1003909F4();
          _os_log_impl(v217, v218, v219, v220, v221, 0x1Cu);
        }

        v222 = sub_1003AAA6C(*(v1 + 4));
        v223 = sub_1003ACF68(v222);
        v224 = sub_1003DEA80(v223);

        v225 = sub_1003AAA6C(*(v1 + 4));
        v226 = sub_1003ACF68(v225);
        v227 = sub_1003DE81C(v226);
      }

      else
      {
        v228 = sub_1003AAA6C(*(v1 + 4));
        v229 = sub_1003ACF68(v228);
        v224 = sub_1003DE73C(v229);

        v225 = sub_1003AAA6C(*(v1 + 4));
        v226 = sub_1003ACF68(v225);
        v227 = sub_1003DE65C(v226);
      }

      v230 = v227;

      v231 = KmlLogger();
      if (sub_100057AEC(v231))
      {
        v232 = *(v1 + 44);
        [v232 UTF8String];
        sub_10039098C();
        v327 = 1890;
        sub_100390AA4();
        *v329 = v233;
        sub_100390B3C();
        *v330 = v224;
        *&v330[8] = v234;
        *&v330[10] = v230;
        sub_1003909F4();
        _os_log_impl(v235, v236, v237, v238, v239, 0x30u);
      }

      SESEndPointConfigureMailBoxes();
      v240 = 0;
      if (v240)
      {
        v241 = v240;
        v242 = KmlLogger();
        if (sub_10004F844(v242))
        {
          v243 = *(v1 + 44);
          v1 = [v243 UTF8String];

          sub_10039098C();
          v327 = 1898;
          sub_100390AA4();
          *v329 = v1;
          sub_100390B3C();
          *v330 = v241;
          sub_100390AF0();
          _os_log_impl(v244, v245, v246, v247, v248, 0x26u);
        }

        [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        objc_claimAutoreleasedReturnValue();
        [sub_100390C88() userInfo];
        objc_claimAutoreleasedReturnValue();
        v249 = [sub_100390C00() errorWithDomain:? code:? userInfo:?];

        v192 = v249;
        v63 = v310;
        goto LABEL_133;
      }

      v250 = SESEndPointCreateEncryptionKey();
      v251 = 0;
      v252 = *(v1 + 9);
      *(v1 + 9) = v250;

      v253 = KmlLogger();
      if (sub_100057AEC(v253))
      {
        v254 = *(v1 + 44);
        v255 = [v254 UTF8String];
        v256 = *(v1 + 9);
        *buf = 136315906;
        v325 = "[KmlFriendSharingManager generateFriendEndpoint]";
        v326 = 1024;
        v327 = 1904;
        v328 = 2080;
        *v329 = v255;
        *&v329[8] = 2112;
        *v330 = v256;
        sub_1003909F4();
        _os_log_impl(v257, v258, v259, v260, v261, 0x26u);
      }

      if (v251)
      {
        v262 = KmlLogger();
        if (sub_10036F5DC(v262))
        {
          v263 = *(v1 + 44);
          v186 = [v263 UTF8String];

          sub_10039098C();
          v327 = 1907;
          sub_100390AA4();
          *v329 = v186;
          sub_100390B3C();
          *v330 = v251;
          sub_100390AB0();
          sub_100390B60(v264, v265, v266, v267, v268);
        }
      }

      v269 = [*(v1 + 28) getVehicleSupportedVersionsData];
      v270 = KmlLogger();
      if (sub_10036F124(v270))
      {
        v271 = *(v1 + 44);
        v272 = [v271 UTF8String];
        v273 = *(v1 + 12);
        v274 = *(v1 + 42);
        v275 = *(v1 + 44);
        *buf = 136316418;
        v325 = "[KmlFriendSharingManager generateFriendEndpoint]";
        v326 = 1024;
        v327 = 1911;
        v328 = 2080;
        *v329 = v272;
        *&v329[8] = 2112;
        *v330 = v273;
        *&v330[8] = 2112;
        *&v330[10] = v274;
        v331 = 2112;
        v332 = v275;
        _os_log_impl(&_mh_execute_header, v186, OS_LOG_TYPE_INFO, "%s : %i : %s : Saving friendly name (%@), reader info (%@) and invitationId (%@)", buf, 0x3Au);
      }

      v315 = v224;
      if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
      {
        v276 = sub_1003AD0FC(*(v1 + 4));
        v277 = sub_1003BB820(v276);

        v278 = sub_1003AAA78(*(v1 + 4));
        sub_1003B918C(v278);
        v279 = [sub_100390A98() numberWithUnsignedShort:?];
      }

      else
      {
        v277 = 0;
        v279 = 0;
      }

      v280 = v277;
      v281 = v279;
      v319 = v309;
      v282 = v269;
      v283 = SESEndPointUpdateWithBlock();

      if (v283)
      {
        v8 = v306;
      }

      else
      {
        v8 = v306;
        if (!sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]) || (buf[0] = 0x80, +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", buf, 1), v294 = objc_claimAutoreleasedReturnValue(), sub_100075DB0(), SESEndPointSetPrivateDataWithSession(), v283 = 0, v294, !v283))
        {
          v293 = 0;
LABEL_132:
          v192 = v293;

          v63 = v310;
          v224 = v315;
LABEL_133:

          v34 = v192;
          v58 = v318;
          goto LABEL_134;
        }
      }

      v284 = KmlLogger();
      if (sub_10004F844(v284))
      {
        v285 = *(v1 + 44);
        v1 = [v285 UTF8String];

        *buf = 136315650;
        v325 = "[KmlFriendSharingManager generateFriendEndpoint]";
        sub_100390A4C();
        *(v286 + 14) = 1972;
        sub_100390AA4();
        *(v287 + 20) = v1;
        sub_100390AF0();
        _os_log_impl(v288, v289, v290, v291, v292, 0x1Cu);
      }

      [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      objc_claimAutoreleasedReturnValue();
      [sub_100390C88() userInfo];
      objc_claimAutoreleasedReturnValue();
      v293 = [sub_100390C00() errorWithDomain:? code:? userInfo:?];

      goto LABEL_132;
    }

    v83 = NSError;
    v100 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v335 = NSLocalizedDescriptionKey;
    KmlErrorString();
    v101 = [sub_100372244() stringWithUTF8String:?];
    v336 = v101;
    v102 = [NSDictionary dictionaryWithObjects:&v336 forKeys:&v335 count:1];
    v34 = [NSError errorWithDomain:v100 code:218 userInfo:v102];

    v103 = MGGetSInt32Answer();
    if (v103 == 6)
    {
      if (sub_100073170())
      {
        if (KmlLogIsInternalBuild())
        {
          v120 = KmlLogger();
          if (sub_10036F978(v120))
          {
            sub_100390934();
            v327 = 1803;
            sub_100390A14();
            _os_log_impl(v121, v122, v123, v124, v125, 0x12u);
          }
        }

        goto LABEL_67;
      }

      goto LABEL_63;
    }

    if (v103 != 1)
    {
LABEL_63:
      if (v34)
      {
        v93 = KmlLogger();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v126 = *(v1 + 44);
          v127 = [v126 UTF8String];
          v128 = *(v1 + 15);
          v129 = [*(v1 + 14) brand];
          *buf = 136316162;
          v325 = "[KmlFriendSharingManager generateFriendEndpoint]";
          sub_100390A4C();
          sub_1003909C4(1809);
          *v329 = v127;
          sub_100390B3C();
          *v330 = v128;
          *&v330[8] = v130;
          *&v330[10] = v131;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "%s : %i : %s : We don't allow CarKey on NFC only device for (%@, %@)", buf, 0x30u);
        }

        v58 = v318;
        v63 = v310;
        goto LABEL_135;
      }

      goto LABEL_67;
    }

    v83 = +[NRPairedDeviceRegistry sharedInstance];
    v104 = [v83 getActivePairedDevice];

    if (v104)
    {
      v83 = [[NSUUID alloc] initWithUUIDString:@"C4F6386A-780D-40E5-9900-0A26C16273A1"];
      if (![v104 supportsCapability:v83])
      {
LABEL_52:

        goto LABEL_53;
      }

      [[NSUUID alloc] initWithUUIDString:@"81D292E4-16D8-4630-82ED-BDF62B05E334"];
      v105 = [sub_1003674F0() supportsCapability:&NSInferMappingModelAutomaticallyOption_ptr];

      if (v105)
      {
        if (KmlLogIsInternalBuild())
        {
          v106 = KmlLogger();
          if (sub_10036F978(v106))
          {
            sub_100390934();
            v327 = 1797;
            sub_100390A14();
            _os_log_impl(v107, v108, v109, v110, v111, 0x12u);
          }
        }

        v83 = v34;
        v34 = 0;
        goto LABEL_52;
      }
    }

LABEL_53:

    goto LABEL_63;
  }

  v34 = 0;
LABEL_138:

  return v34;
}

void sub_1003D627C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = sub_1003AAA6C(*(a1 + 32));
  v3 = sub_1003ACF68(v2);
  if (!sub_1003DF01C())
  {

    goto LABEL_6;
  }

  v4 = sub_1003AAA6C(*(a1 + 32));
  v5 = sub_1003ACF68(v4);
  v6 = sub_1003DF0EC();

  if (!v6)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  ++*(a1 + 304);
  v7 = 1;
LABEL_7:
  v11 = objc_alloc_init(KeySigningRequest);
  sub_1003BAE64(v11, *(a1 + 224));
  if (v7)
  {
    v8 = *(a1 + 152);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1003BA404(v11, *(a1 + 88), *(a1 + 72), v8);
  v10 = *(a1 + 56);
  *(a1 + 56) = v9;
}

void sub_1003D6394()
{
  sub_100390D04();
  if (v0)
  {
    v1 = v0;
    v2 = *(v0 + 280);
    *(v0 + 280) = 0;

    v3 = [*(v1 + 112) manufacturer];
    sub_100075DB0();
    v4 = SESEndpointGetBindingAttestationRequestWithSession();
    v5 = 0;

    if (v5)
    {
      v6 = KmlLogger();
      if (sub_10004F844(v6))
      {
        v7 = *(v1 + 352);
        [v7 UTF8String];

        sub_10036BED0();
        sub_100390948();
        sub_100390BB8();
        sub_100390B30();
        _os_log_impl(v8, v9, v10, v11, v12, 0x26u);
      }

      [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      objc_claimAutoreleasedReturnValue();
      v13 = [sub_10036746C() userInfo];
      v14 = [NSError errorWithDomain:v3 code:112 userInfo:v13];
      v15 = *(v1 + 280);
      *(v1 + 280) = v14;
    }

    else
    {
      v16 = [DAKeyBindingAttestationRequestData alloc];
      v17 = *(v1 + 376);
      [v4 subCAAttestation];
      objc_claimAutoreleasedReturnValue();
      v13 = [sub_1003674F0() casdECDSACertificate];
      v15 = [v4 casdRSACertificate];
      v18 = [v16 initWithSharingSessionIdentifier:v17 subCaAttestation:v3 casd:v13 rsaCertData:v15];
      v19 = *(v1 + 208);
      *(v1 + 208) = v18;
    }
  }

  sub_100390CEC();
}

void sub_1003D6584(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 280);
    *(a1 + 280) = 0;

    v3 = [*(a1 + 112) readerIdentifier];
    v4 = [KmlTlv TLVWithTag:77 value:v3];
    v5 = [v4 asData];
    v6 = SESEndPointPrivacyEncryption();
    v7 = 0;

    if (v7)
    {
      v8 = KmlLogger();
      if (sub_10036F548(v8))
      {
        v9 = *(a1 + 352);
        v10 = [v9 UTF8String];

        sub_10036BED0();
        sub_100390948();
        v20 = v10;
        sub_100390BB8();
        v21 = v7;
        sub_100390B60(&_mh_execute_header, v5, v11, "%s : %i : %s : Failed to encrypt pre-track request with - %@", v19);
      }

      v12 = sesErrorToKmlError();
      v5 = *(a1 + 280);
      *(a1 + 280) = v12;
    }

    else
    {
      v13 = [DAAlishaKeyEncryptedRequest alloc];
      [v6 version];
      objc_claimAutoreleasedReturnValue();
      v14 = [sub_100390AD8() ephemeralPublicKeydata];
      v15 = [v6 receiverPublicKeyHash];
      v16 = [v6 cipherText];
      v17 = [v13 initWithVersion:v5 ephemeralPublicKey:v14 publicKeyHash:v15 encryptedRequest:v16];
      v18 = *(a1 + 192);
      *(a1 + 192) = v17;
    }
  }
}

void sub_1003D6794(id *a1)
{
  if (!a1)
  {
    return;
  }

  v3 = a1[34];
  if (a1[46])
  {
    if (v3)
    {
      v4 = KmlLogger();
      if (sub_10036F5DC(v4))
      {
        v5 = a1[44];
        [v5 UTF8String];

        v11[0] = 136315650;
        sub_10036DC30();
        sub_1003908FC();
        sub_10036F590(&_mh_execute_header, v1, v6, "%s : %i : %s : Error while generating cross-platform signing request, reporting error to client", v11);
      }

      WeakRetained = objc_loadWeakRetained(a1 + 41);
      [WeakRetained handleCrossPlatformSigningRequest:0 status:a1[34] keyInformation:0];

      return;
    }

    v10 = sub_1003D0EC4(a1, 2, 1);
    v9 = objc_loadWeakRetained(a1 + 41);
    [v9 handleCrossPlatformSigningRequest:v10 status:0 keyInformation:a1[43]];
  }

  else
  {
    if (v3)
    {
      v8 = objc_loadWeakRetained(a1 + 41);
      [v8 handleExchangeStartedWithFriendKey:0 status:a1[34]];
    }

    v10 = objc_loadWeakRetained(a1 + 41);
    [v10 handleExchangeStartedWithFriendKey:a1[43] status:0];
  }
}

id sub_1003D6944(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_1003BA3C4(*(a1 + 64));
    v4 = KmlLogger();
    if (sub_10036DCF8(v4))
    {
      v5 = *(v2 + 352);
      [v5 UTF8String];
      v6 = kmlUtilHexStringFromData();
      sub_1003908BC();
      sub_1003909A0(2188);
      sub_100390B20(v7);
      sub_100390B00();
      _os_log_impl(v8, v9, v10, v11, v12, 0x26u);
    }

    v13 = KmlLogger();
    if (sub_10036DCF8(v13))
    {
      v14 = *(v2 + 352);
      v15 = [v14 UTF8String];
      v16 = sub_1003AAA6C(*(v2 + 64));
      v17 = [v16 asData];
      v18 = kmlUtilHexStringFromData();
      sub_100390BD0();
      sub_1003909B4(2190);
      *(v19 + 212) = v15;
      sub_100390B20(v20);
      sub_100390B00();
      _os_log_impl(v21, v22, v23, v24, v25, 0x26u);
    }

    v151 = +[NSMutableData data];
    v26 = sub_1003AAA6C(*(v2 + 64));
    v27 = [v26 asData];
    v28 = [sub_100390B78() TLVsWithData:?];

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v167 objects:v180 count:16];
    v149 = v29;
    if (v30)
    {
      v31 = v30;
      v32 = *v168;
LABEL_8:
      v33 = 0;
      while (1)
      {
        if (*v168 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v167 + 1) + 8 * v33);
        if ([v34 tag] == 32549)
        {
          break;
        }

        if (v31 == ++v33)
        {
          v31 = [v29 countByEnumeratingWithState:&v167 objects:v180 count:16];
          if (v31)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      v35 = [v34 value];
      v36 = [v34 value];
      v37 = [KmlTlv TLVsWithData:v36];

      v152 = v37;
      if (!v37)
      {
        goto LABEL_19;
      }

      v38 = v151;
      if (sub_100390A64([*(v2 + 224) agreedKmlSharingVersion]))
      {
        v29 = objc_opt_new();
        if (sub_1003F6F5C(v39))
        {
          v40 = objc_opt_new();
          v41 = [v40 ignoreInvalidAttestationPackageSignature];
        }

        else
        {
          v41 = 0;
        }

        v47 = v2;
        v48 = [*(v2 + 88) shareInitiatorCertificateChainData];
        v49 = sub_1003BAE74(v29, v48);

        if (!v49 || (sub_1003AF3D8(*(v2 + 64)), v50 = objc_claimAutoreleasedReturnValue(), [v50 value], v51 = objc_claimAutoreleasedReturnValue(), v52 = sub_1003BBD64(v29, v35, v51), v51, v50, (v52 & 1) == 0))
        {
          if (!v41)
          {
            v143 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
            v178 = NSLocalizedDescriptionKey;
            KmlErrorString();
            v144 = [sub_100367538() stringWithUTF8String:?];
            v179 = v144;
            v145 = [NSDictionary dictionaryWithObjects:&v179 forKeys:&v178 count:1];
            v141 = [sub_100390B78() errorWithDomain:? code:? userInfo:?];

            goto LABEL_88;
          }

          v53 = KmlLogger();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            v54 = *(v47 + 352);
            v55 = [v54 UTF8String];

            sub_1003908BC();
            sub_1003909B4(2223);
            *(v56 + 212) = v55;
            sub_100390C7C();
            _os_log_impl(v57, v58, OS_LOG_TYPE_DEBUG, v59, v60, 0x1Cu);
          }
        }

        v2 = v47;
      }

      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v61 = [&off_1004DC800 countByEnumeratingWithState:&v163 objects:v177 count:16];
      v148 = v35;
      if (v61)
      {
        v29 = v61;
        v150 = v2;
        v146 = v3;
        v62 = *v164;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v164 != v62)
            {
              objc_enumerationMutation(&off_1004DC800);
            }

            v64 = *(*(&v163 + 1) + 8 * i);
            v159 = 0u;
            v160 = 0u;
            v161 = 0u;
            v162 = 0u;
            v65 = v152;
            v66 = [v65 countByEnumeratingWithState:&v159 objects:v176 count:16];
            if (v66)
            {
              v67 = v66;
              v68 = *v160;
              while (2)
              {
                for (j = 0; j != v67; j = j + 1)
                {
                  if (*v160 != v68)
                  {
                    objc_enumerationMutation(v65);
                  }

                  v70 = *(*(&v159 + 1) + 8 * j);
                  v35 = [v70 tag];
                  if (v35 == [v64 unsignedIntValue])
                  {
                    v35 = [v70 asData];
                    [v151 appendData:v35];

                    if ([v70 tag] == 120)
                    {
                      v71 = [v70 value];
                      v35 = [KmlTlv TLVsWithData:v71];

                      v157 = 0u;
                      v158 = 0u;
                      v155 = 0u;
                      v156 = 0u;
                      v72 = v35;
                      v73 = [v72 countByEnumeratingWithState:&v155 objects:v175 count:16];
                      if (v73)
                      {
                        v74 = v73;
                        v35 = *v156;
                        while (2)
                        {
                          for (k = 0; k != v74; k = k + 1)
                          {
                            if (*v156 != v35)
                            {
                              objc_enumerationMutation(v72);
                            }

                            v76 = *(*(&v155 + 1) + 8 * k);
                            if ([v76 tag] == 215)
                            {
                              *(v150 + 320) = [v76 valueAsUnsignedChar];
                              goto LABEL_55;
                            }
                          }

                          v74 = [v72 countByEnumeratingWithState:&v155 objects:v175 count:16];
                          if (v74)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_55:
                    }

                    goto LABEL_56;
                  }
                }

                v67 = [v65 countByEnumeratingWithState:&v159 objects:v176 count:16];
                if (v67)
                {
                  continue;
                }

                break;
              }
            }

LABEL_56:
          }

          v29 = [&off_1004DC800 countByEnumeratingWithState:&v163 objects:v177 count:16];
        }

        while (v29);
        v152 = v65;
        v3 = v146;
        v2 = v150;
        v38 = v151;
      }
    }

    else
    {
LABEL_14:

      v35 = 0;
LABEL_19:
      v42 = KmlLogger();
      if (sub_10036F548(v42))
      {
        v43 = *(v2 + 352);
        v44 = [v43 UTF8String];

        sub_100390BD0();
        sub_1003909B4(2206);
        *(v45 + 212) = v44;
        sub_10036F590(&_mh_execute_header, "[KmlFriendSharingManager prepareMailboxData]", v46, "%s : %i : %s : Signed request validation needs to catch nil ownerAttestationTLVs, at this point we just continue", buf);
      }

      v148 = v35;

      v152 = 0;
      v38 = v151;
    }

    v77 = sub_1003AF3D8(*(v2 + 64));
    [v77 asData];
    objc_claimAutoreleasedReturnValue();
    [sub_10036746C() appendData:v35];

    v78 = KmlLogger();
    if (sub_100377D6C(v78))
    {
      v79 = *(v2 + 352);
      [v79 UTF8String];
      sub_10036746C();
      v80 = kmlUtilHexStringFromData();
      sub_1003908BC();
      sub_1003909A0(2256);
      sub_100390B20(v81);
      sub_100390C18(&_mh_execute_header, v82, v83, "%s : %i : %s : Key attestation Data - %@", buf);
    }

    objc_storeStrong((v2 + 128), v38);
    v84 = KmlLogger();
    if (sub_100377D6C(v84))
    {
      v85 = *(v2 + 352);
      [v85 UTF8String];
      v86 = kmlUtilHexStringFromData();
      sub_1003908BC();
      sub_1003909A0(2259);
      sub_100390B20(v87);
      sub_100390C18(&_mh_execute_header, v88, v89, "%s : %i : %s : Friend Attestation Package data %@", buf);
    }

    v90 = sub_1003BA3D0(*(v2 + 64));

    if (v90)
    {
      v91 = *(v2 + 216);
      v92 = sub_1003BA3D0(*(v2 + 64));
      [v91 updateSupportedRadiosWithData:v92];

      v93 = objc_opt_new();
      v94 = [*(v2 + 112) manufacturer];
      v95 = [*(v2 + 112) brand];
      v96 = v2;
      v97 = [*(v2 + 216) mfiPPID];
      v98 = [v93 BOOLValueForSetting:10 manufacturer:v94 brand:v95 uuid:v97 error:0];

      if ((v98 & 1) == 0)
      {
        v99 = KmlLogger();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
        {
          v147 = v3;
          v100 = v96[44];
          [v100 UTF8String];
          v101 = [sub_100390B54() manufacturer];
          v102 = [v96[14] brand];
          sub_1003908BC();
          sub_1003909B4(2272);
          *(v103 + 212) = v94;
          v172 = 2112;
          *(v103 + 222) = v101;
          v173 = 2112;
          v174 = v104;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "%s : %i : %s : UWB is blocked for %@, %@", buf, 0x30u);

          v3 = v147;
        }

        [v96[27] removeUwbSupportLocally];
      }

      v2 = v96;
      v38 = v151;
    }

    v153 = v3;
    v154 = v38;
    v105 = SESEndPointUpdateWithBlock();
    if (sub_1003F6F5C(v106) && (v107 = objc_opt_new(), v108 = [v107 emulateNFCOnlyDevice], v107, v108))
    {
      v109 = KmlLogger();
      if (sub_10036F978(v109))
      {
        sub_1003908BC();
        *(v110 + 206) = 2313;
        sub_100390A14();
        _os_log_impl(v111, v112, v113, v114, v115, 0x12u);
      }

      v116 = 0;
    }

    else
    {
      v116 = 1;
    }

    v117 = +[NISession deviceCapabilities];
    v118 = [v117 supportsPreciseDistanceMeasurement];

    if ([*(v2 + 216) readerSupportsUwb] && v116 && v118)
    {
      v119 = KmlLogger();
      if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
      {
        v120 = *(v2 + 352);
        [v120 UTF8String];

        sub_1003908BC();
        sub_1003909A0(2324);
        sub_100390C7C();
        sub_100367454(v121, v122, v123, v124, v125);
      }

      sub_100075DB0();
      SESEndPointConfigureNFCExpressInLPM();
      v126 = v105;

      v105 = v126;
    }

    if (v105)
    {
      v127 = KmlLogger();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
      {
        v128 = *(v2 + 352);
        [v128 UTF8String];

        sub_1003908BC();
        sub_1003909A0(2329);
        sub_100390C7C();
        sub_100367454(v129, v130, v131, v132, v133);
      }
    }

    v134 = KmlLogger();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
    {
      v135 = *(v2 + 352);
      [v135 UTF8String];

      sub_1003908BC();
      sub_1003909A0(2333);
      sub_100390C7C();
      sub_100367454(v136, v137, v138, v139, v140);
    }

    v141 = 0;
    v29 = v153;
    v35 = v148;
LABEL_88:
  }

  else
  {
    v141 = 0;
  }

  return v141;
}

void sub_1003D7668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, __int128 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_100390CB0();
  a53 = v57;
  a54 = v59;
  if (v58)
  {
    v60 = v58;
    if (*(v58 + 88))
    {
      v61 = +[NSMutableArray array];
      v62 = [KmlTlv TLVWithTag:32565 value:*(v60 + 128)];
      [v61 addObject:v62];

      v63 = [*(v60 + 88) certificates];
      [v63 objectAtIndexedSubscript:2];
      objc_claimAutoreleasedReturnValue();
      v64 = [sub_100390BAC() TLVWithTag:32548 value:v55];
      [v61 addObject:v64];

      [v63 objectAtIndexedSubscript:1];
      objc_claimAutoreleasedReturnValue();
      v65 = [sub_100390BAC() TLVWithTag:32546 value:v55];
      [v61 addObject:v65];

      if ([*(v60 + 216) isFriendImmoTokenOrSlotOnline] && objc_msgSend_isImmoTokenNeeded(*(v60 + 216)))
      {
        v66 = SESEndPointCreateEncryptionKey();
        v67 = 0;
        if (v67)
        {
          v68 = KmlLogger();
          if (sub_10036F548(v68))
          {
            v69 = *(v60 + 352);
            v70 = [v69 UTF8String];

            LODWORD(a37) = 136315906;
            *(&a37 + 4) = "[KmlFriendSharingManager buildTrackingRequest]";
            sub_1003674B0();
            *(&a37 + 14) = 2524;
            WORD1(a38) = 2080;
            *(&a38 + 4) = v70;
            WORD6(a38) = 2112;
            *(&a38 + 14) = v67;
            sub_100390B60(&_mh_execute_header, v56, v71, "%s : %i : %s : Error getting endpoint encryption key - %@", &a37);
          }

          v66 = 0;
        }
      }

      else
      {
        v66 = 0;
      }

      if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v60 + 224) agreedKmlSharingVersion], 768) && objc_msgSend(*(v60 + 216), "sharingPasswordRequired"))
      {
        [*(v60 + 352) dataUsingEncoding:4];
        objc_claimAutoreleasedReturnValue();
        [sub_100390AD8() TLVWithTag:24403 value:v56];
        objc_claimAutoreleasedReturnValue();
        [sub_1003909E4() addObject:?];
      }

      [*(v60 + 88) privacyPublicKey];
      objc_claimAutoreleasedReturnValue();
      [sub_100390AD8() TLVWithTag:24393 value:v56];
      objc_claimAutoreleasedReturnValue();
      [sub_1003909E4() addObject:?];

      [@"ECIES_v1" dataUsingEncoding:4];
      objc_claimAutoreleasedReturnValue();
      [sub_100390AD8() TLVWithTag:218 value:v56];
      objc_claimAutoreleasedReturnValue();
      [sub_1003909E4() addObject:?];

      if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v60 + 224) agreedKmlSharingVersion], 768))
      {
        v72 = KmlLogger();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          LODWORD(a37) = 136315394;
          *(&a37 + 4) = "[KmlFriendSharingManager buildTrackingRequest]";
          sub_1003674B0();
          *(&a37 + 14) = 2542;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "%s : %i : Add account info hash", &a37, 0x12u);
        }

        [*(v60 + 112) readerIdentifier];
        objc_claimAutoreleasedReturnValue();
        sub_100390AD8();
        v73 = kmlUtilGenerateAccountInfoHash();

        v74 = [KmlTlv TLVWithTag:94 value:v73];
        [v61 addObject:v74];
      }

      v75 = +[NSMutableData data];
      v54 = v61;
      sub_100390C70();
      v77 = [v76 countByEnumeratingWithState:? objects:? count:?];
      if (v77)
      {
        v78 = v77;
        v79 = MEMORY[0];
        do
        {
          for (i = 0; i != v78; i = i + 1)
          {
            if (MEMORY[0] != v79)
            {
              objc_enumerationMutation(v54);
            }

            v81 = *(8 * i);
            if ([v81 tag] == 24393 && v66 != 0)
            {
              [v75 appendData:v66];
            }

            v83 = [v81 asData];
            [v75 appendData:v83];
          }

          sub_100390C70();
          v78 = [v54 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v78);
      }

      v84 = sub_1003BA3DC(*(v60 + 64));

      if (v84)
      {
        v85 = KmlLogger();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v86 = *(v60 + 352);
          v87 = [v86 UTF8String];

          LODWORD(a37) = 136315650;
          *(&a37 + 4) = "[KmlFriendSharingManager buildTrackingRequest]";
          sub_1003674B0();
          *(v88 + 14) = 2560;
          WORD1(a38) = 2080;
          *(v88 + 20) = v87;
          sub_100367454(&_mh_execute_header, v85, v89, "%s : %i : %s : refreshed instance CA cert received from owner. Adding it to tracking request", &a37);
        }

        sub_1003BA3DC(*(v60 + 64));
        objc_claimAutoreleasedReturnValue();
        [sub_100390AD8() appendData:v85];
      }

      v90 = [KmlTlv TLVWithTag:32568 value:v75];
      v91 = [v90 asData];
      v92 = *(v60 + 136);
      *(v60 + 136) = v91;

      kmlUtilLogLargeData();
    }

    else
    {
      v93 = KmlLogger();
      if (sub_10036F124(v93))
      {
        v94 = *(v60 + 352);
        v95 = [v94 UTF8String];

        LODWORD(a37) = 136315650;
        *(&a37 + 4) = "[KmlFriendSharingManager buildTrackingRequest]";
        sub_1003674B0();
        *(&a37 + 14) = 2501;
        WORD1(a38) = 2080;
        *(&a38 + 4) = v95;
        sub_100390ABC(&_mh_execute_header, v96, v97, "%s : %i : %s : We don't have an endpoint to create tracking request.", &a37);
      }
    }
  }

  sub_100390C94();
}

id sub_1003D7C98(id *a1)
{
  if (a1)
  {
    v3 = a1;
    if (a1[17])
    {
      v49[1] = 0;
      v4 = SESEndPointPrivacyEncryption();
      v5 = 0;
      if (v5)
      {
        v6 = v5;
        v7 = KmlLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v3 = v3[44];
          v2 = [v3 UTF8String];

          sub_100390BA0();
          sub_100390A20();
          sub_100390924();
          v52 = v2;
          v53 = 2112;
          v54 = v6;
          sub_100390B60(&_mh_execute_header, v7, v8, "%s : %i : %s : Failed to encrypt friend tracking request with - %@", buf);
        }

        [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        objc_claimAutoreleasedReturnValue();
        [sub_1003674F0() userInfo];
        objc_claimAutoreleasedReturnValue();
        v9 = [sub_100390BAC() errorWithDomain:v3 code:105 userInfo:v2];

        v10 = v9;
        v11 = v10;
      }

      else
      {
        v12 = [v4 version];
        if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [v3[28] agreedKmlSharingVersion], 768))
        {
          v13 = KmlLogger();
          if (sub_10036DCF8(v13))
          {
            v14 = v3[44];
            v15 = [v14 UTF8String];

            sub_100390BA0();
            sub_100390A20();
            sub_100390924();
            v52 = v15;
            v53 = 2112;
            v54 = v12;
            sub_100390B00();
            _os_log_impl(v16, v17, v18, v19, v20, 0x26u);
          }
        }

        v21 = [DAAlishaKeyEncryptedRequest alloc];
        v22 = [v4 ephemeralPublicKeydata];
        v23 = [v4 receiverPublicKeyHash];
        v24 = [v4 cipherText];
        v25 = [v21 initWithVersion:v12 ephemeralPublicKey:v22 publicKeyHash:v23 encryptedRequest:v24];
        v26 = v3[23];
        v3[23] = v25;

        v27 = v3[23];
        v49[0] = 0;
        v28 = [v27 encodeWithError:v49];
        v29 = v49[0];
        if (v29 || !v28)
        {
          v41 = KmlLogger();
          if (sub_10036F548(v41))
          {
            v42 = v3[44];
            v43 = [v42 UTF8String];

            *buf = 136316162;
            v51 = "[KmlFriendSharingManager encryptAndSaveTrackingRequest]";
            sub_100390A20();
            sub_100390924();
            v52 = v43;
            sub_100390A04();
            v55 = v44;
            v56 = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s : %i : %s : Encode key tracking request error %@, trackingRequestData=%@", buf, 0x30u);
          }

          [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          objc_claimAutoreleasedReturnValue();
          v45 = [sub_100390AD8() userInfo];
          v46 = [NSError errorWithDomain:v23 code:105 userInfo:v45];

          v10 = v46;
        }

        else
        {
          v30 = [v3[11] publicKeyIdentifier];
          v31 = kmlUtilHexStringFromData();

          sub_1000167BC();
          sub_1003674E4();
          v48 = v28;
          v32 = SESEndPointUpdateWithBlock();
          if (v32)
          {
            v33 = v32;
            v34 = KmlLogger();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = v3[44];
              v36 = [v35 UTF8String];

              *buf = 136315650;
              v51 = "[KmlFriendSharingManager encryptAndSaveTrackingRequest]";
              sub_100390A20();
              sub_100390924();
              v52 = v36;
              sub_10036F590(&_mh_execute_header, v34, v37, "%s : %i : %s : Could not update endpoint", buf);
            }

            v38 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
            v39 = [v33 userInfo];
            v40 = [NSError errorWithDomain:v38 code:105 userInfo:v39];
          }

          else
          {
            sub_100369040(KmlAnalyticsLogger, v31);
            v40 = 0;
          }

          v10 = v40;
        }

        v11 = v10;
      }
    }

    else
    {
      v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v57 = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:KmlErrorString()];
      v58 = v4;
      [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      objc_claimAutoreleasedReturnValue();
      v11 = [sub_100390C88() errorWithDomain:v10 code:104 userInfo:v1];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_1003D84B4(uint64_t a1)
{
  if (a1)
  {
    v2 = SESEndPointCreateKeyPair();
    v3 = 0;
    if (v3)
    {
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10036BED0();
        v12 = 2146;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s : %i : Failed to create ephemeral key pair", buf, 0x12u);
      }

      v5 = v3;
    }

    else
    {
      v6 = [v2 publicKey];
      v7 = *(a1 + 168);
      *(a1 + 168) = v6;

      v8 = [v2 secretKey];
      v9 = *(a1 + 176);
      *(a1 + 176) = v8;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1003D85F0(uint64_t a1)
{
  if (a1)
  {
    v2 = +[ACAccountStore defaultStore];
    v30 = ACAccountTypeIdentifierAppleAccount;
    v3 = [NSArray arrayWithObjects:&v30 count:1];
    v23 = 0;
    v4 = [sub_100390B78() accountsWithAccountTypeIdentifiers:? error:?];
    v5 = 0;
    v6 = [v4 firstObject];

    if (!v6 || v5)
    {
      v10 = KmlLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 352);
        v12 = [v11 UTF8String];

        v25 = 136315906;
        v26 = "[KmlFriendSharingManager checkForWatchOnThisAccount]";
        sub_100390A20();
        sub_100390924();
        v27 = v12;
        v28 = 2112;
        v29 = v5;
        sub_100390B60(&_mh_execute_header, v10, v13, "%s : %i : %s : Failed to lookup account : %@", &v25);
      }

      v14 = KmlLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 352);
        v16 = [v15 UTF8String];

        v25 = 136315650;
        v26 = "[KmlFriendSharingManager checkForWatchOnThisAccount]";
        sub_100390A20();
        sub_100390924();
        v27 = v16;
        sub_10036F590(&_mh_execute_header, v14, v17, "%s : %i : %s : We are not going to handle this invite. clean up", &v25);
      }

      sub_1003D0A54(a1, 52);
    }

    else
    {
      v7 = objc_alloc_init(AKDeviceListRequestContext);
      [v6 aa_altDSID];
      objc_claimAutoreleasedReturnValue();
      [sub_100390AD8() setAltDSID:v4];

      [v7 setIncludeUntrustedDevices:1];
      v24 = AKServiceNameiCloud;
      [NSArray arrayWithObjects:&v24 count:1];
      objc_claimAutoreleasedReturnValue();
      [sub_100390AD8() setServices:v4];

      [v7 setOperatingSystems:&off_1004DC818];
      v8 = objc_alloc_init(AKAppleIDAuthenticationController);
      sub_100057A60();
      v19 = 3221225472;
      v20 = sub_10039047C;
      v21 = &unk_1004D2250;
      v22 = a1;
      [v9 deviceListWithContext:v7 completion:v18];
    }
  }
}

uint64_t sub_1003D88CC(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    result = 1;
    switch(v1)
    {
      case 0:
      case 1:
      case 2:
      case 3:
        return result;
      case 11:
        result = 2;
        break;
      case 12:
      case 13:
        result = 3;
        break;
      case 21:
      case 22:
        result = 4;
        break;
      case 23:
        result = 5;
        break;
      default:
        result = 6;
        break;
    }
  }

  return result;
}

void sub_1003D894C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, uint64_t a38, __int128 a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  sub_100390CB0();
  a54 = v56;
  a55 = v58;
  if (v57)
  {
    v59 = v57;
    v60 = (v57 + 88);
    if (*(v57 + 88))
    {
      v61 = KmlLogger();
      if (sub_10036F978(v61))
      {
        v62 = *(v59 + 352);
        v63 = [v62 UTF8String];

        a37 = 136315650;
        sub_100390A3C("[KmlFriendSharingManager lookupEndpoint]");
        sub_100390A2C(2716);
        *(&a39 + 4) = v63;
LABEL_5:
        sub_100390A14();
        _os_log_impl(v64, v65, v66, v67, v68, 0x1Cu);
      }
    }

    else
    {
      v69 = *(v57 + 360);
      v70 = KmlLogger();
      v71 = sub_10036F978(v70);
      if (v69)
      {
        if (v71)
        {
          v72 = *(v59 + 352);
          v73 = [v72 UTF8String];
          v74 = *(v59 + 360);

          a37 = 136315906;
          sub_100390A3C("[KmlFriendSharingManager lookupEndpoint]");
          sub_100390A2C(2725);
          *(&a39 + 4) = v73;
          WORD6(a39) = 2112;
          *(&a39 + 14) = v74;
          sub_100390A14();
          _os_log_impl(v75, v76, v77, v78, v79, 0x26u);
        }

        v80 = SESEndPointList();
        v55 = 0;
        if (v55)
        {
          v81 = KmlLogger();
          if (sub_10004F844(v81))
          {
            v82 = *(v59 + 352);
            v83 = [v82 UTF8String];

            a37 = 136315906;
            sub_100390A3C("[KmlFriendSharingManager lookupEndpoint]");
            sub_100390A2C(2729);
            *(&a39 + 4) = v83;
            WORD6(a39) = 2112;
            *(&a39 + 14) = v55;
            sub_100390B30();
            _os_log_impl(v84, v85, v86, v87, v88, 0x26u);
          }
        }

        else
        {
          v122 = v80;
          v91 = v80;
          sub_100390C70();
          v93 = [v92 countByEnumeratingWithState:? objects:? count:?];
          if (v93)
          {
            v94 = v93;
            v95 = MEMORY[0];
            while (2)
            {
              for (i = 0; i != v94; i = (i + 1))
              {
                if (MEMORY[0] != v95)
                {
                  objc_enumerationMutation(v91);
                }

                v97 = *(8 * i);
                v98 = [v97 publicKeyIdentifier];
                v99 = [v98 isEqualToData:*(v59 + 104)];

                if (v99)
                {
                  v100 = KmlLogger();
                  if (sub_100377D6C(v100))
                  {
                    v101 = *(v59 + 352);
                    v102 = [v101 UTF8String];

                    a37 = 136315650;
                    sub_100390A3C("[KmlFriendSharingManager lookupEndpoint]");
                    sub_100390A2C(2735);
                    *(&a39 + 4) = v102;
                    sub_100367454(&_mh_execute_header, v94, v103, "%s : %i : %s : Found our endpoint", &a37);
                  }

                  objc_storeStrong(v60, v97);
                  goto LABEL_26;
                }
              }

              sub_100390C70();
              v94 = [v91 countByEnumeratingWithState:? objects:? count:?];
              if (v94)
              {
                continue;
              }

              break;
            }
          }

LABEL_26:

          if (*v60)
          {
            v104 = [*v60 friendlyName];
            v105 = *(v59 + 96);
            *(v59 + 96) = v104;

            v106 = [KmlDeviceConfigurationData alloc];
            [*(v59 + 88) deviceConfiguration];
            objc_claimAutoreleasedReturnValue();
            v107 = [sub_1003909E4() initWithData:?];
            v108 = *(v59 + 216);
            *(v59 + 216) = v107;

            v109 = [[KmlVersions alloc] initWithEndpoint:*(v59 + 88)];
            v110 = *(v59 + 224);
            *(v59 + 224) = v109;

            [*(v59 + 216) vehicleSupportedFrameworkVersionsData];
            objc_claimAutoreleasedReturnValue();
            v111 = [sub_1003909E4() updateVehicleSupportedFrameworkVersions:?];

            v112 = *(v59 + 224);
            v60 = [*(v59 + 216) initiatorSupportedFrameworkVersionsData];
            v113 = [v112 updateSupportedFrameworkVersionsForSharing:v60];
          }

          else
          {
            v114 = KmlLogger();
            if (sub_10004F844(v114))
            {
              v115 = *(v59 + 352);
              v116 = [v115 UTF8String];

              a37 = 136315650;
              sub_100390A3C("[KmlFriendSharingManager lookupEndpoint]");
              sub_100390A2C(2742);
              *(&a39 + 4) = v116;
              sub_100390B30();
              _os_log_impl(v117, v118, v119, v120, v121, 0x1Cu);
            }
          }

          v80 = v122;
        }

        goto LABEL_32;
      }

      if (v71)
      {
        v89 = *(v59 + 352);
        v90 = [v89 UTF8String];

        a37 = 136315650;
        sub_100390A3C("[KmlFriendSharingManager lookupEndpoint]");
        sub_100390A2C(2721);
        *(&a39 + 4) = v90;
        goto LABEL_5;
      }
    }

LABEL_32:
  }

  sub_100390C94();
}

id *sub_1003D8E18(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 41, a2);
  }

  return result;
}

uint64_t sub_1003D8E28(uint64_t result)
{
  if (result)
  {
    return *(result + 336);
  }

  return result;
}

uint64_t sub_1003D8E34(uint64_t result)
{
  if (result)
  {
    return *(result + 344);
  }

  return result;
}

char *sub_1003D8E40(void *a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = KmlSecureChannel;
  v3 = objc_msgSendSuper2(&v7, "init");
  if (v3)
  {
    v4 = [[NSMutableData alloc] initWithLength:16];
    v5 = *(v3 + 11);
    *(v3 + 11) = v4;

    v3[8] = a2;
    *(v3 + 9) = 256;
  }

  return v3;
}

BOOL sub_1003D8EC8(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

void sub_1003D8EDC(uint64_t a1)
{
  if (a1)
  {
    v3 = [*(a1 + 104) alishaKey];
    v4 = *(a1 + 32);
    *(a1 + 32) = v3;

    if (KmlLogIsInternalBuild())
    {
      v5 = KmlLogger();
      if (sub_100057AEC(v5))
      {
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v6, v7, "%s : %i : SecureChannel: Ksc = %@", v8, v9, v10, v11);
      }
    }

    v12 = [*(a1 + 104) KEnc];
    v13 = *(a1 + 48);
    *(a1 + 48) = v12;

    if (KmlLogIsInternalBuild())
    {
      v14 = KmlLogger();
      if (sub_100057AEC(v14))
      {
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v15, v16, "%s : %i : SecureChannel: Kenc = %@", v17, v18, v19, v20);
      }
    }

    v21 = [*(a1 + 104) KMac];
    v22 = *(a1 + 56);
    *(a1 + 56) = v21;

    if (KmlLogIsInternalBuild())
    {
      v23 = KmlLogger();
      if (sub_100057AEC(v23))
      {
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v24, v25, "%s : %i : SecureChannel: Kmac = %@", v26, v27, v28, v29);
      }
    }

    v30 = [*(a1 + 104) KRMac];
    v31 = *(a1 + 64);
    *(a1 + 64) = v30;

    if (KmlLogIsInternalBuild())
    {
      v32 = KmlLogger();
      if (sub_100057AEC(v32))
      {
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v33, v34, "%s : %i : SecureChannel: Krmac = %@", v35, v36, v37, v38);
      }
    }

    v39 = [*(a1 + 104) SymmetricLTS];
    v40 = *(a1 + 40);
    *(a1 + 40) = v39;

    if (KmlLogIsInternalBuild())
    {
      v41 = KmlLogger();
      if (sub_100057AEC(v41))
      {
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v42, v43, "%s : %i : SecureChannel: LTS = %@", v44, v45, v46, v47);
      }
    }

    v48 = [*(a1 + 104) Kble_intro];
    v49 = *(a1 + 72);
    *(a1 + 72) = v48;

    if (KmlLogIsInternalBuild())
    {
      v50 = KmlLogger();
      if (sub_100057AEC(v50))
      {
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v51, v52, "%s : %i : SecureChannel: Kble_intro = %@", v53, v54, v55, v56);
      }
    }

    v57 = [*(a1 + 104) Kble_oob_master];
    v58 = *(a1 + 80);
    *(a1 + 80) = v57;

    if (KmlLogIsInternalBuild())
    {
      v59 = KmlLogger();
      if (sub_100057AEC(v59))
      {
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v60, v61, "%s : %i : SecureChannel: Kble_oob_master = %@", v62, v63, v64, v65);
      }
    }
  }
}

id *sub_1003D91CC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [a1[12] debugDescription];
      v14[0] = 136316162;
      sub_1003672C0();
      sub_1003939E8();
      v15 = v5;
      v16 = v9;
      v17 = v6;
      v18 = v9;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : SecureChannel: curvePointY - %@, remoteEvidence - %@, pakeClient - %@", v14, 0x30u);
    }

    v11 = [a1[12] processResponseWithY:v5 M1:v6];
    v12 = a1[13];
    a1[13] = v11;

    a1 = [a1[13] M2];
  }

  return a1;
}

void *sub_1003D931C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_100393A20();
  v14 = v13;
  v15 = v8;
  v16 = a4;
  v17 = a8;
  if (v9)
  {
    v18 = KmlLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v30 = 136316162;
      v31 = "[KmlSecureChannel handlePakeRequestWithScrypt:pairingPassword:salt:cpuCost:blocksize:parallelization:pakeVersion:]";
      sub_1003939BC();
      sub_1003939E8();
      v33 = v15;
      v34 = v19;
      v35 = v16;
      v36 = v19;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : %i : SecureChannel: pairingPassword - %@, salt - %@, pakeVersion - %@", &v30, 0x30u);
    }

    v20 = [[_TtC16CryptoKitPrivate18AlishaSPAKE2Prover alloc] initWithPassword:v15 salt:v16 authenticatedData:v17 keyDerivationCost:a5];
    v21 = v9[12];
    v9[12] = v20;

    v22 = v9[12];
    if (v22)
    {
      v9 = [v22 getX];
    }

    else
    {
      v23 = KmlLogger();
      if (sub_10036DC64(v23))
      {
        v30 = 136315394;
        v31 = "[KmlSecureChannel handlePakeRequestWithScrypt:pairingPassword:salt:cpuCost:blocksize:parallelization:pakeVersion:]";
        sub_1003939BC();
        v32 = 123;
        sub_100393964();
        _os_log_impl(v24, v25, v26, v27, v28, 0x12u);
      }

      v9 = 0;
    }
  }

  return v9;
}

id sub_1003D94E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, __int16 a12, int buf, int a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_100393A38();
  a27 = v30;
  a28 = v31;
  v33 = v32;
  sub_100393A20();
  v35 = v34;
  v36 = v28;
  a12 = v33;
  if (v29)
  {
    v37 = [NSMutableData dataWithLength:16];
    v38 = [*(v29 + 88) mutableCopy];
    if (v36 && [v36 length])
    {
      [v38 appendData:v36];
    }

    if ((*(v29 + 8) & 1) == 0)
    {
      v39 = KmlLogger();
      if (sub_10036DC64(v39))
      {
        buf = 136315394;
        sub_10036DC30();
        *(&a16 + 2) = 199;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s : %i : SecureChannel: Status word included in ResponseMac calculation.", &buf, 0x12u);
      }

      [v38 appendBytes:&a12 length:2];
    }

    [v35 bytes];
    [v38 bytes];
    [v38 length];
    sub_100393A50([v37 mutableBytes]);
  }

  sub_100393A70();

  return v40;
}

BOOL sub_1003D9674(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    if ([v10 length] == 8)
    {
      v5 = [NSMutableData dataWithLength:16];
      v14 = [*(a1 + 88) mutableCopy];
      if ((*(a1 + 8) & 1) == 0)
      {
        v15 = KmlLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          sub_10036DC30();
          v74 = 220;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : SecureChannel: Header included in CommandMac calculation.", buf, 0x12u);
        }

        [v14 appendData:v13];
      }

      [v14 appendData:v12];
      [v11 bytes];
      [v14 bytes];
      v16 = [v14 length];
      [v5 mutableBytes];
      CCAESCmac();
      v17 = timingsafe_bcmp([v10 bytes], objc_msgSend(v5, "bytes"), 8uLL);
      v18 = v17 == 0;
      if (KmlLogIsInternalBuild())
      {
        v19 = KmlLogger();
        if (sub_100367508(v19))
        {
          *buf = 136315650;
          sub_10036DC30();
          sub_10036F460();
          v76 = v11;
          sub_100393994();
          _os_log_impl(v20, v21, v22, v23, v24, v25);
        }
      }

      v26 = KmlLogger();
      if (sub_100367508(v26))
      {
        *buf = 136315650;
        sub_10036DC30();
        sub_10036F460();
        v76 = v14;
        sub_100393994();
        _os_log_impl(v27, v28, v29, v30, v31, v32);
      }

      v33 = KmlLogger();
      if (sub_100367508(v33))
      {
        *buf = 136315650;
        sub_10036DC30();
        sub_10036F460();
        v76 = v10;
        sub_100393994();
        _os_log_impl(v34, v35, v36, v37, v38, v39);
      }

      v40 = KmlLogger();
      if (sub_100367508(v40))
      {
        [v5 subdataWithRange:{0, 8}];
        v41 = v11;
        v42 = v12;
        v44 = v43 = v13;
        *buf = 136315650;
        sub_10036DC30();
        sub_10036F460();
        v76 = v45;
        sub_100393994();
        _os_log_impl(v46, v47, v48, v49, v50, v51);

        v13 = v43;
        v12 = v42;
        v11 = v41;
        v18 = v17 == 0;
      }

      if (!v17)
      {
        v52 = [v5 copy];
        v53 = *(a1 + 88);
        *(a1 + 88) = v52;

        v54 = KmlLogger();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = *(a1 + 88);
          *buf = 136315650;
          v72 = "[KmlSecureChannel verifyMac:withKey:forPayload:header:error:]";
          v73 = 1024;
          v74 = 236;
          v75 = 2112;
          v76 = v55;
          sub_100393994();
          _os_log_impl(v56, v57, v58, v59, v60, v61);
        }

        *(a1 + 9) = 0;
      }
    }

    else
    {
      v62 = KmlLogger();
      if (sub_10036DC64(v62))
      {
        [v10 length];
        *buf = 136315650;
        sub_10036DC30();
        v74 = 211;
        v75 = 2048;
        v76 = v63;
        sub_100393994();
        _os_log_impl(v64, v65, v66, v67, v68, v69);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_1003D9B34(uint64_t a1)
{
  if (a1)
  {
    v2 = [sub_100393A2C() dataWithLength:?];
    *([v2 mutableBytes] + 15) = *(a1 + 10);
    v3 = [sub_100393A2C() dataWithLength:?];
    v20 = 0;
    v4 = *(a1 + 48);
    v5 = [v4 bytes];
    v6 = [*(a1 + 48) length];
    v7 = [v2 mutableBytes];
    v8 = [v2 length];
    dataOut = [v3 mutableBytes];
    dataOutAvailable = [v3 length];
    v10 = sub_1003939C8();
    v13 = CCCrypt(v10, v11, v12, v5, v6, 0, v7, v8, dataOut, dataOutAvailable, &v20);

    if (v13)
    {
      v14 = KmlLogger();
      if (sub_10036DCF8(v14))
      {
        *v21 = 136315650;
        sub_1003939F8();
        *&v21[7] = 263;
        v21[9] = v15;
        v22 = v13;
        sub_100393A08(&_mh_execute_header, v4, v16, "%s : %i : SecureChannel: generateICV failed with %d", v21);
      }

      v17 = 0;
    }

    else
    {
      v17 = v3;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_1003D9CF4(uint64_t a1)
{
  if (a1)
  {
    v2 = [sub_100393A2C() dataWithLength:?];
    v3 = [v2 mutableBytes];
    *v3 = 0x80;
    v4 = *(a1 + 10);
    v5 = v4 != 0;
    v6 = v4 - 1;
    if (!v5)
    {
      v6 = 0;
    }

    v3[15] = v6;
    v7 = [sub_100393A2C() dataWithLength:?];
    v32 = 0;
    v8 = *(a1 + 48);
    v9 = [v8 bytes];
    v10 = *(a1 + 48);
    v11 = [v10 length];
    v12 = [v2 mutableBytes];
    v13 = [v2 length];
    dataOut = [v7 mutableBytes];
    dataOutAvailable = [v7 length];

    v16 = sub_1003939C8();
    v19 = CCCrypt(v16, v17, v18, v9, v11, 0, v12, v13, dataOut, dataOutAvailable, &v32);

    v20 = KmlLogger();
    v21 = sub_10036DCF8(v20);
    if (v19)
    {
      if (v21)
      {
        v33[0] = 136315650;
        sub_1003939F8();
        v34 = 285;
        v35 = v22;
        LODWORD(v36) = v19;
        sub_100393A08(&_mh_execute_header, v8, v23, "%s : %i : SecureChannel: generateICV failed with %d", v33);
      }

      v24 = 0;
    }

    else
    {
      if (v21)
      {
        v33[0] = 136315650;
        sub_1003939F8();
        v34 = 281;
        v35 = 2112;
        v36 = v7;
        sub_100393994();
        _os_log_impl(v25, v26, v27, v28, v29, v30);
      }

      v24 = v7;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

id *sub_1003D9F30()
{
  sub_100393A20();
  v4 = v3;
  v5 = v0;
  if (v2)
  {
    if (v4 && [v4 length])
    {
      v1 = [v4 mutableCopy];
      v32 = 0x80;
      [v1 appendBytes:&v32 length:1];
      v6 = [v1 length] & 0xF;
      if (v6)
      {
        [v1 increaseLengthBy:(16 - v6)];
      }

      v7 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v1 length]);
      v31 = 0;
      v8 = v2[6];
      v9 = [v8 bytes];
      v10 = [v2[6] length];
      v30 = v5;
      v11 = [v5 bytes];
      v12 = [v1 bytes];
      v13 = [v1 length];
      dataOut = [v7 mutableBytes];
      dataOutAvailable = [v7 length];
      v15 = sub_1003939C8();
      v18 = CCCrypt(v15, v16, v17, v9, v10, v11, v12, v13, dataOut, dataOutAvailable, &v31);

      if (v18)
      {
        v19 = KmlLogger();
        if (sub_10036DC64(v19))
        {
          v33 = 136315650;
          v34 = "[KmlSecureChannel encryptData:withICV:error:]";
          v35 = 1024;
          v36 = 320;
          v37 = 1024;
          v38 = v18;
          sub_100393A08(&_mh_execute_header, v10, v20, "%s : %i : SecureChannel: encrypt returned %d", &v33);
        }

        v2 = 0;
      }

      else
      {
        [v7 setLength:v31];
        v2 = v7;
      }

      v5 = v30;
    }

    else
    {
      v21 = KmlLogger();
      if (sub_10036DCF8(v21))
      {
        v33 = 136315394;
        v34 = "[KmlSecureChannel encryptData:withICV:error:]";
        v35 = 1024;
        v36 = 293;
        sub_1003939AC();
        _os_log_impl(v22, v23, v24, v25, v26, v27);
      }

      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_1003DA1D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 length])
    {
      v5 = [v4 bytes];
      v6 = [v4 length];
      while (v6)
      {
        v7 = v5[--v6];
        if (v7)
        {
          if (v7 == 128)
          {
            [v4 setLength:?];
            goto LABEL_8;
          }

          break;
        }
      }

      a1 = 0;
    }

    else
    {
LABEL_8:
      a1 = 1;
    }
  }

  return a1;
}

void *sub_1003DA260(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100393A20();
  v8 = v7;
  v9 = v4;
  if (v5)
  {
    if (([v8 length] & 0xF) != 0)
    {
      v10 = KmlLogger();
      if (sub_10036DCF8(v10))
      {
        *buf = 136315394;
        sub_1003939D8();
        v33 = 354;
        sub_1003939AC();
        _os_log_impl(v11, v12, v13, v14, v15, v16);
      }

      v17 = 0;
      goto LABEL_11;
    }

    v28 = a4;
    a4 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v8 length]);
    v29 = 0;
    v18 = v5[6].isa;
    v19 = CCCrypt(1u, 0, 0, -[objc_class bytes](v18, "bytes"), -[objc_class length](v5[6].isa, "length"), [v9 bytes], objc_msgSend(v8, "bytes"), objc_msgSend(v8, "length"), objc_msgSend(a4, "mutableBytes"), objc_msgSend(a4, "length"), &v29);

    if (v19)
    {
      v20 = KmlLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        sub_1003939D8();
        v33 = 366;
        v34 = v21;
        v35 = v19;
        sub_100393A08(&_mh_execute_header, v20, v22, "%s : %i : SecureChannel: decrypt returned %d", buf);
      }
    }

    else
    {
      [a4 setLength:v29];
      if (sub_1003DA1D0(v5, a4))
      {
        v17 = a4;
        goto LABEL_11;
      }

      if (KmlLogIsInternalBuild())
      {
        v24 = KmlLogger();
        if (sub_10036DC64(v24))
        {
          *buf = 136315394;
          sub_1003939D8();
          v33 = 373;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : SecureChannel: decryption failed", buf, 0x12u);
        }
      }

      if (v28)
      {
        v25 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v30 = NSLocalizedDescriptionKey;
        v26 = [NSString stringWithUTF8String:KmlErrorString()];
        v31 = v26;
        v27 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *v28 = [NSError errorWithDomain:v25 code:202 userInfo:v27];
      }
    }

    v17 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v17 = 0;
LABEL_12:

  return v17;
}

id sub_1003DA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100393A38();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v28;
  if (v30)
  {
    if (*(v30 + 48))
    {
      if ([v32 length] > 7)
      {
        v22 = [v32 subdataWithRange:{objc_msgSend(v32, "length") - 8, 8}];
        v46 = [v32 subdataWithRange:{0, objc_msgSend(v32, "length") - 8}];
        if (sub_1003D9674(v30, v22, *(v30 + 56), v46, v33))
        {
          v47 = sub_1003D9B34(v30);
          sub_1003DA260(v30, v46, v47, v26);
          objc_claimAutoreleasedReturnValue();

          ++*(v30 + 10);
          v48 = KmlLogger();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            LODWORD(a9) = 136315650;
            *(&a9 + 4) = "[KmlSecureChannel decryptAndVerifyCommandPayload:header:error:]";
            sub_1003939A0();
            *(&a9 + 14) = 406;
            WORD1(a10) = v49;
            DWORD1(a10) = v50;
            sub_100393A08(&_mh_execute_header, v48, v51, "%s : %i : SecureChannel: new command counter = %u", &a9);
          }
        }

        goto LABEL_9;
      }

      v34 = KmlLogger();
      if (sub_10036DCF8(v34))
      {
        [v32 length];
        LODWORD(a9) = 136315650;
        sub_1003672C0();
        *(&a9 + 14) = 391;
        WORD1(a10) = 2048;
        *(&a10 + 4) = v35;
        sub_100393994();
LABEL_8:
        _os_log_impl(v36, v37, v38, v39, v40, v41);
      }
    }

    else
    {
      v42 = KmlLogger();
      if (sub_10036DCF8(v42))
      {
        LODWORD(a9) = 136315394;
        sub_1003672C0();
        *(&a9 + 14) = 386;
        sub_1003939AC();
        goto LABEL_8;
      }
    }

LABEL_9:
  }

  sub_100393A70();

  return v43;
}

_BYTE *sub_1003DA868(_BYTE *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    if (a1[9] == 1)
    {
      sub_1003DAAD0();
    }

    v6 = sub_1003D9CF4(a1);
    v7 = sub_1003D9F30();

    if (!v7)
    {
      v12 = KmlLogger();
      if (sub_10036DCF8(v12))
      {
        *v37 = 136315394;
        *&v37[4] = "[KmlSecureChannel encryptResponsePayload:statusWord:error:]";
        sub_1003939BC();
        *v39 = 419;
        sub_1003939AC();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
      }

      v7 = +[NSMutableData data];
    }

    v19 = sub_1003D94E8(a1, *(a1 + 8), v7, a3, v8, v9, v10, v11, *v37, *&v37[8], v38, v39[0], *&v39[1], v40, v41, SHIDWORD(v41), v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    if (v19)
    {
      v20 = KmlLogger();
      if (sub_10036DC64(v20))
      {
        sub_1003939A0();
        sub_1003757CC();
        sub_100393950();
        _os_log_impl(v21, v22, v23, v24, v25, v26);
      }

      v27 = KmlLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v19 subdataWithRange:{0, 8}];
        sub_1003939BC();
        sub_1003939E8();
        sub_100393950();
        _os_log_impl(v29, v30, v31, v32, v33, v34);
      }

      v35 = [v19 subdataWithRange:{0, 8}];
      [v7 appendData:v35];

      a1[9] = 1;
      a1 = v7;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_1003DAAD0()
{
  sub_100393A38();
  if (v0)
  {
    v1 = v0;
    v2 = *(v0 + 56);
    v3 = [NSMutableData dataWithLength:16];
    v4 = [*(v1 + 88) mutableCopy];
    v5 = [v2 bytes];
    [v4 bytes];
    [v4 length];
    sub_100393A50([v3 mutableBytes]);
    v6 = [v3 copy];
    v7 = *(v1 + 88);
    *(v1 + 88) = v6;

    v8 = KmlLogger();
    if (sub_10036DC64(v8))
    {
      sub_1003939A0();
      sub_1003757CC();
      sub_100393950();
      _os_log_impl(v9, v10, v11, v12, v13, v14);
    }

    ++*(v1 + 10);
    v15 = KmlLogger();
    if (sub_10036DC64(v15))
    {
      sub_1003939A0();
      sub_100393964();
      _os_log_impl(v16, v17, v18, v19, v20, 0x18u);
    }

    *(v1 + 9) = 0;
  }

  sub_100393A70();
}

uint64_t sub_1003DAC74(uint64_t result)
{
  if (result)
  {
    return *(result + 18);
  }

  return result;
}

uint64_t sub_1003DAC80(uint64_t result)
{
  if (result)
  {
    return *(result + 9);
  }

  return result;
}

uint64_t sub_1003DAC8C(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_1003DAC98(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 13);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003DACB0(uint64_t result)
{
  if (result)
  {
    return *(result + 200);
  }

  return result;
}

uint64_t sub_1003DACBC(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 14);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003DACD4(uint64_t result)
{
  if (result)
  {
    return *(result + 15);
  }

  return result;
}

BOOL sub_1003DACE0(_BOOL8 result)
{
  if (result)
  {
    return *(result + 32) && *(result + 40) == 0;
  }

  return result;
}

uint64_t sub_1003DAD04(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

uint64_t sub_1003DAD10(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

uint64_t sub_1003DAD1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

uint64_t sub_1003DAD28(uint64_t result, __int16 a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_1003DAD34(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_1003DAD40(uint64_t result, __int16 a2)
{
  if (result)
  {
    *(result + 18) = a2;
  }

  return result;
}

void sub_1003DAD4C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

uint64_t sub_1003DAD5C(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 10) = a2;
  }

  return result;
}

uint64_t sub_1003DAD68(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 11) = a2;
  }

  return result;
}

uint64_t sub_1003DAD74(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

void sub_1003DAD80(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 136), a2);
  }
}

void sub_1003DAD90(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 144), a2);
  }
}

void sub_1003DADA0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

void sub_1003DADB0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 160), a2);
  }
}

uint64_t sub_1003DADC0(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 13) = a2;
  }

  return result;
}

void sub_1003DADCC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 168), a2);
  }
}

void sub_1003DADDC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 176), a2);
  }
}

void sub_1003DADEC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 184), a2);
  }
}

uint64_t sub_1003DADFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 192) = a2;
  }

  return result;
}

uint64_t sub_1003DAE08(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 200) = a2;
  }

  return result;
}

uint64_t sub_1003DAE14(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 14) = a2;
  }

  return result;
}

uint64_t sub_1003DAE20(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 15) = a2;
  }

  return result;
}

void sub_1003DAE2C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 24));
    v2 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10039540C;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_sync(v2, block);
  }
}

void sub_1003DAEB8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4 && v4[20])
    {
      sub_1003963CC();
      v7[1] = 3221225472;
      v7[2] = sub_10039641C;
      v7[3] = &unk_1004C22F0;
      v7[4] = a1;
      v8 = v5;
      dispatch_async(v2, v7);
    }

    else
    {
      v6 = KmlLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v10 = "[KmlSharingRecordsUpdater updateConfig:]";
        v11 = 1024;
        v12 = 263;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Invalid sharing config. Ignore it", buf, 0x12u);
      }
    }
  }
}

void sub_1003DAFF0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100394E0C;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_sync(v1, block);
  }
}

void sub_1003DB06C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 24));
    sub_1003963CC();
    v5[1] = 3221225472;
    v5[2] = sub_100395E70;
    v5[3] = &unk_1004C22F0;
    v5[4] = a1;
    v6 = v4;
    dispatch_sync(v2, v5);
  }
}

id sub_1003DB100(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 104))
    {
      [*(a1 + 16) appendData:v3];
      a1 = 0;
    }

    else
    {
      [*(a1 + 8) appendData:v3];
      a1 = sub_1003DB17C(a1);
    }
  }

  return a1;
}

id sub_1003DB17C(uint64_t a1)
{
  if (a1)
  {
    v5 = [KmlTlv TLVsWithData:*(a1 + 8)];
    [*(a1 + 8) setLength:0];
    sub_1003970DC();
    obj = v5;
    v6 = [obj countByEnumeratingWithState:v252 objects:v273 count:16];
    if (!v6)
    {
      v9 = 0;
      goto LABEL_66;
    }

    v8 = v6;
    v9 = 0;
    v251 = *v254;
    *&v7 = 136315650;
    v249 = v7;
    *&v7 = 136315394;
    v248 = v7;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v254 != v251)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(v253 + 8 * v10);
        if ([v11 tag] == 32586)
        {
          if (*(a1 + 56))
          {
            v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            v269 = NSLocalizedDescriptionKey;
            v12 = [NSString stringWithUTF8String:KmlErrorString()];
            v270 = v12;
            v1 = [NSDictionary dictionaryWithObjects:&v270 forKeys:&v269 count:1];
            v3 = [NSError errorWithDomain:v2 code:3 userInfo:v1];

            v13 = KmlLogger();
            if (sub_1003970EC(v13))
            {
              v14 = [v11 value];
              v15 = kmlUtilHexStringFromData();
              sub_100396F64(v15, v16, v17, v18, v19, v20, v21, v22, v248, *(&v248 + 1), v249);
              sub_100396ED4(v23);
              sub_100396E9C(v24, v25);
              sub_100397078();
              v30 = "%s : %i : KeyCreationConfig: Received Duplicated Endpoint creation Data : %@";
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          v126 = KmlLogger();
          if (sub_100367508(v126))
          {
            v2 = [v11 value];
            v127 = kmlUtilHexStringFromData();
            sub_100396F64(v127, v128, v129, v130, v131, v132, v133, v134, v248, *(&v248 + 1), v249);
            sub_100396ED4(v135);
            sub_100396E9C(v136, v137);
            sub_10036F240();
            _os_log_impl(v138, v139, v140, "%s : %i : KeyCreationConfig: Received Endpoint creation Data : %@", v141, 0x1Cu);
          }

          v142 = [v11 value];
          v143 = *(a1 + 56);
          *(a1 + 56) = v142;

          v144 = [KmlTlv TLVsWithData:*(a1 + 56)];
          v145 = [NSMutableArray arrayWithArray:v144];
          v146 = *(a1 + 72);
          *(a1 + 72) = v145;

          v147 = sub_1003DC464(a1);
          v148 = *(a1 + 96);
          *(a1 + 96) = v147;

          v149 = sub_1003DC544(a1);
          v83 = *(a1 + 112);
          *(a1 + 112) = v149;
LABEL_50:

          goto LABEL_51;
        }

        if ([v11 tag] == 32587)
        {
          if (*(a1 + 144))
          {
            [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            objc_claimAutoreleasedReturnValue();
            sub_100397084();
            v267 = v31;
            v32 = [NSString stringWithUTF8String:KmlErrorString()];
            v268 = v32;
            [NSDictionary dictionaryWithObjects:&v268 forKeys:&v267 count:1];
            objc_claimAutoreleasedReturnValue();
            v3 = [sub_100396EF8() errorWithDomain:? code:? userInfo:?];

            v33 = KmlLogger();
            if (sub_1003970EC(v33))
            {
              v14 = [v11 value];
              v15 = kmlUtilHexStringFromData();
              sub_100396F64(v15, v34, v35, v36, v37, v38, v39, v40, v248, *(&v248 + 1), v249);
              sub_100396ED4(v41);
              sub_100396E9C(v42, v43);
              sub_100397078();
              v30 = "%s : %i : KeyCreationConfig: Received Duplicated remote public key : %@";
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          v81 = [v11 value];
          kmlUtilLogLargeData();

          v82 = [v11 value];
          v83 = *(a1 + 144);
          *(a1 + 144) = v82;
          goto LABEL_50;
        }

        if ([v11 tag] == 32588)
        {
          if (*(a1 + 24))
          {
            [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            objc_claimAutoreleasedReturnValue();
            sub_100397084();
            v265 = v44;
            KmlErrorString();
            v45 = [sub_10039719C() stringWithUTF8String:?];
            v266 = v45;
            [NSDictionary dictionaryWithObjects:&v266 forKeys:&v265 count:1];
            objc_claimAutoreleasedReturnValue();
            v46 = [sub_100396EF8() errorWithDomain:? code:? userInfo:?];

            v47 = KmlLogger();
            v48 = sub_1003970EC(v47);
            if (v48)
            {
              sub_100396F90(v48, v49, v50, v51, v52, v53, v54, v55, v248);
              sub_100396ED4(v56);
              sub_100397090(v57);
              sub_100397078();
              v62 = "%s : %i : KeyCreationConfig: Received Duplicated chain cert part.";
              goto LABEL_21;
            }

            goto LABEL_26;
          }

          v97 = KmlLogger();
          v98 = sub_100367508(v97);
          if (v98)
          {
            sub_100396F90(v98, v99, v100, v101, v102, v103, v104, v105, v248);
            sub_100396ED4(v106);
            sub_100397090(v107);
            sub_10036F240();
            _os_log_impl(v108, v109, v110, "%s : %i : KeyCreationConfig: Received chain cert part.", v111, 0x12u);
          }

          v112 = [v11 value];
          v83 = *(a1 + 24);
          *(a1 + 24) = v112;
          goto LABEL_50;
        }

        if ([v11 tag] == 32589)
        {
          if (*(a1 + 40))
          {
            [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            objc_claimAutoreleasedReturnValue();
            sub_100397084();
            v263 = v63;
            KmlErrorString();
            v64 = [sub_10039719C() stringWithUTF8String:?];
            v264 = v64;
            [NSDictionary dictionaryWithObjects:&v264 forKeys:&v263 count:1];
            objc_claimAutoreleasedReturnValue();
            v46 = [sub_100396EF8() errorWithDomain:? code:? userInfo:?];

            v65 = KmlLogger();
            if (sub_1003970EC(v65))
            {
              v66 = kmlUtilHexStringFromData();
              sub_100396F64(v66, v67, v68, v69, v70, v71, v72, v73, v248, *(&v248 + 1), v249);
              sub_100396ED4(v74);
              sub_100396E9C(v75, v76);
              sub_100397078();
              _os_log_impl(v77, v78, v79, "%s : %i : KeyCreationConfig: Received Duplicated Mailbox mapping : %@", v80, 0x1Cu);
            }

            goto LABEL_26;
          }

          v150 = [v11 asData];
          v151 = *(a1 + 40);
          *(a1 + 40) = v150;

          v152 = KmlLogger();
          if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
          {
            v153 = kmlUtilHexStringFromData();
            sub_100396F64(v153, v154, v155, v156, v157, v158, v159, v160, v248, *(&v248 + 1), v249);
            sub_100396ED4(v161);
            sub_100396E9C(v162, v163);
            _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_INFO, "%s : %i : KeyCreationConfig: Received Mailbox mapping : %@", v164, 0x1Cu);
          }

          goto LABEL_59;
        }

        if ([v11 tag] == 32590)
        {
          if (*(a1 + 48))
          {
            [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            objc_claimAutoreleasedReturnValue();
            sub_100397084();
            v261 = v84;
            v85 = [NSString stringWithUTF8String:KmlErrorString()];
            v262 = v85;
            [NSDictionary dictionaryWithObjects:&v262 forKeys:&v261 count:1];
            objc_claimAutoreleasedReturnValue();
            v3 = [sub_100396EF8() errorWithDomain:? code:? userInfo:?];

            v86 = KmlLogger();
            if (sub_1003970EC(v86))
            {
              v14 = [v11 value];
              v15 = kmlUtilHexStringFromData();
              sub_100396F64(v15, v87, v88, v89, v90, v91, v92, v93, v248, *(&v248 + 1), v249);
              sub_100396ED4(v94);
              sub_100396E9C(v95, v96);
              sub_100397078();
              v30 = "%s : %i : KeyCreationConfig: Received Duplicated device config : %@";
LABEL_15:
              _os_log_impl(v26, v27, v28, v30, v29, 0x1Cu);
            }

LABEL_16:

            v9 = v3;
            goto LABEL_51;
          }

          v184 = KmlLogger();
          if (sub_100367508(v184))
          {
            v185 = [v11 value];
            v1 = kmlUtilHexStringFromData();
            sub_100396F64(v1, v186, v187, v188, v189, v190, v191, v192, v248, *(&v248 + 1), v249);
            sub_100396ED4(v193);
            sub_100396E9C(v194, v195);
            sub_10036F240();
            _os_log_impl(v196, v197, v198, "%s : %i : KeyCreationConfig: Received device config : %@", v199, 0x1Cu);
          }

          v200 = [v11 value];
          v201 = *(a1 + 48);
          *(a1 + 48) = v200;

          v202 = [KmlTlv TLVsWithData:*(a1 + 48)];
          v83 = *(a1 + 80);
          *(a1 + 80) = v202;
          goto LABEL_50;
        }

        [v11 tag];
        if (!isEndOfKeyConfigTag())
        {
          if ([v11 tag] != 0xFFFF)
          {
            [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            objc_claimAutoreleasedReturnValue();
            sub_100397084();
            v255 = v165;
            v166 = [NSString stringWithUTF8String:KmlErrorString()];
            v256 = v166;
            [NSDictionary dictionaryWithObjects:&v256 forKeys:&v255 count:1];
            objc_claimAutoreleasedReturnValue();
            v3 = [sub_100397104() errorWithDomain:? code:? userInfo:?];

            v167 = KmlLogger();
            if (sub_1003970EC(v167))
            {
              v168 = [v11 tag];
              sub_100396F64(v168, v169, v170, v171, v172, v173, v174, v175, v248, *(&v248 + 1), v249);
              sub_100396ED4(v176);
              *(v177 + 14) = 290;
              v271 = v178;
              v272 = v179;
              sub_100397078();
              _os_log_impl(v180, v181, v182, "%s : %i : KeyCreationConfig: TLV with un-expected tag (0x%04x)", v183, 0x18u);
            }

            goto LABEL_16;
          }

          v218 = KmlLogger();
          v219 = sub_100367508(v218);
          if (v219)
          {
            sub_100396F90(v219, v220, v221, v222, v223, v224, v225, v226, v248);
            sub_100396ED4(v227);
            sub_100397090(v228);
            sub_10036F240();
            _os_log_impl(v229, v230, v231, "%s : %i : KeyCreationConfig: Received partial data TLV", v232, 0x12u);
          }

          v233 = *(a1 + 8);
          v152 = [v11 value];
          [v233 appendData:v152];
LABEL_59:

          goto LABEL_51;
        }

        if (*(a1 + 128))
        {
          [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          objc_claimAutoreleasedReturnValue();
          sub_100397084();
          v257 = v113;
          KmlErrorString();
          v114 = [sub_10039719C() stringWithUTF8String:?];
          v258 = v114;
          [NSDictionary dictionaryWithObjects:&v258 forKeys:&v257 count:1];
          objc_claimAutoreleasedReturnValue();
          v46 = [sub_100396EF8() errorWithDomain:? code:? userInfo:?];

          v115 = KmlLogger();
          v116 = sub_1003970EC(v115);
          if (v116)
          {
            sub_100396F90(v116, v117, v118, v119, v120, v121, v122, v123, v248);
            sub_100396ED4(v124);
            sub_100397090(v125);
            sub_100397078();
            v62 = "%s : %i : KeyCreationConfig: Received Duplicated Data Complete TLV";
            goto LABEL_21;
          }

          goto LABEL_26;
        }

        v203 = [v11 value];
        v204 = [v203 length];

        if (v204)
        {
          [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          objc_claimAutoreleasedReturnValue();
          sub_100397084();
          v259 = v205;
          KmlErrorString();
          v206 = [sub_10039719C() stringWithUTF8String:?];
          v260 = v206;
          [NSDictionary dictionaryWithObjects:&v260 forKeys:&v259 count:1];
          objc_claimAutoreleasedReturnValue();
          v46 = [sub_100397104() errorWithDomain:? code:? userInfo:?];

          v207 = KmlLogger();
          v208 = sub_1003970EC(v207);
          if (v208)
          {
            sub_100396F90(v208, v209, v210, v211, v212, v213, v214, v215, v248);
            sub_100396ED4(v216);
            sub_100397090(v217);
            sub_100397078();
            v62 = "%s : %i : KeyCreationConfig: Received Invalid Data after EndOfKeyConfigTag";
LABEL_21:
            _os_log_impl(v58, v59, v60, v62, v61, 0x12u);
          }

LABEL_26:

          v9 = v46;
          goto LABEL_51;
        }

        v234 = KmlLogger();
        v235 = os_log_type_enabled(v234, OS_LOG_TYPE_INFO);
        if (v235)
        {
          sub_100396F90(v235, v236, v237, v238, v239, v240, v241, v242, v248);
          sub_100396ED4(v243);
          sub_100397090(v244);
          _os_log_impl(&_mh_execute_header, v234, OS_LOG_TYPE_INFO, "%s : %i : KeyCreationConfig: Received Data Complete TLV", v245, 0x12u);
        }

        *(a1 + 128) = 1;
LABEL_51:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v246 = [obj countByEnumeratingWithState:v252 objects:v273 count:16];
      v8 = v246;
      if (!v246)
      {
LABEL_66:

        goto LABEL_67;
      }
    }
  }

  v9 = 0;
LABEL_67:

  return v9;
}

void sub_1003DBE38(uint64_t a1, void *a2)
{
  v7 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
    v4 = [KmlTlv TLVsWithData:*(a1 + 56)];
    v5 = [NSMutableArray arrayWithArray:v4];
    v6 = *(a1 + 72);
    *(a1 + 72) = v5;
  }
}

void sub_1003DBED8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (![*(a1 + 56) length])
    {
      v18 = KmlLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v24 = 136315394;
        sub_100389B3C(v24);
        v25 = v19;
        *(v20 + 14) = 178;
        sub_10036DC0C(&_mh_execute_header, v18, v21, "%s : %i : We don't have endpointCreationData, so first absorb all SiaC data", v24);
      }

      sub_1003DBE38(a1, v3);
    }

    v4 = [KmlTlv TLVsWithData:v3];
    v5 = +[NSMutableData data];
    sub_100396F74();
    v6 = v4;
    sub_1003970A8();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          sub_100396FA0();
          if (v12 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(v22 + 8 * v11);
          if ([v13 tag] == 74 || objc_msgSend(v13, "tag") == 75)
          {
            v14 = [v13 asData];
            [v5 appendData:v14];
          }

          else if ([v13 tag] == 70)
          {
            *(a1 + 129) = [v13 valueAsUnsignedChar];
          }

          else if ([v13 tag] == 71)
          {
            *(a1 + 130) = [v13 valueAsUnsignedChar];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        sub_1003970A8();
        v15 = [v6 countByEnumeratingWithState:? objects:? count:?];
        v9 = v15;
      }

      while (v15);
    }

    v16 = *(a1 + 72);
    v17 = [KmlTlv TLVWithTag:96 value:v5];
    [v16 addObject:v17];
  }
}

void sub_1003DC12C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    [KmlTlv TLVsWithData:a2];
    objc_claimAutoreleasedReturnValue();
    sub_100396F74();
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:v22 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22[2];
      while (2)
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          sub_100396FA0();
          if (v9 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(v22[1] + 8 * i);
          v11 = [v10 tag];
          if (v11 == 32586)
          {
            v13 = KmlLogger();
            if (sub_10036F124(v13))
            {
              v14 = [v10 value];
              v15 = kmlUtilHexStringFromData();
              v23 = 136315650;
              v24 = "[KmlEndpointCreationConfig setEndpointConfigSiacDataForUpgrade:]";
              v25 = 1024;
              v26 = 204;
              v27 = 2112;
              v28 = v15;
              sub_100367454(&_mh_execute_header, v6, v16, "%s : %i : Received Endpoint creation Data for Upgrade: %@", &v23);
            }

            v17 = [v10 value];
            v18 = *(a1 + 56);
            *(a1 + 56) = v17;

            v19 = [KmlTlv TLVsWithData:*(a1 + 56)];
            v20 = [NSMutableArray arrayWithArray:v19];
            v21 = *(a1 + 72);
            *(a1 + 72) = v20;

            goto LABEL_14;
          }
        }

        v6 = sub_100397230(v11, v12, v22, v29);
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

void sub_1003DC320(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
    v5 = +[NSMutableData data];
    sub_100396F74();
    v6 = *(a1 + 80);
    sub_100396F84();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          sub_100396FA0();
          if (v12 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = [*(v15 + 8 * v11) asData];
          [v5 appendData:v13];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        sub_100396F84();
        v9 = [v6 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }

    v14 = *(a1 + 48);
    *(a1 + 48) = v5;
  }
}

id sub_1003DC624(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if ((sub_1003DCB78(a1) & 1) == 0)
    {
      v7 = KmlLogger();
      if (sub_1003970B4(v7))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v44 = 303;
        sub_100396FD4(&_mh_execute_header, v8, v9, "%s : %i : Invalid Endpoint creation Data");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v42 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v11 = [sub_100377D30() stringWithUTF8String:?];
      v43 = v11;
      [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      objc_claimAutoreleasedReturnValue();
      v12 = sub_100397038();
      goto LABEL_6;
    }

    if ((sub_1003DCDA8(a1) & 1) == 0)
    {
      v15 = KmlLogger();
      if (sub_1003970B4(v15))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v44 = 308;
        sub_100396FD4(&_mh_execute_header, v16, v17, "%s : %i : Failed to validate Remote Long Term Certificate");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v40 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v11 = [sub_100377D30() stringWithUTF8String:?];
      v41 = v11;
      [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      objc_claimAutoreleasedReturnValue();
      v12 = sub_100397038();
      goto LABEL_6;
    }

    if ((sub_1003DD42C(a1, a3) & 1) == 0)
    {
      v18 = KmlLogger();
      if (sub_1003970B4(v18))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v44 = 314;
        sub_100396FD4(&_mh_execute_header, v19, v20, "%s : %i : Invalid Mailbox mapping");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v38 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v11 = [sub_100377D30() stringWithUTF8String:?];
      v39 = v11;
      v21 = &v39;
      v22 = &v38;
LABEL_18:
      [NSDictionary dictionaryWithObjects:v21 forKeys:v22 count:1];
      objc_claimAutoreleasedReturnValue();
      v12 = sub_100397038();
LABEL_6:
      v13 = [v12 errorWithDomain:? code:? userInfo:?];

      goto LABEL_7;
    }

    if ((sub_1003DD524(a1, a2, a3) & 1) == 0)
    {
      v23 = KmlLogger();
      if (sub_1003970B4(v23))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v44 = 319;
        sub_100396FD4(&_mh_execute_header, v24, v25, "%s : %i : Invalid device config");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v36 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v11 = [sub_100377D30() stringWithUTF8String:?];
      v37 = v11;
      [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      objc_claimAutoreleasedReturnValue();
      v12 = sub_100397038();
      goto LABEL_6;
    }

    if ((sub_1003DD6E0(a1, a3) & 1) == 0)
    {
      v26 = KmlLogger();
      if (sub_1003970B4(v26))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v44 = 324;
        sub_100396FD4(&_mh_execute_header, v27, v28, "%s : %i : Mailbox is not sized correctly");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v34 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v11 = [sub_100377D30() stringWithUTF8String:?];
      v35 = v11;
      v21 = &v35;
      v22 = &v34;
      goto LABEL_18;
    }

    if ((*(a1 + 128) & 1) == 0)
    {
      v29 = KmlLogger();
      if (sub_1003970B4(v29))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v44 = 329;
        sub_100396FD4(&_mh_execute_header, v30, v31, "%s : %i : Missing Completion tag");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      KmlErrorString();
      v11 = [sub_100377D30() stringWithUTF8String:NSLocalizedDescriptionKey];
      v33 = v11;
      [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      objc_claimAutoreleasedReturnValue();
      v12 = sub_100397038();
      goto LABEL_6;
    }

    v13 = 0;
    *(a1 + 104) = 1;
  }

  else
  {
    v13 = 0;
  }

LABEL_7:

  return v13;
}

uint64_t sub_1003DCB78(uint64_t a1)
{
  v4 = a1;
  if (a1)
  {
    if (*(a1 + 56))
    {
      v1 = objc_alloc_init(NSMutableSet);
      sub_100396F74();
      v5 = *(v4 + 72);
      sub_1003970A8();
      if ([v6 countByEnumeratingWithState:? objects:? count:?])
      {
        sub_1003970CC();
        while (2)
        {
          v7 = 0;
          do
          {
            sub_100396FA0();
            if (v8 != v3)
            {
              objc_enumerationMutation(v5);
            }

            [*(v18 + 8 * v7) tag];
            if ((kmlUtilAddUniqueTagToSet() & 1) == 0)
            {

              goto LABEL_18;
            }

            v7 = v7 + 1;
          }

          while (v2 != v7);
          sub_1003970A8();
          v2 = [v5 countByEnumeratingWithState:? objects:? count:?];
          if (v2)
          {
            continue;
          }

          break;
        }
      }

      v9 = [*(v4 + 120) isSubsetOfSet:v1];
      v10 = KmlLogger();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          sub_100397064("[KmlEndpointCreationConfig isEndpointCreationDataValid]", 4.8151e-34);
          v20 = 483;
          sub_10036DC0C(&_mh_execute_header, v11, v12, "%s : %i : isEndpointCreationDataValid: Received all the required tags.", v19);
        }

        v4 = 1;
        goto LABEL_19;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100397064("[KmlEndpointCreationConfig isEndpointCreationDataValid]", 4.8151e-34);
        v20 = 488;
        sub_10036F500(&_mh_execute_header, v11, v17, "%s : %i : Missing required tags", v19);
      }

      sub_1003DDA5C(v4, *(v4 + 120), v1);
    }

    else
    {
      v13 = KmlLogger();
      if (sub_1003970B4(v13))
      {
        sub_100397064("[KmlEndpointCreationConfig isEndpointCreationDataValid]", 4.8151e-34);
        v20 = 471;
        sub_100397010(&_mh_execute_header, v14, v15, "%s : %i : endpointCreationData is nil", v19);
      }
    }

LABEL_18:
    v4 = 0;
LABEL_19:
  }

  return v4;
}

uint64_t sub_1003DCDA8(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = SecCertificateCreateWithData(0, *(a1 + 144));
    if (!v3)
    {
      goto LABEL_3;
    }

    v5 = sub_1003DD874(v2, v3);
    v6 = KmlLogger();
    if (sub_10036F124(v6))
    {
      *buf = 136315650;
      v83 = "[KmlEndpointCreationConfig isRemoteCertValid]";
      v84 = 1024;
      sub_100396FAC();
      sub_100397054();
      _os_log_impl(v7, v8, v9, v10, v11, 0x1Cu);
    }

    if (!v5)
    {
LABEL_3:
      v2 = 0;
LABEL_4:

      return v2;
    }

    cf = 0;
    SecCertificateCopyCommonName(v3, &cf);
    v12 = cf;
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100396EE4();
      sub_10036F460();
      v87 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s : %i : Received raw readerInfo(CommonName): %@", buf, 0x1Cu);
    }

    v14 = [[KmlRoutingInformation alloc] initWithReaderInformation:v12];
    v15 = *(v2 + 136);
    *(v2 + 136) = v14;

    v16 = [*(v2 + 136) getReaderInformation];
    v17 = *(v2 + 88);
    *(v2 + 88) = v16;

    v18 = KmlLogger();
    if (sub_10036F124(v18))
    {
      sub_100396FC0();
      sub_100396FAC();
      sub_100397054();
      _os_log_impl(v19, v20, v21, v22, v23, 0x1Cu);
    }

    if (!*(v2 + 112) || ([*(v2 + 136) readerIdentifier], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "isEqualToData:", *(v2 + 112)), v24, (v25 & 1) == 0))
    {
      v46 = KmlLogger();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_100396EE4();
        v85 = 368;
        sub_10036F500(&_mh_execute_header, v46, v47, "%s : %i : Reader Id mismatch.", buf);
      }

      v48 = KmlLogger();
      if (sub_10036F124(v48))
      {
        v49 = [*(v2 + 136) readerIdentifier];
        sub_100396FC0();
        v85 = 369;
        v86 = 2112;
        v87 = v50;
        v88 = 2112;
        v89 = v51;
        sub_100397054();
        _os_log_impl(v52, v53, v54, v55, v56, 0x26u);
      }

      v2 = 0;
      goto LABEL_54;
    }

    v26 = SecCertificateGetAuthorityKeyID();
    v27 = KmlLogger();
    if (sub_10036F124(v27))
    {
      v28 = kmlUtilHexStringFromData();
      sub_100396EE4();
      sub_10036F460();
      v87 = v29;
      sub_100397054();
      _os_log_impl(v30, v31, v32, v33, v34, 0x1Cu);
    }

    if (!v26)
    {
      HIBYTE(v81) = 0;
LABEL_53:
      v2 = HIBYTE(v81);
LABEL_54:

      goto LABEL_4;
    }

    v35 = objc_opt_new();
    [v35 addObject:v3];
    v36 = *(v2 + 24);
    if (v36)
    {
      v37 = SecCertificateCreateWithData(0, v36);
      if (!v37)
      {
        HIBYTE(v81) = 0;
        v41 = v26;
LABEL_52:

        goto LABEL_53;
      }

      v38 = v37;
      cf = 0;
      SecCertificateCopyCommonName(v37, &cf);
      v39 = KmlLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        sub_100396FC0();
        sub_100396FAC();
        sub_100367454(&_mh_execute_header, v39, v40, "%s : %i : Intermediate certificate CommonName: %@", buf);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      [v35 addObject:v38];
      v41 = SecCertificateGetAuthorityKeyID();

      v42 = KmlLogger();
      if (sub_100377D6C(v42))
      {
        v43 = kmlUtilHexStringFromData();
        sub_100396EE4();
        sub_10036F460();
        v87 = v44;
        sub_100367454(&_mh_execute_header, v26, v45, "%s : %i : Intermediate certificateAuthorityKeyID=%@", buf);
      }
    }

    else
    {
      v38 = 0;
      v41 = v26;
    }

    v57 = objc_opt_new();
    v58 = [*(v2 + 136) manufacturer];
    v59 = [v57 getRootCertificateFor:v58 keyId:v41];
    v60 = *(v2 + 32);
    *(v2 + 32) = v59;

    v61 = *(v2 + 32);
    if (v61)
    {
      v62 = SecCertificateCreateWithData(0, v61);
      v63 = v62;
      if (v62)
      {
        cf = 0;
        SecCertificateCopyCommonName(v62, &cf);
        v64 = KmlLogger();
        if (sub_100377D6C(v64))
        {
          sub_100396FC0();
          sub_100396FAC();
          sub_100367454(&_mh_execute_header, v57, v65, "%s : %i : Root certificate CommonName: %@", buf);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v57 = SecCertificateCopyIssuerSummary();
        v66 = KmlLogger();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          sub_100396EE4();
          sub_10036F460();
          v87 = v57;
          sub_100367454(&_mh_execute_header, v66, v67, "%s : %i : rootCert certificateIssuer=%@", buf);
        }

        v68 = sub_100396990(KmlEndpointCreationConfig, v63, v35);
      }

      else
      {
        v78 = KmlLogger();
        if (sub_100377D6C(v78))
        {
          sub_100396EE4();
          v85 = 433;
          sub_10036DC0C(&_mh_execute_header, v57, v79, "%s : %i : Root certificate is nil", buf);
        }

        v68 = 0;
      }

      HIBYTE(v81) = v68;
    }

    else
    {
      v69 = KmlLogger();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = kmlUtilHexStringFromData();
        sub_100396EE4();
        sub_10036F460();
        v87 = v71;
        sub_1003971C0(&_mh_execute_header, v72, v73, "%s : %i : Got nil certificate for issuer %@", v74, v75, v76, v77, cf, v81);
      }

      HIBYTE(v81) = 0;
    }

    goto LABEL_52;
  }

  return v2;
}

id sub_1003DD42C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 40))
    {
      v3 = [[KmlMailboxMappingData alloc] initWithData:*(a1 + 40) preferredVersion:a2];
      v4 = [v3 isValid];

      return v4;
    }

    v6 = KmlLogger();
    if (sub_1003970B4(v6))
    {
      sub_10036DB8C();
      v10 = 496;
      sub_100397010(&_mh_execute_header, v7, v8, "%s : %i : mailboxMappingData is nil", v9);
    }
  }

  return 0;
}

id sub_1003DD524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    v3 = objc_alloc_init(NSMutableSet);
    sub_100396F74();
    v7 = *(a1 + 80);
    sub_1003970A8();
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        v12 = 0;
        do
        {
          sub_100396FA0();
          if (v13 != v11)
          {
            objc_enumerationMutation(v7);
          }

          [*(v21 + 8 * v12) tag];
          if (!kmlUtilAddUniqueTagToSet())
          {
            v14 = 0;
            goto LABEL_13;
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        sub_1003970A8();
        v10 = [v7 countByEnumeratingWithState:? objects:? count:?];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 48)];
    v14 = [v7 isValidForKmlVersion:a3 transport:a2];
LABEL_13:
  }

  else
  {
    v15 = KmlLogger();
    if (sub_1003970B4(v15))
    {
      *v23 = 136315394;
      sub_100389B3C(v23);
      v24 = v16;
      *(v17 + 14) = 509;
      sub_100397010(&_mh_execute_header, v18, v19, "%s : %i : deviceConfigData is nil", v23);
    }

    v14 = 0;
  }

  return v14;
}

uint64_t sub_1003DD6E0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    if (*(a1 + 48) && *(a1 + 40))
    {
      v2 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 48)];
      v5 = [[KmlMailboxMappingData alloc] initWithData:*(v3 + 40) preferredVersion:a2];
      v6 = [v2 maxOfflineAttestationCount];
      v7 = ([v5 attestationPackageLength] * v6);
      v8 = [v5 mailboxEndOffset];
      v9 = [v5 keyAttestationStartOffset];
      v10 = v7 > (v8 - v9);
      v3 = v7 <= (v8 - v9);
      if (v10)
      {
        v11 = KmlLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10036DB8C();
          v18 = 541;
          sub_10036F500(&_mh_execute_header, v11, v12, "%s : %i : There isn't enough space in the mailbox for the requested number of attestations", v17);
        }
      }
    }

    else
    {
      v13 = KmlLogger();
      if (sub_1003970B4(v13))
      {
        sub_10036DB8C();
        v18 = 530;
        sub_100397010(&_mh_execute_header, v14, v15, "%s : %i : Missing deviceConfig or mailboxMappingData", v17);
      }

      v3 = 0;
    }
  }

  return v3;
}

id *sub_1003DD874(id *a1, __SecCertificate *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    if (a2 && (v4 = a1[12]) != 0 && [v4 length])
    {
      if (*[v2[12] bytes] != 4)
      {
        return 0;
      }

      v5 = SecCertificateCopyKey(v3);
      v3 = v5;
      if (v5)
      {
        error = 0;
        v6 = SecKeyCopyExternalRepresentation(v5, &error);
        v7 = v6;
        if (v6)
        {
          v2 = [(__CFData *)v6 isEqualToData:v2[12]];
        }

        else
        {
          v14 = error;
          v15 = KmlLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            sub_10036DC30();
            sub_10036F460();
            v26 = v14;
            sub_1003971C0(&_mh_execute_header, v16, v17, "%s : %i : SecKeyCopyExternalRepresentation() failed. error: %@", v18, v19, v20, v21, v22, error);
          }

          v2 = 0;
        }

        goto LABEL_12;
      }

      v12 = KmlLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        sub_10036DC30();
        v25 = 453;
        sub_10036F500(&_mh_execute_header, v12, v13, "%s : %i : SecCertificateCopyPublicKey() failed.", buf);
      }
    }

    else
    {
      v8 = KmlLogger();
      if (sub_1003970B4(v8))
      {
        *buf = 136315394;
        sub_10036DC30();
        v25 = 442;
        sub_100397010(&_mh_execute_header, v9, v10, "%s : %i : leafCert or/and readerPK is nil", buf);
      }
    }

    v2 = 0;
LABEL_12:
  }

  return v2;
}

void sub_1003DDA5C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v26 = v6;
    v8 = [[NSMutableSet alloc] initWithSet:v6];
    v25 = v7;
    [v8 minusSet:v7];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v29;
      *&v11 = 136315650;
      v27 = v11;
      do
      {
        v14 = 0;
        do
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v28 + 1) + 8 * v14);
          v16 = KmlLogger();
          if (sub_100377D6C(v16))
          {
            v17 = [v15 unsignedIntegerValue];
            *buf = v27;
            *&buf[4] = "[KmlEndpointCreationConfig logMissingRequiredTags:receivedTagsSet:]";
            *&buf[12] = 1024;
            *&buf[14] = 936;
            *&buf[18] = 2048;
            *&buf[20] = v17;
            _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : KmlEndpointCreationConfig: Missing required tag: 0x%lx", buf, 0x1Cu);
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = sub_100397128(v18, v19, &v28, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), *buf, *&buf[8], *&buf[16], *&buf[24]);
      }

      while (v12);
    }

    v7 = v25;
    v6 = v26;
  }
}

id sub_1003DE134(id result)
{
  if (result)
  {
    return sub_1003DE144(result, 75);
  }

  return result;
}

id sub_1003DE144(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  sub_1003970DC();
  v6 = *(v5 + 72);
  sub_1003971A8();
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = *v46;
    while (2)
    {
      v3 = 0;
      do
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v2 = *v45;
        if ([*v45 tag] == 96)
        {
          v8 = [v2 value];
          goto LABEL_13;
        }

        sub_10039711C();
      }

      while (!v10);
      sub_1003971A8();
      v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if ([v8 length])
  {
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v52 = 136315650;
      sub_100389B3C(v52);
      v53 = v12;
      sub_100397188(v13);
      sub_100367454(&_mh_execute_header, v11, v14, "%s : %i : found override %@", v52);
    }

    [KmlTlv TLVsWithData:v8];
    objc_claimAutoreleasedReturnValue();
    sub_100396F74();
    v16 = v15;
    if (sub_1003971E0(v16, v17, v18, v19, v20, v21, v22, v23, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51))
    {
      sub_1003970CC();
      while (2)
      {
        v24 = 0;
        do
        {
          sub_100396FA0();
          if (v25 != v3)
          {
            objc_enumerationMutation(v11);
          }

          v26 = *(v37 + 8 * v24);
          v27 = [v26 tag];
          if (v27 == a2)
          {
            v34 = [v26 valueAsUnsignedShort];
            goto LABEL_26;
          }

          v24 = v24 + 1;
        }

        while (v2 != v24);
        v2 = sub_100397128(v27, v28, &v36, v29, v30, v31, v32, v33, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
        if (v2)
        {
          continue;
        }

        break;
      }
    }

    v34 = 0;
LABEL_26:
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

id sub_1003DE360(id result)
{
  if (result)
  {
    return sub_1003DE144(result, 74);
  }

  return result;
}

id sub_1003DE370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  sub_100397218();
  if (v11)
  {
    v12 = v11;
    v13 = +[NSMutableData data];
    sub_100396F74();
    v14 = *(v12 + 72);
    sub_100396F84();
    v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
    if (v16)
    {
      v17 = v16;
      v18 = *a11;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          sub_100396FA0();
          if (v20 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(a10 + 8 * i);
          if ([v21 tag] == 74 || objc_msgSend(v21, "tag") == 75 || objc_msgSend(v21, "tag") == 96)
          {
            v22 = [v21 asData];
            [v13 appendData:v22];
          }
        }

        sub_100396F84();
        v17 = sub_100397230(v23, v24, v25, v26);
      }

      while (v17);
    }
  }

  sub_100397200();

  return v27;
}

id sub_1003DE81C(void *a1)
{
  if (a1)
  {
    a1 = sub_1003DE850(a1, 74);
    v1 = vars8;
  }

  return a1;
}

id sub_1003DE850(uint64_t a1, int a2)
{
  if (a1)
  {
    sub_1003970DC();
    v6 = *(v5 + 80);
    sub_1003971A8();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = *v46;
      while (2)
      {
        v3 = 0;
        do
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v2 = *v45;
          if ([*v45 tag] == 96)
          {
            v8 = [v2 value];
            goto LABEL_13;
          }

          sub_10039711C();
        }

        while (!v10);
        sub_1003971A8();
        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    if ([v8 length])
    {
      v11 = KmlLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v52 = 136315650;
        sub_100389B3C(v52);
        v53 = v12;
        sub_100397188(v13);
        sub_100367454(&_mh_execute_header, v11, v14, "%s : %i : found override %@", v52);
      }

      [KmlTlv TLVsWithData:v8];
      objc_claimAutoreleasedReturnValue();
      sub_100396F74();
      v16 = v15;
      if (sub_1003971E0(v16, v17, v18, v19, v20, v21, v22, v23, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51))
      {
        sub_1003970CC();
        while (2)
        {
          v24 = 0;
          do
          {
            sub_100396FA0();
            if (v25 != v3)
            {
              objc_enumerationMutation(v11);
            }

            v26 = *(v37 + 8 * v24);
            v27 = [v26 tag];
            if (v27 == a2)
            {
              v34 = [v26 value];
              goto LABEL_26;
            }

            v24 = v24 + 1;
          }

          while (v2 != v24);
          v2 = sub_100397128(v27, v28, &v36, v29, v30, v31, v32, v33, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
          if (v2)
          {
            continue;
          }

          break;
        }
      }

      v34 = 0;
LABEL_26:
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

id sub_1003DEA80(void *a1)
{
  if (a1)
  {
    a1 = sub_1003DE850(a1, 75);
    v1 = vars8;
  }

  return a1;
}

id *sub_1003DEB94(id *a1)
{
  if (a1)
  {
    a1 = [a1[5] copy];
    v1 = vars8;
  }

  return a1;
}

id *sub_1003DEBC4(id *a1)
{
  if (a1)
  {
    a1 = [a1[6] copy];
    v1 = vars8;
  }

  return a1;
}

id sub_1003DEBF4(uint64_t a1)
{
  if (a1)
  {
    [KmlTlv TLVsWithData:*(a1 + 16)];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v1 = v23 = 0u;
    v2 = [v1 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v2)
    {
      v4 = v2;
      v5 = *v21;
      *&v3 = 136315650;
      v19 = v3;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(v1);
          }

          v7 = *(*(&v20 + 1) + 8 * i);
          [v7 tag];
          if (isDeviceKeyAttestationTag())
          {
            v14 = KmlLogger();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v7 value];
              v16 = kmlUtilHexStringFromData();
              *buf = v19;
              v25 = "[KmlEndpointCreationConfig getKeyAttestation]";
              v26 = 1024;
              v27 = 863;
              v28 = 2112;
              v29 = v16;
              sub_100367454(&_mh_execute_header, v14, v17, "%s : %i : KeyCreationConfig: Received key attestation Data : %@", buf);
            }

            v13 = [v7 value];
            goto LABEL_21;
          }

          [v7 tag];
          v8 = isEndOfKeyConfigTag();
          v9 = KmlLogger();
          v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
          if (v8)
          {
            if (v10)
            {
              *buf = 136315394;
              v25 = "[KmlEndpointCreationConfig getKeyAttestation]";
              v26 = 1024;
              v27 = 866;
              sub_10036DC0C(&_mh_execute_header, v9, v11, "%s : %i : KeyCreationConfig: Received Data Complete TLV", buf);
            }

            goto LABEL_20;
          }

          if (v10)
          {
            v12 = [v7 tag];
            *buf = v19;
            v25 = "[KmlEndpointCreationConfig getKeyAttestation]";
            v26 = 1024;
            v27 = 869;
            v28 = 1024;
            LODWORD(v29) = v12;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : KeyCreationConfig: TLV with un-expected tag (%d)", buf, 0x18u);
          }
        }

        v4 = [v1 countByEnumeratingWithState:&v20 objects:v30 count:16];
        v13 = 0;
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_20:
      v13 = 0;
    }

LABEL_21:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void *sub_1003DEEC8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1[11];
    if (!v2)
    {
      sub_100396EB4();
      v3 = v1[10];
      sub_100396F84();
      v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
      if (v5)
      {
        v6 = v5;
        v7 = *v21;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            sub_100396FA0();
            if (v9 != v7)
            {
              objc_enumerationMutation(v3);
            }

            v10 = *(v20 + 8 * i);
            if ([v10 tag] == 89)
            {
              v11 = [NSString alloc];
              v12 = [v10 value];
              v13 = [v11 initWithData:v12 encoding:4];
              v14 = v1[11];
              v1[11] = v13;
            }
          }

          sub_100396F84();
          v6 = sub_100397230(v15, v16, v17, v18);
        }

        while (v6);
      }

      v2 = v1[11];
    }

    a1 = [v2 copy];
  }

  return a1;
}

uint64_t sub_1003DF2A0(uint64_t result)
{
  if (result)
  {
    return *(result + 129);
  }

  return result;
}

uint64_t sub_1003DF2AC(uint64_t result)
{
  if (result)
  {
    return *(result + 130);
  }

  return result;
}

void *sub_1003DF2B8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = KmlBindingAttestation;
    v4 = objc_msgSendSuper2(&v15, "init");
    a1 = v4;
    if (v4)
    {
      v5 = v4[1];
      v4[1] = 0;

      v6 = a1[2];
      a1[2] = 0;

      v7 = a1[3];
      a1[3] = 0;

      if ([v3 length])
      {
        v8 = [KmlTlv TLVsWithData:v3];
        if ([v8 count])
        {
          v10 = [sub_100397300() objectAtIndexedSubscript:?];
          v11 = [v10 tag];

          if (v11 == 48)
          {
            v12 = [sub_100397300() objectAtIndexedSubscript:?];
            v13 = [v12 value];
            v14 = a1[1];
            a1[1] = v13;
          }
        }

        sub_1003DF474(a1);
        sub_1003DF6E4(a1);
        sub_1003DF9C4(a1);
      }

      else
      {
        v8 = KmlLogger();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v17 = "[KmlBindingAttestation initWithData:]";
          v18 = 1024;
          v19 = 37;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : Null data provided", buf, 0x12u);
        }
      }
    }
  }

  return a1;
}

void sub_1003DF474(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 8) length])
    {
      v2 = [KmlTlv TLVsWithData:*(a1 + 8)];
      if ([v2 count]> 3)
      {
        v10 = [sub_1003963F0() objectAtIndexedSubscript:?];
        v11 = [v10 tag];

        if (v11 == 48)
        {
          v12 = [sub_1003963F0() objectAtIndexedSubscript:?];
          v13 = [v12 value];
          v14 = *(a1 + 16);
          *(a1 + 16) = v13;
        }

        v15 = [sub_100397330() objectAtIndexedSubscript:?];
        v16 = [v15 tag];

        if (v16 == 48)
        {
          v17 = [sub_100397330() objectAtIndexedSubscript:?];
          v18 = [v17 value];
          v19 = *(a1 + 56);
          *(a1 + 56) = v18;
        }

        v20 = [sub_100397318() objectAtIndexedSubscript:?];
        v21 = [v20 tag];

        if (v21 == 48)
        {
          v22 = [sub_100397318() objectAtIndexedSubscript:?];
          v23 = [v22 value];
          v24 = *(a1 + 48);
          *(a1 + 48) = v23;
        }

        v25 = [sub_100397324() objectAtIndexedSubscript:?];
        v26 = [v25 tag];

        if (v26 == 4)
        {
          v27 = [sub_100397324() objectAtIndexedSubscript:?];
          v28 = [v27 value];
          v29 = *(a1 + 40);
          *(a1 + 40) = v28;
        }
      }

      else
      {
        v3 = KmlLogger();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10036DB8C();
          v31 = 66;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s : %i : Not enough elements in the BindingAttestation Sequence", v30, 0x12u);
        }
      }
    }

    else
    {
      v2 = KmlLogger();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10036DB8C();
        v31 = 58;
        sub_1003972E0(&_mh_execute_header, v4, v5, "%s : %i : Missing Binding Attestation sequence", v6, v7, v8, v9);
      }
    }
  }
}

void sub_1003DF6E4(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 16) length];
    v3 = KmlLogger();
    v4 = v3;
    if (!v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10036DB8C();
        sub_1003972E0(&_mh_execute_header, v18, v19, "%s : %i : Missing Attestation Data Sequence", v20, v21, v22, v23);
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      sub_10039730C();
      sub_1003757CC();
      sub_10039733C(&_mh_execute_header, v5, v6, "%s : %i : attestationDataSequence : %@", v7, v8, v9, v10);
    }

    v4 = [KmlTlv TLVsWithData:*(a1 + 16)];
    if ([v4 count] > 4)
    {
      v24 = [sub_1003963F0() objectAtIndexedSubscript:?];
      v25 = [v24 tag];

      if (v25 == 4)
      {
        v26 = [sub_1003963F0() objectAtIndexedSubscript:?];
        v27 = [v26 value];
        v28 = *(a1 + 64);
        *(a1 + 64) = v27;
      }

      v29 = [sub_100397324() objectAtIndexedSubscript:?];
      v30 = [v29 tag];

      if (v30 == 4)
      {
        v31 = [sub_100397324() objectAtIndexedSubscript:?];
        v32 = [v31 value];
        v33 = *(a1 + 72);
        *(a1 + 72) = v32;
      }

      v34 = [v4 objectAtIndexedSubscript:4];
      v35 = [v34 tag];

      if (v35 != 4)
      {
        goto LABEL_19;
      }

      v36 = [v4 objectAtIndexedSubscript:4];
      v37 = [v36 value];
      v11 = [KmlTlv TLVsWithData:v37];

      if ([v11 count])
      {
        v38 = [sub_100397300() objectAtIndexedSubscript:?];
        v39 = [v38 tag];

        if (v39 == 48)
        {
          v40 = [sub_100397300() objectAtIndexedSubscript:?];
          v41 = [v40 value];
          v42 = *(a1 + 24);
          *(a1 + 24) = v41;
        }
      }
    }

    else
    {
      v11 = KmlLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10039730C();
        sub_10039735C(&_mh_execute_header, v12, v13, "%s : %i : Not enough elements in the AttestationData Sequence", v14, v15, v16, v17);
      }
    }

LABEL_19:
  }
}

void sub_1003DF9C4(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 24) length];
    v3 = KmlLogger();
    v4 = v3;
    if (!v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10036DB8C();
        sub_1003972E0(&_mh_execute_header, v18, v19, "%s : %i : Missing Extensions Sequence Data", v20, v21, v22, v23);
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      sub_10039730C();
      sub_1003757CC();
      sub_10039733C(&_mh_execute_header, v5, v6, "%s : %i : extensionSequence : %@", v7, v8, v9, v10);
    }

    v4 = [KmlTlv TLVsWithData:*(a1 + 24)];
    if ([v4 count] > 2)
    {
      v24 = [sub_100397330() objectAtIndexedSubscript:?];
      v25 = [v24 tag];

      if (v25 == 4)
      {
        v26 = [sub_100397330() objectAtIndexedSubscript:?];
        v27 = [v26 value];
        v28 = *(a1 + 80);
        *(a1 + 80) = v27;
      }

      v29 = [sub_100397318() objectAtIndexedSubscript:?];
      v30 = [v29 tag];

      if (v30 != 1)
      {
        goto LABEL_15;
      }

      v11 = [sub_100397318() objectAtIndexedSubscript:?];
      *(a1 + 32) = [v11 valueAsUnsignedChar]!= 0;
    }

    else
    {
      v11 = KmlLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10039730C();
        sub_10039735C(&_mh_execute_header, v12, v13, "%s : %i : Not enough elements in the Extensions Sequence", v14, v15, v16, v17);
      }
    }

LABEL_15:
  }
}

id *sub_1003DFBD4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v25.receiver = a1;
    v25.super_class = KmlEndpointManager;
    a1 = objc_msgSendSuper2(&v25, "init");
    if (a1)
    {
      v7 = [v5 uppercaseString];
      v8 = a1[1];
      a1[1] = v7;

      v9 = kmlUtilDataForHexString();
      v10 = a1[2];
      a1[2] = v9;

      v11 = a1[3];
      a1[3] = 0;

      v12 = a1[5];
      a1[5] = 0;

      v13 = a1[4];
      a1[4] = 0;

      v14 = a1[6];
      a1[6] = 0;

      v15 = a1[7];
      a1[7] = 0;

      v16 = a1[8];
      a1[8] = 0;

      v17 = a1[9];
      a1[9] = 0;

      v18 = a1[10];
      a1[10] = 0;

      v19 = a1[11];
      a1[11] = 0;

      v20 = a1[12];
      a1[12] = 0;

      v21 = a1[13];
      a1[13] = 0;

      v22 = a1[14];
      a1[14] = 0;

      objc_storeStrong(a1 + 17, a3);
      *(a1 + 121) = 0;
      v23 = a1[16];
      a1[16] = 0;

      objc_storeWeak(a1 + 19, 0);
    }
  }

  return a1;
}

id sub_1003DFD34(NSObject *a1, NSObject **a2)
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_1003E01E8(a1);
    v7 = KmlLogger();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        sub_1003939F8();
        sub_10036F484();
        v37 = v6;
        sub_10039A698(&_mh_execute_header, v9, v10, "%s : %i : Error getting endpoint - %@", buf);
      }

      if (a2)
      {
        v11 = v6;
        v12 = 0;
        *a2 = v6;
      }

      else
      {
        v12 = 0;
      }

LABEL_30:

      goto LABEL_31;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v6 = [(objc_class *)v5[3].isa publicKeyIdentifier];
      [(objc_class *)v5[3].isa endPointType];
      *buf = 136315906;
      sub_1003939F8();
      v35 = 563;
      v36 = 2112;
      v37 = v6;
      v38 = v13;
      v39 = v14;
      sub_100390B00();
      _os_log_impl(v15, v16, v17, v18, v19, 0x22u);
    }

    v20 = [(objc_class *)v5[3].isa endPointType];
    if (v20 <= 5)
    {
      if (((1 << v20) & 0x26) != 0)
      {
        v2 = [NSMutableData dataWithLength:16];
        v12 = SESEndPointRevoke();
        v6 = 0;
        v21 = KmlLogger();
        if (sub_1003674CC(v21))
        {
          *buf = 136315394;
          sub_1003939F8();
          v35 = 577;
          sub_10036DC0C(&_mh_execute_header, v3, v22, "%s : %i : Asking seld to initiate delete with TSM", buf);
        }

        v23 = +[NFRemoteAdminManager sharedRemoteAdminManager];
        [v23 queueServerConnection:0];

        v24 = sub_100372C58(KmlOwnerPairingManager, v5[1].isa);
        v3 = v24;
        if (v24)
        {
          sub_1003C2834(v24);
        }

        else
        {
          v5 = sub_10038C140(KmlFriendSharingManager, v5[1].isa);
          sub_1003D1A9C(v5);
        }

        goto LABEL_25;
      }

      if (((1 << v20) & 0x18) != 0)
      {
        SESEndPointDelete();
        v6 = 0;
        v12 = 0;
LABEL_25:
        v30 = KmlLogger();
        if (sub_10036F124(v30))
        {
          v2 = [v6 userInfo];
          *buf = 136315650;
          sub_1003939F8();
          sub_10036F484();
          v37 = v31;
          sub_100367454(&_mh_execute_header, v5, v32, "%s : %i : revokeOrDeleteKey error %@", buf);
        }

        if (a2 && v6)
        {
          [NSString stringWithUTF8String:"com.apple.sesd.kml"];
          objc_claimAutoreleasedReturnValue();
          [sub_10039A750() userInfo];
          objc_claimAutoreleasedReturnValue();
          *a2 = [sub_10039A744() errorWithDomain:v2 code:211 userInfo:v3];
        }

        goto LABEL_30;
      }
    }

    v25 = KmlLogger();
    if (sub_10036F5DC(v25))
    {
      [(objc_class *)v5[3].isa endPointType];
      *buf = 136315650;
      sub_1003939F8();
      v35 = 598;
      v36 = v26;
      LODWORD(v37) = v27;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s : %i : Unknown endpoint of type %d could not be deleted", buf, 0x18u);
    }

    if (a2)
    {
      v28 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      KmlErrorString();
      v5 = [sub_100372244() stringWithUTF8String:?];
      sub_10039A814();
      [v29 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      *a2 = [sub_10039A880() errorWithDomain:? code:? userInfo:?];
    }

    v12 = 0;
    v6 = 0;
    goto LABEL_25;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

id sub_1003E01E8(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v23[0] = 0;
    v4 = sub_1003993B8(KmlEndpointManager, v3, v23);
    v5 = v23[0];
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;

    v7 = [*(a1 + 24) revocationAttestation];

    if (v7)
    {
      v8 = KmlLogger();
      if (sub_10036DCF8(v8))
      {
        v24 = 136315394;
        sub_1003939F8();
        v25 = 1821;
        sub_100390B00();
        _os_log_impl(v9, v10, v11, v12, v13, 0x12u);
      }

      v14 = [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml"];
      v23[1] = NSLocalizedDescriptionKey;
      KmlErrorString();
      v15 = [sub_10039719C() stringWithUTF8String:?];
      v23[2] = v15;
      sub_10039A814();
      [v16 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      v17 = [sub_10039A744() errorWithDomain:v14 code:211 userInfo:v1];

      v5 = v17;
    }

    if (!v5 && !*(a1 + 136))
    {
      v18 = [[KmlVersions alloc] initWithEndpoint:*(a1 + 24)];
      v19 = *(a1 + 136);
      *(a1 + 136) = v18;
    }

    v20 = [*(a1 + 24) deviceConfiguration];
    v21 = *(a1 + 64);
    *(a1 + 64) = v20;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1003E03E8(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    v13 = 0;
    v3 = sub_1003993B8(KmlEndpointManager, v2, &v13);
    v4 = v13;
    v5 = a1[3];
    a1[3] = v3;

    v6 = KmlLogger();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315650;
        v15 = "[KmlEndpointManager localDeleteKey]";
        v16 = 1024;
        sub_10039A96C();
        sub_10036F590(&_mh_execute_header, v7, v8, "%s : %i : Error getting endpoint - %@", &v14);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = a1[1];
        v14 = 136315650;
        v15 = "[KmlEndpointManager localDeleteKey]";
        v16 = 1024;
        v17 = 627;
        v18 = 2112;
        v19 = v10;
        sub_100367454(&_mh_execute_header, v7, v9, "%s : %i : Found Key with id %@, deleting it", &v14);
      }

      SESEndPointDelete();
      v4 = 0;
    }

    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id *sub_1003E0590(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = sub_1003E01E8(a1);
    if (v8)
    {
      v17 = v8;
      v18 = KmlLogger();
      if (sub_10036F5C4(v18))
      {
        *buf = 136315650;
        v267 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
        sub_10039A630();
        sub_10039A5EC(639);
        v271 = v17;
        sub_10039A6C0();
        _os_log_impl(v19, v20, v21, v22, v23, 0x1Cu);
      }

      sub_1003E1C94(a1, v17);
      a1 = v17;
      goto LABEL_132;
    }

    v9 = v6;
    if ((sub_1003E20F4(a1) & 1) == 0)
    {
      v24 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v276 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v25 = [sub_10037BD94() stringWithUTF8String:?];
      v277 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v277 forKeys:&v276 count:1];
      v27 = [NSError errorWithDomain:v24 code:214 userInfo:v26];

      sub_1003E1C94(a1, v27);
      a1 = v27;
LABEL_132:

      goto LABEL_133;
    }

    v10 = +[NSMutableDictionary dictionary];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"additionalData"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"confidentialMailboxData"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"deviceType"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"ephemeralPublicKey"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"groupIdentifier"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"kBleIntroKey"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"kBleOobKey"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"ktsSignature"];
    v250 = v10;
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"slotIdentifier"];
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10039A954(4.8152e-34);
      sub_10039A630();
      sub_10039A5EC(667);
      v271 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s : %i : otherJsonData : %@", buf, 0x1Cu);
    }

    +[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [a1[17] agreedKmlVehicleVersion], 768);
    v257[2] = 0;
    v246 = v7;
    v12 = kmlUtilDecodeJson();
    v248 = 0;
    v13 = KmlVersions;
    v6 = v9;
    if (!+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [a1[17] agreedKmlVehicleVersion], 768))
    {
LABEL_21:
      v41 = [v12 objectForKey:@"kBleIntroKey"];
      v42 = a1[10];
      a1[10] = v41;

      v43 = [v12 objectForKey:@"kBleOobKey"];
      v44 = a1[11];
      a1[11] = v43;

      v45 = KmlLogger();
      if (sub_1003674CC(v45))
      {
        sub_10039A954(4.8153e-34);
        v268 = 1024;
        v269 = 693;
        v270 = 2112;
        v271 = v46;
        v272 = 2112;
        v273 = v47;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Received: BleIntroKey - %@; BleOOBKey - %@;", buf, 0x26u);
      }

      v48 = [v12 objectForKey:@"slotIdentifier"];
      v49 = a1[12];
      a1[12] = v48;

      kmlUtilLogLargeData();
      v50 = [v12 objectForKey:@"confidentialMailboxData"];
      kmlUtilLogLargeData();
      obj = [v12 objectForKey:@"ephemeralPublicKey"];
      kmlUtilLogLargeData();
      v51 = [v12 objectForKey:@"additionalData"];
      kmlUtilLogLargeData();
      if (!v6)
      {
        v6 = [v12 objectForKey:@"ktsSignature"];
      }

      if (v50)
      {
        *(a1 + 121) = 1;
      }

      v52 = KmlLogger();
      if (sub_100377D6C(v52))
      {
        if (v6)
        {
          v53 = @"Yes";
        }

        else
        {
          v53 = @"No";
        }

        if (a1[12])
        {
          v54 = @"Yes";
        }

        else
        {
          v54 = @"No";
        }

        if (*(a1 + 121))
        {
          v55 = @"Yes";
        }

        else
        {
          v55 = @"No";
        }

        *buf = 136316162;
        v267 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
        v268 = 1024;
        v269 = 712;
        v270 = 2112;
        v271 = v53;
        v272 = 2112;
        v273 = v54;
        v274 = 2112;
        v275 = v55;
        sub_10039A5DC();
        _os_log_impl(v56, v57, v58, v59, v60, 0x30u);
      }

      v61 = KmlLogger();
      if (sub_100377D6C(v61))
      {
        v62 = [v51 asHexString];
        *buf = 136315650;
        sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
        sub_10039A5EC(714);
        v271 = v63;
        sub_10039A5DC();
        _os_log_impl(v64, v65, v66, v67, v68, 0x1Cu);
      }

      objc_storeStrong(a1 + 4, v6);
      if (!a1[4])
      {
        sub_10039A734();
        v51 = v50;
        v69 = KmlLogger();
        if (sub_100377D54(v69))
        {
          sub_10039A948(4.8151e-34);
          *(v70 + 4) = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
          sub_10039A630();
          *(v71 + 14) = 720;
          sub_10039A654();
          sub_10039A68C();
          _os_log_impl(v72, v73, v74, v75, v76, v77);
        }

        v78 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
        v264 = NSLocalizedDescriptionKey;
        KmlErrorString();
        v79 = [sub_10037BD94() stringWithUTF8String:?];
        v265 = v79;
        v80 = [NSDictionary dictionaryWithObjects:&v265 forKeys:&v264 count:1];
        sub_10039A824();
        v82 = [v81 errorWithDomain:? code:? userInfo:?];

        sub_1003E1C94(a1, v82);
        a1 = v82;
        v7 = v246;
        v50 = v51;
        sub_10039A770();
        goto LABEL_131;
      }

      v83 = [[KmlDeviceConfigurationData alloc] initWithData:a1[8]];
      [v83 updatePPIDWithServerProvidedData:v51];
      v84 = [v83 asData];
      v85 = a1[8];
      a1[8] = v84;

      if (v51)
      {
        v86 = [v83 mfiPPID];
        v87 = a1[9];
        a1[9] = v86;

        objc_storeStrong(a1 + 18, v51);
      }

      v243 = [a1[3] readerInfo];
      v88 = [[KmlRoutingInformation alloc] initWithReaderInformation:v243];
      v244 = v88;
      v245 = v83;
      if (sub_1003E225C(a1))
      {
        if (objc_msgSend_isImmoTokenNeeded(v83) && [v83 isFriendImmoTokenOrSlotOnline])
        {
          v89 = KmlLogger();
          if (sub_100377D6C(v89))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v269 = 743;
            sub_10039A5DC();
            _os_log_impl(v90, v91, v92, v93, v94, 0x12u);
          }

          objc_storeStrong(a1 + 7, obj);
          v95 = v50;
        }

        else
        {
          v115 = KmlLogger();
          if (sub_100377D6C(v115))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v269 = 747;
            sub_10039A5DC();
            _os_log_impl(v116, v117, v118, v119, v120, 0x12u);
          }

          v121 = [a1[3] ownerEphemeralKey];
          v122 = a1[7];
          a1[7] = v121;

          v95 = [a1[3] sharingEncryptedData];
        }

        v123 = a1[6];
        a1[6] = v95;

        if ([a1[12] length])
        {
          v124 = KmlLogger();
          if (sub_100377D6C(v124))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v269 = 752;
            sub_10039A5DC();
            _os_log_impl(v125, v126, v127, v128, v129, 0x12u);
          }

          v257[1] = v248;
          SESEndPointConfigureKeySlot();
          v130 = v248;

          if (v130)
          {
            sub_10039A734();
            v141 = sesErrorToKmlError();

            v142 = KmlLogger();
            if (sub_10039A8D4(v142))
            {
              sub_10039A948(4.8152e-34);
              *(v143 + 4) = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
              sub_10039A630();
              sub_10039A70C(756);
              v270 = v144;
              *(v145 + 20) = v141;
              sub_10036F590(&_mh_execute_header, v51, v146, "%s : %i : Failed to save friend slotId - %@", buf);
            }

            sub_1003E1C94(a1, v141);
            a1 = v141;
            sub_10039A770();
            goto LABEL_129;
          }

          v242 = v50;
          v248 = 0;
          v83 = v245;
        }

        else
        {
          v242 = v50;
        }

        v131 = [v83 initiatorSupportedFrameworkVersionsData];
        v132 = [sub_10039A874() updateSupportedFrameworkVersionsForSharing:?];

        v133 = sub_1003E22E4(a1);

        if (v133)
        {
          sub_10039A734();
          v136 = KmlLogger();
          v50 = v242;
          if (sub_10039A8D4(v136))
          {
            sub_10039A948(4.8152e-34);
            *(v137 + 4) = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
            sub_10039A630();
            sub_10039A70C(768);
            v270 = v138;
            *(v139 + 20) = v133;
            sub_10036F590(&_mh_execute_header, v51, v140, "%s : %i : Failed to create attestation package - %@", buf);
          }

          sub_1003E1C94(a1, v133);
          a1 = v133;
          sub_10039A770();
          goto LABEL_130;
        }

        v134 = [a1[3] additionalAttestationsDict];
        v135 = a1[16];
        a1[16] = v134;
LABEL_105:

        v192 = sub_1003E2674(a1);
        if (!v192)
        {
          sub_10039A734();
          v194 = [a1[3] publicKeyIdentifier];
          v51 = SESEndpointNotifyTracked();

          v195 = KmlLogger();
          if (sub_1003970EC(v195))
          {
            sub_10039A948(4.8152e-34);
            *(v196 + 4) = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
            sub_10039A630();
            sub_10039A70C(864);
            v270 = v197;
            *(v198 + 20) = v51;
            sub_100367454(&_mh_execute_header, v83, v199, "%s : %i : SES notified about new tracked endpoint with error %@", buf);
          }

          sub_10039A770();
        }

        if (sub_1003F6F5C(v193))
        {
          v200 = objc_opt_new();
          v201 = [v200 emulateNFCOnlyDevice];

          if (v201)
          {
            v202 = KmlLogger();
            if (sub_1003970EC(v202))
            {
              *buf = 136315394;
              sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
              v269 = 873;
              sub_10039A718(&_mh_execute_header, v203, v204, "%s : %i : Emulating NFC only device", buf);
            }

            v205 = 0;
          }

          else
          {
            v205 = 1;
          }

          v7 = v246;
        }

        else
        {
          v205 = 1;
        }

        v209 = +[NISession deviceCapabilities];
        v210 = [v209 supportsPreciseDistanceMeasurement];

        if (!v192 && sub_1003E225C(a1) && [v245 readerSupportsUwb]&& (v205 & v210) != 0)
        {
          v211 = dispatch_get_global_queue(21, 0);
          sub_10039A6EC();
          v252 = 3221225472;
          v253 = sub_100399CD4;
          v254 = &unk_1004C08D8;
          v255 = a1;
          dispatch_async(v212, block);
        }

        sub_1003E1C94(a1, v192);
        a1 = v192;
        v50 = v242;
LABEL_129:
        v83 = v245;
        goto LABEL_130;
      }

      v239 = v12;
      v242 = v50;
      v96 = objc_opt_new();
      v97 = [v88 manufacturer];
      v98 = [v88 brand];
      v99 = [v83 mfiPPID];
      v257[0] = v248;
      v240 = v96;
      v100 = [v96 BOOLValueForSetting:8 manufacturer:v97 brand:v98 uuid:v99 error:v257];
      v101 = v257[0];

      v102 = v101;
      v241 = v51;
      if (v101)
      {
        goto LABEL_116;
      }

      v103 = [v244 manufacturer];
      v104 = [v244 brand];
      v105 = [v245 mfiPPID];
      v106 = 1;
      v107 = [v240 BOOLValueForSetting:1 manufacturer:v103 brand:v104 uuid:v105 error:0];

      if (sub_1003F6F5C(v108))
      {
        if ([v240 emulateNFCOnlyDevice])
        {
          v109 = KmlLogger();
          if (sub_100377D6C(v109))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v269 = 799;
            sub_10039A5DC();
            _os_log_impl(v110, v111, v112, v113, v114, 0x12u);
          }

          v106 = 0;
        }

        else
        {
          v106 = 1;
        }
      }

      v147 = +[NISession deviceCapabilities];
      v148 = [v147 supportsPreciseDistanceMeasurement];

      v102 = 0;
      v149 = 0;
      if (v107)
      {
        v150 = v106 & v148;
        v51 = v241;
        v83 = v245;
        if ((v150 & 1) == 0)
        {
          v151 = +[NRPairedDeviceRegistry sharedInstance];
          v152 = [v151 getActivePairedDevice];

          if (v152)
          {
            [[NSUUID alloc] initWithUUIDString:@"C4F6386A-780D-40E5-9900-0A26C16273A1"];
            if ([sub_10039A898() supportsCapability:0])
            {
              v153 = [[NSUUID alloc] initWithUUIDString:@"81D292E4-16D8-4630-82ED-BDF62B05E334"];
              v154 = [sub_10039A7A4() supportsCapability:?];

              if (v154)
              {
                v155 = KmlLogger();
                if (sub_10039A8BC(v155))
                {
                  *buf = 136315394;
                  sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
                  v269 = 813;
                  sub_10036DC0C(&_mh_execute_header, v154, v156, "%s : %i : Allowing NFC only phone to have owner key since there is a paired UWB-capable watch", buf);
                }

                v149 = 0;
                v102 = 0;
LABEL_89:

                goto LABEL_90;
              }
            }

            else
            {
            }
          }

          v249 = v100;
          v157 = KmlLogger();
          if (sub_100377D54(v157))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v269 = 815;
            sub_10039A654();
            sub_10039A68C();
            _os_log_impl(v158, v159, v160, v161, v162, v163);
          }

          v164 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v262 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v165 = [sub_10039A910() stringWithUTF8String:?];
          v263 = v165;
          v149 = 1;
          v166 = [NSDictionary dictionaryWithObjects:&v263 forKeys:&v262 count:1];
          v102 = [NSError errorWithDomain:v164 code:218 userInfo:v166];

          v154 = v164;
          v51 = v241;
          v83 = v245;
          v100 = v249;
          goto LABEL_89;
        }
      }

      else
      {
        v51 = v241;
        v83 = v245;
      }

LABEL_90:
      if ((v149 & 1) == 0 && !v102 && v100 == 1)
      {
        v7 = v246;
        v50 = v242;
        v12 = v239;
        if (objc_msgSend_isImmoTokenNeeded(v83) && [v83 isOwnerImmoTokenOrSlotOnline])
        {
          v167 = KmlLogger();
          if (sub_100377D6C(v167))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v269 = 840;
            sub_10039A5DC();
            _os_log_impl(v168, v169, v170, v171, v172, 0x12u);
          }

          objc_storeStrong(a1 + 7, obj);
          objc_storeStrong(a1 + 6, v242);
        }

        if (!a1[12])
        {
          goto LABEL_102;
        }

        v173 = KmlLogger();
        if (sub_100377D6C(v173))
        {
          v174 = a1[12];
          *buf = 136315650;
          v267 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
          v268 = 1024;
          sub_10039A928(v174);
          sub_10039A5DC();
          _os_log_impl(v175, v176, v177, v178, v179, 0x1Cu);
        }

        v256 = 0;
        SESEndPointConfigureKeySlot();
        v180 = 0;
        if (!v180)
        {
LABEL_102:
          v181 = [KmlTlv TLVWithTag:69 value:a1[4]];
          v182 = [v181 asData];
          v183 = a1[5];
          a1[5] = v182;

          v184 = KmlLogger();
          if (sub_100377D6C(v184))
          {
            v185 = kmlUtilHexStringFromData();
            *buf = 136315650;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            sub_10039A5EC(857);
            v271 = v186;
            sub_10039A5DC();
            _os_log_impl(v187, v188, v189, v190, v191, 0x1Cu);
          }

          v135 = v240;
          goto LABEL_105;
        }

        v102 = v180;
        v208 = sesErrorToKmlError();

        v226 = KmlLogger();
        if (sub_100377D54(v226))
        {
          *buf = 136315650;
          sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
          sub_10039A5EC(849);
          v271 = v208;
          sub_10039A654();
          sub_10036F590(v227, v228, v229, v230, v231);
        }

LABEL_120:

        sub_1003E1C94(a1, v208);
        a1 = v208;

        v51 = v241;
LABEL_130:

LABEL_131:
        goto LABEL_132;
      }

      if (!v102)
      {
        v214 = KmlLogger();
        v215 = sub_100377D54(v214);
        if (v149)
        {
          v12 = v239;
          if (v215)
          {
            v216 = [v244 manufacturer];
            *buf = 136315650;
            v267 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
            sub_10039A630();
            sub_10039A5EC(828);
            v271 = v217;
            sub_10039A654();
            sub_10036F590(v218, v219, v220, v221, v222);
          }

          v102 = [sub_10039A91C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v260[0] = NSLocalizedDescriptionKey;
          v223 = [STACK[0x568] stringWithUTF8String:KmlErrorString()];
          v260[1] = NSLocalizedFailureReasonErrorKey;
          v261[0] = v223;
          v261[1] = @"NFC only pairing blocked by configuration";
          v224 = [NSDictionary dictionaryWithObjects:v261 forKeys:v260 count:2];
          v225 = sub_10039A874();
        }

        else
        {
          v12 = v239;
          if (v215)
          {
            v232 = [v244 manufacturer];
            *buf = 136315650;
            v267 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
            sub_10039A630();
            sub_10039A5EC(831);
            v271 = v233;
            sub_10039A654();
            sub_10036F590(v234, v235, v236, v237, v238);
          }

          v102 = [sub_10039A91C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v258[0] = NSLocalizedDescriptionKey;
          v223 = [STACK[0x568] stringWithUTF8String:KmlErrorString()];
          v258[1] = NSLocalizedFailureReasonErrorKey;
          v259[0] = v223;
          v259[1] = @"Pairing is blocked by configuration";
          v224 = [NSDictionary dictionaryWithObjects:v259 forKeys:v258 count:2];
          v225 = sub_10039A874();
        }

        v208 = [v225 errorWithDomain:? code:? userInfo:?];

        goto LABEL_119;
      }

LABEL_116:
      v206 = KmlLogger();
      v12 = v239;
      if (sub_10039A8D4(v206))
      {
        *buf = 136315650;
        sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
        sub_10039A5EC(825);
        v271 = v102;
        sub_10036F590(&_mh_execute_header, v51, v207, "%s : %i : Pairing is blocked due to error reading SLG settings: %@", buf);
      }

      v208 = sesErrorToKmlError();
LABEL_119:
      v83 = v245;
      v7 = v246;
      v50 = v242;
      goto LABEL_120;
    }

    v14 = [v12 objectForKey:@"groupIdentifier"];
    v15 = a1[13];
    a1[13] = v14;

    v13 = [v12 objectForKey:@"deviceType"];
    *(a1 + 120) = -1;
    if (([v13 isEqualToString:@"PHONE"]& 1) != 0)
    {
      v16 = 1;
    }

    else
    {
      if (![v13 isEqualToString:@"WATCH"])
      {
LABEL_16:
        v28 = KmlLogger();
        if (sub_100377D6C(v28))
        {
          sub_10039A954(4.8152e-34);
          v268 = 1024;
          sub_10039A928(v29);
          sub_10039A5DC();
          _os_log_impl(v30, v31, v32, v33, v34, 0x1Cu);
        }

        v35 = KmlLogger();
        if (sub_100377D6C(v35))
        {
          sub_10039A954(4.8152e-34);
          sub_10039A630();
          sub_10039A5EC(687);
          v271 = v13;
          sub_10039A5DC();
          _os_log_impl(v36, v37, v38, v39, v40, 0x1Cu);
        }

        goto LABEL_21;
      }

      v16 = 2;
    }

    *(a1 + 120) = v16;
    goto LABEL_16;
  }

LABEL_133:

  return a1;
}

void sub_1003E1C94(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v43 = v4;
    if (v4)
    {
      v36 = [v4 code];
    }

    else
    {
      v36 = 0;
    }

    if (*(a1 + 88))
    {
      v38 = *(a1 + 80) != 0;
    }

    else
    {
      v38 = 0;
    }

    v5 = *(a1 + 72);
    v6 = *(a1 + 96);
    v7 = sub_100399BE8(KmlEndpointManager, *(a1 + 24));
    v8 = [*(a1 + 24) configuration];
    [v8 opt2];

    v42 = [*(a1 + 24) readerInfo];
    v9 = [[KmlRoutingInformation alloc] initWithReaderInformation:v42];
    v41 = v9;
    if (v9)
    {
      v10 = v9;
      v11 = [v9 manufacturer];
      v40 = [v11 copy];

      v12 = [v10 brand];
      v39 = [v12 copy];

      v13 = [v10 regionString];
      v14 = [v13 copy];
    }

    else
    {
      v14 = @"Unknown";
      v39 = @"Unknown";
      v40 = @"Unknown";
    }

    v15 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 64)];
    v35 = [v15 readerSupportsNfc];
    v16 = [v15 readerSupportsUwb];
    v17 = 2;
    if (!v16)
    {
      v17 = 0;
    }

    v33 = v17;
    v18 = [*(a1 + 24) keyRole];
    if (!v18)
    {
      v19 = &off_1004DD038;
      if (v7)
      {
        v19 = &off_1004DD020;
      }

      v18 = v19;
    }

    v20 = v18;
    v34 = v18;
    v21 = [*(a1 + 24) publicKeyIdentifier];
    kmlUtilHexStringFromData();
    objc_claimAutoreleasedReturnValue();
    v22 = sub_10039A744();
    v31 = sub_100369220(v22, v2);

    v44[0] = @"errorCode";
    v37 = [NSNumber numberWithUnsignedInt:v36];
    v45[0] = v37;
    v45[1] = v20;
    v44[1] = @"accountRole";
    v44[2] = @"didReceiveProductPlanIdentifier";
    v32 = [NSNumber numberWithBool:v5 != 0];
    v45[2] = v32;
    v44[3] = @"didReceiveSlotIdentifier";
    v23 = [NSNumber numberWithBool:v6 != 0];
    v45[3] = v23;
    v44[4] = @"didReceiveImmoToken";
    v24 = [NSNumber numberWithBool:*(a1 + 121)];
    v45[4] = v24;
    v44[5] = @"didReceiveOnlineBLEKeys";
    v25 = [NSNumber numberWithBool:v38];
    v45[5] = v25;
    v44[6] = @"isOwner";
    v26 = [NSNumber numberWithBool:v7];
    v45[6] = v26;
    v44[7] = @"keyClassOriginBitmap";
    v27 = [NSNumber numberWithUnsignedChar:kmlUtilKeyClassOriginBitmap()];
    v45[7] = v27;
    v45[8] = v14;
    v44[8] = @"dataCenterCode";
    v44[9] = @"manufacturer";
    v45[9] = v40;
    v45[10] = v39;
    v44[10] = @"brand";
    v44[11] = @"transportSupported";
    v28 = [NSNumber numberWithUnsignedInteger:v33 | v35];
    v45[11] = v28;
    v44[12] = @"trackingRequestDuration";
    v29 = [NSNumber numberWithUnsignedInt:v31];
    v45[12] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:13];

    sub_1003695CC(KmlAnalyticsLogger, v30);
    v4 = v43;
  }
}

uint64_t sub_1003E20F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      v3 = [v2 trackingRequest];

      if (v3)
      {
        v1 = [v1[3] trackingReceipt];

        if (!v1)
        {
          return 1;
        }

        v4 = KmlLogger();
        if (!sub_1003970B4(v4))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v6 = KmlLogger();
      if (sub_1003970B4(v6))
      {
LABEL_10:
        sub_10036DB8C();
        sub_10039A68C();
        _os_log_impl(v7, v8, v9, v10, v11, v12);
      }
    }

    else
    {
      v5 = KmlLogger();
      if (sub_1003970B4(v5))
      {
        goto LABEL_10;
      }
    }

LABEL_11:

    return 0;
  }

  return result;
}

id sub_1003E225C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 subjectIdentifier];
  v3 = sub_1003975A8(KmlEndpointManager, v2);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqualToString:@"FRND"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id *sub_1003E22E4(id *a1)
{
  v3 = a1;
  if (a1)
  {
    v4 = [a1[3] sharingAttestationData];
    if (v4)
    {
      v5 = [NSMutableData dataWithData:v4];
      if (v3[12])
      {
        v6 = [KmlTlv TLVWithTag:78 value:?];
        [v6 asData];
        objc_claimAutoreleasedReturnValue();
        [sub_10039A670() appendData:?];
      }

      v7 = KmlVersions;
      if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [v3[17] agreedKmlSharingVersion], 768))
      {
        if (v3[13])
        {
          v7 = [KmlTlv TLVWithTag:79 value:?];
          [v7 asData];
          objc_claimAutoreleasedReturnValue();
          [sub_10039A670() appendData:?];
        }

        if (*(v3 + 120) != 255)
        {
          v8 = KmlLogger();
          if (sub_10036F124(v8))
          {
            v9 = *(v3 + 120);
            v27 = 136315650;
            v28 = "[KmlEndpointManager generateFriendAttestationPackage]";
            v29 = 1024;
            v30 = 1913;
            v31 = 1024;
            LODWORD(v32) = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : Using device type from tracking receipt: %u", &v27, 0x18u);
          }

          v10 = [KmlTlv TLVWithTag:72 unsignedChar:*(v3 + 120)];
          [v10 asData];
          objc_claimAutoreleasedReturnValue();
          [sub_10039A670() appendData:?];
        }
      }

      v11 = [KmlTlv TLVWithTag:69 value:v3[4]];
      [v11 asData];
      objc_claimAutoreleasedReturnValue();
      [sub_10039A670() appendData:?];

      v12 = [KmlTlv TLVWithTag:32565 value:v5];
      v13 = [v12 asData];
      v14 = v3[5];
      v3[5] = v13;

      v15 = KmlLogger();
      if (sub_10036F124(v15))
      {
        v16 = kmlUtilHexStringFromData();
        v27 = 136315650;
        v28 = "[KmlEndpointManager generateFriendAttestationPackage]";
        sub_1003939BC();
        v30 = 1921;
        v31 = 2112;
        v32 = v17;
        sub_100367454(&_mh_execute_header, v12, v18, "%s : %i : Friend Attestation Package %@", &v27);
      }

      v3 = 0;
    }

    else
    {
      v19 = KmlLogger();
      if (sub_10036F5DC(v19))
      {
        sub_10036DB8C();
        v30 = 1886;
        sub_10039A68C();
        _os_log_impl(v20, v21, v22, v23, v24, v25);
      }

      v5 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
      v33 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v12 = [sub_100372244() stringWithUTF8String:?];
      v34 = v12;
      [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      objc_claimAutoreleasedReturnValue();
      v3 = [sub_10039A880() errorWithDomain:? code:? userInfo:?];
    }
  }

  return v3;
}

id sub_1003E2674(void *a1)
{
  if (!a1)
  {
    v28 = 0;
    goto LABEL_65;
  }

  v2 = a1;
  if ((sub_1003E225C(a1) & 1) == 0 && (sub_100399BE8(KmlEndpointManager, *(v2 + 3)) & 1) == 0)
  {
    v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
    v160 = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithUTF8String:KmlErrorString()];
    v161 = v7;
    v4 = [NSDictionary dictionaryWithObjects:&v161 forKeys:&v160 count:1];
    v8 = v2;
    v9 = 210;
    v10 = v4;
LABEL_17:
    v28 = [NSError errorWithDomain:v8 code:v9 userInfo:v10];
    goto LABEL_64;
  }

  if (*(v2 + 6))
  {
    if (*(v2 + 7))
    {
      v149 = 0;
      SESEndPointSetConfidentialDataWithOffset();
      v3 = 0;
      if (v3)
      {
        v4 = v3;
        v5 = KmlLogger();
        if (sub_1003970B4(v5))
        {
          v154 = 136315650;
          v155 = "[KmlEndpointManager updateEndpointWithTrackingData]";
          sub_10039A648();
          v157 = 1941;
          sub_10039A7E8();
          v159 = v4;
          sub_10036F590(&_mh_execute_header, v1, v6, "%s : %i : Failed to set confidential mailbox - %@", &v154);
        }

        [NSString stringWithUTF8String:"com.apple.sesd.kml"];
        objc_claimAutoreleasedReturnValue();
        v7 = [sub_10039A750() userInfo];
        v8 = v2;
        v9 = 207;
        v10 = v7;
        goto LABEL_17;
      }
    }
  }

  v11 = [NSData alloc];
  v12 = [*(v2 + 3) mailboxMapping];
  v7 = [v11 initWithData:v12];

  v13 = KmlLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = kmlUtilHexStringFromData();
    v154 = 136315650;
    v155 = "[KmlEndpointManager updateEndpointWithTrackingData]";
    sub_10039A648();
    v157 = 1948;
    sub_10039A7E8();
    v159 = v15;
    sub_100367454(&_mh_execute_header, v13, v16, "%s : %i : MailboxMappingData:%@", &v154);
  }

  v4 = [[KmlMailboxMappingData alloc] initWithData:v7 preferredVersion:{objc_msgSend(*(v2 + 17), "agreedKmlVehicleVersion")}];
  [v4 mailboxEndOffset];
  [v4 signalingBitmapOffset];
  [v4 signalingBitmapOffset];
  v148 = 0;
  v17 = SESEndPointGetPrivateData();
  v18 = 0;
  if (v18)
  {
    v19 = v18;
    v20 = KmlLogger();
    if (sub_10036F5C4(v20))
    {
      v154 = 136315650;
      v155 = "[KmlEndpointManager updateEndpointWithTrackingData]";
      sub_10039A648();
      v157 = 1960;
      sub_10039A7E8();
      v159 = v19;
      sub_10039A6C0();
      _os_log_impl(v21, v22, v23, v24, v25, 0x1Cu);
    }

    [NSString stringWithUTF8String:"com.apple.sesd.kml"];
    objc_claimAutoreleasedReturnValue();
    v26 = [sub_10039A744() userInfo];
    v27 = [sub_10039A7A4() errorWithDomain:? code:? userInfo:?];

    v2 = v27;
    goto LABEL_63;
  }

  v29 = &NSInferMappingModelAutomaticallyOption_ptr;
  v30 = [[NSMutableData alloc] initWithData:v17];
  kmlUtilLogLargeData();
  v31 = *[v17 bytes];
  v32 = [v4 getMaskToIndicateKeyAttestationSaved];
  v33 = (v31 | v32);
  v147 = v31 | v32;
  v34 = &unk_100409000;
  if (*(v2 + 6) && *(v2 + 7) && [v4 mailboxVersion] != 128)
  {
    v35 = KmlLogger();
    if (sub_1003674CC(v35))
    {
      v154 = 136315394;
      v155 = "[KmlEndpointManager updateEndpointWithTrackingData]";
      sub_10039A648();
      v157 = 1974;
      sub_10036DC0C(&_mh_execute_header, "[KmlEndpointManager updateEndpointWithTrackingData]", v36, "%s : %i : Updating immo token bitmap", &v154);
    }

    LOBYTE(v154) = 1;
    [v30 replaceBytesInRange:1 withBytes:1, &v154];
  }

  v37 = [v4 keyAttestationStartOffset];
  v146 = v37 - [v4 signalingBitmapOffset];
  v38 = [v4 attestationPackageLength];
  if ([v4 mailboxVersion] != 128)
  {
    LOBYTE(v39) = 0;
LABEL_26:
    v40 = KmlLogger();
    if (sub_100377D6C(v40))
    {
      v154 = v34[278];
      sub_10039A63C("[KmlEndpointManager updateEndpointWithTrackingData]");
      v156 = v41;
      *(v42 + 14) = 2061;
      sub_10039A680();
      _os_log_impl(v43, v44, v45, v46, v47, 0x12u);
    }

    v48 = v34;

    v49 = [*(v2 + 5) length];
    v50 = v49;
    if (v49 <= v38)
    {
      -[NSObject replaceBytesInRange:withBytes:](v30, "replaceBytesInRange:withBytes:", (v146 + v38 * v39), v49, [*(v2 + 5) bytes]);
      [v30 replaceBytesInRange:0 withBytes:1, &v147];
      kmlUtilLogLargeData();
      v62 = *(v2 + 1);
      [v4 signalingBitmapOffset];
      SESEndPointSetPrivateData();
      v63 = 0;
      if (v63)
      {
        v64 = v63;
        v65 = v30;
        v66 = KmlLogger();
        if (sub_10036F5C4(v66))
        {
          v154 = 136315650;
          sub_10039A63C("[KmlEndpointManager updateEndpointWithTrackingData]");
          v156 = v67;
          sub_10039A70C(2086);
          v158 = v68;
          *(v69 + 20) = v64;
          sub_10039A6C0();
          _os_log_impl(v70, v71, v72, v73, v74, 0x1Cu);
        }

        v75 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
        v76 = [v64 userInfo];
        sub_10039A824();
        v78 = [v77 errorWithDomain:? code:? userInfo:?];

        v2 = v78;
        v30 = v65;
      }

      else
      {
        sub_10039A6CC();
        v79 = SESEndPointUpdateWithBlock();
        if (v79)
        {
          v80 = v79;
          v81 = v30;
          v82 = KmlLogger();
          if (sub_1003674CC(v82))
          {
            v154 = v48[278];
            v155 = "[KmlEndpointManager updateEndpointWithTrackingData]";
            sub_10039A648();
            v157 = 2130;
            sub_10036DC0C(&_mh_execute_header, v62, v83, "%s : %i : Could not update endpoint", &v154);
          }

          [NSString stringWithUTF8String:"com.apple.sesd.kml"];
          objc_claimAutoreleasedReturnValue();
          v84 = [sub_10039A898() userInfo];
          sub_10039A824();
          v86 = [v85 errorWithDomain:? code:? userInfo:?];

          v30 = v81;
        }

        else
        {
          v86 = 0;
        }

        v2 = v86;
      }
    }

    else
    {
      v51 = KmlLogger();
      if (sub_10036F5C4(v51))
      {
        v154 = 136315906;
        v155 = "[KmlEndpointManager updateEndpointWithTrackingData]";
        sub_10039A648();
        *(v52 + 14) = 2066;
        v158 = v53;
        LODWORD(v159) = v50;
        WORD2(v159) = v53;
        *(v52 + 26) = v38;
        sub_10039A6C0();
        _os_log_impl(v54, v55, v56, v57, v58, 0x1Eu);
      }

      v59 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
      v150[0] = NSLocalizedDescriptionKey;
      KmlErrorString();
      v60 = [sub_10039A910() stringWithUTF8String:?];
      v150[1] = NSLocalizedFailureReasonErrorKey;
      v151[0] = v60;
      v151[1] = @"Max attestation length not enough";
      [NSDictionary dictionaryWithObjects:v151 forKeys:v150 count:2];
      objc_claimAutoreleasedReturnValue();
      v61 = [sub_10039A8A4() errorWithDomain:? code:? userInfo:?];

      v2 = v61;
    }

    goto LABEL_62;
  }

  v144 = v33;
  v87 = [v4 signerSlotIdListOffset];
  v141 = v87 - [v4 signalingBitmapOffset];
  v140 = [v4 slotIdentifierLength];
  v137 = v38;
  if (!sub_1003E225C(v2) || !+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v2 + 17) agreedKmlSharingVersion], 768))
  {
    v33 = 0;
LABEL_71:
    v125 = sub_1003E8E30(v2, *(v2 + 5));
    v39 = v33;
    if (![v125 length])
    {
      if ([*(v2 + 12) length])
      {
        v126 = *(v2 + 12);
      }

      else
      {
        v126 = 0;
      }

      v127 = v126;

      v125 = v127;
      v33 = v39;
    }

    if ([v125 length])
    {
      v128 = KmlLogger();
      if (sub_1003970EC(v128))
      {
        v154 = 136315650;
        sub_10039A63C("[KmlEndpointManager updateEndpointWithTrackingData]");
        v156 = v129;
        sub_10039A70C(2053);
        v158 = v130;
        *(v131 + 20) = v125;
        sub_100367454(&_mh_execute_header, v29, v132, "%s : %i : Set ourSlotId (%@)", &v154);
      }

      v133 = v141 + v33 * v140;
      v33 = v140;
      -[NSObject replaceBytesInRange:withBytes:](v30, "replaceBytesInRange:withBytes:", v133, v140, [v125 bytes]);
      v147 |= [v4 getMaskToIndicateSlotIdListSaved];
      v38 = v137;
    }

    v34 = &unk_100409000;
    goto LABEL_26;
  }

  v139 = v30;
  v88 = KmlLogger();
  if (sub_10039A8BC(v88))
  {
    v154 = 136315394;
    v155 = "[KmlEndpointManager updateEndpointWithTrackingData]";
    sub_10039A648();
    v157 = 1993;
    sub_10036DC0C(&_mh_execute_header, v30, v89, "%s : %i : Initialize slotIDs to all FF bytes", &v154);
  }

  v90 = [v4 vehicleProprietaryDataOffset];
  v91 = v90 - [v4 signerSlotIdListOffset];
  v136 = [NSMutableData dataWithLength:v91];
  v92 = [v136 mutableBytes];
  memset(v92, 255, v91);
  [v139 replaceBytesInRange:v141 withBytes:v91, v92];
  v93 = KmlLogger();
  if (sub_10039A8BC(v93))
  {
    v154 = 136315394;
    v155 = "[KmlEndpointManager updateEndpointWithTrackingData]";
    sub_10039A648();
    v157 = 2002;
    sub_10036DC0C(&_mh_execute_header, v92, v94, "%s : %i : Look for additional attestations", &v154);
  }

  v135 = [[KmlDeviceConfigurationData alloc] initWithData:*(v2 + 8)];
  v95 = ([v135 maxOfflineAttestationCount] + 46);
  v97 = v144;
  v98 = 0;
  if (v95 < 0x30)
  {
    v30 = v139;
    v38 = v137;
LABEL_70:

    v33 = v98;
    goto LABEL_71;
  }

  *&v96 = 136315650;
  v134 = v96;
  v30 = v139;
  v38 = v137;
  v138 = v17;
  while (1)
  {
    v145 = v97;
    v99 = *(v2 + 16);
    v142 = v95;
    v100 = [NSNumber numberWithUnsignedChar:v95, v134];
    v101 = [v99 objectForKeyedSubscript:v100];

    v29 = v101;
    v102 = sub_1003E8E30(v2, v101);
    if (![v29 length] || !objc_msgSend(v102, "length"))
    {
      v106 = KmlLogger();
      if (sub_100377D6C(v106))
      {
        v154 = v134;
        sub_10039A63C("[KmlEndpointManager updateEndpointWithTrackingData]");
        v156 = v107;
        *(v108 + 14) = 2037;
        v158 = v107;
        LODWORD(v159) = v142;
        sub_10039A680();
        _os_log_impl(v109, v110, v111, "%s : %i : No additional attestations found with tag : %02x", v112, 0x18u);
      }

      v97 = v145;
      goto LABEL_54;
    }

    v143 = v102;
    -[NSObject replaceBytesInRange:withBytes:](v139, "replaceBytesInRange:withBytes:", (v141 + v98 * v140), v140, [v143 bytes]);
    v103 = [v29 length];
    v104 = v103;
    if (v103 > v137)
    {
      break;
    }

    -[NSObject replaceBytesInRange:withBytes:](v139, "replaceBytesInRange:withBytes:", (v146 + v137 * v98), v103, [v29 bytes]);
    v105 = [v4 getMaskToIndicateSlotIdListSaved];
    v97 = v145 | v105;
    v147 = v145 | v105;
    v98 = (v98 + 1);
    v17 = v138;
    v102 = v143;
LABEL_54:

    v95 = v142 - 1;
    if ((v142 - 1) <= 0x2Fu)
    {
      goto LABEL_70;
    }
  }

  v113 = KmlLogger();
  if (sub_10036F5C4(v113))
  {
    v154 = 136315906;
    v155 = "[KmlEndpointManager updateEndpointWithTrackingData]";
    sub_10039A648();
    *(v114 + 14) = 2029;
    v158 = v115;
    LODWORD(v159) = v104;
    WORD2(v159) = v115;
    *(v114 + 26) = v137;
    sub_10039A6C0();
    _os_log_impl(v116, v117, v118, v119, v120, 0x1Eu);
  }

  v121 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
  v152[0] = NSLocalizedDescriptionKey;
  KmlErrorString();
  v122 = [sub_10039A910() stringWithUTF8String:?];
  v152[1] = NSLocalizedFailureReasonErrorKey;
  v153[0] = v122;
  v153[1] = @"Max attestation length not enough";
  [NSDictionary dictionaryWithObjects:v153 forKeys:v152 count:2];
  objc_claimAutoreleasedReturnValue();
  v123 = [sub_10039A8A4() errorWithDomain:? code:? userInfo:?];

  v2 = v123;
  v17 = v138;
  v30 = v139;
LABEL_62:

LABEL_63:
  v28 = v2;
LABEL_64:

LABEL_65:

  return v28;
}

id sub_1003E3530(uint64_t a1, void *a2, void *a3, NSObject *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_77;
  }

  v12 = sub_1003E01E8(a1);
  if (v12)
  {
    v13 = v12;
    v14 = KmlLogger();
    if (sub_1003970B4(v14))
    {
      sub_10039A6B4(4.8152e-34);
      sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
      sub_100377CFC(904);
      *(v15 + 20) = v13;
      sub_10036F590(&_mh_execute_header, a4, v16, "%s : %i : Error getting endpoint - %@", buf);
    }

    if (a5)
    {
      v17 = v13;
      v18 = 0;
      *a5 = v13;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_76;
  }

  v147 = a5;
  v151 = v11;
  v152 = v10;
  v156 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 64)];
  v19 = &NSInferMappingModelAutomaticallyOption_ptr;
  v20 = +[NSMutableData data];
  v146 = [KmlTlv TLVWithTag:24353 value:*(a1 + 16)];
  v21 = [v146 asData];
  v149 = v20;
  [v20 appendData:v21];

  v157 = a1;
  v150 = v9;
  if (![v9 count])
  {
    v51 = +[NSMutableData data];
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v160 = v152;
    v52 = [v160 countByEnumeratingWithState:&v167 objects:v178 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v168;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v168 != v54)
          {
            objc_enumerationMutation(v160);
          }

          kmlUtilDataForHexString();
          objc_claimAutoreleasedReturnValue();
          v56 = [sub_10036746C() TLVWithTag:79 value:v19];

          v57 = [NSMutableData alloc];
          [sub_10036746C() asData];
          objc_claimAutoreleasedReturnValue();
          v58 = [sub_10039A744() initWithData:a5];

          v19 = [KmlTlv TLVWithTag:71 unsignedChar:0];
          v59 = [v19 asData];
          [sub_10039A7A4() appendData:?];

          a5 = [KmlTlv TLVWithTag:97 value:v58];
          v60 = [a5 asData];
          [v51 appendData:v60];
        }

        v53 = [v160 countByEnumeratingWithState:&v167 objects:v178 count:16];
      }

      while (v53);
    }

    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v161 = v151;
    v61 = [v161 countByEnumeratingWithState:&v163 objects:v177 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v164;
      do
      {
        for (j = 0; j != v62; ++j)
        {
          if (*v164 != v63)
          {
            objc_enumerationMutation(v161);
          }

          kmlUtilDataForHexString();
          objc_claimAutoreleasedReturnValue();
          v65 = [sub_10036746C() TLVWithTag:79 value:v19];

          v66 = [NSMutableData alloc];
          [sub_10036746C() asData];
          objc_claimAutoreleasedReturnValue();
          v67 = [sub_10039A744() initWithData:a5];

          v19 = [KmlTlv TLVWithTag:71 unsignedChar:1];
          v68 = [v19 asData];
          [sub_10039A7A4() appendData:?];

          a5 = [KmlTlv TLVWithTag:97 value:v67];
          v69 = [a5 asData];
          [v51 appendData:v69];
        }

        v62 = [v161 countByEnumeratingWithState:&v163 objects:v177 count:16];
      }

      while (v62);
    }

    v23 = v51;
    v47 = [KmlTlv TLVWithTag:32559 value:v51];
    v48 = [v47 asData];
    v50 = v149;
    [v149 appendData:v48];
    a1 = v157;
LABEL_45:

    v70 = kmlUtilSHA256();
    v71 = SESEndPointSignDataWithAuth();
    v72 = [NSMutableData dataWithData:v50];
    [v71 signedData];
    objc_claimAutoreleasedReturnValue();
    [sub_10039A864() appendData:?];

    v73 = [v71 signature];
    v74 = [KmlTlv TLVWithTag:158 value:v73];

    [v74 asData];
    objc_claimAutoreleasedReturnValue();
    [sub_10039A864() appendData:?];

    v142 = v72;
    v75 = [KmlTlv TLVWithTag:32576 value:v72];
    v76 = KmlLogger();
    if (sub_10036F978(v76))
    {
      v77 = [v75 asData];
      v78 = kmlUtilHexStringFromData();
      sub_10039A6B4(4.8152e-34);
      sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
      sub_100377CFC(1003);
      *(v80 + 20) = v79;
      sub_10036F920();
      _os_log_impl(v81, v82, v83, v84, v85, 0x1Cu);
    }

    v86 = [v75 asData];
    v87 = SESEndPointPrivacyEncryption();
    v13 = 0;

    v143 = v70;
    if (v13)
    {
      v88 = KmlLogger();
      v89 = v151;
      if (sub_10036F978(v88))
      {
        sub_10039A6B4(4.8152e-34);
        sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
        sub_100377CFC(1008);
        *(v90 + 20) = v13;
        sub_10036F920();
        _os_log_impl(v91, v92, v93, v94, v95, 0x1Cu);
      }

      if (v147)
      {
        v96 = v13;
        *v147 = v13;
      }

      v145 = 0;
    }

    else
    {
      v145 = v87;
      v89 = v151;
    }

    v141 = [*(a1 + 24) readerInfo];
    v97 = [[KmlRoutingInformation alloc] initWithReaderInformation:v141];
    v98 = v156;
    v99 = [v156 readerSupportsNfc];
    if ([v156 readerSupportsUwb])
    {
      v100 = 2;
    }

    else
    {
      v100 = 0;
    }

    v101 = KmlLogger();
    v102 = sub_10036F978(v101);
    v148 = v97;
    v162 = v71;
    v144 = v74;
    if (v97)
    {
      if (v102)
      {
        sub_10039A6B4(4.8152e-34);
        sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
        sub_100377CFC(1027);
        *(v103 + 20) = v97;
        sub_10036F920();
        _os_log_impl(v104, v105, v106, v107, v108, 0x1Cu);
      }

      v109 = [v97 manufacturer];
      v158 = [v109 copy];

      v110 = [v97 brand];
      obja = [v110 copy];

      v98 = [v97 regionString];
      v153 = [v98 copy];
    }

    else
    {
      if (v102)
      {
        sub_10039A6B4(4.8151e-34);
        sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
        *(v111 + 14) = 1032;
        sub_10036F920();
        _os_log_impl(v112, v113, v114, v115, v116, 0x12u);
      }

      obja = @"Unknown";
      v158 = @"Unknown";
      v153 = @"Unknown";
    }

    v117 = v89;

    v118 = [*(a1 + 24) keyRole];
    if (!v118)
    {
      v119 = sub_100399BE8(KmlEndpointManager, *(a1 + 24));
      v120 = &off_1004DD038;
      if (v119)
      {
        v120 = &off_1004DD020;
      }

      v118 = v120;
    }

    v175[0] = @"numFriendKeys";
    v121 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v150 count]);
    v176[0] = v121;
    v176[1] = v153;
    v175[1] = @"dataCenterCode";
    v175[2] = @"manufacturer";
    v176[2] = v158;
    v176[3] = obja;
    v175[3] = @"brand";
    v175[4] = @"transportSupported";
    v122 = [NSNumber numberWithUnsignedInteger:v100 | v99];
    v176[4] = v122;
    v175[5] = @"status";
    if (v13)
    {
      v140 = sesErrorToKmlError();
      v123 = [v140 code];
    }

    else
    {
      v123 = 0;
    }

    v124 = [NSNumber numberWithInteger:v123];
    v176[5] = v124;
    v175[6] = @"numGroupIDs";
    v125 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v152 count]);
    v176[6] = v125;
    v175[7] = @"numSubTrees";
    [v117 count];
    v126 = [sub_100372244() numberWithUnsignedInteger:?];
    v176[7] = v126;
    v176[8] = v118;
    v175[8] = @"accountRole";
    v175[9] = @"keyVersion";
    v127 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 136) agreedKmlVehicleVersion]);
    v176[9] = v127;
    v128 = [NSDictionary dictionaryWithObjects:v176 forKeys:v175 count:10];

    if (v13)
    {
    }

    sub_100369844(KmlAnalyticsLogger, v128);
    v9 = v150;
    v11 = v151;
    v10 = v152;
    v129 = v149;
    v130 = v142;
    v23 = v143;
    v47 = v162;
    v131 = v75;
LABEL_74:

    v18 = v145;
    goto LABEL_75;
  }

  k = &v171;
  v23 = sub_100394824(KmlSharingRecordsUpdater, *(a1 + 24));
  v159 = +[NSMutableData data];
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  obj = v9;
  v24 = [obj countByEnumeratingWithState:&v171 objects:v181 count:16];
  if (!v24)
  {
    goto LABEL_27;
  }

  v20 = v24;
  v25 = *v172;
  do
  {
    for (k = 0; k != v20; k = (k + 1))
    {
      if (*v172 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v171 + 1) + 8 * k);
      v27 = sub_100394C28(v23, v26);
      if (v27 && ([v156 isFriendImmoTokenOrSlotOnline] & 1) == 0)
      {
        v36 = &swift_cvw_destroy_ptr;
        v35 = sub_1003B85A0(v27);
        v30 = [KmlTlv TLVWithTag:87 value:v35];
      }

      else
      {
        v28 = [v26 isEqualToString:*(a1 + 8)];
        v29 = KmlLogger();
        v30 = v29;
        if (v28)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v183 = "[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]";
            v184 = 1024;
            v185 = 931;
            sub_10039A6C0();
            _os_log_impl(v31, v32, v33, "%s : %i : We don't allow creating RTR for our own key.", v34, 0x12u);
          }

          goto LABEL_25;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v183 = "[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]";
          v184 = 1024;
          v185 = 934;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s : %i : This is either owner swap or friend with online tokens.", buf, 0x12u);
        }

        v35 = v30;
        v30 = 0;
        v36 = &swift_cvw_destroy_ptr;
      }

      v37 = v23;

      v38 = v36[276];
      v39 = kmlUtilDataForHexString();
      v40 = [v38 TLVWithTag:80 value:v39];

      v41 = [NSMutableData alloc];
      v42 = [v40 asData];
      v43 = [v41 initWithData:v42];

      if (v30)
      {
        v44 = [v30 asData];
        [v43 appendData:v44];
      }

      v45 = [v36[276] TLVWithTag:97 value:v43];
      v46 = [v45 asData];
      [v159 appendData:v46];

      v23 = v37;
      a1 = v157;
LABEL_25:
    }

    v20 = [obj countByEnumeratingWithState:&v171 objects:v181 count:16];
  }

  while (v20);
LABEL_27:

  v47 = v159;
  if ([v159 length])
  {
    v48 = [KmlTlv TLVWithTag:32547 value:v159];
    v49 = [v48 asData];
    v50 = v149;
    [v149 appendData:v49];

    goto LABEL_45;
  }

  v133 = KmlLogger();
  v129 = v149;
  if (sub_10036F978(v133))
  {
    sub_10039A6B4(4.8151e-34);
    sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
    *(v134 + 14) = 952;
    sub_10036F920();
    _os_log_impl(v135, v136, v137, v138, v139, 0x12u);
  }

  v9 = v150;
  v11 = v151;
  v10 = v152;
  if (v147)
  {
    v130 = [sub_10039A91C() stringWithUTF8String:"com.apple.sesd.kml"];
    v179 = NSLocalizedDescriptionKey;
    v144 = [v20[141] stringWithUTF8String:KmlErrorString()];
    v180 = v144;
    v131 = [NSDictionary dictionaryWithObjects:&v180 forKeys:&v179 count:1];
    [NSError errorWithDomain:v130 code:206 userInfo:v131];
    v13 = 0;
    *v147 = v145 = 0;
    goto LABEL_74;
  }

  v13 = 0;
  v18 = 0;
LABEL_75:

LABEL_76:
LABEL_77:

  return v18;
}

void **sub_1003E442C(void **a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = sub_1003E01E8(a1);
    if (v4)
    {
      v5 = KmlLogger();
      if (sub_100377D18(v5))
      {
        v11 = 136315650;
        v12 = "[KmlEndpointManager listSharingInvitationsWithError:]";
        sub_1003939BC();
        v13 = 1063;
        v14 = 2112;
        v15 = v4;
        sub_10039A698(&_mh_execute_header, v6, v7, "%s : %i : Error getting endpoint - %@", &v11);
      }

      if (a2)
      {
        v8 = v4;
        v2 = 0;
        *a2 = v4;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v9 = sub_100394824(KmlSharingRecordsUpdater, v2[3]);
      v2 = sub_100395728(v9);
    }
  }

  return v2;
}

id sub_1003E4560(void **a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1003E01E8(a1);
    if (v4)
    {
      v5 = KmlLogger();
      if (sub_100377D18(v5))
      {
        *v26 = 136315650;
        sub_10039A804("[KmlEndpointManager removeSharedKeysWithIdentifiers:]");
        sub_10039A7F4(1078);
        v27 = v4;
        sub_10039A698(&_mh_execute_header, v6, v7, "%s : %i : Error getting endpoint - %@", v26);
      }

      v8 = v4;
    }

    else
    {
      v9 = sub_100394824(KmlSharingRecordsUpdater, a1[3]);
      sub_100396F74();
      v10 = v3;
      v11 = [v10 countByEnumeratingWithState:v23 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(v23[1] + 8 * i) uppercaseString];
            [0 addObject:v15];
          }

          v12 = [v10 countByEnumeratingWithState:v23 objects:v25 count:16];
        }

        while (v12);
      }

      sub_100396024(v9, 0);
      objc_claimAutoreleasedReturnValue();
      v16 = sub_10036746C();
      sub_1003DB06C(v16, 0);
      sub_1003DAFF0(v9);
      v17 = [v10 count];
      v18 = KmlLogger();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (v17)
      {
        if (v19)
        {
          *v26 = 136315650;
          sub_10039A804("[KmlEndpointManager removeSharedKeysWithIdentifiers:]");
          sub_10039A7F4(1091);
          v27 = v10;
          sub_100367454(&_mh_execute_header, v18, v20, "%s : %i : cancelling pending invitations for uuid set: %@", v26);
        }

        sub_10039F400(KmlOwnerSharingManager, v10);
      }

      else
      {
        if (v19)
        {
          *v26 = 136315650;
          sub_10039A804("[KmlEndpointManager removeSharedKeysWithIdentifiers:]");
          sub_10039A7F4(1094);
          v27 = 0;
          sub_100367454(&_mh_execute_header, v18, v21, "%s : %i : Nothing to cancel - %@", v26);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1003E4818(NSObject *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    *a3 = 0;
    *a2 = 0;
    v7 = sub_1003E01E8(a1);
    if (v7)
    {
      v8 = v7;
      v9 = KmlLogger();
      if (sub_1003970B4(v9))
      {
        *buf = 136315650;
        sub_100367390();
        sub_10039A844();
        *v70 = v8;
        sub_10036F590(&_mh_execute_header, v3, v10, "%s : %i : Error getting endpoint - %@", buf);
      }

      goto LABEL_38;
    }

    v3 = [*(v6 + 24) mailboxMapping];
    v11 = [[KmlMailboxMappingData alloc] initWithData:v3 preferredVersion:{objc_msgSend(*(v6 + 136), "agreedKmlVehicleVersion")}];
    v12 = [v11 vehicleProprietaryDataOffset];
    if (v12 < [v11 signalingBitmapOffset])
    {
      v13 = KmlLogger();
      if (sub_100377D18(v13))
      {
        v14 = [v11 asData];
        v15 = [v14 asHexString];
        *buf = 136315650;
        sub_100367390();
        sub_10039A844();
        *v70 = v16;
        sub_10039A698(&_mh_execute_header, v17, v18, "%s : %i : Underflow detected in mailbox offsets %@", buf);
      }

      v8 = 0;
      goto LABEL_37;
    }

    [v11 signalingBitmapOffset];
    v19 = [v11 vehicleProprietaryDataOffset];
    [v11 signalingBitmapOffset];
    v12 = SESEndPointGetPrivateData();
    v8 = 0;
    if (v8)
    {
      v20 = KmlLogger();
      if (sub_10036F5C4(v20))
      {
        *buf = 136315650;
        sub_100367390();
        sub_10039A844();
        *v70 = v8;
        sub_10039A6C0();
        _os_log_impl(v21, v22, v23, v24, v25, 0x1Cu);
      }

      goto LABEL_36;
    }

    v26 = *[v12 bytes];
    v27 = [KmlDeviceConfigurationData alloc];
    v28 = v27;
    if (*(v6 + 64))
    {
      v19 = [v27 initWithData:?];
    }

    else
    {
      v29 = [*(v6 + 24) deviceConfiguration];
      v19 = [v28 initWithData:v29];
    }

    if ([v11 mailboxVersion] == 128 && +[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", objc_msgSend(*(v6 + 136), "agreedKmlVehicleVersion"), 768))
    {
      if (![v19 isFriendImmoTokenOrSlotOnline] || objc_msgSend(v19, "maxOfflineAttestationCount") <= 1)
      {
        v6 = KmlLogger();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          sub_100367390();
          v68 = 1136;
          goto LABEL_30;
        }

LABEL_35:

LABEL_36:
LABEL_37:

LABEL_38:
        return;
      }

      v62 = [v11 signerSlotIdListOffset];
      v61 = [v11 signalingBitmapOffset];
      v30 = [v11 slotIdentifierLength];
      v31 = [v12 length];
      v66 = v30;
      if (v31 < [v19 maxOfflineAttestationCount] * v30)
      {
        v6 = KmlLogger();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          sub_100367390();
          v68 = 1145;
LABEL_30:
          sub_10039A68C();
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      v48 = [v11 isKeyAttestationSetByDeviceInSignalingBitmap:v26];
      v49 = KmlLogger();
      v50 = sub_1003970EC(v49);
      if (v48)
      {
        if (v50)
        {
          *buf = 136315394;
          sub_100367390();
          v68 = 1151;
          sub_10039A718(&_mh_execute_header, v51, v52, "%s : %i : Attestation(s) set. Let's count them", buf);
        }

        v65 = [NSMutableData dataWithLength:v30];
        v64 = [NSMutableData dataWithLength:v30];
        memset([v64 mutableBytes], 255, v30);
        if ([v19 maxOfflineAttestationCount])
        {
          v53 = 0;
          LODWORD(v6) = 0;
          v63 = v62 - v61;
          while (1)
          {
            v54 = [v12 subdataWithRange:{(v63 + v53), v66}];
            if (([v54 isEqualToData:v65] & 1) != 0 || objc_msgSend(v54, "isEqualToData:", v64))
            {
              break;
            }

            LODWORD(v6) = v6 + 1;

            v53 = v53 + v66;
            if (v6 >= [v19 maxOfflineAttestationCount])
            {
              goto LABEL_56;
            }
          }

          v57 = KmlLogger();
          if (sub_1003970EC(v57))
          {
            *buf = 136315394;
            sub_100367390();
            v68 = 1160;
            sub_10039A718(&_mh_execute_header, v58, v59, "%s : %i : Found an empty slot", buf);
          }
        }

        else
        {
          LOBYTE(v6) = 0;
        }

LABEL_56:

        v6 = v6;
      }

      else
      {
        if (v50)
        {
          *buf = 136315394;
          sub_100367390();
          v68 = 1167;
          sub_10039A718(&_mh_execute_header, v55, v56, "%s : %i : No attestations set in the mailbox", buf);
        }

        v6 = 0;
      }

      *a3 = [v19 maxOfflineAttestationCount] - v6;
      *a2 = 7;
      v60 = KmlLogger();
      if (!sub_10039A8BC(v60))
      {
        goto LABEL_35;
      }

      *buf = 136315906;
      sub_10039A834();
      sub_10039A7B0();
      v33 = &_mh_execute_header;
      v34 = "%s : %i : SharingInAChain capable endpoint. Tokens toShare = %lu, remainingDepth = %lu";
    }

    else
    {
      *a3 = 1;
      if (![v19 isFriendImmoTokenOrSlotOnline])
      {
        v39 = *([v12 bytes] + 1);
        v40 = [*(v6 + 24) sharingTokenAvailabilityBitmap];

        if (v40)
        {
          v6 = [*(v6 + 24) sharingTokenAvailabilityBitmap];
          v42 = [v6 unsignedCharValue];
        }

        else
        {
          v42 = 254;
        }

        v41.i32[0] = v39 & v42 & 0xFE;
        v43 = vcnt_s8(v41);
        v43.i16[0] = vaddlv_u8(v43);
        *a2 = v43.u32[0];
        v44 = KmlLogger();
        if (!sub_10039A8BC(v44))
        {
          goto LABEL_35;
        }

        *buf = 136316418;
        sub_10039A834();
        v68 = 1206;
        v69 = v45;
        *v70 = v39;
        *&v70[4] = v45;
        *&v70[6] = v42;
        v71 = 2048;
        v72 = v46;
        v73 = 2048;
        v74 = v47;
        v33 = &_mh_execute_header;
        v34 = "%s : %i : BitmapInMailbox: %02X; BitmapOfOpenInvitations: %02X; toShare = %lu, remainingDepth = %lu";
        v35 = buf;
        v36 = v6;
        v37 = OS_LOG_TYPE_INFO;
        v38 = 50;
        goto LABEL_34;
      }

      *a2 = 7;
      v32 = KmlLogger();
      if (!sub_10039A8BC(v32))
      {
        goto LABEL_35;
      }

      *buf = 136315906;
      sub_10039A834();
      sub_10039A7B0();
      v33 = &_mh_execute_header;
      v34 = "%s : %i : Tokens are online, report all available for simplicity. Tokens toShare = %lu, remainingDepth = %lu";
    }

    v35 = buf;
    v36 = v6;
    v37 = OS_LOG_TYPE_INFO;
    v38 = 38;
LABEL_34:
    _os_log_impl(v33, v36, v37, v34, v35, v38);
    goto LABEL_35;
  }
}

uint64_t sub_1003E4FD8(uint64_t a1)
{
  if (a1 && *(a1 + 24))
  {
    v3 = [KmlMailboxMappingData alloc];
    v4 = [*(a1 + 24) mailboxMapping];
    v5 = [v3 initWithData:v4 preferredVersion:{objc_msgSend(*(a1 + 136), "agreedKmlSharingVersion")}];

    v6 = [*(a1 + 24) publicKeyIdentifier];
    v7 = kmlUtilHexStringFromData();

    [v5 signalingBitmapOffset];
    v8 = SESEndPointGetPrivateData();
    v9 = 0;
    if (v9)
    {
      v10 = KmlLogger();
      if (sub_10036F5C4(v10))
      {
        sub_10039A96C();
        sub_10039A6C0();
        _os_log_impl(v11, v12, v13, v14, v15, 0x1Cu);
      }
    }

    else
    {
      v17 = *[v8 bytes];
      if (([v5 isKeyAttestationSetByDeviceInSignalingBitmap:v17] & 1) == 0)
      {
        v16 = [v5 isKeyAttestationSetByCarInSignalingBitmap:v17] ^ 1;
        goto LABEL_10;
      }
    }

    v16 = 0;
LABEL_10:

    return v16;
  }

  return 0;
}

void sub_1003E5194(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if (!a1)
  {
    goto LABEL_6;
  }

  v10 = sub_1003E01E8(a1);
  if (v10)
  {
    v11 = v10;
    v12 = KmlLogger();
    if (sub_100377D18(v12))
    {
      LODWORD(v63[0]) = 136315650;
      sub_10039A5FC();
      sub_100377CD0();
      *(&v63[1] + 4) = v11;
      sub_10039A698(&_mh_execute_header, v13, v14, "%s : %i : Error getting endpoint - %@", v63);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 152));
    [WeakRetained handleUpgradeCompletionWithStatus:v11];

    goto LABEL_6;
  }

  if (sub_1003E4FD8(a1))
  {
    memset(v63, 0, sizeof(v63));
    v16 = *(a1 + 136);
    v17 = [NSNumber numberWithUnsignedInteger:a3];
    v62 = v17;
    v18 = [NSArray arrayWithObjects:&v62 count:1];
    sub_100399BE8(KmlEndpointManager, *(a1 + 24));
    if (v16)
    {
      objc_msgSend_hasUpgradeForVersionType_versions_isOwnerPairedKey_(v16);
    }

    else
    {
      memset(v63, 0, sizeof(v63));
    }

    if ((BYTE8(v63[0]) & 1) == 0)
    {
      v37 = KmlLogger();
      if (sub_100377D18(v37))
      {
        v56 = 136315650;
        v57 = "[KmlEndpointManager upgradeVersionType:version:upgradeInformation:]";
        v58 = 1024;
        v59 = 1271;
        v60 = 2048;
        v61 = *&v63[1];
        sub_10039A698(&_mh_execute_header, v38, v39, "%s : %i : There is no upgrade available from current version: 0x%04lx", &v56);
      }

      v36 = objc_loadWeakRetained((a1 + 152));
      v40 = [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml"];
      v54 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v41 = [sub_10039719C() stringWithUTF8String:?];
      v55 = v41;
      [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      objc_claimAutoreleasedReturnValue();
      [sub_10039A744() errorWithDomain:v40 code:220 userInfo:v16];
      objc_claimAutoreleasedReturnValue();
      [sub_10036746C() handleUpgradeCompletionWithStatus:NSError];

      goto LABEL_29;
    }

    if (a2)
    {
      v30 = KmlLogger();
      if (sub_10036DCF8(v30))
      {
        v56 = 136315394;
        v57 = "[KmlEndpointManager upgradeVersionType:version:upgradeInformation:]";
        v58 = 1024;
        v59 = 1277;
        sub_100390B00();
        _os_log_impl(v31, v32, v33, v34, v35, 0x12u);
      }

      v36 = objc_loadWeakRetained((a1 + 152));
      [v36 handleUpgradeCompletionWithStatus:0];
      goto LABEL_29;
    }

    v42 = +[NSMutableDictionary dictionary];
    [v42 setObject:objc_opt_class() forKeyedSubscript:@"endpointCreationData"];
    [v42 setObject:objc_opt_class() forKeyedSubscript:@"mailboxMapping"];
    [v42 setObject:objc_opt_class() forKeyedSubscript:@"deviceConfiguration"];
    [v42 setObject:objc_opt_class() forKeyedSubscript:@"sharingConfiguration"];
    v43 = kmlUtilDecodeJson();
    v36 = 0;
    v53 = [sub_10039A874() objectForKey:?];
    kmlUtilLogLargeData();
    v44 = [v43 objectForKey:@"mailboxMapping"];
    kmlUtilLogLargeData();
    v45 = [v43 objectForKey:@"deviceConfiguration"];
    kmlUtilLogLargeData();
    v46 = [v43 objectForKey:@"sharingConfiguration"];
    kmlUtilLogLargeData();
    if ([v45 length])
    {
      v52 = [[KmlDeviceConfigurationData alloc] initWithData:v45 outerTag:1];
    }

    else
    {
      v52 = 0;
    }

    v51 = v44;
    if (!v36 && [v53 length] && objc_msgSend(v44, "length") && (objc_msgSend(v45, "length") || objc_msgSend(v46, "length")) && (!v52 || (objc_msgSend(v52, "didParseDataSuccessfully") & 1) != 0))
    {
      objc_storeStrong((a1 + 112), a4);
      v47 = [*(a1 + 24) readerInfo];
      v48 = [[KmlRoutingInformation alloc] initWithReaderInformation:v47];
      if (sub_100399BE8(KmlEndpointManager, *(a1 + 24)))
      {
        sub_1003E58F8(a1);
        goto LABEL_28;
      }

      v49 = [v48 manufacturer];
      SESEndPointPreWarmForAlisha();
    }

    else
    {
      v47 = objc_loadWeakRetained((a1 + 152));
      v48 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v49 = [v36 userInfo];
      v50 = [NSError errorWithDomain:v48 code:221 userInfo:v49];
      [v47 handleUpgradeCompletionWithStatus:v50];
    }

LABEL_28:
LABEL_29:

    goto LABEL_6;
  }

  v19 = KmlLogger();
  if (sub_100377D18(v19))
  {
    LODWORD(v63[0]) = 136315394;
    sub_10039A5FC();
    *(v63 + 14) = 1263;
    sub_10039A68C();
    _os_log_impl(v20, v21, v22, v23, v24, v25);
  }

  v26 = objc_loadWeakRetained((a1 + 152));
  v27 = [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml"];
  v64 = NSLocalizedDescriptionKey;
  KmlErrorString();
  v28 = [sub_10039719C() stringWithUTF8String:?];
  v65 = v28;
  [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  objc_claimAutoreleasedReturnValue();
  v29 = [sub_10039A744() errorWithDomain:v27 code:220 userInfo:v4];
  [v26 handleUpgradeCompletionWithStatus:v29];

LABEL_6:
}

void sub_1003E58F8(id *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = kmlUtilTimeNow();
    v4 = SESEndpointConvertWithSession();

    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      sub_1003722B8();
      sub_10039A75C();
      sub_100390B00();
      _os_log_impl(v6, v7, v8, v9, v10, 0x1Cu);
    }

    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(v2 + 19);
      sesErrorToKmlError();
      objc_claimAutoreleasedReturnValue();
      [sub_10039A864() handleUpgradeCompletionWithStatus:?];
    }

    else
    {
      v12 = sub_1003E01E8(v2);
      if (v12)
      {
        v4 = v12;
        WeakRetained = 0;
      }

      else
      {
        v16 = 0;
        WeakRetained = sub_1003E5B40(v2, &v16);
        v4 = v16;
        v14 = KmlLogger();
        if (sub_10036F124(v14))
        {
          sub_1003722B8();
          sub_10039A75C();
          sub_100367454(&_mh_execute_header, v1, v15, "%s : %i : Tracking request creation result: %@", v17);
        }

        if (!v4)
        {
          WeakRetained = WeakRetained;
          v4 = SESEndPointUpdateWithBlock();
        }
      }

      v2 = objc_loadWeakRetained(v2 + 19);
      v13 = sesErrorToKmlError();
      [v2 handleUpgradeCompletionWithStatus:v13];
    }
  }
}

id sub_1003E5B40(uint64_t a1, void *a2)
{
  if (a1)
  {
    v6 = +[NSMutableArray array];
    v7 = objc_opt_new();
    v8 = [v7 useOldKeyTrackingTag];

    if (v8)
    {
      v9 = 32574;
    }

    else
    {
      v9 = 32581;
    }

    v10 = [*(a1 + 24) certificates];
    if ([v10 count] <= 2)
    {
      v11 = KmlLogger();
      if (sub_100377D18(v11))
      {
        v95[0] = 136315394;
        sub_10039A5FC();
        v96 = 2184;
        sub_10039A68C();
        _os_log_impl(v12, v13, v14, v15, v16, v17);
      }

      if (!a2)
      {
        v21 = 0;
LABEL_60:

        goto LABEL_61;
      }

      v18 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v105 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v19 = [sub_10037BD94() stringWithUTF8String:?];
      v106 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      [NSError errorWithDomain:v18 code:222 userInfo:v20];
      *a2 = v21 = 0;
      goto LABEL_58;
    }

    v18 = [v10 objectAtIndexedSubscript:2];
    if (![v18 length])
    {
      v51 = KmlLogger();
      if (sub_10036F5C4(v51))
      {
        v95[0] = 136315394;
        sub_10039A5FC();
        v96 = 2193;
        sub_10039A68C();
        _os_log_impl(v52, v53, v54, v55, v56, v57);
      }

      if (!a2)
      {
        v21 = 0;
LABEL_59:

        goto LABEL_60;
      }

      v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v103 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v20 = [sub_10037BD94() stringWithUTF8String:?];
      v104 = v20;
      [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      objc_claimAutoreleasedReturnValue();
      [sub_10039A898() errorWithDomain:v19 code:222 userInfo:v3];
      *a2 = v21 = 0;
      goto LABEL_57;
    }

    v22 = [KmlTlv TLVWithTag:32548 value:v18];
    [v6 addObject:v22];

    v89 = [*(a1 + 24) readerInfo];
    v20 = [[KmlRoutingInformation alloc] initWithReaderInformation:v89];
    if ((sub_100399BE8(KmlEndpointManager, *(a1 + 24)) & 1) == 0)
    {
      v3 = [v10 objectAtIndexedSubscript:1];
      if (![v3 length])
      {
        v65 = KmlLogger();
        if (sub_10036F5C4(v65))
        {
          v95[0] = 136315394;
          sub_10039A5FC();
          v96 = 2214;
          sub_10039A68C();
          _os_log_impl(v66, v67, v68, v69, v70, v71);
        }

        v19 = v89;
        if (!a2)
        {
          v21 = 0;
LABEL_57:

LABEL_58:
          goto LABEL_59;
        }

        v72 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
        v101 = NSLocalizedDescriptionKey;
        KmlErrorString();
        v50 = v72;
        v73 = [sub_10037BD94() stringWithUTF8String:?];
        v102 = v73;
        v88 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        [NSError errorWithDomain:v72 code:222 userInfo:?];
        *a2 = v21 = 0;
LABEL_56:

        goto LABEL_57;
      }

      if (v8)
      {
        v9 = 32568;
      }

      else
      {
        v9 = 32584;
      }

      v23 = [KmlTlv TLVWithTag:32546 value:v3];
      sub_10039A7CC(v23);
    }

    v24 = [*(a1 + 24) anonymizedDsid];
    v84 = [v20 readerIdentifier];
    v25 = kmlUtilGenerateAccountInfoHash();
    if ([v25 length])
    {
      v26 = KmlLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v95[0] = 136315394;
        sub_10039A5FC();
        v96 = 2229;
        sub_10036DC0C(&_mh_execute_header, v26, v27, "%s : %i : Add account info hash", v95);
      }

      v28 = [KmlTlv TLVWithTag:94 value:v25];
      sub_10039A7CC(v28);
    }

    v87 = v18;
    v88 = v25;
    v85 = v24;
    v86 = v20;
    v83 = a2;
    v29 = [*(a1 + 24) privacyPublicKey];
    v30 = [KmlTlv TLVWithTag:24393 value:v29];
    sub_10039A7CC(v30);

    v31 = [@"ECIES_v1" dataUsingEncoding:4];
    v32 = [KmlTlv TLVWithTag:218 value:v31];
    sub_10039A7CC(v32);

    v33 = +[NSMutableData data];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v34 = v6;
    v35 = [v34 countByEnumeratingWithState:&v91 objects:v100 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v92;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v92 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v91 + 1) + 8 * i) asData];
          [v33 appendData:v39];
        }

        v36 = [v34 countByEnumeratingWithState:&v91 objects:v100 count:16];
      }

      while (v36);
    }

    v40 = [KmlTlv TLVWithTag:v9 value:v33];
    v41 = [v40 asData];

    kmlUtilLogLargeData();
    v90[1] = 0;
    v42 = SESEndPointPrivacyEncryption();
    v43 = 0;
    if (v43)
    {
      v3 = v43;
      v44 = KmlLogger();
      if (sub_10036F5C4(v44))
      {
        v95[0] = 136315650;
        sub_10039A5FC();
        sub_100377CD0();
        v97 = v3;
        sub_10039A6C0();
        _os_log_impl(v45, v46, v47, v48, v49, 0x1Cu);
      }

      v50 = v85;
      if (v83)
      {
        sesErrorToKmlError();
        *v83 = v21 = 0;
      }

      else
      {
        v21 = 0;
      }

      v20 = v86;
      v18 = v87;
    }

    else
    {
      v58 = [DAAlishaKeyEncryptedRequest alloc];
      v59 = [v42 version];
      v60 = [v42 ephemeralPublicKeydata];
      v61 = [v42 receiverPublicKeyHash];
      v62 = [v42 cipherText];
      v63 = [sub_10039A7A4() initWithVersion:? ephemeralPublicKey:? publicKeyHash:? encryptedRequest:?];

      v90[0] = 0;
      v82 = v63;
      v64 = [v63 encodeWithError:v90];
      v3 = v90[0];
      if (v3 || !v64)
      {
        v74 = KmlLogger();
        if (sub_10036F5C4(v74))
        {
          v95[0] = 136315906;
          sub_10039A5FC();
          sub_100377CD0();
          v97 = v3;
          v98 = v75;
          v99 = v64;
          sub_10039A6C0();
          _os_log_impl(v76, v77, v78, v79, v80, 0x26u);
        }

        v18 = v87;
        if (v83)
        {
          sesErrorToKmlError();
          *v83 = v21 = 0;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = v64;
        v18 = v87;
      }

      v20 = v86;

      v50 = v85;
    }

    v19 = v89;
    v73 = v84;
    goto LABEL_56;
  }

  v21 = 0;
LABEL_61:

  return v21;
}

NSObject *sub_1003E6488(NSObject *a1, uint64_t a2, void *a3, int a4)
{
  if (a1)
  {
    v8 = a1;
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"Upgrade";
      *buf = 136316162;
      *&buf[12] = 1024;
      *&buf[4] = "[KmlEndpointManager finalizeVersionType:version:revert:]";
      if (a4)
      {
        v10 = @"Revert";
      }

      *&buf[14] = 1378;
      *&buf[18] = 2112;
      *&buf[20] = v10;
      *&buf[28] = 2048;
      *&buf[30] = a2;
      v235 = 2048;
      v236 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : Requested %@ for type:0x%04lx, version: 0x%04lx", buf, 0x30u);
    }

    v11 = sub_1003E01E8(v8);
    if (v11)
    {
      v12 = v11;
      v13 = KmlLogger();
      if (sub_1003970B4(v13))
      {
        *buf = 136315650;
        *&buf[4] = "[KmlEndpointManager finalizeVersionType:version:revert:]";
        sub_10039A648();
        *&buf[14] = 1381;
        sub_10039A7E8();
        *&buf[20] = v12;
        sub_10036F590(&_mh_execute_header, v8, v14, "%s : %i : Error getting endpoint - %@", buf);
      }

      v15 = v12;
      goto LABEL_19;
    }

    v4 = &unk_100409000;
    if (a4)
    {
      v16 = KmlLogger();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
      if (a2)
      {
        if (v17)
        {
          *buf = 136315394;
          *&buf[4] = "[KmlEndpointManager finalizeVersionType:version:revert:]";
          sub_10039A648();
          *&buf[14] = 1393;
          sub_10036DC0C(&_mh_execute_header, v16, v18, "%s : %i : Revert is a no-op for VehicleServer upgrade", buf);
        }

        v19 = 0;
      }

      else
      {
        if (v17)
        {
          *buf = 136315394;
          *&buf[4] = "[KmlEndpointManager finalizeVersionType:version:revert:]";
          sub_10039A648();
          *&buf[14] = 1387;
          sub_10036DC0C(&_mh_execute_header, v16, v20, "%s : %i : Throw away saved info for framework upgrade", buf);
        }

        v208 = _NSConcreteStackBlock;
        v209 = 3221225472;
        v210 = sub_10039A1C0;
        v211 = &unk_1004D1D20;
        v212 = v8;
        v19 = SESEndPointUpdateWithBlock();
      }

      v21 = v19;
      goto LABEL_19;
    }

    memset(buf, 0, 32);
    isa = v8[17].isa;
    v24 = [NSNumber numberWithUnsignedInteger:a3];
    v233 = v24;
    v25 = [NSArray arrayWithObjects:&v233 count:1];
    sub_100399BE8(KmlEndpointManager, v8[3].isa);
    if (isa)
    {
      objc_msgSend_hasUpgradeForVersionType_versions_isOwnerPairedKey_(isa);
    }

    else
    {
      memset(buf, 0, 32);
    }

    if (sub_1003E4FD8(v8))
    {
      if (buf[8])
      {
        [(objc_class *)v8[17].isa upgradeForVersionType:a2 version:a3];
        v26 = [(objc_class *)v8[17].isa getVehicleSupportedVersionsData];
        v27 = v26;
        if (a2 == 2)
        {
          v202 = _NSConcreteStackBlock;
          v203 = 3221225472;
          v204 = sub_10039A20C;
          v205 = &unk_1004D1D70;
          v206 = v26;
          v207 = v8;
          v88 = SESEndPointUpdateWithBlock();
          v89 = sesErrorToKmlError();

          v90 = sub_10039A5A0();
          sub_1003E7780(v90, v89, v91);
          v8 = v89;
          v31 = v206;
          v4 = v8;
          goto LABEL_53;
        }

        v28 = [(objc_class *)v8[3].isa upgradeEndpointJSONData];
        if (![v28 length])
        {
          v92 = v28;
          v93 = KmlLogger();
          if (sub_10036F5DC(v93))
          {
            sub_10039A55C(4.8151e-34);
            v228 = 1435;
            sub_10039A798();
            sub_10039A68C();
            _os_log_impl(v94, v95, v96, v97, v98, v99);
          }

          v100 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
          v221 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v101 = [sub_100372244() stringWithUTF8String:?];
          v222 = v101;
          [NSDictionary dictionaryWithObjects:&v222 forKeys:&v221 count:1];
          objc_claimAutoreleasedReturnValue();
          v102 = [sub_10039A750() errorWithDomain:v100 code:221 userInfo:isa];

          v103 = sub_10039A5A0();
          sub_1003E7780(v103, v102, v104);
          v105 = v102;
          sub_10039A780();
          v31 = v92;
          goto LABEL_53;
        }

        v192 = v27;
        v29 = +[NSMutableDictionary dictionary];
        [v29 setObject:objc_opt_class() forKeyedSubscript:@"endpointCreationData"];
        [v29 setObject:objc_opt_class() forKeyedSubscript:@"mailboxMapping"];
        [v29 setObject:objc_opt_class() forKeyedSubscript:@"deviceConfiguration"];
        [v29 setObject:objc_opt_class() forKeyedSubscript:@"sharingConfiguration"];
        v201 = 0;
        v189 = v28;
        v187 = v29;
        v30 = kmlUtilDecodeJson();
        v31 = 0;
        v193 = [v30 objectForKey:@"endpointCreationData"];
        kmlUtilLogLargeData();
        v32 = [sub_10039A7A4() objectForKey:?];
        kmlUtilLogLargeData();
        v33 = [v30 objectForKey:@"deviceConfiguration"];
        kmlUtilLogLargeData();
        v191 = [v30 objectForKey:@"sharingConfiguration"];
        kmlUtilLogLargeData();
        v188 = v32;
        if (v31 || ![v193 length] || !objc_msgSend(v32, "length") || !objc_msgSend(v33, "length") && !objc_msgSend(v191, "length"))
        {
          v62 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
          v63 = [v31 userInfo];
          v59 = [sub_10039A78C() errorWithDomain:? code:? userInfo:?];

          v64 = sub_10039A5A0();
          sub_1003E7780(v64, v59, v65);
          v66 = v59;
          sub_10039A780();
          v27 = v192;
          sub_10039A960();
          goto LABEL_52;
        }

        v34 = objc_alloc_init(KmlEndpointCreationConfig);
        sub_1003DC12C(v34, v193);
        v186 = v34;
        if ((sub_1003DCB78(v34) & 1) == 0)
        {
          v106 = KmlLogger();
          v27 = v192;
          if (sub_10036F5DC(v106))
          {
            sub_10039A55C(4.8151e-34);
            v228 = 1476;
            sub_10039A798();
            sub_10039A68C();
            _os_log_impl(v107, v108, v109, v110, v111, v112);
          }

          v113 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
          v219 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v114 = [sub_10039A904() stringWithUTF8String:?];
          v220 = v114;
          v4 = [NSDictionary dictionaryWithObjects:&v220 forKeys:&v219 count:1];
          v59 = [sub_10039A78C() errorWithDomain:? code:? userInfo:?];

          v115 = sub_10039A5A0();
          sub_1003E7780(v115, v59, v116);
          v117 = v59;
          sub_10039A780();
          sub_10039A960();
          goto LABEL_51;
        }

        v184 = [[KmlMailboxMappingData alloc] initWithData:v32 preferredVersion:a3];
        v27 = v192;
        if (([v184 isValid] & 1) == 0)
        {
          v118 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
          v217 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v119 = [sub_10039A904() stringWithUTF8String:?];
          v218 = v119;
          v4 = [NSDictionary dictionaryWithObjects:&v218 forKeys:&v217 count:1];
          v59 = [sub_10039A78C() errorWithDomain:? code:? userInfo:?];

          v120 = sub_10039A5A0();
          sub_1003E7780(v120, v59, v121);
          v122 = v59;
          sub_10039A780();
          sub_10039A960();
          v60 = v184;
          goto LABEL_50;
        }

        v185 = [[KmlDeviceConfigurationData alloc] initWithData:v8[8].isa];
        v35 = [v33 length];
        v36 = KmlLogger();
        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
        if (v35)
        {
          if (v37)
          {
            sub_10039A55C(4.8151e-34);
            v228 = 1497;
            sub_10039A798();
            sub_10036DC0C(v38, v39, v40, v41, v42);
          }

          v43 = [[KmlDeviceConfigurationData alloc] initWithData:v33 outerTag:1];
        }

        else
        {
          if (v37)
          {
            sub_10039A55C(4.8151e-34);
            v228 = 1500;
            sub_10039A798();
            sub_10036DC0C(v44, v45, v46, v47, v48);
          }

          v43 = [[KmlDeviceConfigurationData alloc] initWithData:v8[8].isa];
          [v43 updateSharingConfigWithData:v191];
        }

        v31 = v189;
        v183 = v43;
        if (([v43 didParseDataSuccessfully] & 1) == 0)
        {
          v49 = KmlLogger();
          if (sub_1003970B4(v49))
          {
            sub_10039A55C(4.8151e-34);
            v228 = 1506;
            sub_10039A68C();
            _os_log_impl(v50, v51, v52, v53, v54, v55);
          }

          v56 = [sub_10039A91C() stringWithUTF8String:"com.apple.sesd.kml"];
          v215 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v57 = [sub_10039A904() stringWithUTF8String:?];
          v216 = v57;
          v58 = [NSDictionary dictionaryWithObjects:&v216 forKeys:&v215 count:1];
          v4 = [NSError errorWithDomain:v56 code:221 userInfo:v58];

          v8 = 0;
          v59 = v187;
          v60 = v184;
          v61 = v185;
          v27 = v192;
          goto LABEL_49;
        }

        v123 = [v185 oemSpecificContentAsData];
        [v43 updatePPIDWithServerProvidedData:v123];

        if ([v185 uwbDisabledLocally])
        {
          [v43 removeUwbSupportLocally];
        }

        v124 = v185;
        v125 = [v185 readerSupportsUwb];
        if (v125 != [v43 readerSupportsUwb])
        {
          v126 = KmlLogger();
          if (sub_100377D18(v126))
          {
            v127 = [v185 readerSupportsUwb];
            [v43 readerSupportsUwb];
            sub_10039A55C(4.8153e-34);
            v228 = 1516;
            v229 = v128;
            *v230 = v127;
            *&v230[4] = v128;
            *&v230[6] = v129;
            _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_ERROR, "%s : %i : Mismatch in BT/UWB support, Current (%d), New (%d)", v225, 0x1Eu);
          }

          v27 = v192;
          if (!sub_1003F6F5C(v130) || (v131 = objc_opt_new(), v132 = [v131 allowRadioMismatchForTest], v131, !v132))
          {
            v158 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
            v213 = NSLocalizedDescriptionKey;
            KmlErrorString();
            v159 = [sub_10039A904() stringWithUTF8String:?];
            v214 = v159;
            v4 = [NSDictionary dictionaryWithObjects:&v214 forKeys:&v213 count:1];
            v160 = [sub_10039A78C() errorWithDomain:? code:? userInfo:?];

            v161 = sub_10039A5A0();
            sub_1003E7780(v161, v160, v162);
            v163 = v160;
            sub_10039A780();
            v31 = v189;
            goto LABEL_99;
          }

          v133 = KmlLogger();
          if (sub_10036DCF8(v133))
          {
            sub_10039A55C(4.8151e-34);
            v228 = 1519;
            sub_100390B00();
            _os_log_impl(v134, v135, v136, v137, v138, 0x12u);
          }

          v31 = v189;
          v124 = v185;
          v43 = v183;
        }

        v139 = [v43 asData];
        v140 = v8[8].isa;
        v8[8].isa = v139;

        if (([v124 isFriendImmoTokenOrSlotOnline]& 1) == 0)
        {
          sub_1003E7A34(v8);
        }

        v141 = [v183 v3PrivateMailboxSettingAsData];
        v142 = [v183 v3ConfMailboxSettingAsData];
        v200 = 0;
        SESEndPointConfigureMailBoxes();
        v4 = 0;

        v27 = v192;
        if (v4)
        {
          v164 = KmlLogger();
          v30 = v182;
          if (sub_100377D18(v164))
          {
            sub_10039A55C(4.8152e-34);
            sub_10039A660(1543);
            *v230 = v4;
            sub_10039A698(&_mh_execute_header, v165, v166, "%s : %i : Upgrade commit failed with : %@", v225);
          }

          v167 = sesErrorToKmlError();

          v168 = sub_10039A5A0();
          sub_1003E7780(v168, v167, v169);
          v170 = v167;
          sub_10039A780();
        }

        else
        {
          if ([KmlVersions doesVersion:[(objc_class *)v8[17].isa agreedKmlVehicleVersion] support:768])
          {
            v4 = [NSMutableData dataWithLength:2];
            v199 = 0x80;
            [v4 replaceBytesInRange:0 withBytes:1, &v199];
            v143 = KmlLogger();
            if (sub_10036DCF8(v143))
            {
              sub_10039A55C(4.8152e-34);
              sub_10039A660(1558);
              *v230 = v4;
              sub_100390B00();
              _os_log_impl(v144, v145, v146, v147, v148, 0x1Cu);
            }

            v198[1] = 0;
            SESEndPointSetPrivateDataWithSession();
            v149 = 0;

            if (v149)
            {
              v177 = KmlLogger();
              if (sub_10039A8D4(v177))
              {
                sub_10039A55C(4.8152e-34);
                sub_10039A660(1569);
                *v230 = v149;
                sub_10036F590(&_mh_execute_header, v4, v178, "%s : %i : Upgrade commit failed with : %@", v225);
              }

              v59 = sesErrorToKmlError();

              v179 = sub_10039A5A0();
              sub_1003E7780(v179, v59, v180);
              v181 = v59;
              sub_10039A780();
              v27 = v192;
              sub_10039A960();
              v30 = v182;
              goto LABEL_100;
            }
          }

          v198[0] = 0;
          v150 = sub_1003E5B40(v8, v198);
          v151 = v198[0];
          v190 = v150;
          if (v151)
          {
            v171 = v151;
            v172 = KmlLogger();
            if (sub_10039A8D4(v172))
            {
              sub_10039A55C(4.8152e-34);
              sub_10039A660(1577);
              *v230 = v171;
              sub_10036F590(&_mh_execute_header, v4, v173, "%s : %i : Failed to create tracking request : %@", v225);
            }

            v174 = sesErrorToKmlError();

            v175 = sub_10039A5A0();
            sub_1003E7780(v175, v174, v176);
            v8 = v174;
          }

          else
          {
            sub_10039A6EC();
            v194 = v188;
            v195 = v192;
            v196 = v150;
            v197 = v186;
            v152 = SESEndPointUpdateWithBlock();
            v153 = KmlLogger();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
            {
              sub_10039A55C(4.8152e-34);
              sub_10039A660(1593);
              *v230 = v152;
              sub_100367454(&_mh_execute_header, v153, v154, "%s : %i : Upgrade commit result : %@", v225);
            }

            v155 = sesErrorToKmlError();

            v156 = sub_10039A5A0();
            sub_1003E7780(v156, v155, v157);
            v8 = v155;
          }

          v30 = v182;

          v4 = v8;
        }

LABEL_99:
        v59 = v187;
LABEL_100:
        v60 = v184;
        v61 = v185;
LABEL_49:

LABEL_50:
LABEL_51:

LABEL_52:
LABEL_53:

        goto LABEL_20;
      }

      v78 = KmlLogger();
      if (sub_10036F5DC(v78))
      {
        *v225 = 136315650;
        v226 = "[KmlEndpointManager finalizeVersionType:version:revert:]";
        v227 = 1024;
        v228 = 1410;
        v229 = 2048;
        *v230 = *&buf[16];
        sub_10039A798();
        sub_10036F590(v79, v80, v81, v82, v83);
      }

      v74 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
      v223 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v75 = [sub_100372244() stringWithUTF8String:?];
      v224 = v75;
      v76 = &v224;
      v77 = &v223;
    }

    else
    {
      v67 = KmlLogger();
      if (sub_10036F5DC(v67))
      {
        sub_10039A55C(4.8151e-34);
        v228 = 1403;
        sub_10039A798();
        sub_10039A68C();
        _os_log_impl(v68, v69, v70, v71, v72, v73);
      }

      v74 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
      v231 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v75 = [sub_100372244() stringWithUTF8String:?];
      v232 = v75;
      v76 = &v232;
      v77 = &v231;
    }

    [NSDictionary dictionaryWithObjects:v76 forKeys:v77 count:1];
    objc_claimAutoreleasedReturnValue();
    v84 = [sub_10039A750() errorWithDomain:v74 code:220 userInfo:isa];

    v85 = sub_10039A5A0();
    sub_1003E7780(v85, v84, v86);
    v87 = v84;
LABEL_19:
    sub_10039A780();
LABEL_20:

    goto LABEL_21;
  }

  v4 = 0;
LABEL_21:

  return v4;
}

void sub_1003E7780(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v27 = v5;
    if (v5)
    {
      v6 = [v5 code];
    }

    else
    {
      v6 = 0;
    }

    v26 = [*(a1 + 24) readerInfo];
    v7 = [[KmlRoutingInformation alloc] initWithReaderInformation:v26];
    v23 = v7;
    if (v7)
    {
      v8 = v7;
      v9 = [v7 manufacturer];
      v25 = [v9 copy];

      v10 = [v8 brand];
      v24 = [v10 copy];

      v11 = [v8 regionString];
      v12 = [v11 copy];
    }

    else
    {
      v12 = @"Unknown";
      v24 = @"Unknown";
      v25 = @"Unknown";
    }

    v13 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 64)];
    v14 = [v13 readerSupportsNfc];
    if ([v13 readerSupportsUwb])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    v28[0] = @"status";
    v16 = [NSNumber numberWithUnsignedInt:v6, v12];
    v29[0] = v16;
    v28[1] = @"versionType";
    v17 = [NSNumber numberWithUnsignedInteger:*a3];
    v29[1] = v17;
    v28[2] = @"toVersion";
    v18 = [NSNumber numberWithUnsignedInteger:a3[3]];
    v29[2] = v18;
    v28[3] = @"fromVersion";
    v19 = [NSNumber numberWithUnsignedInteger:a3[2]];
    v29[3] = v19;
    v29[4] = v12;
    v28[4] = @"dataCenterCode";
    v28[5] = @"manufacturer";
    v29[5] = v25;
    v29[6] = v24;
    v28[6] = @"brand";
    v28[7] = @"transportSupported";
    v20 = [NSNumber numberWithUnsignedInteger:v15 | v14];
    v29[7] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:8];

    sub_100369708(KmlAnalyticsLogger, v21);
    v5 = v27;
  }
}

void sub_1003E7A34(uint64_t a1)
{
  if (a1)
  {
    v3 = sub_100394824(KmlSharingRecordsUpdater, *(a1 + 24));
    v4 = sub_100395728(v3);
    v5 = +[NSMutableSet set];
    sub_100396F74();
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:v15 objects:v19 count:16];
    if (v7)
    {
      v1 = v7;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(v15[1] + 8 * v9) sharingSessionIdentifier];
          objc_claimAutoreleasedReturnValue();
          [sub_10039A670() addObject:?];

          v9 = (v9 + 1);
        }

        while (v1 != v9);
        v1 = [v6 countByEnumeratingWithState:v15 objects:v19 count:16];
      }

      while (v1);
    }

    v10 = [v5 count];
    v11 = KmlLogger();
    v12 = sub_10036F124(v11);
    if (v10)
    {
      if (v12)
      {
        *v17 = 136315394;
        sub_1003939D8();
        v18 = 2286;
        sub_10036DC0C(&_mh_execute_header, v1, v13, "%s : %i : canceling pending invitations", v17);
      }

      sub_10039F400(KmlOwnerSharingManager, v5);
    }

    else
    {
      if (v12)
      {
        *v17 = 136315394;
        sub_1003939D8();
        v18 = 2289;
        sub_10036DC0C(&_mh_execute_header, v1, v14, "%s : %i : No Pending invitations to cancel", v17);
      }
    }
  }
}

char *sub_1003E7C30(char *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = sub_1003E01E8(a1);
    v9 = &unk_100409000;
    if (v8)
    {
      v10 = v8;
      v11 = KmlLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10039A61C(4.8152e-34);
        sub_10039A854(1606);
        *v196 = v10;
        sub_10036F590(&_mh_execute_header, v11, v12, "%s : %i : Error getting endpoint - %@", buf);
      }

      v13 = v10;
      a1 = v13;
      goto LABEL_37;
    }

    *(&v182 + 3) = 0;
    LODWORD(v182) = 0;
    v14 = [*(a1 + 17) agreedKmlVehicleVersion];
    v169 = [*(a1 + 17) agreedKmlVehicleVersion];
    v15 = &off_100407000;
    if (v7)
    {
      v16 = [*(a1 + 3) keyRole];
      if (!v16 || (v9 = v16, [v7 keyRole], v17 = v14, v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 3), "keyRole"), v19 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v18, "isEqualToNumber:", v19), v19, v18, v14 = v17, v9, (v3 & 1) == 0))
      {
        v20 = v14;
        v21 = KmlLogger();
        if (sub_1003674CC(v21))
        {
          sub_10039A61C(4.8152e-34);
          sub_10039A854(1613);
          *v196 = v7;
          sub_100367454(&_mh_execute_header, v9, v22, "%s : %i : Received additional configuration data with updated information: %@", buf);
        }

        sub_10039A6CC();
        v177 = 3221225472;
        v178 = sub_10039A2F4;
        v179 = &unk_1004D1D70;
        v180 = v7;
        v181 = a1;
        v23 = SESEndPointUpdateWithBlock();
        v24 = sesErrorToKmlError();

        if (v24)
        {
          v25 = KmlLogger();
          if (sub_100377D18(v25))
          {
            sub_10039A61C(4.8152e-34);
            sub_10039A854(1624);
            *v196 = v24;
            sub_10039A698(&_mh_execute_header, v26, v27, "%s : %i : Unable to update endpoint with additional configuration data. Error: %@", buf);
          }

          v13 = v24;
          v15 = v180;
          a1 = v13;
          goto LABEL_36;
        }

        v14 = v20;
      }
    }

    if (!v6)
    {
      v40 = KmlLogger();
      if (sub_10036DCF8(v40))
      {
        sub_10039A61C(4.8151e-34);
        v194 = 1630;
        sub_100390B00();
        _os_log_impl(v41, v42, v43, v44, v45, 0x12u);
      }

      v13 = 0;
      a1 = 0;
      goto LABEL_36;
    }

    v165 = v14;
    v166 = v169;
    v28 = +[NSMutableDictionary dictionary];
    [v28 setObject:objc_opt_class() forKeyedSubscript:@"deviceConfiguration"];
    [v28 setObject:objc_opt_class() forKeyedSubscript:@"sharingConfiguration"];
    v15 = kmlUtilDecodeJson();
    v29 = 0;
    v30 = [v15 objectForKey:@"deviceConfiguration"];
    kmlUtilLogLargeData();
    v31 = [v15 objectForKey:@"sharingConfiguration"];
    kmlUtilLogLargeData();
    v170 = v31;
    if (v29 || ![v30 length] && !objc_msgSend(v31, "length"))
    {
      v61 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v62 = [v29 userInfo];
      v63 = [NSError errorWithDomain:v61 code:226 userInfo:v62];

      v72 = sub_10039A570(v64, v65, v66, v67, v68, v69, v70, v71, v155, v158, obj, v165, v166, v167, v170, v171, v172, v173, v174, v175, 0, v176, v177, v178, v179, v180, v181, v182);
      sub_1003E7780(v72, v63, v73);
      v13 = v63;
      a1 = v13;
      goto LABEL_35;
    }

    v32 = a1 + 64;
    v168 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 8)];
    v33 = [v30 length];
    v34 = KmlLogger();
    v35 = sub_1003970EC(v34);
    if (v33)
    {
      if (v35)
      {
        sub_10039A6B4(4.8151e-34);
        sub_10039A60C("[KmlEndpointManager updateConfiguration:additionalConfigurationData:]");
        *(v36 + 14) = 1662;
        sub_10039A718(&_mh_execute_header, v37, v38, "%s : %i : Full device config was received. So that will be used.", buf);
      }

      v39 = [[KmlDeviceConfigurationData alloc] initWithData:v30 outerTag:1];
    }

    else
    {
      if (v35)
      {
        sub_10039A6B4(4.8151e-34);
        sub_10039A60C("[KmlEndpointManager updateConfiguration:additionalConfigurationData:]");
        *(v46 + 14) = 1665;
        sub_10039A718(&_mh_execute_header, v47, v48, "%s : %i : Only sharing config provided. Rest remains same", buf);
      }

      v39 = [[KmlDeviceConfigurationData alloc] initWithData:*v32];
      [v39 updateSharingConfigWithData:v170];
    }

    if (([v39 didParseDataSuccessfully] & 1) == 0)
    {
      v49 = KmlLogger();
      if (sub_10036F5C4(v49))
      {
        sub_10039A6B4(4.8151e-34);
        *(v50 + 4) = "[KmlEndpointManager updateConfiguration:additionalConfigurationData:]";
        v193 = 1024;
        *(v50 + 14) = 1671;
        sub_10039A68C();
        _os_log_impl(v51, v52, v53, v54, v55, v56);
      }

      v57 = [sub_10039A8EC() stringWithUTF8String:"com.apple.sesd.kml"];
      v189 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v58 = [sub_10039A910() stringWithUTF8String:?];
      v190 = v58;
      v59 = [NSDictionary dictionaryWithObjects:&v190 forKeys:&v189 count:1];
      a1 = [NSError errorWithDomain:v57 code:221 userInfo:v59];

      v13 = 0;
      goto LABEL_34;
    }

    v74 = [v168 oemSpecificContentAsData];
    [v39 updatePPIDWithServerProvidedData:v74];

    if ([v168 uwbDisabledLocally])
    {
      [v39 removeUwbSupportLocally];
    }

    v75 = [v168 readerSupportsUwb];
    if (v75 != [v39 readerSupportsUwb])
    {
      v76 = KmlLogger();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v77 = [v168 readerSupportsUwb];
        v78 = [v39 readerSupportsUwb];
        *buf = 136315906;
        v192 = "[KmlEndpointManager updateConfiguration:additionalConfigurationData:]";
        v193 = 1024;
        v194 = 1681;
        v195 = 1024;
        *v196 = v77;
        *&v196[4] = 1024;
        *&v196[6] = v78;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "%s : %i : Mismatch in BT/UWB support, Current (%d), New (%d)", buf, 0x1Eu);
      }

      if (!sub_1003F6F5C(v79) || (v80 = objc_opt_new(), v81 = [v80 allowRadioMismatchForTest], v80, !v81))
      {
        v159 = [sub_10039A8EC() stringWithUTF8String:"com.apple.sesd.kml"];
        v187 = NSLocalizedDescriptionKey;
        KmlErrorString();
        v96 = [sub_10039A8F8() stringWithUTF8String:?];
        v188 = v96;
        v97 = [NSDictionary dictionaryWithObjects:&v188 forKeys:&v187 count:1];
        v98 = [NSError errorWithDomain:v159 code:226 userInfo:v97];

        v107 = sub_10039A570(v99, v100, v101, v102, v103, v104, v105, v106, v155, v159, NSError, v165, v166, v168, v170, v171, v172, v173, v174, v175, 0, v176, v177, v178, v179, v180, v181, v182);
        sub_1003E7780(v107, v98, v108);
        v13 = v98;
        a1 = v13;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
        goto LABEL_38;
      }

      v82 = KmlLogger();
      if (sub_100377D6C(v82))
      {
        sub_10039A5B4(4.8151e-34);
        *(v83 + 14) = 1684;
        sub_10039A680();
        _os_log_impl(v84, v85, v86, v87, v88, 0x12u);
      }
    }

    obja = [v39 asData];
    if ([obja isEqualToData:*v32])
    {
      v89 = KmlLogger();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        sub_10039A5B4(4.8151e-34);
        *(v90 + 14) = 1695;
        sub_10036DC0C(&_mh_execute_header, v89, v91, "%s : %i : New device config is identical to existing device config. Ignoring the update.", buf);
      }

      v92 = [sub_10039A8EC() stringWithUTF8String:"com.apple.sesd.kml"];
      v156 = v92;
      v185 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v93 = [sub_10039A8F8() stringWithUTF8String:?];
      v186 = v93;
      v94 = &v186;
      v95 = &v185;
    }

    else
    {
      v109 = [v39 isValidForKmlVersion:objc_msgSend(*(a1 + 17) transport:{"agreedKmlVehicleVersion"), 0}];
      v110 = KmlLogger();
      if (v109)
      {
        if (sub_100377D6C(v110))
        {
          sub_10039A5B4(4.8151e-34);
          *(v111 + 14) = 1708;
          sub_10039A680();
          _os_log_impl(v112, v113, v114, v115, v116, 0x12u);
        }

        v117 = obja;
        objc_storeStrong(a1 + 8, obja);
        v118 = [v39 deviceBtOOBKey];
        v119 = *(a1 + 11);
        *(a1 + 11) = v118;

        v120 = [v39 deviceBtIntroKey];
        v121 = *(a1 + 10);
        *(a1 + 10) = v120;

        v122 = SESEndPointUpdateWithBlock();
        if (([v168 isFriendImmoTokenOrSlotOnline] & 1) == 0 && objc_msgSend(v39, "isFriendImmoTokenOrSlotOnline"))
        {
          sub_1003E7A34(a1);
        }

        v160 = sesErrorToKmlError();

        v123 = KmlLogger();
        if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
        {
          sub_10039A5B4(4.8152e-34);
          sub_100377CFC(1729);
          *(v124 + 20) = v160;
          sub_100367454(&_mh_execute_header, v123, v125, "%s : %i : Update endpoint result : %@", buf);
        }

        v134 = sub_10039A570(v126, v127, v128, v129, v130, v131, v132, v133, v155, v160, obja, v165, v166, v168, v170, _NSConcreteStackBlock, 3221225472, sub_10039A360, &unk_1004D1D20, a1, 0, v176, v177, v178, v179, v180, v181, v182);
        sub_1003E7780(v134, v161, v135);
        v13 = v161;
        goto LABEL_70;
      }

      if (sub_100377D54(v110))
      {
        sub_10039A5B4(4.8151e-34);
        *(v136 + 14) = 1702;
        sub_10039A68C();
        _os_log_impl(v137, v138, v139, v140, v141, v142);
      }

      v92 = [sub_10039A8EC() stringWithUTF8String:"com.apple.sesd.kml"];
      v156 = v92;
      v183 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v93 = [sub_10039A8F8() stringWithUTF8String:?];
      v184 = v93;
      v94 = &v184;
      v95 = &v183;
    }

    v143 = [NSDictionary dictionaryWithObjects:v94 forKeys:v95 count:1, v156];
    v144 = [NSError errorWithDomain:v92 code:226 userInfo:v143];

    v153 = sub_10039A570(v145, v146, v147, v148, v149, v150, v151, v152, v157, NSError, obja, v165, v166, v168, v170, v171, v172, v173, v174, v175, 0, v176, v177, v178, v179, v180, v181, v182);
    sub_1003E7780(v153, v144, v154);
    v13 = v144;
    v117 = objb;
LABEL_70:

    a1 = v13;
    goto LABEL_34;
  }

LABEL_38:

  return a1;
}

id sub_1003E8884(id *a1, void *a2)
{
  if (a1)
  {
    v5 = sub_1003E01E8(a1);
    if (v5)
    {
      v6 = v5;
      v7 = KmlLogger();
      if (sub_100377D18(v7))
      {
        *v28 = 136315650;
        sub_1003939F8();
        sub_10036F484();
        v29 = v6;
        sub_10039A698(&_mh_execute_header, v8, v9, "%s : %i : Error getting endpoint - %@", v28);
      }

      if (a2)
      {
        v10 = v6;
        v11 = 0;
        *a2 = v6;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_20;
    }

    v12 = [a1[3] readerInfo];
    v13 = [[KmlRoutingInformation alloc] initWithReaderInformation:v12];
    v14 = [v13 manufacturer];
    v15 = SESEndpointGetBindingAttestationRequestWithSession();
    v6 = 0;

    if (v6)
    {
      v16 = KmlLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v28 = 136315650;
        sub_1003939F8();
        sub_10036F484();
        v29 = v6;
        sub_10036F590(&_mh_execute_header, v16, v17, "%s : %i : Failed to get binding attestation data with error : %@", v28);
      }

      if (!a2)
      {
        v11 = 0;
        goto LABEL_19;
      }

      v18 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v19 = [v6 userInfo];
      [NSError errorWithDomain:v18 code:112 userInfo:v19];
      *a2 = v11 = 0;
    }

    else
    {
      v18 = +[NSUUID UUID];
      v20 = [DAKeyBindingAttestationRequestData alloc];
      v21 = [sub_10039A898() subCAAttestation];
      v22 = [v15 casdECDSACertificate];
      v23 = [v15 casdRSACertificate];
      v11 = [v2 initWithSharingSessionIdentifier:v18 subCaAttestation:v21 casd:v22 rsaCertData:v23];

      if (!a2 || v11)
      {
        goto LABEL_17;
      }

      v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      KmlErrorString();
      v27 = [sub_10039A8F8() stringWithUTF8String:?];
      sub_10039A814();
      v25 = [v24 dictionaryWithObjects:? forKeys:? count:?];
      *a2 = [NSError errorWithDomain:v19 code:112 userInfo:v25];
    }

LABEL_17:
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v11 = 0;
LABEL_21:

  return v11;
}

void *sub_1003E8BF8(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = sub_1003E01E8(a1);
    if (v5)
    {
      v6 = v5;
      v7 = KmlLogger();
      if (sub_100377D18(v7))
      {
        v20[0] = 136315650;
        sub_1003939D8();
        sub_10039A75C();
        sub_10039A698(&_mh_execute_header, v8, v9, "%s : %i : Error getting endpoint - %@", v20);
      }

      a1 = v6;
    }

    else
    {
      v10 = sub_1003DF2B8([KmlBindingAttestation alloc], v4);
      v11 = sub_1003BA3D0(v10);
      v12 = [v11 length];

      if (v12)
      {
        v17 = v10;
        v13 = SESEndPointUpdateWithBlock();
        v14 = v17;
      }

      else
      {
        v14 = [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml"];
        v18 = NSLocalizedDescriptionKey;
        KmlErrorString();
        v15 = [sub_10039719C() stringWithUTF8String:?];
        v19 = v15;
        [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        objc_claimAutoreleasedReturnValue();
        v13 = [sub_10039A744() errorWithDomain:v14 code:112 userInfo:v2];
      }

      a1 = v13;
    }
  }

  return a1;
}

id sub_1003E8E30(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1 && [v4 length])
  {
    [KmlTlv TLVsWithData:v5];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v23 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v7)
    {
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v2 = *(*(&v20 + 1) + 8 * i);
          if ([v2 tag]== 32565)
          {
            v7 = [v2 value];
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v29 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    if ([v7 length])
    {
      [KmlTlv TLVsWithData:v7];
      objc_claimAutoreleasedReturnValue();
      sub_100396F74();
      v2 = v10;
      v11 = [v2 countByEnumeratingWithState:v18 objects:v24 count:16];
      if (v11)
      {
        v12 = *v19;
        while (2)
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v2);
            }

            v14 = *(v18[1] + 8 * j);
            if ([v14 tag] == 78)
            {
              v11 = [v14 value];
              goto LABEL_25;
            }
          }

          v11 = [v2 countByEnumeratingWithState:v18 objects:v24 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }

    else
    {
      v15 = KmlLogger();
      if (sub_10036F124(v15))
      {
        v25 = 136315394;
        v26 = "[KmlEndpointManager getSlotIdFromAttestationPackage:]";
        v27 = 1024;
        v28 = 2156;
        sub_10036DC0C(&_mh_execute_header, v2, v16, "%s : %i : Could not find friend attestation package in the data", &v25);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id *sub_1003E90C4(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 19, a2);
  }

  return result;
}

void sub_1003E90D4(uint64_t a1)
{
  if (!a1)
  {
LABEL_6:
    sub_1003722A4();
    return;
  }

  sub_100372298();
  if (v5)
  {
    v6 = KmlLogger();
    if (sub_100057AEC(v6))
    {
      sub_10036BED0();
      v17 = 441;
      sub_10036DBA0(&_mh_execute_header, v7, v8, "%s : %i : Transport not ready to create session", v16);
    }

    v9 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    sub_10037225C();
    [sub_100372244() stringWithUTF8String:?];
    objc_claimAutoreleasedReturnValue();
    sub_100372278();
    sub_100372228();
    [v10 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v11 = [sub_1003721D4() errorWithDomain:? code:? userInfo:?];

    v12 = [v1 delegate];
    [v12 handleSessionStartResult:v11];

    goto LABEL_6;
  }

  sub_1003722A4();

  sub_1003E97B8(v13, v14);
}

void sub_1003E9258(uint64_t a1)
{
  if (a1)
  {
    sub_100372298();
    switch(v2)
    {
      case 2:
      case 6:
        v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        if (*(v1 + 80))
        {
          v11 = 23;
        }

        else
        {
          v11 = 24;
        }

        v19 = NSLocalizedDescriptionKey;
        v12 = [NSString stringWithUTF8String:KmlErrorString()];
        v20 = v12;
        v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v14 = [NSError errorWithDomain:v10 code:v11 userInfo:v13];
        v15 = *(v1 + 48);
        *(v1 + 48) = v14;

        sub_1003E97B8(v1, 9);
        goto LABEL_6;
      case 3:
      case 7:
        sub_1003722A4();

        sub_1003E97B8(v16, v17);
        break;
      default:
        v3 = KmlLogger();
        if (sub_10036F978(v3))
        {
          sub_10036DB8C();
          sub_10039D698(&_mh_execute_header, v4, v5, "%s : %i : session is not running. Ignore request to end it", v6, v7, v8, v9);
        }

        goto LABEL_6;
    }
  }

  else
  {
LABEL_6:
    sub_1003722A4();
  }
}

void sub_1003E9438(uint64_t a1)
{
  if (!a1)
  {
LABEL_10:
    sub_1003722A4();
    return;
  }

  sub_100372298();
  if (v5 == 5)
  {
    v13 = KmlLogger();
    if (sub_100057AEC(v13))
    {
      sub_10036BED0();
      v21 = 476;
      sub_10036DBA0(&_mh_execute_header, v14, v15, "%s : %i : Session already paused.", v20);
    }

    v16 = [v1 delegate];
    [v16 handleSessionPauseResult:0];

    goto LABEL_10;
  }

  if (v5 != 3)
  {
    v6 = KmlLogger();
    if (sub_100057AEC(v6))
    {
      sub_10036BED0();
      v21 = 480;
      sub_10036DBA0(&_mh_execute_header, v7, v8, "%s : %i : Transport not running to pause", v20);
    }

    v9 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    sub_10037225C();
    [sub_100372244() stringWithUTF8String:?];
    objc_claimAutoreleasedReturnValue();
    sub_100372278();
    sub_100372228();
    [v10 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v11 = [sub_1003721D4() errorWithDomain:? code:? userInfo:?];

    v12 = [v1 delegate];
    [v12 handleSessionPauseResult:v11];

    goto LABEL_10;
  }

  sub_1003722A4();

  sub_1003E97B8(v17, v18);
}

void sub_1003E9630(uint64_t a1)
{
  if (!a1)
  {
LABEL_6:
    sub_1003722A4();
    return;
  }

  sub_100372298();
  if (v5 != 5)
  {
    v6 = KmlLogger();
    if (sub_100057AEC(v6))
    {
      sub_10036BED0();
      v17 = 465;
      sub_10036DBA0(&_mh_execute_header, v7, v8, "%s : %i : Transport not ready to resume session", v16);
    }

    v9 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    sub_10037225C();
    [sub_100372244() stringWithUTF8String:?];
    objc_claimAutoreleasedReturnValue();
    sub_100372278();
    sub_100372228();
    [v10 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v11 = [sub_1003721D4() errorWithDomain:? code:? userInfo:?];

    v12 = [v1 delegate];
    [v12 handleSessionResumeResult:v11];

    goto LABEL_6;
  }

  sub_1003722A4();

  sub_1003E97B8(v13, v14);
}

void sub_1003E97B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10039B82C;
    v3[3] = &unk_1004C2B00;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003E9834(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFFELL) == 0xA)
    {

      sub_1003E97B8(a1, 12);
    }

    else
    {
      v2 = KmlLogger();
      if (sub_10036F978(v2))
      {
        sub_10036DB8C();
        sub_10039D698(&_mh_execute_header, v3, v4, "%s : %i : Transaction session is not running. Ignore request to end it", v5, v6, v7, v8);
      }
    }
  }
}

void sub_1003E9918(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 40) endSession];
    [*(a1 + 40) setDelegate:0];
    v3 = *(a1 + 40);
    *(a1 + 40) = 0;

    [*(a1 + 24) stopHceEmulation];
    [*(a1 + 24) stopTransactionEmulation];
    [*(a1 + 24) endSession];
    v4 = *(a1 + 24);
    *(a1 + 24) = 0;

    v5 = *(a1 + 32);
    *(a1 + 32) = 0;

    sub_1003EA12C(a1);
    sub_1003EA370(a1);
    v6 = KmlLogger();
    if (sub_100057AEC(v6))
    {
      sub_10036DB8C();
      v10 = 423;
      sub_10036DBA0(&_mh_execute_header, v7, v8, "%s : %i : Resetting state to ready", v9);
    }

    *(a1 + 8) = 0;
  }
}

void sub_1003E9A1C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      v6 = *(v4 + 8);
      *buf = 136315906;
      v114 = "[KmlBluetoothPairingTransport setCurrentState_sync:]";
      v115 = 1024;
      v116 = 221;
      v117 = 2048;
      v118 = v6;
      v119 = 2048;
      v120 = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Current state %ld, new state %ld", buf, 0x26u);
    }

    *(v4 + 16) = *(v4 + 8);
    *(v4 + 8) = a2;
    switch(a2)
    {
      case 0uLL:
        v7 = KmlLogger();
        if (!sub_10036F978(v7))
        {
          goto LABEL_28;
        }

        sub_100377C18();
        v116 = 227;
        v14 = "%s : %i : BT Pairing transport is ready";
        goto LABEL_27;
      case 1uLL:
        v60 = +[NFHardwareManager sharedHardwareManager];
        sub_100057A60();
        sub_100057B28();
        v110 = sub_10039B96C;
        v111 = &unk_1004C2E80;
        v112 = v4;
        v62 = [v61 startSecureElementManagerSession:&v108];
        v63 = *(v4 + 32);
        *(v4 + 32) = v62;

        v64 = [[BluetoothHCEAndTransactionSession alloc] initWithDelegate:v4];
        v65 = *(v4 + 24);
        *(v4 + 24) = v64;

        v66 = KmlLogger();
        if (sub_10036F978(v66))
        {
          sub_100377C18();
          v116 = 253;
          v14 = "%s : %i : Waiting to get SEM session";
LABEL_27:
          sub_1003721EC(&_mh_execute_header, v8, v9, v14, v10, v11, v12, v13, v107, v108, v109, v110, v111, v112);
        }

        goto LABEL_28;
      case 2uLL:
        v89 = KmlLogger();
        if (!sub_100057AEC(v89))
        {
          goto LABEL_49;
        }

        sub_100377C18();
        v116 = 258;
        v96 = "%s : %i : Starting BT Host Card Emulation";
        goto LABEL_48;
      case 3uLL:
        v67 = KmlLogger();
        if (sub_100057AEC(v67))
        {
          sub_100377C18();
          v116 = 263;
          sub_10039D624(&_mh_execute_header, v68, v69, "%s : %i : BT Host Card Emulation session started", v70, v71, v72, v73, v107, v108, v109, v110, v111, v112);
        }

        goto LABEL_32;
      case 4uLL:
        v45 = KmlLogger();
        if (sub_100057AEC(v45))
        {
          sub_100377C18();
          v116 = 268;
          sub_10039D624(&_mh_execute_header, v46, v47, "%s : %i : Pause Hce session", v48, v49, v50, v51, v107, v108, v109, v110, v111, v112);
        }

        goto LABEL_37;
      case 5uLL:
        v22 = KmlLogger();
        if (sub_100057AEC(v22))
        {
          sub_100377C18();
          v116 = 273;
          sub_10039D624(&_mh_execute_header, v23, v24, "%s : %i : BT Host Card Emulation session paused", v25, v26, v27, v28, v107, v108, v109, v110, v111, v112);
        }

        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v29 handleSessionPauseResult:?];
        goto LABEL_33;
      case 6uLL:
        v98 = KmlLogger();
        if (!sub_100057AEC(v98))
        {
          goto LABEL_49;
        }

        sub_100377C18();
        v116 = 278;
        v96 = "%s : %i : Resuming Host Card Emulation";
LABEL_48:
        sub_10039D624(&_mh_execute_header, v90, v91, v96, v92, v93, v94, v95, v107, v108, v109, v110, v111, v112);
LABEL_49:

        [*(v4 + 24) startHceEmulation];
        sub_1003EA20C(v4);
        return;
      case 7uLL:
        v15 = KmlLogger();
        if (sub_100057AEC(v15))
        {
          sub_100377C18();
          v116 = 283;
          sub_10039D624(&_mh_execute_header, v16, v17, "%s : %i : BT Host Card Emulation session resumed", v18, v19, v20, v21, v107, v108, v109, v110, v111, v112);
        }

        v4 = [v4 delegate];
        [v4 handleSessionResumeResult:0];
LABEL_28:

        return;
      case 8uLL:
        v75 = KmlLogger();
        if (sub_100057AEC(v75))
        {
          sub_100377C18();
          v116 = 288;
          sub_10039D624(&_mh_execute_header, v76, v77, "%s : %i : Stopping BT Host Card Emulation session", v78, v79, v80, v81, v107, v108, v109, v110, v111, v112);
        }

        [*(v4 + 40) endSession];
LABEL_37:
        [*(v4 + 24) stopHceEmulation];
        return;
      case 9uLL:
        v52 = KmlLogger();
        if (sub_100057AEC(v52))
        {
          sub_100377C18();
          v116 = 294;
          sub_10039D624(&_mh_execute_header, v53, v54, "%s : %i : BT Host Card Emulation session stopped", v55, v56, v57, v58, v107, v108, v109, v110, v111, v112);
        }

        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v59 handleSessionEndResult:?];
        goto LABEL_33;
      case 0xAuLL:
        v30 = KmlLogger();
        if (sub_100057AEC(v30))
        {
          sub_100377C18();
          v116 = 299;
          sub_10039D624(&_mh_execute_header, v31, v32, "%s : %i : Starting BT transaction session", v33, v34, v35, v36, v107, v108, v109, v110, v111, v112);
        }

        [*(v4 + 24) startTransactionEmulationForKeyWithIdentifier:*(v4 + 88)];
        return;
      case 0xBuLL:
        v99 = KmlLogger();
        if (sub_100057AEC(v99))
        {
          sub_100377C18();
          v116 = 304;
          sub_10039D624(&_mh_execute_header, v100, v101, "%s : %i : BT transaction session started", v102, v103, v104, v105, v107, v108, v109, v110, v111, v112);
        }

        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v106 handleTransactionStartResult:?];

        sub_1003EA010(v4);
        return;
      case 0xCuLL:
        v82 = KmlLogger();
        if (sub_100057AEC(v82))
        {
          sub_100377C18();
          v116 = 310;
          sub_10039D624(&_mh_execute_header, v83, v84, "%s : %i : BT transaction session stop requested", v85, v86, v87, v88, v107, v108, v109, v110, v111, v112);
        }

        [*(v4 + 24) stopTransactionEmulation];
        sub_1003E97B8(v4, 13);
        return;
      case 0xDuLL:
        v37 = KmlLogger();
        if (sub_100057AEC(v37))
        {
          sub_100377C18();
          v116 = 316;
          sub_10039D624(&_mh_execute_header, v38, v39, "%s : %i : BT Transaction session stopped", v40, v41, v42, v43, v107, v108, v109, v110, v111, v112);
        }

        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v44 handleTransactionEndResult:?];
        goto LABEL_33;
      case 0xEuLL:
        sub_1003E9918(v4);
LABEL_32:
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v74 handleSessionStartResult:?];
        goto LABEL_33;
      case 0xFuLL:
        sub_1003E9918(v4);
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v97 handleTransactionStartResult:?];
LABEL_33:

        break;
      default:
        return;
    }
  }
}

void sub_1003EA010(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 64))
    {
      v2 = KmlLogger();
      if (sub_10036F978(v2))
      {
        sub_1003721A0();
        v17 = 337;
        v9 = "%s : %i : endTransactionTimer already running. Ignore another start";
LABEL_7:
        sub_1003721EC(&_mh_execute_header, v3, v4, v9, v5, v6, v7, v8, v12, block[0], block[1], v14, v15, v16);
      }
    }

    else
    {
      sub_100057A60();
      sub_100057B28();
      v14 = sub_10039BBB8;
      v15 = &unk_1004C08D8;
      v16 = v10;
      dispatch_async(&_dispatch_main_q, block);
      v11 = KmlLogger();
      if (sub_10036F978(v11))
      {
        sub_1003721A0();
        v17 = 350;
        v9 = "%s : %i : endTransactionTimer started";
        goto LABEL_7;
      }
    }
  }
}

void sub_1003EA12C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 64))
    {
      sub_100057A60();
      sub_100057B28();
      v12 = sub_10039BCEC;
      v13 = &unk_1004C08D8;
      v14 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_1003721A0();
        v15 = 356;
        sub_1003721EC(&_mh_execute_header, v4, v5, "%s : %i : endTransactionTimer is not running.", v6, v7, v8, v9, v10, block[0], block[1], v12, v13, v14);
      }
    }
  }
}

void sub_1003EA20C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 80))
    {
      if (*(a1 + 72))
      {
        v2 = KmlLogger();
        if (sub_10036F978(v2))
        {
          sub_1003721A0();
          v18 = 375;
          v9 = "%s : %i : A hceSessionTimer already running. Ignore another start";
LABEL_10:
          sub_1003721EC(&_mh_execute_header, v3, v4, v9, v5, v6, v7, v8, v13, block[0], block[1], v15, v16, v17);
        }
      }

      else
      {
        sub_100057A60();
        sub_100057B28();
        v15 = sub_10039BDC4;
        v16 = &unk_1004C08D8;
        v17 = v11;
        dispatch_async(&_dispatch_main_q, block);
        v12 = KmlLogger();
        if (sub_10036F978(v12))
        {
          sub_1003721A0();
          v18 = 393;
          v9 = "%s : %i : hceSessionTimer started";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v10 = KmlLogger();
      if (sub_10036F978(v10))
      {
        sub_1003721A0();
        v18 = 370;
        v9 = "%s : %i : A timeout was not requested for this hce session";
        goto LABEL_10;
      }
    }
  }
}

void sub_1003EA370(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 72))
    {
      sub_100057A60();
      sub_100057B28();
      v12 = sub_10039BFD4;
      v13 = &unk_1004C08D8;
      v14 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_1003721A0();
        v15 = 399;
        sub_1003721EC(&_mh_execute_header, v4, v5, "%s : %i : hceSessionTimer is not running.", v6, v7, v8, v9, v10, block[0], block[1], v12, v13, v14);
      }
    }
  }
}

void sub_1003EA450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, int a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1003A1BAC();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v32;
  v38 = v30;
  if (!v34)
  {
    goto LABEL_12;
  }

  a9.receiver = v34;
  a9.super_class = KmlOwnerSharingManager;
  v39 = objc_msgSendSuper2(&a9, "init");
  if (!v39)
  {
    goto LABEL_12;
  }

  v40 = KmlLogger();
  if (sub_100377D6C(v40))
  {
    v41 = v39[25];
    v42 = [v41 UUIDString];
    v43 = [v42 UTF8String];

    a10 = 136315650;
    sub_10036DC30();
    sub_100390948();
    *(&a12 + 4) = v43;
    sub_100393994();
    _os_log_impl(v44, v45, v46, v47, v48, v49);
  }

  v39[1] = 0;
  v50 = [v36 uppercaseString];
  v51 = v39[26];
  v39[26] = v50;

  v52 = +[NSMutableArray array];
  v53 = v39[29];
  v39[29] = v52;

  v54 = +[NSUUID UUID];
  v55 = v39[25];
  v39[25] = v54;

  objc_storeStrong(v39 + 27, v32);
  objc_storeStrong(v39 + 28, v30);
  if (v39[27])
  {
    v56 = +[NSMutableArray array];
    v57 = v39[14];
    v39[14] = v56;

    v58 = v39[15];
    v39[15] = 0;
  }

  else
  {
    v59 = v39[14];
    v39[14] = 0;

    v60 = +[NSMutableArray array];
    v61 = v39[15];
    v39[15] = v60;

    if (v39[28])
    {
      goto LABEL_9;
    }

    v75 = [v39[25] UUIDString];
    v58 = v39[28];
    v39[28] = v75;
  }

LABEL_9:
  v62 = KmlSignpostLogger();
  v39[20] = os_signpost_id_make_with_pointer(v62, v39[25]);

  v39[21] = 0;
  *(v39 + 176) = 0;
  v39[12] = 1;
  *(v39 + 128) = -2;
  *(v39 + 88) = 0;
  v63 = sub_10039F59C(KmlOwnerSharingManager);
  v64 = v39[10];
  v39[10] = v63;

  v65 = KmlLogger();
  if (sub_10036DC64(v65))
  {
    v66 = v39[25];
    v67 = [v66 UUIDString];
    v68 = [v67 UTF8String];

    a10 = 136315650;
    sub_10036DC30();
    sub_100390948();
    *(&a12 + 4) = v68;
    sub_100393994();
    _os_log_impl(v69, v70, v71, v72, v73, v74);
  }

LABEL_12:
  sub_1003A1B90();
}

void sub_1003EA740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1003A1BAC();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v32 = v28;
  if (v31)
  {
    a9.receiver = v31;
    a9.super_class = KmlOwnerSharingManager;
    v33 = objc_msgSendSuper2(&a9, "init");
    if (v33)
    {
      v34 = KmlLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = v33[25];
        v36 = [v35 UUIDString];
        v37 = [v36 UTF8String];

        sub_10036DC9C();
        sub_100390948();
        *(&a12 + 4) = v37;
        sub_100393994();
        _os_log_impl(v38, v39, v40, v41, v42, v43);
      }

      v33[1] = 0;
      v44 = +[NSMutableArray array];
      v45 = v33[29];
      v33[29] = v44;

      v46 = +[NSMutableArray array];
      v47 = v33[14];
      v33[14] = v46;

      v48 = v33[15];
      v33[15] = 0;

      objc_storeStrong(v33 + 25, v29);
      v49 = KmlSignpostLogger();
      v33[20] = os_signpost_id_make_with_pointer(v49, v33[25]);

      v33[21] = 0;
      *(v33 + 176) = 1;
      v33[12] = 2;
      *(v33 + 128) = -2;
      *(v33 + 88) = 0;
      v50 = sub_10039F59C(KmlOwnerSharingManager);
      v51 = v33[10];
      v33[10] = v50;

      v52 = KmlLogger();
      if (sub_10036DCF8(v52))
      {
        v53 = v33[25];
        v54 = [v53 UUIDString];
        v55 = [v54 UTF8String];

        sub_10036DC9C();
        sub_100390948();
        *(&a12 + 4) = v55;
        sub_100393994();
        _os_log_impl(v56, v57, v58, v59, v60, v61);
      }
    }
  }

  sub_1003A1B90();
}

void sub_1003EA97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, int a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1003A1BAC();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v33;
  v38 = v32;
  v39 = v30;
  if (v36)
  {
    a9.receiver = v36;
    a9.super_class = KmlOwnerSharingManager;
    v40 = objc_msgSendSuper2(&a9, "init");
    if (v40)
    {
      v41 = KmlLogger();
      if (sub_100377D6C(v41))
      {
        v42 = v40[25];
        v43 = [v42 UUIDString];
        v44 = [v43 UTF8String];

        a10 = 136315650;
        sub_10036DC30();
        sub_100390948();
        *(&a12 + 4) = v44;
        sub_100393994();
        _os_log_impl(v45, v46, v47, v48, v49, v50);
      }

      if (sub_1003B8594(v38) == 3)
      {
        v40[1] = 8;
      }

      objc_storeStrong(v40 + 2, v34);
      v51 = [[KmlVersions alloc] initWithEndpoint:v40[2]];
      v52 = v40[19];
      v40[19] = v51;

      v53 = [v40[2] publicKeyIdentifier];
      v54 = v40[3];
      v40[3] = v53;

      v55 = kmlUtilHexStringFromData();
      v56 = v40[26];
      v40[26] = v55;

      v57 = sub_1003ACF68(v38);
      v58 = v40[27];
      v40[27] = v57;

      v59 = sub_1003BFE98(v38);
      v60 = v40[28];
      v40[28] = v59;

      v61 = sub_1003C7D34(v38);
      v62 = v40[5];
      v40[5] = v61;

      v63 = sub_1003C75E0(v38);
      v64 = v40[7];
      v40[7] = v63;

      v65 = sub_1003C75D4(v38);
      v66 = v40[8];
      v40[8] = v65;

      *(v40 + 88) = 0;
      v67 = +[NSMutableArray array];
      v68 = v40[29];
      v40[29] = v67;

      if (v40[28])
      {
        v69 = v40[14];
        v40[14] = 0;

        v70 = +[NSMutableArray array];
      }

      else
      {
        v71 = +[NSMutableArray array];
        v72 = v40[14];
        v40[14] = v71;

        v70 = 0;
      }

      v73 = v40[15];
      v40[15] = v70;

      v74 = sub_1003AD0FC(v38);
      v75 = v40[25];
      v40[25] = v74;

      objc_storeStrong(v40 + 17, v30);
      v76 = [KmlDeviceConfigurationData alloc];
      v77 = [v40[2] deviceConfiguration];
      v78 = [v76 initWithData:v77];
      v79 = v40[18];
      v40[18] = v78;

      v80 = KmlSignpostLogger();
      v40[20] = os_signpost_id_make_with_pointer(v80, v40[25]);

      v40[21] = sub_1003BA3F8(v38);
      *(v40 + 88) = 0;
      v40[12] = 2;
      *(v40 + 128) = -2;
      v81 = [v40[2] sharingTokenAvailabilityBitmap];

      if (v81)
      {
        v81 = [v40[2] sharingTokenAvailabilityBitmap];
        *(v40 + 128) = [v81 unsignedCharValue];
      }

      v82 = sub_10039F59C(KmlOwnerSharingManager);
      v83 = v40[10];
      v40[10] = v82;

      v84 = KmlLogger();
      if (sub_10036DC64(v84))
      {
        v85 = v40[25];
        v86 = [v85 UUIDString];
        v87 = [v86 UTF8String];

        a10 = 136315650;
        sub_10036DC30();
        sub_100390948();
        *(&a12 + 4) = v87;
        sub_100393994();
        _os_log_impl(v88, v89, v90, v91, v92, v93);
      }
    }
  }

  sub_1003A1B90();
}

void sub_1003EAD80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 80);
    sub_1000167BC();
    v5[1] = 3221225472;
    v5[2] = sub_10039F6A4;
    v5[3] = &unk_1004C22F0;
    v6 = v3;
    v7 = a1;
    dispatch_async(v4, v5);
  }
}

id *sub_1003EAE0C(id *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      sub_100396EB4();
      v6 = a1[29];
      sub_1003A1CC4();
      v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        v9 = v8;
        v10 = *v38[2];
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            sub_100396FA0();
            if (v12 != v10)
            {
              objc_enumerationMutation(v2);
            }

            v13 = *(v38[1] + 8 * i);
            v14 = sub_1003B18DC(v13);
            v15 = [v14 isEqualToString:v5];

            if (v15)
            {
              v18 = KmlLogger();
              if (sub_10036DC64(v18))
              {
                v19 = a1[25];
                v20 = [v19 UUIDString];
                v21 = [v20 UTF8String];

                v40 = 136315650;
                v41 = "[KmlOwnerSharingManager getSessionForInvitationIdentifier:]";
                sub_1003674B0();
                v42 = 572;
                sub_100367520();
                v43 = v21;
                sub_100393994();
                _os_log_impl(v22, v23, v24, v25, v26, v27);
              }

              a1 = v13;
              goto LABEL_18;
            }
          }

          v9 = sub_100397230(v16, v17, v38, v39);
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v28 = KmlLogger();
      if (sub_100057AEC(v28))
      {
        v29 = a1[25];
        v30 = [v29 UUIDString];
        v31 = [v30 UTF8String];

        v40 = 136315650;
        v41 = "[KmlOwnerSharingManager getSessionForInvitationIdentifier:]";
        sub_1003674B0();
        v42 = 566;
        sub_100367520();
        v43 = v31;
        sub_1003A1AB8();
        _os_log_impl(v32, v33, v34, v35, v36, 0x1Cu);
      }
    }

    a1 = 0;
LABEL_18:
  }

  return a1;
}

void sub_1003EB064(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      v6 = *(a1 + 80);
      sub_1000167BC();
      v17[1] = 3221225472;
      v17[2] = sub_1003A0C70;
      v17[3] = &unk_1004C22F0;
      v17[4] = a1;
      v18 = v5;
      dispatch_async(v6, v17);
    }

    else
    {
      v7 = KmlLogger();
      if (sub_100057AEC(v7))
      {
        v8 = *(a1 + 200);
        v9 = [v8 UUIDString];
        v10 = [v9 UTF8String];

        v19 = 136315650;
        v20 = "[KmlOwnerSharingManager handleAuthExpiryForInvitation:]";
        v21 = 1024;
        v22 = 1098;
        v23 = 2080;
        v24 = v10;
        sub_100393994();
        _os_log_impl(v11, v12, v13, v14, v15, v16);
      }
    }
  }
}

void sub_1003EB1C4(uint64_t a1)
{
  if (a1)
  {
    sub_1003673C4();
    v4[1] = 3221225472;
    v4[2] = sub_1003A0C2C;
    v4[3] = &unk_1004C2B00;
    v4[4] = v1;
    v4[5] = v2;
    dispatch_async(v3, v4);
  }
}

void sub_1003EB228(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 80);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003A25E8;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

uint64_t sub_1003EB2A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 80));
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v10 = *(a1 + 80);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10039F7F8;
    block[3] = &unk_1004C24F8;
    block[4] = a1;
    block[5] = &v19;
    dispatch_sync(v10, block);
    v11 = *(v20 + 24);
    if (*(v20 + 24))
    {
      v12 = *(a1 + 80);
      sub_1000167BC();
      v14[1] = 3221225472;
      v14[2] = sub_1003A1D3C;
      v14[3] = &unk_1004D1B40;
      v14[4] = a1;
      v15 = v7;
      v16 = v8;
      v17 = v9;
      dispatch_async(v12, v14);
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1003EB418(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 80));
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    sub_10036DBBC();
    v12 = 3221225472;
    v13 = sub_10039F86C;
    v14 = &unk_1004C24F8;
    v15 = a1;
    v16 = v4;
    dispatch_sync(v5, block);
    v6 = *(v18 + 24);
    if (*(v18 + 24))
    {
      v7 = *(a1 + 80);
      sub_1000167BC();
      v9[1] = 3221225472;
      v9[2] = sub_1003A1F30;
      v9[3] = &unk_1004C22F0;
      v9[4] = a1;
      v10 = v3;
      dispatch_async(v7, v9);
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1003EB52C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_assert_queue_not_V2(*(a1 + 80));
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  sub_10036DBBC();
  v13 = 3221225472;
  v14 = sub_10039F8E8;
  v15 = &unk_1004C24F8;
  v16 = a1;
  v17 = v2;
  dispatch_sync(v3, block);
  v4 = *(v19 + 24);
  if (*(v19 + 24))
  {
    sub_100057A60();
    v8 = 3221225472;
    v9 = sub_1003A1FC8;
    v10 = &unk_1004C08D8;
    v11 = a1;
    dispatch_async(v5, v7);
  }

  _Block_object_dispose(&v18, 8);
  return v4;
}

void sub_1003EB618(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 80);
    sub_1000167BC();
    v5[1] = 3221225472;
    v5[2] = sub_10039F964;
    v5[3] = &unk_1004C22F0;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

dispatch_queue_t *sub_1003EB6A8(dispatch_queue_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_not_V2(a1[10]);
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_10039FCC8;
    v18 = sub_10039FCD8;
    v19 = 0;
    v7 = a1[10];
    sub_1003673C4();
    v10[1] = 3221225472;
    v10[2] = sub_1003A2048;
    v10[3] = &unk_1004D23F0;
    v10[4] = a1;
    v13 = v8;
    v11 = v6;
    v12 = v5;
    dispatch_sync(v7, v10);
    a1 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return a1;
}

void sub_1003EB7D8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 80);
    sub_100057A60();
    v8 = 3221225472;
    v9 = sub_1003A239C;
    v10 = &unk_1004D2418;
    v11 = a1;
    v12 = v5;
    v13 = a2;
    dispatch_async(v6, block);
  }
}

void sub_1003EB870(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 80));
    v7 = *(a1 + 80);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_1003A0A58;
    v11 = &unk_1004C24A8;
    v12 = v6;
    v13 = v5;
    v14 = a1;
    dispatch_sync(v7, block);
  }
}

void sub_1003EC534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1003A1BAC();
  if (v28)
  {
    v29 = v28;
    v30 = SESEndPointGetEndpointIdWithUuid();
    v31 = 0;
    v32 = v31;
    if (!v30 || v31)
    {
      v36 = KmlLogger();
      if (sub_10036F124(v36))
      {
        v37 = *(v29 + 200);
        v38 = [v37 UUIDString];
        [v38 UTF8String];

        sub_10036DC9C();
        sub_100390948();
        sub_1003A1AF0();
        _os_log_impl(v39, v40, v41, v42, v43, v44);
      }

      sub_1003A1BE4();
      if (v45)
      {
        v46 = sesErrorToKmlError();
        v27 = *(v29 + 72);
        *(v29 + 72) = v46;
      }

      else
      {
        v47 = KmlLogger();
        if (sub_10036F124(v47))
        {
          v49 = *(v29 + 200);
          v50 = [v49 UUIDString];
          [v50 UTF8String];

          sub_10036DC9C();
          sub_100390948();
          sub_100393994();
          _os_log_impl(v51, v52, v53, v54, v55, v56);
        }
      }
    }

    else
    {
      v33 = [v30 uppercaseString];
      v34 = *(v29 + 208);
      *(v29 + 208) = v33;

      v35 = kmlUtilDataForHexString();
      v27 = *(v29 + 24);
      *(v29 + 24) = v35;
    }

    sub_1003EB1C4(v29);
  }

  sub_1003A1B90();
}

void sub_1003EC73C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1003EF848(a1);
    v12 = v2;
    if (v2)
    {
      objc_storeStrong((a1 + 72), v2);
    }

    else
    {
      v3 = [KmlDeviceConfigurationData alloc];
      v4 = [*(a1 + 16) deviceConfiguration];
      v5 = [v3 initWithData:v4];
      v6 = *(a1 + 144);
      *(a1 + 144) = v5;

      v7 = sub_100394824(KmlSharingRecordsUpdater, *(a1 + 16));
      v8 = *(a1 + 136);
      *(a1 + 136) = v7;

      v9 = [*(a1 + 16) sharingTokenAvailabilityBitmap];

      if (v9)
      {
        v10 = [*(a1 + 16) sharingTokenAvailabilityBitmap];
        *(a1 + 128) = [v10 unsignedCharValue];
      }

      v11 = sub_1003EFFE8(a1);
      sub_1003A1C8C(v11);
    }

    sub_1003EB1C4(a1);
  }
}

void sub_1003ECE9C(id *location)
{
  if (location)
  {
    v3 = location;
    if (!location[13])
    {
      v5 = location + 9;
      v4 = location[9];
      if (v4)
      {
        objc_storeStrong(location + 9, v4);
      }

      else
      {
        v6 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v74 = NSLocalizedDescriptionKey;
        KmlErrorString();
        v7 = [sub_10039719C() stringWithUTF8String:?];
        v75 = v7;
        [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        objc_claimAutoreleasedReturnValue();
        v8 = [sub_1003A1B50() errorWithDomain:? code:? userInfo:?];
        v9 = *v5;
        *v5 = v8;
      }
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v10 = v3[13];
    v11 = [v10 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v62;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v62 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v1 = *(*(&v61 + 1) + 8 * i);
          v15 = KmlLogger();
          if (sub_100377D6C(v15))
          {
            v16 = v3;
            v17 = v3[25];
            v18 = [v17 UUIDString];
            v19 = [v18 UTF8String];

            v3 = v16;
            *buf = 136315906;
            sub_10036F910();
            sub_1003A1B40();
            v70 = v19;
            v71 = 2112;
            v72 = v1;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : %s : Config : %@", buf, 0x26u);
          }

          v20 = [v1 enableVehicleEnteredPasscode];
          if (v20)
          {
            v20 = [v3[18] sharingPasswordRequired];
            if ((v20 & 1) == 0)
            {
              v22 = v3[9];
              if (v22)
              {
                v27 = v22;
                v23 = v3[9];
                v3[9] = v27;
              }

              else
              {
                v23 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
                v67 = NSLocalizedDescriptionKey;
                KmlErrorString();
                v24 = [sub_10039719C() stringWithUTF8String:?];
                v68 = v24;
                [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
                objc_claimAutoreleasedReturnValue();
                v25 = [sub_1003A1B50() errorWithDomain:? code:? userInfo:?];
                v26 = v3[9];
                v3[9] = v25;
              }

              goto LABEL_22;
            }
          }
        }

        v12 = sub_100397230(v20, v21, &v61, v73);
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    v28 = KmlVersions;
    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [v3[19] agreedKmlVehicleVersion], 768))
    {
      v28 = sub_1003DFBD4([KmlEndpointManager alloc], v3[26], v3[19]);
      v59 = 0;
      v60 = 0;
      sub_1003E4818(v28, &v60, &v59);
      if (!v59)
      {
        v29 = KmlLogger();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = v3[25];
          v31 = [v30 UUIDString];
          v1 = [v31 UTF8String];

          *buf = 136315650;
          sub_10036F910();
          sub_1003A1B40();
          v70 = v1;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s : %i : %s : Max attestation depth reached, unable to share until an attestation is consumed", buf, 0x1Cu);
        }

        v32 = v3[9];
        if (v32)
        {
          v37 = v32;
          v33 = v3[9];
          v3[9] = v37;
        }

        else
        {
          v33 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v65 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v34 = [sub_10039719C() stringWithUTF8String:?];
          v66 = v34;
          [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          objc_claimAutoreleasedReturnValue();
          v35 = [sub_1003A1B50() errorWithDomain:? code:? userInfo:?];
          v36 = v3[9];
          v3[9] = v35;
        }
      }
    }

    v38 = v3[9];
    v39 = KmlLogger();
    v40 = sub_100057AEC(v39);
    if (v38)
    {
      if (v40)
      {
        v50 = v3[25];
        v51 = [v50 UUIDString];
        v52 = [v51 UTF8String];
        v53 = v3[9];

        *buf = 136315906;
        sub_10036F910();
        sub_1003A1B40();
        v70 = v52;
        v71 = 2112;
        v72 = v53;
        sub_100367358();
        _os_log_impl(v54, v55, v56, v57, v58, 0x26u);
      }
    }

    else if (v40)
    {
      v41 = v3[25];
      v42 = [v41 UUIDString];
      v43 = [v42 UTF8String];

      *buf = 136315650;
      sub_10036F910();
      sub_1003A1B40();
      v70 = v43;
      sub_100393994();
      _os_log_impl(v44, v45, v46, v47, v48, v49);
    }

    sub_1003EB1C4(v3);
  }
}

void sub_1003EE84C(uint64_t a1)
{
  if (a1)
  {
    sub_100396EB4();
    v4 = *(v3 + 232);
    sub_1003A1CC4();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = *v32[2];
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          sub_100396FA0();
          if (v10 != v8)
          {
            objc_enumerationMutation(v1);
          }

          v11 = *(v32[1] + 8 * i);
          v12 = sub_1003B194C(v11);
          if (v12)
          {
            v25 = v12;
            v26 = KmlLogger();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = *(a1 + 200);
              v28 = [v27 UUIDString];
              v29 = [v28 UTF8String];

              *buf = 136315906;
              v34 = "[KmlOwnerSharingManager createAndReportInvitations]";
              v35 = 1024;
              v36 = 1542;
              v37 = 2080;
              v38 = v29;
              v39 = 2112;
              v40 = v25;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s : %i : %s : Failed to create invitation : %@", buf, 0x26u);
            }

            v30 = *(a1 + 72);
            *(a1 + 72) = v25;
            v31 = v25;

            sub_1003EB1C4(a1);
            return;
          }

          if (*(a1 + 216))
          {
            v13 = [DAKeySharingInvitationData alloc];
            v14 = *(a1 + 200);
            v15 = sub_1003B18DC(v11);
            v16 = [v13 initWithSessionUUID:v14 invitationIdentifier:v15 friendKeyIdentifier:0 sharingTarget:sub_1003667FC(v11) state:1 vehicleEnteredPasscode:*(a1 + 64)];

            [*(a1 + 112) addObject:v16];
          }

          else
          {
            v17 = [DACarKeyGenericCrossPlatformSharingData alloc];
            v18 = sub_1003B18DC(v11);
            v19 = sub_1003B5EBC(v11);
            v16 = [v17 initWithSharingIdentifier:v18 friendKeyIdentifier:0 sharingMessageType:1 message:v19];

            v20 = [[DACarKeyAdditionalCrossPlatformSharingData alloc] initWithSharingSessionUUID:*(a1 + 200) bindingAttestation:0 targetDeviceType:sub_1003667FC(v11) initiatorIdsPseudonym:0];
            v21 = [[DACarKeyPrivateCrossPlatformSharingData alloc] initWithVehicleEnteredPasscode:*(a1 + 64) pairedEntityIdentifier:0];
            v22 = [[DACarKeySharingMessage alloc] initWithGenericCrossPlatformSharingData:v16 additionalData:v20 privateData:v21];
            [*(a1 + 120) addObject:v22];
          }
        }

        v7 = sub_100397230(v23, v24, v32, v41);
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    sub_1003EB1C4(a1);
  }
}

void sub_1003EEB80(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 216))
    {
      v2 = sub_10037E00C(KmlSharingTransport);
      v3 = sub_10037E34C(v2, *(a1 + 216));

      if (v3)
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
      v4 = 2;
    }

    v5 = [*(a1 + 16) readerInfo];
    v39 = v5;
    v6 = [[KmlRoutingInformation alloc] initWithReaderInformation:v5];
    v7 = [*(a1 + 144) readerSupportsNfc];
    if ([*(a1 + 144) readerSupportsUwb])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      v9 = [v6 manufacturer];
      v10 = [v9 copy];

      v11 = [v6 brand];
      v12 = [v11 copy];

      v13 = [v6 regionString];
      v14 = [v13 copy];
    }

    else
    {
      v15 = KmlLogger();
      if (sub_10036F978(v15))
      {
        *buf = 136315394;
        v43 = "[KmlOwnerSharingManager postStatistics]";
        v44 = 1024;
        v45 = 1770;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : No routing info available", buf, 0x12u);
      }

      v14 = @"Unknown";
      v12 = @"Unknown";
      v10 = @"Unknown";
    }

    v38 = v6;
    if (!*(a1 + 168))
    {
      v16 = 1;
      if (*(a1 + 224))
      {
        v16 = 2;
      }

      *(a1 + 168) = v16;
    }

    v34 = +[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 152) agreedKmlVehicleVersion], 768);
    v17 = [*(a1 + 16) configuration];
    [v17 opt2];
    v36 = kmlUtilKeyClassOriginBitmap();

    v18 = [*(a1 + 152) ourSupportedFrameworkVersionsAsCAString];
    v40[0] = @"destination";
    v37 = [NSNumber numberWithUnsignedInt:v4];
    v41[0] = v37;
    v41[1] = &off_1004DD050;
    v40[1] = @"type";
    v40[2] = @"targetDeviceType";
    v41[2] = &off_1004DD068;
    v41[3] = &off_1004DD080;
    v40[3] = @"step";
    v40[4] = @"dataCenterCode";
    v41[4] = v14;
    v41[5] = v10;
    v40[5] = @"manufacturer";
    v40[6] = @"brand";
    v41[6] = v12;
    v40[7] = @"transportSupported";
    v35 = [NSNumber numberWithUnsignedInteger:v8 | v7];
    v41[7] = v35;
    v40[8] = @"totalSharedKeysForOwnerKey";
    v33 = [NSNumber numberWithInteger:*(a1 + 192)];
    v41[8] = v33;
    v40[9] = @"status";
    v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 72) code]);
    v41[9] = v19;
    v41[10] = &off_1004DD098;
    v40[10] = @"inviteCancelReason";
    v40[11] = @"activationOption";
    v41[11] = &off_1004DD098;
    v40[12] = @"sharingTransport";
    [NSNumber numberWithInteger:*(a1 + 168)];
    v20 = v32 = v14;
    v41[12] = v20;
    v41[13] = &off_1004DD0B0;
    v40[13] = @"pinAttempts";
    v40[14] = @"appleToApple";
    v21 = [NSNumber numberWithInt:*(a1 + 216) != 0];
    v22 = v21;
    v23 = &stru_1004D9380;
    v31 = v18;
    if (v18)
    {
      v23 = v18;
    }

    v41[14] = v21;
    v41[15] = v23;
    v40[15] = @"senderSupportedFrameworkVersions";
    v40[16] = @"receiverSupportedFrameworkVersions";
    v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04X", [*(a1 + 152) agreedKmlSharingVersion]);
    v41[16] = v24;
    v41[17] = &off_1004DD0B0;
    v40[17] = @"attestationChainLength";
    v40[18] = @"certificateChainLength";
    v41[18] = &off_1004DD0B0;
    v41[19] = &off_1004DD0B0;
    v40[19] = @"accountRole";
    v40[20] = @"isIntraAccountShare";
    v41[20] = &off_1004DD0B0;
    v41[21] = &off_1004DD0C8;
    v40[21] = @"wasUserAuthRequired";
    v40[22] = @"mailboxVersion";
    if (v34)
    {
      v25 = 128;
    }

    else
    {
      v25 = 0;
    }

    [NSNumber numberWithUnsignedChar:v25];
    v27 = v26 = v10;
    v41[22] = v27;
    v40[23] = @"frameworkVersion";
    v28 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 152) agreedKmlSharingVersion]);
    v41[23] = v28;
    v41[24] = &off_1004DD0B0;
    v40[24] = @"accessProfile";
    v40[25] = @"keyClassOriginBitmap";
    v29 = [NSNumber numberWithUnsignedChar:v36];
    v41[25] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:26];

    sub_100368DC8(KmlAnalyticsLogger, v30);
  }
}

id *sub_1003EF108(id *result)
{
  if (result)
  {
    v2 = result;
    sub_100396EB4();
    v4 = *(v3 + 232);
    sub_1003A1CC4();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = *v13[2];
      do
      {
        v9 = 0;
        do
        {
          sub_100396FA0();
          if (v10 != v8)
          {
            objc_enumerationMutation(v1);
          }

          sub_1003B2160(*(v13[1] + 8 * v9));
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = sub_100397230(v11, v12, v13, v14);
      }

      while (v7);
    }

    return [v2[29] removeAllObjects];
  }

  return result;
}

void sub_1003EF1EC()
{
  sub_1003722EC();
  if (v0)
  {
    v1 = v0;
    if (*(v0 + 40))
    {
      v2 = SESEndPointDeleteAuthorizationID();
      v3 = +[KmlCachedAuthorizationManager sharedManager];
      [v3 markCacheDirty];

      if (v2)
      {
        v4 = KmlLogger();
        if (sub_100057AEC(v4))
        {
          v5 = *(v1 + 200);
          v6 = [v5 UUIDString];
          [v6 UTF8String];
          v7 = [v2 description];
          sub_1003672C0();
          sub_1003A1A30();
          sub_1003A1B1C();
          sub_100057A9C();
          _os_log_impl(v8, v9, v10, v11, v12, 0x26u);

LABEL_8:
        }
      }

      else
      {
        v13 = *(v1 + 40);
        *(v1 + 40) = 0;

        v14 = KmlLogger();
        if (sub_100057AEC(v14))
        {
          v15 = *(v1 + 200);
          v6 = [v15 UUIDString];
          [v6 UTF8String];

          sub_1003672C0();
          sub_1003A1A30();
          sub_100057A9C();
          _os_log_impl(v16, v17, v18, v19, v20, 0x1Cu);
          goto LABEL_8;
        }
      }
    }
  }

  sub_1003722A4();
}

void sub_1003EF3A0(uint64_t a1)
{
  if (a1)
  {
    sub_100396EB4();
    v4 = *(v3 + 232);
    sub_1003A1CC4();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = *v14[2];
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          sub_100396FA0();
          if (v10 != v8)
          {
            objc_enumerationMutation(v1);
          }

          v11 = *(v14[1] + 8 * i);
          sub_1003B1EC0(v11, *(a1 + 136));
          sub_1003B1C9C(v11);
        }

        v7 = sub_100397230(v12, v13, v14, v15);
      }

      while (v7);
    }
  }
}

void sub_1003EF494(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v4 = *(a1 + 200);
      v5 = [v4 UUIDString];
      v6 = [v5 UTF8String];

      v29 = 136315650;
      v30 = "[KmlOwnerSharingManager cancelAllSessions_sync]";
      sub_1003674B0();
      v31 = 1600;
      sub_100367520();
      v32 = v6;
      sub_1003A1AB8();
      _os_log_impl(v7, v8, v9, v10, v11, 0x1Cu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(a1 + 232);
    v12 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v26 = NSLocalizedDescriptionKey;
          v18 = [NSString stringWithUTF8String:KmlErrorString()];
          v27 = v18;
          v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          v20 = [NSError errorWithDomain:v17 code:123 userInfo:v19];
          sub_1003B1CAC(v16, v20);
        }

        v13 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v13);
    }
  }
}

void sub_1003EF6D4(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v4 = *(a1 + 200);
      v5 = [v4 UUIDString];
      [v5 UTF8String];

      sub_10036DC30();
      sub_100390948();
      sub_100367358();
      _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
    }

    v11 = [NSMutableData dataWithLength:32];
    v12 = sub_10037E00C(KmlSharingTransport);
    v13 = [*(a1 + 200) UUIDString];
    sub_1003CD23C(v12, v11, 0, 0, v13, 0, *(a1 + 200), *(a1 + 216), *(a1 + 96), 9);
  }
}

NSString *const **sub_1003EF848(uint64_t a1)
{
  if (a1)
  {
    v6 = (a1 + 16);
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;

    v111 = 0;
    v7 = SESEndPointListWithSession();
    v8 = 0;
    if (v8)
    {
      v2 = v8;
      v9 = KmlLogger();
      if (sub_10036DCF8(v9))
      {
        v10 = *(a1 + 200);
        v11 = [v10 UUIDString];
        [v11 UTF8String];

        *buf = 136315906;
        v120 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
        sub_1003674B0();
        sub_1003A1AC8(1149);
        *(v12 + 30) = v2;
        sub_1003A1AF0();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
      }

      v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v20 = [v2 userInfo];
      v21 = v19;
    }

    else
    {
      if ([v7 count])
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        obj = v7;
        v22 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
        if (v22)
        {
          v103 = v7;
          location = v6;
          v2 = *v108;
          while (2)
          {
            for (i = 0; i != v22; i = (i + 1))
            {
              if (*v108 != v2)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v107 + 1) + 8 * i);
              v25 = [v24 publicKeyIdentifier];
              v26 = KmlLogger();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = *(a1 + 200);
                v3 = [v27 UUIDString];
                v28 = [v3 UTF8String];

                sub_1003A1BC8(v29, v30, v31, v32, v33, v34, v35, v36, v37, v103, location, v38);
                v120 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
                v121 = 1024;
                v122 = 1160;
                v123 = 2080;
                v124 = v28;
                v125 = 2112;
                v126 = v25;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : %s : checking key with id: %@", buf, 0x26u);
              }

              if ([v25 isEqual:*(a1 + 24)])
              {
                v39 = [v24 revocationAttestation];

                if (v39)
                {
                  i = &NSInferMappingModelAutomaticallyOption_ptr;
                  v3 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
                  v114 = NSLocalizedDescriptionKey;
                  KmlErrorString();
                  v40 = [sub_10039719C() stringWithUTF8String:?];
                  v115 = v40;
                  v41 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
                  v22 = [NSError errorWithDomain:v3 code:211 userInfo:v41];

                  v7 = v103;
                  v6 = location;
                }

                else
                {
                  v6 = location;
                  objc_storeStrong(location, v24);
                  v54 = KmlLogger();
                  if (sub_100377D6C(v54))
                  {
                    v55 = *(a1 + 200);
                    v56 = [v55 UUIDString];
                    v57 = [v56 UTF8String];
                    i = *(a1 + 208);

                    sub_1003A1BC8(v58, v59, v60, v61, v62, v63, v64, v65, v66, v103, location, v67);
                    v120 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
                    sub_1003674B0();
                    *(v68 + 14) = 1167;
                    sub_100367520();
                    *(v69 + 20) = v57;
                    sub_1003A1B34();
                    *(v70 + 30) = i;
                    v6 = locationa;
                    sub_1003A1AF0();
                    _os_log_impl(v71, v72, v73, v74, v75, v76);
                  }

                  v22 = 0;
                  v7 = v103;
                }

                goto LABEL_33;
              }
            }

            v22 = [obj countByEnumeratingWithState:&v107 objects:v116 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }

          v7 = v103;
          v6 = location;
        }

LABEL_33:

        if (!*v6)
        {
          v89 = KmlLogger();
          if (sub_10036DCF8(v89))
          {
            v90 = *(a1 + 200);
            v91 = [v90 UUIDString];
            [v91 UTF8String];
            v92 = *(a1 + 208);

            *buf = 136315906;
            v120 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
            sub_1003674B0();
            sub_1003A1AC8(1173);
            *(v93 + 30) = v92;
            sub_1003A1AF0();
            _os_log_impl(v94, v95, v96, v97, v98, v99);
          }

          v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v112 = NSLocalizedDescriptionKey;
          v100 = [NSString stringWithUTF8String:KmlErrorString()];
          v113 = v100;
          v101 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          v102 = [NSError errorWithDomain:v2 code:210 userInfo:v101];

          v22 = v102;
          goto LABEL_8;
        }

        v77 = [[KmlVersions alloc] initWithEndpoint:*(a1 + 16)];
        v78 = *(a1 + 152);
        *(a1 + 152) = v77;

        v79 = KmlLogger();
        if (!sub_10036F124(v79))
        {
LABEL_8:

          goto LABEL_9;
        }

        v80 = *(a1 + 200);
        v19 = [v80 UUIDString];
        [v19 UTF8String];
        v81 = *(a1 + 152);

        *buf = 136315906;
        v120 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
        sub_1003674B0();
        sub_1003A1AC8(1177);
        *(v82 + 30) = v81;
        sub_1003A1AF0();
        _os_log_impl(v83, v84, v85, v86, v87, v88);
LABEL_7:

        goto LABEL_8;
      }

      v42 = KmlLogger();
      if (sub_10036DCF8(v42))
      {
        v43 = *(a1 + 200);
        v44 = [v43 UUIDString];
        v45 = [v44 UTF8String];

        *buf = 136315650;
        v120 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
        sub_1003674B0();
        *(v46 + 14) = 1154;
        sub_100367520();
        *(v47 + 20) = v45;
        sub_100393994();
        _os_log_impl(v48, v49, v50, v51, v52, v53);
      }

      v2 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v117 = NSLocalizedDescriptionKey;
      v19 = [v6[141] stringWithUTF8String:KmlErrorString()];
      v118 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
      v21 = v2;
    }

    v22 = [NSError errorWithDomain:v21 code:210 userInfo:v20];

    goto LABEL_7;
  }

  v22 = 0;
LABEL_9:

  return v22;
}

id sub_1003EFFE8(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 176) == 1)
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        v4 = *(a1 + 200);
        v5 = [v4 UUIDString];
        [v5 UTF8String];

        sub_10036DC30();
        sub_100390948();
        sub_100393994();
        _os_log_impl(v6, v7, v8, v9, v10, v11);
      }

      v12 = 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v1 = sub_1003DF2B8([KmlBindingAttestation alloc], *(a1 + 48));
      v13 = [*(a1 + 16) anonymizedDsid];
      if ([v13 length])
      {
        v14 = sub_1003BA3D0(v1);
        v15 = [v14 length];

        if (v15)
        {
          v16 = sub_1003BA3D0(v1);
          v17 = [v13 isEqualToData:v16];

          if (v17)
          {
            v18 = KmlLogger();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = *(a1 + 200);
              v20 = [v19 UUIDString];
              [v20 UTF8String];

              sub_10036DC30();
              sub_100390948();
              sub_100393994();
              _os_log_impl(v21, v22, v23, v24, v25, v26);
            }

            *(a1 + 88) = 1;
          }
        }
      }

      v27 = SESEndPointCreateAuthorizationID();
      v12 = 0;
      v28 = +[KmlCachedAuthorizationManager sharedManager];
      [v28 markCacheDirty];

      if (!v12)
      {
        if (v27)
        {
          v29 = [v27 authorizationID];
          v30 = *(a1 + 40);
          *(a1 + 40) = v29;

          v31 = sub_100388B10(KmlSharingManager);
          v32 = [v27 authorizationInterval];
          [v32 doubleValue];
          sub_1003CE5F8(v31);
          v12 = 0;
        }

        else
        {
          v31 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v53[0] = NSLocalizedDescriptionKey;
          v32 = [NSString stringWithUTF8String:KmlErrorString()];
          v53[1] = NSLocalizedFailureReasonErrorKey;
          v54[0] = v32;
          v54[1] = @"Failed to get authorization from externalized auth";
          v33 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
          v12 = [NSError errorWithDomain:v31 code:105 userInfo:v33];
        }
      }

      v34 = KmlLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = *(a1 + 200);
        v36 = [v35 UUIDString];
        [v36 UTF8String];

        sub_10036DC30();
        sub_100390948();
        sub_1003A1AF0();
        _os_log_impl(v37, v38, v39, v40, v41, v42);
      }

      if (*(a1 + 88) == 1)
      {
        v43 = KmlLogger();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = *(a1 + 200);
          v45 = [v44 UUIDString];
          [v45 UTF8String];

          sub_10036DC30();
          sub_100390948();
          sub_100393994();
          _os_log_impl(v46, v47, v48, v49, v50, v51);
        }

        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1003F04B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, int buf, int a20, int a21, int a22, __int128 a23, int a24, __int16 a25, __int16 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  sub_1003A1D00();
  a56 = v59;
  a57 = v61;
  if (v60)
  {
    v62 = v60;
    if (*(v60 + 40))
    {
      a18 = 0;
      v63 = SESEndPointListAuthorizations();
      v57 = a18;
      if (v57)
      {
        v64 = KmlLogger();
        if (sub_10036F124(v64))
        {
          v65 = *(v62 + 200);
          v66 = [v65 UUIDString];
          v67 = [v66 UTF8String];

          buf = 136315906;
          sub_1003672F0();
          sub_100367320();
          *(&a23 + 4) = v67;
          sub_1003A1BD4();
          sub_1003A1AF0();
          _os_log_impl(v68, v69, v70, v71, v72, v73);
        }
      }

      else
      {
        sub_100396EB4();
        v58 = v63;
        v84 = [v58 countByEnumeratingWithState:&a9 objects:&a29 count:16];
        if (v84)
        {
          v85 = *a11;
          while (2)
          {
            for (i = 0; i != v84; i = i + 1)
            {
              sub_100396FA0();
              if (v87 != v85)
              {
                objc_enumerationMutation(v58);
              }

              v88 = *(v62 + 40);
              v89 = [*(a10 + 8 * i) authorizationID];
              LOBYTE(v88) = [v88 isEqualToData:v89];

              if (v88)
              {
                LODWORD(v84) = 1;
                goto LABEL_20;
              }
            }

            v84 = [v58 countByEnumeratingWithState:&a9 objects:&a29 count:16];
            if (v84)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        v90 = KmlLogger();
        if (sub_10036F124(v90))
        {
          v91 = *(v62 + 200);
          v92 = [v91 UUIDString];
          v93 = [v92 UTF8String];
          v94 = kmlUtilHexStringFromData();
          buf = 136316162;
          sub_1003672F0();
          *(&a22 + 2) = 1715;
          WORD1(a23) = 2080;
          *(&a23 + 4) = v93;
          WORD6(a23) = 2112;
          *(&a23 + 14) = v95;
          a26 = v96;
          LODWORD(a27) = v84;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "%s : %i : %s : Authorization with ID %@, found - %d", &buf, 0x2Cu);
        }
      }
    }

    else
    {
      v74 = KmlLogger();
      if (sub_10036F978(v74))
      {
        v75 = *(v62 + 200);
        v76 = [v75 UUIDString];
        v77 = [v76 UTF8String];

        buf = 136315650;
        sub_1003672F0();
        sub_100367320();
        *(&a23 + 4) = v77;
        sub_100393994();
        _os_log_impl(v78, v79, v80, v81, v82, v83);
      }
    }
  }

  sub_1003A1CE4();
}

void sub_1003F07C8()
{
  sub_1003722EC();
  if (v0)
  {
    v3 = v2;
    v4 = v1;
    v5 = v0;
    v6 = sub_100388B10(KmlSharingManager);
    v7 = sub_1003890A8(v6, v4, v3, *(v5 + 24));

    if (v7)
    {
      v8 = KmlLogger();
      if (sub_100057AEC(v8))
      {
        v9 = *(v5 + 200);
        v10 = [v9 UUIDString];
        [v10 UTF8String];

        sub_1003672C0();
        sub_1003A1A30();
        sub_100057A9C();
        _os_log_impl(v11, v12, v13, v14, v15, 0x1Cu);
      }
    }
  }

  sub_1003722A4();
}

void sub_1003F08E4()
{
  sub_1003722EC();
  if (v0)
  {
    v1 = v0;
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(v1 + 200);
      v4 = [v3 UUIDString];
      [v4 UTF8String];

      sub_1003672C0();
      sub_1003A1A30();
      sub_100057A9C();
      _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }

    *(v1 + 8) = 0;
    *(v1 + 176) = 1;
    sub_1003EB1C4(v1);
  }

  sub_1003722A4();
}

void sub_1003F09E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, int buf, int a17, int a18, int a19, __int128 a20, int a21, __int16 a22, __int16 a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_1003A1D00();
  a53 = v54;
  a54 = v55;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v57;
  v67 = v66;
  if (!v63)
  {
    goto LABEL_26;
  }

  if (!v65)
  {
    v95 = KmlLogger();
    if (!sub_10036F124(v95))
    {
LABEL_25:

      goto LABEL_26;
    }

    v96 = *(v63 + 200);
    v87 = [v96 UUIDString];
    v97 = [v87 UTF8String];

    sub_1003A1CB0();
    sub_100367320();
    *(&a20 + 4) = v97;
    sub_100393994();
LABEL_24:
    _os_log_impl(v89, v90, v91, v92, v93, v94);

    goto LABEL_25;
  }

  v148 = v61;
  v149 = v66;
  a14 = 0u;
  a15 = 0u;
  a12 = 0u;
  a13 = 0u;
  v68 = *(v63 + 232);
  v69 = [v68 countByEnumeratingWithState:&a12 objects:&a25 count:16];
  if (!v69)
  {
LABEL_11:

LABEL_20:
    v85 = KmlLogger();
    v67 = v149;
    if (!sub_10036F124(v85))
    {
      goto LABEL_25;
    }

    v86 = *(v63 + 200);
    v87 = [v86 UUIDString];
    v88 = [v87 UTF8String];

    sub_1003A1CB0();
    sub_100367320();
    *(&a20 + 4) = v88;
    sub_1003A1BD4();
    sub_1003A1AF0();
    goto LABEL_24;
  }

  v70 = v69;
  v61 = *a13;
LABEL_5:
  v71 = 0;
  while (1)
  {
    if (*a13 != v61)
    {
      objc_enumerationMutation(v68);
    }

    v72 = *(*(&a12 + 1) + 8 * v71);
    v73 = sub_1003B18DC(v72);
    v74 = [v73 isEqualToString:v65];

    if (v74)
    {
      break;
    }

    if (v70 == ++v71)
    {
      v70 = [v68 countByEnumeratingWithState:&a12 objects:&a25 count:16];
      if (v70)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v75 = v72;

  if (!v75)
  {
    goto LABEL_20;
  }

  v67 = v149;
  if (([*(v63 + 144) isFriendImmoTokenOrSlotOnline] & 1) == 0)
  {
    v132 = sub_100366860(v75);
    v133 = KmlLogger();
    if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
    {
      v134 = *(v63 + 200);
      v135 = [v134 UUIDString];
      v136 = [v135 UTF8String];

      buf = 136315906;
      sub_1003672F0();
      *(&a19 + 2) = 1933;
      WORD1(a20) = 2080;
      *(&a20 + 4) = v136;
      WORD6(a20) = v137;
      *(&a20 + 14) = v132;
      _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_INFO, "%s : %i : %s : Free up slot identifier index %d", &buf, 0x22u);
    }

    *(v63 + 128) |= 1 << v132;
    sub_1003F07C8();
    v67 = v149;
  }

  v76 = sub_1003B2100(v75);
  v77 = *(v63 + 152);
  *(v63 + 152) = v76;

  sub_1003B1EC0(v75, *(v63 + 136));
  sub_1003DAFF0(*(v63 + 136));
  sub_1003B2160(v75);
  [*(v63 + 232) removeObject:v75];

  v78 = KmlLogger();
  v79 = v78;
  if (!v67)
  {
    if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
    {
      v98 = *(v63 + 200);
      v99 = [v98 UUIDString];
      v100 = [v99 UTF8String];

      buf = 136315650;
      sub_1003672F0();
      sub_100367320();
      *(&a20 + 4) = v100;
      sub_100393994();
      _os_log_impl(v101, v102, v103, v104, v105, v106);

      v67 = v149;
    }

    if (sub_1003F6F5C(v107))
    {
      v108 = objc_opt_new();
      v109 = [v108 pretendBindingAttestationUsed];

      if (v109)
      {
        v110 = KmlLogger();
        if (sub_10036DC64(v110))
        {
          v111 = *(v63 + 200);
          v112 = [v111 UUIDString];
          v113 = [v112 UTF8String];

          buf = 136315650;
          sub_1003672F0();
          sub_100367320();
          *(&a20 + 4) = v113;
          v67 = v149;
          sub_100393994();
          _os_log_impl(v114, v115, v116, v117, v118, v119);
        }

        *(v63 + 192) = sub_1003959EC(*(v63 + 136));
        goto LABEL_35;
      }

      *(v63 + 192) = sub_1003959EC(*(v63 + 136));
      if (!v59)
      {
LABEL_39:
        v120 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      *(v63 + 192) = sub_1003959EC(*(v63 + 136));
      if ((v59 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

LABEL_35:
    if ((*(v63 + 176) & 1) == 0)
    {
      sub_1003EB924(v63, 9);
    }

    v120 = 1;
LABEL_40:
    if ([*(v63 + 232) count])
    {
      if (v120)
      {
        goto LABEL_26;
      }

      v121 = KmlLogger();
      if (sub_10036F124(v121))
      {
        v122 = *(v63 + 200);
        v123 = [v122 UUIDString];
        v124 = [v123 UTF8String];

        buf = 136315650;
        sub_1003672F0();
        sub_100367320();
        *(&a20 + 4) = v124;
        sub_100393994();
        _os_log_impl(v125, v126, v127, v128, v129, v130);
      }

      v131 = v63;
      goto LABEL_54;
    }

    v138 = KmlLogger();
    if (sub_10036DC64(v138))
    {
      v139 = *(v63 + 200);
      v140 = [v139 UUIDString];
      v141 = [v140 UTF8String];

      buf = 136315650;
      sub_1003672F0();
      sub_100367320();
      *(&a20 + 4) = v141;
      v67 = v149;
      sub_100393994();
      _os_log_impl(v142, v143, v144, v145, v146, v147);
    }

    if (v120 && !v148)
    {
LABEL_53:
      v131 = v63;
LABEL_54:
      sub_1003EB1C4(v131);
      goto LABEL_26;
    }

LABEL_52:
    sub_1003EF1EC();
    goto LABEL_53;
  }

  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
  {
    v80 = *(v63 + 200);
    v81 = [v80 UUIDString];
    v82 = [v81 UTF8String];

    buf = 136316162;
    sub_1003672F0();
    sub_100367320();
    *(&a20 + 4) = v82;
    sub_1003A1BD4();
    a23 = v83;
    a24 = v67;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "%s : %i : %s : Sharing invitation %@, failed with error %@", &buf, 0x30u);
  }

  if (![*(v63 + 232) count])
  {
    v84 = *(v63 + 8);
    if (v84 == 10)
    {
      sub_1003F08E4();
      goto LABEL_26;
    }

    if (v84 > 8)
    {
      if (v84 != 11)
      {
        goto LABEL_53;
      }
    }

    else if (*(v63 + 176))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_26:

  sub_1003A1CE4();
}

void sub_1003F1108(uint64_t a1)
{
  if (a1)
  {
    sub_1003C42B4(*(a1 + 64), 0);
    sub_1003A8658(64);
    sub_1003A8658(80);
    sub_1003E90C4(*(a1 + 88), 0);
    sub_1003A8658(88);
    sub_1003A8658(96);
    sub_1003A8658(104);
    v2 = *(a1 + 112);
    *(a1 + 112) = 0;
  }
}

id *sub_1003F11AC(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = KmlMessageToSend;
    v11 = objc_msgSendSuper2(&v13, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

void sub_1003F126C(uint64_t result)
{
  if (result)
  {
    v2 = [*(result + 56) path];
    v3 = [v2 usesInterfaceType:1];

    v4 = [*(result + 56) path];
    v5 = [v4 usesInterfaceType:2];

    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 136315906;
      sub_1003672C0();
      *&v8[7] = 435;
      v8[9] = v7;
      v9 = v3;
      v10 = v7;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : NWPath - Wifi : %d, Cellular : %d", v8, 0x1Eu);
    }

    sub_1003F2370(result, (v3 | v5) & 1);
  }
}

void sub_1003F138C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 16);
    sub_100057A60();
    v8 = 3221225472;
    v9 = sub_1003A8B08;
    v10 = &unk_1004D2418;
    v13 = a3;
    v11 = a1;
    v12 = v5;
    dispatch_async(v6, block);
  }
}

uint64_t sub_1003F1424(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [*(a1 + 8) devices];
      sub_1003A9918();
      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        v8 = MEMORY[0];
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (MEMORY[0] != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(8 * i) uniqueIDOverride];
            v11 = [v10 isEqualToString:v4];

            if (v11)
            {
              v12 = KmlLogger();
              if (sub_10036DCF8(v12))
              {
                *buf = 136315650;
                v17 = "[KmlPeerToPeerConnection internal_isOurOwnDeviceWithId:]";
                v18 = 1024;
                v19 = 361;
                v20 = 2112;
                v21 = v4;
                sub_1003A98FC(&_mh_execute_header, v13, v14, "%s : %i : ID %@ is of our own device", buf);
              }

              v7 = 1;
              goto LABEL_18;
            }
          }

          sub_1003A9918();
          v7 = [NSObject countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v5 = KmlLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "[KmlPeerToPeerConnection internal_isOurOwnDeviceWithId:]";
        v18 = 1024;
        v19 = 355;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : RemoteId should be non-nil to check this", buf, 0x12u);
      }

      v7 = 0;
    }

LABEL_18:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1003F1628(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      sub_100367444();
      sub_1003A98EC();
      v51 = v9;
      sub_100367454(&_mh_execute_header, v10, v11, "%s : %i : Remote Id: %@", buf);
    }

    if (v9)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v42 = a1;
      v12 = [a1[1] devices];
      v13 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v47;
LABEL_7:
        v16 = v8;
        v17 = 0;
        while (1)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v46 + 1) + 8 * v17);
          v19 = [v18 uniqueIDOverride];
          v20 = [v19 isEqualToString:v9];

          if (v20)
          {
            break;
          }

          if (v14 == ++v17)
          {
            v14 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
            v8 = v16;
            if (v14)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        v21 = KmlLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          sub_100367444();
          sub_1003A98EC();
          v51 = v9;
          sub_100367454(&_mh_execute_header, v21, v22, "%s : %i : Found our own device with ID %@", buf);
        }

        v23 = v18;
        v8 = v16;
        a1 = v42;
        if (!v23)
        {
          goto LABEL_19;
        }

        v24 = IDSCopyIDForDevice();
        if (!v24)
        {
          goto LABEL_31;
        }

LABEL_24:
        v26 = [NSSet setWithObject:v24];
        v27 = +[NSMutableDictionary dictionary];
        [v27 setObject:&off_1004DD0E0 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
        v28 = [a1[5] objectForKeyedSubscript:v9];
        if (v28)
        {
          [v27 setObject:v28 forKeyedSubscript:IDSSendMessageOptionFromIDKey];
        }

        v29 = a1[1];
        v44 = 0;
        v45 = 0;
        v43 = [v29 sendMessage:v7 toDestinations:v26 priority:300 options:v27 identifier:&v45 error:&v44];
        v41 = v27;
        v30 = v45;
        v31 = v28;
        v32 = v44;
        sub_1003F2154(a1, v9);

        if (v43)
        {
          v33 = KmlLogger();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 136315906;
            sub_100367444();
            sub_1003A98EC();
            v51 = v8;
            v52 = v34;
            v53 = v30;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s : %i : P2PConnection: Requested to send message(%@) - uuid %@", buf, 0x26u);
          }

          [a1[4] setObject:v8 forKeyedSubscript:v30];
LABEL_35:

          goto LABEL_36;
        }

LABEL_32:
        v38 = KmlLogger();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          sub_100367444();
          sub_1003A98EC();
          v51 = v30;
          v52 = v39;
          v53 = v32;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s : %i : P2PConnection: Failed to send with uuid %@ error %@", buf, 0x26u);
        }

        WeakRetained = objc_loadWeakRetained(a1 + 3);
        [WeakRetained handleSendMessageResult:v32 forMessageIdentifier:v8];

        goto LABEL_35;
      }

LABEL_13:

      a1 = v42;
    }

LABEL_19:
    if ([v9 _appearsToBeEmail])
    {
      v25 = IDSCopyIDForEmailAddress();
    }

    else
    {
      if (![v9 _appearsToBePhoneNumber])
      {
        v23 = 0;
        goto LABEL_31;
      }

      v25 = IDSCopyIDForPhoneNumber();
    }

    v24 = v25;
    v23 = 0;
    if (v25)
    {
      goto LABEL_24;
    }

LABEL_31:
    v35 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v54[0] = NSLocalizedDescriptionKey;
    v36 = [NSString stringWithUTF8String:KmlErrorString()];
    v54[1] = NSLocalizedFailureReasonErrorKey;
    v55[0] = v36;
    v55[1] = @"Failed to get a destination from rawAddress";
    v37 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
    v32 = [NSError errorWithDomain:v35 code:106 userInfo:v37];

    v30 = 0;
    v24 = 0;
    goto LABEL_32;
  }

LABEL_36:
}

void sub_1003F1B6C(id *a1)
{
  if (a1 && [a1[9] count])
  {
    v3 = [a1[9] firstObject];
    [a1[9] removeFirstObject];
    v4 = KmlLogger();
    if (sub_10036DCF8(v4))
    {
      if (v3)
      {
        v5 = *(v3 + 16);
      }

      else
      {
        v5 = 0;
      }

      sub_10037BCBC();
      _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
    }

    if (v3)
    {
      v11 = *(v3 + 8);
      v12 = *(v3 + 16);
      v13 = *(v3 + 24);
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v13 = 0;
    }

    sub_1003F1628(a1, v11, v12, v13);
  }
}

void sub_1003F1CD4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003A8CA0;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

id sub_1003F1D50(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 80))
    {
      v2 = KmlLogger();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 80);
        *buf = 136315650;
        v32 = "[KmlPeerToPeerConnection internal_getActiveAccount]";
        v33 = 1024;
        sub_1003A9924(v3);
        sub_100367454(&_mh_execute_header, v2, v4, "%s : %i : We already active IDS account with login:%@", buf);
      }

LABEL_19:
      v8 = 0;
    }

    else
    {
      v5 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v29 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:KmlErrorString()];
      v30 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v8 = [NSError errorWithDomain:v5 code:107 userInfo:v7];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v2 = [*(a1 + 8) accounts];
      v9 = [v2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v23 = v8;
        v11 = *v25;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v2);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            v14 = KmlLogger();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v13 loginID];
              *buf = 136315650;
              v32 = "[KmlPeerToPeerConnection internal_getActiveAccount]";
              v33 = 1024;
              v34 = 394;
              v35 = 2112;
              v36 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : P2PConnection: Checking IDS account with login:%@", buf, 0x1Cu);
            }

            if ([v13 canSend])
            {

              v16 = [v13 loginID];
              v17 = *(a1 + 80);
              *(a1 + 80) = v16;

              v18 = KmlLogger();
              if (sub_10036DCF8(v18))
              {
                v19 = *(a1 + 80);
                *buf = 136315650;
                v32 = "[KmlPeerToPeerConnection internal_getActiveAccount]";
                v33 = 1024;
                sub_1003A9924(v19);
                sub_1003A98FC(&_mh_execute_header, v20, v21, "%s : %i : P2PConnection: Found active IDS account with login:%@", buf);
              }

              goto LABEL_19;
            }
          }

          v10 = [v2 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v8 = v23;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1003F20AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003A8D90;
    v6[3] = &unk_1004C22F0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1003F2154(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    [*(a1 + 48) removeObject:v4];
    if (![*(a1 + 48) countForObject:v4])
    {
      v5 = KmlLogger();
      if (sub_10036DCF8(v5))
      {
        sub_1003672C0();
        sub_1003939E8();
        sub_10037BCBC();
        _os_log_impl(v6, v7, v8, v9, v10, 0x1Cu);
      }

      [*(a1 + 40) removeObjectForKey:v4];
    }
  }
}

dispatch_queue_t *sub_1003F223C(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_not_V2(a1[2]);
    sub_100057A60();
    v6 = 3221225472;
    v7 = sub_1003A9AF4;
    v8 = &unk_1004C08D8;
    v9 = v2;
    dispatch_sync(v3, block);
    a1 = v2[10];
    v1 = vars8;
  }

  return a1;
}

void sub_1003F22C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_1003A8EA8;
    v11 = &unk_1004C24A8;
    v12 = v6;
    v13 = a1;
    v14 = v5;
    dispatch_async(v7, block);
  }
}

void sub_1003F2370(uint64_t a1, int a2)
{
  if (a1)
  {
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      sub_10037BCBC();
      _os_log_impl(v6, v7, v8, v9, v10, 0x1Eu);
    }

    if (*(a1 + 64) != a2)
    {
      *(a1 + 64) = a2;
      if (a2)
      {
        sub_1003F2460(a1);
      }
    }
  }
}

void sub_1003F2460(id *a1)
{
  if (a1)
  {
    v3 = [a1[9] count];
    v4 = KmlLogger();
    if (sub_10036DCF8(v4))
    {
      sub_1003672C0();
      sub_10037BCBC();
      _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }

    for (; v3; --v3)
    {
      sub_1003F1B6C(a1);
    }
  }
}

Swift::String_optional __swiftcall URLRequest.value(forHTTPHeaderField:)(Swift::String forHTTPHeaderField)
{
  v1 = URLRequest.value(forHTTPHeaderField:)(forHTTPHeaderField._countAndFlagsBits, forHTTPHeaderField._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Data._Representation.subscript.getter()
{
  return Data._Representation.subscript.getter();
}

{
  return Data._Representation.subscript.getter();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = Substring.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t encodeSequenceSpec()
{
  return encodeSequenceSpec();
}

{
  return encodeSequenceSpec();
}

uint64_t DERParseSequenceSpec()
{
  return DERParseSequenceSpec();
}

{
  return DERParseSequenceSpec();
}

{
  return DERParseSequenceSpec();
}

uint64_t DERParseSequenceSpecContent()
{
  return DERParseSequenceSpecContent();
}

{
  return DERParseSequenceSpecContent();
}

uint64_t sub_1003F6F5C(double a1)
{
  if (!atomic_load(&dword_10050CBC8))
  {
    sub_1003F7060(a1);
  }

  return isInternalBuild();
}

double sub_1003F6F88(double result)
{
  if (!atomic_load(&dword_10050CBCC))
  {
    return sub_1003F7104(result);
  }

  return result;
}

double sub_1003F6FAC(double result)
{
  if (!atomic_load(&dword_10050CBC8))
  {
    return sub_1003F7060(result);
  }

  return result;
}

double sub_1003F6FD0(double result)
{
  if (!atomic_load(&dword_10050CBC8))
  {
    return sub_1003F7060(result);
  }

  return result;
}

double sub_1003F6FF4(double result)
{
  if (!atomic_load(&dword_10050CBC8))
  {
    return sub_1003F7060(result);
  }

  return result;
}

double sub_1003F7018(double result)
{
  if (!atomic_load(dword_10050CBD0))
  {
    return sub_1003F71A8(result);
  }

  return result;
}

double sub_1003F703C(double result)
{
  if (!atomic_load(dword_10050CBD0))
  {
    return sub_1003F71A8(result);
  }

  return result;
}

double sub_1003F7060(double a1)
{
  dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 0);
  atomic_store(1u, &dword_10050CBC8);
  return a1;
}

double sub_1003F7104(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CarKit.framework/CarKit", 0);
  atomic_store(1u, &dword_10050CBCC);
  return a1;
}

double sub_1003F71A8(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 0);
  atomic_store(1u, dword_10050CBD0);
  return a1;
}