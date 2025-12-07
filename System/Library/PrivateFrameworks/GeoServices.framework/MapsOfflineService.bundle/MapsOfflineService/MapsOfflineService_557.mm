void sub_1F18BBC()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27F06E8 = 0;
  unk_27F06F0 = 0;
  qword_27F06F8 = 0;
  sub_68678C(&qword_27F06E8, __p, v12, 1uLL);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27F0700 = 0;
  *algn_27F0708 = 0;
  qword_27F0710 = 0;
  sub_68678C(&qword_27F0700, __p, v12, 1uLL);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27F0718 = 0;
  unk_27F0720 = 0;
  qword_27F0728 = 0;
  sub_68678C(&qword_27F0718, __p, v12, 1uLL);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1F0E100(v0, v1, v2, v3, v4, v5, v6, v7);
  sub_3608D0(__p, "en_US");
  LODWORD(v12[0]) = 0;
  sub_3608D0(v12 + 1, "en-US_US");
  v13 = 0;
  sub_3608D0(v14, "en_AU");
  v15 = 1;
  sub_3608D0(v16, "en-AU_AU");
  v17 = 1;
  sub_3608D0(v18, "en_CA");
  v19 = 2;
  sub_3608D0(v20, "en-CA_CA");
  v21 = 2;
  sub_3608D0(v22, "en_GB");
  v23 = 3;
  sub_3608D0(v24, "en-GB_GB");
  v25 = 3;
  sub_3608D0(v26, "en_IE");
  v27 = 4;
  sub_3608D0(v28, "en-IE_IE");
  v29 = 4;
  sub_3608D0(v30, "en_NZ");
  v31 = 4;
  sub_3608D0(v32, "en-NZ_NZ");
  v33 = 4;
  sub_3608D0(v34, "en_ZA");
  v35 = 4;
  sub_3608D0(v36, "en-ZA_ZA");
  v37 = 4;
  sub_19664AC(&unk_27F0748, __p, 14);
  v8 = 56;
  do
  {
    if (*(&__p[v8 - 1] - 1) < 0)
    {
      operator delete(__p[v8 - 4]);
    }

    v8 -= 4;
  }

  while (v8 * 8);
  sub_3608D0(__p, "US");
  LODWORD(v12[0]) = 1;
  sub_3608D0(v12 + 1, "AU");
  v13 = 2;
  sub_3608D0(v14, "CA");
  v15 = 3;
  sub_3608D0(v16, "GB");
  v17 = 4;
  sub_3608D0(v18, "IE");
  v19 = 5;
  sub_3608D0(v20, "NZ");
  v21 = 5;
  sub_3608D0(v22, "ZA");
  v23 = 5;
  sub_3608D0(v24, "ZA");
  v25 = 5;
  sub_3608D0(v26, "IN");
  v27 = 7;
  sub_3608D0(v28, "DE");
  v29 = 6;
  sub_3608D0(v30, "CH");
  v31 = 6;
  sub_3608D0(v32, "NL");
  v33 = 6;
  sub_3608D0(v34, "DK");
  v35 = 6;
  sub_3608D0(v36, "NO");
  v37 = 6;
  sub_3608D0(v38, "FI");
  v39 = 6;
  sub_3608D0(v40, "SE");
  v41 = 6;
  sub_3608D0(v42, "BE");
  v43 = 6;
  sub_3608D0(v44, "AT");
  v45 = 6;
  sub_3608D0(v46, "MX");
  v47 = 6;
  sub_3608D0(v48, "AR");
  v49 = 6;
  sub_3608D0(v50, "CL");
  v51 = 6;
  sub_3608D0(v52, "BR");
  v53 = 6;
  sub_3608D0(v54, "SK");
  v55 = 6;
  sub_3608D0(v56, "TR");
  v57 = 6;
  sub_3608D0(v58, "PL");
  v59 = 6;
  sub_3608D0(v60, "HR");
  v61 = 6;
  sub_3608D0(v62, "RO");
  v63 = 6;
  sub_3608D0(v64, "HU");
  v65 = 6;
  sub_3608D0(v66, "VN");
  v67 = 6;
  sub_3608D0(v68, "GR");
  v69 = 6;
  sub_3608D0(v70, "IL");
  v71 = 6;
  sub_3608D0(v72, "NG");
  v73 = 6;
  sub_3608D0(v74, "AE");
  v75 = 6;
  sub_3608D0(v76, "EG");
  v77 = 6;
  sub_1966844(&unk_27F0770, __p, 34);
  v9 = 136;
  do
  {
    if (*(&__p[v9 - 1] - 1) < 0)
    {
      operator delete(__p[v9 - 4]);
    }

    v9 -= 4;
  }

  while (v9 * 8);
}

