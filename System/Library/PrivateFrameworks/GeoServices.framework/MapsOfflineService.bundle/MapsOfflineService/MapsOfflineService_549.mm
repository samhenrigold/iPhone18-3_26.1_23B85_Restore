void sub_1E707A0(_Unwind_Exception *a1)
{
  STACK[0x9F0] = &STACK[0x7C0];
  sub_195E3E8(&STACK[0x9F0]);
  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  STACK[0xBD0] = &STACK[0x7D8];
  sub_195E3E8(&STACK[0xBD0]);
  if (*(v1 + 23) < 0)
  {
    operator delete(STACK[0x14A0]);
  }

  _Unwind_Resume(a1);
}

void sub_1E7232C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xBD0])
    {
      JUMPOUT(0x1E7231CLL);
    }
  }
}

void sub_1E723C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *(v16 - 24) = &a16;
  sub_19A2570((v16 - 24));
  _Unwind_Resume(a1);
}

void sub_1E723F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v11 = v8;
  if (*(v8 + 23) < 0)
  {
    sub_325C(&v357, *v8, *(v8 + 8));
  }

  else
  {
    v357 = *v8;
    v358 = *(v8 + 16);
  }

  memset(v195, 0, sizeof(v195));
  sub_68678C(v195, &v357, v359, 1uLL);
  if (*(v11 + 23) < 0)
  {
    sub_325C(v237, *v11, *(v11 + 8));
  }

  else
  {
    *v237 = *v11;
    v238 = *(v11 + 16);
  }

  memset(v194, 0, sizeof(v194));
  sub_68678C(v194, v237, v239, 1uLL);
  if (*(v11 + 23) < 0)
  {
    sub_325C(v219, *v11, *(v11 + 8));
  }

  else
  {
    *v219 = *v11;
    v220 = *(v11 + 16);
  }

  memset(v193, 0, sizeof(v193));
  sub_68678C(v193, v219, v221, 1uLL);
  sub_3608D0(v191, "");
  sub_3608D0(v189, "");
  sub_3608D0(__p, "");
  sub_1E78BA4(&v196, v195, v194, v193, v191, v189, __p);
  if (v188 < 0)
  {
    operator delete(__p[0]);
  }

  if (v190 < 0)
  {
    operator delete(v189[0]);
  }

  if (v192 < 0)
  {
    operator delete(v191[0]);
  }

  v348[0] = v193;
  sub_195E3E8(v348);
  if (SHIBYTE(v220) < 0)
  {
    operator delete(v219[0]);
  }

  v219[0] = v194;
  sub_195E3E8(v219);
  if (SHIBYTE(v238) < 0)
  {
    operator delete(v237[0]);
  }

  v237[0] = v195;
  sub_195E3E8(v237);
  if (SHIBYTE(v358) < 0)
  {
    operator delete(v357);
  }

  v112[0] = xmmword_2368410;
  v112[1] = xmmword_2368420;
  v112[2] = xmmword_2368430;
  v113 = 16843009;
  v114 = 1;
  v115 = 0;
  v116 = 0;
  v117 = xmmword_2368440;
  v118 = 0x4170000042480000;
  v119 = 8;
  v120 = 1;
  v121 = 0x3FD999999999999ALL;
  v122 = 0x10000003CLL;
  v123 = xmmword_2368450;
  v124 = xmmword_2368460;
  v125 = xmmword_2368470;
  v126 = xmmword_2368480;
  v127 = 16777473;
  sub_3608D0(v237, "en");
  sub_3608D0(v239, "es");
  sub_3608D0(&v240, "de");
  sub_3608D0(&v242, "fr");
  sub_3608D0(&v243[1], "it");
  sub_3608D0(&v244, "no");
  sub_3608D0(v245, "nb");
  sub_3608D0(&v247, "fi");
  sub_3608D0(&v248[1], "pt");
  sub_3608D0(&v249, "nl");
  sub_3608D0(v251, "sv");
  sub_3608D0(&v253, "is");
  sub_3608D0(v255, "da");
  sub_3608D0(&v256, "zh");
  sub_3608D0(v258, "ja");
  sub_3608D0(v260, "vi");
  sub_3608D0(v261, "th");
  sub_3608D0(&v262, "ms");
  sub_3608D0(v264, "tr");
  sub_3608D0(v266, "fil");
  sub_3608D0(v267, "bg");
  sub_3608D0(&v268, "ru");
  sub_3608D0(&v270, "ro");
  sub_3608D0(&v272, "pl");
  sub_3608D0(v274, "uk");
  sub_3608D0(&v275, "cs");
  sub_3608D0(v277, "el");
  sub_3608D0(v279, "cy");
  sub_3608D0(v280, "hu");
  sub_3608D0(&v281, "sk");
  sub_3608D0(v283, "hr");
  sub_3608D0(v285, "et");
  sub_3608D0(v286, "lt");
  sub_3608D0(&v287, "lv");
  sub_3608D0(v289, "mk");
  sub_3608D0(v291, "ca");
  sub_3608D0(v292, "bs");
  sub_3608D0(&v293, "sr");
  sub_3608D0(v295, "sq");
  sub_3608D0(v297, "hi");
  sub_3608D0(&v298, "id");
  sub_3608D0(&v299, "jv");
  sub_3608D0(v301, "fj");
  sub_3608D0(v303, "my");
  sub_3608D0(&v304, "km");
  sub_3608D0(&v305, "khm");
  sub_3608D0(v307, "bn");
  sub_3608D0(v309, "ben");
  sub_3608D0(v310, "dz");
  sub_3608D0(&v311, "ne");
  sub_3608D0(v313, "ur");
  sub_3608D0(v315, "kk");
  sub_3608D0(v316, "tk");
  sub_3608D0(&v317, "uz");
  memset(v128, 0, sizeof(v128));
  sub_68678C(v128, v237, &v319, 0x36uLL);
  v12 = 162;
  while (1)
  {
    if (SHIBYTE(v237[v12 - 1]) < 0)
    {
      operator delete(*&v236[v12 * 8 + 24]);
    }

    v12 -= 3;
    if (!(v12 * 8))
    {
      sub_3608D0(v237, "IL");
      sub_3608D0(v239, "TN");
      sub_3608D0(&v240, "MA");
      sub_3608D0(&v242, "IQ");
      sub_3608D0(&v243[1], "IR");
      sub_3608D0(&v244, "JO");
      sub_3608D0(v245, "LB");
      sub_3608D0(&v247, "LY");
      sub_3608D0(&v248[1], "EG");
      sub_3608D0(&v249, "OM");
      sub_3608D0(v251, "YE");
      sub_3608D0(&v253, "SA");
      sub_3608D0(v255, "SY");
      sub_3608D0(&v256, "BH");
      sub_3608D0(v258, "QA");
      sub_3608D0(v260, "AE");
      sub_3608D0(v261, "KW");
      sub_3608D0(&v262, "EH");
      sub_3608D0(v264, "NE");
      sub_3608D0(v266, "ML");
      sub_3608D0(v267, "TD");
      sub_3608D0(&v268, "MR");
      sub_3608D0(&v270, "SD");
      memset(v129, 0, sizeof(v129));
      sub_68678C(v129, v237, &v272, 0x17uLL);
      v13 = 69;
      while (1)
      {
        if (SHIBYTE(v237[v13 - 1]) < 0)
        {
          operator delete(*&v236[v13 * 8 + 24]);
        }

        v13 -= 3;
        if (!(v13 * 8))
        {
          sub_3608D0(v237, "6_7_4");
          v57 = v10;
          sub_3608D0(v239, "7_7_4");
          sub_3608D0(&v240, "8_7_4");
          sub_3608D0(&v242, "9_7_4");
          sub_3608D0(&v243[1], "10_7_4");
          sub_3608D0(&v244, "8_8_4");
          sub_3608D0(v245, "9_8_4");
          sub_3608D0(&v247, "10_8_4");
          sub_3608D0(&v248[1], "8_9_4");
          sub_3608D0(&v249, "9_9_4");
          sub_3608D0(v251, "10_9_4");
          memset(v130, 0, sizeof(v130));
          sub_68678C(v130, v237, &v253, 0xBuLL);
          v14 = 33;
          while (1)
          {
            if (SHIBYTE(v237[v14 - 1]) < 0)
            {
              operator delete(*&v236[v14 * 8 + 24]);
            }

            v14 -= 3;
            if (!(v14 * 8))
            {
              v131 = 15;
              v132 = 1;
              v133 = 0x400000010;
              v134 = 0u;
              v135 = 0u;
              v136 = 0u;
              v137 = 0x4008000000000000;
              v138 = 0x100000014;
              v139 = 10;
              v140 = 257;
              v141 = xmmword_2368490;
              v142 = xmmword_23684A0;
              sub_3608D0(v237, "browse_subcategory_gasstations");
              sub_3608D0(v239, "browse_subcategory_parking");
              sub_3608D0(&v240, "browse_subcategory_restaurants");
              sub_3608D0(&v242, "browse_subcategory_coffee_shops");
              sub_3608D0(&v243[1], "browse_subcategory_groceries");
              memset(v143, 0, sizeof(v143));
              sub_68678C(v143, v237, &v244, 5uLL);
              v15 = 0;
              while (1)
              {
                if (SHIBYTE(v243[v15 + 3]) < 0)
                {
                  operator delete(v243[v15 + 1]);
                }

                v15 -= 3;
                if (v15 == -15)
                {
                  sub_3608D0(v237, "browse_subcategory_gasstations");
                  sub_3608D0(v239, "browse_subcategory_parking");
                  sub_3608D0(&v240, "browse_subcategory_restaurants");
                  sub_3608D0(&v242, "browse_subcategory_coffee_shops");
                  sub_3608D0(&v243[1], "browse_subcategory_groceries");
                  memset(v144, 0, sizeof(v144));
                  sub_68678C(v144, v237, &v244, 5uLL);
                  v16 = 0;
                  while (1)
                  {
                    if (SHIBYTE(v243[v16 + 3]) < 0)
                    {
                      operator delete(v243[v16 + 1]);
                    }

                    v16 -= 3;
                    if (v16 == -15)
                    {
                      sub_3608D0(v237, "browse_subcategory_evcharger_carplay");
                      sub_3608D0(v239, "browse_subcategory_parking");
                      sub_3608D0(&v240, "browse_subcategory_restaurants");
                      sub_3608D0(&v242, "browse_subcategory_coffee_shops");
                      sub_3608D0(&v243[1], "browse_subcategory_groceries");
                      memset(v145, 0, sizeof(v145));
                      sub_68678C(v145, v237, &v244, 5uLL);
                      v17 = 0;
                      while (1)
                      {
                        if (SHIBYTE(v243[v17 + 3]) < 0)
                        {
                          operator delete(v243[v17 + 1]);
                        }

                        v17 -= 3;
                        if (v17 == -15)
                        {
                          sub_3608D0(v237, "browse_subcategory_gasstations");
                          sub_3608D0(v239, "browse_subcategory_parking");
                          sub_3608D0(&v240, "browse_subcategory_restaurants");
                          sub_3608D0(&v242, "browse_subcategory_coffee_shops");
                          sub_3608D0(&v243[1], "browse_subcategory_groceries");
                          memset(v146, 0, sizeof(v146));
                          sub_68678C(v146, v237, &v244, 5uLL);
                          v18 = 0;
                          while (1)
                          {
                            if (SHIBYTE(v243[v18 + 3]) < 0)
                            {
                              operator delete(v243[v18 + 1]);
                            }

                            v18 -= 3;
                            if (v18 == -15)
                            {
                              sub_3608D0(v237, "active.hiking");
                              sub_3608D0(v239, "active.parks.trailhead");
                              sub_3608D0(&v240, "hotelstravel.campgrounds");
                              sub_3608D0(&v242, "hotelstravel.visitorcenters");
                              sub_3608D0(&v243[1], "travel_and_leisure.hiking_trail");
                              sub_3608D0(&v244, "travel_and_leisure.hiking_trail.trailhead");
                              sub_3608D0(v245, "travel_and_leisure.campground");
                              sub_3608D0(&v247, "travel_and_leisure.visitor_center");
                              sub_1A5C918(&v147, v237, 8);
                              v19 = 0;
                              while (1)
                              {
                                if (SHIBYTE(v248[v19]) < 0)
                                {
                                  operator delete(v248[v19 - 2]);
                                }

                                v19 -= 3;
                                if (v19 == -24)
                                {
                                  sub_3608D0(v237, "active");
                                  sub_3608D0(v239, "emergencyrooms");
                                  sub_3608D0(&v240, "hospitals");
                                  sub_3608D0(&v242, "urgent_care");
                                  sub_3608D0(&v243[1], "airports");
                                  sub_3608D0(&v244, "skiresorts");
                                  sub_3608D0(v245, "transport");
                                  sub_3608D0(&v247, "touristattraction");
                                  sub_3608D0(&v248[1], "physicalfeature");
                                  sub_3608D0(&v249, "travel_and_leisure");
                                  sub_3608D0(v251, "emergency_room");
                                  sub_3608D0(&v253, "hospital");
                                  sub_3608D0(v255, "urgent_care_center");
                                  sub_3608D0(&v256, "airport");
                                  sub_3608D0(v258, "ski_resort");
                                  sub_3608D0(v260, "transportation_service");
                                  sub_3608D0(v261, "tourist_attraction");
                                  sub_3608D0(&v262, "physical_feature");
                                  sub_1A5C918(&v148, v237, 18);
                                  v20 = 54;
                                  while (1)
                                  {
                                    if (SHIBYTE(v237[v20 - 1]) < 0)
                                    {
                                      operator delete(*&v236[v20 * 8 + 24]);
                                    }

                                    v20 -= 3;
                                    if (!(v20 * 8))
                                    {
                                      sub_3608D0(v237, "kids_activities");
                                      sub_3608D0(v239, "parks");
                                      sub_3608D0(&v240, "playgrounds");
                                      sub_3608D0(&v242, "sportscomplex");
                                      sub_3608D0(&v243[1], "statue");
                                      sub_3608D0(&v244, "zoos");
                                      sub_3608D0(v245, "kids_fun_center");
                                      sub_3608D0(&v247, "park");
                                      sub_3608D0(&v248[1], "playground");
                                      sub_3608D0(&v249, "sports_complex");
                                      sub_3608D0(v251, "zoo");
                                      sub_1A5C918(&v149, v237, 11);
                                      v21 = 33;
                                      while (1)
                                      {
                                        if (SHIBYTE(v237[v21 - 1]) < 0)
                                        {
                                          operator delete(*&v236[v21 * 8 + 24]);
                                        }

                                        v21 -= 3;
                                        if (!(v21 * 8))
                                        {
                                          sub_3608D0(v237, "food");
                                          sub_3608D0(v239, "restaurants");
                                          sub_3608D0(&v240, "financialservices");
                                          sub_3608D0(&v242, "localservices");
                                          sub_3608D0(&v243[1], "homedecor");
                                          sub_3608D0(&v244, "beautysvc");
                                          sub_3608D0(v245, "officebuilding");
                                          sub_3608D0(&v247, "supermarket");
                                          sub_3608D0(&v248[1], "flowers");
                                          sub_3608D0(&v249, "homeandgarden");
                                          sub_3608D0(v251, "servicestations");
                                          sub_3608D0(&v253, "parks");
                                          sub_3608D0(v255, "playgrounds");
                                          sub_3608D0(&v256, "sportscomplex");
                                          sub_3608D0(v258, "trainstations");
                                          sub_3608D0(v260, "food_mart");
                                          sub_3608D0(v261, "restaurant");
                                          sub_3608D0(&v262, "financial_service");
                                          sub_3608D0(v264, "local_service");
                                          sub_3608D0(v266, "home_decor_store");
                                          sub_3608D0(v267, "beauty_service");
                                          sub_3608D0(&v268, "office_building");
                                          sub_3608D0(&v270, "floral_shop");
                                          sub_3608D0(&v272, "home_goods_store");
                                          sub_3608D0(v274, "service_station");
                                          sub_3608D0(&v275, "park");
                                          sub_3608D0(v277, "playground");
                                          sub_3608D0(v279, "sports_complex");
                                          sub_3608D0(v280, "train_station");
                                          sub_1A5C918(v150, v237, 29);
                                          v22 = 87;
                                          while (1)
                                          {
                                            if (SHIBYTE(v237[v22 - 1]) < 0)
                                            {
                                              operator delete(*&v236[v22 * 8 + 24]);
                                            }

                                            v22 -= 3;
                                            if (!(v22 * 8))
                                            {
                                              v150[24] = 1;
                                              v151 = xmmword_23684B0;
                                              v152 = xmmword_23684C0;
                                              v153 = 30;
                                              v154 = 0x4000000000000000;
                                              v155 = xmmword_23684D0;
                                              v156 = 2;
                                              v157 = 257;
                                              sub_3608D0(v217, "ranker_pw_en_model");
                                              sub_3608D0(&v341, "CA");
                                              sub_3608D0(v343, "GB");
                                              sub_3608D0(v344, "AU");
                                              sub_3608D0(&v345, "NZ");
                                              sub_3608D0(v346, "IE");
                                              sub_3608D0(v347, "ZA");
                                              v214 = 0uLL;
                                              v215 = 0;
                                              sub_68678C(&v214, &v341, v348, 6uLL);
                                              sub_1A5C99C(v348, v217, &v214);
                                              sub_3608D0(v207, "ranker_pw_us_model");
                                              sub_3608D0(v201, "US");
                                              v204 = 0uLL;
                                              v205 = 0;
                                              sub_68678C(&v204, v201, v203, 1uLL);
                                              sub_1A5C99C(v351, v207, &v204);
                                              sub_3608D0(&v198, "ranker_pw_eu_model");
                                              sub_3608D0(v219, "DE");
                                              sub_3608D0(v221, "FR");
                                              sub_3608D0(&v222, "BE");
                                              sub_3608D0(&v223, "CH");
                                              sub_3608D0(v224, "AT");
                                              sub_3608D0(v225, "ES");
                                              sub_3608D0(v226, "IT");
                                              sub_3608D0(v227, "NL");
                                              sub_3608D0(v228, "PT");
                                              sub_3608D0(v229, "NO");
                                              sub_3608D0(v230, "DK");
                                              sub_3608D0(v231, "FI");
                                              sub_3608D0(v232, "SE");
                                              v339 = 0uLL;
                                              v340 = 0;
                                              sub_68678C(&v339, v219, &v233, 0xDuLL);
                                              sub_1A5C99C(&v353, &v198, &v339);
                                              sub_3608D0(&v110, "ranker_pw_cn_model");
                                              sub_3608D0(&v337, "CN");
                                              v108 = 0uLL;
                                              v109 = 0;
                                              sub_68678C(&v108, &v337, &v339, 1uLL);
                                              sub_1A5C99C(&v354, &v110, &v108);
                                              sub_3608D0(&v106, "ranker_pw_cjk_model");
                                              sub_3608D0(&v329, "JP");
                                              sub_3608D0(v330, "MO");
                                              sub_3608D0(&v331, "PH");
                                              sub_3608D0(v332, "MY");
                                              sub_3608D0(v333, "TW");
                                              sub_3608D0(v334, "HK");
                                              v335 = 0uLL;
                                              v336 = 0;
                                              sub_68678C(&v335, &v329, &v335, 6uLL);
                                              sub_1A5C99C(&v355, &v106, &v335);
                                              sub_3608D0(v104, "ranker_pw_row_model");
                                              sub_3608D0(v237, "AR");
                                              sub_3608D0(v239, "BR");
                                              sub_3608D0(&v240, "MX");
                                              sub_3608D0(&v242, "CL");
                                              sub_3608D0(&v243[1], "CZ");
                                              sub_3608D0(&v244, "GR");
                                              sub_3608D0(v245, "HR");
                                              sub_3608D0(&v247, "HU");
                                              sub_3608D0(&v248[1], "ID");
                                              sub_3608D0(&v249, "IN");
                                              sub_3608D0(v251, "PL");
                                              sub_3608D0(&v253, "RO");
                                              sub_3608D0(v255, "SG");
                                              sub_3608D0(&v256, "SK");
                                              sub_3608D0(v258, "TH");
                                              sub_3608D0(v260, "TR");
                                              sub_3608D0(v261, "VN");
                                              sub_3608D0(&v262, "AE");
                                              sub_3608D0(v264, "EG");
                                              sub_3608D0(v266, "IL");
                                              sub_3608D0(v267, "NG");
                                              sub_3608D0(&v268, "MA");
                                              v102 = 0;
                                              v101 = 0;
                                              v103 = 0;
                                              sub_68678C(&v101, v237, &v270, 0x16uLL);
                                              sub_1A5C99C(&v356, v104, &v101);
                                              memset(v158, 0, sizeof(v158));
                                              sub_1A5CA34(v158, v348, &v357, 6uLL);
                                              v23 = 36;
                                              while (1)
                                              {
                                                v99[0] = &v347[v23];
                                                sub_195E3E8(v99);
                                                if (SHIBYTE(v346[v23 + 2]) < 0)
                                                {
                                                  operator delete(v346[v23]);
                                                }

                                                v23 -= 6;
                                                if (!(v23 * 8))
                                                {
                                                  v99[0] = &v101;
                                                  sub_195E3E8(v99);
                                                  v24 = 66;
                                                  while (1)
                                                  {
                                                    if (SHIBYTE(v237[v24 - 1]) < 0)
                                                    {
                                                      operator delete(*&v236[v24 * 8 + 24]);
                                                    }

                                                    v24 -= 3;
                                                    if (!(v24 * 8))
                                                    {
                                                      if (v105 < 0)
                                                      {
                                                        operator delete(v104[0]);
                                                      }

                                                      v237[0] = &v335;
                                                      sub_195E3E8(v237);
                                                      v25 = 0;
                                                      while (1)
                                                      {
                                                        if (SHIBYTE(v334[v25 + 2]) < 0)
                                                        {
                                                          operator delete(v334[v25]);
                                                        }

                                                        v25 -= 3;
                                                        if (v25 == -18)
                                                        {
                                                          if (SHIBYTE(v107) < 0)
                                                          {
                                                            operator delete(v106);
                                                          }

                                                          v237[0] = &v108;
                                                          sub_195E3E8(v237);
                                                          if (SHIBYTE(v338) < 0)
                                                          {
                                                            operator delete(v337);
                                                          }

                                                          if (SHIBYTE(v111) < 0)
                                                          {
                                                            operator delete(v110);
                                                          }

                                                          v237[0] = &v339;
                                                          sub_195E3E8(v237);
                                                          v26 = 39;
                                                          while (1)
                                                          {
                                                            if (SHIBYTE(v219[v26 - 1]) < 0)
                                                            {
                                                              operator delete(*&v218[v26 * 8 + 1]);
                                                            }

                                                            v26 -= 3;
                                                            if (!(v26 * 8))
                                                            {
                                                              if (SHIBYTE(v199) < 0)
                                                              {
                                                                operator delete(v198);
                                                              }

                                                              v237[0] = &v204;
                                                              sub_195E3E8(v237);
                                                              if (v202 < 0)
                                                              {
                                                                operator delete(v201[0]);
                                                              }

                                                              if (v208 < 0)
                                                              {
                                                                operator delete(v207[0]);
                                                              }

                                                              v237[0] = &v214;
                                                              sub_195E3E8(v237);
                                                              v27 = 0;
                                                              while (1)
                                                              {
                                                                if (SHIBYTE(v347[v27 + 2]) < 0)
                                                                {
                                                                  operator delete(v347[v27]);
                                                                }

                                                                v27 -= 3;
                                                                if (v27 == -18)
                                                                {
                                                                  if ((v218[0] & 0x80000000) != 0)
                                                                  {
                                                                    operator delete(v217[0]);
                                                                  }

                                                                  sub_3608D0(v237, "EG");
                                                                  v239[0] = 0x4058000000000000;
                                                                  sub_3608D0(&v239[1], "CA");
                                                                  *(&v240 + 1) = 0x4058000000000000;
                                                                  sub_3608D0(&v241, "GB");
                                                                  v243[0] = 0x4058000000000000;
                                                                  sub_3608D0(&v243[1], "US");
                                                                  *&v244 = 0x4058000000000000;
                                                                  sub_3608D0(&v244 + 1, "DE");
                                                                  v245[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v246, "FR");
                                                                  v248[0] = 0x4058000000000000;
                                                                  sub_3608D0(&v248[1], "BE");
                                                                  v249 = 0x4058000000000000;
                                                                  sub_3608D0(&v250, "CH");
                                                                  v251[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v252, "CN");
                                                                  v254 = 0x4058000000000000;
                                                                  sub_3608D0(v255, "AT");
                                                                  v256 = 0x4058000000000000;
                                                                  sub_3608D0(&v257, "ES");
                                                                  v258[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v259, "AU");
                                                                  v260[2] = 0x4058000000000000;
                                                                  sub_3608D0(v261, "NZ");
                                                                  v262 = 0x4058000000000000;
                                                                  sub_3608D0(&v263, "IE");
                                                                  v264[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v265, "ZA");
                                                                  v266[2] = 0x4058000000000000;
                                                                  sub_3608D0(v267, "IT");
                                                                  v268 = 0x4058000000000000;
                                                                  sub_3608D0(&v269, "NL");
                                                                  *(&v270 + 1) = 0x4058000000000000;
                                                                  sub_3608D0(&v271, "PT");
                                                                  v273 = 0x4058000000000000;
                                                                  sub_3608D0(v274, "NO");
                                                                  v275 = 0x4058000000000000;
                                                                  sub_3608D0(&v276, "DK");
                                                                  v277[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v278, "FI");
                                                                  v279[2] = 0x4058000000000000;
                                                                  sub_3608D0(v280, "SE");
                                                                  v281 = 0x4058000000000000;
                                                                  sub_3608D0(&v282, "GB");
                                                                  v283[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v284, "JP");
                                                                  v285[2] = 0x4058000000000000;
                                                                  sub_3608D0(v286, "MO");
                                                                  v287 = 0x4058000000000000;
                                                                  sub_3608D0(&v288, "PH");
                                                                  v289[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v290, "MY");
                                                                  v291[2] = 0x4058000000000000;
                                                                  sub_3608D0(v292, "TW");
                                                                  v293 = 0x4058000000000000;
                                                                  sub_3608D0(&v294, "HK");
                                                                  v295[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v296, "AR");
                                                                  v297[2] = 0x4058000000000000;
                                                                  sub_3608D0(&v298, "BR");
                                                                  v299 = 0x4058000000000000;
                                                                  sub_3608D0(&v300, "MX");
                                                                  v301[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v302, "CL");
                                                                  v303[2] = 0x4058000000000000;
                                                                  sub_3608D0(&v304, "CZ");
                                                                  v305 = 0x4058000000000000;
                                                                  sub_3608D0(&v306, "GR");
                                                                  v307[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v308, "HR");
                                                                  v309[2] = 0x4058000000000000;
                                                                  sub_3608D0(v310, "HU");
                                                                  v311 = 0x4058000000000000;
                                                                  sub_3608D0(&v312, "ID");
                                                                  v313[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v314, "IN");
                                                                  v315[2] = 0x4058000000000000;
                                                                  sub_3608D0(v316, "PL");
                                                                  v317 = 0x4058000000000000;
                                                                  sub_3608D0(&v318, "RO");
                                                                  *(&v319 + 1) = 0x4058000000000000;
                                                                  sub_3608D0(v320, "SG");
                                                                  v320[3] = 0x4058000000000000;
                                                                  sub_3608D0(v321, "SK");
                                                                  v321[3] = 0x4058000000000000;
                                                                  sub_3608D0(v322, "TH");
                                                                  v322[3] = 0x4058000000000000;
                                                                  sub_3608D0(v323, "TR");
                                                                  v323[3] = 0x4058000000000000;
                                                                  sub_3608D0(v324, "VN");
                                                                  v324[3] = 0x4058000000000000;
                                                                  sub_3608D0(v325, "AE");
                                                                  v325[3] = 0x4058000000000000;
                                                                  sub_3608D0(v326, "IL");
                                                                  v326[3] = 0x4058000000000000;
                                                                  sub_3608D0(v327, "NG");
                                                                  v327[3] = 0x4058000000000000;
                                                                  sub_3608D0(v328, "MA");
                                                                  v328[3] = 0x4058000000000000;
                                                                  sub_1A5CB44(v159, v237, 50);
                                                                  v28 = 1600;
                                                                  while (1)
                                                                  {
                                                                    if (v236[v28 + 39] < 0)
                                                                    {
                                                                      operator delete(*&v236[v28 + 16]);
                                                                    }

                                                                    v28 -= 32;
                                                                    if (!v28)
                                                                    {
                                                                      v159[10] = 5;
                                                                      sub_3608D0(v207, "speller-enus-esus");
                                                                      sub_3608D0(&v329, "US");
                                                                      sub_3608D0(v330, "AE");
                                                                      v204 = 0uLL;
                                                                      v205 = 0;
                                                                      sub_68678C(&v204, &v329, &v331, 2uLL);
                                                                      sub_1A5C99C(v219, v207, &v204);
                                                                      sub_3608D0(v201, "speller-GB");
                                                                      sub_3608D0(&v339, "GB");
                                                                      v198 = 0uLL;
                                                                      v199 = 0;
                                                                      sub_68678C(&v198, &v339, &v341, 1uLL);
                                                                      sub_1A5C99C(&v222, v201, &v198);
                                                                      sub_3608D0(&v110, "speller-AU");
                                                                      sub_3608D0(v217, "AU");
                                                                      sub_3608D0(&v218[1], "NZ");
                                                                      v108 = 0uLL;
                                                                      v109 = 0;
                                                                      sub_68678C(&v108, v217, v219, 2uLL);
                                                                      sub_1A5C99C(v224, &v110, &v108);
                                                                      sub_3608D0(&v337, "speller-CA");
                                                                      sub_3608D0(&v335, "CA");
                                                                      v106 = 0uLL;
                                                                      v107 = 0;
                                                                      sub_68678C(&v106, &v335, &v337, 1uLL);
                                                                      sub_1A5C99C(v226, &v337, &v106);
                                                                      sub_3608D0(v104, "speller-EU");
                                                                      sub_3608D0(v348, "ES");
                                                                      sub_3608D0(v350, "IT");
                                                                      sub_3608D0(v351, "NL");
                                                                      v102 = 0;
                                                                      v101 = 0;
                                                                      v103 = 0;
                                                                      sub_68678C(&v101, v348, &v352, 3uLL);
                                                                      sub_1A5C99C(v228, v104, &v101);
                                                                      sub_3608D0(v99, "speller-FR-DE");
                                                                      sub_3608D0(&v214, "FR");
                                                                      sub_3608D0(v216, "DE");
                                                                      v97 = 0;
                                                                      v96 = 0;
                                                                      v98 = 0;
                                                                      sub_68678C(&v96, &v214, v217, 2uLL);
                                                                      sub_1A5C99C(v230, v99, &v96);
                                                                      sub_3608D0(v94, "speller-EU-offline-mixed-reduced");
                                                                      sub_3608D0(&v341, "AT");
                                                                      sub_3608D0(v343, "CH");
                                                                      sub_3608D0(v344, "BE");
                                                                      v91 = 0;
                                                                      v92 = 0;
                                                                      v93 = 0;
                                                                      sub_68678C(&v91, &v341, &v345, 3uLL);
                                                                      sub_1A5C99C(v232, v94, &v91);
                                                                      sub_3608D0(v89, "speller-GR");
                                                                      sub_3608D0(v212, "GR");
                                                                      v86 = 0;
                                                                      v87 = 0;
                                                                      v88 = 0;
                                                                      sub_68678C(&v86, v212, &v214, 1uLL);
                                                                      sub_1A5C99C(&v234, v89, &v86);
                                                                      sub_3608D0(&v84, "speller-JP");
                                                                      sub_3608D0(&v210, "JP");
                                                                      v82 = 0uLL;
                                                                      v83 = 0;
                                                                      sub_68678C(&v82, &v210, v212, 1uLL);
                                                                      sub_1A5C99C(&v235, &v84, &v82);
                                                                      sub_3608D0(v80, "speller-ROW");
                                                                      sub_3608D0(v237, "IN");
                                                                      sub_3608D0(v239, "PT");
                                                                      sub_3608D0(&v240, "FI");
                                                                      sub_3608D0(&v242, "SE");
                                                                      sub_3608D0(&v243[1], "AD");
                                                                      sub_3608D0(&v244, "MC");
                                                                      sub_3608D0(v245, "LU");
                                                                      sub_3608D0(&v247, "VA");
                                                                      sub_3608D0(&v248[1], "IS");
                                                                      sub_3608D0(&v249, "GL");
                                                                      sub_3608D0(v251, "FO");
                                                                      sub_3608D0(&v253, "IE");
                                                                      sub_3608D0(v255, "NO");
                                                                      sub_3608D0(&v256, "DK");
                                                                      sub_3608D0(v258, "AR");
                                                                      sub_3608D0(v260, "BR");
                                                                      sub_3608D0(v261, "MX");
                                                                      sub_3608D0(&v262, "CL");
                                                                      sub_3608D0(v264, "TW");
                                                                      sub_3608D0(v266, "HK");
                                                                      sub_3608D0(v267, "MO");
                                                                      sub_3608D0(&v268, "PL");
                                                                      sub_3608D0(&v270, "HR");
                                                                      sub_3608D0(&v272, "RO");
                                                                      sub_3608D0(v274, "SK");
                                                                      sub_3608D0(&v275, "CZ");
                                                                      sub_3608D0(v277, "HU");
                                                                      sub_3608D0(v279, "VN");
                                                                      sub_3608D0(v280, "TH");
                                                                      sub_3608D0(&v281, "SG");
                                                                      sub_3608D0(v283, "MY");
                                                                      sub_3608D0(v285, "PH");
                                                                      sub_3608D0(v286, "TR");
                                                                      sub_3608D0(&v287, "AE");
                                                                      sub_3608D0(v289, "IL");
                                                                      sub_3608D0(v291, "SA");
                                                                      sub_3608D0(v292, "NG");
                                                                      sub_3608D0(&v293, "EG");
                                                                      sub_3608D0(v295, "MA");
                                                                      sub_3608D0(v297, "ZA");
                                                                      v77 = 0;
                                                                      v78 = 0;
                                                                      v79 = 0;
                                                                      sub_68678C(&v77, v237, &v298, 0x28uLL);
                                                                      sub_1A5C99C(v236, v80, &v77);
                                                                      memset(v160, 0, sizeof(v160));
                                                                      sub_1A5CA34(v160, v219, v237, 0xAuLL);
                                                                      v29 = 480;
                                                                      while (1)
                                                                      {
                                                                        v197 = &v218[v29 + 1];
                                                                        sub_195E3E8(&v197);
                                                                        if (v218[v29] < 0)
                                                                        {
                                                                          operator delete(v217[v29 / 8]);
                                                                        }

                                                                        v29 -= 48;
                                                                        if (!v29)
                                                                        {
                                                                          v197 = &v77;
                                                                          sub_195E3E8(&v197);
                                                                          v30 = 120;
                                                                          while (1)
                                                                          {
                                                                            if (SHIBYTE(v237[v30 - 1]) < 0)
                                                                            {
                                                                              operator delete(*&v236[v30 * 8 + 24]);
                                                                            }

                                                                            v30 -= 3;
                                                                            if (!(v30 * 8))
                                                                            {
                                                                              if (v81 < 0)
                                                                              {
                                                                                operator delete(v80[0]);
                                                                              }

                                                                              v237[0] = &v82;
                                                                              sub_195E3E8(v237);
                                                                              if (SHIBYTE(v211) < 0)
                                                                              {
                                                                                operator delete(v210);
                                                                              }

                                                                              if (SHIBYTE(v85) < 0)
                                                                              {
                                                                                operator delete(v84);
                                                                              }

                                                                              v237[0] = &v86;
                                                                              sub_195E3E8(v237);
                                                                              if (v213 < 0)
                                                                              {
                                                                                operator delete(v212[0]);
                                                                              }

                                                                              if (v90 < 0)
                                                                              {
                                                                                operator delete(v89[0]);
                                                                              }

                                                                              v237[0] = &v91;
                                                                              sub_195E3E8(v237);
                                                                              v31 = 0;
                                                                              while (1)
                                                                              {
                                                                                if (SHIBYTE(v344[v31 + 2]) < 0)
                                                                                {
                                                                                  operator delete(v344[v31]);
                                                                                }

                                                                                v31 -= 3;
                                                                                if (v31 == -9)
                                                                                {
                                                                                  if (v95 < 0)
                                                                                  {
                                                                                    operator delete(v94[0]);
                                                                                  }

                                                                                  v237[0] = &v96;
                                                                                  sub_195E3E8(v237);
                                                                                  v32 = 0;
                                                                                  while (1)
                                                                                  {
                                                                                    if (SHIBYTE(v216[v32 + 2]) < 0)
                                                                                    {
                                                                                      operator delete(v216[v32]);
                                                                                    }

                                                                                    v32 -= 3;
                                                                                    if (v32 == -6)
                                                                                    {
                                                                                      if (v100 < 0)
                                                                                      {
                                                                                        operator delete(v99[0]);
                                                                                      }

                                                                                      v237[0] = &v101;
                                                                                      sub_195E3E8(v237);
                                                                                      v33 = 0;
                                                                                      while (1)
                                                                                      {
                                                                                        if (SHIBYTE(v351[v33 + 2]) < 0)
                                                                                        {
                                                                                          operator delete(v351[v33]);
                                                                                        }

                                                                                        v33 -= 3;
                                                                                        if (v33 == -9)
                                                                                        {
                                                                                          if (v105 < 0)
                                                                                          {
                                                                                            operator delete(v104[0]);
                                                                                          }

                                                                                          v237[0] = &v106;
                                                                                          sub_195E3E8(v237);
                                                                                          if (SHIBYTE(v336) < 0)
                                                                                          {
                                                                                            operator delete(v335);
                                                                                          }

                                                                                          if (SHIBYTE(v338) < 0)
                                                                                          {
                                                                                            operator delete(v337);
                                                                                          }

                                                                                          v237[0] = &v108;
                                                                                          sub_195E3E8(v237);
                                                                                          v34 = 0;
                                                                                          while (1)
                                                                                          {
                                                                                            if (v218[v34 + 24] < 0)
                                                                                            {
                                                                                              operator delete(*&v218[v34 + 1]);
                                                                                            }

                                                                                            v34 -= 24;
                                                                                            if (v34 == -48)
                                                                                            {
                                                                                              if (SHIBYTE(v111) < 0)
                                                                                              {
                                                                                                operator delete(v110);
                                                                                              }

                                                                                              v237[0] = &v198;
                                                                                              sub_195E3E8(v237);
                                                                                              if (SHIBYTE(v340) < 0)
                                                                                              {
                                                                                                operator delete(v339);
                                                                                              }

                                                                                              if (v202 < 0)
                                                                                              {
                                                                                                operator delete(v201[0]);
                                                                                              }

                                                                                              v237[0] = &v204;
                                                                                              sub_195E3E8(v237);
                                                                                              v35 = 0;
                                                                                              while (1)
                                                                                              {
                                                                                                if (SHIBYTE(v330[v35 + 2]) < 0)
                                                                                                {
                                                                                                  operator delete(v330[v35]);
                                                                                                }

                                                                                                v35 -= 3;
                                                                                                if (v35 == -6)
                                                                                                {
                                                                                                  if (v208 < 0)
                                                                                                  {
                                                                                                    operator delete(v207[0]);
                                                                                                  }

                                                                                                  sub_3608D0(&v339, "speller-enus-esus");
                                                                                                  sub_3608D0(v219, "from_ENUSESUS");
                                                                                                  sub_3608D0(v221, "to_ENUSESUS");
                                                                                                  v110 = 0uLL;
                                                                                                  v111 = 0;
                                                                                                  sub_68678C(&v110, v219, &v222, 2uLL);
                                                                                                  sub_1A5C99C(v237, &v339, &v110);
                                                                                                  sub_3608D0(&v108, "speller-GB");
                                                                                                  sub_3608D0(v348, "from_SOURCE");
                                                                                                  sub_3608D0(v350, "to_TARGET");
                                                                                                  v337 = 0uLL;
                                                                                                  v338 = 0;
                                                                                                  sub_68678C(&v337, v348, v351, 2uLL);
                                                                                                  sub_1A5C99C(&v240, &v108, &v337);
                                                                                                  sub_3608D0(&v106, "speller-AU");
                                                                                                  sub_3608D0(&v341, "from_AU");
                                                                                                  sub_3608D0(v343, "to_AU");
                                                                                                  v335 = 0uLL;
                                                                                                  v336 = 0;
                                                                                                  sub_68678C(&v335, &v341, v344, 2uLL);
                                                                                                  sub_1A5C99C(&v243[1], &v106, &v335);
                                                                                                  sub_3608D0(v104, "speller-CA");
                                                                                                  sub_3608D0(&v329, "from_CA");
                                                                                                  sub_3608D0(v330, "to_CA");
                                                                                                  v102 = 0;
                                                                                                  v101 = 0;
                                                                                                  v103 = 0;
                                                                                                  sub_68678C(&v101, &v329, &v331, 2uLL);
                                                                                                  sub_1A5C99C(v245, v104, &v101);
                                                                                                  sub_3608D0(v99, "speller-EU");
                                                                                                  sub_3608D0(v217, "from_EU");
                                                                                                  sub_3608D0(&v218[1], "to_EU");
                                                                                                  v97 = 0;
                                                                                                  v96 = 0;
                                                                                                  v98 = 0;
                                                                                                  sub_68678C(&v96, v217, v219, 2uLL);
                                                                                                  sub_1A5C99C(&v248[1], v99, &v96);
                                                                                                  sub_3608D0(v94, "speller-GR");
                                                                                                  sub_3608D0(&v214, "from_SOURCE");
                                                                                                  sub_3608D0(v216, "to_TARGET");
                                                                                                  v91 = 0;
                                                                                                  v92 = 0;
                                                                                                  v93 = 0;
                                                                                                  sub_68678C(&v91, &v214, v217, 2uLL);
                                                                                                  sub_1A5C99C(v251, v94, &v91);
                                                                                                  sub_3608D0(v89, "speller-JP");
                                                                                                  sub_3608D0(v207, "from_SOURCE");
                                                                                                  sub_3608D0(v209, "to_TARGET");
                                                                                                  v86 = 0;
                                                                                                  v87 = 0;
                                                                                                  v88 = 0;
                                                                                                  sub_68678C(&v86, v207, &v210, 2uLL);
                                                                                                  sub_1A5C99C(v255, v89, &v86);
                                                                                                  sub_3608D0(v212, "speller-FR-DE");
                                                                                                  sub_3608D0(&v204, "from_DEFRAC");
                                                                                                  sub_3608D0(v206, "to_DEFRAC");
                                                                                                  v84 = 0uLL;
                                                                                                  v85 = 0;
                                                                                                  sub_68678C(&v84, &v204, v207, 2uLL);
                                                                                                  sub_1A5C99C(v258, v212, &v84);
                                                                                                  sub_3608D0(&v82, "speller-EU-offline-mixed-reduced");
                                                                                                  sub_3608D0(v201, "from_SOURCE");
                                                                                                  sub_3608D0(v203, "to_TARGET");
                                                                                                  v210 = 0uLL;
                                                                                                  v211 = 0;
                                                                                                  sub_68678C(&v210, v201, &v204, 2uLL);
                                                                                                  sub_1A5C99C(v261, &v82, &v210);
                                                                                                  sub_3608D0(v80, "speller-ROW");
                                                                                                  sub_3608D0(&v198, "from_GLOBAL");
                                                                                                  sub_3608D0(v200, "to_GLOBAL");
                                                                                                  v77 = 0;
                                                                                                  v78 = 0;
                                                                                                  v79 = 0;
                                                                                                  sub_68678C(&v77, &v198, v201, 2uLL);
                                                                                                  sub_1A5C99C(v264, v80, &v77);
                                                                                                  memset(v161, 0, sizeof(v161));
                                                                                                  sub_1A5CA34(v161, v237, v267, 0xAuLL);
                                                                                                  v36 = 480;
                                                                                                  while (1)
                                                                                                  {
                                                                                                    v197 = &v236[v36 + 24];
                                                                                                    sub_195E3E8(&v197);
                                                                                                    if (v236[v36 + 23] < 0)
                                                                                                    {
                                                                                                      operator delete(*&v236[v36]);
                                                                                                    }

                                                                                                    v36 -= 48;
                                                                                                    if (!v36)
                                                                                                    {
                                                                                                      v197 = &v77;
                                                                                                      sub_195E3E8(&v197);
                                                                                                      v37 = 0;
                                                                                                      while (1)
                                                                                                      {
                                                                                                        if (SHIBYTE(v200[v37 + 2]) < 0)
                                                                                                        {
                                                                                                          operator delete(v200[v37]);
                                                                                                        }

                                                                                                        v37 -= 3;
                                                                                                        if (v37 == -6)
                                                                                                        {
                                                                                                          if (v81 < 0)
                                                                                                          {
                                                                                                            operator delete(v80[0]);
                                                                                                          }

                                                                                                          *&v198 = &v210;
                                                                                                          sub_195E3E8(&v198);
                                                                                                          v38 = 0;
                                                                                                          while (1)
                                                                                                          {
                                                                                                            if (SHIBYTE(v203[v38 + 2]) < 0)
                                                                                                            {
                                                                                                              operator delete(v203[v38]);
                                                                                                            }

                                                                                                            v38 -= 3;
                                                                                                            if (v38 == -6)
                                                                                                            {
                                                                                                              if (SHIBYTE(v83) < 0)
                                                                                                              {
                                                                                                                operator delete(v82);
                                                                                                              }

                                                                                                              v201[0] = &v84;
                                                                                                              sub_195E3E8(v201);
                                                                                                              v39 = 0;
                                                                                                              while (1)
                                                                                                              {
                                                                                                                if (SHIBYTE(v206[v39 + 2]) < 0)
                                                                                                                {
                                                                                                                  operator delete(v206[v39]);
                                                                                                                }

                                                                                                                v39 -= 3;
                                                                                                                if (v39 == -6)
                                                                                                                {
                                                                                                                  if (v213 < 0)
                                                                                                                  {
                                                                                                                    operator delete(v212[0]);
                                                                                                                  }

                                                                                                                  *&v204 = &v86;
                                                                                                                  sub_195E3E8(&v204);
                                                                                                                  v40 = 0;
                                                                                                                  while (1)
                                                                                                                  {
                                                                                                                    if (SHIBYTE(v209[v40 + 2]) < 0)
                                                                                                                    {
                                                                                                                      operator delete(v209[v40]);
                                                                                                                    }

                                                                                                                    v40 -= 3;
                                                                                                                    if (v40 == -6)
                                                                                                                    {
                                                                                                                      if (v90 < 0)
                                                                                                                      {
                                                                                                                        operator delete(v89[0]);
                                                                                                                      }

                                                                                                                      v207[0] = &v91;
                                                                                                                      sub_195E3E8(v207);
                                                                                                                      v41 = 0;
                                                                                                                      while (1)
                                                                                                                      {
                                                                                                                        if (SHIBYTE(v216[v41 + 2]) < 0)
                                                                                                                        {
                                                                                                                          operator delete(v216[v41]);
                                                                                                                        }

                                                                                                                        v41 -= 3;
                                                                                                                        if (v41 == -6)
                                                                                                                        {
                                                                                                                          if (v95 < 0)
                                                                                                                          {
                                                                                                                            operator delete(v94[0]);
                                                                                                                          }

                                                                                                                          *&v214 = &v96;
                                                                                                                          sub_195E3E8(&v214);
                                                                                                                          v42 = 0;
                                                                                                                          while (1)
                                                                                                                          {
                                                                                                                            if (v218[v42 + 24] < 0)
                                                                                                                            {
                                                                                                                              operator delete(*&v218[v42 + 1]);
                                                                                                                            }

                                                                                                                            v42 -= 24;
                                                                                                                            if (v42 == -48)
                                                                                                                            {
                                                                                                                              if (v100 < 0)
                                                                                                                              {
                                                                                                                                operator delete(v99[0]);
                                                                                                                              }

                                                                                                                              v217[0] = &v101;
                                                                                                                              sub_195E3E8(v217);
                                                                                                                              v43 = 0;
                                                                                                                              while (1)
                                                                                                                              {
                                                                                                                                if (SHIBYTE(v330[v43 + 2]) < 0)
                                                                                                                                {
                                                                                                                                  operator delete(v330[v43]);
                                                                                                                                }

                                                                                                                                v43 -= 3;
                                                                                                                                if (v43 == -6)
                                                                                                                                {
                                                                                                                                  if (v105 < 0)
                                                                                                                                  {
                                                                                                                                    operator delete(v104[0]);
                                                                                                                                  }

                                                                                                                                  *&v329 = &v335;
                                                                                                                                  sub_195E3E8(&v329);
                                                                                                                                  v44 = 0;
                                                                                                                                  while (1)
                                                                                                                                  {
                                                                                                                                    if (SHIBYTE(v343[v44 + 2]) < 0)
                                                                                                                                    {
                                                                                                                                      operator delete(v343[v44]);
                                                                                                                                    }

                                                                                                                                    v44 -= 3;
                                                                                                                                    if (v44 == -6)
                                                                                                                                    {
                                                                                                                                      if (SHIBYTE(v107) < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(v106);
                                                                                                                                      }

                                                                                                                                      *&v341 = &v337;
                                                                                                                                      sub_195E3E8(&v341);
                                                                                                                                      v45 = 0;
                                                                                                                                      while (1)
                                                                                                                                      {
                                                                                                                                        if (SHIBYTE(v350[v45 + 2]) < 0)
                                                                                                                                        {
                                                                                                                                          operator delete(v350[v45]);
                                                                                                                                        }

                                                                                                                                        v45 -= 3;
                                                                                                                                        if (v45 == -6)
                                                                                                                                        {
                                                                                                                                          if (SHIBYTE(v109) < 0)
                                                                                                                                          {
                                                                                                                                            operator delete(v108);
                                                                                                                                          }

                                                                                                                                          v348[0] = &v110;
                                                                                                                                          sub_195E3E8(v348);
                                                                                                                                          v46 = 0;
                                                                                                                                          while (1)
                                                                                                                                          {
                                                                                                                                            if (SHIBYTE(v221[v46 + 2]) < 0)
                                                                                                                                            {
                                                                                                                                              operator delete(v221[v46]);
                                                                                                                                            }

                                                                                                                                            v46 -= 3;
                                                                                                                                            if (v46 == -6)
                                                                                                                                            {
                                                                                                                                              if (SHIBYTE(v340) < 0)
                                                                                                                                              {
                                                                                                                                                operator delete(v339);
                                                                                                                                              }

                                                                                                                                              sub_3608D0(v237, "HK");
                                                                                                                                              sub_3608D0(v239, "JP");
                                                                                                                                              sub_3608D0(&v240, "MO");
                                                                                                                                              sub_3608D0(&v242, "TW");
                                                                                                                                              memset(v162, 0, sizeof(v162));
                                                                                                                                              sub_68678C(v162, v237, &v243[1], 4uLL);
                                                                                                                                              v47 = 0;
                                                                                                                                              while (1)
                                                                                                                                              {
                                                                                                                                                if (SHIBYTE(v243[v47]) < 0)
                                                                                                                                                {
                                                                                                                                                  operator delete(v243[v47 - 2]);
                                                                                                                                                }

                                                                                                                                                v47 -= 3;
                                                                                                                                                if (v47 == -12)
                                                                                                                                                {
                                                                                                                                                  sub_3608D0(v348, "geotagger_en_us_model");
                                                                                                                                                  sub_3608D0(v237, "US");
                                                                                                                                                  sub_3608D0(v239, "CA");
                                                                                                                                                  sub_3608D0(&v240, "GB");
                                                                                                                                                  sub_3608D0(&v242, "AU");
                                                                                                                                                  sub_3608D0(&v243[1], "NZ");
                                                                                                                                                  sub_3608D0(&v244, "IE");
                                                                                                                                                  sub_3608D0(v245, "ZA");
                                                                                                                                                  v341 = 0uLL;
                                                                                                                                                  v342 = 0;
                                                                                                                                                  sub_68678C(&v341, v237, &v247, 7uLL);
                                                                                                                                                  sub_1A5C99C(v219, v348, &v341);
                                                                                                                                                  memset(v163, 0, sizeof(v163));
                                                                                                                                                  sub_1A5CA34(v163, v219, &v222, 1uLL);
                                                                                                                                                  *&v329 = v221;
                                                                                                                                                  sub_195E3E8(&v329);
                                                                                                                                                  if (SHIBYTE(v220) < 0)
                                                                                                                                                  {
                                                                                                                                                    operator delete(v219[0]);
                                                                                                                                                  }

                                                                                                                                                  *&v329 = &v341;
                                                                                                                                                  sub_195E3E8(&v329);
                                                                                                                                                  v48 = 0;
                                                                                                                                                  while (1)
                                                                                                                                                  {
                                                                                                                                                    if (*(&v246 + v48 * 8 + 7) < 0)
                                                                                                                                                    {
                                                                                                                                                      operator delete(v245[v48]);
                                                                                                                                                    }

                                                                                                                                                    v48 -= 3;
                                                                                                                                                    if (v48 == -21)
                                                                                                                                                    {
                                                                                                                                                      if (v349 < 0)
                                                                                                                                                      {
                                                                                                                                                        operator delete(v348[0]);
                                                                                                                                                      }

                                                                                                                                                      v164 = 16842753;
                                                                                                                                                      v165 = xmmword_23684E0;
                                                                                                                                                      v166 = 1;
                                                                                                                                                      v167 = 0x6400000001;
                                                                                                                                                      v168 = 10;
                                                                                                                                                      sub_3608D0(v237, "AD");
                                                                                                                                                      sub_3608D0(v239, "AR");
                                                                                                                                                      sub_3608D0(&v240, "AT");
                                                                                                                                                      sub_3608D0(&v242, "BE");
                                                                                                                                                      sub_3608D0(&v243[1], "BO");
                                                                                                                                                      sub_3608D0(&v244, "BR");
                                                                                                                                                      sub_3608D0(v245, "CH");
                                                                                                                                                      sub_3608D0(&v247, "CL");
                                                                                                                                                      sub_3608D0(&v248[1], "CO");
                                                                                                                                                      sub_3608D0(&v249, "CR");
                                                                                                                                                      sub_3608D0(v251, "CU");
                                                                                                                                                      sub_3608D0(&v253, "DE");
                                                                                                                                                      sub_3608D0(v255, "DK");
                                                                                                                                                      sub_3608D0(&v256, "DO");
                                                                                                                                                      sub_3608D0(v258, "EC");
                                                                                                                                                      sub_3608D0(v260, "ES");
                                                                                                                                                      sub_3608D0(v261, "FI");
                                                                                                                                                      sub_3608D0(&v262, "GL");
                                                                                                                                                      sub_3608D0(v264, "GQ");
                                                                                                                                                      sub_3608D0(v266, "GR");
                                                                                                                                                      sub_3608D0(v267, "GT");
                                                                                                                                                      sub_3608D0(&v268, "HN");
                                                                                                                                                      sub_3608D0(&v270, "ID");
                                                                                                                                                      sub_3608D0(&v272, "IS");
                                                                                                                                                      sub_3608D0(v274, "IT");
                                                                                                                                                      sub_3608D0(&v275, "JP");
                                                                                                                                                      sub_3608D0(v277, "LI");
                                                                                                                                                      sub_3608D0(v279, "MX");
                                                                                                                                                      sub_3608D0(v280, "NI");
                                                                                                                                                      sub_3608D0(&v281, "NL");
                                                                                                                                                      sub_3608D0(v283, "NO");
                                                                                                                                                      sub_3608D0(v285, "PA");
                                                                                                                                                      sub_3608D0(v286, "PE");
                                                                                                                                                      sub_3608D0(&v287, "PT");
                                                                                                                                                      sub_3608D0(v289, "PY");
                                                                                                                                                      sub_3608D0(v291, "RO");
                                                                                                                                                      sub_3608D0(v292, "SE");
                                                                                                                                                      sub_3608D0(&v293, "SM");
                                                                                                                                                      sub_3608D0(v295, "SR");
                                                                                                                                                      sub_3608D0(v297, "SV");
                                                                                                                                                      sub_3608D0(&v298, "TR");
                                                                                                                                                      sub_3608D0(&v299, "UY");
                                                                                                                                                      sub_3608D0(v301, "VA");
                                                                                                                                                      sub_3608D0(v303, "VE");
                                                                                                                                                      memset(v169, 0, sizeof(v169));
                                                                                                                                                      sub_68678C(v169, v237, &v304, 0x2CuLL);
                                                                                                                                                      v49 = 132;
                                                                                                                                                      while (1)
                                                                                                                                                      {
                                                                                                                                                        if (SHIBYTE(v237[v49 - 1]) < 0)
                                                                                                                                                        {
                                                                                                                                                          operator delete(*&v236[v49 * 8 + 24]);
                                                                                                                                                        }

                                                                                                                                                        v49 -= 3;
                                                                                                                                                        if (!(v49 * 8))
                                                                                                                                                        {
                                                                                                                                                          v170 = 35;
                                                                                                                                                          v171 = 1;
                                                                                                                                                          v172 = 1;
                                                                                                                                                          v173 = 1;
                                                                                                                                                          sub_1A5CBBC(v237, "zh", "位置");
                                                                                                                                                          sub_1A5CC10(&v240, "en", "Location");
                                                                                                                                                          memset(v174, 0, sizeof(v174));
                                                                                                                                                          sub_1A5CC64(v174, v237, &v243[1], 2uLL);
                                                                                                                                                          v50 = 0;
                                                                                                                                                          while (1)
                                                                                                                                                          {
                                                                                                                                                            v51 = &v237[v50];
                                                                                                                                                            if (SHIBYTE(v243[v50]) < 0)
                                                                                                                                                            {
                                                                                                                                                              operator delete(v51[9]);
                                                                                                                                                            }

                                                                                                                                                            if (*(v51 + 71) < 0)
                                                                                                                                                            {
                                                                                                                                                              operator delete(v51[6]);
                                                                                                                                                            }

                                                                                                                                                            v50 -= 6;
                                                                                                                                                            if (v50 == -12)
                                                                                                                                                            {
                                                                                                                                                              sub_3608D0(v237, "SK");
                                                                                                                                                              sub_3608D0(v239, "CZ");
                                                                                                                                                              sub_3608D0(&v240, "SA");
                                                                                                                                                              memset(v175, 0, sizeof(v175));
                                                                                                                                                              sub_68678C(v175, v237, &v242, 3uLL);
                                                                                                                                                              v52 = 0;
                                                                                                                                                              while (1)
                                                                                                                                                              {
                                                                                                                                                                if (*(&v241 + v52 + 7) < 0)
                                                                                                                                                                {
                                                                                                                                                                  operator delete(*(&v240 + v52));
                                                                                                                                                                }

                                                                                                                                                                v52 -= 24;
                                                                                                                                                                if (v52 == -72)
                                                                                                                                                                {
                                                                                                                                                                  sub_3608D0(v237, "a");
                                                                                                                                                                  sub_3608D0(v239, "asda");
                                                                                                                                                                  sub_3608D0(&v240, "das");
                                                                                                                                                                  sub_3608D0(&v242, "de");
                                                                                                                                                                  sub_3608D0(&v243[1], "del");
                                                                                                                                                                  sub_3608D0(&v244, "des");
                                                                                                                                                                  sub_3608D0(v245, "do");
                                                                                                                                                                  sub_3608D0(&v247, "dos");
                                                                                                                                                                  sub_3608D0(&v248[1], "dueli");
                                                                                                                                                                  sub_3608D0(&v249, "ill");
                                                                                                                                                                  sub_3608D0(v251, "la");
                                                                                                                                                                  sub_3608D0(&v253, "le");
                                                                                                                                                                  sub_3608D0(v255, "o");
                                                                                                                                                                  sub_3608D0(&v256, "of");
                                                                                                                                                                  sub_3608D0(v258, "os");
                                                                                                                                                                  sub_3608D0(v260, "the");
                                                                                                                                                                  sub_1A5C918(&v176, v237, 16);
                                                                                                                                                                  v53 = 48;
                                                                                                                                                                  while (1)
                                                                                                                                                                  {
                                                                                                                                                                    if (SHIBYTE(v237[v53 - 1]) < 0)
                                                                                                                                                                    {
                                                                                                                                                                      operator delete(*&v236[v53 * 8 + 24]);
                                                                                                                                                                    }

                                                                                                                                                                    v53 -= 3;
                                                                                                                                                                    if (!(v53 * 8))
                                                                                                                                                                    {
                                                                                                                                                                      sub_3608D0(v237, "block");
                                                                                                                                                                      sub_3608D0(v239, "blk");
                                                                                                                                                                      sub_1A5C918(v177, v237, 2);
                                                                                                                                                                      v54 = 0;
                                                                                                                                                                      while (1)
                                                                                                                                                                      {
                                                                                                                                                                        if (SHIBYTE(v239[v54 + 2]) < 0)
                                                                                                                                                                        {
                                                                                                                                                                          operator delete(v239[v54]);
                                                                                                                                                                        }

                                                                                                                                                                        v54 -= 3;
                                                                                                                                                                        if (v54 == -6)
                                                                                                                                                                        {
                                                                                                                                                                          v177[24] = 0;
                                                                                                                                                                          *v237 = xmmword_23684F0;
                                                                                                                                                                          memset(v178, 0, sizeof(v178));
                                                                                                                                                                          sub_1A5CCEC(v178, v237, &v238, 2uLL);
                                                                                                                                                                          sub_3608D0(v237, "JP");
                                                                                                                                                                          sub_3608D0(v239, "TW");
                                                                                                                                                                          sub_3608D0(&v240, "HK");
                                                                                                                                                                          sub_3608D0(&v242, "MO");
                                                                                                                                                                          memset(v179, 0, sizeof(v179));
                                                                                                                                                                          sub_68678C(v179, v237, &v243[1], 4uLL);
                                                                                                                                                                          v55 = 0;
                                                                                                                                                                          while (1)
                                                                                                                                                                          {
                                                                                                                                                                            if (SHIBYTE(v243[v55]) < 0)
                                                                                                                                                                            {
                                                                                                                                                                              operator delete(v243[v55 - 2]);
                                                                                                                                                                            }

                                                                                                                                                                            v55 -= 3;
                                                                                                                                                                            if (v55 == -12)
                                                                                                                                                                            {
                                                                                                                                                                              sub_3608D0(v237, "JP");
                                                                                                                                                                              sub_3608D0(v239, "VN");
                                                                                                                                                                              memset(v180, 0, 24);
                                                                                                                                                                              sub_68678C(v180, v237, &v240, 2uLL);
                                                                                                                                                                              v56 = 0;
                                                                                                                                                                              while (1)
                                                                                                                                                                              {
                                                                                                                                                                                if (SHIBYTE(v239[v56 + 2]) < 0)
                                                                                                                                                                                {
                                                                                                                                                                                  operator delete(v239[v56]);
                                                                                                                                                                                }

                                                                                                                                                                                v56 -= 3;
                                                                                                                                                                                if (v56 == -6)
                                                                                                                                                                                {
                                                                                                                                                                                  v180[24] = 1;
                                                                                                                                                                                  v181 = 0x4024000000000000;
                                                                                                                                                                                  v182 = xmmword_2368500;
                                                                                                                                                                                  v183 = 1000000;
                                                                                                                                                                                  sub_3608D0(v237, "JP");
                                                                                                                                                                                  sub_23898(v184, v237, 1);
                                                                                                                                                                                  if (SHIBYTE(v238) < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v237[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  v184[5] = 0x64000003E8;
                                                                                                                                                                                  v184[6] = 0x3FE0000000000000;
                                                                                                                                                                                  v185 = 1;
                                                                                                                                                                                  sub_3608D0(v237, "NG");
                                                                                                                                                                                  sub_1A5C918(v186, v237, 1);
                                                                                                                                                                                  if (SHIBYTE(v238) < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v237[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  v186[24] = 1;
                                                                                                                                                                                  v75 = 0;
                                                                                                                                                                                  v76 = 0;
                                                                                                                                                                                  memset(v73, 0, sizeof(v73));
                                                                                                                                                                                  v74 = 1065353216;
                                                                                                                                                                                  v219[1] = 0;
                                                                                                                                                                                  v219[0] = 0;
                                                                                                                                                                                  v220 = 0;
                                                                                                                                                                                  LOBYTE(v237[0]) = 0;
                                                                                                                                                                                  LOBYTE(v239[1]) = 0;
                                                                                                                                                                                  v68[0] = 0;
                                                                                                                                                                                  v70 = 0;
                                                                                                                                                                                  v71 = 0;
                                                                                                                                                                                  v72 = 0;
                                                                                                                                                                                  v63[0] = 0;
                                                                                                                                                                                  v65 = 0;
                                                                                                                                                                                  v66 = 0;
                                                                                                                                                                                  v67 = 0;
                                                                                                                                                                                  v58[0] = 0;
                                                                                                                                                                                  v60 = 0;
                                                                                                                                                                                  v61 = 0;
                                                                                                                                                                                  v62 = 0;
                                                                                                                                                                                  sub_1A5E4D8(&v357, 0, v112, &v75, v73, &v196, 0, v219, 0, v237, v68, v63, v58);
                                                                                                                                                                                  if (v62)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v62);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (v60 == 1 && v59)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v59);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (v67)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v67);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (v65 == 1 && v64)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v64);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (v72)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v72);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (v70 == 1 && v69)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v69);
                                                                                                                                                                                  }

                                                                                                                                                                                  v237[0] = v219;
                                                                                                                                                                                  sub_1962638(v237);
                                                                                                                                                                                  sub_1965BCC(v73);
                                                                                                                                                                                  if (v76)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_1220A18(v76);
                                                                                                                                                                                  }

                                                                                                                                                                                  sub_1965ECC(v112);
                                                                                                                                                                                  v360 = v57;
                                                                                                                                                                                  sub_1D22FDC();
                                                                                                                                                                                }
                                                                                                                                                                              }
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E76894(_Unwind_Exception *a1)
{
  STACK[0x9F0] = &STACK[0x7C0];
  sub_195E3E8(&STACK[0x9F0]);
  if (SLOBYTE(STACK[0xBE7]) < 0)
  {
    operator delete(STACK[0xBD0]);
  }

  STACK[0xBD0] = &STACK[0x7D8];
  sub_195E3E8(&STACK[0xBD0]);
  if (*(v1 + 23) < 0)
  {
    operator delete(STACK[0x14A0]);
  }

  _Unwind_Resume(a1);
}

void sub_1E78420()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xBD0])
    {
      JUMPOUT(0x1E78410);
    }
  }
}

void sub_1E78580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = v19 - 64;
  sub_19A2570(&a19);
  _Unwind_Resume(a1);
}

void sub_1E786AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_195E3E8(&a12);
  _Unwind_Resume(a1);
}

void sub_1E78804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a19 = v19 - 64;
  sub_19A2570(&a19);
  _Unwind_Resume(a1);
}

std::string *sub_1E78868(std::string *this)
{
  v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = v2;
  v4 = this->__r_.__value_.__r.__words[0];
  size = this->__r_.__value_.__l.__size_;
  if ((v2 & 0x80u) == 0)
  {
    v6 = (this + v2);
  }

  else
  {
    v6 = (this->__r_.__value_.__r.__words[0] + size);
  }

  if ((v2 & 0x80u) == 0)
  {
    v7 = this;
  }

  else
  {
    v7 = this->__r_.__value_.__r.__words[0];
  }

  if (v7 != v6)
  {
    do
    {
      v7->__r_.__value_.__s.__data_[0] = __tolower(v7->__r_.__value_.__s.__data_[0]);
      v7 = (v7 + 1);
    }

    while (v7 != v6);
    v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    v4 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
    v3 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v3 >= 0)
  {
    v8 = this;
  }

  else
  {
    v8 = v4;
  }

  if (v3 >= 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = size;
  }

  v10 = (v8 + v9);
  if (v9)
  {
    v11 = v9 - 1;
    while (1)
    {
      v12 = v8->__r_.__value_.__s.__data_[0];
      if (v12 == 39 || v12 == 44)
      {
        break;
      }

      v8 = (v8 + 1);
      --v11;
      if (v8 == v10)
      {
        goto LABEL_31;
      }
    }

    if (v8 == v10 || (&v8->__r_.__value_.__l.__data_ + 1) == v10)
    {
      v10 = v8;
    }

    else
    {
      v13 = 1;
      v10 = v8;
      do
      {
        v14 = v8->__r_.__value_.__s.__data_[v13];
        if (v14 != 39 && v14 != 44)
        {
          v10->__r_.__value_.__s.__data_[0] = v14;
          v10 = (v10 + 1);
        }

        ++v13;
        --v11;
      }

      while (v11);
      v2 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      v4 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
      v3 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }
  }

LABEL_31:
  v15 = v4 + size;
  v16 = this + v2;
  if (v3 >= 0)
  {
    v4 = this;
  }

  else
  {
    v16 = v15;
  }

  return std::string::erase(this, v10 - v4, v16 - v10);
}

void sub_1E789A4(void ***a1, uint64_t *a2)
{
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3 < 0)
  {
    v3 = a1[1];
  }

  __p[0] = v4;
  __p[1] = v3;
  sub_19AD89C(__p, 32, &v22);
  v5 = v22;
  if (v23 != v22)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = &v5[v6];
      sub_1E78868(&v5[v6]);
      v10 = v5[v6 + 23];
      if (v10 < 0)
      {
        v10 = *&v5[v6 + 8];
        sub_325C(v14, *&v5[v6], *&v5[v6 + 8]);
      }

      else
      {
        v11 = *v9;
        v15 = *(v9 + 2);
        *v14 = v11;
      }

      if (SHIBYTE(v15) < 0)
      {
        sub_325C(__p, v14[0], v14[1]);
      }

      else
      {
        *__p = *v14;
        v17 = v15;
      }

      v18 = v8;
      v19 = v8 + v10;
      v21[0] = 0;
      v21[1] = 0;
      v20 = v21;
      v12 = a2[1];
      if (v12 >= a2[2])
      {
        v13 = sub_19A1E98(a2, __p);
      }

      else
      {
        sub_19A25E4(a2[1], __p);
        v13 = v12 + 64;
        a2[1] = v12 + 64;
      }

      a2[1] = v13;
      sub_195A77C(&v20, v21[0]);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      v8 += v10 + 1;
      ++v7;
      v5 = v22;
      v6 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3) > v7);
  }

  __p[0] = &v22;
  sub_195E3E8(__p);
}

void sub_1E78B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a16 = &a25;
  sub_195E3E8(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1E78BA4(uint64_t a1, __int128 **a2, __int128 **a3, __int128 **a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  v14 = sub_3608D0(a1, "en");
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0;
  sub_353184((v14 + 3), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_353184(a1 + 48, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_353184(a1 + 72, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  if (*(a5 + 23) < 0)
  {
    sub_325C((a1 + 96), *a5, *(a5 + 1));
  }

  else
  {
    v15 = *a5;
    *(a1 + 112) = *(a5 + 2);
    *(a1 + 96) = v15;
  }

  if (*(a6 + 23) < 0)
  {
    sub_325C((a1 + 120), *a6, *(a6 + 1));
  }

  else
  {
    v16 = *a6;
    *(a1 + 136) = *(a6 + 2);
    *(a1 + 120) = v16;
  }

  if (*(a7 + 23) < 0)
  {
    sub_325C((a1 + 144), *a7, *(a7 + 1));
  }

  else
  {
    v17 = *a7;
    *(a1 + 160) = *(a7 + 2);
    *(a1 + 144) = v17;
  }

  return a1;
}

void sub_1E78D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 143) < 0)
  {
    operator delete(*(v3 + 120));
  }

  if (*(v3 + 119) < 0)
  {
    operator delete(*(v3 + 96));
  }

  sub_195E3E8(va);
  sub_195E3E8(va);
  sub_195E3E8(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1E78D90(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1E78E18(result, a4);
  }

  return result;
}

void sub_1E78DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_19A2570(&a9);
  _Unwind_Resume(a1);
}

void sub_1E78E18(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_19A2490(a1, a2);
  }

  sub_1794();
}

uint64_t *sub_1E78E64(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_19A22C0(v4, *v6, v6[1], (v6[1] - *v6) >> 6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1E78F18(v8);
  return v4;
}

uint64_t sub_1E78F18(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1E78F50(a1);
  }

  return a1;
}

void sub_1E78F50(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_19A240C(&v3);
  }
}

uint64_t **sub_1E78F9C(uint64_t **a1, char *a2, uint64_t a3, _BYTE **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 28);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_1E79070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  sub_1966280(qword_27F00A0, v1255, 249);
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

void sub_1E80058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
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

void sub_1E83B2C()
{
  sub_3608D0(__p, "earthstats.max_elevation");
  qword_27F0058 = 0;
  unk_27F0060 = 0;
  qword_27F0068 = 0;
  sub_68678C(&qword_27F0058, __p, &v10, 1uLL);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "earthstats.length");
  qword_27F0070 = 0;
  *algn_27F0078 = 0;
  qword_27F0080 = 0;
  sub_68678C(&qword_27F0070, __p, &v10, 1uLL);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_3608D0(__p, "hotelstravel.trainstations");
  qword_27F0088 = 0;
  unk_27F0090 = 0;
  qword_27F0098 = 0;
  sub_68678C(&qword_27F0088, __p, &v10, 1uLL);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1E79070(v0, v1, v2, v3, v4, v5, v6, v7);
}

void sub_1E83C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E83C78(uint64_t a1, uint64_t a2)
{
  if (sub_1DED8A4(a2) && *(a1 + 56) >= 1)
  {
    v3 = *(*(a1 + 64) + 8);
    *(v3 + 40) |= 0x4000000u;
    v4 = *(v3 + 272);
    if (!v4)
    {
      v5 = *(v3 + 8);
      v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v5)
      {
        v6 = *v6;
      }

      v4 = sub_1861658(v6);
      *(v3 + 272) = v4;
    }

    v7 = *(v4 + 88);
    if (v7 && (v8 = *(v4 + 80), v8 < *v7))
    {
      *(v4 + 80) = v8 + 1;
      v9 = *&v7[2 * v8 + 2];
    }

    else
    {
      v10 = sub_18615D8(*(v4 + 72));
      v9 = sub_19593CC(v4 + 72, v10);
    }

    *(v9 + 16) |= 2u;
    v11 = *(v9 + 32);
    if (!v11)
    {
      v12 = *(v9 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_1861554(v13);
      *(v9 + 32) = v11;
    }

    *(v11 + 16) |= 0x40u;
    *(v11 + 72) = 1;
    *(v9 + 16) |= 4u;
    *(v9 + 40) = 2;
  }
}

void sub_1E83D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_73EEC(a3);
  sub_1E04C18(v7, &v33);
  v8 = sub_1DED8CC(a3);
  sub_1E04AEC(v8, &v31);
  if (v32[1])
  {
    sub_1964A00(&v33, v31, v32);
  }

  if (*(sub_73EEC(a3) + 16))
  {
    v9 = *(sub_73EEC(a3) + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      sub_325C(&v29, *v9, *(v9 + 8));
    }

    else
    {
      v10 = *v9;
      v30 = *(v9 + 16);
      v29 = v10;
    }
  }

  else
  {
    sub_3608D0(&v29, "US");
  }

  sub_1E054A8((a4 + 1216), &v28, &v33);
  v11 = sub_73EEC(a3);
  sub_1E05030(v11, &v27);
  v12 = sub_73EEC(a3);
  sub_1E053A0(v12, &v26);
  sub_1D130C4(&v27, &v26);
  sub_3608D0(&__p, "places_category_attribute_0_0_0");
  v13 = sub_19D52D4((a4 + 1216), &__p);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v25[1] = 0;
  v25[0] = 0;
  v24 = v25;
  if (v13 && ((*(*v13[5] + 8))(v13[5]) & 1) == 0)
  {
    v14 = v13[5];
    if (v14)
    {
      if (v14)
      {
        v15 = v13[6];
        if (v15)
        {
          atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
        }
      }
    }

    sub_1AC3B00(v14, &v27, &__p);
  }

  v21[1] = 0;
  v21[0] = 0;
  v20 = v21;
  sub_1963D78(v19, (a4 + 8));
  v16 = sub_57478(a3);
  v17 = sub_57478(a3);
  v18 = sub_1DED8CC(a3);
  sub_19C478C(&__p, &v28, &v24, &v20, (a4 + 1296), a1, v19, v16, (v17 + 40), v18);
  sub_1965ECC(v19);
  sub_19C5870(&v20, v21[0]);
  sub_206EE48();
}

void sub_1E844E4(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_1220A18(v1);
  }

  sub_19C57C4(&STACK[0xBE8], STACK[0xBF0]);
  sub_7E724(&STACK[0xC00], STACK[0xC08]);
  sub_7E724(&STACK[0xC18], STACK[0xC20]);
  sub_19C5770(&STACK[0xC30]);
  if (*(v2 - 153) < 0)
  {
    operator delete(*(v2 - 176));
  }

  sub_7E724(v2 - 144, *(v2 - 136));
  sub_7E724(v2 - 120, *(v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1E8460C(uint64_t a1)
{
  if (sub_19723E0(a1))
  {

    sub_206F790();
  }

  sub_206F4CC();
}

void sub_1E8466C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*sub_1DED05C(a1) == 3 && *(a2 + 56) >= 1)
  {
    v5 = *(*(a2 + 64) + 8);
    *(v5 + 40) |= 1u;
    v6 = *(v5 + 64);
    if (!v6)
    {
      v7 = *(v5 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      v6 = sub_185D55C(v8);
      *(v5 + 64) = v6;
    }

    sub_3608D0(&v28, "Approximate Location");
    sub_3608D0(&__p, "localization_config");
    v9 = sub_19D52D4((a3 + 1216), &__p.__r_.__value_.__l.__data_);
    v10 = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v10)
      {
        goto LABEL_39;
      }
    }

    else if (!v9)
    {
LABEL_39:
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      return;
    }

    v12 = v10[5];
    v11 = v10 + 5;
    if ((*(*v12 + 8))(v12))
    {
      goto LABEL_39;
    }

    sub_17957B0(v6);
    sub_3608D0(v25, "ApproximateLocation");
    sub_3608D0(v23, "ApproximateLocation");
    sub_2032A7C(v11, a3, v25, v23, &__p);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    sub_3608D0(v23, "ApproximateLocation");
    sub_2032BB4(v11, a3, v23, v25);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__p.__r_.__value_.__l.__size_)
      {
LABEL_23:
        *(v6 + 40) |= 0x40u;
        v13 = *(v6 + 344);
        if (!v13)
        {
          v14 = *(v6 + 8);
          v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
          if (v14)
          {
            v15 = *v15;
          }

          v13 = sub_16F5A54(v15);
          *(v6 + 344) = v13;
        }

        *(v13 + 4) |= 2u;
        v16 = v13[1];
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        sub_194EA1C(v13 + 4, &v28, v17);
        *(v6 + 40) |= 0x40u;
        v18 = *(v6 + 344);
        if (!v18)
        {
          v19 = *(v6 + 8);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = sub_16F5A54(v20);
          *(v6 + 344) = v18;
        }

        *(v18 + 4) |= 1u;
        v21 = v18[1];
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        sub_194EA1C(v18 + 3, v25, v22);
        if (v26 < 0)
        {
          operator delete(v25[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_39;
      }
    }

    else if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_23;
    }

    std::string::operator=(&v28, &__p);
    goto LABEL_23;
  }
}

void sub_1E84910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1E849AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v60 = v9;
  v11 = v10;
  v12 = v8;
  v13 = sub_73EBC(v10);
  sub_1E04EA8(v13, v177);
  sub_73EBC(v11);
  sub_1E054A8((v60 + 1216), &v176, v177);
  v174[1] = 0;
  v174[0] = 0;
  v173 = v174;
  v172[1] = 0;
  v172[0] = 0;
  v171 = v172;
  v96[0] = xmmword_2368410;
  v96[1] = xmmword_2368420;
  v96[2] = xmmword_2368430;
  v97 = 16843009;
  v98 = 1;
  v99 = 0;
  v100 = 0;
  v101 = xmmword_2368440;
  v102 = 0x4170000042480000;
  v103 = 8;
  v104 = 1;
  v105 = 0x3FD999999999999ALL;
  v106 = 0x10000003CLL;
  v107 = xmmword_2368450;
  v108 = xmmword_2368460;
  v109 = xmmword_2368470;
  v110 = xmmword_2368480;
  v111 = 16777473;
  sub_3608D0(v218, "en");
  sub_3608D0(&v220, "es");
  sub_3608D0(&v222, "de");
  sub_3608D0(&v224, "fr");
  sub_3608D0(&v225[1], "it");
  sub_3608D0(&v226, "no");
  sub_3608D0(v227, "nb");
  sub_3608D0(&v229, "fi");
  sub_3608D0(&v230[1], "pt");
  sub_3608D0(&v231, "nl");
  sub_3608D0(v233, "sv");
  sub_3608D0(&v235, "is");
  sub_3608D0(v237, "da");
  sub_3608D0(&v238, "zh");
  sub_3608D0(v240, "ja");
  sub_3608D0(v242, "vi");
  sub_3608D0(v243, "th");
  sub_3608D0(&v244, "ms");
  sub_3608D0(v246, "tr");
  sub_3608D0(v248, "fil");
  sub_3608D0(v249, "bg");
  sub_3608D0(&v250, "ru");
  sub_3608D0(&v252, "ro");
  sub_3608D0(&v254, "pl");
  sub_3608D0(v256, "uk");
  sub_3608D0(&v257, "cs");
  sub_3608D0(v259, "el");
  sub_3608D0(v261, "cy");
  sub_3608D0(v262, "hu");
  sub_3608D0(&v263, "sk");
  sub_3608D0(v265, "hr");
  sub_3608D0(v267, "et");
  sub_3608D0(v268, "lt");
  sub_3608D0(&v269, "lv");
  sub_3608D0(v271, "mk");
  sub_3608D0(v273, "ca");
  sub_3608D0(v274, "bs");
  sub_3608D0(&v275, "sr");
  sub_3608D0(v277, "sq");
  sub_3608D0(v279, "hi");
  sub_3608D0(&v280, "id");
  sub_3608D0(&v281, "jv");
  sub_3608D0(v283, "fj");
  sub_3608D0(v285, "my");
  sub_3608D0(&v286, "km");
  sub_3608D0(&v287, "khm");
  sub_3608D0(v289, "bn");
  sub_3608D0(v291, "ben");
  sub_3608D0(v292, "dz");
  sub_3608D0(&v293, "ne");
  sub_3608D0(v295, "ur");
  sub_3608D0(v297, "kk");
  sub_3608D0(v298, "tk");
  sub_3608D0(&v299, "uz");
  memset(v112, 0, sizeof(v112));
  sub_68678C(v112, v218, &v301, 0x36uLL);
  v14 = 162;
  while (1)
  {
    if (SHIBYTE(v218[v14 - 1]) < 0)
    {
      operator delete(*&v217[v14 * 8 + 24]);
    }

    v14 -= 3;
    if (!(v14 * 8))
    {
      sub_3608D0(v218, "IL");
      v59 = v12;
      sub_3608D0(&v220, "TN");
      sub_3608D0(&v222, "MA");
      sub_3608D0(&v224, "IQ");
      sub_3608D0(&v225[1], "IR");
      sub_3608D0(&v226, "JO");
      sub_3608D0(v227, "LB");
      sub_3608D0(&v229, "LY");
      sub_3608D0(&v230[1], "EG");
      sub_3608D0(&v231, "OM");
      sub_3608D0(v233, "YE");
      sub_3608D0(&v235, "SA");
      sub_3608D0(v237, "SY");
      sub_3608D0(&v238, "BH");
      sub_3608D0(v240, "QA");
      sub_3608D0(v242, "AE");
      sub_3608D0(v243, "KW");
      sub_3608D0(&v244, "EH");
      sub_3608D0(v246, "NE");
      sub_3608D0(v248, "ML");
      sub_3608D0(v249, "TD");
      sub_3608D0(&v250, "MR");
      sub_3608D0(&v252, "SD");
      memset(v113, 0, sizeof(v113));
      sub_68678C(v113, v218, &v254, 0x17uLL);
      v15 = 69;
      while (1)
      {
        if (SHIBYTE(v218[v15 - 1]) < 0)
        {
          operator delete(*&v217[v15 * 8 + 24]);
        }

        v15 -= 3;
        if (!(v15 * 8))
        {
          sub_3608D0(v218, "6_7_4");
          sub_3608D0(&v220, "7_7_4");
          sub_3608D0(&v222, "8_7_4");
          sub_3608D0(&v224, "9_7_4");
          sub_3608D0(&v225[1], "10_7_4");
          sub_3608D0(&v226, "8_8_4");
          sub_3608D0(v227, "9_8_4");
          sub_3608D0(&v229, "10_8_4");
          sub_3608D0(&v230[1], "8_9_4");
          sub_3608D0(&v231, "9_9_4");
          sub_3608D0(v233, "10_9_4");
          memset(v114, 0, sizeof(v114));
          sub_68678C(v114, v218, &v235, 0xBuLL);
          v16 = 33;
          while (1)
          {
            if (SHIBYTE(v218[v16 - 1]) < 0)
            {
              operator delete(*&v217[v16 * 8 + 24]);
            }

            v16 -= 3;
            if (!(v16 * 8))
            {
              v115 = 15;
              v116 = 1;
              v117 = 0x400000010;
              v118 = 0u;
              v119 = 0u;
              v120 = 0u;
              v121 = 0x4008000000000000;
              v122 = 0x100000014;
              v123 = 10;
              v124 = 257;
              v125 = xmmword_2368490;
              v126 = xmmword_23684A0;
              sub_3608D0(v218, "browse_subcategory_gasstations");
              sub_3608D0(&v220, "browse_subcategory_parking");
              sub_3608D0(&v222, "browse_subcategory_restaurants");
              sub_3608D0(&v224, "browse_subcategory_coffee_shops");
              sub_3608D0(&v225[1], "browse_subcategory_groceries");
              memset(v127, 0, sizeof(v127));
              sub_68678C(v127, v218, &v226, 5uLL);
              v17 = 0;
              while (1)
              {
                if (SHIBYTE(v225[v17 + 3]) < 0)
                {
                  operator delete(v225[v17 + 1]);
                }

                v17 -= 3;
                if (v17 == -15)
                {
                  sub_3608D0(v218, "browse_subcategory_gasstations");
                  sub_3608D0(&v220, "browse_subcategory_parking");
                  sub_3608D0(&v222, "browse_subcategory_restaurants");
                  sub_3608D0(&v224, "browse_subcategory_coffee_shops");
                  sub_3608D0(&v225[1], "browse_subcategory_groceries");
                  memset(v128, 0, sizeof(v128));
                  sub_68678C(v128, v218, &v226, 5uLL);
                  v18 = 0;
                  while (1)
                  {
                    if (SHIBYTE(v225[v18 + 3]) < 0)
                    {
                      operator delete(v225[v18 + 1]);
                    }

                    v18 -= 3;
                    if (v18 == -15)
                    {
                      sub_3608D0(v218, "browse_subcategory_evcharger_carplay");
                      sub_3608D0(&v220, "browse_subcategory_parking");
                      sub_3608D0(&v222, "browse_subcategory_restaurants");
                      sub_3608D0(&v224, "browse_subcategory_coffee_shops");
                      sub_3608D0(&v225[1], "browse_subcategory_groceries");
                      memset(v129, 0, sizeof(v129));
                      sub_68678C(v129, v218, &v226, 5uLL);
                      v19 = 0;
                      while (1)
                      {
                        if (SHIBYTE(v225[v19 + 3]) < 0)
                        {
                          operator delete(v225[v19 + 1]);
                        }

                        v19 -= 3;
                        if (v19 == -15)
                        {
                          sub_3608D0(v218, "browse_subcategory_gasstations");
                          sub_3608D0(&v220, "browse_subcategory_parking");
                          sub_3608D0(&v222, "browse_subcategory_restaurants");
                          sub_3608D0(&v224, "browse_subcategory_coffee_shops");
                          sub_3608D0(&v225[1], "browse_subcategory_groceries");
                          memset(v130, 0, sizeof(v130));
                          sub_68678C(v130, v218, &v226, 5uLL);
                          v20 = 0;
                          while (1)
                          {
                            if (SHIBYTE(v225[v20 + 3]) < 0)
                            {
                              operator delete(v225[v20 + 1]);
                            }

                            v20 -= 3;
                            if (v20 == -15)
                            {
                              sub_3608D0(v218, "active.hiking");
                              sub_3608D0(&v220, "active.parks.trailhead");
                              sub_3608D0(&v222, "hotelstravel.campgrounds");
                              sub_3608D0(&v224, "hotelstravel.visitorcenters");
                              sub_3608D0(&v225[1], "travel_and_leisure.hiking_trail");
                              sub_3608D0(&v226, "travel_and_leisure.hiking_trail.trailhead");
                              sub_3608D0(v227, "travel_and_leisure.campground");
                              sub_3608D0(&v229, "travel_and_leisure.visitor_center");
                              sub_1A5C918(&v131, v218, 8);
                              v21 = 0;
                              while (1)
                              {
                                if (SHIBYTE(v230[v21]) < 0)
                                {
                                  operator delete(v230[v21 - 2]);
                                }

                                v21 -= 3;
                                if (v21 == -24)
                                {
                                  sub_3608D0(v218, "active");
                                  sub_3608D0(&v220, "emergencyrooms");
                                  sub_3608D0(&v222, "hospitals");
                                  sub_3608D0(&v224, "urgent_care");
                                  sub_3608D0(&v225[1], "airports");
                                  sub_3608D0(&v226, "skiresorts");
                                  sub_3608D0(v227, "transport");
                                  sub_3608D0(&v229, "touristattraction");
                                  sub_3608D0(&v230[1], "physicalfeature");
                                  sub_3608D0(&v231, "travel_and_leisure");
                                  sub_3608D0(v233, "emergency_room");
                                  sub_3608D0(&v235, "hospital");
                                  sub_3608D0(v237, "urgent_care_center");
                                  sub_3608D0(&v238, "airport");
                                  sub_3608D0(v240, "ski_resort");
                                  sub_3608D0(v242, "transportation_service");
                                  sub_3608D0(v243, "tourist_attraction");
                                  sub_3608D0(&v244, "physical_feature");
                                  sub_1A5C918(&v132, v218, 18);
                                  v22 = 54;
                                  while (1)
                                  {
                                    if (SHIBYTE(v218[v22 - 1]) < 0)
                                    {
                                      operator delete(*&v217[v22 * 8 + 24]);
                                    }

                                    v22 -= 3;
                                    if (!(v22 * 8))
                                    {
                                      sub_3608D0(v218, "kids_activities");
                                      sub_3608D0(&v220, "parks");
                                      sub_3608D0(&v222, "playgrounds");
                                      sub_3608D0(&v224, "sportscomplex");
                                      sub_3608D0(&v225[1], "statue");
                                      sub_3608D0(&v226, "zoos");
                                      sub_3608D0(v227, "kids_fun_center");
                                      sub_3608D0(&v229, "park");
                                      sub_3608D0(&v230[1], "playground");
                                      sub_3608D0(&v231, "sports_complex");
                                      sub_3608D0(v233, "zoo");
                                      sub_1A5C918(&v133, v218, 11);
                                      v23 = 33;
                                      while (1)
                                      {
                                        if (SHIBYTE(v218[v23 - 1]) < 0)
                                        {
                                          operator delete(*&v217[v23 * 8 + 24]);
                                        }

                                        v23 -= 3;
                                        if (!(v23 * 8))
                                        {
                                          sub_3608D0(v218, "food");
                                          sub_3608D0(&v220, "restaurants");
                                          sub_3608D0(&v222, "financialservices");
                                          sub_3608D0(&v224, "localservices");
                                          sub_3608D0(&v225[1], "homedecor");
                                          sub_3608D0(&v226, "beautysvc");
                                          sub_3608D0(v227, "officebuilding");
                                          sub_3608D0(&v229, "supermarket");
                                          sub_3608D0(&v230[1], "flowers");
                                          sub_3608D0(&v231, "homeandgarden");
                                          sub_3608D0(v233, "servicestations");
                                          sub_3608D0(&v235, "parks");
                                          sub_3608D0(v237, "playgrounds");
                                          sub_3608D0(&v238, "sportscomplex");
                                          sub_3608D0(v240, "trainstations");
                                          sub_3608D0(v242, "food_mart");
                                          sub_3608D0(v243, "restaurant");
                                          sub_3608D0(&v244, "financial_service");
                                          sub_3608D0(v246, "local_service");
                                          sub_3608D0(v248, "home_decor_store");
                                          sub_3608D0(v249, "beauty_service");
                                          sub_3608D0(&v250, "office_building");
                                          sub_3608D0(&v252, "floral_shop");
                                          sub_3608D0(&v254, "home_goods_store");
                                          sub_3608D0(v256, "service_station");
                                          sub_3608D0(&v257, "park");
                                          sub_3608D0(v259, "playground");
                                          sub_3608D0(v261, "sports_complex");
                                          sub_3608D0(v262, "train_station");
                                          sub_1A5C918(v134, v218, 29);
                                          v24 = 87;
                                          while (1)
                                          {
                                            if (SHIBYTE(v218[v24 - 1]) < 0)
                                            {
                                              operator delete(*&v217[v24 * 8 + 24]);
                                            }

                                            v24 -= 3;
                                            if (!(v24 * 8))
                                            {
                                              v134[24] = 1;
                                              v135 = xmmword_23684B0;
                                              v136 = xmmword_23684C0;
                                              v137 = 30;
                                              v138 = 0x4000000000000000;
                                              v139 = xmmword_23684D0;
                                              v140 = 2;
                                              v141 = 257;
                                              sub_3608D0(v198, "ranker_pw_en_model");
                                              sub_3608D0(&v323, "CA");
                                              sub_3608D0(v325, "GB");
                                              sub_3608D0(v326, "AU");
                                              sub_3608D0(&v327, "NZ");
                                              sub_3608D0(v328, "IE");
                                              sub_3608D0(v329, "ZA");
                                              v195 = 0uLL;
                                              v196 = 0;
                                              sub_68678C(&v195, &v323, &v330, 6uLL);
                                              sub_1A5C99C(&v330, v198, &v195);
                                              sub_3608D0(v188, "ranker_pw_us_model");
                                              sub_3608D0(v182, "US");
                                              v185 = 0uLL;
                                              v186 = 0;
                                              sub_68678C(&v185, v182, v184, 1uLL);
                                              sub_1A5C99C(v333, v188, &v185);
                                              sub_3608D0(&v179, "ranker_pw_eu_model");
                                              sub_3608D0(v200, "DE");
                                              sub_3608D0(v202, "FR");
                                              sub_3608D0(&v203, "BE");
                                              sub_3608D0(v204, "CH");
                                              sub_3608D0(v205, "AT");
                                              sub_3608D0(v206, "ES");
                                              sub_3608D0(v207, "IT");
                                              sub_3608D0(v208, "NL");
                                              sub_3608D0(v209, "PT");
                                              sub_3608D0(v210, "NO");
                                              sub_3608D0(v211, "DK");
                                              sub_3608D0(v212, "FI");
                                              sub_3608D0(v213, "SE");
                                              v321 = 0uLL;
                                              v322 = 0;
                                              sub_68678C(&v321, v200, &v214, 0xDuLL);
                                              sub_1A5C99C(&v335, &v179, &v321);
                                              sub_3608D0(&v94, "ranker_pw_cn_model");
                                              sub_3608D0(&v319, "CN");
                                              v92 = 0uLL;
                                              v93 = 0;
                                              sub_68678C(&v92, &v319, &v321, 1uLL);
                                              sub_1A5C99C(&v336, &v94, &v92);
                                              sub_3608D0(&v90, "ranker_pw_cjk_model");
                                              sub_3608D0(&v311, "JP");
                                              sub_3608D0(v312, "MO");
                                              sub_3608D0(&v313, "PH");
                                              sub_3608D0(v314, "MY");
                                              sub_3608D0(v315, "TW");
                                              sub_3608D0(v316, "HK");
                                              v317 = 0uLL;
                                              v318 = 0;
                                              sub_68678C(&v317, &v311, &v317, 6uLL);
                                              sub_1A5C99C(&v337, &v90, &v317);
                                              sub_3608D0(__p, "ranker_pw_row_model");
                                              sub_3608D0(v218, "AR");
                                              sub_3608D0(&v220, "BR");
                                              sub_3608D0(&v222, "MX");
                                              sub_3608D0(&v224, "CL");
                                              sub_3608D0(&v225[1], "CZ");
                                              sub_3608D0(&v226, "GR");
                                              sub_3608D0(v227, "HR");
                                              sub_3608D0(&v229, "HU");
                                              sub_3608D0(&v230[1], "ID");
                                              sub_3608D0(&v231, "IN");
                                              sub_3608D0(v233, "PL");
                                              sub_3608D0(&v235, "RO");
                                              sub_3608D0(v237, "SG");
                                              sub_3608D0(&v238, "SK");
                                              sub_3608D0(v240, "TH");
                                              sub_3608D0(v242, "TR");
                                              sub_3608D0(v243, "VN");
                                              sub_3608D0(&v244, "AE");
                                              sub_3608D0(v246, "EG");
                                              sub_3608D0(v248, "IL");
                                              sub_3608D0(v249, "NG");
                                              sub_3608D0(&v250, "MA");
                                              v85 = 0;
                                              v86 = 0;
                                              v87 = 0;
                                              sub_68678C(&v85, v218, &v252, 0x16uLL);
                                              sub_1A5C99C(&v338, __p, &v85);
                                              memset(v142, 0, sizeof(v142));
                                              sub_1A5CA34(v142, &v330, v339, 6uLL);
                                              v25 = 36;
                                              while (1)
                                              {
                                                v83[0] = &v329[v25];
                                                sub_195E3E8(v83);
                                                if (SHIBYTE(v328[v25 + 2]) < 0)
                                                {
                                                  operator delete(v328[v25]);
                                                }

                                                v25 -= 6;
                                                if (!(v25 * 8))
                                                {
                                                  v83[0] = &v85;
                                                  sub_195E3E8(v83);
                                                  v26 = 66;
                                                  while (1)
                                                  {
                                                    if (SHIBYTE(v218[v26 - 1]) < 0)
                                                    {
                                                      operator delete(*&v217[v26 * 8 + 24]);
                                                    }

                                                    v26 -= 3;
                                                    if (!(v26 * 8))
                                                    {
                                                      if (v89 < 0)
                                                      {
                                                        operator delete(__p[0]);
                                                      }

                                                      v218[0] = &v317;
                                                      sub_195E3E8(v218);
                                                      v27 = 0;
                                                      while (1)
                                                      {
                                                        if (SHIBYTE(v316[v27 + 2]) < 0)
                                                        {
                                                          operator delete(v316[v27]);
                                                        }

                                                        v27 -= 3;
                                                        if (v27 == -18)
                                                        {
                                                          if (SHIBYTE(v91) < 0)
                                                          {
                                                            operator delete(v90);
                                                          }

                                                          v218[0] = &v92;
                                                          sub_195E3E8(v218);
                                                          if (SHIBYTE(v320) < 0)
                                                          {
                                                            operator delete(v319);
                                                          }

                                                          if (SHIBYTE(v95) < 0)
                                                          {
                                                            operator delete(v94);
                                                          }

                                                          v218[0] = &v321;
                                                          sub_195E3E8(v218);
                                                          v28 = 39;
                                                          while (1)
                                                          {
                                                            if (SHIBYTE(v200[v28 - 1]) < 0)
                                                            {
                                                              operator delete(*&v199[v28 * 8 + 1]);
                                                            }

                                                            v28 -= 3;
                                                            if (!(v28 * 8))
                                                            {
                                                              if (SHIBYTE(v180) < 0)
                                                              {
                                                                operator delete(v179);
                                                              }

                                                              v218[0] = &v185;
                                                              sub_195E3E8(v218);
                                                              if (v183 < 0)
                                                              {
                                                                operator delete(v182[0]);
                                                              }

                                                              if (v189 < 0)
                                                              {
                                                                operator delete(v188[0]);
                                                              }

                                                              v218[0] = &v195;
                                                              sub_195E3E8(v218);
                                                              v29 = 0;
                                                              while (1)
                                                              {
                                                                if (SHIBYTE(v329[v29 + 2]) < 0)
                                                                {
                                                                  operator delete(v329[v29]);
                                                                }

                                                                v29 -= 3;
                                                                if (v29 == -18)
                                                                {
                                                                  if ((v199[0] & 0x80000000) != 0)
                                                                  {
                                                                    operator delete(v198[0]);
                                                                  }

                                                                  sub_3608D0(v218, "EG");
                                                                  v220 = 0x4058000000000000;
                                                                  sub_3608D0(v221, "CA");
                                                                  *(&v222 + 1) = 0x4058000000000000;
                                                                  sub_3608D0(&v223, "GB");
                                                                  v225[0] = 0x4058000000000000;
                                                                  sub_3608D0(&v225[1], "US");
                                                                  *&v226 = 0x4058000000000000;
                                                                  sub_3608D0(&v226 + 1, "DE");
                                                                  v227[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v228, "FR");
                                                                  v230[0] = 0x4058000000000000;
                                                                  sub_3608D0(&v230[1], "BE");
                                                                  v231 = 0x4058000000000000;
                                                                  sub_3608D0(&v232, "CH");
                                                                  v233[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v234, "CN");
                                                                  v236 = 0x4058000000000000;
                                                                  sub_3608D0(v237, "AT");
                                                                  v238 = 0x4058000000000000;
                                                                  sub_3608D0(&v239, "ES");
                                                                  v240[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v241, "AU");
                                                                  v242[2] = 0x4058000000000000;
                                                                  sub_3608D0(v243, "NZ");
                                                                  v244 = 0x4058000000000000;
                                                                  sub_3608D0(&v245, "IE");
                                                                  v246[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v247, "ZA");
                                                                  v248[2] = 0x4058000000000000;
                                                                  sub_3608D0(v249, "IT");
                                                                  v250 = 0x4058000000000000;
                                                                  sub_3608D0(&v251, "NL");
                                                                  *(&v252 + 1) = 0x4058000000000000;
                                                                  sub_3608D0(&v253, "PT");
                                                                  v255 = 0x4058000000000000;
                                                                  sub_3608D0(v256, "NO");
                                                                  v257 = 0x4058000000000000;
                                                                  sub_3608D0(&v258, "DK");
                                                                  v259[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v260, "FI");
                                                                  v261[2] = 0x4058000000000000;
                                                                  sub_3608D0(v262, "SE");
                                                                  v263 = 0x4058000000000000;
                                                                  sub_3608D0(&v264, "GB");
                                                                  v265[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v266, "JP");
                                                                  v267[2] = 0x4058000000000000;
                                                                  sub_3608D0(v268, "MO");
                                                                  v269 = 0x4058000000000000;
                                                                  sub_3608D0(&v270, "PH");
                                                                  v271[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v272, "MY");
                                                                  v273[2] = 0x4058000000000000;
                                                                  sub_3608D0(v274, "TW");
                                                                  v275 = 0x4058000000000000;
                                                                  sub_3608D0(&v276, "HK");
                                                                  v277[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v278, "AR");
                                                                  v279[2] = 0x4058000000000000;
                                                                  sub_3608D0(&v280, "BR");
                                                                  v281 = 0x4058000000000000;
                                                                  sub_3608D0(&v282, "MX");
                                                                  v283[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v284, "CL");
                                                                  v285[2] = 0x4058000000000000;
                                                                  sub_3608D0(&v286, "CZ");
                                                                  v287 = 0x4058000000000000;
                                                                  sub_3608D0(&v288, "GR");
                                                                  v289[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v290, "HR");
                                                                  v291[2] = 0x4058000000000000;
                                                                  sub_3608D0(v292, "HU");
                                                                  v293 = 0x4058000000000000;
                                                                  sub_3608D0(&v294, "ID");
                                                                  v295[1] = 0x4058000000000000;
                                                                  sub_3608D0(&v296, "IN");
                                                                  v297[2] = 0x4058000000000000;
                                                                  sub_3608D0(v298, "PL");
                                                                  v299 = 0x4058000000000000;
                                                                  sub_3608D0(&v300, "RO");
                                                                  *(&v301 + 1) = 0x4058000000000000;
                                                                  sub_3608D0(v302, "SG");
                                                                  v302[3] = 0x4058000000000000;
                                                                  sub_3608D0(v303, "SK");
                                                                  v303[3] = 0x4058000000000000;
                                                                  sub_3608D0(v304, "TH");
                                                                  v304[3] = 0x4058000000000000;
                                                                  sub_3608D0(v305, "TR");
                                                                  v305[3] = 0x4058000000000000;
                                                                  sub_3608D0(v306, "VN");
                                                                  v306[3] = 0x4058000000000000;
                                                                  sub_3608D0(v307, "AE");
                                                                  v307[3] = 0x4058000000000000;
                                                                  sub_3608D0(v308, "IL");
                                                                  v308[3] = 0x4058000000000000;
                                                                  sub_3608D0(v309, "NG");
                                                                  v309[3] = 0x4058000000000000;
                                                                  sub_3608D0(v310, "MA");
                                                                  v310[3] = 0x4058000000000000;
                                                                  sub_1A5CB44(v143, v218, 50);
                                                                  v30 = 1600;
                                                                  while (1)
                                                                  {
                                                                    if (v217[v30 + 39] < 0)
                                                                    {
                                                                      operator delete(*&v217[v30 + 16]);
                                                                    }

                                                                    v30 -= 32;
                                                                    if (!v30)
                                                                    {
                                                                      v143[10] = 5;
                                                                      sub_3608D0(v188, "speller-enus-esus");
                                                                      sub_3608D0(&v311, "US");
                                                                      sub_3608D0(v312, "AE");
                                                                      v185 = 0uLL;
                                                                      v186 = 0;
                                                                      sub_68678C(&v185, &v311, &v313, 2uLL);
                                                                      sub_1A5C99C(v200, v188, &v185);
                                                                      sub_3608D0(v182, "speller-GB");
                                                                      sub_3608D0(&v321, "GB");
                                                                      v179 = 0uLL;
                                                                      v180 = 0;
                                                                      sub_68678C(&v179, &v321, &v323, 1uLL);
                                                                      sub_1A5C99C(&v203, v182, &v179);
                                                                      sub_3608D0(&v94, "speller-AU");
                                                                      sub_3608D0(v198, "AU");
                                                                      sub_3608D0(&v199[1], "NZ");
                                                                      v92 = 0uLL;
                                                                      v93 = 0;
                                                                      sub_68678C(&v92, v198, v200, 2uLL);
                                                                      sub_1A5C99C(v205, &v94, &v92);
                                                                      sub_3608D0(&v319, "speller-CA");
                                                                      sub_3608D0(&v317, "CA");
                                                                      v90 = 0uLL;
                                                                      v91 = 0;
                                                                      sub_68678C(&v90, &v317, &v319, 1uLL);
                                                                      sub_1A5C99C(v207, &v319, &v90);
                                                                      sub_3608D0(__p, "speller-EU");
                                                                      sub_3608D0(&v330, "ES");
                                                                      sub_3608D0(v332, "IT");
                                                                      sub_3608D0(v333, "NL");
                                                                      v85 = 0;
                                                                      v86 = 0;
                                                                      v87 = 0;
                                                                      sub_68678C(&v85, &v330, &v334, 3uLL);
                                                                      sub_1A5C99C(v209, __p, &v85);
                                                                      sub_3608D0(v83, "speller-FR-DE");
                                                                      sub_3608D0(&v195, "FR");
                                                                      sub_3608D0(v197, "DE");
                                                                      v80 = 0;
                                                                      v81 = 0;
                                                                      v82 = 0;
                                                                      sub_68678C(&v80, &v195, v198, 2uLL);
                                                                      sub_1A5C99C(v211, v83, &v80);
                                                                      sub_3608D0(v78, "speller-EU-offline-mixed-reduced");
                                                                      sub_3608D0(&v323, "AT");
                                                                      sub_3608D0(v325, "CH");
                                                                      sub_3608D0(v326, "BE");
                                                                      v75 = 0;
                                                                      v76 = 0;
                                                                      v77 = 0;
                                                                      sub_68678C(&v75, &v323, &v327, 3uLL);
                                                                      sub_1A5C99C(v213, v78, &v75);
                                                                      sub_3608D0(v73, "speller-GR");
                                                                      sub_3608D0(v193, "GR");
                                                                      v70 = 0;
                                                                      v71 = 0;
                                                                      v72 = 0;
                                                                      sub_68678C(&v70, v193, &v195, 1uLL);
                                                                      sub_1A5C99C(&v215, v73, &v70);
                                                                      sub_3608D0(&v68, "speller-JP");
                                                                      sub_3608D0(&v191, "JP");
                                                                      v66 = 0uLL;
                                                                      v67 = 0;
                                                                      sub_68678C(&v66, &v191, v193, 1uLL);
                                                                      sub_1A5C99C(&v216, &v68, &v66);
                                                                      sub_3608D0(v64, "speller-ROW");
                                                                      sub_3608D0(v218, "IN");
                                                                      sub_3608D0(&v220, "PT");
                                                                      sub_3608D0(&v222, "FI");
                                                                      sub_3608D0(&v224, "SE");
                                                                      sub_3608D0(&v225[1], "AD");
                                                                      sub_3608D0(&v226, "MC");
                                                                      sub_3608D0(v227, "LU");
                                                                      sub_3608D0(&v229, "VA");
                                                                      sub_3608D0(&v230[1], "IS");
                                                                      sub_3608D0(&v231, "GL");
                                                                      sub_3608D0(v233, "FO");
                                                                      sub_3608D0(&v235, "IE");
                                                                      sub_3608D0(v237, "NO");
                                                                      sub_3608D0(&v238, "DK");
                                                                      sub_3608D0(v240, "AR");
                                                                      sub_3608D0(v242, "BR");
                                                                      sub_3608D0(v243, "MX");
                                                                      sub_3608D0(&v244, "CL");
                                                                      sub_3608D0(v246, "TW");
                                                                      sub_3608D0(v248, "HK");
                                                                      sub_3608D0(v249, "MO");
                                                                      sub_3608D0(&v250, "PL");
                                                                      sub_3608D0(&v252, "HR");
                                                                      sub_3608D0(&v254, "RO");
                                                                      sub_3608D0(v256, "SK");
                                                                      sub_3608D0(&v257, "CZ");
                                                                      sub_3608D0(v259, "HU");
                                                                      sub_3608D0(v261, "VN");
                                                                      sub_3608D0(v262, "TH");
                                                                      sub_3608D0(&v263, "SG");
                                                                      sub_3608D0(v265, "MY");
                                                                      sub_3608D0(v267, "PH");
                                                                      sub_3608D0(v268, "TR");
                                                                      sub_3608D0(&v269, "AE");
                                                                      sub_3608D0(v271, "IL");
                                                                      sub_3608D0(v273, "SA");
                                                                      sub_3608D0(v274, "NG");
                                                                      sub_3608D0(&v275, "EG");
                                                                      sub_3608D0(v277, "MA");
                                                                      sub_3608D0(v279, "ZA");
                                                                      v61 = 0;
                                                                      v62 = 0;
                                                                      v63 = 0;
                                                                      sub_68678C(&v61, v218, &v280, 0x28uLL);
                                                                      sub_1A5C99C(v217, v64, &v61);
                                                                      memset(v144, 0, sizeof(v144));
                                                                      sub_1A5CA34(v144, v200, v218, 0xAuLL);
                                                                      v31 = 480;
                                                                      while (1)
                                                                      {
                                                                        v178 = &v199[v31 + 1];
                                                                        sub_195E3E8(&v178);
                                                                        if (v199[v31] < 0)
                                                                        {
                                                                          operator delete(v198[v31 / 8]);
                                                                        }

                                                                        v31 -= 48;
                                                                        if (!v31)
                                                                        {
                                                                          v178 = &v61;
                                                                          sub_195E3E8(&v178);
                                                                          v32 = 120;
                                                                          while (1)
                                                                          {
                                                                            if (SHIBYTE(v218[v32 - 1]) < 0)
                                                                            {
                                                                              operator delete(*&v217[v32 * 8 + 24]);
                                                                            }

                                                                            v32 -= 3;
                                                                            if (!(v32 * 8))
                                                                            {
                                                                              if (v65 < 0)
                                                                              {
                                                                                operator delete(v64[0]);
                                                                              }

                                                                              v218[0] = &v66;
                                                                              sub_195E3E8(v218);
                                                                              if (SHIBYTE(v192) < 0)
                                                                              {
                                                                                operator delete(v191);
                                                                              }

                                                                              if (SHIBYTE(v69) < 0)
                                                                              {
                                                                                operator delete(v68);
                                                                              }

                                                                              v218[0] = &v70;
                                                                              sub_195E3E8(v218);
                                                                              if (v194 < 0)
                                                                              {
                                                                                operator delete(v193[0]);
                                                                              }

                                                                              if (v74 < 0)
                                                                              {
                                                                                operator delete(v73[0]);
                                                                              }

                                                                              v218[0] = &v75;
                                                                              sub_195E3E8(v218);
                                                                              v33 = 0;
                                                                              while (1)
                                                                              {
                                                                                if (SHIBYTE(v326[v33 + 2]) < 0)
                                                                                {
                                                                                  operator delete(v326[v33]);
                                                                                }

                                                                                v33 -= 3;
                                                                                if (v33 == -9)
                                                                                {
                                                                                  if (v79 < 0)
                                                                                  {
                                                                                    operator delete(v78[0]);
                                                                                  }

                                                                                  v218[0] = &v80;
                                                                                  sub_195E3E8(v218);
                                                                                  v34 = 0;
                                                                                  while (1)
                                                                                  {
                                                                                    if (SHIBYTE(v197[v34 + 2]) < 0)
                                                                                    {
                                                                                      operator delete(v197[v34]);
                                                                                    }

                                                                                    v34 -= 3;
                                                                                    if (v34 == -6)
                                                                                    {
                                                                                      if (v84 < 0)
                                                                                      {
                                                                                        operator delete(v83[0]);
                                                                                      }

                                                                                      v218[0] = &v85;
                                                                                      sub_195E3E8(v218);
                                                                                      v35 = 0;
                                                                                      while (1)
                                                                                      {
                                                                                        if (SHIBYTE(v333[v35 + 2]) < 0)
                                                                                        {
                                                                                          operator delete(v333[v35]);
                                                                                        }

                                                                                        v35 -= 3;
                                                                                        if (v35 == -9)
                                                                                        {
                                                                                          if (v89 < 0)
                                                                                          {
                                                                                            operator delete(__p[0]);
                                                                                          }

                                                                                          v218[0] = &v90;
                                                                                          sub_195E3E8(v218);
                                                                                          if (SHIBYTE(v318) < 0)
                                                                                          {
                                                                                            operator delete(v317);
                                                                                          }

                                                                                          if (SHIBYTE(v320) < 0)
                                                                                          {
                                                                                            operator delete(v319);
                                                                                          }

                                                                                          v218[0] = &v92;
                                                                                          sub_195E3E8(v218);
                                                                                          v36 = 0;
                                                                                          while (1)
                                                                                          {
                                                                                            if (v199[v36 + 24] < 0)
                                                                                            {
                                                                                              operator delete(*&v199[v36 + 1]);
                                                                                            }

                                                                                            v36 -= 24;
                                                                                            if (v36 == -48)
                                                                                            {
                                                                                              if (SHIBYTE(v95) < 0)
                                                                                              {
                                                                                                operator delete(v94);
                                                                                              }

                                                                                              v218[0] = &v179;
                                                                                              sub_195E3E8(v218);
                                                                                              if (SHIBYTE(v322) < 0)
                                                                                              {
                                                                                                operator delete(v321);
                                                                                              }

                                                                                              if (v183 < 0)
                                                                                              {
                                                                                                operator delete(v182[0]);
                                                                                              }

                                                                                              v218[0] = &v185;
                                                                                              sub_195E3E8(v218);
                                                                                              v37 = 0;
                                                                                              while (1)
                                                                                              {
                                                                                                if (SHIBYTE(v312[v37 + 2]) < 0)
                                                                                                {
                                                                                                  operator delete(v312[v37]);
                                                                                                }

                                                                                                v37 -= 3;
                                                                                                if (v37 == -6)
                                                                                                {
                                                                                                  if (v189 < 0)
                                                                                                  {
                                                                                                    operator delete(v188[0]);
                                                                                                  }

                                                                                                  sub_3608D0(&v321, "speller-enus-esus");
                                                                                                  sub_3608D0(v200, "from_ENUSESUS");
                                                                                                  sub_3608D0(v202, "to_ENUSESUS");
                                                                                                  v94 = 0uLL;
                                                                                                  v95 = 0;
                                                                                                  sub_68678C(&v94, v200, &v203, 2uLL);
                                                                                                  sub_1A5C99C(v218, &v321, &v94);
                                                                                                  sub_3608D0(&v92, "speller-GB");
                                                                                                  sub_3608D0(&v330, "from_SOURCE");
                                                                                                  sub_3608D0(v332, "to_TARGET");
                                                                                                  v319 = 0uLL;
                                                                                                  v320 = 0;
                                                                                                  sub_68678C(&v319, &v330, v333, 2uLL);
                                                                                                  sub_1A5C99C(&v222, &v92, &v319);
                                                                                                  sub_3608D0(&v90, "speller-AU");
                                                                                                  sub_3608D0(&v323, "from_AU");
                                                                                                  sub_3608D0(v325, "to_AU");
                                                                                                  v317 = 0uLL;
                                                                                                  v318 = 0;
                                                                                                  sub_68678C(&v317, &v323, v326, 2uLL);
                                                                                                  sub_1A5C99C(&v225[1], &v90, &v317);
                                                                                                  sub_3608D0(__p, "speller-CA");
                                                                                                  sub_3608D0(&v311, "from_CA");
                                                                                                  sub_3608D0(v312, "to_CA");
                                                                                                  v85 = 0;
                                                                                                  v86 = 0;
                                                                                                  v87 = 0;
                                                                                                  sub_68678C(&v85, &v311, &v313, 2uLL);
                                                                                                  sub_1A5C99C(v227, __p, &v85);
                                                                                                  sub_3608D0(v83, "speller-EU");
                                                                                                  sub_3608D0(v198, "from_EU");
                                                                                                  sub_3608D0(&v199[1], "to_EU");
                                                                                                  v80 = 0;
                                                                                                  v81 = 0;
                                                                                                  v82 = 0;
                                                                                                  sub_68678C(&v80, v198, v200, 2uLL);
                                                                                                  sub_1A5C99C(&v230[1], v83, &v80);
                                                                                                  sub_3608D0(v78, "speller-GR");
                                                                                                  sub_3608D0(&v195, "from_SOURCE");
                                                                                                  sub_3608D0(v197, "to_TARGET");
                                                                                                  v75 = 0;
                                                                                                  v76 = 0;
                                                                                                  v77 = 0;
                                                                                                  sub_68678C(&v75, &v195, v198, 2uLL);
                                                                                                  sub_1A5C99C(v233, v78, &v75);
                                                                                                  sub_3608D0(v73, "speller-JP");
                                                                                                  sub_3608D0(v188, "from_SOURCE");
                                                                                                  sub_3608D0(v190, "to_TARGET");
                                                                                                  v70 = 0;
                                                                                                  v71 = 0;
                                                                                                  v72 = 0;
                                                                                                  sub_68678C(&v70, v188, &v191, 2uLL);
                                                                                                  sub_1A5C99C(v237, v73, &v70);
                                                                                                  sub_3608D0(v193, "speller-FR-DE");
                                                                                                  sub_3608D0(&v185, "from_DEFRAC");
                                                                                                  sub_3608D0(v187, "to_DEFRAC");
                                                                                                  v68 = 0uLL;
                                                                                                  v69 = 0;
                                                                                                  sub_68678C(&v68, &v185, v188, 2uLL);
                                                                                                  sub_1A5C99C(v240, v193, &v68);
                                                                                                  sub_3608D0(&v66, "speller-EU-offline-mixed-reduced");
                                                                                                  sub_3608D0(v182, "from_SOURCE");
                                                                                                  sub_3608D0(v184, "to_TARGET");
                                                                                                  v191 = 0uLL;
                                                                                                  v192 = 0;
                                                                                                  sub_68678C(&v191, v182, &v185, 2uLL);
                                                                                                  sub_1A5C99C(v243, &v66, &v191);
                                                                                                  sub_3608D0(v64, "speller-ROW");
                                                                                                  sub_3608D0(&v179, "from_GLOBAL");
                                                                                                  sub_3608D0(v181, "to_GLOBAL");
                                                                                                  v61 = 0;
                                                                                                  v62 = 0;
                                                                                                  v63 = 0;
                                                                                                  sub_68678C(&v61, &v179, v182, 2uLL);
                                                                                                  sub_1A5C99C(v246, v64, &v61);
                                                                                                  memset(v145, 0, sizeof(v145));
                                                                                                  sub_1A5CA34(v145, v218, v249, 0xAuLL);
                                                                                                  v38 = 480;
                                                                                                  while (1)
                                                                                                  {
                                                                                                    v178 = &v217[v38 + 24];
                                                                                                    sub_195E3E8(&v178);
                                                                                                    if (v217[v38 + 23] < 0)
                                                                                                    {
                                                                                                      operator delete(*&v217[v38]);
                                                                                                    }

                                                                                                    v38 -= 48;
                                                                                                    if (!v38)
                                                                                                    {
                                                                                                      v178 = &v61;
                                                                                                      sub_195E3E8(&v178);
                                                                                                      v39 = 0;
                                                                                                      while (1)
                                                                                                      {
                                                                                                        if (SHIBYTE(v181[v39 + 2]) < 0)
                                                                                                        {
                                                                                                          operator delete(v181[v39]);
                                                                                                        }

                                                                                                        v39 -= 3;
                                                                                                        if (v39 == -6)
                                                                                                        {
                                                                                                          if (v65 < 0)
                                                                                                          {
                                                                                                            operator delete(v64[0]);
                                                                                                          }

                                                                                                          *&v179 = &v191;
                                                                                                          sub_195E3E8(&v179);
                                                                                                          v40 = 0;
                                                                                                          while (1)
                                                                                                          {
                                                                                                            if (SHIBYTE(v184[v40 + 2]) < 0)
                                                                                                            {
                                                                                                              operator delete(v184[v40]);
                                                                                                            }

                                                                                                            v40 -= 3;
                                                                                                            if (v40 == -6)
                                                                                                            {
                                                                                                              if (SHIBYTE(v67) < 0)
                                                                                                              {
                                                                                                                operator delete(v66);
                                                                                                              }

                                                                                                              v182[0] = &v68;
                                                                                                              sub_195E3E8(v182);
                                                                                                              v41 = 0;
                                                                                                              while (1)
                                                                                                              {
                                                                                                                if (SHIBYTE(v187[v41 + 2]) < 0)
                                                                                                                {
                                                                                                                  operator delete(v187[v41]);
                                                                                                                }

                                                                                                                v41 -= 3;
                                                                                                                if (v41 == -6)
                                                                                                                {
                                                                                                                  if (v194 < 0)
                                                                                                                  {
                                                                                                                    operator delete(v193[0]);
                                                                                                                  }

                                                                                                                  *&v185 = &v70;
                                                                                                                  sub_195E3E8(&v185);
                                                                                                                  v42 = 0;
                                                                                                                  while (1)
                                                                                                                  {
                                                                                                                    if (SHIBYTE(v190[v42 + 2]) < 0)
                                                                                                                    {
                                                                                                                      operator delete(v190[v42]);
                                                                                                                    }

                                                                                                                    v42 -= 3;
                                                                                                                    if (v42 == -6)
                                                                                                                    {
                                                                                                                      if (v74 < 0)
                                                                                                                      {
                                                                                                                        operator delete(v73[0]);
                                                                                                                      }

                                                                                                                      v188[0] = &v75;
                                                                                                                      sub_195E3E8(v188);
                                                                                                                      v43 = 0;
                                                                                                                      while (1)
                                                                                                                      {
                                                                                                                        if (SHIBYTE(v197[v43 + 2]) < 0)
                                                                                                                        {
                                                                                                                          operator delete(v197[v43]);
                                                                                                                        }

                                                                                                                        v43 -= 3;
                                                                                                                        if (v43 == -6)
                                                                                                                        {
                                                                                                                          if (v79 < 0)
                                                                                                                          {
                                                                                                                            operator delete(v78[0]);
                                                                                                                          }

                                                                                                                          *&v195 = &v80;
                                                                                                                          sub_195E3E8(&v195);
                                                                                                                          v44 = 0;
                                                                                                                          while (1)
                                                                                                                          {
                                                                                                                            if (v199[v44 + 24] < 0)
                                                                                                                            {
                                                                                                                              operator delete(*&v199[v44 + 1]);
                                                                                                                            }

                                                                                                                            v44 -= 24;
                                                                                                                            if (v44 == -48)
                                                                                                                            {
                                                                                                                              if (v84 < 0)
                                                                                                                              {
                                                                                                                                operator delete(v83[0]);
                                                                                                                              }

                                                                                                                              v198[0] = &v85;
                                                                                                                              sub_195E3E8(v198);
                                                                                                                              v45 = 0;
                                                                                                                              while (1)
                                                                                                                              {
                                                                                                                                if (SHIBYTE(v312[v45 + 2]) < 0)
                                                                                                                                {
                                                                                                                                  operator delete(v312[v45]);
                                                                                                                                }

                                                                                                                                v45 -= 3;
                                                                                                                                if (v45 == -6)
                                                                                                                                {
                                                                                                                                  if (v89 < 0)
                                                                                                                                  {
                                                                                                                                    operator delete(__p[0]);
                                                                                                                                  }

                                                                                                                                  *&v311 = &v317;
                                                                                                                                  sub_195E3E8(&v311);
                                                                                                                                  v46 = 0;
                                                                                                                                  while (1)
                                                                                                                                  {
                                                                                                                                    if (SHIBYTE(v325[v46 + 2]) < 0)
                                                                                                                                    {
                                                                                                                                      operator delete(v325[v46]);
                                                                                                                                    }

                                                                                                                                    v46 -= 3;
                                                                                                                                    if (v46 == -6)
                                                                                                                                    {
                                                                                                                                      if (SHIBYTE(v91) < 0)
                                                                                                                                      {
                                                                                                                                        operator delete(v90);
                                                                                                                                      }

                                                                                                                                      *&v323 = &v319;
                                                                                                                                      sub_195E3E8(&v323);
                                                                                                                                      v47 = 0;
                                                                                                                                      while (1)
                                                                                                                                      {
                                                                                                                                        if (SHIBYTE(v332[v47 + 2]) < 0)
                                                                                                                                        {
                                                                                                                                          operator delete(v332[v47]);
                                                                                                                                        }

                                                                                                                                        v47 -= 3;
                                                                                                                                        if (v47 == -6)
                                                                                                                                        {
                                                                                                                                          if (SHIBYTE(v93) < 0)
                                                                                                                                          {
                                                                                                                                            operator delete(v92);
                                                                                                                                          }

                                                                                                                                          *&v330 = &v94;
                                                                                                                                          sub_195E3E8(&v330);
                                                                                                                                          v48 = 0;
                                                                                                                                          while (1)
                                                                                                                                          {
                                                                                                                                            if (SHIBYTE(v202[v48 + 2]) < 0)
                                                                                                                                            {
                                                                                                                                              operator delete(v202[v48]);
                                                                                                                                            }

                                                                                                                                            v48 -= 3;
                                                                                                                                            if (v48 == -6)
                                                                                                                                            {
                                                                                                                                              if (SHIBYTE(v322) < 0)
                                                                                                                                              {
                                                                                                                                                operator delete(v321);
                                                                                                                                              }

                                                                                                                                              sub_3608D0(v218, "HK");
                                                                                                                                              sub_3608D0(&v220, "JP");
                                                                                                                                              sub_3608D0(&v222, "MO");
                                                                                                                                              sub_3608D0(&v224, "TW");
                                                                                                                                              memset(v146, 0, sizeof(v146));
                                                                                                                                              sub_68678C(v146, v218, &v225[1], 4uLL);
                                                                                                                                              v49 = 0;
                                                                                                                                              while (1)
                                                                                                                                              {
                                                                                                                                                if (SHIBYTE(v225[v49]) < 0)
                                                                                                                                                {
                                                                                                                                                  operator delete(v225[v49 - 2]);
                                                                                                                                                }

                                                                                                                                                v49 -= 3;
                                                                                                                                                if (v49 == -12)
                                                                                                                                                {
                                                                                                                                                  sub_3608D0(&v330, "geotagger_en_us_model");
                                                                                                                                                  sub_3608D0(v218, "US");
                                                                                                                                                  sub_3608D0(&v220, "CA");
                                                                                                                                                  sub_3608D0(&v222, "GB");
                                                                                                                                                  sub_3608D0(&v224, "AU");
                                                                                                                                                  sub_3608D0(&v225[1], "NZ");
                                                                                                                                                  sub_3608D0(&v226, "IE");
                                                                                                                                                  sub_3608D0(v227, "ZA");
                                                                                                                                                  v323 = 0uLL;
                                                                                                                                                  v324 = 0;
                                                                                                                                                  sub_68678C(&v323, v218, &v229, 7uLL);
                                                                                                                                                  sub_1A5C99C(v200, &v330, &v323);
                                                                                                                                                  memset(v147, 0, sizeof(v147));
                                                                                                                                                  sub_1A5CA34(v147, v200, &v203, 1uLL);
                                                                                                                                                  *&v311 = v202;
                                                                                                                                                  sub_195E3E8(&v311);
                                                                                                                                                  if (v201 < 0)
                                                                                                                                                  {
                                                                                                                                                    operator delete(v200[0]);
                                                                                                                                                  }

                                                                                                                                                  *&v311 = &v323;
                                                                                                                                                  sub_195E3E8(&v311);
                                                                                                                                                  v50 = 0;
                                                                                                                                                  while (1)
                                                                                                                                                  {
                                                                                                                                                    if (*(&v228 + v50 * 8 + 7) < 0)
                                                                                                                                                    {
                                                                                                                                                      operator delete(v227[v50]);
                                                                                                                                                    }

                                                                                                                                                    v50 -= 3;
                                                                                                                                                    if (v50 == -21)
                                                                                                                                                    {
                                                                                                                                                      if (SHIBYTE(v331) < 0)
                                                                                                                                                      {
                                                                                                                                                        operator delete(v330);
                                                                                                                                                      }

                                                                                                                                                      v148 = 16842753;
                                                                                                                                                      v149 = xmmword_23684E0;
                                                                                                                                                      v150 = 1;
                                                                                                                                                      v151 = 0x6400000001;
                                                                                                                                                      v152 = 10;
                                                                                                                                                      sub_3608D0(v218, "AD");
                                                                                                                                                      sub_3608D0(&v220, "AR");
                                                                                                                                                      sub_3608D0(&v222, "AT");
                                                                                                                                                      sub_3608D0(&v224, "BE");
                                                                                                                                                      sub_3608D0(&v225[1], "BO");
                                                                                                                                                      sub_3608D0(&v226, "BR");
                                                                                                                                                      sub_3608D0(v227, "CH");
                                                                                                                                                      sub_3608D0(&v229, "CL");
                                                                                                                                                      sub_3608D0(&v230[1], "CO");
                                                                                                                                                      sub_3608D0(&v231, "CR");
                                                                                                                                                      sub_3608D0(v233, "CU");
                                                                                                                                                      sub_3608D0(&v235, "DE");
                                                                                                                                                      sub_3608D0(v237, "DK");
                                                                                                                                                      sub_3608D0(&v238, "DO");
                                                                                                                                                      sub_3608D0(v240, "EC");
                                                                                                                                                      sub_3608D0(v242, "ES");
                                                                                                                                                      sub_3608D0(v243, "FI");
                                                                                                                                                      sub_3608D0(&v244, "GL");
                                                                                                                                                      sub_3608D0(v246, "GQ");
                                                                                                                                                      sub_3608D0(v248, "GR");
                                                                                                                                                      sub_3608D0(v249, "GT");
                                                                                                                                                      sub_3608D0(&v250, "HN");
                                                                                                                                                      sub_3608D0(&v252, "ID");
                                                                                                                                                      sub_3608D0(&v254, "IS");
                                                                                                                                                      sub_3608D0(v256, "IT");
                                                                                                                                                      sub_3608D0(&v257, "JP");
                                                                                                                                                      sub_3608D0(v259, "LI");
                                                                                                                                                      sub_3608D0(v261, "MX");
                                                                                                                                                      sub_3608D0(v262, "NI");
                                                                                                                                                      sub_3608D0(&v263, "NL");
                                                                                                                                                      sub_3608D0(v265, "NO");
                                                                                                                                                      sub_3608D0(v267, "PA");
                                                                                                                                                      sub_3608D0(v268, "PE");
                                                                                                                                                      sub_3608D0(&v269, "PT");
                                                                                                                                                      sub_3608D0(v271, "PY");
                                                                                                                                                      sub_3608D0(v273, "RO");
                                                                                                                                                      sub_3608D0(v274, "SE");
                                                                                                                                                      sub_3608D0(&v275, "SM");
                                                                                                                                                      sub_3608D0(v277, "SR");
                                                                                                                                                      sub_3608D0(v279, "SV");
                                                                                                                                                      sub_3608D0(&v280, "TR");
                                                                                                                                                      sub_3608D0(&v281, "UY");
                                                                                                                                                      sub_3608D0(v283, "VA");
                                                                                                                                                      sub_3608D0(v285, "VE");
                                                                                                                                                      memset(v153, 0, sizeof(v153));
                                                                                                                                                      sub_68678C(v153, v218, &v286, 0x2CuLL);
                                                                                                                                                      v51 = 132;
                                                                                                                                                      while (1)
                                                                                                                                                      {
                                                                                                                                                        if (SHIBYTE(v218[v51 - 1]) < 0)
                                                                                                                                                        {
                                                                                                                                                          operator delete(*&v217[v51 * 8 + 24]);
                                                                                                                                                        }

                                                                                                                                                        v51 -= 3;
                                                                                                                                                        if (!(v51 * 8))
                                                                                                                                                        {
                                                                                                                                                          v154 = 35;
                                                                                                                                                          v155 = 1;
                                                                                                                                                          v156 = 1;
                                                                                                                                                          v157 = 1;
                                                                                                                                                          sub_1A5CBBC(v218, "zh", "位置");
                                                                                                                                                          sub_1A5CC10(&v222, "en", "Location");
                                                                                                                                                          memset(v158, 0, sizeof(v158));
                                                                                                                                                          sub_1A5CC64(v158, v218, &v225[1], 2uLL);
                                                                                                                                                          v52 = 0;
                                                                                                                                                          while (1)
                                                                                                                                                          {
                                                                                                                                                            v53 = &v218[v52];
                                                                                                                                                            if (SHIBYTE(v225[v52]) < 0)
                                                                                                                                                            {
                                                                                                                                                              operator delete(v53[9]);
                                                                                                                                                            }

                                                                                                                                                            if (*(v53 + 71) < 0)
                                                                                                                                                            {
                                                                                                                                                              operator delete(v53[6]);
                                                                                                                                                            }

                                                                                                                                                            v52 -= 6;
                                                                                                                                                            if (v52 == -12)
                                                                                                                                                            {
                                                                                                                                                              sub_3608D0(v218, "SK");
                                                                                                                                                              sub_3608D0(&v220, "CZ");
                                                                                                                                                              sub_3608D0(&v222, "SA");
                                                                                                                                                              memset(v159, 0, sizeof(v159));
                                                                                                                                                              sub_68678C(v159, v218, &v224, 3uLL);
                                                                                                                                                              v54 = 0;
                                                                                                                                                              while (1)
                                                                                                                                                              {
                                                                                                                                                                if (*(&v223 + v54 + 7) < 0)
                                                                                                                                                                {
                                                                                                                                                                  operator delete(*(&v222 + v54));
                                                                                                                                                                }

                                                                                                                                                                v54 -= 24;
                                                                                                                                                                if (v54 == -72)
                                                                                                                                                                {
                                                                                                                                                                  sub_3608D0(v218, "a");
                                                                                                                                                                  sub_3608D0(&v220, "asda");
                                                                                                                                                                  sub_3608D0(&v222, "das");
                                                                                                                                                                  sub_3608D0(&v224, "de");
                                                                                                                                                                  sub_3608D0(&v225[1], "del");
                                                                                                                                                                  sub_3608D0(&v226, "des");
                                                                                                                                                                  sub_3608D0(v227, "do");
                                                                                                                                                                  sub_3608D0(&v229, "dos");
                                                                                                                                                                  sub_3608D0(&v230[1], "dueli");
                                                                                                                                                                  sub_3608D0(&v231, "ill");
                                                                                                                                                                  sub_3608D0(v233, "la");
                                                                                                                                                                  sub_3608D0(&v235, "le");
                                                                                                                                                                  sub_3608D0(v237, "o");
                                                                                                                                                                  sub_3608D0(&v238, "of");
                                                                                                                                                                  sub_3608D0(v240, "os");
                                                                                                                                                                  sub_3608D0(v242, "the");
                                                                                                                                                                  sub_1A5C918(&v160, v218, 16);
                                                                                                                                                                  v55 = 48;
                                                                                                                                                                  while (1)
                                                                                                                                                                  {
                                                                                                                                                                    if (SHIBYTE(v218[v55 - 1]) < 0)
                                                                                                                                                                    {
                                                                                                                                                                      operator delete(*&v217[v55 * 8 + 24]);
                                                                                                                                                                    }

                                                                                                                                                                    v55 -= 3;
                                                                                                                                                                    if (!(v55 * 8))
                                                                                                                                                                    {
                                                                                                                                                                      sub_3608D0(v218, "block");
                                                                                                                                                                      sub_3608D0(&v220, "blk");
                                                                                                                                                                      sub_1A5C918(v161, v218, 2);
                                                                                                                                                                      v56 = 0;
                                                                                                                                                                      while (1)
                                                                                                                                                                      {
                                                                                                                                                                        if (SHIBYTE(v221[v56 + 1]) < 0)
                                                                                                                                                                        {
                                                                                                                                                                          operator delete(v221[v56 - 1]);
                                                                                                                                                                        }

                                                                                                                                                                        v56 -= 3;
                                                                                                                                                                        if (v56 == -6)
                                                                                                                                                                        {
                                                                                                                                                                          v161[24] = 0;
                                                                                                                                                                          *v218 = xmmword_23684F0;
                                                                                                                                                                          memset(v162, 0, sizeof(v162));
                                                                                                                                                                          sub_1A5CCEC(v162, v218, &v219, 2uLL);
                                                                                                                                                                          sub_3608D0(v218, "JP");
                                                                                                                                                                          sub_3608D0(&v220, "TW");
                                                                                                                                                                          sub_3608D0(&v222, "HK");
                                                                                                                                                                          sub_3608D0(&v224, "MO");
                                                                                                                                                                          memset(v163, 0, sizeof(v163));
                                                                                                                                                                          sub_68678C(v163, v218, &v225[1], 4uLL);
                                                                                                                                                                          v57 = 0;
                                                                                                                                                                          while (1)
                                                                                                                                                                          {
                                                                                                                                                                            if (SHIBYTE(v225[v57]) < 0)
                                                                                                                                                                            {
                                                                                                                                                                              operator delete(v225[v57 - 2]);
                                                                                                                                                                            }

                                                                                                                                                                            v57 -= 3;
                                                                                                                                                                            if (v57 == -12)
                                                                                                                                                                            {
                                                                                                                                                                              sub_3608D0(v218, "JP");
                                                                                                                                                                              sub_3608D0(&v220, "VN");
                                                                                                                                                                              memset(v164, 0, 24);
                                                                                                                                                                              sub_68678C(v164, v218, &v222, 2uLL);
                                                                                                                                                                              v58 = 0;
                                                                                                                                                                              while (1)
                                                                                                                                                                              {
                                                                                                                                                                                if (SHIBYTE(v221[v58 + 1]) < 0)
                                                                                                                                                                                {
                                                                                                                                                                                  operator delete(v221[v58 - 1]);
                                                                                                                                                                                }

                                                                                                                                                                                v58 -= 3;
                                                                                                                                                                                if (v58 == -6)
                                                                                                                                                                                {
                                                                                                                                                                                  v164[24] = 1;
                                                                                                                                                                                  v165 = 0x4024000000000000;
                                                                                                                                                                                  v166 = xmmword_2368500;
                                                                                                                                                                                  v167 = 1000000;
                                                                                                                                                                                  sub_3608D0(v218, "JP");
                                                                                                                                                                                  sub_23898(v168, v218, 1);
                                                                                                                                                                                  if (SHIBYTE(v219) < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v218[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  v168[5] = 0x64000003E8;
                                                                                                                                                                                  v168[6] = 0x3FE0000000000000;
                                                                                                                                                                                  v169 = 1;
                                                                                                                                                                                  sub_3608D0(v218, "NG");
                                                                                                                                                                                  sub_1A5C918(v170, v218, 1);
                                                                                                                                                                                  if (SHIBYTE(v219) < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v218[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  v170[24] = 1;
                                                                                                                                                                                  v218[1] = 0;
                                                                                                                                                                                  v218[0] = 0;
                                                                                                                                                                                  v219 = 0;
                                                                                                                                                                                  sub_3608D0(v200, "en");
                                                                                                                                                                                  v331 = 0;
                                                                                                                                                                                  *(&v330 + 1) = 0;
                                                                                                                                                                                  *&v330 = &v330 + 8;
                                                                                                                                                                                  sub_19C478C(v175, &v176, &v173, &v171, (v60 + 1296), v59, v96, v218, v200, &v330);
                                                                                                                                                                                  sub_19C591C(&v330, *(&v330 + 1));
                                                                                                                                                                                  if (v201 < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v200[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  if (SHIBYTE(v219) < 0)
                                                                                                                                                                                  {
                                                                                                                                                                                    operator delete(v218[0]);
                                                                                                                                                                                  }

                                                                                                                                                                                  sub_1965ECC(v96);
                                                                                                                                                                                  sub_19C5870(&v171, v172[0]);
                                                                                                                                                                                  sub_19C57C4(&v173, v174[0]);
                                                                                                                                                                                  sub_1E8460C(v59);
                                                                                                                                                                                }
                                                                                                                                                                              }
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}