void sub_1F1925C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = (v15 + 1079);
  v18 = -1088;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 32;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 32;
    if (!v18)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_1F193E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  *v8 = &off_2726AC8;
  *(v8 + 8) = *v11;
  v13 = v11[1];
  v229 = v8;
  *(v8 + 16) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  *(v8 + 24) = v9;
  sub_1A57240(v8 + 32);
  if (v10)
  {
    v253 = xmmword_2368410;
    v254 = xmmword_2368420;
    v255 = xmmword_2368430;
    v256 = 16843009;
    v257 = 1;
    v258 = 0;
    v259 = 0;
    v260 = xmmword_2368440;
    v261 = 0x4170000042480000;
    v262 = 8;
    v263 = 1;
    v264 = 0x3FD999999999999ALL;
    v265 = 0x10000003CLL;
    v266 = xmmword_2368450;
    v267 = xmmword_2368460;
    v268 = xmmword_2368470;
    v269 = xmmword_2368480;
    v270 = 16777473;
    sub_3608D0(v427, "en");
    sub_3608D0(&v429, "es");
    sub_3608D0(&v433, "de");
    sub_3608D0(&v435, "fr");
    sub_3608D0(&v437, "it");
    sub_3608D0(&v439, "no");
    sub_3608D0(&v441, "nb");
    sub_3608D0(&v444, "fi");
    sub_3608D0(v446, "pt");
    sub_3608D0(&v447, "nl");
    sub_3608D0(&v449, "sv");
    sub_3608D0(&v452, "is");
    sub_3608D0(&v454, "da");
    sub_3608D0(&v457, "zh");
    sub_3608D0(&v462, "ja");
    sub_3608D0(&v465, "vi");
    sub_3608D0(&v468, "th");
    sub_3608D0(&v471, "ms");
    sub_3608D0(&v474, "tr");
    sub_3608D0(&v477, "fil");
    sub_3608D0(&v480, "bg");
    sub_3608D0(&v483, "ru");
    sub_3608D0(&v485 + 1, "ro");
    sub_3608D0(&v487 + 1, "pl");
    sub_3608D0(&v491, "uk");
    sub_3608D0(&v496, "cs");
    sub_3608D0(&v498, "el");
    sub_3608D0(&v501, "cy");
    sub_3608D0(v503, "hu");
    sub_3608D0(&v504, "sk");
    sub_3608D0(&v507, "hr");
    sub_3608D0(&v510, "et");
    sub_3608D0(&v513, "lt");
    sub_3608D0(&v516, "lv");
    sub_3608D0(&v520, "mk");
    sub_3608D0(&v523, "ca");
    sub_3608D0(&v526, "bs");
    sub_3608D0(&v530, "sr");
    sub_3608D0(&v533, "sq");
    sub_3608D0(&v536, "hi");
    sub_3608D0(&v538, "id");
    sub_3608D0(&v540, "jv");
    sub_3608D0(&v542, "fj");
    sub_3608D0(&v545, "my");
    sub_3608D0(&v548, "km");
    sub_3608D0(&v550, "khm");
    sub_3608D0(v553, "bn");
    sub_3608D0(&v555, "ben");
    sub_3608D0(v559, "dz");
    sub_3608D0(&v560, "ne");
    sub_3608D0(v562, "ur");
    sub_3608D0(v564, "kk");
    sub_3608D0(v565, "tk");
    sub_3608D0(&v566, "uz");
    v271[0] = 0;
    v271[1] = 0;
    v272 = 0;
    sub_68678C(v271, v427, &v568, 0x36uLL);
    v14 = 162;
    do
    {
      if (SHIBYTE(v427[v14 - 1]) < 0)
      {
        operator delete(*&v426[v14 * 8 + 24]);
      }

      v14 -= 3;
    }

    while (v14 * 8);
    sub_3608D0(v427, "IL");
    sub_3608D0(&v429, "TN");
    sub_3608D0(&v433, "MA");
    sub_3608D0(&v435, "IQ");
    sub_3608D0(&v437, "IR");
    sub_3608D0(&v439, "JO");
    sub_3608D0(&v441, "LB");
    sub_3608D0(&v444, "LY");
    sub_3608D0(v446, "EG");
    sub_3608D0(&v447, "OM");
    sub_3608D0(&v449, "YE");
    sub_3608D0(&v452, "SA");
    sub_3608D0(&v454, "SY");
    sub_3608D0(&v457, "BH");
    sub_3608D0(&v462, "QA");
    sub_3608D0(&v465, "AE");
    sub_3608D0(&v468, "KW");
    sub_3608D0(&v471, "EH");
    sub_3608D0(&v474, "NE");
    sub_3608D0(&v477, "ML");
    sub_3608D0(&v480, "TD");
    sub_3608D0(&v483, "MR");
    sub_3608D0(&v485 + 1, "SD");
    v273[0] = 0;
    v273[1] = 0;
    v274 = 0;
    sub_68678C(v273, v427, (&v487 + 8), 0x17uLL);
    v15 = 69;
    do
    {
      if (SHIBYTE(v427[v15 - 1]) < 0)
      {
        operator delete(*&v426[v15 * 8 + 24]);
      }

      v15 -= 3;
    }

    while (v15 * 8);
    sub_3608D0(v427, "6_7_4");
    sub_3608D0(&v429, "7_7_4");
    sub_3608D0(&v433, "8_7_4");
    sub_3608D0(&v435, "9_7_4");
    sub_3608D0(&v437, "10_7_4");
    sub_3608D0(&v439, "8_8_4");
    sub_3608D0(&v441, "9_8_4");
    sub_3608D0(&v444, "10_8_4");
    sub_3608D0(v446, "8_9_4");
    sub_3608D0(&v447, "9_9_4");
    sub_3608D0(&v449, "10_9_4");
    v275[0] = 0;
    v275[1] = 0;
    v276 = 0;
    sub_68678C(v275, v427, &v452, 0xBuLL);
    v16 = 33;
    do
    {
      if (SHIBYTE(v427[v16 - 1]) < 0)
      {
        operator delete(*&v426[v16 * 8 + 24]);
      }

      v16 -= 3;
    }

    while (v16 * 8);
    LODWORD(v277) = 15;
    BYTE4(v277) = 1;
    v278 = 0x400000010;
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    v282 = 0x4008000000000000;
    v283 = 0x100000014;
    v284 = 10;
    v285 = 257;
    v286 = xmmword_2368490;
    v287 = xmmword_23684A0;
    sub_3608D0(v427, "browse_subcategory_gasstations");
    sub_3608D0(&v429, "browse_subcategory_parking");
    sub_3608D0(&v433, "browse_subcategory_restaurants");
    sub_3608D0(&v435, "browse_subcategory_coffee_shops");
    sub_3608D0(&v437, "browse_subcategory_groceries");
    memset(v288, 0, sizeof(v288));
    sub_68678C(v288, v427, &v439, 5uLL);
    for (i = 0; i != -120; i -= 24)
    {
      if (*(&v438 + i + 7) < 0)
      {
        operator delete(*(&v437 + i));
      }
    }

    sub_3608D0(v427, "browse_subcategory_gasstations");
    sub_3608D0(&v429, "browse_subcategory_parking");
    sub_3608D0(&v433, "browse_subcategory_restaurants");
    sub_3608D0(&v435, "browse_subcategory_coffee_shops");
    sub_3608D0(&v437, "browse_subcategory_groceries");
    v289[0] = 0;
    v289[1] = 0;
    v290 = 0;
    sub_68678C(v289, v427, &v439, 5uLL);
    for (j = 0; j != -120; j -= 24)
    {
      if (*(&v438 + j + 7) < 0)
      {
        operator delete(*(&v437 + j));
      }
    }

    sub_3608D0(v427, "browse_subcategory_evcharger_carplay");
    sub_3608D0(&v429, "browse_subcategory_parking");
    sub_3608D0(&v433, "browse_subcategory_restaurants");
    sub_3608D0(&v435, "browse_subcategory_coffee_shops");
    sub_3608D0(&v437, "browse_subcategory_groceries");
    v291[0] = 0;
    v291[1] = 0;
    v292 = 0;
    sub_68678C(v291, v427, &v439, 5uLL);
    for (k = 0; k != -120; k -= 24)
    {
      if (*(&v438 + k + 7) < 0)
      {
        operator delete(*(&v437 + k));
      }
    }

    sub_3608D0(v427, "browse_subcategory_gasstations");
    sub_3608D0(&v429, "browse_subcategory_parking");
    sub_3608D0(&v433, "browse_subcategory_restaurants");
    sub_3608D0(&v435, "browse_subcategory_coffee_shops");
    sub_3608D0(&v437, "browse_subcategory_groceries");
    v293[0] = 0;
    v293[1] = 0;
    v294 = 0;
    sub_68678C(v293, v427, &v439, 5uLL);
    for (m = 0; m != -120; m -= 24)
    {
      if (*(&v438 + m + 7) < 0)
      {
        operator delete(*(&v437 + m));
      }
    }

    sub_3608D0(v427, "active.hiking");
    sub_3608D0(&v429, "active.parks.trailhead");
    sub_3608D0(&v433, "hotelstravel.campgrounds");
    sub_3608D0(&v435, "hotelstravel.visitorcenters");
    sub_3608D0(&v437, "travel_and_leisure.hiking_trail");
    sub_3608D0(&v439, "travel_and_leisure.hiking_trail.trailhead");
    sub_3608D0(&v441, "travel_and_leisure.campground");
    sub_3608D0(&v444, "travel_and_leisure.visitor_center");
    sub_1A5C918(&v295, v427, 8);
    for (n = 0; n != -192; n -= 24)
    {
      if (*(&v445 + n + 7) < 0)
      {
        operator delete(*(&v444 + n));
      }
    }

    sub_3608D0(v427, "active");
    sub_3608D0(&v429, "emergencyrooms");
    sub_3608D0(&v433, "hospitals");
    sub_3608D0(&v435, "urgent_care");
    sub_3608D0(&v437, "airports");
    sub_3608D0(&v439, "skiresorts");
    sub_3608D0(&v441, "transport");
    sub_3608D0(&v444, "touristattraction");
    sub_3608D0(v446, "physicalfeature");
    sub_3608D0(&v447, "travel_and_leisure");
    sub_3608D0(&v449, "emergency_room");
    sub_3608D0(&v452, "hospital");
    sub_3608D0(&v454, "urgent_care_center");
    sub_3608D0(&v457, "airport");
    sub_3608D0(&v462, "ski_resort");
    sub_3608D0(&v465, "transportation_service");
    sub_3608D0(&v468, "tourist_attraction");
    sub_3608D0(&v471, "physical_feature");
    sub_1A5C918(&v297, v427, 18);
    v22 = 54;
    do
    {
      if (SHIBYTE(v427[v22 - 1]) < 0)
      {
        operator delete(*&v426[v22 * 8 + 24]);
      }

      v22 -= 3;
    }

    while (v22 * 8);
    sub_3608D0(v427, "kids_activities");
    sub_3608D0(&v429, "parks");
    sub_3608D0(&v433, "playgrounds");
    sub_3608D0(&v435, "sportscomplex");
    sub_3608D0(&v437, "statue");
    sub_3608D0(&v439, "zoos");
    sub_3608D0(&v441, "kids_fun_center");
    sub_3608D0(&v444, "park");
    sub_3608D0(v446, "playground");
    sub_3608D0(&v447, "sports_complex");
    sub_3608D0(&v449, "zoo");
    sub_1A5C918(&v299, v427, 11);
    v23 = 33;
    do
    {
      if (SHIBYTE(v427[v23 - 1]) < 0)
      {
        operator delete(*&v426[v23 * 8 + 24]);
      }

      v23 -= 3;
    }

    while (v23 * 8);
    sub_3608D0(v427, "food");
    sub_3608D0(&v429, "restaurants");
    sub_3608D0(&v433, "financialservices");
    sub_3608D0(&v435, "localservices");
    sub_3608D0(&v437, "homedecor");
    sub_3608D0(&v439, "beautysvc");
    sub_3608D0(&v441, "officebuilding");
    sub_3608D0(&v444, "supermarket");
    sub_3608D0(v446, "flowers");
    sub_3608D0(&v447, "homeandgarden");
    sub_3608D0(&v449, "servicestations");
    sub_3608D0(&v452, "parks");
    sub_3608D0(&v454, "playgrounds");
    sub_3608D0(&v457, "sportscomplex");
    sub_3608D0(&v462, "trainstations");
    sub_3608D0(&v465, "food_mart");
    sub_3608D0(&v468, "restaurant");
    sub_3608D0(&v471, "financial_service");
    sub_3608D0(&v474, "local_service");
    sub_3608D0(&v477, "home_decor_store");
    sub_3608D0(&v480, "beauty_service");
    sub_3608D0(&v483, "office_building");
    sub_3608D0(&v485 + 1, "floral_shop");
    sub_3608D0(&v487 + 1, "home_goods_store");
    sub_3608D0(&v491, "service_station");
    sub_3608D0(&v496, "park");
    sub_3608D0(&v498, "playground");
    sub_3608D0(&v501, "sports_complex");
    sub_3608D0(v503, "train_station");
    sub_1A5C918(&v301, v427, 29);
    v24 = 87;
    do
    {
      if (SHIBYTE(v427[v24 - 1]) < 0)
      {
        operator delete(*&v426[v24 * 8 + 24]);
      }

      v24 -= 3;
    }

    while (v24 * 8);
    v303[0] = 1;
    *&v303[4] = xmmword_23684B0;
    v304 = xmmword_23684C0;
    v305 = 30;
    v306 = 0x4000000000000000;
    v307 = xmmword_23684D0;
    v308 = 2;
    v309 = 257;
    sub_3608D0(&v604, "ranker_pw_en_model");
    sub_3608D0(&v586, "CA");
    sub_3608D0(v588, "GB");
    sub_3608D0(v589, "AU");
    sub_3608D0(&v590, "NZ");
    sub_3608D0(v591, "IE");
    sub_3608D0(v592, "ZA");
    v404 = 0uLL;
    v405 = 0;
    sub_68678C(&v404, &v586, &v593, 6uLL);
    sub_1A5C99C(&v593, &v604, &v404);
    sub_3608D0(v393, "ranker_pw_us_model");
    sub_3608D0(v387, "US");
    v390 = 0uLL;
    v391 = 0;
    sub_68678C(&v390, v387, v389, 1uLL);
    sub_1A5C99C(v596, v393, &v390);
    sub_3608D0(&v384, "ranker_pw_eu_model");
    sub_3608D0(v409, "DE");
    sub_3608D0(v411, "FR");
    sub_3608D0(&v412, "BE");
    sub_3608D0(v413, "CH");
    sub_3608D0(v414, "AT");
    sub_3608D0(v415, "ES");
    sub_3608D0(v416, "IT");
    sub_3608D0(v417, "NL");
    sub_3608D0(v418, "PT");
    sub_3608D0(v419, "NO");
    sub_3608D0(v420, "DK");
    sub_3608D0(v421, "FI");
    sub_3608D0(v422, "SE");
    v381 = 0uLL;
    v382 = 0;
    sub_68678C(&v381, v409, &v423, 0xDuLL);
    sub_1A5C99C(&v598, &v384, &v381);
    sub_3608D0(&v379, "ranker_pw_cn_model");
    sub_3608D0(&v602, "CN");
    v377 = 0uLL;
    v378 = 0;
    sub_68678C(&v377, &v602, &v604, 1uLL);
    sub_1A5C99C(&v599, &v379, &v377);
    sub_3608D0(&v375, "ranker_pw_cjk_model");
    sub_3608D0(&v578, "JP");
    sub_3608D0(v579, "MO");
    sub_3608D0(&v580, "PH");
    sub_3608D0(v581, "MY");
    sub_3608D0(v582, "TW");
    sub_3608D0(v583, "HK");
    v584 = 0uLL;
    v585 = 0;
    sub_68678C(&v584, &v578, &v584, 6uLL);
    sub_1A5C99C(&v600, &v375, &v584);
    sub_3608D0(__p, "ranker_pw_row_model");
    sub_3608D0(v427, "AR");
    sub_3608D0(&v429, "BR");
    sub_3608D0(&v433, "MX");
    sub_3608D0(&v435, "CL");
    sub_3608D0(&v437, "CZ");
    sub_3608D0(&v439, "GR");
    sub_3608D0(&v441, "HR");
    sub_3608D0(&v444, "HU");
    sub_3608D0(v446, "ID");
    sub_3608D0(&v447, "IN");
    sub_3608D0(&v449, "PL");
    sub_3608D0(&v452, "RO");
    sub_3608D0(&v454, "SG");
    sub_3608D0(&v457, "SK");
    sub_3608D0(&v462, "TH");
    sub_3608D0(&v465, "TR");
    sub_3608D0(&v468, "VN");
    sub_3608D0(&v471, "AE");
    sub_3608D0(&v474, "EG");
    sub_3608D0(&v477, "IL");
    sub_3608D0(&v480, "NG");
    sub_3608D0(&v483, "MA");
    v248 = 0;
    v249 = 0;
    v250 = 0;
    sub_68678C(&v248, v427, (&v485 + 8), 0x16uLL);
    sub_1A5C99C(&v601, __p, &v248);
    v310 = 0;
    v311 = 0;
    v312 = 0;
    sub_1A5CA34(&v310, &v593, &v602, 6uLL);
    v25 = 36;
    do
    {
      v407[0] = &v592[v25];
      sub_195E3E8(v407);
      if (SHIBYTE(v591[v25 + 2]) < 0)
      {
        operator delete(v591[v25]);
      }

      v25 -= 6;
    }

    while (v25 * 8);
    v407[0] = &v248;
    sub_195E3E8(v407);
    v26 = 66;
    do
    {
      if (SHIBYTE(v427[v26 - 1]) < 0)
      {
        operator delete(*&v426[v26 * 8 + 24]);
      }

      v26 -= 3;
    }

    while (v26 * 8);
    if (v252 < 0)
    {
      operator delete(__p[0]);
    }

    v427[0] = &v584;
    sub_195E3E8(v427);
    for (ii = 0; ii != -18; ii -= 3)
    {
      if (SHIBYTE(v583[ii + 2]) < 0)
      {
        operator delete(v583[ii]);
      }
    }

    if (SHIBYTE(v376) < 0)
    {
      operator delete(v375);
    }

    v427[0] = &v377;
    sub_195E3E8(v427);
    if (SHIBYTE(v603) < 0)
    {
      operator delete(v602);
    }

    if (SHIBYTE(v380) < 0)
    {
      operator delete(v379);
    }

    v427[0] = &v381;
    sub_195E3E8(v427);
    v28 = 39;
    do
    {
      if (SHIBYTE(v409[v28 - 1]) < 0)
      {
        operator delete(v407[v28]);
      }

      v28 -= 3;
    }

    while (v28 * 8);
    if (SHIBYTE(v385) < 0)
    {
      operator delete(v384);
    }

    v427[0] = &v390;
    sub_195E3E8(v427);
    if (v388 < 0)
    {
      operator delete(v387[0]);
    }

    if (v394 < 0)
    {
      operator delete(v393[0]);
    }

    v427[0] = &v404;
    sub_195E3E8(v427);
    for (jj = 0; jj != -18; jj -= 3)
    {
      if (SHIBYTE(v592[jj + 2]) < 0)
      {
        operator delete(v592[jj]);
      }
    }

    if (SHIBYTE(v605) < 0)
    {
      operator delete(v604);
    }

    sub_3608D0(v427, "EG");
    v429 = 0x4058000000000000;
    sub_3608D0(&v430, "CA");
    *(&v433 + 1) = 0x4058000000000000;
    sub_3608D0(&v434, "GB");
    v436 = 0x4058000000000000;
    sub_3608D0(&v437, "US");
    *&v439 = 0x4058000000000000;
    sub_3608D0(&v439 + 1, "DE");
    v442 = 0x4058000000000000;
    sub_3608D0(&v443, "FR");
    v445 = 0x4058000000000000;
    sub_3608D0(v446, "BE");
    v447 = 0x4058000000000000;
    sub_3608D0(&v448, "CH");
    v450 = 0x4058000000000000;
    sub_3608D0(&v451, "CN");
    v453 = 0x4058000000000000;
    sub_3608D0(&v454, "AT");
    v457 = 0x4058000000000000;
    sub_3608D0(&v458, "ES");
    v463 = 0x4058000000000000;
    sub_3608D0(&v464, "AU");
    v467 = 0x4058000000000000;
    sub_3608D0(&v468, "NZ");
    v471 = 0x4058000000000000;
    sub_3608D0(&v472, "IE");
    v475 = 0x4058000000000000;
    sub_3608D0(&v476, "ZA");
    v479 = 0x4058000000000000;
    sub_3608D0(&v480, "IT");
    v483 = 0x4058000000000000;
    sub_3608D0(&v484, "NL");
    v486 = 0x4058000000000000;
    sub_3608D0(&v487, "PT");
    v490 = 0x4058000000000000;
    sub_3608D0(&v491, "NO");
    v496 = 0x4058000000000000;
    sub_3608D0(v497, "DK");
    v499 = 0x4058000000000000;
    sub_3608D0(&v500, "FI");
    v502[1] = 0x4058000000000000;
    sub_3608D0(v503, "SE");
    v504 = 0x4058000000000000;
    sub_3608D0(&v505, "GB");
    v508 = 0x4058000000000000;
    sub_3608D0(&v509, "JP");
    v512 = 0x4058000000000000;
    sub_3608D0(&v513, "MO");
    v516 = 0x4058000000000000;
    sub_3608D0(&v517, "PH");
    v521 = 0x4058000000000000;
    sub_3608D0(&v522, "MY");
    v525 = 0x4058000000000000;
    sub_3608D0(&v526, "TW");
    v530 = 0x4058000000000000;
    sub_3608D0(&v531, "HK");
    v534 = 0x4058000000000000;
    sub_3608D0(&v535, "AR");
    v537 = 0x4058000000000000;
    sub_3608D0(&v538, "BR");
    v540 = 0x4058000000000000;
    sub_3608D0(&v541, "MX");
    v543 = 0x4058000000000000;
    sub_3608D0(&v544, "CL");
    v547 = 0x4058000000000000;
    sub_3608D0(&v548, "CZ");
    v550 = 0x4058000000000000;
    sub_3608D0(&v551, "GR");
    v553[1] = 0x4058000000000000;
    sub_3608D0(&v554, "HR");
    v558 = 0x4058000000000000;
    sub_3608D0(v559, "HU");
    v560 = 0x4058000000000000;
    sub_3608D0(&v561, "ID");
    v562[1] = 0x4058000000000000;
    sub_3608D0(&v563, "IN");
    v564[2] = 0x4058000000000000;
    sub_3608D0(v565, "PL");
    v566 = 0x4058000000000000;
    sub_3608D0(&v567, "RO");
    *(&v568 + 1) = 0x4058000000000000;
    sub_3608D0(v569, "SG");
    v569[3] = 0x4058000000000000;
    sub_3608D0(v570, "SK");
    v570[3] = 0x4058000000000000;
    sub_3608D0(v571, "TH");
    v571[3] = 0x4058000000000000;
    sub_3608D0(v572, "TR");
    v572[3] = 0x4058000000000000;
    sub_3608D0(v573, "VN");
    v573[3] = 0x4058000000000000;
    sub_3608D0(v574, "AE");
    v574[3] = 0x4058000000000000;
    sub_3608D0(v575, "IL");
    v575[3] = 0x4058000000000000;
    sub_3608D0(v576, "NG");
    v576[3] = 0x4058000000000000;
    sub_3608D0(v577, "MA");
    v577[3] = 0x4058000000000000;
    sub_1A5CB44(v313, v427, 50);
    v30 = 1600;
    do
    {
      if (v426[v30 + 39] < 0)
      {
        operator delete(*&v426[v30 + 16]);
      }

      v30 -= 32;
    }

    while (v30);
    v322 = 5;
    sub_3608D0(v393, "speller-enus-esus");
    sub_3608D0(&v578, "US");
    sub_3608D0(v579, "AE");
    v390 = 0uLL;
    v391 = 0;
    sub_68678C(&v390, &v578, &v580, 2uLL);
    sub_1A5C99C(v409, v393, &v390);
    sub_3608D0(v387, "speller-GB");
    sub_3608D0(&v381, "GB");
    v384 = 0uLL;
    v385 = 0;
    sub_68678C(&v384, &v381, v383, 1uLL);
    sub_1A5C99C(&v412, v387, &v384);
    sub_3608D0(&v379, "speller-AU");
    sub_3608D0(&v604, "AU");
    sub_3608D0(v606, "NZ");
    v377 = 0uLL;
    v378 = 0;
    sub_68678C(&v377, &v604, &v607[1], 2uLL);
    sub_1A5C99C(v414, &v379, &v377);
    sub_3608D0(&v602, "speller-CA");
    sub_3608D0(&v584, "CA");
    v375 = 0uLL;
    v376 = 0;
    sub_68678C(&v375, &v584, &v586, 1uLL);
    sub_1A5C99C(v416, &v602, &v375);
    sub_3608D0(__p, "speller-EU");
    sub_3608D0(&v593, "ES");
    sub_3608D0(v595, "IT");
    sub_3608D0(v596, "NL");
    v248 = 0;
    v249 = 0;
    v250 = 0;
    sub_68678C(&v248, &v593, &v597, 3uLL);
    sub_1A5C99C(v418, __p, &v248);
    sub_3608D0(v407, "speller-FR-DE");
    sub_3608D0(&v404, "FR");
    sub_3608D0(v406, "DE");
    v245 = 0;
    v246 = 0;
    v247 = 0;
    sub_68678C(&v245, &v404, v407, 2uLL);
    sub_1A5C99C(v420, v407, &v245);
    sub_3608D0(v402, "speller-EU-offline-mixed-reduced");
    sub_3608D0(&v586, "AT");
    sub_3608D0(v588, "CH");
    sub_3608D0(v589, "BE");
    v242 = 0;
    v243 = 0;
    v244 = 0;
    sub_68678C(&v242, &v586, &v590, 3uLL);
    sub_1A5C99C(v422, v402, &v242);
    sub_3608D0(v240, "speller-GR");
    sub_3608D0(v400, "GR");
    v237 = 0;
    v238 = 0;
    v239 = 0;
    sub_68678C(&v237, v400, v402, 1uLL);
    sub_1A5C99C(&v424, v240, &v237);
    sub_3608D0(&v235, "speller-JP");
    sub_3608D0(&v398, "JP");
    v233 = 0uLL;
    v234 = 0;
    sub_68678C(&v233, &v398, v400, 1uLL);
    sub_1A5C99C(&v425, &v235, &v233);
    sub_3608D0(v231, "speller-ROW");
    sub_3608D0(v427, "IN");
    sub_3608D0(&v429, "PT");
    sub_3608D0(&v433, "FI");
    sub_3608D0(&v435, "SE");
    sub_3608D0(&v437, "AD");
    sub_3608D0(&v439, "MC");
    sub_3608D0(&v441, "LU");
    sub_3608D0(&v444, "VA");
    sub_3608D0(v446, "IS");
    sub_3608D0(&v447, "GL");
    sub_3608D0(&v449, "FO");
    sub_3608D0(&v452, "IE");
    sub_3608D0(&v454, "NO");
    sub_3608D0(&v457, "DK");
    sub_3608D0(&v462, "AR");
    sub_3608D0(&v465, "BR");
    sub_3608D0(&v468, "MX");
    sub_3608D0(&v471, "CL");
    sub_3608D0(&v474, "TW");
    sub_3608D0(&v477, "HK");
    sub_3608D0(&v480, "MO");
    sub_3608D0(&v483, "PL");
    sub_3608D0(&v485 + 1, "HR");
    sub_3608D0(&v487 + 1, "RO");
    sub_3608D0(&v491, "SK");
    sub_3608D0(&v496, "CZ");
    sub_3608D0(&v498, "HU");
    sub_3608D0(&v501, "VN");
    sub_3608D0(v503, "TH");
    sub_3608D0(&v504, "SG");
    sub_3608D0(&v507, "MY");
    sub_3608D0(&v510, "PH");
    sub_3608D0(&v513, "TR");
    sub_3608D0(&v516, "AE");
    sub_3608D0(&v520, "IL");
    sub_3608D0(&v523, "SA");
    sub_3608D0(&v526, "NG");
    sub_3608D0(&v530, "EG");
    sub_3608D0(&v533, "MA");
    sub_3608D0(&v536, "ZA");
    v396 = 0uLL;
    v397 = 0;
    sub_68678C(&v396, v427, &v538, 0x28uLL);
    sub_1A5C99C(v426, v231, &v396);
    v324 = 0;
    v325 = 0;
    v326 = 0;
    sub_1A5CA34(&v324, v409, v427, 0xAuLL);
    v31 = 60;
    do
    {
      v230[0] = &v407[v31];
      sub_195E3E8(v230);
      if (SHIBYTE(v406[v31 + 2]) < 0)
      {
        operator delete(v406[v31]);
      }

      v31 -= 6;
    }

    while (v31 * 8);
    v230[0] = &v396;
    sub_195E3E8(v230);
    v32 = 120;
    do
    {
      if (SHIBYTE(v427[v32 - 1]) < 0)
      {
        operator delete(*&v426[v32 * 8 + 24]);
      }

      v32 -= 3;
    }

    while (v32 * 8);
    if (v232 < 0)
    {
      operator delete(v231[0]);
    }

    v427[0] = &v233;
    sub_195E3E8(v427);
    if (SHIBYTE(v399) < 0)
    {
      operator delete(v398);
    }

    if (SHIBYTE(v236) < 0)
    {
      operator delete(v235);
    }

    v427[0] = &v237;
    sub_195E3E8(v427);
    if (v401 < 0)
    {
      operator delete(v400[0]);
    }

    if (v241 < 0)
    {
      operator delete(v240[0]);
    }

    v427[0] = &v242;
    sub_195E3E8(v427);
    for (kk = 0; kk != -9; kk -= 3)
    {
      if (SHIBYTE(v589[kk + 2]) < 0)
      {
        operator delete(v589[kk]);
      }
    }

    if (v403 < 0)
    {
      operator delete(v402[0]);
    }

    v427[0] = &v245;
    sub_195E3E8(v427);
    for (mm = 0; mm != -6; mm -= 3)
    {
      if (SHIBYTE(v406[mm + 2]) < 0)
      {
        operator delete(v406[mm]);
      }
    }

    if (v408 < 0)
    {
      operator delete(v407[0]);
    }

    v427[0] = &v248;
    sub_195E3E8(v427);
    for (nn = 0; nn != -9; nn -= 3)
    {
      if (SHIBYTE(v596[nn + 2]) < 0)
      {
        operator delete(v596[nn]);
      }
    }

    if (v252 < 0)
    {
      operator delete(__p[0]);
    }

    v427[0] = &v375;
    sub_195E3E8(v427);
    if (SHIBYTE(v585) < 0)
    {
      operator delete(v584);
    }

    if (SHIBYTE(v603) < 0)
    {
      operator delete(v602);
    }

    v427[0] = &v377;
    sub_195E3E8(v427);
    for (i1 = 0; i1 != -6; i1 -= 3)
    {
      if (v607[i1 * 8] < 0)
      {
        operator delete(v606[i1]);
      }
    }

    if (SHIBYTE(v380) < 0)
    {
      operator delete(v379);
    }

    v427[0] = &v384;
    sub_195E3E8(v427);
    if (SHIBYTE(v382) < 0)
    {
      operator delete(v381);
    }

    if (v388 < 0)
    {
      operator delete(v387[0]);
    }

    v427[0] = &v390;
    sub_195E3E8(v427);
    for (i2 = 0; i2 != -6; i2 -= 3)
    {
      if (SHIBYTE(v579[i2 + 2]) < 0)
      {
        operator delete(v579[i2]);
      }
    }

    if (v394 < 0)
    {
      operator delete(v393[0]);
    }

    sub_3608D0(&v381, "speller-enus-esus");
    sub_3608D0(v409, "from_ENUSESUS");
    sub_3608D0(v411, "to_ENUSESUS");
    v379 = 0uLL;
    v380 = 0;
    sub_68678C(&v379, v409, &v412, 2uLL);
    sub_1A5C99C(v427, &v381, &v379);
    sub_3608D0(&v377, "speller-GB");
    sub_3608D0(&v593, "from_SOURCE");
    sub_3608D0(v595, "to_TARGET");
    v602 = 0uLL;
    v603 = 0;
    sub_68678C(&v602, &v593, v596, 2uLL);
    sub_1A5C99C(&v433, &v377, &v602);
    sub_3608D0(&v375, "speller-AU");
    sub_3608D0(&v586, "from_AU");
    sub_3608D0(v588, "to_AU");
    v584 = 0uLL;
    v585 = 0;
    sub_68678C(&v584, &v586, v589, 2uLL);
    sub_1A5C99C(&v437, &v375, &v584);
    sub_3608D0(__p, "speller-CA");
    sub_3608D0(&v578, "from_CA");
    sub_3608D0(v579, "to_CA");
    v248 = 0;
    v249 = 0;
    v250 = 0;
    sub_68678C(&v248, &v578, &v580, 2uLL);
    sub_1A5C99C(&v441, __p, &v248);
    sub_3608D0(v407, "speller-EU");
    sub_3608D0(&v604, "from_EU");
    sub_3608D0(v606, "to_EU");
    v245 = 0;
    v246 = 0;
    v247 = 0;
    sub_68678C(&v245, &v604, &v607[1], 2uLL);
    sub_1A5C99C(v446, v407, &v245);
    sub_3608D0(v402, "speller-GR");
    sub_3608D0(&v404, "from_SOURCE");
    sub_3608D0(v406, "to_TARGET");
    v242 = 0;
    v243 = 0;
    v244 = 0;
    sub_68678C(&v242, &v404, v407, 2uLL);
    sub_1A5C99C(&v449, v402, &v242);
    sub_3608D0(v240, "speller-JP");
    sub_3608D0(v393, "from_SOURCE");
    sub_3608D0(v395, "to_TARGET");
    v237 = 0;
    v238 = 0;
    v239 = 0;
    sub_68678C(&v237, v393, &v396, 2uLL);
    sub_1A5C99C(&v454, v240, &v237);
    sub_3608D0(v400, "speller-FR-DE");
    sub_3608D0(&v390, "from_DEFRAC");
    sub_3608D0(v392, "to_DEFRAC");
    v235 = 0uLL;
    v236 = 0;
    sub_68678C(&v235, &v390, v393, 2uLL);
    sub_1A5C99C(&v462, v400, &v235);
    sub_3608D0(&v233, "speller-EU-offline-mixed-reduced");
    sub_3608D0(v387, "from_SOURCE");
    sub_3608D0(v389, "to_TARGET");
    v398 = 0uLL;
    v399 = 0;
    sub_68678C(&v398, v387, &v390, 2uLL);
    sub_1A5C99C(&v468, &v233, &v398);
    sub_3608D0(v231, "speller-ROW");
    sub_3608D0(&v384, "from_GLOBAL");
    sub_3608D0(v386, "to_GLOBAL");
    v396 = 0uLL;
    v397 = 0;
    sub_68678C(&v396, &v384, v387, 2uLL);
    sub_1A5C99C(&v474, v231, &v396);
    v327 = 0;
    v328 = 0;
    v329 = 0;
    sub_1A5CA34(&v327, v427, &v480, 0xAuLL);
    v38 = 480;
    do
    {
      v230[0] = &v426[v38 + 24];
      sub_195E3E8(v230);
      if (v426[v38 + 23] < 0)
      {
        operator delete(*&v426[v38]);
      }

      v38 -= 48;
    }

    while (v38);
    v230[0] = &v396;
    sub_195E3E8(v230);
    for (i3 = 0; i3 != -6; i3 -= 3)
    {
      if (SHIBYTE(v386[i3 + 2]) < 0)
      {
        operator delete(v386[i3]);
      }
    }

    if (v232 < 0)
    {
      operator delete(v231[0]);
    }

    *&v384 = &v398;
    sub_195E3E8(&v384);
    for (i4 = 0; i4 != -6; i4 -= 3)
    {
      if (SHIBYTE(v389[i4 + 2]) < 0)
      {
        operator delete(v389[i4]);
      }
    }

    if (SHIBYTE(v234) < 0)
    {
      operator delete(v233);
    }

    v387[0] = &v235;
    sub_195E3E8(v387);
    for (i5 = 0; i5 != -6; i5 -= 3)
    {
      if (SHIBYTE(v392[i5 + 2]) < 0)
      {
        operator delete(v392[i5]);
      }
    }

    if (v401 < 0)
    {
      operator delete(v400[0]);
    }

    *&v390 = &v237;
    sub_195E3E8(&v390);
    for (i6 = 0; i6 != -6; i6 -= 3)
    {
      if (SHIBYTE(v395[i6 + 2]) < 0)
      {
        operator delete(v395[i6]);
      }
    }

    if (v241 < 0)
    {
      operator delete(v240[0]);
    }

    v393[0] = &v242;
    sub_195E3E8(v393);
    for (i7 = 0; i7 != -6; i7 -= 3)
    {
      if (SHIBYTE(v406[i7 + 2]) < 0)
      {
        operator delete(v406[i7]);
      }
    }

    if (v403 < 0)
    {
      operator delete(v402[0]);
    }

    *&v404 = &v245;
    sub_195E3E8(&v404);
    for (i8 = 0; i8 != -6; i8 -= 3)
    {
      if (v607[i8 * 8] < 0)
      {
        operator delete(v606[i8]);
      }
    }

    if (v408 < 0)
    {
      operator delete(v407[0]);
    }

    *&v604 = &v248;
    sub_195E3E8(&v604);
    for (i9 = 0; i9 != -6; i9 -= 3)
    {
      if (SHIBYTE(v579[i9 + 2]) < 0)
      {
        operator delete(v579[i9]);
      }
    }

    if (v252 < 0)
    {
      operator delete(__p[0]);
    }

    *&v578 = &v584;
    sub_195E3E8(&v578);
    for (i10 = 0; i10 != -6; i10 -= 3)
    {
      if (SHIBYTE(v588[i10 + 2]) < 0)
      {
        operator delete(v588[i10]);
      }
    }

    if (SHIBYTE(v376) < 0)
    {
      operator delete(v375);
    }

    *&v586 = &v602;
    sub_195E3E8(&v586);
    for (i11 = 0; i11 != -6; i11 -= 3)
    {
      if (SHIBYTE(v595[i11 + 2]) < 0)
      {
        operator delete(v595[i11]);
      }
    }

    if (SHIBYTE(v378) < 0)
    {
      operator delete(v377);
    }

    *&v593 = &v379;
    sub_195E3E8(&v593);
    for (i12 = 0; i12 != -6; i12 -= 3)
    {
      if (SHIBYTE(v411[i12 + 2]) < 0)
      {
        operator delete(v411[i12]);
      }
    }

    if (SHIBYTE(v382) < 0)
    {
      operator delete(v381);
    }

    sub_3608D0(v427, "HK");
    sub_3608D0(&v429, "JP");
    sub_3608D0(&v433, "MO");
    sub_3608D0(&v435, "TW");
    v330 = 0;
    v331 = 0;
    v332 = 0;
    sub_68678C(&v330, v427, &v437, 4uLL);
    for (i13 = 0; i13 != -96; i13 -= 24)
    {
      if (*(&v436 + i13 + 7) < 0)
      {
        operator delete(*(&v435 + i13));
      }
    }

    sub_3608D0(&v593, "geotagger_en_us_model");
    sub_3608D0(v427, "US");
    sub_3608D0(&v429, "CA");
    sub_3608D0(&v433, "GB");
    sub_3608D0(&v435, "AU");
    sub_3608D0(&v437, "NZ");
    sub_3608D0(&v439, "IE");
    sub_3608D0(&v441, "ZA");
    v586 = 0uLL;
    v587 = 0;
    sub_68678C(&v586, v427, &v444, 7uLL);
    sub_1A5C99C(v409, &v593, &v586);
    v333 = 0;
    v334 = 0;
    v335 = 0;
    sub_1A5CA34(&v333, v409, &v412, 1uLL);
    *&v578 = v411;
    sub_195E3E8(&v578);
    if (v410 < 0)
    {
      operator delete(v409[0]);
    }

    *&v578 = &v586;
    sub_195E3E8(&v578);
    for (i14 = 0; i14 != -168; i14 -= 24)
    {
      if (*(&v443 + i14 + 7) < 0)
      {
        operator delete(*(&v441 + i14));
      }
    }

    if (SHIBYTE(v594) < 0)
    {
      operator delete(v593);
    }

    v336 = 16842753;
    v337 = xmmword_23684E0;
    LOBYTE(v338) = 1;
    v339 = 0x6400000001;
    LODWORD(v340) = 10;
    sub_3608D0(v427, "AD");
    sub_3608D0(&v429, "AR");
    sub_3608D0(&v433, "AT");
    sub_3608D0(&v435, "BE");
    sub_3608D0(&v437, "BO");
    sub_3608D0(&v439, "BR");
    sub_3608D0(&v441, "CH");
    sub_3608D0(&v444, "CL");
    sub_3608D0(v446, "CO");
    sub_3608D0(&v447, "CR");
    sub_3608D0(&v449, "CU");
    sub_3608D0(&v452, "DE");
    sub_3608D0(&v454, "DK");
    sub_3608D0(&v457, "DO");
    sub_3608D0(&v462, "EC");
    sub_3608D0(&v465, "ES");
    sub_3608D0(&v468, "FI");
    sub_3608D0(&v471, "GL");
    sub_3608D0(&v474, "GQ");
    sub_3608D0(&v477, "GR");
    sub_3608D0(&v480, "GT");
    sub_3608D0(&v483, "HN");
    sub_3608D0(&v485 + 1, "ID");
    sub_3608D0(&v487 + 1, "IS");
    sub_3608D0(&v491, "IT");
    sub_3608D0(&v496, "JP");
    sub_3608D0(&v498, "LI");
    sub_3608D0(&v501, "MX");
    sub_3608D0(v503, "NI");
    sub_3608D0(&v504, "NL");
    sub_3608D0(&v507, "NO");
    sub_3608D0(&v510, "PA");
    sub_3608D0(&v513, "PE");
    sub_3608D0(&v516, "PT");
    sub_3608D0(&v520, "PY");
    sub_3608D0(&v523, "RO");
    sub_3608D0(&v526, "SE");
    sub_3608D0(&v530, "SM");
    sub_3608D0(&v533, "SR");
    sub_3608D0(&v536, "SV");
    sub_3608D0(&v538, "TR");
    sub_3608D0(&v540, "UY");
    sub_3608D0(&v542, "VA");
    sub_3608D0(&v545, "VE");
    v341 = 0;
    v342 = 0;
    v343 = 0;
    sub_68678C(&v341, v427, &v548, 0x2CuLL);
    v51 = 132;
    do
    {
      if (SHIBYTE(v427[v51 - 1]) < 0)
      {
        operator delete(*&v426[v51 * 8 + 24]);
      }

      v51 -= 3;
    }

    while (v51 * 8);
    LODWORD(v344) = 35;
    BYTE4(v344) = 1;
    v345 = 1;
    LOBYTE(v346) = 1;
    sub_1A5CBBC(v427, "zh", "位置");
    sub_1A5CC10(&v433, "en", "Location");
    v347 = 0;
    v348 = 0;
    v349 = 0;
    sub_1A5CC64(&v347, v427, &v437, 2uLL);
    for (i15 = 0; i15 != -12; i15 -= 6)
    {
      v53 = &v427[i15];
      if (*(&v436 + i15 * 8 + 7) < 0)
      {
        operator delete(v53[9]);
      }

      if (*(v53 + 71) < 0)
      {
        operator delete(v53[6]);
      }
    }

    sub_3608D0(v427, "SK");
    sub_3608D0(&v429, "CZ");
    sub_3608D0(&v433, "SA");
    v350 = 0;
    v351 = 0;
    v352 = 0;
    sub_68678C(&v350, v427, &v435, 3uLL);
    for (i16 = 0; i16 != -72; i16 -= 24)
    {
      if (*(&v434 + i16 + 7) < 0)
      {
        operator delete(*(&v433 + i16));
      }
    }

    sub_3608D0(v427, "a");
    sub_3608D0(&v429, "asda");
    sub_3608D0(&v433, "das");
    sub_3608D0(&v435, "de");
    sub_3608D0(&v437, "del");
    sub_3608D0(&v439, "des");
    sub_3608D0(&v441, "do");
    sub_3608D0(&v444, "dos");
    sub_3608D0(v446, "dueli");
    sub_3608D0(&v447, "ill");
    sub_3608D0(&v449, "la");
    sub_3608D0(&v452, "le");
    sub_3608D0(&v454, "o");
    sub_3608D0(&v457, "of");
    sub_3608D0(&v462, "os");
    sub_3608D0(&v465, "the");
    sub_1A5C918(v353, v427, 16);
    v55 = 48;
    do
    {
      if (SHIBYTE(v427[v55 - 1]) < 0)
      {
        operator delete(*&v426[v55 * 8 + 24]);
      }

      v55 -= 3;
    }

    while (v55 * 8);
    sub_3608D0(v427, "block");
    sub_3608D0(&v429, "blk");
    sub_1A5C918(v358, v427, 2);
    for (i17 = 0; i17 != -48; i17 -= 24)
    {
      if (*(&v432 + i17 + 3) < 0)
      {
        operator delete(*(&v429 + i17));
      }
    }

    LOBYTE(v361) = 0;
    *v427 = xmmword_23684F0;
    v362 = 0;
    v364 = 0;
    v363 = 0;
    sub_1A5CCEC(&v362, v427, &v428, 2uLL);
    sub_3608D0(v427, "JP");
    sub_3608D0(&v429, "TW");
    sub_3608D0(&v433, "HK");
    sub_3608D0(&v435, "MO");
    v365 = 0;
    v366 = 0;
    v367 = 0;
    sub_68678C(&v365, v427, &v437, 4uLL);
    for (i18 = 0; i18 != -96; i18 -= 24)
    {
      if (*(&v436 + i18 + 7) < 0)
      {
        operator delete(*(&v435 + i18));
      }
    }

    sub_3608D0(v427, "JP");
    sub_3608D0(&v429, "VN");
    memset(v368, 0, 24);
    sub_68678C(v368, v427, &v433, 2uLL);
    for (i19 = 0; i19 != -48; i19 -= 24)
    {
      if (*(&v432 + i19 + 3) < 0)
      {
        operator delete(*(&v429 + i19));
      }
    }

    v368[24] = 1;
    v369 = 0x4024000000000000;
    v370 = xmmword_2368500;
    v371 = 1000000;
    sub_3608D0(v427, "JP");
    sub_23898(v372, v427, 1);
    if (SHIBYTE(v428) < 0)
    {
      operator delete(v427[0]);
    }

    v372[5] = 0x64000003E8;
    v372[6] = 0x3FE0000000000000;
    v373 = 1;
    sub_3608D0(v427, "NG");
    sub_1A5C918(v374, v427, 1);
    if (SHIBYTE(v428) < 0)
    {
      operator delete(v427[0]);
    }

    v374[24] = 1;
    sub_1F262C8(v229 + 32, &v253);
    v59 = &v253;
    goto LABEL_834;
  }

  sub_1A57240(v427);
  sub_164A528(&v253, 0, 0);
  sub_225EE2C(&v253, **v12, *(*v12 + 2));
  if (v254)
  {
    HIDWORD(v427[1]) = v311;
    if ((v254 & 2) == 0)
    {
LABEL_257:
      if ((v254 & 4) == 0)
      {
        goto LABEL_258;
      }

      goto LABEL_302;
    }
  }

  else if ((v254 & 2) == 0)
  {
    goto LABEL_257;
  }

  LODWORD(v428) = HIDWORD(v311);
  if ((v254 & 4) == 0)
  {
LABEL_258:
    if ((v254 & 8) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_303;
  }

LABEL_302:
  HIDWORD(v428) = v312;
  if ((v254 & 8) == 0)
  {
LABEL_259:
    if ((v254 & 0x10) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_304;
  }

LABEL_303:
  LODWORD(v429) = HIDWORD(v312);
  if ((v254 & 0x10) == 0)
  {
LABEL_260:
    if ((v254 & 0x20) == 0)
    {
      goto LABEL_261;
    }

    goto LABEL_305;
  }

LABEL_304:
  HIDWORD(v429) = v313[0];
  if ((v254 & 0x20) == 0)
  {
LABEL_261:
    if ((v254 & 0x80) == 0)
    {
      goto LABEL_262;
    }

    goto LABEL_306;
  }

LABEL_305:
  LODWORD(v430) = v313[1];
  if ((v254 & 0x80) == 0)
  {
LABEL_262:
    if ((v254 & 0x100) == 0)
    {
      goto LABEL_263;
    }

    goto LABEL_307;
  }

LABEL_306:
  v431 = v313[3];
  if ((v254 & 0x100) == 0)
  {
LABEL_263:
    if ((v254 & 0x40) == 0)
    {
      goto LABEL_264;
    }

    goto LABEL_308;
  }

LABEL_307:
  v432 = v313[4];
  if ((v254 & 0x40) == 0)
  {
LABEL_264:
    if ((v254 & 0x200) == 0)
    {
      goto LABEL_265;
    }

    goto LABEL_309;
  }

LABEL_308:
  HIDWORD(v430) = v313[2];
  if ((v254 & 0x200) == 0)
  {
LABEL_265:
    if ((v254 & 0x400) == 0)
    {
      goto LABEL_266;
    }

    goto LABEL_310;
  }

LABEL_309:
  LOBYTE(v433) = v314;
  if ((v254 & 0x400) == 0)
  {
LABEL_266:
    if ((v254 & 0x800) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_311;
  }

LABEL_310:
  BYTE1(v433) = v315;
  if ((v254 & 0x800) == 0)
  {
LABEL_267:
    if ((v254 & 0x1000) == 0)
    {
      goto LABEL_268;
    }

    goto LABEL_312;
  }

LABEL_311:
  BYTE2(v433) = v316;
  if ((v254 & 0x1000) == 0)
  {
LABEL_268:
    if ((v254 & 0x20000) == 0)
    {
      goto LABEL_269;
    }

    goto LABEL_313;
  }

LABEL_312:
  BYTE3(v433) = v317;
  if ((v254 & 0x20000) == 0)
  {
LABEL_269:
    if ((v254 & 0x40000) == 0)
    {
      goto LABEL_270;
    }

    goto LABEL_314;
  }

LABEL_313:
  BYTE4(v433) = v322;
  if ((v254 & 0x40000) == 0)
  {
LABEL_270:
    if ((v254 & 0x2000) == 0)
    {
      goto LABEL_271;
    }

    goto LABEL_315;
  }

LABEL_314:
  BYTE7(v433) = BYTE1(v322);
  if ((v254 & 0x2000) == 0)
  {
LABEL_271:
    if ((v254 & 0x4000) == 0)
    {
      goto LABEL_272;
    }

    goto LABEL_316;
  }

LABEL_315:
  DWORD2(v433) = v318;
  if ((v254 & 0x4000) == 0)
  {
LABEL_272:
    if ((v254 & 0x8000) == 0)
    {
      goto LABEL_273;
    }

    goto LABEL_317;
  }

LABEL_316:
  HIDWORD(v433) = v319;
  if ((v254 & 0x8000) == 0)
  {
LABEL_273:
    if ((v254 & 0x10000) == 0)
    {
      goto LABEL_274;
    }

    goto LABEL_318;
  }

LABEL_317:
  LODWORD(v434) = v320;
  if ((v254 & 0x10000) == 0)
  {
LABEL_274:
    if ((v254 & 0x200000) == 0)
    {
      goto LABEL_275;
    }

    goto LABEL_319;
  }

LABEL_318:
  HIDWORD(v434) = v321;
  if ((v254 & 0x200000) == 0)
  {
LABEL_275:
    if ((v254 & 0x400000) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_320;
  }

LABEL_319:
  LODWORD(v435) = v323;
  if ((v254 & 0x400000) == 0)
  {
LABEL_276:
    if ((v254 & 0x800000) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_321;
  }

LABEL_320:
  DWORD1(v435) = v324;
  if ((v254 & 0x800000) == 0)
  {
LABEL_277:
    if ((v254 & 0x80000) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_322;
  }

LABEL_321:
  DWORD2(v435) = HIDWORD(v324);
  if ((v254 & 0x80000) == 0)
  {
LABEL_278:
    if ((v254 & 0x1000000) == 0)
    {
      goto LABEL_279;
    }

    goto LABEL_323;
  }

LABEL_322:
  BYTE12(v435) = BYTE2(v322);
  if ((v254 & 0x1000000) == 0)
  {
LABEL_279:
    if ((v254 & 0x2000000) == 0)
    {
      goto LABEL_280;
    }

    goto LABEL_324;
  }

LABEL_323:
  v436 = v325;
  if ((v254 & 0x2000000) == 0)
  {
LABEL_280:
    if ((v254 & 0x4000000) == 0)
    {
      goto LABEL_281;
    }

    goto LABEL_325;
  }

LABEL_324:
  LODWORD(v437) = v326;
  if ((v254 & 0x4000000) == 0)
  {
LABEL_281:
    if ((v254 & 0x100000) == 0)
    {
      goto LABEL_283;
    }

    goto LABEL_282;
  }

LABEL_325:
  DWORD1(v437) = HIDWORD(v326);
  if ((v254 & 0x100000) != 0)
  {
LABEL_282:
    BYTE2(v444) = HIBYTE(v322);
  }

LABEL_283:
  if ((WORD4(v254) & 0x8000) != 0)
  {
    v488 = v353[3];
  }

  if ((BYTE4(v254) & 0x40) != 0)
  {
    BYTE4(v498) = HIBYTE(v331);
    if ((WORD4(v254) & 0x1000) == 0)
    {
LABEL_287:
      if ((WORD4(v254) & 0x2000) == 0)
      {
        goto LABEL_288;
      }

      goto LABEL_329;
    }
  }

  else if ((WORD4(v254) & 0x1000) == 0)
  {
    goto LABEL_287;
  }

  LOBYTE(v444) = v353[0];
  if ((WORD4(v254) & 0x2000) == 0)
  {
LABEL_288:
    if ((WORD4(v254) & 0x4000) == 0)
    {
      goto LABEL_290;
    }

    goto LABEL_289;
  }

LABEL_329:
  BYTE1(v444) = v353[1];
  if ((WORD4(v254) & 0x4000) != 0)
  {
LABEL_289:
    BYTE3(v444) = v353[2];
  }

LABEL_290:
  v60 = v256;
  if (!v256)
  {
    goto LABEL_342;
  }

  v61 = v445;
  v62 = *(&v444 + 1);
  if (v445 == *(&v444 + 1))
  {
    if (v260)
    {
      v64 = (v260 + 8);
    }

    else
    {
      v64 = 0;
    }

LABEL_334:
    v65 = &v64[v60];
    do
    {
      v66 = *v64;
      if (v62 >= v446[0])
      {
        v62 = sub_1CEE8(&v444 + 8, v66);
      }

      else
      {
        if (*(v66 + 23) < 0)
        {
          sub_325C(v62, *v66, *(v66 + 8));
        }

        else
        {
          v67 = *v66;
          *(v62 + 16) = *(v66 + 16);
          *v62 = v67;
        }

        v62 += 24;
      }

      v445 = v62;
      ++v64;
    }

    while (v64 != v65);
    goto LABEL_342;
  }

  do
  {
    v63 = *(v61 - 1);
    v61 -= 3;
    if (v63 < 0)
    {
      operator delete(*v61);
    }
  }

  while (v61 != v62);
  v60 = v256;
  v445 = v62;
  if (v260)
  {
    v64 = (v260 + 8);
  }

  else
  {
    v64 = 0;
  }

  if (v256)
  {
    goto LABEL_334;
  }

LABEL_342:
  if ((v254 & 0x8000000) != 0)
  {
    LODWORD(v450) = v327;
  }

  if ((v254 & 0x40000000) != 0)
  {
    LODWORD(v458) = HIDWORD(v328);
  }

  if (BYTE10(v254))
  {
    LODWORD(v462) = v354;
  }

  if ((BYTE4(v254) & 8) == 0)
  {
    if ((v254 & 0x10000000) == 0)
    {
      goto LABEL_350;
    }

LABEL_404:
    LODWORD(v451) = HIDWORD(v327);
    if ((v254 & 0x20000000) == 0)
    {
      goto LABEL_352;
    }

    goto LABEL_351;
  }

  BYTE4(v450) = BYTE4(v331);
  if ((v254 & 0x10000000) != 0)
  {
    goto LABEL_404;
  }

LABEL_350:
  if ((v254 & 0x20000000) != 0)
  {
LABEL_351:
    HIDWORD(v451) = v328;
  }

LABEL_352:
  if (v267 >= 1)
  {
    v68 = v455;
    v69 = v454;
    if (v455 == v454)
    {
      goto LABEL_356;
    }

    do
    {
      v68 = sub_1646EB8(v68 - 80);
    }

    while (v68 != v69);
    v455 = v69;
    if (v267 >= 1)
    {
LABEL_356:
      v70 = 0;
      do
      {
        v71 = *(*(&v267 + 1) + 8 * v70 + 8);
        if (v69 >= v456)
        {
          v69 = sub_1F27168(&v454, v71);
        }

        else
        {
          sub_1646E00(v69, v71);
          v69 += 80;
        }

        v455 = v69;
        ++v70;
      }

      while (v70 < v267);
    }
  }

  if (v265 >= 1)
  {
    v72 = *(&v452 + 1);
    v73 = v452;
    if (*(&v452 + 1) == v452)
    {
      goto LABEL_365;
    }

    do
    {
      v72 = sub_1646520(v72 - 56);
    }

    while (v72 != v73);
    *(&v452 + 1) = v73;
    if (v265 >= 1)
    {
LABEL_365:
      v74 = 0;
      do
      {
        v75 = *(v266 + 8 * v74 + 8);
        if (v73 >= v453)
        {
          v73 = sub_1F273F8(&v452, v75);
        }

        else
        {
          sub_1646474(v73, v75);
          v73 += 56;
        }

        *(&v452 + 1) = v73;
        ++v74;
      }

      while (v74 < v265);
    }
  }

  if ((v254 & 0x80000000) != 0)
  {
    v457 = v329;
  }

  if ((DWORD2(v254) & 0x80000) != 0)
  {
    v496 = v357;
    if ((DWORD2(v254) & 0x100000) == 0)
    {
LABEL_374:
      if ((DWORD2(v254) & 0x200000) == 0)
      {
        goto LABEL_375;
      }

      goto LABEL_408;
    }
  }

  else if ((DWORD2(v254) & 0x100000) == 0)
  {
    goto LABEL_374;
  }

  v497[0] = v358[0];
  if ((DWORD2(v254) & 0x200000) == 0)
  {
LABEL_375:
    if ((DWORD2(v254) & 0x1000000) == 0)
    {
      goto LABEL_376;
    }

    goto LABEL_409;
  }

LABEL_408:
  v497[1] = v358[1];
  if ((DWORD2(v254) & 0x1000000) == 0)
  {
LABEL_376:
    if ((DWORD2(v254) & 0x2000000) == 0)
    {
      goto LABEL_378;
    }

    goto LABEL_377;
  }

LABEL_409:
  *(&v548 + 1) = v361;
  if ((DWORD2(v254) & 0x2000000) != 0)
  {
LABEL_377:
    v549 = v362;
  }

LABEL_378:
  if (BYTE4(v254))
  {
    HIDWORD(v458) = v330;
    if ((BYTE4(v254) & 2) == 0)
    {
LABEL_380:
      if ((BYTE4(v254) & 0x20) == 0)
      {
        goto LABEL_381;
      }

      goto LABEL_413;
    }
  }

  else if ((BYTE4(v254) & 2) == 0)
  {
    goto LABEL_380;
  }

  v459 = HIDWORD(v330);
  if ((BYTE4(v254) & 0x20) == 0)
  {
LABEL_381:
    if ((BYTE4(v254) & 0x10) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_414;
  }

LABEL_413:
  v461 = BYTE6(v331);
  if ((BYTE4(v254) & 0x10) == 0)
  {
LABEL_382:
    if ((BYTE4(v254) & 4) == 0)
    {
      goto LABEL_383;
    }

    goto LABEL_415;
  }

LABEL_414:
  v460 = BYTE5(v331);
  if ((BYTE4(v254) & 4) == 0)
  {
LABEL_383:
    if ((BYTE4(v254) & 0x80) == 0)
    {
      goto LABEL_384;
    }

    goto LABEL_416;
  }

LABEL_415:
  HIDWORD(v462) = v331;
  if ((BYTE4(v254) & 0x80) == 0)
  {
LABEL_384:
    if ((WORD2(v254) & 0x100) == 0)
    {
      goto LABEL_385;
    }

    goto LABEL_417;
  }

LABEL_416:
  LODWORD(v463) = v332;
  if ((WORD2(v254) & 0x100) == 0)
  {
LABEL_385:
    if ((WORD2(v254) & 0x200) == 0)
    {
      goto LABEL_386;
    }

    goto LABEL_418;
  }

LABEL_417:
  HIDWORD(v463) = HIDWORD(v332);
  if ((WORD2(v254) & 0x200) == 0)
  {
LABEL_386:
    if ((WORD2(v254) & 0x400) == 0)
    {
      goto LABEL_387;
    }

    goto LABEL_419;
  }

LABEL_418:
  LODWORD(v464) = v333;
  if ((WORD2(v254) & 0x400) == 0)
  {
LABEL_387:
    if ((WORD2(v254) & 0x800) == 0)
    {
      goto LABEL_388;
    }

    goto LABEL_420;
  }

LABEL_419:
  HIDWORD(v464) = HIDWORD(v333);
  if ((WORD2(v254) & 0x800) == 0)
  {
LABEL_388:
    if ((WORD2(v254) & 0x1000) == 0)
    {
      goto LABEL_389;
    }

    goto LABEL_421;
  }

LABEL_420:
  LODWORD(v465) = v334;
  if ((WORD2(v254) & 0x1000) == 0)
  {
LABEL_389:
    if ((WORD2(v254) & 0x4000) == 0)
    {
      goto LABEL_391;
    }

    goto LABEL_390;
  }

LABEL_421:
  HIDWORD(v465) = HIDWORD(v334);
  if ((WORD2(v254) & 0x4000) != 0)
  {
LABEL_390:
    v489 = HIDWORD(v335);
  }

LABEL_391:
  if ((BYTE12(v254) & 8) != 0)
  {
    LODWORD(v504) = HIDWORD(v366);
    if ((WORD2(v254) & 0x8000) == 0)
    {
LABEL_393:
      if ((DWORD1(v254) & 0x10000) == 0)
      {
        goto LABEL_394;
      }

      goto LABEL_425;
    }
  }

  else if ((WORD2(v254) & 0x8000) == 0)
  {
    goto LABEL_393;
  }

  LODWORD(v490) = v336;
  if ((DWORD1(v254) & 0x10000) == 0)
  {
LABEL_394:
    if ((DWORD1(v254) & 0x20000) == 0)
    {
      goto LABEL_395;
    }

    goto LABEL_426;
  }

LABEL_425:
  HIDWORD(v490) = v337;
  if ((DWORD1(v254) & 0x20000) == 0)
  {
LABEL_395:
    if ((DWORD1(v254) & 0x40000) == 0)
    {
      goto LABEL_396;
    }

    goto LABEL_427;
  }

LABEL_426:
  LODWORD(v491) = DWORD1(v337);
  if ((DWORD1(v254) & 0x40000) == 0)
  {
LABEL_396:
    if ((DWORD1(v254) & 0x80000) == 0)
    {
      goto LABEL_397;
    }

    goto LABEL_428;
  }

LABEL_427:
  HIDWORD(v491) = DWORD2(v337);
  if ((DWORD1(v254) & 0x80000) == 0)
  {
LABEL_397:
    if ((DWORD2(v254) & 0x400000) == 0)
    {
      goto LABEL_398;
    }

    goto LABEL_429;
  }

LABEL_428:
  v492 = HIDWORD(v337);
  if ((DWORD2(v254) & 0x400000) == 0)
  {
LABEL_398:
    if ((DWORD1(v254) & 0x100000) == 0)
    {
      goto LABEL_399;
    }

    goto LABEL_430;
  }

LABEL_429:
  LODWORD(v498) = v359;
  if ((DWORD1(v254) & 0x100000) == 0)
  {
LABEL_399:
    if ((DWORD2(v254) & 0x20000) == 0)
    {
      goto LABEL_400;
    }

    goto LABEL_431;
  }

LABEL_430:
  v493 = v338;
  if ((DWORD2(v254) & 0x20000) == 0)
  {
LABEL_400:
    if ((DWORD2(v254) & 0x40000) == 0)
    {
      goto LABEL_401;
    }

    goto LABEL_432;
  }

LABEL_431:
  v494 = v355;
  if ((DWORD2(v254) & 0x40000) == 0)
  {
LABEL_401:
    if ((DWORD1(v254) & 0x800000) == 0)
    {
      goto LABEL_435;
    }

    goto LABEL_433;
  }

LABEL_432:
  v495 = v356;
  if ((DWORD1(v254) & 0x800000) == 0)
  {
    goto LABEL_435;
  }

LABEL_433:
  if ((v339 & 0x10000000000) == 0)
  {
    v518 = 0;
  }

LABEL_435:
  if ((DWORD1(v254) & 0x200000) != 0)
  {
    LODWORD(v520) = v339;
    if ((BYTE8(v254) & 8) == 0)
    {
LABEL_437:
      if ((BYTE8(v254) & 0x10) == 0)
      {
        goto LABEL_438;
      }

      goto LABEL_465;
    }
  }

  else if ((BYTE8(v254) & 8) == 0)
  {
    goto LABEL_437;
  }

  HIDWORD(v517) = v346;
  if ((BYTE8(v254) & 0x10) == 0)
  {
LABEL_438:
    if ((BYTE8(v254) & 0x20) == 0)
    {
      goto LABEL_439;
    }

    goto LABEL_466;
  }

LABEL_465:
  v518 = v347;
  if ((BYTE8(v254) & 0x20) == 0)
  {
LABEL_439:
    if ((BYTE8(v254) & 0x80) == 0)
    {
      goto LABEL_440;
    }

    goto LABEL_467;
  }

LABEL_466:
  v519 = HIDWORD(v347);
  if ((BYTE8(v254) & 0x80) == 0)
  {
LABEL_440:
    if ((BYTE8(v254) & 0x40) == 0)
    {
      goto LABEL_441;
    }

    goto LABEL_468;
  }

LABEL_467:
  v527 = HIDWORD(v348);
  if ((BYTE8(v254) & 0x40) == 0)
  {
LABEL_441:
    if ((DWORD2(v254) & 0x800000) == 0)
    {
      goto LABEL_442;
    }

    goto LABEL_469;
  }

LABEL_468:
  LODWORD(v526) = v348;
  if ((DWORD2(v254) & 0x800000) == 0)
  {
LABEL_442:
    if ((DWORD1(v254) & 0x1000000) == 0)
    {
      goto LABEL_443;
    }

    goto LABEL_470;
  }

LABEL_469:
  LODWORD(v551) = v360;
  if ((DWORD1(v254) & 0x1000000) == 0)
  {
LABEL_443:
    if ((BYTE8(v254) & 4) == 0)
    {
      goto LABEL_444;
    }

    goto LABEL_471;
  }

LABEL_470:
  BYTE4(v520) = BYTE6(v339);
  if ((BYTE8(v254) & 4) == 0)
  {
LABEL_444:
    if ((DWORD1(v254) & 0x4000000) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_472;
  }

LABEL_471:
  BYTE4(v526) = HIBYTE(v345);
  if ((DWORD1(v254) & 0x4000000) == 0)
  {
LABEL_445:
    if ((DWORD1(v254) & 0x8000000) == 0)
    {
      goto LABEL_446;
    }

    goto LABEL_473;
  }

LABEL_472:
  *(&v437 + 1) = v340;
  if ((DWORD1(v254) & 0x8000000) == 0)
  {
LABEL_446:
    if ((DWORD1(v254) & 0x10000000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_474;
  }

LABEL_473:
  v438 = v341;
  if ((DWORD1(v254) & 0x10000000) == 0)
  {
LABEL_447:
    if ((DWORD1(v254) & 0x20000000) == 0)
    {
      goto LABEL_448;
    }

    goto LABEL_475;
  }

LABEL_474:
  *&v439 = v342;
  if ((DWORD1(v254) & 0x20000000) == 0)
  {
LABEL_448:
    if ((DWORD1(v254) & 0x40000000) == 0)
    {
      goto LABEL_449;
    }

    goto LABEL_476;
  }

LABEL_475:
  *(&v439 + 1) = v343;
  if ((DWORD1(v254) & 0x40000000) == 0)
  {
LABEL_449:
    if ((WORD4(v254) & 0x200) == 0)
    {
      goto LABEL_450;
    }

    goto LABEL_477;
  }

LABEL_476:
  v440 = v344;
  if ((WORD4(v254) & 0x200) == 0)
  {
LABEL_450:
    if ((WORD4(v254) & 0x400) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_478;
  }

LABEL_477:
  v441 = v350;
  if ((WORD4(v254) & 0x400) == 0)
  {
LABEL_451:
    if ((WORD4(v254) & 0x800) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_479;
  }

LABEL_478:
  v442 = v351;
  if ((WORD4(v254) & 0x800) == 0)
  {
LABEL_452:
    if ((DWORD1(v254) & 0x400000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_480;
  }

LABEL_479:
  v443 = v352;
  if ((DWORD1(v254) & 0x400000) == 0)
  {
LABEL_453:
    if ((BYTE12(v254) & 0x20) == 0)
    {
      goto LABEL_454;
    }

LABEL_481:
    LODWORD(v521) = HIDWORD(v367) == 2;
    if ((DWORD1(v254) & 0x80000000) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_482;
  }

LABEL_480:
  BYTE3(v517) = BYTE4(v339);
  if ((BYTE12(v254) & 0x20) != 0)
  {
    goto LABEL_481;
  }

LABEL_454:
  if ((DWORD1(v254) & 0x80000000) == 0)
  {
    goto LABEL_455;
  }

LABEL_482:
  v528 = v345;
LABEL_455:
  v76 = v272;
  if (v272 < 1)
  {
    goto LABEL_495;
  }

  v77 = v530;
  v78 = v529;
  if (v530 == v529)
  {
    if (v273[0])
    {
      v79 = v273[0] + 8;
    }

    else
    {
      v79 = 0;
    }
  }

  else
  {
    do
    {
      v77 -= 48;
      sub_1963134(v77);
    }

    while (v77 != v78);
    v76 = v272;
    v530 = v78;
    if (v273[0])
    {
      v79 = v273[0] + 8;
    }

    else
    {
      v79 = 0;
    }

    if (!v272)
    {
      goto LABEL_495;
    }
  }

  v80 = v79 + 8 * v76;
  do
  {
    sub_1AC49F4(&v604, (*(*v79 + 24) & 0xFFFFFFFFFFFFFFFELL), (*(*v79 + 32) & 0xFFFFFFFFFFFFFFFELL));
    v81 = v530;
    if (v530 >= v531)
    {
      v82 = sub_1F276A0(&v529, &v604);
    }

    else
    {
      sub_1965570(v530, &v604);
      v82 = (v81 + 48);
    }

    v530 = v82;
    if ((v607[0] & 0x80000000) != 0)
    {
      operator delete(v606[0]);
    }

    if (SHIBYTE(v605) < 0)
    {
      operator delete(v604);
    }

    v79 += 8;
  }

  while (v79 != v80);
LABEL_495:
  v83 = v270;
  if (v270 < 1)
  {
    goto LABEL_516;
  }

  v84 = v500;
  v85 = v499;
  if (v500 == v499)
  {
    if (v271[0])
    {
      v86 = (v271[0] + 8);
    }

    else
    {
      v86 = 0;
    }
  }

  else
  {
    do
    {
      v84 -= 48;
      sub_1964E04(v84);
    }

    while (v84 != v85);
    v83 = v270;
    v500 = v85;
    if (v271[0])
    {
      v86 = (v271[0] + 8);
    }

    else
    {
      v86 = 0;
    }

    if (!v270)
    {
      goto LABEL_516;
    }
  }

  v87 = &v86[v83];
  do
  {
    v88 = *v86;
    v593 = 0uLL;
    v594 = 0;
    v89 = *(v88 + 40);
    if (v89)
    {
      v90 = (v89 + 8);
    }

    else
    {
      v90 = 0;
    }

    sub_1F277C0(&v593, 0, v90, &v90[*(v88 + 32)], *(v88 + 32));
    sub_1F27B60(v409, (*(v88 + 48) & 0xFFFFFFFFFFFFFFFELL), &v593);
    v91 = v500;
    if (v500 >= v501)
    {
      v92 = sub_1F27BF8(&v499, v409);
    }

    else
    {
      sub_1964D70(v500, v409);
      v92 = (v91 + 48);
    }

    v500 = v92;
    *&v586 = v411;
    sub_195E3E8(&v586);
    if (v410 < 0)
    {
      operator delete(v409[0]);
    }

    v409[0] = &v593;
    sub_195E3E8(v409);
    ++v86;
  }

  while (v86 != v87);
LABEL_516:
  if (v279 >= 1)
  {
    sub_7E724(&v478, v479);
    v480 = 0;
    v478 = &v479;
    v479 = 0;
    v93 = *(&v279 + 1) ? (*(&v279 + 1) + 8) : 0;
    if (v279)
    {
      v94 = 8 * v279;
      do
      {
        sub_7E36C(&v478, *v93, *v93);
        ++v93;
        v94 -= 8;
      }

      while (v94);
    }
  }

  if (v276 >= 1)
  {
    sub_7E724(&v481, v482);
    v483 = 0;
    v481 = &v482;
    v482 = 0;
    v95 = v277 ? (v277 + 8) : 0;
    if (v276)
    {
      v96 = 8 * v276;
      do
      {
        sub_7E36C(&v481, *v95, *v95);
        ++v95;
        v96 -= 8;
      }

      while (v96);
    }
  }

  if (v290 >= 1)
  {
    sub_7E724(&v484, v485);
    v484 = &v485;
    v485 = 0u;
    v97 = v291[0] ? (v291[0] + 8) : 0;
    if (v290)
    {
      v98 = 8 * v290;
      do
      {
        sub_7E36C(&v484, *v97, *v97);
        ++v97;
        v98 -= 8;
      }

      while (v98);
    }
  }

  if (v292 >= 1)
  {
    sub_7E724(&v486, v487);
    v486 = &v487;
    v487 = 0u;
    v99 = v293[0] ? (v293[0] + 8) : 0;
    if (v292)
    {
      v100 = 8 * v292;
      do
      {
        sub_7E36C(&v486, *v99, *v99);
        ++v99;
        v100 -= 8;
      }

      while (v100);
    }
  }

  v101 = DWORD2(v280);
  if (SDWORD2(v280) >= 1)
  {
    v102 = v524;
    v103 = v523;
    if (v524 == v523)
    {
      if (v281)
      {
        v105 = (v281 + 8);
      }

      else
      {
        v105 = 0;
      }
    }

    else
    {
      do
      {
        v104 = *(v102 - 1);
        v102 -= 3;
        if (v104 < 0)
        {
          operator delete(*v102);
        }
      }

      while (v102 != v103);
      v101 = SDWORD2(v280);
      v524 = v103;
      if (v281)
      {
        v105 = (v281 + 8);
      }

      else
      {
        v105 = 0;
      }

      if (!DWORD2(v280))
      {
        goto LABEL_565;
      }
    }

    v106 = &v105[v101];
    do
    {
      v107 = *v105;
      if (v103 >= v525)
      {
        v103 = sub_1CEE8(&v523, v107);
      }

      else
      {
        if (*(v107 + 23) < 0)
        {
          sub_325C(v103, *v107, *(v107 + 8));
        }

        else
        {
          v108 = *v107;
          *(v103 + 16) = *(v107 + 16);
          *v103 = v108;
        }

        v103 += 24;
      }

      v524 = v103;
      ++v105;
    }

    while (v105 != v106);
  }

LABEL_565:
  v109 = v300;
  if (v300 < 1)
  {
    goto LABEL_586;
  }

  v110 = v543;
  v111 = v542;
  if (v543 == v542)
  {
    if (v301)
    {
      v113 = (v301 + 8);
    }

    else
    {
      v113 = 0;
    }

LABEL_578:
    v114 = &v113[v109];
    do
    {
      v115 = *v113;
      if (v111 >= v544)
      {
        v111 = sub_1CEE8(&v542, v115);
      }

      else
      {
        if (*(v115 + 23) < 0)
        {
          sub_325C(v111, *v115, *(v115 + 8));
        }

        else
        {
          v116 = *v115;
          *(v111 + 16) = *(v115 + 16);
          *v111 = v116;
        }

        v111 += 24;
      }

      v543 = v111;
      ++v113;
    }

    while (v113 != v114);
    goto LABEL_586;
  }

  do
  {
    v112 = *(v110 - 1);
    v110 -= 3;
    if (v112 < 0)
    {
      operator delete(*v110);
    }
  }

  while (v110 != v111);
  v109 = v300;
  v543 = v111;
  if (v301)
  {
    v113 = (v301 + 8);
  }

  else
  {
    v113 = 0;
  }

  if (v300)
  {
    goto LABEL_578;
  }

LABEL_586:
  v117 = v302;
  if (v302 < 1)
  {
    goto LABEL_607;
  }

  v118 = v546;
  v119 = v545;
  if (v546 == v545)
  {
    if (*v303)
    {
      v121 = (*v303 + 8);
    }

    else
    {
      v121 = 0;
    }

LABEL_599:
    v122 = &v121[v117];
    do
    {
      v123 = *v121;
      if (v119 >= v547)
      {
        v119 = sub_1CEE8(&v545, v123);
      }

      else
      {
        if (*(v123 + 23) < 0)
        {
          sub_325C(v119, *v123, *(v123 + 8));
        }

        else
        {
          v124 = *v123;
          *(v119 + 16) = *(v123 + 16);
          *v119 = v124;
        }

        v119 += 24;
      }

      v546 = v119;
      ++v121;
    }

    while (v121 != v122);
    goto LABEL_607;
  }

  do
  {
    v120 = *(v118 - 1);
    v118 -= 3;
    if (v120 < 0)
    {
      operator delete(*v118);
    }
  }

  while (v118 != v119);
  v117 = v302;
  v546 = v119;
  if (*v303)
  {
    v121 = (*v303 + 8);
  }

  else
  {
    v121 = 0;
  }

  if (v302)
  {
    goto LABEL_599;
  }

LABEL_607:
  v125 = v296;
  if (v296 < 1)
  {
    goto LABEL_628;
  }

  v126 = v533;
  v127 = v532;
  if (v533 == v532)
  {
    if (v297)
    {
      v129 = (v297 + 8);
    }

    else
    {
      v129 = 0;
    }

LABEL_620:
    v130 = &v129[v125];
    do
    {
      v131 = *v129;
      if (v127 >= v534)
      {
        v127 = sub_1CEE8(&v532, v131);
      }

      else
      {
        if (*(v131 + 23) < 0)
        {
          sub_325C(v127, *v131, *(v131 + 8));
        }

        else
        {
          v132 = *v131;
          *(v127 + 16) = *(v131 + 16);
          *v127 = v132;
        }

        v127 += 24;
      }

      v533 = v127;
      ++v129;
    }

    while (v129 != v130);
    goto LABEL_628;
  }

  do
  {
    v128 = *(v126 - 1);
    v126 -= 3;
    if (v128 < 0)
    {
      operator delete(*v126);
    }
  }

  while (v126 != v127);
  v125 = v296;
  v533 = v127;
  if (v297)
  {
    v129 = (v297 + 8);
  }

  else
  {
    v129 = 0;
  }

  if (v296)
  {
    goto LABEL_620;
  }

LABEL_628:
  v133 = v294;
  if (v294 < 1)
  {
    goto LABEL_649;
  }

  v134 = v512;
  v135 = v511;
  if (v512 == v511)
  {
    if (v295)
    {
      v137 = (v295 + 8);
    }

    else
    {
      v137 = 0;
    }

LABEL_641:
    v138 = &v137[v133];
    do
    {
      v139 = *v137;
      if (v135 >= v513)
      {
        v135 = sub_1CEE8(&v511, v139);
      }

      else
      {
        if (*(v139 + 23) < 0)
        {
          sub_325C(v135, *v139, *(v139 + 8));
        }

        else
        {
          v140 = *v139;
          *(v135 + 16) = *(v139 + 16);
          *v135 = v140;
        }

        v135 += 24;
      }

      v512 = v135;
      ++v137;
    }

    while (v137 != v138);
    goto LABEL_649;
  }

  do
  {
    v136 = *(v134 - 1);
    v134 -= 3;
    if (v136 < 0)
    {
      operator delete(*v134);
    }
  }

  while (v134 != v135);
  v133 = v294;
  v512 = v135;
  if (v295)
  {
    v137 = (v295 + 8);
  }

  else
  {
    v137 = 0;
  }

  if (v294)
  {
    goto LABEL_641;
  }

LABEL_649:
  if (SDWORD2(v287) >= 1)
  {
    sub_7E724(&v535, v536);
    v535 = &v536;
    v536 = 0u;
    v141 = v288[0] ? (v288[0] + 8) : 0;
    if (DWORD2(v287))
    {
      v142 = 8 * SDWORD2(v287);
      do
      {
        sub_7E36C(&v535, *v141, *v141);
        ++v141;
        v142 -= 8;
      }

      while (v142);
    }
  }

  if (v298 >= 1)
  {
    sub_7E724(&v537, v538);
    v537 = &v538;
    v538 = 0u;
    v143 = v299 ? (v299 + 8) : 0;
    if (v298)
    {
      v144 = 8 * v298;
      do
      {
        sub_7E36C(&v537, *v143, *v143);
        ++v143;
        v144 -= 8;
      }

      while (v144);
    }
  }

  v145 = v282;
  if (v282 >= 1)
  {
    v146 = v506;
    v147 = v505;
    if (v506 == v505)
    {
      if (v283)
      {
        v148 = (v283 + 8);
      }

      else
      {
        v148 = 0;
      }
    }

    else
    {
      do
      {
        v146 -= 48;
        sub_1964E04(v146);
      }

      while (v146 != v147);
      v145 = v282;
      v506 = v147;
      if (v283)
      {
        v148 = (v283 + 8);
      }

      else
      {
        v148 = 0;
      }

      if (!v282)
      {
        goto LABEL_684;
      }
    }

    v149 = &v148[v145];
    do
    {
      v150 = *v148;
      v593 = 0uLL;
      v594 = 0;
      v151 = *(v150 + 40);
      if (v151)
      {
        v152 = (v151 + 8);
      }

      else
      {
        v152 = 0;
      }

      sub_1F277C0(&v593, 0, v152, &v152[*(v150 + 32)], *(v150 + 32));
      sub_1F27B60(v409, (*(v150 + 48) & 0xFFFFFFFFFFFFFFFELL), &v593);
      v153 = v506;
      if (v506 >= v507)
      {
        v154 = sub_1F27BF8(&v505, v409);
      }

      else
      {
        sub_1964D70(v506, v409);
        v154 = (v153 + 48);
      }

      v506 = v154;
      *&v586 = v411;
      sub_195E3E8(&v586);
      if (v410 < 0)
      {
        operator delete(v409[0]);
      }

      v409[0] = &v593;
      sub_195E3E8(v409);
      ++v148;
    }

    while (v148 != v149);
  }

LABEL_684:
  v155 = v286;
  if (v286 < 1)
  {
    goto LABEL_705;
  }

  v156 = v509;
  v157 = v508;
  if (v509 == v508)
  {
    if (*(&v286 + 1))
    {
      v158 = (*(&v286 + 1) + 8);
    }

    else
    {
      v158 = 0;
    }
  }

  else
  {
    do
    {
      v156 -= 48;
      sub_1964E04(v156);
    }

    while (v156 != v157);
    v155 = v286;
    v509 = v157;
    if (*(&v286 + 1))
    {
      v158 = (*(&v286 + 1) + 8);
    }

    else
    {
      v158 = 0;
    }

    if (!v286)
    {
      goto LABEL_705;
    }
  }

  v159 = &v158[v155];
  do
  {
    v160 = *v158;
    v593 = 0uLL;
    v594 = 0;
    v161 = *(v160 + 40);
    if (v161)
    {
      v162 = (v161 + 8);
    }

    else
    {
      v162 = 0;
    }

    sub_1F277C0(&v593, 0, v162, &v162[*(v160 + 32)], *(v160 + 32));
    sub_1F27B60(v409, (*(v160 + 48) & 0xFFFFFFFFFFFFFFFELL), &v593);
    v163 = v509;
    if (v509 >= v510)
    {
      v164 = sub_1F27BF8(&v508, v409);
    }

    else
    {
      sub_1964D70(v509, v409);
      v164 = (v163 + 48);
    }

    v509 = v164;
    *&v586 = v411;
    sub_195E3E8(&v586);
    if (v410 < 0)
    {
      operator delete(v409[0]);
    }

    v409[0] = &v593;
    sub_195E3E8(v409);
    ++v158;
  }

  while (v158 != v159);
LABEL_705:
  v165 = DWORD2(v254);
  if ((BYTE8(v254) & 2) != 0)
  {
    v539 = BYTE2(v345);
    if ((WORD4(v254) & 0x100) == 0)
    {
LABEL_707:
      if ((BYTE8(v254) & 1) == 0)
      {
        goto LABEL_708;
      }

LABEL_791:
      BYTE5(v433) = BYTE1(v345);
      if ((DWORD2(v254) & 0x40000000) == 0)
      {
        goto LABEL_710;
      }

      goto LABEL_709;
    }
  }

  else if ((WORD4(v254) & 0x100) == 0)
  {
    goto LABEL_707;
  }

  v550 = v349;
  if (BYTE8(v254))
  {
    goto LABEL_791;
  }

LABEL_708:
  if ((DWORD2(v254) & 0x40000000) != 0)
  {
LABEL_709:
    LOBYTE(v548) = BYTE4(v365);
  }

LABEL_710:
  if (v274 < 1)
  {
    goto LABEL_775;
  }

  if (v275[0])
  {
    v166 = v275[0] + 8;
  }

  else
  {
    v166 = 0;
  }

  v167 = v166 + 8 * v274;
  do
  {
    v168 = *v166;
    v169 = *(*v166 + 48);
    if (v169 > 1)
    {
      if (v169 == 2)
      {
        v375 = 0uLL;
        v376 = 0;
        v185 = *(v168 + 32);
        if (v185)
        {
          v186 = *(v168 + 40);
          v187 = sub_19592E8(&v375, *(v168 + 32));
          sub_1201B48(&v375, v187, (v186 + 8), v185, *v376 - DWORD2(v375));
          v188 = DWORD2(v375) + v185;
          DWORD2(v375) = v188;
          v189 = v376;
          if (*v376 < v188)
          {
            *v376 = v188;
          }
        }

        else
        {
          v188 = 0;
          v189 = 0;
        }

        v206 = v473;
        p_data = &v472->__r_.__value_.__l.__data_;
        v208 = v472;
        if (v473 != v472)
        {
          do
          {
            v209 = *(v206 - 1);
            v206 -= 3;
            if (v209 < 0)
            {
              operator delete(*v206);
            }
          }

          while (v206 != p_data);
          v208 = v472;
          v189 = v376;
          v188 = DWORD2(v375);
        }

        v473 = p_data;
        if (v189)
        {
          v210 = (v189 + 2);
        }

        else
        {
          v210 = 0;
        }

        sub_1F277C0(&v472, v208, v210, &v210[v188], v188);
        v195 = &v375;
      }

      else
      {
        if (v169 != 3)
        {
          goto LABEL_773;
        }

        v602 = 0uLL;
        v603 = 0;
        v175 = *(v168 + 32);
        if (v175)
        {
          v176 = *(v168 + 40);
          v177 = sub_19592E8(&v602, *(v168 + 32));
          sub_1201B48(&v602, v177, (v176 + 8), v175, *v603 - DWORD2(v602));
          v178 = DWORD2(v602) + v175;
          DWORD2(v602) = v178;
          v179 = v603;
          if (*v603 < v178)
          {
            *v603 = v178;
          }
        }

        else
        {
          v178 = 0;
          v179 = 0;
        }

        v196 = v476;
        v197 = v475;
        v198 = v475;
        if (v476 != v475)
        {
          do
          {
            v199 = *(v196 - 1);
            v196 -= 3;
            if (v199 < 0)
            {
              operator delete(*v196);
            }
          }

          while (v196 != v197);
          v198 = v475;
          v179 = v603;
          v178 = DWORD2(v602);
        }

        v476 = v197;
        if (v179)
        {
          v200 = (v179 + 2);
        }

        else
        {
          v200 = 0;
        }

        sub_1F277C0(&v475, v198, v200, &v200[v178], v178);
        v195 = &v602;
      }
    }

    else if (v169)
    {
      if (v169 != 1)
      {
        goto LABEL_773;
      }

      v377 = 0uLL;
      v378 = 0;
      v170 = *(v168 + 32);
      if (v170)
      {
        v171 = *(v168 + 40);
        v172 = sub_19592E8(&v377, *(v168 + 32));
        sub_1201B48(&v377, v172, (v171 + 8), v170, *v378 - DWORD2(v377));
        v173 = DWORD2(v377) + v170;
        DWORD2(v377) = v173;
        v174 = v378;
        if (*v378 < v173)
        {
          *v378 = v173;
        }
      }

      else
      {
        v173 = 0;
        v174 = 0;
      }

      v190 = v470;
      v191 = &v469->__r_.__value_.__l.__data_;
      v192 = v469;
      if (v470 != v469)
      {
        do
        {
          v193 = *(v190 - 1);
          v190 -= 3;
          if (v193 < 0)
          {
            operator delete(*v190);
          }
        }

        while (v190 != v191);
        v192 = v469;
        v174 = v378;
        v173 = DWORD2(v377);
      }

      v470 = v191;
      if (v174)
      {
        v194 = (v174 + 2);
      }

      else
      {
        v194 = 0;
      }

      sub_1F277C0(&v469, v192, v194, &v194[v173], v173);
      v195 = &v377;
    }

    else
    {
      v379 = 0uLL;
      v380 = 0;
      v180 = *(v168 + 32);
      if (v180)
      {
        v181 = *(v168 + 40);
        v182 = sub_19592E8(&v379, *(v168 + 32));
        sub_1201B48(&v379, v182, (v181 + 8), v180, *v380 - DWORD2(v379));
        v183 = DWORD2(v379) + v180;
        DWORD2(v379) = v183;
        v184 = v380;
        if (*v380 < v183)
        {
          *v380 = v183;
        }
      }

      else
      {
        v183 = 0;
        v184 = 0;
      }

      v201 = v467;
      v202 = &v466->__r_.__value_.__l.__data_;
      v203 = v466;
      if (v467 != v466)
      {
        do
        {
          v204 = *(v201 - 1);
          v201 -= 3;
          if (v204 < 0)
          {
            operator delete(*v201);
          }
        }

        while (v201 != v202);
        v203 = v466;
        v184 = v380;
        v183 = DWORD2(v379);
      }

      v467 = v202;
      if (v184)
      {
        v205 = (v184 + 2);
      }

      else
      {
        v205 = 0;
      }

      sub_1F277C0(&v466, v203, v205, &v205[v183], v183);
      v195 = &v379;
    }

    sub_1956AFC(v195);
LABEL_773:
    v166 += 8;
  }

  while (v166 != v167);
  v165 = DWORD2(v254);
LABEL_775:
  if (v165 < 0)
  {
    LOBYTE(v517) = BYTE5(v365);
  }

  if (BYTE12(v254))
  {
    BYTE1(v517) = BYTE6(v365);
  }

  if ((BYTE12(v254) & 2) != 0)
  {
    BYTE2(v517) = HIBYTE(v365);
  }

  v211 = v306;
  if (v306 >= 1)
  {
    v212 = v515;
    v213 = v514;
    if (v515 == v514)
    {
      if (v307)
      {
        v214 = (v307 + 8);
      }

      else
      {
        v214 = 0;
      }
    }

    else
    {
      do
      {
        v212 -= 48;
        sub_1964E04(v212);
      }

      while (v212 != v213);
      v211 = v306;
      v515 = v213;
      if (v307)
      {
        v214 = (v307 + 8);
      }

      else
      {
        v214 = 0;
      }

      if (!v306)
      {
        goto LABEL_806;
      }
    }

    v215 = &v214[v211];
    do
    {
      v216 = *v214;
      v593 = 0uLL;
      v594 = 0;
      v217 = *(v216 + 40);
      if (v217)
      {
        v218 = (v217 + 8);
      }

      else
      {
        v218 = 0;
      }

      sub_1F277C0(&v593, 0, v218, &v218[*(v216 + 32)], *(v216 + 32));
      sub_1F27B60(v409, (*(v216 + 48) & 0xFFFFFFFFFFFFFFFELL), &v593);
      v219 = v515;
      if (v515 >= v516)
      {
        v220 = sub_1F27BF8(&v514, v409);
      }

      else
      {
        sub_1964D70(v515, v409);
        v220 = (v219 + 48);
      }

      v515 = v220;
      *&v586 = v411;
      sub_195E3E8(&v586);
      if (v410 < 0)
      {
        operator delete(v409[0]);
      }

      v409[0] = &v593;
      sub_195E3E8(v409);
      ++v214;
    }

    while (v214 != v215);
  }

LABEL_806:
  if (v308 >= 1)
  {
    sub_1F2705C(v502);
    v221 = v310 ? v310 + 8 : 0;
    if (v308)
    {
      v222 = 8 * v308;
      do
      {
        v223 = *(*v221 + 24) & 0xFFFFFFFFFFFFFFFELL;
        v224 = *(*v221 + 32);
        if (*(v223 + 23) < 0)
        {
          sub_325C(&v604, *v223, *(v223 + 8));
        }

        else
        {
          v225 = *v223;
          v605 = *(v223 + 16);
          v604 = v225;
        }

        v606[0] = v224;
        sub_1F27D18(v502, &v604, &v604);
        if (SHIBYTE(v605) < 0)
        {
          operator delete(v604);
        }

        v221 += 8;
        v222 -= 8;
      }

      while (v222);
    }
  }

  if (*&v303[16])
  {
    sub_1F2710C(&v552);
    v226 = *(&v304 + 4) ? (*(&v304 + 4) + 8) : 0;
    if (*&v303[16])
    {
      v227 = 8 * *&v303[16];
      do
      {
        sub_23914(&v552, *v226, *v226);
        ++v226;
        v227 -= 8;
      }

      while (v227);
    }
  }

  if ((DWORD2(v254) & 0x8000000) == 0)
  {
    if ((DWORD2(v254) & 0x4000000) == 0)
    {
      goto LABEL_827;
    }

LABEL_836:
    v556 = v363;
    if ((DWORD2(v254) & 0x10000000) == 0)
    {
      goto LABEL_829;
    }

LABEL_828:
    v558 = v364;
    goto LABEL_829;
  }

  v557 = HIDWORD(v363);
  if ((DWORD2(v254) & 0x4000000) != 0)
  {
    goto LABEL_836;
  }

LABEL_827:
  if ((DWORD2(v254) & 0x10000000) != 0)
  {
    goto LABEL_828;
  }

LABEL_829:
  if ((BYTE12(v254) & 0x10) == 0)
  {
    if ((DWORD2(v254) & 0x20000000) == 0)
    {
      goto LABEL_831;
    }

LABEL_839:
    LODWORD(v522) = v365;
    if ((BYTE12(v254) & 4) == 0)
    {
      goto LABEL_833;
    }

LABEL_832:
    HIDWORD(v521) = v366;
    goto LABEL_833;
  }

  LOBYTE(v561) = v367;
  if ((DWORD2(v254) & 0x20000000) != 0)
  {
    goto LABEL_839;
  }

LABEL_831:
  if ((BYTE12(v254) & 4) != 0)
  {
    goto LABEL_832;
  }

LABEL_833:
  sub_1F26758(v229 + 32, v427);
  sub_164A68C(&v253);
  v59 = v427;
LABEL_834:
  sub_1965ECC(v59);
  return v229;
}

void sub_1F1ECC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _Unwind_Exception *exception_objecta, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, unint64_t a19, unint64_t a20, uint64_t a21)
{
  if (SLOBYTE(STACK[0xA47]) < 0)
  {
    operator delete(STACK[0xA30]);
  }

  sub_23D9C(v28 + 1096);
  STACK[0xA30] = v21;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = v27;
  sub_195E3E8(&STACK[0xA30]);
  v29 = STACK[0x578];
  if (STACK[0x578])
  {
    STACK[0x580] = v29;
    operator delete(v29);
  }

  sub_7E724(&STACK[0x558], STACK[0x560]);
  sub_7E724(&STACK[0x540], STACK[0x548]);
  STACK[0xA30] = v26;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = v25;
  sub_1965604(&STACK[0xA30]);
  STACK[0xA30] = v24;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = v23;
  sub_1964E4C(&STACK[0xA30]);
  STACK[0xA30] = v22;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a10;
  sub_1964E4C(&STACK[0xA30]);
  STACK[0xA30] = a11;
  sub_1964E4C(&STACK[0xA30]);
  sub_19653BC(&STACK[0x430]);
  STACK[0xA30] = a16;
  sub_1964E4C(&STACK[0xA30]);
  sub_7E724(&STACK[0x3B8], STACK[0x3C0]);
  sub_7E724(&STACK[0x3A0], STACK[0x3A8]);
  sub_7E724(&STACK[0x388], STACK[0x390]);
  sub_7E724(&STACK[0x370], STACK[0x378]);
  STACK[0xA30] = a17;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a18;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a19;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a20;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = &STACK[0x2C0];
  sub_1964924(&STACK[0xA30]);
  STACK[0xA30] = a12;
  sub_19646F0(&STACK[0xA30]);
  STACK[0xA30] = a13;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a14;
  sub_195E3E8(&STACK[0xA30]);
  STACK[0xA30] = a15;
  sub_195E3E8(&STACK[0xA30]);
  sub_1965ECC(a21 + 32);
  v30 = *(a21 + 16);
  if (v30)
  {
    sub_1220A18(v30);
  }

  _Unwind_Resume(a1);
}

void sub_1F262A0()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xA30])
    {
      JUMPOUT(0x1F2627CLL);
    }
  }
}

uint64_t sub_1F262C8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 60);
  v6 = *(a2 + 76);
  v7 = *(a2 + 92);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 92) = v7;
  *(a1 + 76) = v6;
  *(a1 + 60) = v5;
  v8 = *(a2 + 124);
  v9 = *(a2 + 140);
  v10 = *(a2 + 156);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 156) = v10;
  *(a1 + 140) = v9;
  *(a1 + 124) = v8;
  v11 = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 12) = v11;
  sub_19609CC(a1 + 176);
  *(a1 + 176) = *(a2 + 11);
  *(a1 + 192) = a2[24];
  a2[24] = 0;
  *(a2 + 11) = 0u;
  sub_19609CC(a1 + 200);
  *(a1 + 200) = *(a2 + 25);
  *(a1 + 216) = a2[27];
  a2[27] = 0;
  *(a2 + 25) = 0u;
  sub_19609CC(a1 + 224);
  *(a1 + 224) = *(a2 + 14);
  *(a1 + 240) = a2[30];
  a2[30] = 0;
  *(a2 + 14) = 0u;
  *(a1 + 248) = *(a2 + 31);
  sub_1F26E90((a1 + 264));
  *(a1 + 264) = a2[33];
  *(a1 + 272) = *(a2 + 17);
  a2[35] = 0;
  *(a2 + 33) = 0u;
  sub_1F26EF0((a1 + 288));
  *(a1 + 288) = *(a2 + 18);
  *(a1 + 304) = a2[38];
  a2[38] = 0;
  *(a2 + 18) = 0u;
  v12 = *(a2 + 39);
  v13 = *(a2 + 41);
  v14 = *(a2 + 43);
  *(a1 + 360) = a2[45];
  *(a1 + 328) = v13;
  *(a1 + 344) = v14;
  *(a1 + 312) = v12;
  sub_19609CC(a1 + 368);
  *(a1 + 368) = *(a2 + 23);
  *(a1 + 384) = a2[48];
  a2[48] = 0;
  *(a2 + 23) = 0u;
  sub_19609CC(a1 + 392);
  *(a1 + 392) = a2[49];
  *(a1 + 400) = *(a2 + 25);
  a2[51] = 0;
  *(a2 + 49) = 0u;
  sub_19609CC(a1 + 416);
  *(a1 + 416) = *(a2 + 26);
  *(a1 + 432) = a2[54];
  a2[54] = 0;
  *(a2 + 26) = 0u;
  sub_19609CC(a1 + 440);
  *(a1 + 440) = a2[55];
  *(a1 + 448) = *(a2 + 28);
  a2[57] = 0;
  *(a2 + 55) = 0u;
  sub_19D5198((a1 + 464), a2 + 58);
  sub_19D5198((a1 + 488), a2 + 61);
  sub_19D5198((a1 + 512), a2 + 64);
  sub_19D5198((a1 + 536), a2 + 67);
  *(a1 + 560) = *(a2 + 35);
  v15 = *(a2 + 36);
  v16 = *(a2 + 37);
  v17 = *(a2 + 38);
  *(a1 + 622) = *(a2 + 622);
  *(a1 + 592) = v16;
  *(a1 + 608) = v17;
  *(a1 + 576) = v15;
  sub_1F26F50((a1 + 632));
  *(a1 + 632) = a2[79];
  *(a1 + 640) = *(a2 + 40);
  a2[81] = 0;
  *(a2 + 79) = 0u;
  sub_1F26FB8(a1 + 656, a2 + 82);
  *(a1 + 696) = *(a2 + 174);
  sub_1F26F50((a1 + 704));
  *(a1 + 704) = *(a2 + 44);
  *(a1 + 720) = a2[90];
  a2[90] = 0;
  *(a2 + 44) = 0u;
  sub_1F26F50((a1 + 728));
  *(a1 + 728) = a2[91];
  *(a1 + 736) = *(a2 + 46);
  a2[93] = 0;
  *(a2 + 91) = 0u;
  sub_19609CC(a1 + 752);
  *(a1 + 752) = *(a2 + 47);
  *(a1 + 768) = a2[96];
  a2[96] = 0;
  *(a2 + 47) = 0u;
  sub_1F26F50((a1 + 776));
  *(a1 + 776) = a2[97];
  *(a1 + 784) = *(a2 + 49);
  a2[99] = 0;
  *(a2 + 97) = 0u;
  v18 = *(a2 + 50);
  v19 = *(a2 + 51);
  *(a1 + 832) = *(a2 + 208);
  *(a1 + 800) = v18;
  *(a1 + 816) = v19;
  sub_19609CC(a1 + 840);
  *(a1 + 840) = a2[105];
  *(a1 + 848) = *(a2 + 53);
  a2[107] = 0;
  *(a2 + 105) = 0u;
  v20 = a2[108];
  *(a1 + 869) = *(a2 + 869);
  *(a1 + 864) = v20;
  sub_1BE3698((a1 + 880));
  *(a1 + 880) = *(a2 + 55);
  *(a1 + 896) = a2[112];
  a2[112] = 0;
  *(a2 + 55) = 0u;
  sub_19609CC(a1 + 904);
  *(a1 + 904) = a2[113];
  *(a1 + 912) = *(a2 + 57);
  a2[115] = 0;
  *(a2 + 113) = 0u;
  sub_19D5198((a1 + 928), a2 + 116);
  sub_19D5198((a1 + 952), a2 + 119);
  *(a1 + 976) = *(a2 + 976);
  sub_1F270B8(a1 + 984, (a2 + 123));
  sub_19609CC(a1 + 1008);
  *(a1 + 1008) = *(a2 + 63);
  *(a1 + 1024) = a2[128];
  a2[128] = 0;
  *(a2 + 63) = 0u;
  sub_19609CC(a1 + 1032);
  *(a1 + 1032) = a2[129];
  *(a1 + 1040) = *(a2 + 65);
  a2[131] = 0;
  *(a2 + 129) = 0u;
  v21 = *(a2 + 66);
  v22 = *(a2 + 67);
  *(a1 + 1088) = *(a2 + 272);
  *(a1 + 1072) = v22;
  *(a1 + 1056) = v21;
  sub_D28FDC(a1 + 1096, a2 + 137);
  v23 = *(a2 + 71);
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v23;
  sub_19D5198((a1 + 1160), a2 + 145);
  *(a1 + 1184) = *(a2 + 1184);
  return a1;
}

uint64_t sub_1F26758(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 60);
  v6 = *(a2 + 76);
  v7 = *(a2 + 92);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 92) = v7;
  *(a1 + 76) = v6;
  *(a1 + 60) = v5;
  v8 = *(a2 + 124);
  v9 = *(a2 + 140);
  v10 = *(a2 + 156);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 156) = v10;
  *(a1 + 140) = v9;
  *(a1 + 124) = v8;
  v11 = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 12) = v11;
  if (a1 == a2)
  {
    *(a1 + 248) = *(a2 + 31);
    v24 = *(a2 + 39);
    v25 = *(a2 + 41);
    v26 = *(a2 + 43);
    *(a1 + 360) = a2[45];
    *(a1 + 328) = v25;
    *(a1 + 344) = v26;
    *(a1 + 312) = v24;
    v28 = *(a2 + 37);
    v27 = *(a2 + 38);
    v29 = *(a2 + 36);
    *(a1 + 622) = *(a2 + 622);
    *(a1 + 592) = v28;
    *(a1 + 608) = v27;
    *(a1 + 576) = v29;
    *(a1 + 560) = *(a2 + 35);
    *(a1 + 696) = *(a2 + 174);
    v30 = *(a2 + 50);
    v31 = *(a2 + 51);
    *(a1 + 832) = *(a2 + 208);
    *(a1 + 800) = v30;
    *(a1 + 816) = v31;
    v32 = a2[108];
    *(a1 + 869) = *(a2 + 869);
    *(a1 + 864) = v32;
    *(a1 + 976) = *(a2 + 976);
    v33 = *(a2 + 66);
    v34 = *(a2 + 67);
    *(a1 + 1088) = *(a2 + 272);
    *(a1 + 1072) = v34;
    *(a1 + 1056) = v33;
    v35 = *(a2 + 71);
    *(a1 + 1152) = *(a2 + 1152);
    *(a1 + 1136) = v35;
  }

  else
  {
    sub_74300((a1 + 176), a2[22], a2[23], 0xAAAAAAAAAAAAAAABLL * ((a2[23] - a2[22]) >> 3));
    sub_74300((a1 + 200), a2[25], a2[26], 0xAAAAAAAAAAAAAAABLL * ((a2[26] - a2[25]) >> 3));
    sub_74300((a1 + 224), a2[28], a2[29], 0xAAAAAAAAAAAAAAABLL * ((a2[29] - a2[28]) >> 3));
    *(a1 + 248) = *(a2 + 31);
    sub_1F27F98((a1 + 264), a2[33], a2[34], 0x6DB6DB6DB6DB6DB7 * ((a2[34] - a2[33]) >> 3));
    sub_1F28140((a1 + 288), a2[36], a2[37], 0xCCCCCCCCCCCCCCCDLL * ((a2[37] - a2[36]) >> 4));
    v12 = *(a2 + 39);
    v13 = *(a2 + 41);
    v14 = *(a2 + 43);
    *(a1 + 360) = a2[45];
    *(a1 + 328) = v13;
    *(a1 + 344) = v14;
    *(a1 + 312) = v12;
    sub_74300((a1 + 368), a2[46], a2[47], 0xAAAAAAAAAAAAAAABLL * ((a2[47] - a2[46]) >> 3));
    sub_74300((a1 + 392), a2[49], a2[50], 0xAAAAAAAAAAAAAAABLL * ((a2[50] - a2[49]) >> 3));
    sub_74300((a1 + 416), a2[52], a2[53], 0xAAAAAAAAAAAAAAABLL * ((a2[53] - a2[52]) >> 3));
    sub_74300((a1 + 440), a2[55], a2[56], 0xAAAAAAAAAAAAAAABLL * ((a2[56] - a2[55]) >> 3));
    sub_1B00AFC((a1 + 464), a2[58], a2 + 59);
    sub_1B00AFC((a1 + 488), a2[61], a2 + 62);
    sub_1B00AFC((a1 + 512), a2[64], a2 + 65);
    sub_1B00AFC((a1 + 536), a2[67], a2 + 68);
    *(a1 + 560) = *(a2 + 35);
    v15 = *(a2 + 36);
    v16 = *(a2 + 37);
    v17 = *(a2 + 38);
    *(a1 + 622) = *(a2 + 622);
    *(a1 + 592) = v16;
    *(a1 + 608) = v17;
    *(a1 + 576) = v15;
    sub_1F282D8(a1 + 632, a2[79], a2[80], 0xAAAAAAAAAAAAAAABLL * ((a2[80] - a2[79]) >> 4));
    *(a1 + 688) = *(a2 + 172);
    sub_1F284C4((a1 + 656), a2[84], 0);
    *(a1 + 696) = *(a2 + 174);
    sub_1F282D8(a1 + 704, a2[88], a2[89], 0xAAAAAAAAAAAAAAABLL * ((a2[89] - a2[88]) >> 4));
    sub_1F282D8(a1 + 728, a2[91], a2[92], 0xAAAAAAAAAAAAAAABLL * ((a2[92] - a2[91]) >> 4));
    sub_74300((a1 + 752), a2[94], a2[95], 0xAAAAAAAAAAAAAAABLL * ((a2[95] - a2[94]) >> 3));
    sub_1F282D8(a1 + 776, a2[97], a2[98], 0xAAAAAAAAAAAAAAABLL * ((a2[98] - a2[97]) >> 4));
    v18 = *(a2 + 50);
    v19 = *(a2 + 51);
    *(a1 + 832) = *(a2 + 208);
    *(a1 + 800) = v18;
    *(a1 + 816) = v19;
    sub_74300((a1 + 840), a2[105], a2[106], 0xAAAAAAAAAAAAAAABLL * ((a2[106] - a2[105]) >> 3));
    v20 = a2[108];
    *(a1 + 869) = *(a2 + 869);
    *(a1 + 864) = v20;
    sub_50D3E8((a1 + 880), a2[110], a2[111], 0xAAAAAAAAAAAAAAABLL * ((a2[111] - a2[110]) >> 4));
    sub_74300((a1 + 904), a2[113], a2[114], 0xAAAAAAAAAAAAAAABLL * ((a2[114] - a2[113]) >> 3));
    sub_1B00AFC((a1 + 928), a2[116], a2 + 117);
    sub_1B00AFC((a1 + 952), a2[119], a2 + 120);
    *(a1 + 976) = *(a2 + 976);
    sub_1F286F4((a1 + 984), a2[123], a2[124], (a2[124] - a2[123]) >> 3);
    sub_74300((a1 + 1008), a2[126], a2[127], 0xAAAAAAAAAAAAAAABLL * ((a2[127] - a2[126]) >> 3));
    sub_74300((a1 + 1032), a2[129], a2[130], 0xAAAAAAAAAAAAAAABLL * ((a2[130] - a2[129]) >> 3));
    v21 = *(a2 + 66);
    v22 = *(a2 + 67);
    *(a1 + 1088) = *(a2 + 272);
    *(a1 + 1072) = v22;
    *(a1 + 1056) = v21;
    *(a1 + 1128) = *(a2 + 282);
    sub_4B5F48(a1 + 1096, a2[139], 0);
    v23 = *(a2 + 71);
    *(a1 + 1152) = *(a2 + 1152);
    *(a1 + 1136) = v23;
    sub_1B00AFC((a1 + 1160), a2[145], a2 + 146);
  }

  *(a1 + 1184) = *(a2 + 1184);
  return a1;
}

void sub_1F26C3C(uint64_t **a1, uint64_t a2)
{
  sub_3608D0(v11, "search_params_4");
  LODWORD(v10[0]) = 8;
  sub_1B0E8D8(v10, v11, v9);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  dispatch_group_enter(**a2);
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v8 = *a2;
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
    v8 = *a2;
  }

  v11[0] = off_2726B10;
  v11[1] = v5;
  v12 = v6;
  v13 = v11;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v10[0] = off_2726BE0;
  v10[1] = v8;
  v10[2] = v7;
  v10[3] = v10;
  sub_1B0E6A0(v4, v9, v11, v10);
}

void sub_1F26D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_197F740(va);
  sub_197F7C0(v13 - 56);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1F26DD0(void *a1)
{
  *a1 = &off_2726AC8;
  sub_1965ECC((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1F26E20(void *a1)
{
  *a1 = &off_2726AC8;
  sub_1965ECC((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete();
}

void sub_1F26E90(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_1646520(v3 - 56);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1F26EF0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_1646EB8(v3 - 80);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1F26F50(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 48;
        sub_1964E04(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1F26FB8(uint64_t a1, uint64_t *a2)
{
  sub_1F2705C(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_1F2705C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_19653F8(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

__n128 sub_1F270B8(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_1F2710C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_4B5D98(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_1F27168(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1964848(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  sub_1646E00(80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = (80 * v2 + *a1 - v7);
  sub_1F27298(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1F273A8(&v13);
  return v12;
}

void sub_1F27284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1F273A8(va);
  _Unwind_Resume(a1);
}

void sub_1F27298(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1F27308(a4, v7);
      v7 += 10;
      a4 = v8 + 10;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_1646EB8(v6);
      v6 += 80;
    }
  }
}

void *sub_1F27308(void *a1, void *a2)
{
  sub_1646BE4(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = a1[1];
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = a2[1];
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_16476B4(a1, a2);
    }

    else
    {
      sub_1647660(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_1F273A8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_1646EB8(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1F273F8(void *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1964610(a1, v6);
  }

  v13 = 0;
  v14 = 56 * v2;
  sub_1646474(56 * v2, a2);
  v15 = (56 * v2 + 56);
  v7 = a1[1];
  v8 = (56 * v2 + *a1 - v7);
  sub_1F27540(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1F27650(&v13);
  return v12;
}

void sub_1F2752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1F27650(va);
  _Unwind_Resume(a1);
}

void sub_1F27540(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1F275B0(a4, v7);
      v7 += 7;
      a4 = v8 + 7;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_1646520(v6);
      v6 += 56;
    }
  }
}

void *sub_1F275B0(void *a1, void *a2)
{
  sub_16462D0(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = a1[1];
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = a2[1];
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_1646B80(a1, a2);
    }

    else
    {
      sub_1646B2C(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_1F27650(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_1646520(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_1F276A0(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1965518(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  v15 = 48 * v2;
  v16 = 0;
  sub_1965570(48 * v2, a2);
  v7 = 48 * v2 + 48;
  v8 = *(a1 + 8) - *a1;
  v9 = 48 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_84E7C(&v13);
  return v7;
}

void sub_1F277AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_84E7C(va);
  _Unwind_Resume(a1);
}

std::string *sub_1F277C0(void *a1, std::string *a2, const std::string **a3, __int128 **a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        sub_1AE9A00(a1, a2, a1[1], &a2[a5]);
        v20 = &v7[a5];
        v21 = v5;
        do
        {
          v22 = *v7++;
          std::string::operator=(v21++, v22);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = &a3[0xAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)];
        a1[1] = sub_1F27A9C(a1, v17, a4, a1[1]);
        if (v16 >= 1)
        {
          sub_1AE9A00(a1, v5, v10, &v5[a5]);
          v18 = v5;
          do
          {
            v19 = *v7++;
            std::string::operator=(v18++, v19);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v34 = a1;
      if (v15)
      {
        sub_195CC74(a1, v15);
      }

      v31 = 0;
      v32 = 8 * (v13 >> 3);
      v33 = v32;
      sub_1F27A04(&v31, a3, a5);
      v23 = v32;
      memcpy(v33, v5, a1[1] - v5);
      v24 = *a1;
      v25 = v32;
      *&v33 = v33 + a1[1] - v5;
      a1[1] = v5;
      v26 = v5 - v24;
      v27 = (v25 - (v5 - v24));
      memcpy(v27, v24, v26);
      v28 = *a1;
      *a1 = v27;
      v29 = a1[2];
      *(a1 + 1) = v33;
      *&v33 = v28;
      *(&v33 + 1) = v29;
      v31 = v28;
      v32 = v28;
      sub_1D03C(&v31);
      return v23;
    }
  }

  return v5;
}

void *sub_1F27A04(void *result, __int128 **a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    v7 = 24 * a3;
    do
    {
      v8 = *a2;
      if (*(*a2 + 23) < 0)
      {
        result = sub_325C(v4, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        *(v4 + 16) = *(v8 + 2);
        *v4 = v9;
      }

      v4 += 24;
      ++a2;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t sub_1F27A9C(uint64_t a1, __int128 **a2, __int128 **a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      if (*(*v6 + 23) < 0)
      {
        sub_325C(v4, *v7, *(v7 + 1));
        v4 = v13;
      }

      else
      {
        v8 = *v7;
        *(v4 + 16) = *(v7 + 2);
        *v4 = v8;
      }

      ++v6;
      v4 += 24;
      v13 = v4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_746A0(v10);
  return v4;
}

uint64_t sub_1F27B60(uint64_t a1, __int128 *a2, __int128 **a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v5;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_353184(a1 + 24, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return a1;
}

void sub_1F27BDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1F27BF8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1964C90(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  v15 = 48 * v2;
  v16 = 0;
  sub_1964D70(48 * v2, a2);
  v7 = 48 * v2 + 48;
  v8 = *(a1 + 8) - *a1;
  v9 = 48 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_1D97610(&v13);
  return v7;
}

void sub_1F27D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D97610(va);
  _Unwind_Resume(a1);
}

const void **sub_1F27D18(void *a1, const void **a2, uint64_t a3)
{
  v5 = sub_1220A84(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_1220AC4(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1F27F98(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1F26E90(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_19645C0(a1, v10);
    }

    sub_1794();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_1646B2C(v8, v6);
        v6 += 56;
        v8 += 56;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v11 -= 56;
      sub_1646520(v11);
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_1646B2C(v8, v14);
        v14 += 56;
        v8 += 56;
        v13 -= 56;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_196466C(a1, v6 + v12, a3, v11);
  }
}

void sub_1F28140(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_1F26EF0(a1);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      sub_19647FC(a1, v10);
    }

    sub_1794();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_1647660(v8, v6);
        v6 += 80;
        v8 += 80;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v11 -= 80;
      sub_1646EB8(v11);
    }

    a1[1] = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_1647660(v8, v14);
        v14 += 80;
        v8 += 80;
        v13 -= 80;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = sub_19648A0(a1, v6 + v12, a3, v11);
  }
}

void sub_1F282D8(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_1F26F50(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_1964C44(a1, v10);
    }

    sub_1794();
  }

  v11 = *(a1 + 8);
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_1F28470(v8, v6);
        v6 += 48;
        v8 += 2;
      }

      while (v6 != a3);
      v11 = *(a1 + 8);
    }

    while (v11 != v8)
    {
      v11 -= 48;
      sub_1964E04(v11);
    }

    *(a1 + 8) = v8;
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_1F28470(v8, v14);
        v14 += 48;
        v8 += 2;
        v13 -= 48;
      }

      while (v13);
      v11 = *(a1 + 8);
    }

    *(a1 + 8) = sub_1964CE8(a1, (v6 + v12), a3, v11);
  }
}

std::string *sub_1F28470(std::string *a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  if (a1 != a2)
  {
    sub_74300(&a1[1], *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  return a1;
}

void sub_1F284C4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 2), (v4 + 2));
        v8[5] = v4[5];
        v10 = *v8;
        sub_1D36AD8(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_19653F8(a1, v10);
  }

  if (v4 != a3)
  {
    sub_1F285C8(a1);
  }
}

void sub_1F28598(void *a1)
{
  __cxa_begin_catch(a1);
  sub_19653F8(v1, v2);
  __cxa_rethrow();
}

void sub_1F28604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1965358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1F286D8(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_1965358(v3, v1);
  _Unwind_Resume(a1);
}

char *sub_1F286F4(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1963264(a1, v10);
    }

    sub_1794();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 8;
        v12 -= 8;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 8;
        v15 += 8;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void *sub_1F28818(void *a1)
{
  *a1 = off_2726B10;
  v2 = a1[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1F28864(void *a1)
{
  *a1 = off_2726B10;
  v1 = a1[2];
  if (v1)
  {
    sub_1220A18(v1);
  }

  operator delete();
}

uint64_t sub_1F2893C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_2726B10;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1F28974(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1220A18(v1);
  }
}

void sub_1F28984(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete(__p);
}

void sub_1F28A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_1220A18(a13);
  }

  v15 = *(v13 - 24);
  if (v15)
  {
    sub_1220A18(v15);
  }

  if (a10)
  {
    sub_1220A18(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1F28A90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1F28B50(void *a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2726B80;
  sub_1F28C48((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void sub_1F28BCC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2726B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1F28C48(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1F193E8(a1, v11, *a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    sub_1220A18(v9);
  }

  return a1;
}

void sub_1F28CA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1220A18(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1F28CC0(void *a1)
{
  *a1 = off_2726BE0;
  v2 = a1[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  return a1;
}

void sub_1F28D0C(void *a1)
{
  *a1 = off_2726BE0;
  v1 = a1[2];
  if (v1)
  {
    sub_1220A18(v1);
  }

  operator delete();
}

uint64_t sub_1F28DE4(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_2726BE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1F28E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1220A18(v1);
  }
}

void sub_1F28E2C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_1220A18(v2);
  }

  operator delete(__p);
}

void sub_1F28F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1220A18(a11);
  }

  if (a13)
  {
    sub_1220A18(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1F28F74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1F29034(void *a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_2726B80;
  sub_1F29090((a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

uint64_t sub_1F29090(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  *a2 = 0;
  a2[1] = 0;
  sub_1F193E8(a1, v11, *a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    sub_1220A18(v9);
  }

  return a1;
}

void sub_1F290E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1220A18(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1F290F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_3608D0(&v1253, "AW");
  sub_3608D0(&v1250, "ABW");
  v1252 = 40;
  sub_195E43C(v1255, &v1253, &v1250);
  sub_3608D0(&v1248, "AF");
  sub_3608D0(&v1245, "AFG");
  v1247 = 41;
  sub_195E43C(&v1256, &v1248, &v1245);
  sub_3608D0(&v1243, "AO");
  sub_3608D0(&v1240, "AGO");
  v1242 = 42;
  sub_195E43C(&v1257, &v1243, &v1240);
  sub_3608D0(&v1238, "AI");
  sub_3608D0(&v1235, "AIA");
  v1237 = 43;
  sub_195E43C(&v1258, &v1238, &v1235);
  sub_3608D0(&v1233, "AX");
  sub_3608D0(&v1230, "ALA");
  v1232 = 246;
  sub_195E43C(&v1259, &v1233, &v1230);
  sub_3608D0(&v1228, "AL");
  sub_3608D0(&v1225, "ALB");
  v1227 = 76;
  sub_195E43C(&v1260, &v1228, &v1225);
  sub_3608D0(&v1223, "AD");
  sub_3608D0(&v1220, "AND");
  v1222 = 78;
  sub_195E43C(&v1261, &v1223, &v1220);
  sub_3608D0(&v1218, "AN");
  sub_3608D0(&v1215, "ANT");
  v1217 = 44;
  sub_195E43C(&v1262, &v1218, &v1215);
  sub_3608D0(&v1213, "AE");
  sub_3608D0(&v1210, "ARE");
  v1212 = 2;
  sub_195E43C(&v1263, &v1213, &v1210);
  sub_3608D0(&v1208, "AR");
  sub_3608D0(&v1205, "ARG");
  v1207 = 80;
  sub_195E43C(&v1264, &v1208, &v1205);
  sub_3608D0(&v1203, "AM");
  sub_3608D0(&v1200, "ARM");
  v1202 = 45;
  sub_195E43C(&v1265, &v1203, &v1200);
  sub_3608D0(&v1198, "AS");
  sub_3608D0(&v1195, "ASM");
  v1197 = 77;
  sub_195E43C(&v1266, &v1198, &v1195);
  sub_3608D0(&v1193, "AQ");
  sub_3608D0(&v1190, "ATA");
  v1192 = 46;
  sub_195E43C(&v1267, &v1193, &v1190);
  sub_3608D0(&v1188, "TF");
  sub_3608D0(&v1185, "ATF");
  v1187 = 125;
  sub_195E43C(&v1268, &v1188, &v1185);
  sub_3608D0(&v1183, "AG");
  sub_3608D0(&v1180, "ATG");
  v1182 = 79;
  sub_195E43C(&v1269, &v1183, &v1180);
  sub_3608D0(&v1178, "AU");
  sub_3608D0(&v1175, "AUS");
  v1177 = 22;
  sub_195E43C(&v1270, &v1178, &v1175);
  sub_3608D0(&v1173, "AT");
  sub_3608D0(&v1170, "AUT");
  v1172 = 81;
  sub_195E43C(&v1271, &v1173, &v1170);
  sub_3608D0(&v1168, "AZ");
  sub_3608D0(&v1165, "AZE");
  v1167 = 82;
  sub_195E43C(&v1272, &v1168, &v1165);
  sub_3608D0(&v1163, "BI");
  sub_3608D0(&v1160, "BDI");
  v1162 = 96;
  sub_195E43C(&v1273, &v1163, &v1160);
  sub_3608D0(&v1158, "BE");
  sub_3608D0(&v1155, "BEL");
  v1157 = 87;
  sub_195E43C(&v1274, &v1158, &v1155);
  sub_3608D0(&v1153, "BJ");
  sub_3608D0(&v1150, "BEN");
  v1152 = 3;
  sub_195E43C(&v1275, &v1153, &v1150);
  sub_3608D0(&v1148, "BQ");
  sub_3608D0(&v1145, "BES");
  v1147 = 248;
  sub_195E43C(&v1276, &v1148, &v1145);
  sub_3608D0(&v1143, "BF");
  sub_3608D0(&v1140, "BFA");
  v1142 = 11;
  sub_195E43C(&v1277, &v1143, &v1140);
  sub_3608D0(&v1138, "BD");
  sub_3608D0(&v1135, "BGD");
  v1137 = 84;
  sub_195E43C(&v1278, &v1138, &v1135);
  sub_3608D0(&v1133, "BG");
  sub_3608D0(&v1130, "BGR");
  v1132 = 95;
  sub_195E43C(&v1279, &v1133, &v1130);
  sub_3608D0(&v1128, "BH");
  sub_3608D0(&v1125, "BHR");
  v1127 = 12;
  sub_195E43C(&v1280, &v1128, &v1125);
  sub_3608D0(&v1123, "BS");
  sub_3608D0(&v1120, "BHS");
  v1122 = 83;
  sub_195E43C(&v1281, &v1123, &v1120);
  sub_3608D0(&v1118, "BA");
  sub_3608D0(&v1115, "BIH");
  v1117 = 92;
  sub_195E43C(&v1282, &v1118, &v1115);
  sub_3608D0(&v1113, "BL");
  sub_3608D0(&v1110, "BLM");
  v1112 = 237;
  sub_195E43C(&v1283, &v1113, &v1110);
  sub_3608D0(&v1108, "BY");
  sub_3608D0(&v1105, "BLR");
  v1107 = 86;
  sub_195E43C(&v1284, &v1108, &v1105);
  sub_3608D0(&v1103, "BZ");
  sub_3608D0(&v1100, "BLZ");
  v1102 = 88;
  sub_195E43C(&v1285, &v1103, &v1100);
  sub_3608D0(&v1098, "BM");
  sub_3608D0(&v1095, "BMU");
  v1097 = 89;
  sub_195E43C(&v1286, &v1098, &v1095);
  sub_3608D0(&v1093, "BO");
  sub_3608D0(&v1090, "BOL");
  v1092 = 91;
  sub_195E43C(&v1287, &v1093, &v1090);
  sub_3608D0(&v1088, "BR");
  sub_3608D0(&v1085, "BRA");
  v1087 = 25;
  sub_195E43C(&v1288, &v1088, &v1085);
  sub_3608D0(&v1083, "BB");
  sub_3608D0(&v1080, "BRB");
  v1082 = 85;
  sub_195E43C(&v1289, &v1083, &v1080);
  sub_3608D0(&v1078, "BN");
  sub_3608D0(&v1075, "BRN");
  v1077 = 94;
  sub_195E43C(&v1290, &v1078, &v1075);
  sub_3608D0(&v1073, "BT");
  sub_3608D0(&v1070, "BTN");
  v1072 = 90;
  sub_195E43C(&v1291, &v1073, &v1070);
  sub_3608D0(&v1068, "BV");
  sub_3608D0(&v1065, "BVT");
  v1067 = 245;
  sub_195E43C(&v1292, &v1068, &v1065);
  sub_3608D0(&v1063, "BW");
  sub_3608D0(&v1060, "BWA");
  v1062 = 93;
  sub_195E43C(&v1293, &v1063, &v1060);
  sub_3608D0(&v1058, "CF");
  sub_3608D0(&v1055, "CAF");
  v1057 = 63;
  sub_195E43C(&v1294, &v1058, &v1055);
  sub_3608D0(&v1053, "CA");
  sub_3608D0(&v1050, "CAN");
  v1052 = 98;
  sub_195E43C(&v1295, &v1053, &v1050);
  sub_3608D0(&v1048, "CC");
  sub_3608D0(&v1045, "CCK");
  v1047 = 47;
  sub_195E43C(&v1296, &v1048, &v1045);
  sub_3608D0(&v1043, "CH");
  sub_3608D0(&v1040, "CHE");
  v1042 = 211;
  sub_195E43C(&v1297, &v1043, &v1040);
  sub_3608D0(&v1038, "CL");
  sub_3608D0(&v1035, "CHL");
  v1037 = 102;
  sub_195E43C(&v1298, &v1038, &v1035);
  sub_3608D0(&v1033, "CN");
  sub_3608D0(&v1030, "CHN");
  v1032 = 4;
  sub_195E43C(&v1299, &v1033, &v1030);
  sub_3608D0(&v1028, "CI");
  sub_3608D0(&v1025, "CIV");
  v1027 = 26;
  sub_195E43C(&v1300, &v1028, &v1025);
  sub_3608D0(&v1023, "CM");
  sub_3608D0(&v1020, "CMR");
  v1022 = 27;
  sub_195E43C(&v1301, &v1023, &v1020);
  sub_3608D0(&v1018, "CD");
  sub_3608D0(&v1015, "COD");
  v1017 = 106;
  sub_195E43C(&v1302, &v1018, &v1015);
  sub_3608D0(&v1013, "CG");
  sub_3608D0(&v1010, "COG");
  v1012 = 105;
  sub_195E43C(&v1303, &v1013, &v1010);
  sub_3608D0(&v1008, "CK");
  sub_3608D0(&v1005, "COK");
  v1007 = 107;
  sub_195E43C(&v1304, &v1008, &v1005);
  sub_3608D0(&v1003, "CO");
  sub_3608D0(&v1000, "COL");
  v1002 = 28;
  sub_195E43C(&v1305, &v1003, &v1000);
  sub_3608D0(&v998, "KM");
  sub_3608D0(&v995, "COM");
  v997 = 104;
  sub_195E43C(&v1306, &v998, &v995);
  sub_3608D0(&v993, "CV");
  sub_3608D0(&v990, "CPV");
  v992 = 99;
  sub_195E43C(&v1307, &v993, &v990);
  sub_3608D0(&v988, "CR");
  sub_3608D0(&v985, "CRI");
  v987 = 13;
  sub_195E43C(&v1308, &v988, &v985);
  sub_3608D0(&v983, "CU");
  sub_3608D0(&v980, "CUB");
  v982 = 109;
  sub_195E43C(&v1309, &v983, &v980);
  sub_3608D0(&v978, "CW");
  sub_3608D0(&v975, "CUW");
  v977 = 247;
  sub_195E43C(&v1310, &v978, &v975);
  sub_3608D0(&v973, "CX");
  sub_3608D0(&v970, "CXR");
  v972 = 103;
  sub_195E43C(&v1311, &v973, &v970);
  sub_3608D0(&v968, "KY");
  sub_3608D0(&v965, "CYM");
  v967 = 100;
  sub_195E43C(&v1312, &v968, &v965);
  sub_3608D0(&v963, "CY");
  sub_3608D0(&v960, "CYP");
  v962 = 110;
  sub_195E43C(&v1313, &v963, &v960);
  sub_3608D0(&v958, "CZ");
  sub_3608D0(&v955, "CZE");
  v957 = 111;
  sub_195E43C(&v1314, &v958, &v955);
  sub_3608D0(&v953, "DE");
  sub_3608D0(&v950, "DEU");
  v952 = 129;
  sub_195E43C(&v1315, &v953, &v950);
  sub_3608D0(&v948, "DJ");
  sub_3608D0(&v945, "DJI");
  v947 = 113;
  sub_195E43C(&v1316, &v948, &v945);
  sub_3608D0(&v943, "DM");
  sub_3608D0(&v940, "DMA");
  v942 = 114;
  sub_195E43C(&v1317, &v943, &v940);
  sub_3608D0(&v938, "DK");
  sub_3608D0(&v935, "DNK");
  v937 = 112;
  sub_195E43C(&v1318, &v938, &v935);
  sub_3608D0(&v933, "DO");
  sub_3608D0(&v930, "DOM");
  v932 = 29;
  sub_195E43C(&v1319, &v933, &v930);
  sub_3608D0(&v928, "DZ");
  sub_3608D0(&v925, "DZA");
  v927 = 0;
  sub_195E43C(&v1320, &v928, &v925);
  sub_3608D0(&v923, "EC");
  sub_3608D0(&v920, "ECU");
  v922 = 30;
  sub_195E43C(&v1321, &v923, &v920);
  sub_3608D0(&v918, "EG");
  sub_3608D0(&v915, "EGY");
  v917 = 64;
  sub_195E43C(&v1322, &v918, &v915);
  sub_3608D0(&v913, "ER");
  sub_3608D0(&v910, "ERI");
  v912 = 116;
  sub_195E43C(&v1323, &v913, &v910);
  sub_3608D0(&v908, "EH");
  sub_3608D0(&v905, "ESH");
  v907 = 65;
  sub_195E43C(&v1324, &v908, &v905);
  sub_3608D0(&v903, "ES");
  sub_3608D0(&v900, "ESP");
  v902 = 206;
  sub_195E43C(&v1325, &v903, &v900);
  sub_3608D0(&v898, "EE");
  sub_3608D0(&v895, "EST");
  v897 = 117;
  sub_195E43C(&v1326, &v898, &v895);
  sub_3608D0(&v893, "ET");
  sub_3608D0(&v890, "ETH");
  v892 = 31;
  sub_195E43C(&v1327, &v893, &v890);
  sub_3608D0(&v888, "FI");
  sub_3608D0(&v885, "FIN");
  v887 = 121;
  sub_195E43C(&v1328, &v888, &v885);
  sub_3608D0(&v883, "FJ");
  sub_3608D0(&v880, "FJI");
  v882 = 120;
  sub_195E43C(&v1329, &v883, &v880);
  sub_3608D0(&v878, "FK");
  sub_3608D0(&v875, "FLK");
  v877 = 118;
  sub_195E43C(&v1330, &v878, &v875);
  sub_3608D0(&v873, "FR");
  sub_3608D0(&v870, "FRA");
  v872 = 122;
  sub_195E43C(&v1331, &v873, &v870);
  sub_3608D0(&v868, "FO");
  sub_3608D0(&v865, "FRO");
  v867 = 119;
  sub_195E43C(&v1332, &v868, &v865);
  sub_3608D0(&v863, "FM");
  sub_3608D0(&v860, "FSM");
  v862 = 166;
  sub_195E43C(&v1333, &v863, &v860);
  sub_3608D0(&v858, "GA");
  sub_3608D0(&v855, "GAB");
  v857 = 126;
  sub_195E43C(&v1334, &v858, &v855);
  sub_3608D0(&v853, "GB");
  sub_3608D0(&v850, "GBR");
  v852 = 225;
  sub_195E43C(&v1335, &v853, &v850);
  sub_3608D0(&v848, "GE");
  sub_3608D0(&v845, "GEO");
  v847 = 128;
  sub_195E43C(&v1336, &v848, &v845);
  sub_3608D0(&v843, "GG");
  sub_3608D0(&v840, "GGY");
  v842 = 256;
  sub_195E43C(&v1337, &v843, &v840);
  sub_3608D0(&v838, "GH");
  sub_3608D0(&v835, "GHA");
  v837 = 66;
  sub_195E43C(&v1338, &v838, &v835);
  sub_3608D0(&v833, "GI");
  sub_3608D0(&v830, "GIB");
  v832 = 67;
  sub_195E43C(&v1339, &v833, &v830);
  sub_3608D0(&v828, "GN");
  sub_3608D0(&v825, "GIN");
  v827 = 135;
  sub_195E43C(&v1340, &v828, &v825);
  sub_3608D0(&v823, "GP");
  sub_3608D0(&v820, "GLP");
  v822 = 133;
  sub_195E43C(&v1341, &v823, &v820);
  sub_3608D0(&v818, "GM");
  sub_3608D0(&v815, "GMB");
  v817 = 127;
  sub_195E43C(&v1342, &v818, &v815);
  sub_3608D0(&v813, "GW");
  sub_3608D0(&v810, "GNB");
  v812 = 68;
  sub_195E43C(&v1343, &v813, &v810);
  sub_3608D0(&v808, "GQ");
  sub_3608D0(&v805, "GNQ");
  v807 = 115;
  sub_195E43C(&v1344, &v808, &v805);
  sub_3608D0(&v803, "GR");
  sub_3608D0(&v800, "GRC");
  v802 = 130;
  sub_195E43C(&v1345, &v803, &v800);
  sub_3608D0(&v798, "GD");
  sub_3608D0(&v795, "GRD");
  v797 = 132;
  sub_195E43C(&v1346, &v798, &v795);
  sub_3608D0(&v793, "GL");
  sub_3608D0(&v790, "GRL");
  v792 = 131;
  sub_195E43C(&v1347, &v793, &v790);
  sub_3608D0(&v788, "GT");
  sub_3608D0(&v785, "GTM");
  v787 = 32;
  sub_195E43C(&v1348, &v788, &v785);
  sub_3608D0(&v783, "GF");
  sub_3608D0(&v780, "GUF");
  v782 = 123;
  sub_195E43C(&v1349, &v783, &v780);
  sub_3608D0(&v778, "GU");
  sub_3608D0(&v775, "GUM");
  v777 = 134;
  sub_195E43C(&v1350, &v778, &v775);
  sub_3608D0(&v773, "GY");
  sub_3608D0(&v770, "GUY");
  v772 = 136;
  sub_195E43C(&v1351, &v773, &v770);
  sub_3608D0(&v768, "HK");
  sub_3608D0(&v765, "HKG");
  v767 = 5;
  sub_195E43C(&v1352, &v768, &v765);
  sub_3608D0(&v763, "HM");
  sub_3608D0(&v760, "HMD");
  v762 = 240;
  sub_195E43C(&v1353, &v763, &v760);
  sub_3608D0(&v758, "HN");
  sub_3608D0(&v755, "HND");
  v757 = 14;
  sub_195E43C(&v1354, &v758, &v755);
  sub_3608D0(&v753, "HR");
  sub_3608D0(&v750, "HRV");
  v752 = 108;
  sub_195E43C(&v1355, &v753, &v750);
  sub_3608D0(&v748, "HT");
  sub_3608D0(&v745, "HTI");
  v747 = 137;
  sub_195E43C(&v1356, &v748, &v745);
  sub_3608D0(&v743, "HU");
  sub_3608D0(&v740, "HUN");
  v742 = 138;
  sub_195E43C(&v1357, &v743, &v740);
  sub_3608D0(&v738, "ID");
  sub_3608D0(&v735, "IDN");
  v737 = 69;
  sub_195E43C(&v1358, &v738, &v735);
  sub_3608D0(&v733, "IM");
  sub_3608D0(&v730, "IMN");
  v732 = 255;
  sub_195E43C(&v1359, &v733, &v730);
  sub_3608D0(&v728, "IN");
  sub_3608D0(&v725, "IND");
  v727 = 140;
  sub_195E43C(&v1360, &v728, &v725);
  sub_3608D0(&v723, "IO");
  sub_3608D0(&v720, "IOT");
  v722 = 48;
  sub_195E43C(&v1361, &v723, &v720);
  sub_3608D0(&v718, "IE");
  sub_3608D0(&v715, "IRL");
  v717 = 143;
  sub_195E43C(&v1362, &v718, &v715);
  sub_3608D0(&v713, "IR");
  sub_3608D0(&v710, "IRN");
  v712 = 141;
  sub_195E43C(&v1363, &v713, &v710);
  sub_3608D0(&v708, "IQ");
  sub_3608D0(&v705, "IRQ");
  v707 = 142;
  sub_195E43C(&v1364, &v708, &v705);
  sub_3608D0(&v703, "IS");
  sub_3608D0(&v700, "ISL");
  v702 = 139;
  sub_195E43C(&v1365, &v703, &v700);
  sub_3608D0(&v698, "IL");
  sub_3608D0(&v695, "ISR");
  v697 = 75;
  sub_195E43C(&v1366, &v698, &v695);
  sub_3608D0(&v693, "IT");
  sub_3608D0(&v690, "ITA");
  v692 = 144;
  sub_195E43C(&v1367, &v693, &v690);
  sub_3608D0(&v688, "JM");
  sub_3608D0(&v685, "JAM");
  v687 = 15;
  sub_195E43C(&v1368, &v688, &v685);
  sub_3608D0(&v683, "JE");
  sub_3608D0(&v680, "JEY");
  v682 = 254;
  sub_195E43C(&v1369, &v683, &v680);
  sub_3608D0(&v678, "JO");
  sub_3608D0(&v675, "JOR");
  v677 = 33;
  sub_195E43C(&v1370, &v678, &v675);
  sub_3608D0(&v673, "JP");
  sub_3608D0(&v670, "JPN");
  v672 = 10;
  sub_195E43C(&v1371, &v673, &v670);
  sub_3608D0(&v668, "KZ");
  sub_3608D0(&v665, "KAZ");
  v667 = 145;
  sub_195E43C(&v1372, &v668, &v665);
  sub_3608D0(&v663, "KE");
  sub_3608D0(&v660, "KEN");
  v662 = 34;
  sub_195E43C(&v1373, &v663, &v660);
  sub_3608D0(&v658, "KG");
  sub_3608D0(&v655, "KGZ");
  v657 = 149;
  sub_195E43C(&v1374, &v658, &v655);
  sub_3608D0(&v653, "KH");
  sub_3608D0(&v650, "KHM");
  v652 = 97;
  sub_195E43C(&v1375, &v653, &v650);
  sub_3608D0(&v648, "KI");
  sub_3608D0(&v645, "KIR");
  v647 = 146;
  sub_195E43C(&v1376, &v648, &v645);
  sub_3608D0(&v643, "KN");
  sub_3608D0(&v640, "KNA");
  v642 = 193;
  sub_195E43C(&v1377, &v643, &v640);
  sub_3608D0(&v638, "KR");
  sub_3608D0(&v635, "KOR");
  v637 = 148;
  sub_195E43C(&v1378, &v638, &v635);
  sub_3608D0(&v633, "KW");
  sub_3608D0(&v630, "KWT");
  v632 = 16;
  sub_195E43C(&v1379, &v633, &v630);
  sub_3608D0(&v628, "LA");
  sub_3608D0(&v625, "LAO");
  v627 = 150;
  sub_195E43C(&v1380, &v628, &v625);
  sub_3608D0(&v623, "LB");
  sub_3608D0(&v620, "LBN");
  v622 = 152;
  sub_195E43C(&v1381, &v623, &v620);
  sub_3608D0(&v618, "LR");
  sub_3608D0(&v615, "LBR");
  v617 = 153;
  sub_195E43C(&v1382, &v618, &v615);
  sub_3608D0(&v613, "LY");
  sub_3608D0(&v610, "LBY");
  v612 = 154;
  sub_195E43C(&v1383, &v613, &v610);
  sub_3608D0(&v608, "LC");
  sub_3608D0(&v605, "LCA");
  v607 = 194;
  sub_195E43C(&v1384, &v608, &v605);
  sub_3608D0(&v603, "LI");
  sub_3608D0(&v600, "LIE");
  v602 = 70;
  sub_195E43C(&v1385, &v603, &v600);
  sub_3608D0(&v598, "LK");
  sub_3608D0(&v595, "LKA");
  v597 = 207;
  sub_195E43C(&v1386, &v598, &v595);
  sub_3608D0(&v593, "LS");
  sub_3608D0(&v590, "LSO");
  v592 = 49;
  sub_195E43C(&v1387, &v593, &v590);
  sub_3608D0(&v588, "LT");
  sub_3608D0(&v585, "LTU");
  v587 = 155;
  sub_195E43C(&v1388, &v588, &v585);
  sub_3608D0(&v583, "LU");
  sub_3608D0(&v580, "LUX");
  v582 = 156;
  sub_195E43C(&v1389, &v583, &v580);
  sub_3608D0(&v578, "LV");
  sub_3608D0(&v575, "LVA");
  v577 = 151;
  sub_195E43C(&v1390, &v578, &v575);
  sub_3608D0(&v573, "MO");
  sub_3608D0(&v570, "MAC");
  v572 = 157;
  sub_195E43C(&v1391, &v573, &v570);
  sub_3608D0(&v568, "MF");
  sub_3608D0(&v565, "MAF");
  v567 = 236;
  sub_195E43C(&v1392, &v568, &v565);
  sub_3608D0(&v563, "MA");
  sub_3608D0(&v560, "MAR");
  v562 = 171;
  sub_195E43C(&v1393, &v563, &v560);
  sub_3608D0(&v558, "MC");
  sub_3608D0(&v555, "MCO");
  v557 = 71;
  sub_195E43C(&v1394, &v558, &v555);
  sub_3608D0(&v553, "MD");
  sub_3608D0(&v550, "MDA");
  v552 = 167;
  sub_195E43C(&v1395, &v553, &v550);
  sub_3608D0(&v548, "MG");
  sub_3608D0(&v545, "MDG");
  v547 = 159;
  sub_195E43C(&v1396, &v548, &v545);
  sub_3608D0(&v543, "MV");
  sub_3608D0(&v540, "MDV");
  v542 = 50;
  sub_195E43C(&v1397, &v543, &v540);
  sub_3608D0(&v538, "MX");
  sub_3608D0(&v535, "MEX");
  v537 = 165;
  sub_195E43C(&v1398, &v538, &v535);
  sub_3608D0(&v533, "MH");
  sub_3608D0(&v530, "MHL");
  v532 = 51;
  sub_195E43C(&v1399, &v533, &v530);
  sub_3608D0(&v528, "MK");
  sub_3608D0(&v525, "MKD");
  v527 = 158;
  sub_195E43C(&v1400, &v528, &v525);
  sub_3608D0(&v523, "ML");
  sub_3608D0(&v520, "MLI");
  v522 = 17;
  sub_195E43C(&v1401, &v523, &v520);
  sub_3608D0(&v518, "MT");
  sub_3608D0(&v515, "MLT");
  v517 = 162;
  sub_195E43C(&v1402, &v518, &v515);
  sub_3608D0(&v513, "MM");
  sub_3608D0(&v510, "MMR");
  v512 = 173;
  sub_195E43C(&v1403, &v513, &v510);
  sub_3608D0(&v508, "ME");
  sub_3608D0(&v505, "MNE");
  v507 = 169;
  sub_195E43C(&v1404, &v508, &v505);
  sub_3608D0(&v503, "MN");
  sub_3608D0(&v500, "MNG");
  v502 = 168;
  sub_195E43C(&v1405, &v503, &v500);
  sub_3608D0(&v498, "MP");
  sub_3608D0(&v495, "MNP");
  v497 = 179;
  sub_195E43C(&v1406, &v498, &v495);
  sub_3608D0(&v493, "MZ");
  sub_3608D0(&v490, "MOZ");
  v492 = 172;
  sub_195E43C(&v1407, &v493, &v490);
  sub_3608D0(&v488, "MR");
  sub_3608D0(&v485, "MRT");
  v487 = 163;
  sub_195E43C(&v1408, &v488, &v485);
  sub_3608D0(&v483, "MS");
  sub_3608D0(&v480, "MSR");
  v482 = 170;
  sub_195E43C(&v1409, &v483, &v480);
  sub_3608D0(&v478, "MQ");
  sub_3608D0(&v475, "MTQ");
  v477 = 52;
  sub_195E43C(&v1410, &v478, &v475);
  sub_3608D0(&v473, "MU");
  sub_3608D0(&v470, "MUS");
  v472 = 164;
  sub_195E43C(&v1411, &v473, &v470);
  sub_3608D0(&v468, "MW");
  sub_3608D0(&v465, "MWI");
  v467 = 160;
  sub_195E43C(&v1412, &v468, &v465);
  sub_3608D0(&v463, "MY");
  sub_3608D0(&v460, "MYS");
  v462 = 161;
  sub_195E43C(&v1413, &v463, &v460);
  sub_3608D0(&v458, "YT");
  sub_3608D0(&v455, "MYT");
  v457 = 53;
  sub_195E43C(&v1414, &v458, &v455);
  sub_3608D0(&v453, "NA");
  sub_3608D0(&v450, "NAM");
  v452 = 174;
  sub_195E43C(&v1415, &v453, &v450);
  sub_3608D0(&v448, "NC");
  sub_3608D0(&v445, "NCL");
  v447 = 177;
  sub_195E43C(&v1416, &v448, &v445);
  sub_3608D0(&v443, "NE");
  sub_3608D0(&v440, "NER");
  v442 = 35;
  sub_195E43C(&v1417, &v443, &v440);
  sub_3608D0(&v438, "NF");
  sub_3608D0(&v435, "NFK");
  v437 = 23;
  sub_195E43C(&v1418, &v438, &v435);
  sub_3608D0(&v433, "NG");
  sub_3608D0(&v430, "NGA");
  v432 = 6;
  sub_195E43C(&v1419, &v433, &v430);
  sub_3608D0(&v428, "NI");
  sub_3608D0(&v425, "NIC");
  v427 = 18;
  sub_195E43C(&v1420, &v428, &v425);
  sub_3608D0(&v423, "NU");
  sub_3608D0(&v420, "NIU");
  v422 = 178;
  sub_195E43C(&v1421, &v423, &v420);
  sub_3608D0(&v418, "NL");
  sub_3608D0(&v415, "NLD");
  v417 = 176;
  sub_195E43C(&v1422, &v418, &v415);
  sub_3608D0(&v413, "NO");
  sub_3608D0(&v410, "NOR");
  v412 = 180;
  sub_195E43C(&v1423, &v413, &v410);
  sub_3608D0(&v408, "NP");
  sub_3608D0(&v405, "NPL");
  v407 = 175;
  sub_195E43C(&v1424, &v408, &v405);
  sub_3608D0(&v403, "NR");
  sub_3608D0(&v400, "NRU");
  v402 = 54;
  sub_195E43C(&v1425, &v403, &v400);
  sub_3608D0(&v398, "NZ");
  sub_3608D0(&v395, "NZL");
  v397 = 24;
  sub_195E43C(&v1426, &v398, &v395);
  sub_3608D0(&v393, "OM");
  sub_3608D0(&v390, "OMN");
  v392 = 7;
  sub_195E43C(&v1427, &v393, &v390);
  sub_3608D0(&v388, "PA");
  sub_3608D0(&v385, "PAN");
  v387 = 19;
  sub_195E43C(&v1428, &v388, &v385);
  sub_3608D0(&v383, "PE");
  sub_3608D0(&v380, "PER");
  v382 = 184;
  sub_195E43C(&v1429, &v383, &v380);
  sub_3608D0(&v378, "PF");
  sub_3608D0(&v375, "PYF");
  v377 = 124;
  sub_195E43C(&v1430, &v378, &v375);
  sub_3608D0(&v373, "PG");
  sub_3608D0(&v370, "PNG");
  v372 = 56;
  sub_195E43C(&v1431, &v373, &v370);
  sub_3608D0(&v368, "PH");
  sub_3608D0(&v365, "PHL");
  v367 = 185;
  sub_195E43C(&v1432, &v368, &v365);
  sub_3608D0(&v363, "PK");
  sub_3608D0(&v360, "PAK");
  v362 = 181;
  sub_195E43C(&v1433, &v363, &v360);
  sub_3608D0(&v358, "PL");
  sub_3608D0(&v355, "POL");
  v357 = 186;
  sub_195E43C(&v1434, &v358, &v355);
  sub_3608D0(&v353, "PM");
  sub_3608D0(&v350, "SPM");
  v352 = 241;
  sub_195E43C(&v1435, &v353, &v350);
  sub_3608D0(&v348, "PN");
  sub_3608D0(&v345, "PCN");
  v347 = 55;
  sub_195E43C(&v1436, &v348, &v345);
  sub_3608D0(&v343, "PR");
  sub_3608D0(&v340, "PRI");
  v342 = 253;
  sub_195E43C(&v1437, &v343, &v340);
  sub_3608D0(&v338, "PS");
  sub_3608D0(&v335, "PSE");
  v337 = 36;
  sub_195E43C(&v1438, &v338, &v335);
  sub_3608D0(&v333, "PT");
  sub_3608D0(&v330, "PRT");
  v332 = 187;
  sub_195E43C(&v1439, &v333, &v330);
  sub_3608D0(&v328, "PW");
  sub_3608D0(&v325, "PLW");
  v327 = 182;
  sub_195E43C(&v1440, &v328, &v325);
  sub_3608D0(&v323, "PY");
  sub_3608D0(&v320, "PRY");
  v322 = 183;
  sub_195E43C(&v1441, &v323, &v320);
  sub_3608D0(&v318, "QA");
  sub_3608D0(&v315, "QAT");
  v317 = 8;
  sub_195E43C(&v1442, &v318, &v315);
  sub_3608D0(&v313, "RE");
  sub_3608D0(&v310, "REU");
  v312 = 188;
  sub_195E43C(&v1443, &v313, &v310);
  sub_3608D0(&v308, "RO");
  sub_3608D0(&v305, "ROU");
  v307 = 189;
  sub_195E43C(&v1444, &v308, &v305);
  sub_3608D0(&v303, "RS");
  sub_3608D0(&v300, "SRB");
  v302 = 199;
  sub_195E43C(&v1445, &v303, &v300);
  sub_3608D0(&v298, "RU");
  sub_3608D0(&v295, "RUS");
  v297 = 190;
  sub_195E43C(&v1446, &v298, &v295);
  sub_3608D0(&v293, "RW");
  sub_3608D0(&v290, "RWA");
  v292 = 191;
  sub_195E43C(&v1447, &v293, &v290);
  sub_3608D0(&v288, "SA");
  sub_3608D0(&v285, "SAU");
  v287 = 20;
  sub_195E43C(&v1448, &v288, &v285);
  sub_3608D0(&v283, "SB");
  sub_3608D0(&v280, "SLB");
  v282 = 58;
  sub_195E43C(&v1449, &v283, &v280);
  sub_3608D0(&v278, "SC");
  sub_3608D0(&v275, "SYC");
  v277 = 200;
  sub_195E43C(&v1450, &v278, &v275);
  sub_3608D0(&v273, "SD");
  sub_3608D0(&v270, "SDN");
  v272 = 208;
  sub_195E43C(&v1451, &v273, &v270);
  sub_3608D0(&v268, "SE");
  sub_3608D0(&v265, "SWE");
  v267 = 210;
  sub_195E43C(&v1452, &v268, &v265);
  sub_3608D0(&v263, "SG");
  sub_3608D0(&v260, "SGP");
  v262 = 202;
  sub_195E43C(&v1453, &v263, &v260);
  sub_3608D0(&v258, "SH");
  sub_3608D0(&v255, "SHN");
  v257 = 192;
  sub_195E43C(&v1454, &v258, &v255);
  sub_3608D0(&v253, "SI");
  sub_3608D0(&v250, "SVN");
  v252 = 204;
  sub_195E43C(&v1455, &v253, &v250);
  sub_3608D0(&v248, "SJ");
  sub_3608D0(&v245, "SJM");
  v247 = 72;
  sub_195E43C(&v1456, &v248, &v245);
  sub_3608D0(&v243, "SK");
  sub_3608D0(&v240, "SVK");
  v242 = 203;
  sub_195E43C(&v1457, &v243, &v240);
  sub_3608D0(&v238, "SL");
  sub_3608D0(&v235, "SLE");
  v237 = 201;
  sub_195E43C(&v1458, &v238, &v235);
  sub_3608D0(&v233, "SM");
  sub_3608D0(&v230, "SMR");
  v232 = 197;
  sub_195E43C(&v1459, &v233, &v230);
  sub_3608D0(&v228, "SN");
  sub_3608D0(&v225, "SEN");
  v227 = 37;
  sub_195E43C(&v1460, &v228, &v225);
  sub_3608D0(&v223, "SO");
  sub_3608D0(&v220, "SOM");
  v222 = 205;
  sub_195E43C(&v1461, &v223, &v220);
  sub_3608D0(&v218, "SR");
  sub_3608D0(&v215, "SUR");
  v217 = 209;
  sub_195E43C(&v1462, &v218, &v215);
  sub_3608D0(&v213, "SS");
  sub_3608D0(&v210, "SSD");
  v212 = 243;
  sub_195E43C(&v1463, &v213, &v210);
  sub_3608D0(&v208, "ST");
  sub_3608D0(&v205, "STP");
  v207 = 198;
  sub_195E43C(&v1464, &v208, &v205);
  sub_3608D0(&v203, "SV");
  sub_3608D0(&v200, "SLV");
  v202 = 21;
  sub_195E43C(&v1465, &v203, &v200);
  sub_3608D0(&v198, "SX");
  sub_3608D0(&v195, "SXM");
  v197 = 234;
  sub_195E43C(&v1466, &v198, &v195);
  sub_3608D0(&v193, "SY");
  sub_3608D0(&v190, "SYR");
  v192 = 212;
  sub_195E43C(&v1467, &v193, &v190);
  sub_3608D0(&v188, "SZ");
  sub_3608D0(&v185, "SWZ");
  v187 = 59;
  sub_195E43C(&v1468, &v188, &v185);
  sub_3608D0(&v183, "TC");
  sub_3608D0(&v180, "TCA");
  v182 = 222;
  sub_195E43C(&v1469, &v183, &v180);
  sub_3608D0(&v178, "TD");
  sub_3608D0(&v175, "TCD");
  v177 = 101;
  sub_195E43C(&v1470, &v178, &v175);
  sub_3608D0(&v173, "TF");
  sub_3608D0(&v170, "ATF");
  v172 = 125;
  sub_195E43C(&v1471, &v173, &v170);
  sub_3608D0(&v168, "TG");
  sub_3608D0(&v165, "TGO");
  v167 = 216;
  sub_195E43C(&v1472, &v168, &v165);
  sub_3608D0(&v163, "TH");
  sub_3608D0(&v160, "THA");
  v162 = 214;
  sub_195E43C(&v1473, &v163, &v160);
  sub_3608D0(&v158, "TJ");
  sub_3608D0(&v155, "TJK");
  v157 = 213;
  sub_195E43C(&v1474, &v158, &v155);
  sub_3608D0(&v153, "TK");
  sub_3608D0(&v150, "TKL");
  v152 = 244;
  sub_195E43C(&v1475, &v153, &v150);
  sub_3608D0(&v148, "TL");
  sub_3608D0(&v145, "TLS");
  v147 = 215;
  sub_195E43C(&v1476, &v148, &v145);
  sub_3608D0(&v143, "TM");
  sub_3608D0(&v140, "TKM");
  v142 = 221;
  sub_195E43C(&v1477, &v143, &v140);
  sub_3608D0(&v138, "TN");
  sub_3608D0(&v135, "TUN");
  v137 = 219;
  sub_195E43C(&v1478, &v138, &v135);
  sub_3608D0(&v133, "TO");
  sub_3608D0(&v130, "TON");
  v132 = 217;
  sub_195E43C(&v1479, &v133, &v130);
  sub_3608D0(&v128, "TR");
  sub_3608D0(&v125, "TUR");
  v127 = 220;
  sub_195E43C(&v1480, &v128, &v125);
  sub_3608D0(&v123, "TT");
  sub_3608D0(&v120, "TTO");
  v122 = 218;
  sub_195E43C(&v1481, &v123, &v120);
  sub_3608D0(&v118, "TV");
  sub_3608D0(&v115, "TUV");
  v117 = 60;
  sub_195E43C(&v1482, &v118, &v115);
  sub_3608D0(&v113, "TZ");
  sub_3608D0(&v110, "TZA");
  v112 = 38;
  sub_195E43C(&v1483, &v113, &v110);
  sub_3608D0(&v108, "UA");
  sub_3608D0(&v105, "UKR");
  v107 = 224;
  sub_195E43C(&v1484, &v108, &v105);
  sub_3608D0(&v103, "UG");
  sub_3608D0(&v100, "UGA");
  v102 = 223;
  sub_195E43C(&v1485, &v103, &v100);
  sub_3608D0(&v98, "UM");
  sub_3608D0(&v95, "UMI");
  v97 = 251;
  sub_195E43C(&v1486, &v98, &v95);
  sub_3608D0(&v93, "US");
  sub_3608D0(&v90, "USA");
  v92 = 226;
  sub_195E43C(&v1487, &v93, &v90);
  sub_3608D0(&v88, "UY");
  sub_3608D0(&v85, "URY");
  v87 = 1;
  sub_195E43C(&v1488, &v88, &v85);
  sub_3608D0(&v83, "UZ");
  sub_3608D0(&v80, "UZB");
  v82 = 227;
  sub_195E43C(&v1489, &v83, &v80);
  sub_3608D0(&v78, "VA");
  sub_3608D0(&v75, "VAT");
  v77 = 74;
  sub_195E43C(&v1490, &v78, &v75);
  sub_3608D0(&v73, "VC");
  sub_3608D0(&v70, "VCT");
  v72 = 195;
  sub_195E43C(&v1491, &v73, &v70);
  sub_3608D0(&v68, "VE");
  sub_3608D0(&v65, "VEN");
  v67 = 39;
  sub_195E43C(&v1492, &v68, &v65);
  sub_3608D0(&v63, "VG");
  sub_3608D0(&v60, "VGB");
  v62 = 229;
  sub_195E43C(&v1493, &v63, &v60);
  sub_3608D0(&v58, "VI");
  sub_3608D0(&v55, "VIR");
  v57 = 242;
  sub_195E43C(&v1494, &v58, &v55);
  sub_3608D0(&v53, "VN");
  sub_3608D0(&v50, "VNM");
  v52 = 9;
  sub_195E43C(&v1495, &v53, &v50);
  sub_3608D0(&v48, "VU");
  sub_3608D0(&v45, "VUT");
  v47 = 228;
  sub_195E43C(&v1496, &v48, &v45);
  sub_3608D0(&v43, "WF");
  sub_3608D0(&v40, "WLF");
  v42 = 230;
  sub_195E43C(&v1497, &v43, &v40);
  sub_3608D0(&v38, "WS");
  sub_3608D0(&v35, "WSM");
  v37 = 196;
  sub_195E43C(&v1498, &v38, &v35);
  sub_3608D0(&v33, "YE");
  sub_3608D0(&v30, "YEM");
  v32 = 231;
  sub_195E43C(&v1499, &v33, &v30);
  sub_3608D0(&v28, "YT");
  sub_3608D0(&v25, "MYT");
  v27 = 53;
  sub_195E43C(&v1500, &v28, &v25);
  sub_3608D0(&v23, "ZA");
  sub_3608D0(v20, "ZAF");
  v22 = 62;
  sub_195E43C(&v1501, &v23, v20);
  sub_3608D0(v18, "ZM");
  sub_3608D0(v15, "ZMB");
  v17 = 232;
  sub_195E43C(&v1502, v18, v15);
  sub_3608D0(v13, "ZW");
  sub_3608D0(__p, "ZWE");
  v12 = 233;
  sub_195E43C(&v1503, v13, __p);
  sub_1966280(qword_27F07E0, v1255, 249);
  v8 = &v1504;
  v9 = -13944;
  do
  {
    if (*v8 < 0)
    {
      operator delete(*(v8 - 23));
    }

    if (*(v8 - 24) < 0)
    {
      operator delete(*(v8 - 47));
    }

    v8 -= 56;
    v9 += 56;
  }

  while (v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v44 < 0)
  {
    operator delete(v43);
  }

  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v64 < 0)
  {
    operator delete(v63);
  }

  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (v69 < 0)
  {
    operator delete(v68);
  }

  if (v71 < 0)
  {
    operator delete(v70);
  }

  if (v74 < 0)
  {
    operator delete(v73);
  }

  if (v76 < 0)
  {
    operator delete(v75);
  }

  if (v79 < 0)
  {
    operator delete(v78);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v84 < 0)
  {
    operator delete(v83);
  }

  if (v86 < 0)
  {
    operator delete(v85);
  }

  if (v89 < 0)
  {
    operator delete(v88);
  }

  if (v91 < 0)
  {
    operator delete(v90);
  }

  if (v94 < 0)
  {
    operator delete(v93);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v99 < 0)
  {
    operator delete(v98);
  }

  if (v101 < 0)
  {
    operator delete(v100);
  }

  if (v104 < 0)
  {
    operator delete(v103);
  }

  if (v106 < 0)
  {
    operator delete(v105);
  }

  if (v109 < 0)
  {
    operator delete(v108);
  }

  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v114 < 0)
  {
    operator delete(v113);
  }

  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v119 < 0)
  {
    operator delete(v118);
  }

  if (v121 < 0)
  {
    operator delete(v120);
  }

  if (v124 < 0)
  {
    operator delete(v123);
  }

  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v129 < 0)
  {
    operator delete(v128);
  }

  if (v131 < 0)
  {
    operator delete(v130);
  }

  if (v134 < 0)
  {
    operator delete(v133);
  }

  if (v136 < 0)
  {
    operator delete(v135);
  }

  if (v139 < 0)
  {
    operator delete(v138);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v144 < 0)
  {
    operator delete(v143);
  }

  if (v146 < 0)
  {
    operator delete(v145);
  }

  if (v149 < 0)
  {
    operator delete(v148);
  }

  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (v154 < 0)
  {
    operator delete(v153);
  }

  if (v156 < 0)
  {
    operator delete(v155);
  }

  if (v159 < 0)
  {
    operator delete(v158);
  }

  if (v161 < 0)
  {
    operator delete(v160);
  }

  if (v164 < 0)
  {
    operator delete(v163);
  }

  if (v166 < 0)
  {
    operator delete(v165);
  }

  if (v169 < 0)
  {
    operator delete(v168);
  }

  if (v171 < 0)
  {
    operator delete(v170);
  }

  if (v174 < 0)
  {
    operator delete(v173);
  }

  if (v176 < 0)
  {
    operator delete(v175);
  }

  if (v179 < 0)
  {
    operator delete(v178);
  }

  if (v181 < 0)
  {
    operator delete(v180);
  }

  if (v184 < 0)
  {
    operator delete(v183);
  }

  if (v186 < 0)
  {
    operator delete(v185);
  }

  if (v189 < 0)
  {
    operator delete(v188);
  }

  if (v191 < 0)
  {
    operator delete(v190);
  }

  if (v194 < 0)
  {
    operator delete(v193);
  }

  if (v196 < 0)
  {
    operator delete(v195);
  }

  if (v199 < 0)
  {
    operator delete(v198);
  }

  if (v201 < 0)
  {
    operator delete(v200);
  }

  if (v204 < 0)
  {
    operator delete(v203);
  }

  if (v206 < 0)
  {
    operator delete(v205);
  }

  if (v209 < 0)
  {
    operator delete(v208);
  }

  if (v211 < 0)
  {
    operator delete(v210);
  }

  if (v214 < 0)
  {
    operator delete(v213);
  }

  if (v216 < 0)
  {
    operator delete(v215);
  }

  if (v219 < 0)
  {
    operator delete(v218);
  }

  if (v221 < 0)
  {
    operator delete(v220);
  }

  if (v224 < 0)
  {
    operator delete(v223);
  }

  if (v226 < 0)
  {
    operator delete(v225);
  }

  if (v229 < 0)
  {
    operator delete(v228);
  }

  if (v231 < 0)
  {
    operator delete(v230);
  }

  if (v234 < 0)
  {
    operator delete(v233);
  }

  if (v236 < 0)
  {
    operator delete(v235);
  }

  if (v239 < 0)
  {
    operator delete(v238);
  }

  if (v241 < 0)
  {
    operator delete(v240);
  }

  if (v244 < 0)
  {
    operator delete(v243);
  }

  if (v246 < 0)
  {
    operator delete(v245);
  }

  if (v249 < 0)
  {
    operator delete(v248);
  }

  if (v251 < 0)
  {
    operator delete(v250);
  }

  if (v254 < 0)
  {
    operator delete(v253);
  }

  if (v256 < 0)
  {
    operator delete(v255);
  }

  if (v259 < 0)
  {
    operator delete(v258);
  }

  if (v261 < 0)
  {
    operator delete(v260);
  }

  if (v264 < 0)
  {
    operator delete(v263);
  }

  if (v266 < 0)
  {
    operator delete(v265);
  }

  if (v269 < 0)
  {
    operator delete(v268);
  }

  if (v271 < 0)
  {
    operator delete(v270);
  }

  if (v274 < 0)
  {
    operator delete(v273);
  }

  if (v276 < 0)
  {
    operator delete(v275);
  }

  if (v279 < 0)
  {
    operator delete(v278);
  }

  if (v281 < 0)
  {
    operator delete(v280);
  }

  if (v284 < 0)
  {
    operator delete(v283);
  }

  if (v286 < 0)
  {
    operator delete(v285);
  }

  if (v289 < 0)
  {
    operator delete(v288);
  }

  if (v291 < 0)
  {
    operator delete(v290);
  }

  if (v294 < 0)
  {
    operator delete(v293);
  }

  if (v296 < 0)
  {
    operator delete(v295);
  }

  if (v299 < 0)
  {
    operator delete(v298);
  }

  if (v301 < 0)
  {
    operator delete(v300);
  }

  if (v304 < 0)
  {
    operator delete(v303);
  }

  if (v306 < 0)
  {
    operator delete(v305);
  }

  if (v309 < 0)
  {
    operator delete(v308);
  }

  if (v311 < 0)
  {
    operator delete(v310);
  }

  if (v314 < 0)
  {
    operator delete(v313);
  }

  if (v316 < 0)
  {
    operator delete(v315);
  }

  if (v319 < 0)
  {
    operator delete(v318);
  }

  if (v321 < 0)
  {
    operator delete(v320);
  }

  if (v324 < 0)
  {
    operator delete(v323);
  }

  if (v326 < 0)
  {
    operator delete(v325);
  }

  if (v329 < 0)
  {
    operator delete(v328);
  }

  if (v331 < 0)
  {
    operator delete(v330);
  }

  if (v334 < 0)
  {
    operator delete(v333);
  }

  if (v336 < 0)
  {
    operator delete(v335);
  }

  if (v339 < 0)
  {
    operator delete(v338);
  }

  if (v341 < 0)
  {
    operator delete(v340);
  }

  if (v344 < 0)
  {
    operator delete(v343);
  }

  if (v346 < 0)
  {
    operator delete(v345);
  }

  if (v349 < 0)
  {
    operator delete(v348);
  }

  if (v351 < 0)
  {
    operator delete(v350);
  }

  if (v354 < 0)
  {
    operator delete(v353);
  }

  if (v356 < 0)
  {
    operator delete(v355);
  }

  if (v359 < 0)
  {
    operator delete(v358);
  }

  if (v361 < 0)
  {
    operator delete(v360);
  }

  if (v364 < 0)
  {
    operator delete(v363);
  }

  if (v366 < 0)
  {
    operator delete(v365);
  }

  if (v369 < 0)
  {
    operator delete(v368);
  }

  if (v371 < 0)
  {
    operator delete(v370);
  }

  if (v374 < 0)
  {
    operator delete(v373);
  }

  if (v376 < 0)
  {
    operator delete(v375);
  }

  if (v379 < 0)
  {
    operator delete(v378);
  }

  if (v381 < 0)
  {
    operator delete(v380);
  }

  if (v384 < 0)
  {
    operator delete(v383);
  }

  if (v386 < 0)
  {
    operator delete(v385);
  }

  if (v389 < 0)
  {
    operator delete(v388);
  }

  if (v391 < 0)
  {
    operator delete(v390);
  }

  if (v394 < 0)
  {
    operator delete(v393);
  }

  if (v396 < 0)
  {
    operator delete(v395);
  }

  if (v399 < 0)
  {
    operator delete(v398);
  }

  if (v401 < 0)
  {
    operator delete(v400);
  }

  if (v404 < 0)
  {
    operator delete(v403);
  }

  if (v406 < 0)
  {
    operator delete(v405);
  }

  if (v409 < 0)
  {
    operator delete(v408);
  }

  if (v411 < 0)
  {
    operator delete(v410);
  }

  if (v414 < 0)
  {
    operator delete(v413);
  }

  if (v416 < 0)
  {
    operator delete(v415);
  }

  if (v419 < 0)
  {
    operator delete(v418);
  }

  if (v421 < 0)
  {
    operator delete(v420);
  }

  if (v424 < 0)
  {
    operator delete(v423);
  }

  if (v426 < 0)
  {
    operator delete(v425);
  }

  if (v429 < 0)
  {
    operator delete(v428);
  }

  if (v431 < 0)
  {
    operator delete(v430);
  }

  if (v434 < 0)
  {
    operator delete(v433);
  }

  if (v436 < 0)
  {
    operator delete(v435);
  }

  if (v439 < 0)
  {
    operator delete(v438);
  }

  if (v441 < 0)
  {
    operator delete(v440);
  }

  if (v444 < 0)
  {
    operator delete(v443);
  }

  if (v446 < 0)
  {
    operator delete(v445);
  }

  if (v449 < 0)
  {
    operator delete(v448);
  }

  if (v451 < 0)
  {
    operator delete(v450);
  }

  if (v454 < 0)
  {
    operator delete(v453);
  }

  if (v456 < 0)
  {
    operator delete(v455);
  }

  if (v459 < 0)
  {
    operator delete(v458);
  }

  if (v461 < 0)
  {
    operator delete(v460);
  }

  if (v464 < 0)
  {
    operator delete(v463);
  }

  if (v466 < 0)
  {
    operator delete(v465);
  }

  if (v469 < 0)
  {
    operator delete(v468);
  }

  if (v471 < 0)
  {
    operator delete(v470);
  }

  if (v474 < 0)
  {
    operator delete(v473);
  }

  if (v476 < 0)
  {
    operator delete(v475);
  }

  if (v479 < 0)
  {
    operator delete(v478);
  }

  if (v481 < 0)
  {
    operator delete(v480);
  }

  if (v484 < 0)
  {
    operator delete(v483);
  }

  if (v486 < 0)
  {
    operator delete(v485);
  }

  if (v489 < 0)
  {
    operator delete(v488);
  }

  if (v491 < 0)
  {
    operator delete(v490);
  }

  if (v494 < 0)
  {
    operator delete(v493);
  }

  if (v496 < 0)
  {
    operator delete(v495);
  }

  if (v499 < 0)
  {
    operator delete(v498);
  }

  if (v501 < 0)
  {
    operator delete(v500);
  }

  if (v504 < 0)
  {
    operator delete(v503);
  }

  if (v506 < 0)
  {
    operator delete(v505);
  }

  if (v509 < 0)
  {
    operator delete(v508);
  }

  if (v511 < 0)
  {
    operator delete(v510);
  }

  if (v514 < 0)
  {
    operator delete(v513);
  }

  if (v516 < 0)
  {
    operator delete(v515);
  }

  if (v519 < 0)
  {
    operator delete(v518);
  }

  if (v521 < 0)
  {
    operator delete(v520);
  }

  if (v524 < 0)
  {
    operator delete(v523);
  }

  if (v526 < 0)
  {
    operator delete(v525);
  }

  if (v529 < 0)
  {
    operator delete(v528);
  }

  if (v531 < 0)
  {
    operator delete(v530);
  }

  if (v534 < 0)
  {
    operator delete(v533);
  }

  if (v536 < 0)
  {
    operator delete(v535);
  }

  if (v539 < 0)
  {
    operator delete(v538);
  }

  if (v541 < 0)
  {
    operator delete(v540);
  }

  if (v544 < 0)
  {
    operator delete(v543);
  }

  if (v546 < 0)
  {
    operator delete(v545);
  }

  if (v549 < 0)
  {
    operator delete(v548);
  }

  if (v551 < 0)
  {
    operator delete(v550);
  }

  if (v554 < 0)
  {
    operator delete(v553);
  }

  if (v556 < 0)
  {
    operator delete(v555);
  }

  if (v559 < 0)
  {
    operator delete(v558);
  }

  if (v561 < 0)
  {
    operator delete(v560);
  }

  if (v564 < 0)
  {
    operator delete(v563);
  }

  if (v566 < 0)
  {
    operator delete(v565);
  }

  if (v569 < 0)
  {
    operator delete(v568);
  }

  if (v571 < 0)
  {
    operator delete(v570);
  }

  if (v574 < 0)
  {
    operator delete(v573);
  }

  if (v576 < 0)
  {
    operator delete(v575);
  }

  if (v579 < 0)
  {
    operator delete(v578);
  }

  if (v581 < 0)
  {
    operator delete(v580);
  }

  if (v584 < 0)
  {
    operator delete(v583);
  }

  if (v586 < 0)
  {
    operator delete(v585);
  }

  if (v589 < 0)
  {
    operator delete(v588);
  }

  if (v591 < 0)
  {
    operator delete(v590);
  }

  if (v594 < 0)
  {
    operator delete(v593);
  }

  if (v596 < 0)
  {
    operator delete(v595);
  }

  if (v599 < 0)
  {
    operator delete(v598);
  }

  if (v601 < 0)
  {
    operator delete(v600);
  }

  if (v604 < 0)
  {
    operator delete(v603);
  }

  if (v606 < 0)
  {
    operator delete(v605);
  }

  if (v609 < 0)
  {
    operator delete(v608);
  }

  if (v611 < 0)
  {
    operator delete(v610);
  }

  if (v614 < 0)
  {
    operator delete(v613);
  }

  if (v616 < 0)
  {
    operator delete(v615);
  }

  if (v619 < 0)
  {
    operator delete(v618);
  }

  if (v621 < 0)
  {
    operator delete(v620);
  }

  if (v624 < 0)
  {
    operator delete(v623);
  }

  if (v626 < 0)
  {
    operator delete(v625);
  }

  if (v629 < 0)
  {
    operator delete(v628);
  }

  if (v631 < 0)
  {
    operator delete(v630);
  }

  if (v634 < 0)
  {
    operator delete(v633);
  }

  if (v636 < 0)
  {
    operator delete(v635);
  }

  if (v639 < 0)
  {
    operator delete(v638);
  }

  if (v641 < 0)
  {
    operator delete(v640);
  }

  if (v644 < 0)
  {
    operator delete(v643);
  }

  if (v646 < 0)
  {
    operator delete(v645);
  }

  if (v649 < 0)
  {
    operator delete(v648);
  }

  if (v651 < 0)
  {
    operator delete(v650);
  }

  if (v654 < 0)
  {
    operator delete(v653);
  }

  if (v656 < 0)
  {
    operator delete(v655);
  }

  if (v659 < 0)
  {
    operator delete(v658);
  }

  if (v661 < 0)
  {
    operator delete(v660);
  }

  if (v664 < 0)
  {
    operator delete(v663);
  }

  if (v666 < 0)
  {
    operator delete(v665);
  }

  if (v669 < 0)
  {
    operator delete(v668);
  }

  if (v671 < 0)
  {
    operator delete(v670);
  }

  if (v674 < 0)
  {
    operator delete(v673);
  }

  if (v676 < 0)
  {
    operator delete(v675);
  }

  if (v679 < 0)
  {
    operator delete(v678);
  }

  if (v681 < 0)
  {
    operator delete(v680);
  }

  if (v684 < 0)
  {
    operator delete(v683);
  }

  if (v686 < 0)
  {
    operator delete(v685);
  }

  if (v689 < 0)
  {
    operator delete(v688);
  }

  if (v691 < 0)
  {
    operator delete(v690);
  }

  if (v694 < 0)
  {
    operator delete(v693);
  }

  if (v696 < 0)
  {
    operator delete(v695);
  }

  if (v699 < 0)
  {
    operator delete(v698);
  }

  if (v701 < 0)
  {
    operator delete(v700);
  }

  if (v704 < 0)
  {
    operator delete(v703);
  }

  if (v706 < 0)
  {
    operator delete(v705);
  }

  if (v709 < 0)
  {
    operator delete(v708);
  }

  if (v711 < 0)
  {
    operator delete(v710);
  }

  if (v714 < 0)
  {
    operator delete(v713);
  }

  if (v716 < 0)
  {
    operator delete(v715);
  }

  if (v719 < 0)
  {
    operator delete(v718);
  }

  if (v721 < 0)
  {
    operator delete(v720);
  }

  if (v724 < 0)
  {
    operator delete(v723);
  }

  if (v726 < 0)
  {
    operator delete(v725);
  }

  if (v729 < 0)
  {
    operator delete(v728);
  }

  if (v731 < 0)
  {
    operator delete(v730);
  }

  if (v734 < 0)
  {
    operator delete(v733);
  }

  if (v736 < 0)
  {
    operator delete(v735);
  }

  if (v739 < 0)
  {
    operator delete(v738);
  }

  if (v741 < 0)
  {
    operator delete(v740);
  }

  if (v744 < 0)
  {
    operator delete(v743);
  }

  if (v746 < 0)
  {
    operator delete(v745);
  }

  if (v749 < 0)
  {
    operator delete(v748);
  }

  if (v751 < 0)
  {
    operator delete(v750);
  }

  if (v754 < 0)
  {
    operator delete(v753);
  }

  if (v756 < 0)
  {
    operator delete(v755);
  }

  if (v759 < 0)
  {
    operator delete(v758);
  }

  if (v761 < 0)
  {
    operator delete(v760);
  }

  if (v764 < 0)
  {
    operator delete(v763);
  }

  if (v766 < 0)
  {
    operator delete(v765);
  }

  if (v769 < 0)
  {
    operator delete(v768);
  }

  if (v771 < 0)
  {
    operator delete(v770);
  }

  if (v774 < 0)
  {
    operator delete(v773);
  }

  if (v776 < 0)
  {
    operator delete(v775);
  }

  if (v779 < 0)
  {
    operator delete(v778);
  }

  if (v781 < 0)
  {
    operator delete(v780);
  }

  if (v784 < 0)
  {
    operator delete(v783);
  }

  if (v786 < 0)
  {
    operator delete(v785);
  }

  if (v789 < 0)
  {
    operator delete(v788);
  }

  if (v791 < 0)
  {
    operator delete(v790);
  }

  if (v794 < 0)
  {
    operator delete(v793);
  }

  if (v796 < 0)
  {
    operator delete(v795);
  }

  if (v799 < 0)
  {
    operator delete(v798);
  }

  if (v801 < 0)
  {
    operator delete(v800);
  }

  if (v804 < 0)
  {
    operator delete(v803);
  }

  if (v806 < 0)
  {
    operator delete(v805);
  }

  if (v809 < 0)
  {
    operator delete(v808);
  }

  if (v811 < 0)
  {
    operator delete(v810);
  }

  if (v814 < 0)
  {
    operator delete(v813);
  }

  if (v816 < 0)
  {
    operator delete(v815);
  }

  if (v819 < 0)
  {
    operator delete(v818);
  }

  if (v821 < 0)
  {
    operator delete(v820);
  }

  if (v824 < 0)
  {
    operator delete(v823);
  }

  if (v826 < 0)
  {
    operator delete(v825);
  }

  if (v829 < 0)
  {
    operator delete(v828);
  }

  if (v831 < 0)
  {
    operator delete(v830);
  }

  if (v834 < 0)
  {
    operator delete(v833);
  }

  if (v836 < 0)
  {
    operator delete(v835);
  }

  if (v839 < 0)
  {
    operator delete(v838);
  }

  if (v841 < 0)
  {
    operator delete(v840);
  }

  if (v844 < 0)
  {
    operator delete(v843);
  }

  if (v846 < 0)
  {
    operator delete(v845);
  }

  if (v849 < 0)
  {
    operator delete(v848);
  }

  if (v851 < 0)
  {
    operator delete(v850);
  }

  if (v854 < 0)
  {
    operator delete(v853);
  }

  if (v856 < 0)
  {
    operator delete(v855);
  }

  if (v859 < 0)
  {
    operator delete(v858);
  }

  if (v861 < 0)
  {
    operator delete(v860);
  }

  if (v864 < 0)
  {
    operator delete(v863);
  }

  if (v866 < 0)
  {
    operator delete(v865);
  }

  if (v869 < 0)
  {
    operator delete(v868);
  }

  if (v871 < 0)
  {
    operator delete(v870);
  }

  if (v874 < 0)
  {
    operator delete(v873);
  }

  if (v876 < 0)
  {
    operator delete(v875);
  }

  if (v879 < 0)
  {
    operator delete(v878);
  }

  if (v881 < 0)
  {
    operator delete(v880);
  }

  if (v884 < 0)
  {
    operator delete(v883);
  }

  if (v886 < 0)
  {
    operator delete(v885);
  }

  if (v889 < 0)
  {
    operator delete(v888);
  }

  if (v891 < 0)
  {
    operator delete(v890);
  }

  if (v894 < 0)
  {
    operator delete(v893);
  }

  if (v896 < 0)
  {
    operator delete(v895);
  }

  if (v899 < 0)
  {
    operator delete(v898);
  }

  if (v901 < 0)
  {
    operator delete(v900);
  }

  if (v904 < 0)
  {
    operator delete(v903);
  }

  if (v906 < 0)
  {
    operator delete(v905);
  }

  if (v909 < 0)
  {
    operator delete(v908);
  }

  if (v911 < 0)
  {
    operator delete(v910);
  }

  if (v914 < 0)
  {
    operator delete(v913);
  }

  if (v916 < 0)
  {
    operator delete(v915);
  }

  if (v919 < 0)
  {
    operator delete(v918);
  }

  if (v921 < 0)
  {
    operator delete(v920);
  }

  if (v924 < 0)
  {
    operator delete(v923);
  }

  if (v926 < 0)
  {
    operator delete(v925);
  }

  if (v929 < 0)
  {
    operator delete(v928);
  }

  if (v931 < 0)
  {
    operator delete(v930);
  }

  if (v934 < 0)
  {
    operator delete(v933);
  }

  if (v936 < 0)
  {
    operator delete(v935);
  }

  if (v939 < 0)
  {
    operator delete(v938);
  }

  if (v941 < 0)
  {
    operator delete(v940);
  }

  if (v944 < 0)
  {
    operator delete(v943);
  }

  if (v946 < 0)
  {
    operator delete(v945);
  }

  if (v949 < 0)
  {
    operator delete(v948);
  }

  if (v951 < 0)
  {
    operator delete(v950);
  }

  if (v954 < 0)
  {
    operator delete(v953);
  }

  if (v956 < 0)
  {
    operator delete(v955);
  }

  if (v959 < 0)
  {
    operator delete(v958);
  }

  if (v961 < 0)
  {
    operator delete(v960);
  }

  if (v964 < 0)
  {
    operator delete(v963);
  }

  if (v966 < 0)
  {
    operator delete(v965);
  }

  if (v969 < 0)
  {
    operator delete(v968);
  }

  if (v971 < 0)
  {
    operator delete(v970);
  }

  if (v974 < 0)
  {
    operator delete(v973);
  }

  if (v976 < 0)
  {
    operator delete(v975);
  }

  if (v979 < 0)
  {
    operator delete(v978);
  }

  if (v981 < 0)
  {
    operator delete(v980);
  }

  if (v984 < 0)
  {
    operator delete(v983);
  }

  if (v986 < 0)
  {
    operator delete(v985);
  }

  if (v989 < 0)
  {
    operator delete(v988);
  }

  if (v991 < 0)
  {
    operator delete(v990);
  }

  if (v994 < 0)
  {
    operator delete(v993);
  }

  if (v996 < 0)
  {
    operator delete(v995);
  }

  if (v999 < 0)
  {
    operator delete(v998);
  }

  if (v1001 < 0)
  {
    operator delete(v1000);
  }

  if (v1004 < 0)
  {
    operator delete(v1003);
  }

  if (v1006 < 0)
  {
    operator delete(v1005);
  }

  if (v1009 < 0)
  {
    operator delete(v1008);
  }

  if (v1011 < 0)
  {
    operator delete(v1010);
  }

  if (v1014 < 0)
  {
    operator delete(v1013);
  }

  if (v1016 < 0)
  {
    operator delete(v1015);
  }

  if (v1019 < 0)
  {
    operator delete(v1018);
  }

  if (v1021 < 0)
  {
    operator delete(v1020);
  }

  if (v1024 < 0)
  {
    operator delete(v1023);
  }

  if (v1026 < 0)
  {
    operator delete(v1025);
  }

  if (v1029 < 0)
  {
    operator delete(v1028);
  }

  if (v1031 < 0)
  {
    operator delete(v1030);
  }

  if (v1034 < 0)
  {
    operator delete(v1033);
  }

  if (v1036 < 0)
  {
    operator delete(v1035);
  }

  if (v1039 < 0)
  {
    operator delete(v1038);
  }

  if (v1041 < 0)
  {
    operator delete(v1040);
  }

  if (v1044 < 0)
  {
    operator delete(v1043);
  }

  if (v1046 < 0)
  {
    operator delete(v1045);
  }

  if (v1049 < 0)
  {
    operator delete(v1048);
  }

  if (v1051 < 0)
  {
    operator delete(v1050);
  }

  if (v1054 < 0)
  {
    operator delete(v1053);
  }

  if (v1056 < 0)
  {
    operator delete(v1055);
  }

  if (v1059 < 0)
  {
    operator delete(v1058);
  }

  if (v1061 < 0)
  {
    operator delete(v1060);
  }

  if (v1064 < 0)
  {
    operator delete(v1063);
  }

  if (v1066 < 0)
  {
    operator delete(v1065);
  }

  if (v1069 < 0)
  {
    operator delete(v1068);
  }

  if (v1071 < 0)
  {
    operator delete(v1070);
  }

  if (v1074 < 0)
  {
    operator delete(v1073);
  }

  if (v1076 < 0)
  {
    operator delete(v1075);
  }

  if (v1079 < 0)
  {
    operator delete(v1078);
  }

  if (v1081 < 0)
  {
    operator delete(v1080);
  }

  if (v1084 < 0)
  {
    operator delete(v1083);
  }

  if (v1086 < 0)
  {
    operator delete(v1085);
  }

  if (v1089 < 0)
  {
    operator delete(v1088);
  }

  if (v1091 < 0)
  {
    operator delete(v1090);
  }

  if (v1094 < 0)
  {
    operator delete(v1093);
  }

  if (v1096 < 0)
  {
    operator delete(v1095);
  }

  if (v1099 < 0)
  {
    operator delete(v1098);
  }

  if (v1101 < 0)
  {
    operator delete(v1100);
  }

  if (v1104 < 0)
  {
    operator delete(v1103);
  }

  if (v1106 < 0)
  {
    operator delete(v1105);
  }

  if (v1109 < 0)
  {
    operator delete(v1108);
  }

  if (v1111 < 0)
  {
    operator delete(v1110);
  }

  if (v1114 < 0)
  {
    operator delete(v1113);
  }

  if (v1116 < 0)
  {
    operator delete(v1115);
  }

  if (v1119 < 0)
  {
    operator delete(v1118);
  }

  if (v1121 < 0)
  {
    operator delete(v1120);
  }

  if (v1124 < 0)
  {
    operator delete(v1123);
  }

  if (v1126 < 0)
  {
    operator delete(v1125);
  }

  if (v1129 < 0)
  {
    operator delete(v1128);
  }

  if (v1131 < 0)
  {
    operator delete(v1130);
  }

  if (v1134 < 0)
  {
    operator delete(v1133);
  }

  if (v1136 < 0)
  {
    operator delete(v1135);
  }

  if (v1139 < 0)
  {
    operator delete(v1138);
  }

  if (v1141 < 0)
  {
    operator delete(v1140);
  }

  if (v1144 < 0)
  {
    operator delete(v1143);
  }

  if (v1146 < 0)
  {
    operator delete(v1145);
  }

  if (v1149 < 0)
  {
    operator delete(v1148);
  }

  if (v1151 < 0)
  {
    operator delete(v1150);
  }

  if (v1154 < 0)
  {
    operator delete(v1153);
  }

  if (v1156 < 0)
  {
    operator delete(v1155);
  }

  if (v1159 < 0)
  {
    operator delete(v1158);
  }

  if (v1161 < 0)
  {
    operator delete(v1160);
  }

  if (v1164 < 0)
  {
    operator delete(v1163);
  }

  if (v1166 < 0)
  {
    operator delete(v1165);
  }

  if (v1169 < 0)
  {
    operator delete(v1168);
  }

  if (v1171 < 0)
  {
    operator delete(v1170);
  }

  if (v1174 < 0)
  {
    operator delete(v1173);
  }

  if (v1176 < 0)
  {
    operator delete(v1175);
  }

  if (v1179 < 0)
  {
    operator delete(v1178);
  }

  if (v1181 < 0)
  {
    operator delete(v1180);
  }

  if (v1184 < 0)
  {
    operator delete(v1183);
  }

  if (v1186 < 0)
  {
    operator delete(v1185);
  }

  if (v1189 < 0)
  {
    operator delete(v1188);
  }

  if (v1191 < 0)
  {
    operator delete(v1190);
  }

  if (v1194 < 0)
  {
    operator delete(v1193);
  }

  if (v1196 < 0)
  {
    operator delete(v1195);
  }

  if (v1199 < 0)
  {
    operator delete(v1198);
  }

  if (v1201 < 0)
  {
    operator delete(v1200);
  }

  if (v1204 < 0)
  {
    operator delete(v1203);
  }

  if (v1206 < 0)
  {
    operator delete(v1205);
  }

  if (v1209 < 0)
  {
    operator delete(v1208);
  }

  if (v1211 < 0)
  {
    operator delete(v1210);
  }

  if (v1214 < 0)
  {
    operator delete(v1213);
  }

  if (v1216 < 0)
  {
    operator delete(v1215);
  }

  if (v1219 < 0)
  {
    operator delete(v1218);
  }

  if (v1221 < 0)
  {
    operator delete(v1220);
  }

  if (v1224 < 0)
  {
    operator delete(v1223);
  }

  if (v1226 < 0)
  {
    operator delete(v1225);
  }

  if (v1229 < 0)
  {
    operator delete(v1228);
  }

  if (v1231 < 0)
  {
    operator delete(v1230);
  }

  if (v1234 < 0)
  {
    operator delete(v1233);
  }

  if (v1236 < 0)
  {
    operator delete(v1235);
  }

  if (v1239 < 0)
  {
    operator delete(v1238);
  }

  if (v1241 < 0)
  {
    operator delete(v1240);
  }

  if (v1244 < 0)
  {
    operator delete(v1243);
  }

  if (v1246 < 0)
  {
    operator delete(v1245);
  }

  if (v1249 < 0)
  {
    operator delete(v1248);
  }

  if (v1251 < 0)
  {
    operator delete(v1250);
  }

  if (v1254 < 0)
  {
    operator delete(v1253);
  }
}

void sub_1F300E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  v80 = -13944;
  v81 = v74;
  do
  {
    v81 = sub_195CE20(v81) - 56;
    v80 += 56;
  }

  while (v80);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(*(v75 + 32));
  }

  if (a54 < 0)
  {
    operator delete(*(v75 + 56));
  }

  if (a61 < 0)
  {
    operator delete(*(v75 + 88));
  }

  if (a65 < 0)
  {
    operator delete(*(v75 + 112));
  }

  if (a66 < 0)
  {
    operator delete(*(v75 + 144));
  }

  if (a67 < 0)
  {
    operator delete(*(v75 + 168));
  }

  if (a68 < 0)
  {
    operator delete(*(v75 + 200));
  }

  if (a69 < 0)
  {
    operator delete(*(v75 + 224));
  }

  if (a70 < 0)
  {
    operator delete(*(v75 + 256));
  }

  if (a71 < 0)
  {
    operator delete(*(v75 + 280));
  }

  if (a72 < 0)
  {
    operator delete(*(v75 + 312));
  }

  if (a73 < 0)
  {
    operator delete(*(v75 + 336));
  }

  if (a74 < 0)
  {
    operator delete(*(v75 + 368));
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(*(v75 + 392));
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(*(v75 + 424));
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(*(v75 + 448));
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(*(v75 + 480));
  }

  if (SLOBYTE(STACK[0x287]) < 0)
  {
    operator delete(*(v75 + 504));
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(*(v75 + 536));
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(*(v75 + 560));
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(*(v75 + 592));
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(*(v75 + 616));
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(*(v75 + 648));
  }

  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(*(v75 + 672));
  }

  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(*(v75 + 704));
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(*(v75 + 728));
  }

  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(*(v75 + 760));
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(*(v75 + 784));
  }

  if (SLOBYTE(STACK[0x3BF]) < 0)
  {
    operator delete(*(v75 + 816));
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(*(v75 + 840));
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(*(v75 + 872));
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(*(v75 + 896));
  }

  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(*(v75 + 928));
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(*(v75 + 952));
  }

  if (SLOBYTE(STACK[0x467]) < 0)
  {
    operator delete(*(v75 + 984));
  }

  if (SLOBYTE(STACK[0x47F]) < 0)
  {
    operator delete(*(v75 + 1008));
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(*(v75 + 1040));
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(*(v75 + 1064));
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(*(v75 + 1096));
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(*(v75 + 1120));
  }

  if (SLOBYTE(STACK[0x50F]) < 0)
  {
    operator delete(*(v75 + 1152));
  }

  if (SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(*(v75 + 1176));
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(*(v75 + 1208));
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(*(v75 + 1232));
  }

  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(*(v75 + 1264));
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(*(v75 + 1288));
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(*(v75 + 1320));
  }

  if (SLOBYTE(STACK[0x5CF]) < 0)
  {
    operator delete(*(v75 + 1344));
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(*(v75 + 1376));
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(*(v75 + 1400));
  }

  if (SLOBYTE(STACK[0x627]) < 0)
  {
    operator delete(*(v75 + 1432));
  }

  if (SLOBYTE(STACK[0x63F]) < 0)
  {
    operator delete(*(v75 + 1456));
  }

  if (SLOBYTE(STACK[0x65F]) < 0)
  {
    operator delete(*(v75 + 1488));
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(*(v75 + 1512));
  }

  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(*(v75 + 1544));
  }

  if (SLOBYTE(STACK[0x6AF]) < 0)
  {
    operator delete(*(v75 + 1568));
  }

  if (SLOBYTE(STACK[0x6CF]) < 0)
  {
    operator delete(*(v75 + 1600));
  }

  if (SLOBYTE(STACK[0x6E7]) < 0)
  {
    operator delete(*(v75 + 1624));
  }

  if (SLOBYTE(STACK[0x707]) < 0)
  {
    operator delete(*(v75 + 1656));
  }

  if (SLOBYTE(STACK[0x71F]) < 0)
  {
    operator delete(*(v75 + 1680));
  }

  if (SLOBYTE(STACK[0x73F]) < 0)
  {
    operator delete(*(v75 + 1712));
  }

  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(*(v75 + 1736));
  }

  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(*(v75 + 1768));
  }

  if (SLOBYTE(STACK[0x78F]) < 0)
  {
    operator delete(*(v75 + 1792));
  }

  if (SLOBYTE(STACK[0x7AF]) < 0)
  {
    operator delete(*(v75 + 1824));
  }

  if (SLOBYTE(STACK[0x7C7]) < 0)
  {
    operator delete(*(v75 + 1848));
  }

  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(*(v75 + 1880));
  }

  if (SLOBYTE(STACK[0x7FF]) < 0)
  {
    operator delete(*(v75 + 1904));
  }

  if (SLOBYTE(STACK[0x81F]) < 0)
  {
    operator delete(*(v75 + 1936));
  }

  if (SLOBYTE(STACK[0x837]) < 0)
  {
    operator delete(*(v75 + 1960));
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(*(v75 + 1992));
  }

  if (SLOBYTE(STACK[0x86F]) < 0)
  {
    operator delete(*(v75 + 2016));
  }

  if (SLOBYTE(STACK[0x88F]) < 0)
  {
    operator delete(*(v75 + 2048));
  }

  if (SLOBYTE(STACK[0x8A7]) < 0)
  {
    operator delete(*(v75 + 2072));
  }

  if (SLOBYTE(STACK[0x8C7]) < 0)
  {
    operator delete(*(v75 + 2104));
  }

  if (SLOBYTE(STACK[0x8DF]) < 0)
  {
    operator delete(*(v75 + 2128));
  }

  if (SLOBYTE(STACK[0x8FF]) < 0)
  {
    operator delete(*(v75 + 2160));
  }

  if (SLOBYTE(STACK[0x917]) < 0)
  {
    operator delete(*(v75 + 2184));
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(*(v75 + 2216));
  }

  if (SLOBYTE(STACK[0x94F]) < 0)
  {
    operator delete(*(v75 + 2240));
  }

  if (SLOBYTE(STACK[0x96F]) < 0)
  {
    operator delete(*(v75 + 2272));
  }

  if (SLOBYTE(STACK[0x987]) < 0)
  {
    operator delete(*(v75 + 2296));
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(*(v75 + 2328));
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(*(v75 + 2352));
  }

  if (SLOBYTE(STACK[0x9DF]) < 0)
  {
    operator delete(*(v75 + 2384));
  }

  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(*(v75 + 2408));
  }

  if (SLOBYTE(STACK[0xA17]) < 0)
  {
    operator delete(*(v75 + 2440));
  }

  if (SLOBYTE(STACK[0xA2F]) < 0)
  {
    operator delete(*(v75 + 2464));
  }

  if (SLOBYTE(STACK[0xA4F]) < 0)
  {
    operator delete(*(v75 + 2496));
  }

  if (SLOBYTE(STACK[0xA67]) < 0)
  {
    operator delete(*(v75 + 2520));
  }

  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(*(v75 + 2552));
  }

  if (SLOBYTE(STACK[0xA9F]) < 0)
  {
    operator delete(*(v75 + 2576));
  }

  if (SLOBYTE(STACK[0xABF]) < 0)
  {
    operator delete(*(v75 + 2608));
  }

  if (SLOBYTE(STACK[0xAD7]) < 0)
  {
    operator delete(*(v75 + 2632));
  }

  if (SLOBYTE(STACK[0xAF7]) < 0)
  {
    operator delete(*(v75 + 2664));
  }

  if (SLOBYTE(STACK[0xB0F]) < 0)
  {
    operator delete(*(v75 + 2688));
  }

  if (SLOBYTE(STACK[0xB2F]) < 0)
  {
    operator delete(*(v75 + 2720));
  }

  if (SLOBYTE(STACK[0xB47]) < 0)
  {
    operator delete(*(v75 + 2744));
  }

  if (SLOBYTE(STACK[0xB67]) < 0)
  {
    operator delete(*(v75 + 2776));
  }

  if (SLOBYTE(STACK[0xB7F]) < 0)
  {
    operator delete(*(v75 + 2800));
  }

  if (SLOBYTE(STACK[0xB9F]) < 0)
  {
    operator delete(*(v75 + 2832));
  }

  if (SLOBYTE(STACK[0xBB7]) < 0)
  {
    operator delete(*(v75 + 2856));
  }

  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(*(v75 + 2888));
  }

  if (SLOBYTE(STACK[0xBEF]) < 0)
  {
    operator delete(*(v75 + 2912));
  }

  if (SLOBYTE(STACK[0xC0F]) < 0)
  {
    operator delete(*(v75 + 2944));
  }

  if (SLOBYTE(STACK[0xC27]) < 0)
  {
    operator delete(*(v75 + 2968));
  }

  if (SLOBYTE(STACK[0xC47]) < 0)
  {
    operator delete(*(v75 + 3000));
  }

  if (SLOBYTE(STACK[0xC5F]) < 0)
  {
    operator delete(*(v75 + 3024));
  }

  if (SLOBYTE(STACK[0xC7F]) < 0)
  {
    operator delete(*(v75 + 3056));
  }

  if (SLOBYTE(STACK[0xC97]) < 0)
  {
    operator delete(*(v75 + 3080));
  }

  if (SLOBYTE(STACK[0xCB7]) < 0)
  {
    operator delete(*(v75 + 3112));
  }

  if (SLOBYTE(STACK[0xCCF]) < 0)
  {
    operator delete(*(v75 + 3136));
  }

  if (SLOBYTE(STACK[0xCEF]) < 0)
  {
    operator delete(*(v75 + 3168));
  }

  if (SLOBYTE(STACK[0xD07]) < 0)
  {
    operator delete(*(v75 + 3192));
  }

  if (SLOBYTE(STACK[0xD27]) < 0)
  {
    operator delete(*(v75 + 3224));
  }

  if (SLOBYTE(STACK[0xD3F]) < 0)
  {
    operator delete(*(v75 + 3248));
  }

  if (SLOBYTE(STACK[0xD5F]) < 0)
  {
    operator delete(*(v75 + 3280));
  }

  if (SLOBYTE(STACK[0xD77]) < 0)
  {
    operator delete(*(v75 + 3304));
  }

  if (SLOBYTE(STACK[0xD97]) < 0)
  {
    operator delete(*(v75 + 3336));
  }

  if (SLOBYTE(STACK[0xDAF]) < 0)
  {
    operator delete(*(v75 + 3360));
  }

  if (SLOBYTE(STACK[0xDCF]) < 0)
  {
    operator delete(*(v75 + 3392));
  }

  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(*(v75 + 3416));
  }

  if (SLOBYTE(STACK[0xE07]) < 0)
  {
    operator delete(*(v75 + 3448));
  }

  if (SLOBYTE(STACK[0xE1F]) < 0)
  {
    operator delete(*(v75 + 3472));
  }

  if (SLOBYTE(STACK[0xE3F]) < 0)
  {
    operator delete(*(v75 + 3504));
  }

  if (SLOBYTE(STACK[0xE57]) < 0)
  {
    operator delete(*(v75 + 3528));
  }

  if (SLOBYTE(STACK[0xE77]) < 0)
  {
    operator delete(*(v75 + 3560));
  }

  if (SLOBYTE(STACK[0xE8F]) < 0)
  {
    operator delete(*(v75 + 3584));
  }

  if (SLOBYTE(STACK[0xEAF]) < 0)
  {
    operator delete(*(v75 + 3616));
  }

  if (SLOBYTE(STACK[0xEC7]) < 0)
  {
    operator delete(*(v75 + 3640));
  }

  if (SLOBYTE(STACK[0xEE7]) < 0)
  {
    operator delete(*(v75 + 3672));
  }

  if (SLOBYTE(STACK[0xEFF]) < 0)
  {
    operator delete(*(v75 + 3696));
  }

  if (SLOBYTE(STACK[0xF1F]) < 0)
  {
    operator delete(*(v75 + 3728));
  }

  if (SLOBYTE(STACK[0xF37]) < 0)
  {
    operator delete(*(v75 + 3752));
  }

  if (SLOBYTE(STACK[0xF57]) < 0)
  {
    operator delete(*(v75 + 3784));
  }

  if (SLOBYTE(STACK[0xF6F]) < 0)
  {
    operator delete(*(v75 + 3808));
  }

  if (*(v75 + 3863) < 0)
  {
    operator delete(*(v75 + 3840));
  }

  if (*(v75 + 3887) < 0)
  {
    operator delete(*(v75 + 3864));
  }

  if (*(v75 + 3919) < 0)
  {
    operator delete(*(v75 + 3896));
  }

  if (*(v75 + 3943) < 0)
  {
    operator delete(*(v75 + 3920));
  }

  if (*(v75 + 3975) < 0)
  {
    operator delete(*(v75 + 3952));
  }

  if (*(v75 + 3999) < 0)
  {
    operator delete(*(v75 + 3976));
  }

  if (*(v75 + 4031) < 0)
  {
    operator delete(*(v75 + 4008));
  }

  if (*(v75 + 4055) < 0)
  {
    operator delete(*(v75 + 4032));
  }

  if (*(v75 + 4087) < 0)
  {
    operator delete(*(v75 + 4064));
  }

  if (*(v78 + 23) < 0)
  {
    operator delete(*v78);
  }

  if (*(v78 + 55) < 0)
  {
    operator delete(*(v78 + 32));
  }

  if (*(v78 + 79) < 0)
  {
    operator delete(*(v78 + 56));
  }

  if (*(v78 + 111) < 0)
  {
    operator delete(*(v78 + 88));
  }

  if (*(v78 + 135) < 0)
  {
    operator delete(*(v78 + 112));
  }

  if (*(v78 + 167) < 0)
  {
    operator delete(*(v78 + 144));
  }

  if (*(v78 + 191) < 0)
  {
    operator delete(*(v78 + 168));
  }

  if (*(v78 + 223) < 0)
  {
    operator delete(*(v78 + 200));
  }

  if (*(v78 + 247) < 0)
  {
    operator delete(*(v78 + 224));
  }

  if (*(v78 + 279) < 0)
  {
    operator delete(*(v78 + 256));
  }

  if (*(v78 + 303) < 0)
  {
    operator delete(*(v78 + 280));
  }

  if (*(v78 + 335) < 0)
  {
    operator delete(*(v78 + 312));
  }

  if (*(v78 + 359) < 0)
  {
    operator delete(*(v78 + 336));
  }

  if (*(v78 + 391) < 0)
  {
    operator delete(*(v78 + 368));
  }

  if (*(v78 + 415) < 0)
  {
    operator delete(*(v78 + 392));
  }

  if (*(v78 + 447) < 0)
  {
    operator delete(*(v78 + 424));
  }

  if (*(v78 + 471) < 0)
  {
    operator delete(*(v78 + 448));
  }

  if (*(v78 + 503) < 0)
  {
    operator delete(*(v78 + 480));
  }

  if (*(v78 + 527) < 0)
  {
    operator delete(*(v78 + 504));
  }

  if (*(v78 + 559) < 0)
  {
    operator delete(*(v78 + 536));
  }

  if (*(v78 + 583) < 0)
  {
    operator delete(*(v78 + 560));
  }

  if (*(v78 + 615) < 0)
  {
    operator delete(*(v78 + 592));
  }

  if (*(v78 + 639) < 0)
  {
    operator delete(*(v78 + 616));
  }

  if (*(v78 + 671) < 0)
  {
    operator delete(*(v78 + 648));
  }

  if (*(v78 + 695) < 0)
  {
    operator delete(*(v78 + 672));
  }

  if (*(v78 + 727) < 0)
  {
    operator delete(*(v78 + 704));
  }

  if (*(v78 + 751) < 0)
  {
    operator delete(*(v78 + 728));
  }

  if (*(v78 + 783) < 0)
  {
    operator delete(*(v78 + 760));
  }

  if (*(v78 + 807) < 0)
  {
    operator delete(*(v78 + 784));
  }

  if (*(v78 + 839) < 0)
  {
    operator delete(*(v78 + 816));
  }

  if (*(v78 + 863) < 0)
  {
    operator delete(*(v78 + 840));
  }

  if (*(v78 + 895) < 0)
  {
    operator delete(*(v78 + 872));
  }

  if (*(v78 + 919) < 0)
  {
    operator delete(*(v78 + 896));
  }

  if (*(v78 + 951) < 0)
  {
    operator delete(*(v78 + 928));
  }

  if (*(v78 + 975) < 0)
  {
    operator delete(*(v78 + 952));
  }

  if (*(v78 + 1007) < 0)
  {
    operator delete(*(v78 + 984));
  }

  if (*(v78 + 1031) < 0)
  {
    operator delete(*(v78 + 1008));
  }

  if (*(v78 + 1063) < 0)
  {
    operator delete(*(v78 + 1040));
  }

  if (*(v78 + 1087) < 0)
  {
    operator delete(*(v78 + 1064));
  }

  if (*(v78 + 1119) < 0)
  {
    operator delete(*(v78 + 1096));
  }

  if (*(v78 + 1143) < 0)
  {
    operator delete(*(v78 + 1120));
  }

  if (*(v78 + 1175) < 0)
  {
    operator delete(*(v78 + 1152));
  }

  if (*(v78 + 1199) < 0)
  {
    operator delete(*(v78 + 1176));
  }

  if (*(v78 + 1231) < 0)
  {
    operator delete(*(v78 + 1208));
  }

  if (*(v78 + 1255) < 0)
  {
    operator delete(*(v78 + 1232));
  }

  if (*(v78 + 1287) < 0)
  {
    operator delete(*(v78 + 1264));
  }

  if (*(v78 + 1311) < 0)
  {
    operator delete(*(v78 + 1288));
  }

  if (*(v78 + 1343) < 0)
  {
    operator delete(*(v78 + 1320));
  }

  if (*(v78 + 1367) < 0)
  {
    operator delete(*(v78 + 1344));
  }

  if (*(v78 + 1399) < 0)
  {
    operator delete(*(v78 + 1376));
  }

  if (*(v78 + 1423) < 0)
  {
    operator delete(*(v78 + 1400));
  }

  if (*(v78 + 1455) < 0)
  {
    operator delete(*(v78 + 1432));
  }

  if (*(v78 + 1479) < 0)
  {
    operator delete(*(v78 + 1456));
  }

  if (*(v78 + 1511) < 0)
  {
    operator delete(*(v78 + 1488));
  }

  if (*(v78 + 1535) < 0)
  {
    operator delete(*(v78 + 1512));
  }

  if (*(v78 + 1567) < 0)
  {
    operator delete(*(v78 + 1544));
  }

  if (*(v78 + 1591) < 0)
  {
    operator delete(*(v78 + 1568));
  }

  if (*(v78 + 1623) < 0)
  {
    operator delete(*(v78 + 1600));
  }

  if (*(v78 + 1647) < 0)
  {
    operator delete(*(v78 + 1624));
  }

  if (*(v78 + 1679) < 0)
  {
    operator delete(*(v78 + 1656));
  }

  if (*(v78 + 1703) < 0)
  {
    operator delete(*(v78 + 1680));
  }

  if (*(v78 + 1735) < 0)
  {
    operator delete(*(v78 + 1712));
  }

  if (*(v78 + 1759) < 0)
  {
    operator delete(*(v78 + 1736));
  }

  if (*(v78 + 1791) < 0)
  {
    operator delete(*(v78 + 1768));
  }

  if (*(v78 + 1815) < 0)
  {
    operator delete(*(v78 + 1792));
  }

  if (*(v78 + 1847) < 0)
  {
    operator delete(*(v78 + 1824));
  }

  if (*(v78 + 1871) < 0)
  {
    operator delete(*(v78 + 1848));
  }

  if (*(v78 + 1903) < 0)
  {
    operator delete(*(v78 + 1880));
  }

  if (*(v78 + 1927) < 0)
  {
    operator delete(*(v78 + 1904));
  }

  if (*(v78 + 1959) < 0)
  {
    operator delete(*(v78 + 1936));
  }

  if (*(v78 + 1983) < 0)
  {
    operator delete(*(v78 + 1960));
  }

  if (*(v78 + 2015) < 0)
  {
    operator delete(*(v78 + 1992));
  }

  if (*(v78 + 2039) < 0)
  {
    operator delete(*(v78 + 2016));
  }

  if (*(v78 + 2071) < 0)
  {
    operator delete(*(v78 + 2048));
  }

  if (*(v78 + 2095) < 0)
  {
    operator delete(*(v78 + 2072));
  }

  if (*(v78 + 2127) < 0)
  {
    operator delete(*(v78 + 2104));
  }

  if (*(v78 + 2151) < 0)
  {
    operator delete(*(v78 + 2128));
  }

  if (*(v78 + 2183) < 0)
  {
    operator delete(*(v78 + 2160));
  }

  if (*(v78 + 2207) < 0)
  {
    operator delete(*(v78 + 2184));
  }

  if (*(v78 + 2239) < 0)
  {
    operator delete(*(v78 + 2216));
  }

  if (*(v78 + 2263) < 0)
  {
    operator delete(*(v78 + 2240));
  }

  if (*(v78 + 2295) < 0)
  {
    operator delete(*(v78 + 2272));
  }

  if (*(v78 + 2319) < 0)
  {
    operator delete(*(v78 + 2296));
  }

  if (*(v78 + 2351) < 0)
  {
    operator delete(*(v78 + 2328));
  }

  if (*(v78 + 2375) < 0)
  {
    operator delete(*(v78 + 2352));
  }

  if (*(v78 + 2407) < 0)
  {
    operator delete(*(v78 + 2384));
  }

  if (*(v78 + 2431) < 0)
  {
    operator delete(*(v78 + 2408));
  }

  if (*(v78 + 2463) < 0)
  {
    operator delete(*(v78 + 2440));
  }

  if (*(v78 + 2487) < 0)
  {
    operator delete(*(v78 + 2464));
  }

  if (*(v78 + 2519) < 0)
  {
    operator delete(*(v78 + 2496));
  }

  if (*(v78 + 2543) < 0)
  {
    operator delete(*(v78 + 2520));
  }

  if (*(v78 + 2575) < 0)
  {
    operator delete(*(v78 + 2552));
  }

  if (*(v78 + 2599) < 0)
  {
    operator delete(*(v78 + 2576));
  }

  if (*(v78 + 2631) < 0)
  {
    operator delete(*(v78 + 2608));
  }

  if (*(v78 + 2655) < 0)
  {
    operator delete(*(v78 + 2632));
  }

  if (*(v78 + 2687) < 0)
  {
    operator delete(*(v78 + 2664));
  }

  if (*(v78 + 2711) < 0)
  {
    operator delete(*(v78 + 2688));
  }

  if (*(v78 + 2743) < 0)
  {
    operator delete(*(v78 + 2720));
  }

  if (*(v78 + 2767) < 0)
  {
    operator delete(*(v78 + 2744));
  }

  if (*(v78 + 2799) < 0)
  {
    operator delete(*(v78 + 2776));
  }

  if (*(v78 + 2823) < 0)
  {
    operator delete(*(v78 + 2800));
  }

  if (*(v78 + 2855) < 0)
  {
    operator delete(*(v78 + 2832));
  }

  if (*(v78 + 2879) < 0)
  {
    operator delete(*(v78 + 2856));
  }

  if (*(v78 + 2911) < 0)
  {
    operator delete(*(v78 + 2888));
  }

  if (*(v78 + 2935) < 0)
  {
    operator delete(*(v78 + 2912));
  }

  if (*(v78 + 2967) < 0)
  {
    operator delete(*(v78 + 2944));
  }

  if (*(v78 + 2991) < 0)
  {
    operator delete(*(v78 + 2968));
  }

  if (*(v78 + 3023) < 0)
  {
    operator delete(*(v78 + 3000));
  }

  if (*(v78 + 3047) < 0)
  {
    operator delete(*(v78 + 3024));
  }

  if (*(v78 + 3079) < 0)
  {
    operator delete(*(v78 + 3056));
  }

  if (*(v78 + 3103) < 0)
  {
    operator delete(*(v78 + 3080));
  }

  if (*(v78 + 3135) < 0)
  {
    operator delete(*(v78 + 3112));
  }

  if (*(v78 + 3159) < 0)
  {
    operator delete(*(v78 + 3136));
  }

  if (*(v78 + 3191) < 0)
  {
    operator delete(*(v78 + 3168));
  }

  if (*(v78 + 3215) < 0)
  {
    operator delete(*(v78 + 3192));
  }

  if (*(v78 + 3247) < 0)
  {
    operator delete(*(v78 + 3224));
  }

  if (*(v78 + 3271) < 0)
  {
    operator delete(*(v78 + 3248));
  }

  if (*(v78 + 3303) < 0)
  {
    operator delete(*(v78 + 3280));
  }

  if (*(v78 + 3327) < 0)
  {
    operator delete(*(v78 + 3304));
  }

  if (*(v78 + 3359) < 0)
  {
    operator delete(*(v78 + 3336));
  }

  if (*(v78 + 3383) < 0)
  {
    operator delete(*(v78 + 3360));
  }

  if (*(v78 + 3415) < 0)
  {
    operator delete(*(v78 + 3392));
  }

  if (*(v78 + 3439) < 0)
  {
    operator delete(*(v78 + 3416));
  }

  if (*(v78 + 3471) < 0)
  {
    operator delete(*(v78 + 3448));
  }

  if (*(v78 + 3495) < 0)
  {
    operator delete(*(v78 + 3472));
  }

  if (*(v78 + 3527) < 0)
  {
    operator delete(*(v78 + 3504));
  }

  if (*(v78 + 3551) < 0)
  {
    operator delete(*(v78 + 3528));
  }

  if (*(v78 + 3583) < 0)
  {
    operator delete(*(v78 + 3560));
  }

  if (*(v78 + 3607) < 0)
  {
    operator delete(*(v78 + 3584));
  }

  if (*(v78 + 3639) < 0)
  {
    operator delete(*(v78 + 3616));
  }

  if (*(v78 + 3663) < 0)
  {
    operator delete(*(v78 + 3640));
  }

  if (*(v78 + 3695) < 0)
  {
    operator delete(*(v78 + 3672));
  }

  if (*(v78 + 3719) < 0)
  {
    operator delete(*(v78 + 3696));
  }

  if (*(v78 + 3751) < 0)
  {
    operator delete(*(v78 + 3728));
  }

  if (*(v78 + 3775) < 0)
  {
    operator delete(*(v78 + 3752));
  }

  if (*(v78 + 3807) < 0)
  {
    operator delete(*(v78 + 3784));
  }

  if (*(v78 + 3831) < 0)
  {
    operator delete(*(v78 + 3808));
  }

  if (*(v78 + 3863) < 0)
  {
    operator delete(*(v78 + 3840));
  }

  if (*(v78 + 3887) < 0)
  {
    operator delete(*(v78 + 3864));
  }

  if (*(v78 + 3919) < 0)
  {
    operator delete(*(v78 + 3896));
  }

  if (*(v78 + 3943) < 0)
  {
    operator delete(*(v78 + 3920));
  }

  if (*(v78 + 3975) < 0)
  {
    operator delete(*(v78 + 3952));
  }

  if (*(v78 + 3999) < 0)
  {
    operator delete(*(v78 + 3976));
  }

  if (*(v78 + 4031) < 0)
  {
    operator delete(*(v78 + 4008));
  }

  if (*(v78 + 4055) < 0)
  {
    operator delete(*(v78 + 4032));
  }

  if (*(v78 + 4087) < 0)
  {
    operator delete(*(v78 + 4064));
  }

  if (*(v77 + 23) < 0)
  {
    operator delete(*v77);
  }

  if (*(v77 + 55) < 0)
  {
    operator delete(*(v77 + 32));
  }

  if (*(v77 + 79) < 0)
  {
    operator delete(*(v77 + 56));
  }

  if (*(v77 + 111) < 0)
  {
    operator delete(*(v77 + 88));
  }

  if (*(v77 + 135) < 0)
  {
    operator delete(*(v77 + 112));
  }

  if (*(v77 + 167) < 0)
  {
    operator delete(*(v77 + 144));
  }

  if (*(v77 + 191) < 0)
  {
    operator delete(*(v77 + 168));
  }

  if (*(v77 + 223) < 0)
  {
    operator delete(*(v77 + 200));
  }

  if (*(v77 + 247) < 0)
  {
    operator delete(*(v77 + 224));
  }

  if (*(v77 + 279) < 0)
  {
    operator delete(*(v77 + 256));
  }

  if (*(v77 + 303) < 0)
  {
    operator delete(*(v77 + 280));
  }

  if (*(v77 + 335) < 0)
  {
    operator delete(*(v77 + 312));
  }

  if (*(v77 + 359) < 0)
  {
    operator delete(*(v77 + 336));
  }

  if (*(v77 + 391) < 0)
  {
    operator delete(*(v77 + 368));
  }

  if (*(v77 + 415) < 0)
  {
    operator delete(*(v77 + 392));
  }

  if (*(v77 + 447) < 0)
  {
    operator delete(*(v77 + 424));
  }

  if (*(v77 + 471) < 0)
  {
    operator delete(*(v77 + 448));
  }

  if (*(v77 + 503) < 0)
  {
    operator delete(*(v77 + 480));
  }

  if (*(v77 + 527) < 0)
  {
    operator delete(*(v77 + 504));
  }

  if (*(v77 + 559) < 0)
  {
    operator delete(*(v77 + 536));
  }

  if (*(v77 + 583) < 0)
  {
    operator delete(*(v77 + 560));
  }

  if (*(v77 + 615) < 0)
  {
    operator delete(*(v77 + 592));
  }

  if (*(v77 + 639) < 0)
  {
    operator delete(*(v77 + 616));
  }

  if (*(v77 + 671) < 0)
  {
    operator delete(*(v77 + 648));
  }

  if (*(v77 + 695) < 0)
  {
    operator delete(*(v77 + 672));
  }

  if (*(v77 + 727) < 0)
  {
    operator delete(*(v77 + 704));
  }

  if (*(v77 + 751) < 0)
  {
    operator delete(*(v77 + 728));
  }

  if (*(v77 + 783) < 0)
  {
    operator delete(*(v77 + 760));
  }

  if (*(v77 + 807) < 0)
  {
    operator delete(*(v77 + 784));
  }

  if (*(v77 + 839) < 0)
  {
    operator delete(*(v77 + 816));
  }

  if (*(v77 + 863) < 0)
  {
    operator delete(*(v77 + 840));
  }

  if (*(v77 + 895) < 0)
  {
    operator delete(*(v77 + 872));
  }

  if (*(v77 + 919) < 0)
  {
    operator delete(*(v77 + 896));
  }

  if (*(v77 + 951) < 0)
  {
    operator delete(*(v77 + 928));
  }

  if (*(v77 + 975) < 0)
  {
    operator delete(*(v77 + 952));
  }

  if (*(v77 + 1007) < 0)
  {
    operator delete(*(v77 + 984));
  }

  if (*(v77 + 1031) < 0)
  {
    operator delete(*(v77 + 1008));
  }

  if (*(v77 + 1063) < 0)
  {
    operator delete(*(v77 + 1040));
  }

  if (*(v77 + 1087) < 0)
  {
    operator delete(*(v77 + 1064));
  }

  if (*(v77 + 1119) < 0)
  {
    operator delete(*(v77 + 1096));
  }

  if (*(v77 + 1143) < 0)
  {
    operator delete(*(v77 + 1120));
  }

  if (*(v77 + 1175) < 0)
  {
    operator delete(*(v77 + 1152));
  }

  if (*(v77 + 1199) < 0)
  {
    operator delete(*(v77 + 1176));
  }

  if (*(v77 + 1231) < 0)
  {
    operator delete(*(v77 + 1208));
  }

  if (*(v77 + 1255) < 0)
  {
    operator delete(*(v77 + 1232));
  }

  if (*(v77 + 1287) < 0)
  {
    operator delete(*(v77 + 1264));
  }

  if (*(v77 + 1311) < 0)
  {
    operator delete(*(v77 + 1288));
  }

  if (*(v77 + 1343) < 0)
  {
    operator delete(*(v77 + 1320));
  }

  if (*(v77 + 1367) < 0)
  {
    operator delete(*(v77 + 1344));
  }

  if (*(v77 + 1399) < 0)
  {
    operator delete(*(v77 + 1376));
  }

  if (*(v77 + 1423) < 0)
  {
    operator delete(*(v77 + 1400));
  }

  if (*(v77 + 1455) < 0)
  {
    operator delete(*(v77 + 1432));
  }

  if (*(v77 + 1479) < 0)
  {
    operator delete(*(v77 + 1456));
  }

  if (*(v77 + 1511) < 0)
  {
    operator delete(*(v77 + 1488));
  }

  if (*(v77 + 1535) < 0)
  {
    operator delete(*(v77 + 1512));
  }

  if (*(v77 + 1567) < 0)
  {
    operator delete(*(v77 + 1544));
  }

  if (*(v77 + 1591) < 0)
  {
    operator delete(*(v77 + 1568));
  }

  if (*(v77 + 1623) < 0)
  {
    operator delete(*(v77 + 1600));
  }

  if (*(v77 + 1647) < 0)
  {
    operator delete(*(v77 + 1624));
  }

  if (*(v77 + 1679) < 0)
  {
    operator delete(*(v77 + 1656));
  }

  if (*(v77 + 1703) < 0)
  {
    operator delete(*(v77 + 1680));
  }

  if (*(v77 + 1735) < 0)
  {
    operator delete(*(v77 + 1712));
  }

  if (*(v77 + 1759) < 0)
  {
    operator delete(*(v77 + 1736));
  }

  if (*(v77 + 1791) < 0)
  {
    operator delete(*(v77 + 1768));
  }

  if (*(v77 + 1815) < 0)
  {
    operator delete(*(v77 + 1792));
  }

  if (*(v77 + 1847) < 0)
  {
    operator delete(*(v77 + 1824));
  }

  if (*(v77 + 1871) < 0)
  {
    operator delete(*(v77 + 1848));
  }

  if (*(v77 + 1903) < 0)
  {
    operator delete(*(v77 + 1880));
  }

  if (*(v77 + 1927) < 0)
  {
    operator delete(*(v77 + 1904));
  }

  if (*(v77 + 1959) < 0)
  {
    operator delete(*(v77 + 1936));
  }

  if (*(v77 + 1983) < 0)
  {
    operator delete(*(v77 + 1960));
  }

  if (*(v77 + 2015) < 0)
  {
    operator delete(*(v77 + 1992));
  }

  if (*(v77 + 2039) < 0)
  {
    operator delete(*(v77 + 2016));
  }

  if (*(v77 + 2071) < 0)
  {
    operator delete(*(v77 + 2048));
  }

  if (*(v77 + 2095) < 0)
  {
    operator delete(*(v77 + 2072));
  }

  if (*(v77 + 2127) < 0)
  {
    operator delete(*(v77 + 2104));
  }

  if (*(v77 + 2151) < 0)
  {
    operator delete(*(v77 + 2128));
  }

  if (*(v77 + 2183) < 0)
  {
    operator delete(*(v77 + 2160));
  }

  if (*(v77 + 2207) < 0)
  {
    operator delete(*(v77 + 2184));
  }

  if (*(v77 + 2239) < 0)
  {
    operator delete(*(v77 + 2216));
  }

  if (*(v77 + 2263) < 0)
  {
    operator delete(*(v77 + 2240));
  }

  if (*(v77 + 2295) < 0)
  {
    operator delete(*(v77 + 2272));
  }

  if (*(v77 + 2319) < 0)
  {
    operator delete(*(v77 + 2296));
  }

  if (*(v77 + 2351) < 0)
  {
    operator delete(*(v77 + 2328));
  }

  if (*(v77 + 2375) < 0)
  {
    operator delete(*(v77 + 2352));
  }

  if (*(v77 + 2407) < 0)
  {
    operator delete(*(v77 + 2384));
  }

  if (*(v77 + 2431) < 0)
  {
    operator delete(*(v77 + 2408));
  }

  if (*(v77 + 2463) < 0)
  {
    operator delete(*(v77 + 2440));
  }

  if (*(v77 + 2487) < 0)
  {
    operator delete(*(v77 + 2464));
  }

  if (*(v77 + 2519) < 0)
  {
    operator delete(*(v77 + 2496));
  }

  if (*(v77 + 2543) < 0)
  {
    operator delete(*(v77 + 2520));
  }

  if (*(v77 + 2575) < 0)
  {
    operator delete(*(v77 + 2552));
  }

  if (*(v77 + 2599) < 0)
  {
    operator delete(*(v77 + 2576));
  }

  if (*(v77 + 2631) < 0)
  {
    operator delete(*(v77 + 2608));
  }

  if (*(v77 + 2655) < 0)
  {
    operator delete(*(v77 + 2632));
  }

  if (*(v77 + 2687) < 0)
  {
    operator delete(*(v77 + 2664));
  }

  if (*(v77 + 2711) < 0)
  {
    operator delete(*(v77 + 2688));
  }

  if (*(v77 + 2743) < 0)
  {
    operator delete(*(v77 + 2720));
  }

  if (*(v77 + 2767) < 0)
  {
    operator delete(*(v77 + 2744));
  }

  if (*(v77 + 2799) < 0)
  {
    operator delete(*(v77 + 2776));
  }

  if (*(v77 + 2823) < 0)
  {
    operator delete(*(v77 + 2800));
  }

  if (*(v77 + 2855) < 0)
  {
    operator delete(*(v77 + 2832));
  }

  if (*(v77 + 2879) < 0)
  {
    operator delete(*(v77 + 2856));
  }

  if (*(v77 + 2911) < 0)
  {
    operator delete(*(v77 + 2888));
  }

  if (*(v77 + 2935) < 0)
  {
    operator delete(*(v77 + 2912));
  }

  if (*(v77 + 2967) < 0)
  {
    operator delete(*(v77 + 2944));
  }

  if (*(v77 + 2991) < 0)
  {
    operator delete(*(v77 + 2968));
  }

  if (*(v77 + 3023) < 0)
  {
    operator delete(*(v77 + 3000));
  }

  if (*(v77 + 3047) < 0)
  {
    operator delete(*(v77 + 3024));
  }

  if (*(v77 + 3079) < 0)
  {
    operator delete(*(v77 + 3056));
  }

  if (*(v77 + 3103) < 0)
  {
    operator delete(*(v77 + 3080));
  }

  if (*(v77 + 3135) < 0)
  {
    operator delete(*(v77 + 3112));
  }

  if (*(v77 + 3159) < 0)
  {
    operator delete(*(v77 + 3136));
  }

  if (*(v77 + 3191) < 0)
  {
    operator delete(*(v77 + 3168));
  }

  if (*(v77 + 3215) < 0)
  {
    operator delete(*(v77 + 3192));
  }

  if (*(v77 + 3247) < 0)
  {
    operator delete(*(v77 + 3224));
  }

  if (*(v77 + 3271) < 0)
  {
    operator delete(*(v77 + 3248));
  }

  if (*(v77 + 3303) < 0)
  {
    operator delete(*(v77 + 3280));
  }

  if (*(v77 + 3327) < 0)
  {
    operator delete(*(v77 + 3304));
  }

  if (*(v77 + 3359) < 0)
  {
    operator delete(*(v77 + 3336));
  }

  if (*(v77 + 3383) < 0)
  {
    operator delete(*(v77 + 3360));
  }

  if (*(v77 + 3415) < 0)
  {
    operator delete(*(v77 + 3392));
  }

  if (*(v77 + 3439) < 0)
  {
    operator delete(*(v77 + 3416));
  }

  if (*(v77 + 3471) < 0)
  {
    operator delete(*(v77 + 3448));
  }

  if (*(v77 + 3495) < 0)
  {
    operator delete(*(v77 + 3472));
  }

  if (*(v77 + 3527) < 0)
  {
    operator delete(*(v77 + 3504));
  }

  if (*(v77 + 3551) < 0)
  {
    operator delete(*(v77 + 3528));
  }

  if (*(v77 + 3583) < 0)
  {
    operator delete(*(v77 + 3560));
  }

  if (*(v77 + 3607) < 0)
  {
    operator delete(*(v77 + 3584));
  }

  if (*(v77 + 3639) < 0)
  {
    operator delete(*(v77 + 3616));
  }

  if (*(v77 + 3663) < 0)
  {
    operator delete(*(v77 + 3640));
  }

  if (*(v77 + 3695) < 0)
  {
    operator delete(*(v77 + 3672));
  }

  if (*(v77 + 3719) < 0)
  {
    operator delete(*(v77 + 3696));
  }

  if (*(v77 + 3751) < 0)
  {
    operator delete(*(v77 + 3728));
  }

  if (*(v77 + 3775) < 0)
  {
    operator delete(*(v77 + 3752));
  }

  if (*(v77 + 3807) < 0)
  {
    operator delete(*(v77 + 3784));
  }

  if (*(v77 + 3831) < 0)
  {
    operator delete(*(v77 + 3808));
  }

  if (*(v77 + 3863) < 0)
  {
    operator delete(*(v77 + 3840));
  }

  if (*(v77 + 3887) < 0)
  {
    operator delete(*(v77 + 3864));
  }

  if (*(v77 + 3919) < 0)
  {
    operator delete(*(v77 + 3896));
  }

  if (*(v77 + 3943) < 0)
  {
    operator delete(*(v77 + 3920));
  }

  if (*(v77 + 3975) < 0)
  {
    operator delete(*(v77 + 3952));
  }

  if (*(v77 + 3999) < 0)
  {
    operator delete(*(v77 + 3976));
  }

  if (*(v77 + 4031) < 0)
  {
    operator delete(*(v77 + 4008));
  }

  if (*(v77 + 4055) < 0)
  {
    operator delete(*(v77 + 4032));
  }

  if (*(v77 + 4087) < 0)
  {
    operator delete(*(v77 + 4064));
  }

  if (*(v76 + 23) < 0)
  {
    operator delete(*v76);
  }

  if (*(v76 + 55) < 0)
  {
    operator delete(*(v76 + 32));
  }

  if (*(v76 + 79) < 0)
  {
    operator delete(*(v76 + 56));
  }

  if (*(v76 + 111) < 0)
  {
    operator delete(*(v76 + 88));
  }

  if (*(v76 + 135) < 0)
  {
    operator delete(*(v76 + 112));
  }

  if (*(v76 + 167) < 0)
  {
    operator delete(*(v76 + 144));
  }

  if (*(v76 + 191) < 0)
  {
    operator delete(*(v76 + 168));
  }

  if (*(v76 + 223) < 0)
  {
    operator delete(*(v76 + 200));
  }

  if (*(v76 + 247) < 0)
  {
    operator delete(*(v76 + 224));
  }

  if (*(v76 + 279) < 0)
  {
    operator delete(*(v76 + 256));
  }

  if (*(v76 + 303) < 0)
  {
    operator delete(*(v76 + 280));
  }

  if (*(v76 + 335) < 0)
  {
    operator delete(*(v76 + 312));
  }

  if (*(v76 + 359) < 0)
  {
    operator delete(*(v76 + 336));
  }

  if (*(v76 + 391) < 0)
  {
    operator delete(*(v76 + 368));
  }

  if (*(v76 + 415) < 0)
  {
    operator delete(*(v76 + 392));
  }

  if (*(v76 + 447) < 0)
  {
    operator delete(*(v76 + 424));
  }

  if (*(v76 + 471) < 0)
  {
    operator delete(*(v76 + 448));
  }

  if (*(v76 + 503) < 0)
  {
    operator delete(*(v76 + 480));
  }

  if (*(v76 + 527) < 0)
  {
    operator delete(*(v76 + 504));
  }

  if (*(v76 + 559) < 0)
  {
    operator delete(*(v76 + 536));
  }

  if (*(v76 + 583) < 0)
  {
    operator delete(*(v76 + 560));
  }

  if (*(v76 + 615) < 0)
  {
    operator delete(*(v76 + 592));
  }

  if (*(v76 + 639) < 0)
  {
    operator delete(*(v76 + 616));
  }

  if (*(v76 + 671) < 0)
  {
    operator delete(*(v76 + 648));
  }

  if (*(v76 + 695) < 0)
  {
    operator delete(*(v76 + 672));
  }

  if (*(v76 + 727) < 0)
  {
    operator delete(*(v76 + 704));
  }

  if (*(v76 + 751) < 0)
  {
    operator delete(*(v76 + 728));
  }

  if (*(v76 + 783) < 0)
  {
    operator delete(*(v76 + 760));
  }

  if (*(v76 + 807) < 0)
  {
    operator delete(*(v76 + 784));
  }

  if (*(v76 + 839) < 0)
  {
    operator delete(*(v76 + 816));
  }

  if (*(v76 + 863) < 0)
  {
    operator delete(*(v76 + 840));
  }

  if (*(v76 + 895) < 0)
  {
    operator delete(*(v76 + 872));
  }

  if (*(v76 + 919) < 0)
  {
    operator delete(*(v76 + 896));
  }

  if (*(v76 + 951) < 0)
  {
    operator delete(*(v76 + 928));
  }

  if (*(v76 + 975) < 0)
  {
    operator delete(*(v76 + 952));
  }

  if (*(v76 + 1007) < 0)
  {
    operator delete(*(v76 + 984));
  }

  if (*(v76 + 1031) < 0)
  {
    operator delete(*(v76 + 1008));
  }

  if (*(v76 + 1063) < 0)
  {
    operator delete(*(v76 + 1040));
  }

  if (*(v76 + 1087) < 0)
  {
    operator delete(*(v76 + 1064));
  }

  if (*(v76 + 1119) < 0)
  {
    operator delete(*(v76 + 1096));
  }

  if (*(v76 + 1143) < 0)
  {
    operator delete(*(v76 + 1120));
  }

  if (*(v76 + 1175) < 0)
  {
    operator delete(*(v76 + 1152));
  }

  if (*(v76 + 1199) < 0)
  {
    operator delete(*(v76 + 1176));
  }

  if (*(v76 + 1231) < 0)
  {
    operator delete(*(v76 + 1208));
  }

  if (*(v76 + 1255) < 0)
  {
    operator delete(*(v76 + 1232));
  }

  if (*(v76 + 1287) < 0)
  {
    operator delete(*(v76 + 1264));
  }

  if (*(v76 + 1311) < 0)
  {
    operator delete(*(v76 + 1288));
  }

  if (*(v76 + 1343) < 0)
  {
    operator delete(*(v76 + 1320));
  }

  if (*(v76 + 1367) < 0)
  {
    operator delete(*(v76 + 1344));
  }

  if (*(v76 + 1399) < 0)
  {
    operator delete(*(v76 + 1376));
  }

  if (*(v76 + 1423) < 0)
  {
    operator delete(*(v76 + 1400));
  }

  if (*(v76 + 1455) < 0)
  {
    operator delete(*(v76 + 1432));
  }

  if (*(v76 + 1479) < 0)
  {
    operator delete(*(v76 + 1456));
  }

  if (*(v76 + 1511) < 0)
  {
    operator delete(*(v76 + 1488));
  }

  if (*(v76 + 1535) < 0)
  {
    operator delete(*(v76 + 1512));
  }

  if (*(v76 + 1567) < 0)
  {
    operator delete(*(v76 + 1544));
  }

  _Unwind_Resume(a1);
}