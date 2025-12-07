BOOL sub_1D0C6BF78(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t cnnavigation::NORADTLEEphemerides::TLECheckSum(std::string *__str)
{
  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (size != 69)
  {
    return 0xFFFFFFFFLL;
  }

  std::string::basic_string(&v10, __str, 0, 0x44uLL, &v11);
  v2 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v10;
  }

  else
  {
    v3 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v2 = v10.__r_.__value_.__l.__size_;
  }

  if (v2)
  {
    v4 = 0;
    do
    {
      v5 = v3->__r_.__value_.__s.__data_[0];
      v3 = (v3 + 1);
      v6 = v5 - 48;
      v7 = v4 + v5 - 48;
      if (v5 == 45)
      {
        ++v4;
      }

      if (v6 < 0xA)
      {
        v4 = v7;
      }

      --v2;
    }

    while (v2);
    v8 = (v4 % 10);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v8 = 0;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_20:
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  return v8;
}

char *cnnavigation::NORADTLEEphemerides::SatelliteName@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[111] < 0)
  {
    return sub_1D0BC39B4(a2, *(this + 11), *(this + 12));
  }

  *a2 = *(this + 88);
  *(a2 + 16) = *(this + 13);
  return this;
}

uint64_t cnnavigation::NORADTLEEphemerides::GNSSFindSat(cnnavigation::NORADTLEEphemerides *a1, cnnavigation::TAITime *a2, cnnavigation::GNSSUTCParameters *this, __int128 *a4, __int128 *a5, void *a6)
{
  if (*(a1 + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (cnnavigation::GNSSUTCParameters::IsValid(this))
  {
    if (cnnavigation::TAITime::ToJulianTime(a2, this, v40))
    {
      LOWORD(v41) = 5;
      LOBYTE(v39.f64[0]) = 3;
      cnprint::CNPrinter::Print(&v41, &v39, "NORADTLEEphemerides::GNSSFindSat failed JulianTime (UTC) conversion tai,%.3lf,sv,%hhu,t_ls,%.3lf,curr_ls,%d,fut_ls,%d");
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    LOWORD(v41) = 5;
    LOBYTE(v39.f64[0]) = 2;
    cnprint::CNPrinter::Print(&v41, &v39, "NORADTLEEphemerides::GNSSFindSat called with invalid UTC model");
    LOWORD(v41) = 0;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    *&v39.f64[0] = cnnavigation::TAITime::ToGPSTime(a2, &v41);
    v39.f64[1] = v12;
    if (cnnavigation::GPSTimeToJulianTime(v39.f64, 0, v40))
    {
      LOWORD(v41) = 5;
      LOBYTE(v38) = 3;
      *&v35 = *(a2 + 1) + *a2;
      v13 = "NORADTLEEphemerides::GNSSFindSat failed JulianTime conversion tai,%.3lf";
      v14 = &v41;
      v15 = &v38;
LABEL_7:
      cnprint::CNPrinter::Print(v14, v15, v13, v35, v36);
      return 0xFFFFFFFFLL;
    }
  }

  v18 = cnnavigation::NORADTLEEphemerides::InitializeSGP4(a1);
  if (v18)
  {
    v16 = v18;
    LOWORD(v41) = 5;
    LOBYTE(v39.f64[0]) = 3;
    cnprint::CNPrinter::Print(&v41, &v39, "NORADTLEEphemerides::GNSSFindSat InitializeSGP4 failed,code,%d", v18);
  }

  else
  {
    v19 = cnnavigation::NORADTLEEphemerides::SGP4(a1, v40, &v41, &v39);
    if (v19)
    {
      v16 = v19;
      v38 = 5;
      v37 = 3;
      cnprint::CNPrinter::Print(&v38, &v37, "NORADTLEEphemerides::GNSSFindSat SGP4 failed,code,%d", v19);
    }

    else
    {
      v21 = cnnavigation::NORADTLEEphemerides::ECIToECEF(v19, v40, &v41);
      v22 = 0;
      *a4 = v21;
      *(a4 + 1) = v23;
      *(a4 + 2) = v24;
      do
      {
        *(a4 + v22) = *(a4 + v22) * 1000.0;
        v22 += 8;
      }

      while (v22 != 24);
      v25 = cnnavigation::NORADTLEEphemerides::ECIToECEF(v20, v40, v39.f64);
      v26 = 0;
      *a5 = v25;
      *(a5 + 1) = v27;
      *(a5 + 2) = v28;
      do
      {
        *(a5 + v26) = *(a5 + v26) * 1000.0;
        v26 += 8;
      }

      while (v26 != 24);
      v29 = 0;
      v30 = *(a5 + 1);
      *a5 = *a5 + *(a4 + 1) * 0.0000729211515;
      *(a5 + 1) = v30 + *a4 * -0.0000729211515;
      *a6 = 0;
      a6[1] = 0;
      a6[2] = 0;
      v31 = 0.0;
      do
      {
        if ((*(a4 + v29) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          v38 = 5;
          v37 = 3;
          v36 = *(a4 + 2);
          v35 = *a4;
          v13 = "NORADTLEEphemerides::GNSSFindSat invalid SV position %.3lf,%.3lf,%.3lf";
          goto LABEL_24;
        }

        v31 = v31 + *(a4 + v29) * *(a4 + v29);
        v29 += 8;
      }

      while (v29 != 24);
      if (sqrt(v31) < 6341752.3)
      {
        v38 = 5;
        v37 = 3;
        v36 = *(a4 + 2);
        v35 = *a4;
        v13 = "NORADTLEEphemerides::GNSSFindSat decayed SV position %.3lf,%.3lf,%.3lf";
LABEL_24:
        v14 = &v38;
        v15 = &v37;
        goto LABEL_7;
      }

      for (i = 0; i != 24; i += 8)
      {
        if ((*(a5 + i) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(a5 + i) > 299792458.0)
        {
          v38 = 5;
          v37 = 3;
          v36 = *(a5 + 2);
          v35 = *a5;
          v13 = "NORADTLEEphemerides::GNSSFindSat invalid SV velocity %.3lf,%.3lf,%.3lf";
          goto LABEL_24;
        }
      }

      v33 = 0;
      while (1)
      {
        v34 = a6[v33];
        if ((v34 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          break;
        }

        if (++v33 == 3)
        {
          goto LABEL_35;
        }
      }

      v38 = 5;
      v37 = 3;
      cnprint::CNPrinter::Print(&v38, &v37, "NORADTLEEphemerides::GNSSFindSat invalid SV acceleration %.3lf,%.3lf,%.3lf", 0.0, 0.0, 0.0);
LABEL_35:
      if ((v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v16;
}

uint64_t cnnavigation::NORADTLEEphemerides::InitializeSGP4(cnnavigation::NORADTLEEphemerides *this)
{
  v247 = *MEMORY[0x1E69E9840];
  memset(v246, 0, 207);
  memset(__src, 0, sizeof(__src));
  v245 = 0;
  v243 = 0u;
  v244 = 0u;
  *(this + 132) = 0;
  v2 = v246[11];
  *(this + 426) = v246[10];
  *(this + 442) = v2;
  *(this + 457) = *(&v246[11] + 15);
  v3 = v246[7];
  *(this + 362) = v246[6];
  *(this + 378) = v3;
  v4 = v246[9];
  *(this + 394) = v246[8];
  *(this + 410) = v4;
  v5 = v246[3];
  *(this + 298) = v246[2];
  *(this + 314) = v5;
  v6 = v246[5];
  *(this + 330) = v246[4];
  *(this + 346) = v6;
  v7 = v246[1];
  *(this + 266) = v246[0];
  *(this + 282) = v7;
  memcpy(this + 473, __src, 0x1BFuLL);
  v8 = *(this + 42);
  v9 = *(this + 32);
  __x = *(this + 31);
  *(this + 115) = __x;
  v11 = *(this + 25);
  v10 = *(this + 26);
  *(this + 116) = v11;
  *(this + 117) = v10;
  v12 = *(this + 28);
  v233 = *(this + 27);
  *(this + 118) = v233;
  v230 = v9;
  *(this + 120) = v9;
  v181 = v11;
  v220 = v11 * v11;
  v13 = sqrt(1.0 - v11 * v11);
  v179 = v10;
  v14 = __sincos_stret(v10);
  v206 = v14.__cosval * v14.__cosval;
  v15 = pow(0.0743669161 / v12, 0.666666667);
  v221 = v13;
  v16 = (v14.__cosval * v14.__cosval * 3.0 + -1.0) * 0.000811962 / ((1.0 - v220) * v13);
  v17 = 1.0 - v16 / (v15 * v15) * (v16 / (v15 * v15)) - v16 / (v15 * v15) * (v16 / (v15 * v15) * (v16 / (v15 * v15) * 134.0) / 81.0 + 0.333333333);
  v18 = v12 / (v16 / (v15 * v17 * (v15 * v17)) + 1.0);
  *(this + 119) = v18;
  v19 = pow(0.0743669161 / v18, 0.666666667);
  v239 = -(v206 * -5.0 + 1.0) - v206 - v206;
  *(this + 35) = v239;
  v20 = (v8 - 2451545) / 36525.0;
  v21 = *(this + 22);
  v22 = fmod(v20 * v20 * 0.093104 + v20 * (v20 * v20) * -0.0000062 + v20 * 3164400180.0 + 67310.5484, 86400.0);
  v227 = v21;
  *(this + 97) = fmod(v22 * 0.0000727220522 + ((v21 / 36525.0 + v20) * 5.9006e-11 + 1.00273791 + (v21 / 36525.0 + v20) * (v21 / 36525.0 + v20) * -5.9e-15) * 6.28318531 * v21, 6.28318531);
  v223 = 1.0 - v220;
  if (1.0 - v220 < 0.0 && v18 < 0.0)
  {
    return cnnavigation::NORADTLEEphemerides::SGP4(this, this + 168, __src, v246);
  }

  v23 = (1.0 - v181) * v19;
  *(this + 265) = v23 < 1.03449284;
  v24 = (v23 + -1.0) * 6378.135;
  v180 = v18;
  if (v24 >= 156.0)
  {
    v28 = 1.01222928;
    v27 = 0.00000000188027916;
  }

  else
  {
    v25 = v24 + -78.0;
    if (v24 < 98.0)
    {
      v25 = 20.0;
    }

    v26 = (120.0 - v25) / 6378.135 * ((120.0 - v25) / 6378.135);
    v27 = v26 * v26;
    v28 = v25 / 6378.135 + 1.0;
  }

  v207 = 1.0 / ((1.0 - v220) * v19 * ((1.0 - v220) * v19));
  v177 = v28;
  v29 = 1.0 / (v19 - v28);
  v30 = v181 * v19 * v29;
  *(this + 43) = v30;
  v31 = v30 * v30;
  v33 = vabdd_f64(1.0, v30 * v30);
  v34 = v27 * (v29 * v29 * (v29 * v29));
  v35 = v34 / pow(v33, 3.5);
  v212 = *(this + 24);
  v32 = v181 * v30;
  v215 = v212 * (v180 * v35 * ((v31 * 3.0 * (v31 + 8.0) + 8.0) * (v239 * (v29 * 0.000405981 / v33)) + v19 * (v31 * 1.5 + 1.0 + v181 * v30 * (v31 + 4.0))));
  *(this + 36) = v215;
  v36 = 0.0;
  if (v181 > 0.0001)
  {
    v36 = v14.__sinval * (v180 * (v29 * (v34 * -2.0) * -0.00234506972)) / v181;
  }

  v204 = v36;
  *(this + 52) = 1.0 - v206;
  v225 = v181 * v19 * v29;
  v201 = v181 * (v31 * 2.0 + 0.5) + v30 * (v31 * 0.5 + 2.0);
  v37 = v35;
  v176 = v29;
  v178 = v19;
  *(this + 37) = v223 * (v19 * ((v180 + v180) * v35)) * (v201 + v29 * -0.001082616 / (v19 * v33) * (cos(__x + __x) * ((1.0 - v206) * 0.75 * (v31 * 2.0 - v32 * (v31 + 1.0))) + v239 * -3.0 * (v32 * -2.0 + 1.0 + v31 * (v32 * -0.5 + 1.5))));
  *(this + 38) = ((v31 + v32) * 2.75 + 1.0 + v32 * v31) * (v223 * (v19 * (v37 + v37)));
  v38 = v14.__cosval * v14.__cosval;
  v39 = v180 * (v207 * 0.001623924);
  v40 = v207 * (v39 * 0.5 * 0.001082616);
  v41 = v180 * (v207 * (v207 * 0.000000776235937));
  v42 = (v206 * -114.0 + 7.0 + v38 * v38 * 395.0) * (v40 * 0.0625) + v39 * -0.5 * (v206 * -5.0 + 1.0) + v41 * (v206 * -36.0 + 3.0 + v38 * v38 * 49.0);
  *(this + 44) = v42;
  v43 = -(v39 * v14.__cosval);
  v44 = ((v206 * -7.0 + 3.0) * (v41 + v41) + v40 * 0.5 * (v206 * -19.0 + 4.0)) * v14.__cosval - v39 * v14.__cosval;
  v175 = v180 + v221 * (v39 * 0.5) * v239 + v221 * (v40 * 0.0625) * (v206 * -78.0 + 13.0 + v38 * v38 * 137.0);
  *(this + 54) = v175;
  *(this + 55) = v44;
  v218 = cos(__x);
  *(this + 45) = v218 * (v212 * v204);
  v45 = 0.0;
  if (v181 > 0.0001)
  {
    v45 = v212 * (v34 * -0.666666667) / v32;
  }

  *(this + 58) = v223 * 3.5 * v43 * v215;
  *(this + 48) = v215 * 1.5;
  v174 = v14.__cosval + 1.0;
  if (fabs(v14.__cosval + 1.0) <= 1.5e-12)
  {
    v46 = 1.5e-12;
  }

  else
  {
    v46 = v14.__cosval + 1.0;
  }

  *(this + 56) = v14.__sinval * 0.00058626743 * (v14.__cosval * 5.0 + 3.0) / v46;
  *(this + 57) = v45;
  *(this + 34) = v14.__sinval * 0.00117253486;
  v47 = __sincos_stret(v233);
  *(this + 42) = (v225 * v47.__cosval + 1.0) * ((v225 * v47.__cosval + 1.0) * (v225 * v47.__cosval + 1.0));
  *(this + 46) = *&v47.__sinval;
  *(this + 53) = v206 * 7.0 + -1.0;
  if (6.28318531 / v180 >= 225.0)
  {
    v171 = v44 + v42;
    *(this + 132) = 257;
    v48 = __sincos_stret(v230);
    v210 = sin(__x);
    v49 = v227 + v8 + -2433281.5 + 18261.5;
    v50 = fmod(v49 * -0.00092422029 + 4.523602, 6.28318531);
    v51 = __sincos_stret(v50);
    v52 = sqrt(1.0 - (v51.__cosval * -0.03568096 + 0.91375164) * (v51.__cosval * -0.03568096 + 0.91375164));
    v53 = v51.__sinval * 0.089683511 / v52;
    v54 = sqrt(1.0 - v53 * v53);
    v173 = v49;
    v240 = 0.39785416;
    v184 = v52;
    __xa = 0.91744867;
    v55 = atan2(v51.__sinval * 0.39785416 / v52, v51.__sinval * (v53 * 0.91744867) + v54 * v51.__cosval);
    v172 = v49 * 0.001944368 + 5.8351514;
    v56 = __sincos_stret(v172 + v55 - v50);
    v57 = 0;
    sinval = v14.__sinval;
    v213 = v181 * -15.0;
    v216 = -v14.__sinval;
    cosval = v48.__cosval;
    v231 = v48.__sinval;
    v182 = v48.__sinval * v54 - v48.__cosval * v53;
    v183 = v48.__sinval * v53 + v54 * v48.__cosval;
    *(this + 40) = 0u;
    *(this + 41) = 0u;
    *(this + 84) = 0;
    v205 = 0.0;
    v59 = 1;
    v234 = 0.0000029864797;
    v60 = -0.98088458;
    v189 = 0.0;
    v190 = 0.0;
    v199 = 0.0;
    v202 = 0.0;
    v203 = 0.0;
    v194 = 0.0;
    v187 = 0.0;
    v208 = 1.0 / v180;
    v61 = 0.1945905;
    v193 = 0.0;
    v196 = 0.0;
    v197 = 0.0;
    v188 = 0.0;
    v185 = 0.0;
    v186 = 0.0;
    v191 = 0.0;
    v198 = 0.0;
    v195 = 0.0;
    v200 = 0.0;
    v192 = 0.0;
    do
    {
      v62 = v60 * __xa * v231 + v61 * cosval;
      v63 = v61 * __xa * v231 - v60 * cosval;
      v64 = v60 * __xa * cosval - v61 * v231;
      v65 = v61 * __xa * cosval + v60 * v231;
      v66 = sinval * (v60 * v240) + v14.__cosval * v64;
      v67 = sinval * (v61 * v240) + v14.__cosval * v65;
      v68 = v14.__cosval * (v60 * v240) + v216 * v64;
      v69 = v14.__cosval * (v61 * v240) + v216 * v65;
      v70 = v210 * v66 + v62 * v218;
      v71 = v210 * v67 + v63 * v218;
      v72 = v218 * v66 - v62 * v210;
      v73 = v218 * v67 - v63 * v210;
      v74 = v72 * (v72 * -3.0) + v70 * 12.0 * v70;
      v75 = v73 * (v72 * -6.0) + v70 * 24.0 * v71;
      v76 = v73 * (v73 * -3.0) + v71 * 12.0 * v71;
      v77 = v220 * v74 + (v66 * v66 + v62 * v62) * 3.0;
      v78 = v220 * v75 + (v66 * v67 + v62 * v63) * 6.0;
      v79 = v220 * v76 + (v67 * v67 + v63 * v63) * 3.0;
      v80 = v220 * (v210 * v68 * (v72 * -6.0) + v70 * -24.0 * (v218 * v68)) + v62 * -6.0 * v68;
      v226 = v220 * ((v210 * v68 * v73 + v72 * (v210 * v69)) * -6.0 + (v218 * v69 * v70 + v71 * (v218 * v68)) * -24.0) + (v63 * v68 + v62 * v69) * -6.0;
      v81 = v220 * (v210 * v69 * (v73 * -6.0) + v71 * -24.0 * (v218 * v69)) + v63 * -6.0 * v69;
      v82 = v220 * (v218 * v68 * (v72 * -6.0) + v70 * 24.0 * (v210 * v68)) + v66 * 6.0 * v68;
      v83 = v57;
      v84 = v220 * ((v218 * v69 * v72 + v73 * (v218 * v68)) * -6.0 + (v210 * v69 * v70 + v71 * (v210 * v68)) * 24.0) + (v66 * v69 + v67 * v68) * 6.0;
      v85 = v220 * (v218 * v69 * (v73 * -6.0) + v71 * 24.0 * (v210 * v69)) + v67 * 6.0 * v69;
      v86 = v77 + v77 + v223 * v74;
      v87 = v78 + v78 + v223 * v75;
      v88 = v79 + v79 + v223 * v76;
      v89 = v208 * v234;
      v90 = v71 * v73 + v70 * v72;
      v91 = v70 * v73 + v71 * v72;
      v92 = v208 * v234 * -0.5 / v221;
      v93 = v71 * v73 - v70 * v72;
      v94 = v221 * (v208 * v234);
      v95 = v213 * v94;
      if (v59)
      {
        v192 = v213 * v94;
        v200 = v208 * v234 * -0.5 / v221;
        v234 = 0.00000047968065;
        v195 = v89;
        v196 = v88;
        v198 = v94;
        v190 = v84;
        v191 = v90;
        v185 = v91;
        v186 = v93;
        v197 = v86;
        v193 = v80;
        v194 = v81;
        v187 = v226;
        v188 = v87;
        v202 = v85;
        v203 = v82;
        v199 = v72 * (v72 * -3.0) + v70 * 12.0 * v70;
        v189 = v75;
        v205 = v76;
        cosval = v183;
        v231 = v182;
        v240 = v184;
        __xa = v51.__cosval * -0.03568096 + 0.91375164;
        v61 = v56.__cosval;
        v60 = v56.__sinval;
      }

      v59 = 0;
      v57 = 1;
      sinval = v14.__sinval;
    }

    while ((v83 & 1) == 0);
    v232 = v94;
    v229 = v72 * (v72 * -3.0) + v70 * 12.0 * v70;
    v214 = v81;
    v217 = v80;
    v241 = v82;
    v224 = v86;
    v222 = v88;
    __xb = v90;
    v235 = v84;
    v219 = v87;
    v209 = v91;
    v211 = v93;
    *(this + 110) = fmod(v173 * 0.2299715 + 4.7199672 - v172, 6.28318531);
    v96 = fmod(v173 * 0.017201977 + 6.2565837, 6.28318531);
    v97 = v92;
    *(this + 111) = v96;
    *(this + 85) = (v192 + v192) * v185;
    *(this + 86) = (v192 + v192) * v186;
    *(this + 92) = (v200 + v200) * v187;
    *(this + 93) = (v200 + v200) * (v194 - v193);
    *(this + 94) = v195 * -2.0 * v188;
    *(this + 95) = v195 * -2.0 * (v196 - v197);
    v98 = v220 * -9.0 + -21.0;
    *(this + 96) = v98 * (v195 * -2.0) * 0.01675;
    v99 = vmulq_n_f64(xmmword_1D0E779C0, v198);
    *(this + 87) = v189 * v99.f64[0];
    v100 = vdupq_lane_s64(0x3F9126E978D4FDF4, 0);
    v100.f64[0] = v205 - v199;
    *(this + 44) = vmulq_f64(v99, v100);
    *(this + 90) = v200 * -2.0 * v190;
    *(this + 91) = v200 * -2.0 * (v202 - v203);
    *(this + 79) = (v95 + v95) * v209;
    *(this + 78) = (v95 + v95) * v211;
    *(this + 104) = (v92 + v92) * v226;
    *(this + 105) = (v92 + v92) * (v214 - v217);
    *(this + 106) = v89 * -2.0 * v219;
    *(this + 107) = v89 * -2.0 * (v222 - v224);
    *(this + 108) = v98 * (v89 * -2.0) * 0.0549;
    v101 = vmulq_n_f64(xmmword_1D0E779C0, v232);
    *(this + 99) = v75 * v101.f64[0];
    v102 = vdupq_lane_s64(0x3FAC1BDA5119CE07, 0);
    v102.f64[0] = v76 - v229;
    *(this + 50) = vmulq_f64(v101, v102);
    *(this + 102) = v92 * -2.0 * v235;
    *(this + 103) = v92 * -2.0 * (v85 - v241);
    v103 = v180 > 0.0034906585 && v180 < 0.0052359877;
    v104 = v180 < 0.00826;
    if (v181 < 0.5)
    {
      v104 = 1;
    }

    v105 = v180 > 0.00924 || v104;
    if (v105)
    {
      v106 = v103;
    }

    else
    {
      v106 = 2;
    }

    *(this + 472) = v106;
    v107 = v200 * -0.0000119459 * (v203 + v202);
    v108 = v179 < 0.052359877;
    if (v179 > 3.08923278)
    {
      v108 = 1;
    }

    if (v108)
    {
      v107 = 0.0;
    }

    if (fabs(v14.__sinval) >= 2.22044605e-16)
    {
      v109 = v107 / v14.__sinval;
    }

    else
    {
      v109 = v107;
    }

    *(this + 70) = v192 * 0.0000119459 * v191 + v95 * 0.00015835218 * __xb;
    *(this + 74) = v200 * 0.0000119459 * (v193 + v194) + v92 * 0.00015835218 * (v214 + v217);
    v110 = v195 * -0.0000119459 * (v197 + v196 + -14.0 + v220 * -6.0) + v89 * -0.00015835218 * (v222 + v224 + -14.0 + v220 * -6.0);
    *(this + 75) = v110;
    v111 = v232 * 0.00015835218 * (v76 + v229 + -6.0) + v198 * 0.0000119459 * (v199 + v205 + -6.0) - v14.__cosval * v109;
    *(this + 77) = v111;
    *(this + 76) = v109;
    if (v14.__sinval != 0.0)
    {
      v112 = v97 * -0.00015835218 * (v85 + v241);
      if (v108)
      {
        v112 = 0.0;
      }

      v111 = v111 + -v14.__cosval / v14.__sinval * v112;
      *(this + 77) = v111;
      v109 = v112 / v14.__sinval + v109;
      *(this + 76) = v109;
    }

    v113 = fmod(*(this + 97) + 0.0, 6.28318531);
    if (v106)
    {
      v114 = v113;
      v115 = pow(v180 / 0.0743669161, 0.666666667);
      if (v105)
      {
        if (!v103)
        {
          v127 = *(this + 109);
          v136 = *(this + 119);
LABEL_58:
          *(this + 113) = v127;
          *(this + 114) = v136;
          *(this + 112) = 0;
          goto LABEL_59;
        }

        v116.f64[0] = v220 * 2.0 + 1.0;
        v117.f64[0] = v115;
        v117.f64[1] = v14.__cosval + 1.0;
        v118.f64[1] = v14.__cosval + 1.0;
        v118.f64[0] = v180 * (v180 * 3.0) * v115;
        v119 = vmulq_f64(v117, v118);
        __asm { FMOV            V4.2D, #0.75 }

        _Q4.f64[0] = v174 * -0.75 + v14.__sinval * (v14.__sinval * 0.9375) * (v14.__cosval * 3.0 + 1.0);
        *(this + 73) = v115 * ((v220 * (v220 * 6.60937 + -6.0) + 1.0) * (v174 * (v174 * (v174 * 1.875)) * (3.0 * v119.f64[0])) * 0.00000022123015);
        v116.f64[1] = v119.f64[0] + v119.f64[0];
        v125 = &unk_1D0E778E8;
        *&v126.f64[0] = *&vld1q_dup_f64(v125);
        v126.f64[1] = v220 * (v220 * 0.8125 + -2.5) + 1.0;
        v117.f64[1] = 0.0000017891679;
        *(this + 568) = vmulq_f64(v117, vmulq_f64(v126, vmulq_f64(v116, vmulq_f64(_Q4, v119))));
        v127 = fmod(*(this + 118) + *(this + 120) + *(this + 115) - v114, 6.28318531);
        *(this + 109) = v127;
        v128 = v109 + v175 + v171 + -0.00437526909 + v110 + v111;
LABEL_57:
        v136 = *(this + 119);
        *(this + 98) = v128 - v136;
        goto LABEL_58;
      }

      v129 = *(this + 116);
      v130 = v220 * *&v129;
      if (*&v129 <= 0.65)
      {
        v131 = *&v129 * -13.247 + 3.616 + v220 * 16.29;
        v132 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1D0E779E0, xmmword_1D0E779D0, *&v129), xmmword_1D0E779F0, v220), xmmword_1D0E77A00, v130);
        v133 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1D0E77A20, xmmword_1D0E77A10, *&v129), xmmword_1D0E77A30, v220), xmmword_1D0E77A40, v130);
        v134 = *&v129 * 3017.977 + -532.114 + v220 * -5740.032;
        v135 = 3708.276;
      }

      else
      {
        v131 = *&v129 * 331.819 + -72.099 + v220 * -508.738 + v130 * 266.724;
        v132 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1D0E77A60, xmmword_1D0E77A50, *&v129), xmmword_1D0E77A70, v220), xmmword_1D0E77A80, v130);
        v133 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_1D0E77AA0, xmmword_1D0E77A90, *&v129), xmmword_1D0E77AB0, v220), xmmword_1D0E77AC0, v130);
        if (*&v129 <= 0.715)
        {
          v137.f64[0] = *&v129 * -4664.75 + 1464.74 + v220 * 3763.64;
          goto LABEL_53;
        }

        v134 = *&v129 * 29936.92 + -5149.66 + v220 * -54087.36;
        v135 = 31324.56;
      }

      v137.f64[0] = v134 + v130 * v135;
LABEL_53:
      v138 = vdupq_lane_s64(v129, 0);
      v139 = vdupq_lane_s64(*&v220, 0);
      v140.f64[0] = (*&v129 + -0.64) * -0.44 + -0.306;
      v141 = vdupq_lane_s64(*&v130, 0);
      if (*&v129 >= 0.7)
      {
        v142 = vmlaq_f64(vmlaq_f64(vmlaq_f64(xmmword_1D0E77AE0, xmmword_1D0E77AD0, v138), xmmword_1D0E77AF0, v139), xmmword_1D0E77B00, v141);
        v143 = *&v129 * 170470.89 + -40023.88 + v220 * -242699.48;
        v144 = 115605.82;
      }

      else
      {
        v142 = vmlaq_f64(vmlaq_f64(vmlaq_f64(xmmword_1D0E77B20, xmmword_1D0E77B10, v138), xmmword_1D0E77B30, v139), xmmword_1D0E77B40, v141);
        v143 = *&v129 * 4690.25 + -853.666 + v220 * -8624.77;
        v144 = 5341.4;
      }

      __asm { FMOV            V18.2D, #1.0 }

      v146 = vmlaq_n_f64(_Q18, xmmword_1D0E77B50, v14.__cosval);
      __asm { FMOV            V20.2D, #-8.0 }

      v148 = vmlaq_n_f64(xmmword_1D0E77B70, _Q20, v14.__cosval);
      __asm { FMOV            V24.2D, #8.0 }

      v150 = vmlaq_n_f64(xmmword_1D0E77B80, _Q24, v14.__cosval);
      v151 = vdupq_lane_s64(*&v14.__sinval, 0);
      v152.f64[1] = v151.f64[1];
      v152.f64[0] = v180 * v180 * 3.0;
      v153.f64[1] = v151.f64[1];
      v153.f64[0] = v115 * v115;
      v154 = vmulq_f64(v152, v153);
      v155 = vmuld_lane_f64(4.92187512, v154, 1);
      v156 = vmulq_f64(v154, xmmword_1D0E77B90);
      v157 = vdupq_lane_s64(*&v156.f64[0], 0);
      v157.f64[0] = (v146.f64[1] + v206) * 0.75;
      v140.f64[1] = v131;
      v158 = vmulq_f64(vmulq_f64(v156, v157), v140);
      __asm { FMOV            V29.2D, #-3.0 }

      v160 = vmlaq_n_f64(v146, _Q29, v206);
      *(this + 30) = v158;
      *(this + 31) = vmulq_f64(vmulq_n_f64(vmulq_f64(vmulq_n_f64(xmmword_1D0E77B60, v14.__sinval), v160), v115 * v154.f64[0] * 0.00000037393792), v132);
      v161 = v115 * (v115 * v154.f64[0]);
      *&v162.f64[0] = vdupq_laneq_s64(v154, 1).u64[0];
      v163 = vmulq_laneq_f64(xmmword_1D0E77BA0, v154, 1);
      v154.f64[0] = (v146.f64[1] + v206) * 0.75;
      v164 = v115 * v161;
      v146.f64[1] = v14.__cosval * -4.0 + -2.0;
      v160.f64[0] = v14.__cosval * 4.0 + -2.0 + v206 * 6.0;
      v162.f64[1] = v155;
      v151.f64[0] = v14.__sinval * 9.84375;
      v137.f64[1] = v143 + v130 * v144;
      *(this + 32) = vmulq_f64(vmulq_n_f64(vmulq_f64(v154, v163), (v161 + v161) * 0.0000000073636953), v133);
      *(this + 33) = vmulq_f64(vmulq_n_f64(vmulq_f64(v151, vmlaq_f64(vmulq_f64(v160, xmmword_1D0E77BC0), vmlaq_n_f64(v146, xmmword_1D0E77BB0, v206), v162)), v164 * 0.00000011428639), v137);
      *(this + 34) = vmulq_f64(vmulq_n_f64(vmulq_n_f64(vmlaq_n_f64(v148, vmlaq_n_f64(v150, xmmword_1D0E77BD0, v206), v206), v14.__sinval * 29.53125), (v164 + v164) * 0.0000000021765803), v142);
      v127 = fmod(*(this + 118) + *(this + 120) * 2.0 + v114 * -2.0, 6.28318531);
      *(this + 109) = v127;
      v128 = v110 + *(this + 54) + (*(this + 55) + *(this + 76) + -0.00437526909) * 2.0;
      goto LABEL_57;
    }
  }

LABEL_59:
  if ((*(this + 265) & 1) == 0)
  {
    v165 = *(this + 36);
    v166 = v178 * 4.0 * v176 * (v165 * v165);
    v167 = v165 * (v176 * v166) / 3.0;
    v168 = (v177 + v178 * 17.0) * v167;
    *(this + 39) = v166;
    *(this + 40) = v168;
    v169 = v165 * ((v177 * 31.0 + v178 * 221.0) * (v176 * (v178 * (v167 * 0.5))));
    *(this + 41) = v169;
    *(this + 49) = v166 + v165 * v165 * 2.0;
    *(this + 50) = (v165 * (v165 * v165 * 10.0 + v166 * 12.0) + v168 * 3.0) * 0.25;
    *(this + 51) = (v165 * 12.0 * v168 + v169 * 3.0 + v166 * v166 * 6.0 + v165 * v165 * 15.0 * (v165 * v165 + v166 * 2.0)) * 0.2;
  }

  return cnnavigation::NORADTLEEphemerides::SGP4(this, this + 168, __src, v246);
}

uint64_t cnnavigation::NORADTLEEphemerides::SGP4(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v7 = (*(a2 + 8) - *(a1 + 176) + (*a2 - *(a1 + 168))) * 1440.0;
  *(a1 + 376) = v7;
  v8 = *(a1 + 944) + *(a1 + 432) * v7;
  v194 = *(a1 + 352);
  v195 = *(a1 + 920);
  v9 = v195 + v194 * v7;
  v10 = *(a1 + 960) + *(a1 + 440) * v7;
  v11 = v7 * v7;
  v12 = *(a1 + 464);
  v13 = 1.0 - *(a1 + 288) * v7;
  v14 = *(a1 + 192);
  v15 = v7 * (v14 * *(a1 + 296));
  v16 = v7 * v7 * *(a1 + 384);
  v217 = v7;
  if (*(a1 + 265))
  {
    v223 = *(a1 + 944) + *(a1 + 432) * v7;
  }

  else
  {
    v192 = v7 * v7 * *(a1 + 384);
    v220 = *(a1 + 960) + *(a1 + 440) * v7;
    v17 = v7 * *(a1 + 360);
    v18 = v9;
    v19 = *(a1 + 344);
    v188 = v13;
    v190 = v15;
    v20 = cos(v8);
    v21 = v17 + *(a1 + 456) * -(*(a1 + 336) - (v19 * v20 + 1.0) * (v19 * v20 + 1.0) * (v19 * v20 + 1.0));
    v9 = v18 - v21;
    v22 = v217 * (v217 * v11);
    v23 = v188 - *(a1 + 312) * v11 - *(a1 + 320) * (v217 * v11) - *(a1 + 328) * v22;
    v24 = v14 * *(a1 + 304);
    v223 = v8 + v21;
    v15 = v190 + v24 * (sin(v8 + v21) - *(a1 + 368));
    v10 = v220;
    v13 = v23;
    v16 = v192 + *(a1 + 392) * (v217 * v11) + v22 * (*(a1 + 400) + v217 * *(a1 + 408));
    v7 = v217;
  }

  v193 = v16;
  v25 = v10 + v12 * v11;
  v26 = *(a1 + 952);
  v27 = *(a1 + 928);
  v28 = *(a1 + 936);
  v29 = *(a1 + 264);
  if (v29 == 1)
  {
    v187 = *(a1 + 952);
    v189 = v13;
    v191 = v15;
    v30 = v25;
    v31 = fmod(*(a1 + 776) + v7 * 0.00437526909, 6.28318531);
    v27 = v27 + *(a1 + 560) * v7;
    v28 = v28 + *(a1 + 592) * v7;
    v9 = v9 + *(a1 + 616) * v7;
    v32 = *(a1 + 608);
    v25 = v30 + v32 * v7;
    v33 = *(a1 + 472);
    if (*(a1 + 472))
    {
      v181 = v31;
      v182 = v27;
      v183 = v9;
      v184 = v30 + v32 * v7;
      v185 = v28;
      v34 = *(a1 + 896);
      v35 = fabs(v34);
      if (v35 < 2.22044605e-16 || ((v36 = fabs(v7), v7 * v34 > 0.0) ? (v37 = v36 < v35) : (v37 = 1), v37))
      {
        *(a1 + 896) = 0;
        *(a1 + 912) = v187;
        *(a1 + 904) = *(a1 + 872);
        v34 = 0.0;
      }

      v221 = dbl_1D0E77BE0[v7 > 0.0];
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
      while (1)
      {
        if (v33 == 2)
        {
          v48 = v195 + v194 * v34;
          v49 = *(a1 + 904);
          v197 = v49 + v49;
          v50 = *(a1 + 480);
          v210 = v50;
          v51 = __sincos_stret(v48 + v48 + v49 + -5.7686396);
          v52 = *(a1 + 488);
          __y = v52;
          v53 = __sincos_stret(v49 + -5.7686396);
          v54 = v52 * v53.__sinval + v50 * v51.__sinval;
          v55 = *(a1 + 496);
          v204 = v55;
          v196 = v48 + v49;
          v56 = __sincos_stret(v48 + v49 + -0.95240898);
          v57 = *(a1 + 504);
          v201 = v57;
          v58 = v49 - v48;
          v59 = __sincos_stret(v58 + -0.95240898);
          v60 = v54 + v55 * v56.__sinval + v57 * v59.__sinval;
          v61 = *(a1 + 512);
          v199 = v61;
          v62 = __sincos_stret(v48 + v48 + v197 + -1.8014998);
          v63 = v60 + v61 * v62.__sinval;
          v64 = *(a1 + 520);
          v198 = v64;
          v65 = __sincos_stret(v197 + -1.8014998);
          v66 = *(a1 + 528);
          v67 = __sincos_stret(v196 + -1.050833);
          v68 = v63 + v64 * v65.__sinval + v66 * v67.__sinval;
          v69 = *(a1 + 536);
          v70 = __sincos_stret(v58 + -1.050833);
          v71 = *(a1 + 544);
          v72 = __sincos_stret(v48 + v197 + -4.4108898);
          v73 = v68 + v69 * v70.__sinval + v71 * v72.__sinval;
          v74 = *(a1 + 552);
          v75 = __sincos_stret(v197 - v48 + -4.4108898);
          v39 = v73 + v74 * v75.__sinval;
          v38 = *(a1 + 912) + *(a1 + 784);
          v7 = v217;
          v40 = (__y * v53.__cosval + v210 * v51.__cosval + v204 * v56.__cosval + v201 * v59.__cosval + v66 * v67.__cosval + v69 * v70.__cosval + (v65.__cosval * v198 + v199 * v62.__cosval + v71 * v72.__cosval + v74 * v75.__cosval) * 2.0) * v38;
        }

        else if (v33 == 1)
        {
          v41 = *(a1 + 568);
          v42 = *(a1 + 904);
          v43 = __sincos_stret(v42 + -0.13130908);
          v44 = *(a1 + 576);
          v45 = __sincos_stret(v42 + -2.8843198 + v42 + -2.8843198);
          v46 = *(a1 + 584);
          v47 = __sincos_stret((v42 + -0.37448087) * 3.0);
          v39 = v44 * v45.__sinval + v41 * v43.__sinval + v46 * v47.__sinval;
          v38 = *(a1 + 912) + *(a1 + 784);
          v7 = v217;
          v40 = v38 * ((v44 + v44) * v45.__cosval + v41 * v43.__cosval + v46 * 3.0 * v47.__cosval);
        }

        if (vabdd_f64(v7, v34) < 720.0)
        {
          break;
        }

        *(a1 + 904) = *(a1 + 904) + v38 * v221 + v39 * 259200.0;
        *(a1 + 912) = *(a1 + 912) + v39 * v221 + v40 * 259200.0;
        v34 = v221 + v34;
        *(a1 + 896) = v34;
      }

      v77 = v7 - v34;
      v78 = *(a1 + 904) + v38 * (v7 - v34) + (v7 - v34) * (v39 * 0.5) * (v7 - v34);
      if (v33 == 2)
      {
        v223 = v78 + v184 * -2.0 + v181 * 2.0;
        v28 = v185;
        v9 = v183;
      }

      else
      {
        v28 = v185;
        v9 = v183;
        if (v33 != 1)
        {
          v235 = 5;
          v234 = 3;
          cnprint::CNPrinter::Print(&v235, &v234, "SGP4 encountered unexpected resonance type %hhu", v33);
          return 4294967291;
        }

        v223 = v181 + v78 - v184 - v183;
      }

      v26 = v187;
      v13 = v189;
      v76 = v187 + *(a1 + 912) + v39 * v77 + v77 * (v40 * 0.5) * v77 - v187;
      v15 = v191;
      v25 = v184;
      v27 = v182;
    }

    else
    {
      v223 = v223 + *(a1 + 600) * v7;
      v26 = v187;
      v13 = v189;
      v76 = v187;
      v15 = v191;
    }
  }

  else
  {
    v76 = *(a1 + 952);
  }

  if (v76 <= 0.0)
  {
    v233 = 5;
    v232 = 3;
    cnprint::CNPrinter::Print(&v233, &v232, "SGP4 encountered invalid mean motion %lg", v76);
    return 4294967294;
  }

  v79 = v25;
  v80 = v15;
  v81 = v13 * (v13 * pow(0.0743669161 / v76, 0.666666667));
  v82 = pow(v81, 1.5);
  v83 = v27 - v80;
  if (v27 - v80 >= 1.0 || v83 < -0.001)
  {
    v231 = 5;
    v230 = 3;
    cnprint::CNPrinter::Print(&v231, &v230, "SGP4 encountered invalid eccentricity %lg", v27 - v80);
    return 0xFFFFFFFFLL;
  }

  v213 = v82;
  v215 = v81;
  v84 = fmax(v83, 0.000001);
  v85 = v79 + v9 + v223 + v26 * v193;
  v86 = fmod(v79, 6.28318531);
  v87 = fmod(v9, 6.28318531);
  v88 = fmod(v85, 6.28318531);
  v224 = v86;
  v218 = fmod(v88 - v87 - v86, 6.28318531);
  if (v29)
  {
    v206 = v87;
    v89 = *(a1 + 888) + v7 * 0.0000119459;
    v90 = sin(v89);
    v91 = __sincos_stret(v89 + v90 * 0.0335);
    v92 = v91.__sinval * 0.5 * v91.__sinval + -0.25;
    v93 = v91.__cosval * (v91.__sinval * -0.5);
    v94 = *(a1 + 688) * v93 + *(a1 + 680) * v92;
    v211 = v84;
    v95 = v28;
    v96 = *(a1 + 744) * v93 + *(a1 + 736) * v92;
    v97 = *(a1 + 760) * v93 + *(a1 + 752) * v92 + *(a1 + 768) * v91.__sinval;
    v98 = v93 * *(a1 + 704) + *(a1 + 696) * v92 + *(a1 + 712) * v91.__sinval;
    v99 = v7;
    v100 = v93 * *(a1 + 728) + *(a1 + 720) * v92;
    v101 = *(a1 + 880) + v99 * 0.00015835218;
    v102 = sin(v101);
    v103 = __sincos_stret(v101 + v102 * 0.1098);
    v104 = v103.__sinval * 0.5 * v103.__sinval + -0.25;
    v105 = v103.__cosval * (v103.__sinval * -0.5);
    v106 = *(a1 + 624) * v105 + *(a1 + 632) * v104;
    v107 = *(a1 + 840) * v105 + *(a1 + 832) * v104;
    v108 = *(a1 + 856) * v105 + *(a1 + 848) * v104 + *(a1 + 864) * v103.__sinval;
    v109 = v105 * *(a1 + 800) + *(a1 + 792) * v104 + *(a1 + 808) * v103.__sinval;
    v110 = v105 * *(a1 + 824) + *(a1 + 816) * v104;
    v111 = v94 + v106;
    v112 = v100 + v110;
    v113 = v96 + v107 - *(a1 + 664);
    v114 = v97 + v108 - *(a1 + 672);
    v205 = v98 + v109 - *(a1 + 648);
    v115 = v112 - *(a1 + 656);
    v116 = v95 + v113;
    v84 = v211 + v111 - *(a1 + 640);
    v117 = __sincos_stret(v116);
    if (v116 >= 0.2)
    {
      v125 = v206 + v205 - v117.__cosval * (v115 / v117.__sinval);
      v124 = v224 + v115 / v117.__sinval;
      v218 = v218 + v114;
    }

    else
    {
      v118 = __sincos_stret(v224);
      v200 = v118.__cosval * v117.__sinval + v118.__cosval * (v113 * v117.__cosval) - v115 * v118.__sinval;
      v202 = v118.__sinval * v117.__sinval + v118.__sinval * (v113 * v117.__cosval) + v115 * v118.__cosval;
      v119 = fmod(v224, 6.28318531);
      if (v119 >= 0.0)
      {
        v120 = v119;
      }

      else
      {
        v120 = v119 + 6.28318531;
      }

      v121 = v114;
      v203 = v114;
      v122 = v218;
      v123 = v206 + v218 + v117.__cosval * v120 + v121 + v205 + -(v113 * v120) * v117.__sinval;
      v124 = atan2(v202, v200);
      if (vabdd_f64(v120, v124) > 3.14159265)
      {
        v124 = v124 + dbl_1D0E77BF0[v124 < v120];
      }

      v218 = v218 + v203;
      v125 = v123 - (v122 + v203) - v117.__cosval * v124;
    }

    if (v84 < 0.0 || v84 > 1.0)
    {
      v229 = 5;
      v228 = 3;
      cnprint::CNPrinter::Print(&v229, &v228, "SGP4 encountered invalid eccentricity %lg", v84);
      return 4294967293;
    }

    v132 = v116 < 0.0;
    if (v116 >= 0.0)
    {
      v87 = v125;
    }

    else
    {
      v116 = -v116;
      v87 = v125 + -3.14159265;
    }

    if (v132)
    {
      v124 = v124 + 3.14159265;
    }

    v224 = v124;
    v133 = __sincos_stret(v116);
    v128 = v133.__sinval * 0.00117253486;
    *(a1 + 272) = v133.__sinval * 0.00117253486;
    v134 = v133.__sinval * 0.00058626743 * (v133.__cosval * 5.0 + 3.0);
    v186 = v116;
    cosval = v133.__cosval;
    sinval = v133.__sinval;
    if (fabs(v133.__cosval + 1.0) <= 1.5e-12)
    {
      v129 = v134 / 1.5e-12;
    }

    else
    {
      v129 = v134 / (v133.__cosval + 1.0);
    }

    *(a1 + 448) = v129;
    v130 = v213;
  }

  else
  {
    v186 = v28;
    v127 = __sincos_stret(v28);
    sinval = v127.__sinval;
    cosval = v127.__cosval;
    v128 = *(a1 + 272);
    v129 = *(a1 + 448);
    v130 = v213;
  }

  v214 = 0.0743669161 / v130;
  v135 = __sincos_stret(v87);
  v136 = v87;
  v137 = v84 * v135.__cosval;
  v138 = 1.0 / (v215 * (1.0 - v84 * v84));
  v139 = v84;
  v140 = v138 * v128;
  v141 = v138 * v128 + v139 * v135.__sinval;
  v142 = fmod(v224 + v136 + v218 + v138 * v129 * v137 - v224, 6.28318531);
  v143 = 0;
  v144 = -(v140 + v139 * v135.__sinval);
  v145 = v142;
  do
  {
    v146 = __sincos_stret(v145);
    v147 = (v142 + v144 * v146.__cosval + v137 * v146.__sinval - v145) / (1.0 - v146.__cosval * v137 - v146.__sinval * v141);
    if (fabs(v147) >= 0.95)
    {
      v147 = dbl_1D0E77C00[v147 > 0.0];
    }

    if (v143 > 8)
    {
      break;
    }

    v145 = v145 + v147;
    ++v143;
  }

  while (fabs(v147) >= 1.0e-12);
  v148 = 1.0 - (v141 * v141 + v137 * v137);
  v149 = v215 * v148;
  if (v215 * v148 >= 0.0)
  {
    v150 = v146.__cosval * v144 + v137 * v146.__sinval;
    v151 = v215 * (1.0 - (v141 * v146.__sinval + v137 * v146.__cosval));
    v219 = sqrt(v215) * v150 / v151;
    v152 = sqrt(v148);
    v153 = v150 / (v152 + 1.0);
    v154 = (v146.__sinval - v141 - v137 * v153) * (v215 / v151);
    v155 = (v146.__cosval - v137 + v141 * v153) * (v215 / v151);
    v156 = sqrt(v149) / v151;
    v157 = atan2(v154, v155);
    v158 = v154 * (v155 + v155);
    v159 = v154 * -2.0 * v154 + 1.0;
    v160 = 1.0 / v149 * 0.000541308;
    v161 = 1.0 / v149 * v160;
    if (v29)
    {
      v162 = cosval;
      v163 = v162 * v162 * 3.0 + -1.0;
      *(a1 + 280) = v163;
      v164 = 1.0 - v162 * v162;
      v165 = v162 * v162 * 7.0 + -1.0;
      *(a1 + 416) = v164;
      *(a1 + 424) = v165;
      v166 = v186;
    }

    else
    {
      v163 = *(a1 + 280);
      v164 = *(a1 + 416);
      v165 = *(a1 + 424);
      v166 = v186;
      v162 = cosval;
    }

    v216 = v159 * (v160 * 0.5 * v164) + v151 * (-(v161 * 1.5 * v152) * v163 + 1.0);
    v167 = v157 + v161 * -0.25 * v165 * v158;
    v168 = v162 * (v161 * 1.5);
    v169 = v224 + v168 * v158;
    v170 = v166 + sinval * v168 * v159;
    v171 = v214 * v160;
    v225 = v219 - v158 * (v171 * v164) / 0.0743669161;
    v222 = v156 + v171 * (v163 * 1.5 + v164 * v159) / 0.0743669161;
    v172 = __sincos_stret(v167);
    v174 = __sincos_stret(v169);
    *v173.i64 = v174.__cosval;
    __ya = v173;
    v175 = __sincos_stret(v170);
    result = 0;
    *&v176.f64[0] = __ya.i64[0];
    v176.f64[1] = v174.__sinval;
    v177 = vnegq_f64(v176);
    v178 = vmulq_n_f64(vextq_s8(v177, __ya, 8uLL), v175.__cosval);
    v179 = vmlaq_n_f64(vmulq_n_f64(v176, v172.__cosval), v178, v172.__sinval);
    v180 = vmlaq_n_f64(vmulq_n_f64(v177, v172.__sinval), v178, v172.__cosval);
    *a3 = v216 * v179.f64[0] * 6378.135;
    *&v178.f64[0] = vdupq_laneq_s64(v179, 1).u64[0];
    v178.f64[1] = v175.__sinval * v172.__sinval;
    *(a3 + 8) = vmulq_f64(vmulq_n_f64(v178, v216), vdupq_n_s64(0x40B8EA228F5C28F6uLL));
    *a4 = vmulq_f64(vmlaq_n_f64(vmulq_n_f64(v180, v222), v179, v225), vdupq_n_s64(0x401F9F197275BE84uLL));
    a4[1].f64[0] = (v175.__sinval * v172.__cosval * v222 + v225 * (v175.__sinval * v172.__sinval)) * 7.90537051;
  }

  else
  {
    v227 = 5;
    v226 = 3;
    cnprint::CNPrinter::Print(&v227, &v226, "SGP4 encountered invalid pL %lg", v215 * v148);
    return 4294967292;
  }

  return result;
}

double cnnavigation::NORADTLEEphemerides::ECIToECEF(uint64_t a1, uint64_t a2, double *a3)
{
  v4 = (*a2 - 2451545) / 36525.0;
  v5 = *(a2 + 8);
  v6 = fmod(v4 * v4 * 0.093104 + v4 * (v4 * v4) * -0.0000062 + v4 * 3164400180.0 + 67310.5484, 86400.0);
  v7 = fmod(v6 * 0.0000727220522 + ((v5 / 36525.0 + v4) * 5.9006e-11 + 1.00273791 + (v5 / 36525.0 + v4) * (v5 / 36525.0 + v4) * -5.9e-15) * 6.28318531 * v5, 6.28318531);
  v8 = __sincos_stret(v7);
  return a3[1] * v8.__sinval + v8.__cosval * *a3;
}

uint64_t cnnavigation::NORADTLEEphemerides::GNSSSatelliteClockOffset(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (*(a1 + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a4 = 0;
  *a6 = 0;
  a6[1] = 0;
  return result;
}

uint64_t cnnavigation::NORADTLEEphemerides::GNSSSatelliteClockOffsetRate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (*(a1 + 8) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a4 = 0;
  *a6 = 0;
  a6[1] = 0;
  return result;
}

long double cnnavigation::NORADTLEEphemerides::GreenwichHourAngle(uint64_t a1, uint64_t a2)
{
  v2 = (*a2 - 2451545) / 36525.0;
  v3 = *(a2 + 8);
  v4 = fmod(v2 * v2 * 0.093104 + v2 * (v2 * v2) * -0.0000062 + v2 * 3164400180.0 + 67310.5484, 86400.0) * 0.0000727220522 + ((v3 / 36525.0 + v2) * 5.9006e-11 + 1.00273791 + (v3 / 36525.0 + v2) * (v3 / 36525.0 + v2) * -5.9e-15) * 6.28318531 * v3;

  return fmod(v4, 6.28318531);
}

uint64_t sub_1D0C6EE38(uint64_t a1)
{
  *a1 = &unk_1F4CD6260;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *a1 = &unk_1F4CD5F70;
  return a1;
}

void sub_1D0C6EEE4(uint64_t a1)
{
  *a1 = &unk_1F4CD6260;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *a1 = &unk_1F4CD5F70;

  JUMPOUT(0x1D387ECA0);
}

uint64_t cnnavigation::GNSSCarrierPhase(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, int8x16_t a7, int8x16_t a8, double a9)
{
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  return cnnavigation::GNSSCarrierPhase(a1, &v11, a2, a3, a4, a5, a6, 0, a7, a8, a9, v10);
}

uint64_t cnnavigation::GNSSCarrierPhase(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, float64x2_t *a7, int8x16_t a8, int8x16_t a9, double a10)
{
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  return cnnavigation::GNSSCarrierPhase(a1, &v11, a2, a3, a4, a5, a6, 1, a8, a9, a10, a7);
}

uint64_t cnnavigation::BeiDouTime::BeiDouTime(uint64_t this, int a2, double a3)
{
  *this = a2;
  *(this + 8) = a3;
  return this;
}

{
  *this = a2;
  *(this + 8) = a3;
  return this;
}

double cnnavigation::BeiDouTime::BeiDouTime(cnnavigation::BeiDouTime *this, double a2)
{
  v2 = vcvtmd_s64_f64(a2 / 604800.0);
  *this = v2;
  result = a2 + v2 * -604800.0;
  *(this + 1) = result;
  return result;
}

{
  v2 = vcvtmd_s64_f64(a2 / 604800.0);
  *this = v2;
  result = a2 + v2 * -604800.0;
  *(this + 1) = result;
  return result;
}

double cnnavigation::BeiDouTime::BeiDouTime(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = *a2 / 604800;
  *a1 = v3;
  result = a2[1] + (v2 - 604800 * v3);
  *(a1 + 8) = result;
  if (result < 0.0)
  {
    *a1 = v3 - 1;
    result = result + 604800.0;
    *(a1 + 8) = result;
  }

  return result;
}

{
  v2 = *a2;
  v3 = *a2 / 604800;
  *a1 = v3;
  result = a2[1] + (v2 - 604800 * v3);
  *(a1 + 8) = result;
  if (result < 0.0)
  {
    *a1 = v3 - 1;
    result = result + 604800.0;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t cnnavigation::BeiDouTime::operator CNTime(int *a1, int8x16_t a2, int8x16_t a3)
{
  a2.i64[0] = *(a1 + 1);
  v3 = vcvtmd_s64_f64(*a2.i64) + 604800 * *a1;
  *a3.i64 = floor(*a2.i64);
  *a2.i64 = *a2.i64 - *a3.i64;
  v5[0] = 0;
  v5[1] = 0;
  CNTimeSpan::SetTimeSpan(v5, v3, a2, a3);
  return v5[0];
}

uint64_t cnnavigation::BeiDouTimeToJulianTime(double *a1, int a2, uint64_t a3)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1[1];
  result = 0xFFFFFFFFLL;
  if (v4 >= 0.0 && v4 < 604800.0)
  {
    result = 0;
    v6 = vcvtmd_s64_f64(v4 / 86400.0);
    v7 = (v4 - a2) / 86400.0 + 0.5 - v6;
    *a3 = v6 - v3 + 8 * v3 + 2453736 + vcvtmd_s64_f64(v7);
    *(a3 + 8) = v7 - floor(v7);
  }

  return result;
}

double cnnavigation::JulianTimeToBeiDouTime(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8) + -0.5;
  result = v3 - floor(v3);
  v5 = *a1 - 2453736 + vcvtmd_s64_f64(v3);
  if ((v5 & 0x80000000) == 0)
  {
    *a3 = v5 / 7;
    result = result * 86400.0 + (v5 % 7) * 86400.0 + a2;
    *(a3 + 8) = result;
    if (result >= 604800.0)
    {
      *a3 = v5 / 7 + 1;
      result = result + -604800.0;
      *(a3 + 8) = result;
    }
  }

  return result;
}

uint64_t cnnavigation::GNSSPseudorange(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, int8x16_t a7, int8x16_t a8)
{
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  return cnnavigation::GNSSPseudorange(a1, &v10, a2, a3, a4, a5, a6, 0, a7, a8, v9);
}

uint64_t cnnavigation::GNSSPseudorange(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double *a6, float64x2_t *a7, int8x16_t a8, int8x16_t a9)
{
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  return cnnavigation::GNSSPseudorange(a1, &v10, a2, a3, a4, a5, a6, 1, a8, a9, a7);
}

uint64_t cnnavigation::BeiDouEphemerisDatabase::GetEphemerides(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24) != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a2 + 28) + 4000;
  v8 = v3;
  do
  {
    if (*(v4 + 32) >= v7)
    {
      v8 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v7));
  }

  while (v4);
  if (v8 == v3 || v7 < *(v8 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  std::string::operator=((a3 + 8), (v8 + 48));
  *(a3 + 32) = *(v8 + 72);
  memcpy((a3 + 40), (v8 + 80), 0x10CuLL);
  return 0;
}

uint64_t cnnavigation::BeiDouEphemerisDatabase::SetEphemerides(uint64_t **this, const cnnavigation::BeiDouEphemerides *a2)
{
  v2 = a2 + 40;
  if (*(a2 + 32) != 4 || *(a2 + 40) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a2 + 9) + 4000;
  v7 = this[1];
  if (!v7)
  {
LABEL_19:
    operator new();
  }

  v8 = this + 1;
  v9 = this[1];
  do
  {
    v10 = *(v9 + 8);
    v12 = __OFSUB__(v10, v6);
    v11 = v10 - v6 < 0;
    v13 = v10 < v6;
    if (v11 == v12)
    {
      v8 = v9;
    }

    v9 = v9[v13];
  }

  while (v9);
  if (v8 == this + 1 || v6 < *(v8 + 8))
  {
    while (1)
    {
      while (1)
      {
        v14 = v7;
        v15 = *(v7 + 8);
        if (v15 <= v6)
        {
          break;
        }

        v7 = *v14;
        if (!*v14)
        {
          goto LABEL_19;
        }
      }

      if (v15 >= v6)
      {
        return 0;
      }

      v7 = v14[1];
      if (!v7)
      {
        goto LABEL_19;
      }
    }
  }

  if (*(a2 + 7) - *(v8 + 12) + (*(a2 + 12) - *(v8 + 22)) * 604800.0 <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  std::string::operator=(v8 + 2, (a2 + 8));
  v8[9] = *(a2 + 4);
  memcpy(v8 + 10, v2, 0x10CuLL);
  return 0;
}

void sub_1D0C6F764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = &unk_1F4CD5F70;
  sub_1D0C6F7CC(va);
  _Unwind_Resume(a1);
}

void cnnavigation::BeiDouEphemerisDatabase::Reset(char **this)
{
  v2 = (this + 1);
  sub_1D0C6F840(this[1]);
  *this = v2;
  this[2] = 0;
  *v2 = 0;
}

uint64_t *sub_1D0C6F7CC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      *(v2 + 40) = &unk_1F4CD5C60;
      if (*(v2 + 71) < 0)
      {
        operator delete(*(v2 + 48));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1D0C6F840(char *a1)
{
  if (a1)
  {
    sub_1D0C6F840(*a1);
    sub_1D0C6F840(*(a1 + 1));
    *(a1 + 5) = &unk_1F4CD5C60;
    if (a1[71] < 0)
    {
      operator delete(*(a1 + 6));
    }

    operator delete(a1);
  }
}

uint64_t cnnavigation::GPSTimeOfFlight(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int a7, double *a8, double a9, double a10)
{
  v66 = *MEMORY[0x1E69E9840];
  v47 = a2[1];
  v48 = *a2;
  v46 = a2[2];
  *a6 = 0.0;
  v20 = 0.0;
  v21 = 10;
  while (1)
  {
    result = cnnavigation::GPSFindSat(a1, a3, &v55, 0, 0, a9 - v20);
    if (result)
    {
      break;
    }

    v23 = *a6;
    v24 = __sincos_stret(*a6 * 0.0000729211515);
    v25 = v24.__sinval * *(&v55 + 1) + v24.__cosval * *&v55;
    v26 = v24.__cosval * *(&v55 + 1) - v24.__sinval * *&v55;
    v27 = *&v56;
    *&v51 = v25;
    *(&v51 + 1) = v26;
    *&v52 = v56;
    v63 = 0.0;
    result = (*(*a4 + 16))(a4, a1, a2, &v51, &v63, a9 - v23, a10);
    if (result)
    {
      break;
    }

    v60 = 0.0;
    result = (*(*a5 + 16))(a5, a1, a2, &v51, &v60, a9 - *a6);
    if (result)
    {
      break;
    }

    v20 = sqrt((v26 - v47) * (v26 - v47) + (v25 - v48) * (v25 - v48) + (v27 - v46) * (v27 - v46)) / 299792458.0 + v63 + v60;
    *a6 = v20;
    if (!--v21)
    {
      if (!a7)
      {
        return 0;
      }

      result = cnnavigation::GPSFindSat(a1, a3, &v63, &v60, 0, a9 - v20);
      if (!result)
      {
        v28 = *a6;
        v29 = __sincos_stret(*a6 * 0.0000729211515);
        v30 = v65;
        v44 = v29.__cosval * v64 - v29.__sinval * v63;
        v45 = v29.__sinval * v64 + v29.__cosval * v63;
        v59[0] = v45;
        v59[1] = v44;
        v59[2] = v65;
        v50 = 0.0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        result = (*(*a4 + 24))(a4, a1, a2, v59, &v50, &v55, a9 - v28, a10);
        if (!result)
        {
          v49 = 0.0;
          v54 = 0.0;
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
          result = (*(*a5 + 24))(a5, a1, a2, v59, &v49, &v51, a9 - *a6);
          if (!result)
          {
            v31 = sqrt((v44 - v47) * (v44 - v47) + (v45 - v48) * (v45 - v48) + (v30 - v46) * (v30 - v46));
            *a6 = v31 / 299792458.0 + v50 + v49;
            v32 = (v45 - v48) / v31;
            v33 = (v44 - v47) / v31;
            v34 = (v30 - v46) / v31;
            v35 = (v29.__cosval * v64 + -v29.__sinval * v63) * 0.0000729211515 - v29.__cosval * v60 - v29.__sinval * v61;
            v36 = (v64 * -v29.__sinval - v29.__cosval * v63) * 0.0000729211515 + v29.__sinval * v60 - v29.__cosval * v61;
            v37 = v29.__sinval * v61 + v29.__cosval * v60;
            v38 = *&v57;
            v39 = *(&v51 + 1);
            v40 = 1.0 - (*(&v57 + 1) * v35 - *&v55 + *&v58 * v36 - *(&v58 + 1) * v62 + (v33 * v36 + v32 * v35 - v34 * v62) * 0.00000000333564095 + v35 * *&v53 - *&v51 + *(&v53 + 1) * v36 - v54 * v62);
            v41 = *(&v55 + 1) / v40;
            *a8 = (*&v55 + *(&v57 + 1) * v37 + *&v58 * (v29.__cosval * v61 + -v29.__sinval * v60) + *(&v58 + 1) * v62 + (v33 * (v29.__cosval * v61 + -v29.__sinval * v60) + v32 * v37 + v34 * v62) * 0.00000000333564095 + *&v51 + *&v53 * v37 + *(&v53 + 1) * (v29.__cosval * v61 + -v29.__sinval * v60) + v54 * v62) / v40;
            a8[1] = v41;
            v42 = *(&v52 + 1);
            v43 = (*&v52 + *(&v56 + 1) - v33 * 0.00000000333564095) / v40;
            a8[2] = (v39 + *&v56 - v32 * 0.00000000333564095) / v40;
            a8[3] = v43;
            a8[4] = (v42 + v38 - v34 * 0.00000000333564095) / v40;
          }
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t cnnavigation::GPSTimeOfFlightRate(uint64_t a1, double *a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, int a8, double a9, double a10, double *a11)
{
  v154 = *MEMORY[0x1E69E9840];
  v147 = 0.0;
  result = cnnavigation::GPSTimeOfFlight(a1, a2, a4, a5, a6, &v147, 1, v143, a9, a10);
  if (!result)
  {
    v22 = v143[0];
    v23 = v144;
    v24 = v145;
    v25 = v146;
    *a7 = v143[0] + v144 * *a3 + v145 * a3[1] + v146 * a3[2];
    if (a8)
    {
      v130 = v24;
      v131 = v23;
      v132 = v143[1];
      v26 = *a2;
      v27 = a2[1];
      v28 = a2[2];
      v29 = v147;
      v30 = a9 - v147;
      result = cnnavigation::GPSFindSat(a1, a4, &v151, v150, v149, v30);
      if (!result)
      {
        v110 = v26;
        v111 = v22;
        v112 = v25;
        v117 = v27;
        v31 = __sincos_stret(v29 * 0.0000729211515);
        v33 = v151;
        v32 = v152;
        v34 = v153;
        v35 = v31.__cosval * v152 - v31.__sinval * v151;
        v148[0] = v31.__sinval * v152 + v31.__cosval * v151;
        v148[1] = v35;
        v148[2] = v153;
        v127 = *a7;
        v128 = v148[0];
        v121 = *a3;
        v122 = a3[1];
        v123 = v150[2];
        v124 = a3[2];
        v125 = v149[0];
        v113 = v149[1];
        v115 = v150[0];
        v119 = v150[1];
        v120 = v149[2];
        v142 = 0;
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        result = (*(*a5 + 24))(a5, a1, a2, v148, &v142, &v138, v30, a10);
        if (!result)
        {
          v36 = v34;
          v37 = v128;
          v136 = 0;
          v137 = 0;
          v134 = 0u;
          v135 = 0u;
          v133 = 0u;
          result = (*(*a6 + 24))(a6, a1, a2, v148, &v137, &v133, v30);
          if (!result)
          {
            v38 = v128 - v110;
            v39 = 1.0 - v127;
            v40 = v31.__sinval * -0.0000729211515 * v127;
            v41 = v31.__cosval * 0.0000729211515 * -0.0000729211515 * v127;
            v42 = v31.__sinval * 0.0000729211515 * v127;
            v43 = v35 - v117;
            v44 = v31.__cosval * 0.0000729211515 * v127;
            v45 = v115 * v40 + v31.__cosval * v125 * v39 + v31.__sinval * v113 * v39 + v44 * v119;
            v46 = v39 * (v31.__sinval * v125) + v31.__cosval * -0.0000729211515 * v115 * v39 + v31.__sinval * 0.0000729211515 * 0.0000729211515 * v127 * v33 + v44 * v115;
            v47 = v35 * 0.0000729211515 - v31.__cosval * v115 - v31.__sinval * v119;
            v48 = (-(v31.__sinval * v32) - v31.__cosval * v33) * 0.0000729211515 + v31.__sinval * v115;
            v49 = v31.__cosval * v119 - v31.__sinval * v115;
            v50 = v31.__sinval * -0.0000729211515 * v33 - v31.__cosval * v115 - v31.__sinval * v119;
            v51 = v31.__cosval * -0.0000729211515 * v33 + v31.__sinval * v115;
            v52 = v31.__sinval * v119 + v31.__cosval * v115;
            v53 = v31.__cosval * -0.0000729211515 * v127;
            v54 = v39 * -(v31.__cosval * v125) + v31.__sinval * -0.0000729211515 * v115 * v39 + v41 * v33 + v42 * v115 + v31.__cosval * 0.0000729211515 * v119 * v39 + -(v31.__sinval * v113) * v39 + v31.__sinval * 0.0000729211515 * -0.0000729211515 * v127 * v32 + v53 * v119;
            v118 = v115 * v53 + -(v31.__sinval * v125) * (1.0 - v127) + v31.__cosval * v113 * (1.0 - v127) + v40 * v119;
            v55 = v46 + v31.__sinval * -0.0000729211515 * v119 * (1.0 - v127) + -(v31.__cosval * v113) * (1.0 - v127) + v41 * v32;
            v114 = v43 * v43 + v38 * v38;
            v116 = v55 + v42 * v119;
            v56 = v36 - v28;
            v57 = sqrt(v114 + v56 * v56);
            v58 = v48 - v31.__cosval * v119;
            v59 = v51 - v31.__cosval * v119;
            v129 = v50 + v31.__cosval * 0.0000729211515 * v32;
            v60 = v57 * (v57 * v57);
            v61 = (v56 * v56 + v43 * v43) / v60;
            v126 = v59 + v31.__sinval * -0.0000729211515 * v32;
            v62 = -((v37 - v110) * v43) / v60;
            v63 = -((v37 - v110) * (v36 - v28)) / v60;
            v64 = v52 + v47 * v111;
            v65 = v52 + v47 * v127;
            v66 = v49 + v58 * v111;
            v67 = (v37 - v110) / v57;
            v68 = v67 * (v45 + v54 * v111) + (v62 * v66 + v61 * v64 + v63 * (v123 - v111 * v123)) * v65;
            v69 = v58 * v62 + v61 * v47 - v63 * v123;
            v70 = v67 * v54;
            v71 = v132 * (v67 * v54) + v132 * v69 * v65;
            v72 = v131 * v70 + -(v61 - v69 * v131) * v65;
            v73 = v130 * v70 + -(v62 - v69 * v130) * v65;
            v74 = v112 * v70 + -(v63 - v69 * v112) * v65;
            v75 = (v56 * v56 + v38 * v38) / v60;
            v76 = v49 + v58 * v127;
            v77 = -(v43 * v56) / v60;
            v78 = v123 - v111 * v123;
            v79 = v68 + (v75 * v66 + v62 * v64 + v77 * v78) * v76;
            v80 = v47;
            v81 = v58 * v75 + v62 * v47 - v77 * v123;
            v82 = v71 + v132 * v81 * v76;
            v83 = v72 + -(v62 - v81 * v131) * v76;
            v84 = v73 + -(v75 - v81 * v130) * v76;
            v85 = v74 + -(v77 - v81 * v112) * v76;
            v86 = v43 / v57;
            v87 = v56 / v57;
            v88 = v114 / v60;
            v89 = -(v120 * (1.0 - v127));
            v90 = v123 - v123 * v127;
            v91 = v79 + v43 / v57 * (v118 + v116 * v111) + (v77 * v66 + v63 * v64 + v114 / v60 * v78) * v90 + v56 / v57 * ((1.0 - v127) * v120 + v89 * v111) + (-(v62 * v66) - v61 * v64 - v63 * v78) * v121 + (-(v75 * v66) - v62 * v64 - v77 * v78) * v122;
            v92 = v80;
            v93 = v58 * v77 + v63 * v80 - v114 / v60 * v123;
            v94 = v83 + v86 * v116 * v131 + -(v63 - v93 * v131) * v90;
            v95 = v84 + v86 * v116 * v130 + -(v77 - v93 * v130) * v90;
            v96 = v87 * v89;
            v97 = v82 + v86 * v116 * v132 + v132 * v93 * v90 + v96 * v132;
            v98 = v85 + v86 * v116 * v112 + -(v88 - v93 * v112) * v90;
            v99 = -(v62 * v58) - v61 * v92 + v63 * v123;
            v100 = v94 + v96 * v131 + (v61 + v99 * v131) * v121;
            v101 = v95 + v96 * v130 + (v62 + v99 * v130) * v121;
            v102 = -(v75 * v58) - v62 * v92 + v77 * v123;
            v103 = -(v77 * v58) - v63 * v92 + v88 * v123;
            v104 = v98 + v96 * v112 + (v63 + v99 * v112) * v121 + (v77 + v102 * v112) * v122 + (v88 + v103 * v112) * v124;
            v105 = 1.0 - (v86 * v126 + v67 * v129 - v87 * v123) / 299792458.0;
            *a11 = (v91 + (-(v77 * v66) - v63 * v64 - v88 * v78) * v124) / 299792458.0 / v105;
            a11[1] = (v97 + v132 * v99 * v121 + v132 * v102 * v122 + v132 * v103 * v124) / 299792458.0 / v105;
            a11[2] = (v100 + (v62 + v102 * v131) * v122 + (v63 + v103 * v131) * v124) / 299792458.0 / v105;
            a11[3] = (v101 + (v75 + v102 * v130) * v122 + (v77 + v103 * v130) * v124) / 299792458.0 / v105;
            v106 = *(&v139 + 1);
            v107 = *&v134;
            v108 = (*&v139 - v67 / 299792458.0 + *(&v133 + 1)) / v105;
            a11[4] = v104 / 299792458.0 / v105;
            a11[5] = v108;
            v109 = (*&v140 - v87 / 299792458.0 + *(&v134 + 1)) / v105;
            a11[6] = (v106 - v86 / 299792458.0 + v107) / v105;
            a11[7] = v109;
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

cnprint::CNPrinter *cnprint::CNPrinter::CNPrinter(cnprint::CNPrinter *this)
{
  v2 = sub_1D0B751F4(this, "com.apple.corenavigation");
  *(v2 + 6) = 250;
  std::timed_mutex::timed_mutex((v2 + 4));
  *(this + 22) = 0;
  *(this + 21) = this + 176;
  *(this + 152) = 1;
  *(this + 20) = 0;
  *(this + 23) = 0;
  sub_1D0B751F4(this + 24, &unk_1D0ED80C5);
  *(this + 85) = 0;
  v3 = MEMORY[0x1E69E5530] + 64;
  *(this + 79) = MEMORY[0x1E69E5530] + 64;
  v4 = *(MEMORY[0x1E69E54D0] + 16);
  v5 = *(MEMORY[0x1E69E54D0] + 8);
  *(this + 27) = v5;
  *(this + *(v5 - 24) + 216) = v4;
  v6 = (this + *(*(this + 27) - 24) + 216);
  std::ios_base::init(v6, this + 224);
  v7 = MEMORY[0x1E69E5530] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *(this + 27) = v7;
  *(this + 79) = v3;
  MEMORY[0x1D387E8B0](this + 224);
  *(this + 152) = 1;
  *(this + 20) = *(this + 20) & 0xFFFFFFFFFFFFFFF8 | 1;
  v46 = 0;
  v8 = this;
  if (*(this + 23) < 0)
  {
    v8 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = os_log_create(v8, v9);
  v44 = 0;
  v45 = v10;
  sub_1D0C71AB0(this + 21, 0, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 1;
  v11 = this;
  if (*(this + 23) < 0)
  {
    v11 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = os_log_create(v11, v12);
  v44 = 1;
  v45 = v13;
  sub_1D0C71AB0(this + 21, 1u, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 2;
  v14 = this;
  if (*(this + 23) < 0)
  {
    v14 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v16 = os_log_create(v14, v15);
  v44 = 2;
  v45 = v16;
  sub_1D0C71AB0(this + 21, 2u, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 3;
  v17 = this;
  if (*(this + 23) < 0)
  {
    v17 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  v19 = os_log_create(v17, v18);
  v44 = 3;
  v45 = v19;
  sub_1D0C71AB0(this + 21, 3u, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 4;
  v20 = this;
  if (*(this + 23) < 0)
  {
    v20 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  v22 = os_log_create(v20, v21);
  v44 = 4;
  v45 = v22;
  sub_1D0C71AB0(this + 21, 4u, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 5;
  v23 = this;
  if (*(this + 23) < 0)
  {
    v23 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = os_log_create(v23, v24);
  v44 = 5;
  v45 = v25;
  sub_1D0C71AB0(this + 21, 5u, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 8;
  v26 = this;
  if (*(this + 23) < 0)
  {
    v26 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  v28 = os_log_create(v26, v27);
  v44 = 8;
  v45 = v28;
  sub_1D0C71AB0(this + 21, 8u, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 10;
  v29 = this;
  if (*(this + 23) < 0)
  {
    v29 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  v31 = os_log_create(v29, v30);
  v44 = 10;
  v45 = v31;
  sub_1D0C71AB0(this + 21, 0xAu, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 11;
  v32 = this;
  if (*(this + 23) < 0)
  {
    v32 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v33 = __p;
  }

  else
  {
    v33 = __p[0];
  }

  v34 = os_log_create(v32, v33);
  v44 = 11;
  v45 = v34;
  sub_1D0C71AB0(this + 21, 0xBu, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 12;
  v35 = this;
  if (*(this + 23) < 0)
  {
    v35 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  v37 = os_log_create(v35, v36);
  v44 = 12;
  v45 = v37;
  sub_1D0C71AB0(this + 21, 0xCu, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = 13;
  v38 = this;
  if (*(this + 23) < 0)
  {
    v38 = *this;
  }

  cnprint::CNPrinter::GetLogCategoryString(&v46, __p);
  if (v43 >= 0)
  {
    v39 = __p;
  }

  else
  {
    v39 = __p[0];
  }

  v40 = os_log_create(v38, v39);
  v44 = 13;
  v45 = v40;
  sub_1D0C71AB0(this + 21, 0xDu, &v44);
  if (v43 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1D0C70B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1D0C54438(v17, MEMORY[0x1E69E54D0]);
  MEMORY[0x1D387EBF0](v16);
  if (*(v14 + 215) < 0)
  {
    operator delete(*(v15 + 24));
  }

  sub_1D0B99218(*v18);
  MEMORY[0x1D387E7E0](v14 + 32);
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(a1);
}

uint64_t *cnprint::CNPrinter::GetLogCategoryString@<X0>(_WORD *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D0B751F4(a2, "error");
  switch(*a1)
  {
    case 0:
      if (*(result + 23) < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 1818325605;
      v7 = 1701733735;
      goto LABEL_61;
    case 1:
      if (*(result + 23) < 0)
      {
        result[1] = 18;
        result = *result;
      }

      else
      {
        *(result + 23) = 18;
      }

      *(result + 8) = 31090;
      *result = *"cnbuildinggeometry";
      result = (result + 18);
      goto LABEL_62;
    case 2:
      if (*(result + 23) < 0)
      {
        result[1] = 12;
        result = *result;
      }

      else
      {
        *(result + 23) = 12;
      }

      *(result + 2) = 1852795252;
      v6 = "cnestimation";
      goto LABEL_58;
    case 3:
      if (*(result + 23) < 0)
      {
        result[1] = 11;
        result = *result;
      }

      else
      {
        *(result + 23) = 11;
      }

      *(result + 7) = 1802661751;
      *result = *"cnframework";
      result = (result + 11);
      goto LABEL_62;
    case 4:
      if (*(result + 23) < 0)
      {
        result[1] = 8;
        result = *result;
      }

      else
      {
        *(result + 23) = 8;
      }

      v4 = 0x78697274616D6E63;
      goto LABEL_53;
    case 5:
      if (*(result + 23) < 0)
      {
        result[1] = 12;
        result = *result;
      }

      else
      {
        *(result + 23) = 12;
      }

      *(result + 2) = 1852795252;
      v6 = "cnnavigation";
      goto LABEL_58;
    case 6:
      if (*(result + 23) < 0)
      {
        result[1] = 14;
        result = *result;
      }

      else
      {
        *(result + 23) = 14;
      }

      qmemcpy(result, "cnplatforminfo", 14);
      result = (result + 14);
      goto LABEL_62;
    case 7:
      if (*(result + 23) < 0)
      {
        result[1] = 10;
        result = *result;
      }

      else
      {
        *(result + 23) = 10;
      }

      *(result + 4) = 27491;
      v5 = "cnplayback";
      goto LABEL_44;
    case 8:
      if (*(result + 23) < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 1953393010;
      v7 = 1919970915;
LABEL_61:
      *result = v7;
      result = (result + 7);
      goto LABEL_62;
    case 9:
      if (*(result + 23) < 0)
      {
        result[1] = 10;
        result = *result;
      }

      else
      {
        *(result + 23) = 10;
      }

      *(result + 4) = 26229;
      v5 = "cnprototuf";
LABEL_44:
      *result = *v5;
      result = (result + 10);
      goto LABEL_62;
    case 0xA:
      if (*(result + 23) < 0)
      {
        result[1] = 12;
        result = *result;
      }

      else
      {
        *(result + 23) = 12;
      }

      *(result + 2) = 1935894900;
      v6 = "cnstatistics";
LABEL_58:
      *result = *v6;
      result = (result + 12);
      goto LABEL_62;
    case 0xB:
      if (*(result + 23) < 0)
      {
        result[1] = 8;
        result = *result;
      }

      else
      {
        *(result + 23) = 8;
      }

      v4 = 0x726F746365766E63;
      goto LABEL_53;
    case 0xC:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 110;
      *result = 1702257010;
      result = (result + 5);
      goto LABEL_62;
    case 0xD:
      if (*(result + 23) < 0)
      {
        result[1] = 8;
        result = *result;
      }

      else
      {
        *(result + 23) = 8;
      }

      v4 = 0x6E75726B63617274;
LABEL_53:
      *result++ = v4;
LABEL_62:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D0C70F70(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *(a1 + 216) = *MEMORY[0x1E69E54D0];
  *(a1 + 216 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1D387E8C0](a1 + 224);
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](a1 + 632);
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  sub_1D0B99218(*(a1 + 176));
  MEMORY[0x1D387E7E0](a1 + 32);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *cnprint::CNPrinter::GetLogLevelString@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D0B751F4(a2, "None");
  v4 = *a1;
  if (v4 > 2)
  {
    if (*a1 <= 4u)
    {
      if (v4 != 3)
      {
        if (v4 != 4)
        {
          return result;
        }

        if (*(result + 23) < 0)
        {
          result[1] = 5;
          result = *result;
        }

        else
        {
          *(result + 23) = 5;
        }

        *(result + 4) = 114;
        v6 = 1869771333;
        goto LABEL_40;
      }

      if (*(result + 23) < 0)
      {
        result[1] = 7;
        result = *result;
      }

      else
      {
        *(result + 23) = 7;
      }

      *(result + 3) = 1953264993;
      v5 = 1634100548;
      goto LABEL_28;
    }

    if (v4 != 5)
    {
      if (v4 != 255)
      {
        return result;
      }

      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 1701736270;
      goto LABEL_37;
    }

    if (*(result + 23) < 0)
    {
      result[1] = 5;
      result = *result;
    }

    else
    {
      *(result + 23) = 5;
    }

    *(result + 4) = 116;
    v6 = 1819631942;
    goto LABEL_40;
  }

  if (*a1)
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return result;
      }

      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 1868983881;
LABEL_37:
      *result = v7;
      result = (result + 4);
      goto LABEL_41;
    }

    if (*(result + 23) < 0)
    {
      result[1] = 5;
      result = *result;
    }

    else
    {
      *(result + 23) = 5;
    }

    *(result + 4) = 103;
    v6 = 1969382724;
LABEL_40:
    *result = v6;
    result = (result + 5);
    goto LABEL_41;
  }

  if (*(result + 23) < 0)
  {
    result[1] = 7;
    result = *result;
  }

  else
  {
    *(result + 23) = 7;
  }

  *(result + 3) = 1702063970;
  v5 = 1651664214;
LABEL_28:
  *result = v5;
  result = (result + 7);
LABEL_41:
  *result = 0;
  return result;
}

BOOL sub_1D0C71260(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1D0C54390();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void cnprint::CNPrinter::DisableLogStream(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v9 = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, &v9))
  {
    v8 = 8;
    v7 = 2;
    cnprint::CNPrinter::PrintInternal(&unk_1EC5FB8B8, &v8, &v7, "Disabling log stream %zu", v2, v3, v4, v5, *a1);
    v6 = *a1;
    if (*a1 >= 3uLL)
    {
      sub_1D0C543A8("bitset set argument out of range");
    }

    qword_1EC5FB958 &= ~(1 << v6);
    if (v6 == 1 && qword_1EC5FBA10 && !std::filebuf::close())
    {
      std::ios_base::clear((&qword_1EC5FB990 + *(qword_1EC5FB990 - 24)), *(&qword_1EC5FB990 + *(qword_1EC5FB990 - 24) + 32) | 4);
    }

    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }
}

void cnprint::CNPrinter::EnableLogStream(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v9 = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, &v9))
  {
    v6 = *a1;
    if (*a1 >= 3uLL)
    {
      sub_1D0C543A8("bitset set argument out of range");
    }

    qword_1EC5FB958 |= 1 << v6;
    v8 = 8;
    v7 = 2;
    cnprint::CNPrinter::PrintInternal(&unk_1EC5FB8B8, &v8, &v7, "Enabling log stream %zu", v2, v3, v4, v5, v6);
    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }
}

unint64_t cnprint::CNPrinter::IsLogStreamEnabled(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v4 = dword_1EC5FB8D0;
  if (!sub_1D0B7DED0(&stru_1EC5FB8D8, &v4))
  {
    return 0;
  }

  if (*a1 >= 3uLL)
  {
    sub_1D0C543A8("bitset test argument out of range");
  }

  v2 = (qword_1EC5FB958 >> *a1) & 1;
  std::timed_mutex::unlock(&stru_1EC5FB8D8);
  return v2;
}

void cnprint::CNPrinter::GetFileLogStreamName(cnprint::CNPrinter *this@<X0>, uint64_t a2@<X8>)
{
  cnprint::CNPrinter::GetCNPrinter(this);
  v3 = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, &v3))
  {
    if (byte_1EC5FB98F < 0)
    {
      sub_1D0BC39B4(a2, xmmword_1EC5FB978, *(&xmmword_1EC5FB978 + 1));
    }

    else
    {
      *a2 = xmmword_1EC5FB978;
      *(a2 + 16) = unk_1EC5FB988;
    }

    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }

  else
  {
    sub_1D0B751F4(a2, &unk_1D0ED80C5);
  }
}

void cnprint::CNPrinter::Print(cnprint::CNPrinter *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v3 = a3;
  }

  else
  {
    v3 = *a3;
  }

  cnprint::CNPrinter::Print(a1, a2, "%s", v3);
}

void cnprint::CNPrinter::SetFileLogStreamName(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v16 = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, &v16))
  {
    if (qword_1EC5FBA10)
    {
      v15 = 8;
      v14 = 2;
      v6 = byte_1EC5FB98F >= 0 ? &xmmword_1EC5FB978 : xmmword_1EC5FB978;
      cnprint::CNPrinter::PrintInternal(&unk_1EC5FB8B8, &v15, &v14, "Closing file log stream %s", v2, v3, v4, v5, v6);
      if (!std::filebuf::close())
      {
        std::ios_base::clear((&qword_1EC5FB990 + *(qword_1EC5FB990 - 24)), *(&qword_1EC5FB990 + *(qword_1EC5FB990 - 24) + 32) | 4);
      }
    }

    std::string::operator=(&xmmword_1EC5FB978, a1);
    v13 = 8;
    v12 = 2;
    if (byte_1EC5FB98F >= 0)
    {
      v11 = &xmmword_1EC5FB978;
    }

    else
    {
      v11 = xmmword_1EC5FB978;
    }

    cnprint::CNPrinter::PrintInternal(&unk_1EC5FB8B8, &v13, &v12, "Setting file log stream %s", v7, v8, v9, v10, v11);
    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }
}

void cnprint::CNPrinter::SetLogLevel(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  __p[0] = dword_1EC5FB8D0;
  if (sub_1D0B7DED0(&stru_1EC5FB8D8, __p))
  {
    byte_1EC5FB950 = *a1;
    v10 = 8;
    v9 = 2;
    cnprint::CNPrinter::GetLogLevelString(a1, __p);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    cnprint::CNPrinter::PrintInternal(&unk_1EC5FB8B8, &v10, &v9, "Setting log level %s", v2, v3, v4, v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    std::timed_mutex::unlock(&stru_1EC5FB8D8);
  }
}

void sub_1D0C71824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *cnprint::CNLogFormatter::GetLogPrefix@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[47] < 0)
  {
    return sub_1D0BC39B4(a2, *(this + 3), *(this + 4));
  }

  *a2 = *(this + 24);
  *(a2 + 16) = *(this + 5);
  return this;
}

const void **cnprint::CNLogFormatter::FormatGeneral(const void **a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  return cnprint::CNLogFormatter::FormatGeneral(a1, "%s", v2);
}

uint64_t cnprint::CNLogFormatter::FormatGeneral(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v3 = a3;
  }

  else
  {
    v3 = *a3;
  }

  return cnprint::CNLogFormatter::FormatGeneral(a1, a2, "%s", v3);
}

cnprint::CNLogFormatter *cnprint::CNLogFormatter::FormatWarning(cnprint::CNLogFormatter *a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  return cnprint::CNLogFormatter::FormatWarning(a1, "%s", v2);
}

uint64_t cnprint::CNLogFormatter::FormatWarning(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v3 = a3;
  }

  else
  {
    v3 = *a3;
  }

  return cnprint::CNLogFormatter::FormatWarning(a1, a2, "%s", v3);
}

uint64_t sub_1D0C71960(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t *sub_1D0C71AB0(uint64_t *result, unsigned __int16 a2, uint64_t a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1D0C71B88(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void CNPlatformInfo::CNPlatformInfo(CNPlatformInfo *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *a2)
{
  *this = 0;
  *(this + 2) = 0;
  sub_1D0B751F4(this + 1, &unk_1D0ED80C5);
  sub_1D0B751F4(this + 4, &unk_1D0ED80C5);
  *(this + 7) = 0;
  v4 = *(a2 + 4);
  if (v4 <= 2007000)
  {
    v5 = 0;
    switch(v4)
    {
      case 0:
        v11 = 6;
        v10 = 4;
        cnprint::CNPrinter::Print(&v11, &v10, "ConvertProtobufToPlatformInfoObject encountered the HW_PROTOBUF_DEFAULT type that it cannot convert: %d", 0);
        goto LABEL_4;
      case 1:
        goto LABEL_5;
      case 2:
        v5 = 1;
        goto LABEL_5;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 50:
      case 55:
      case 57:
      case 58:
        v9 = 0;
        v8 = 4;
        cnprint::CNPrinter::Print(&v9, &v8, "ConvertProtobufToPlatformInfoObject encountered an unhandled hardware type: %d", v4);
LABEL_4:
        v5 = 0;
        goto LABEL_5;
      case 8:
        v5 = 2;
        goto LABEL_5;
      case 9:
        v5 = 3;
        goto LABEL_5;
      case 10:
        v5 = 4;
        goto LABEL_5;
      case 11:
        v5 = 5;
        goto LABEL_5;
      case 12:
        v5 = 6;
        goto LABEL_5;
      case 13:
        v5 = 7;
        goto LABEL_5;
      case 14:
        v5 = 8;
        goto LABEL_5;
      case 15:
        v5 = 9;
        goto LABEL_5;
      case 16:
        v5 = 10;
        goto LABEL_5;
      case 17:
        v5 = 11;
        goto LABEL_5;
      case 18:
        v5 = 12;
        goto LABEL_5;
      case 19:
        v5 = 13;
        goto LABEL_5;
      case 20:
        v5 = 14;
        goto LABEL_5;
      case 21:
        v5 = 15;
        goto LABEL_5;
      case 22:
        v5 = 16;
        goto LABEL_5;
      case 23:
        v5 = 17;
        goto LABEL_5;
      case 24:
        v5 = 18;
        goto LABEL_5;
      case 25:
        v5 = 19;
        goto LABEL_5;
      case 26:
        v5 = 20;
        goto LABEL_5;
      case 27:
        v5 = 21;
        goto LABEL_5;
      case 28:
        v5 = 22;
        goto LABEL_5;
      case 29:
        v5 = 23;
        goto LABEL_5;
      case 30:
        v5 = 24;
        goto LABEL_5;
      case 31:
        v5 = 25;
        goto LABEL_5;
      case 32:
        v5 = 26;
        goto LABEL_5;
      case 33:
        v5 = 27;
        goto LABEL_5;
      case 34:
        v5 = 28;
        goto LABEL_5;
      case 35:
        v5 = 29;
        goto LABEL_5;
      case 36:
        v5 = 30;
        goto LABEL_5;
      case 37:
        v5 = 31;
        goto LABEL_5;
      case 38:
        v5 = 32;
        goto LABEL_5;
      case 39:
        v5 = 33;
        goto LABEL_5;
      case 40:
        v5 = 34;
        goto LABEL_5;
      case 41:
        v5 = 35;
        goto LABEL_5;
      case 42:
        v5 = 36;
        goto LABEL_5;
      case 43:
        v5 = 37;
        goto LABEL_5;
      case 44:
        v5 = 38;
        goto LABEL_5;
      case 45:
        v5 = 39;
        goto LABEL_5;
      case 46:
        v5 = 42;
        goto LABEL_5;
      case 47:
        v5 = 40;
        goto LABEL_5;
      case 51:
        v5 = 41;
        goto LABEL_5;
      case 52:
        v5 = 43;
        goto LABEL_5;
      case 53:
        v5 = 44;
        goto LABEL_5;
      case 54:
        v5 = 45;
        goto LABEL_5;
      case 56:
        v5 = 46;
        goto LABEL_5;
      case 59:
        v5 = 47;
        goto LABEL_5;
      case 60:
        v5 = 48;
        goto LABEL_5;
      case 61:
        v5 = 49;
        goto LABEL_5;
      case 62:
        v5 = 50;
        goto LABEL_5;
      case 63:
        v5 = 51;
        goto LABEL_5;
      case 64:
        v5 = 52;
        goto LABEL_5;
      case 65:
        v5 = 53;
        goto LABEL_5;
      case 66:
        v5 = 57;
        goto LABEL_5;
      case 67:
        v5 = 58;
        goto LABEL_5;
      case 68:
        v5 = 54;
        goto LABEL_5;
      case 69:
        v5 = 55;
        goto LABEL_5;
      case 70:
        v5 = 60;
        goto LABEL_5;
      case 71:
        v5 = 61;
        goto LABEL_5;
      case 72:
        v5 = 62;
        goto LABEL_5;
      case 73:
        v5 = 63;
        goto LABEL_5;
      case 74:
        v5 = 64;
        goto LABEL_5;
      case 75:
        v5 = 65;
        goto LABEL_5;
      case 76:
        v5 = 66;
        goto LABEL_5;
      case 77:
        v5 = 67;
        goto LABEL_5;
      case 78:
        v5 = 68;
        goto LABEL_5;
      case 79:
        v5 = 69;
        goto LABEL_5;
      case 80:
        v5 = 70;
        goto LABEL_5;
      case 81:
        v5 = 71;
        goto LABEL_5;
      case 82:
        v5 = 72;
        goto LABEL_5;
      case 83:
        v5 = 73;
        goto LABEL_5;
      case 84:
        v5 = 74;
        goto LABEL_5;
      case 85:
        v5 = 75;
        goto LABEL_5;
      case 86:
        v5 = 76;
        goto LABEL_5;
      case 100:
        v5 = 83;
        goto LABEL_5;
      case 200:
        v5 = 56;
        goto LABEL_5;
      default:
        goto LABEL_6;
    }
  }

  if (v4 > 3003021)
  {
    if (v4 <= 4001001)
    {
      if (v4 == 3003022)
      {
        v5 = 81;
        goto LABEL_5;
      }

      if (v4 == 3003023)
      {
        v5 = 82;
        goto LABEL_5;
      }
    }

    else
    {
      switch(v4)
      {
        case 4001002:
          v5 = 84;
          goto LABEL_5;
        case 4001003:
          v5 = 85;
          goto LABEL_5;
        case 4001004:
          v5 = 86;
LABEL_5:
          *this = v5;
          break;
      }
    }
  }

  else
  {
    if (v4 > 3003018)
    {
      if (v4 == 3003019)
      {
        v5 = 78;
      }

      else if (v4 == 3003020)
      {
        v5 = 79;
      }

      else
      {
        v5 = 80;
      }

      goto LABEL_5;
    }

    if (v4 == 2007001)
    {
      v5 = 59;
      goto LABEL_5;
    }

    if (v4 == 3003018)
    {
      v5 = 77;
      goto LABEL_5;
    }
  }

LABEL_6:
  *(this + 2) = *(a2 + 20);
  std::string::operator=((this + 8), *(a2 + 3));
  std::string::operator=((this + 32), *(a2 + 4));
  v6 = *(a2 + 10);
  if (v6 <= 3)
  {
    *(this + 14) = v6;
  }

  v7 = *(a2 + 11);
  if (v7 <= 2)
  {
    *(this + 15) = v7;
  }
}

void sub_1D0C72164(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CNPlatformInfo::CNPlatformInfo(uint64_t a1, __int16 a2, char a3, __int128 *a4, __int128 *a5, int a6, int a7)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_1D0BC39B4((a1 + 8), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 24) = *(a4 + 2);
    *(a1 + 8) = v11;
  }

  if (*(a5 + 23) < 0)
  {
    sub_1D0BC39B4((a1 + 32), *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    *(a1 + 48) = *(a5 + 2);
    *(a1 + 32) = v12;
  }

  *(a1 + 56) = a6;
  *(a1 + 60) = a7;
  return a1;
}

void sub_1D0C72238(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CNPlatformInfo::GetGnssChipset(CNPlatformInfo *this)
{
  if (*this - 2 > 0x54)
  {
    return 0;
  }

  else
  {
    return dword_1D0E77C40[(*this - 2)];
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_ShutdownFile_CoreNavigationCLPRayTracingTilesAvailability_2eproto(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability *this)
{
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_;
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 8);

    return v2();
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::LogEntry(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6318;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6318;
  return this;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::AvailabilityFileTimestamp(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6390;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6390;
  return this;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::AvailabilityFileCommonHeader(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6408;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD6408;
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::RayTracingTilesAvailabilityHeader(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this)
{
  *this = &unk_1F4CD6480;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6480;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::LatLonGeodetic(void *this)
{
  *this = &unk_1F4CD64F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD64F8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::BoundingBox(void *this)
{
  *this = &unk_1F4CD6570;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD6570;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::RegionSpecificAvailableTiles(uint64_t this)
{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CD65E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 36) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CD65E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::RayTracingTilesAvailabilityData(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this)
{
  *this = &unk_1F4CD6660;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CD6660;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::default_instance_;
  *(this + 16) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::default_instance_;
  *(this + 16) = v1;
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability *this)
{
  v1 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C72948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::LogEntry(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD6318;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    *(this + 5) |= 1u;
    v4 = *(this + 1);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergeFrom(v4, v5);
  }
}

void sub_1D0C72AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::~LogEntry(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this)
{
  *this = &unk_1F4CD6318;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::~LogEntry(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 20))
  {
    this = *(this + 8);
    if (this)
    {
      this = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::Clear(this);
    }
  }

  *(v1 + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::Clear(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this)
{
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    if (*(this + 52))
    {
      v3 = *(this + 1);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(this + 13);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
      if (v4)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::Clear(v4);
      }
    }
  }

  result = sub_1D0C77384(this + 24);
  *(this + 13) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(this + 5) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v16 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v16))
        {
          return 0;
        }
      }

      else
      {
        v16 = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v9 = *(a2 + 14);
      v10 = *(a2 + 15);
      *(a2 + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergePartialFromCodedStream(v7, a2, v11) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v12 = *(a2 + 14);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v14 < 0 == v13)
      {
        *(a2 + 14) = v14;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, unint64_t a2)
{
  if (*(this + 20))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(0);
      v4 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_ + 8);
    }

    v5 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::ByteSize(v4, a2);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    result = (v6 + v7 + 1);
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
      }

      v7 = *(*(a2 + 3) + 8 * v6);
      v8 = *(this + 9);
      v9 = *(this + 8);
      if (v9 >= v8)
      {
        if (v8 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v8 = *(this + 9);
        }

        *(this + 9) = v8 + 1;
        operator new();
      }

      v10 = *(this + 3);
      *(this + 8) = v9 + 1;
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }

  LOBYTE(v11) = *(a2 + 52);
  if (v11)
  {
    if (*(a2 + 52))
    {
      *(this + 13) |= 1u;
      v12 = *(this + 1);
      if (!v12)
      {
        operator new();
      }

      v13 = *(a2 + 1);
      if (!v13)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(v4);
        v13 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergeFrom(v12, v13);
      v11 = *(a2 + 13);
    }

    if ((v11 & 2) != 0)
    {
      *(this + 13) |= 2u;
      v14 = *(this + 2);
      if (!v14)
      {
        operator new();
      }

      v15 = *(a2 + 2);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(v4);
        v15 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 16);
      }

      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergeFrom(v14, v15);
    }
  }
}

void sub_1D0C73324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::AvailabilityFileTimestamp(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD6390;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    result = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = result;
  }

  return result;
}

void sub_1D0C73518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::~AvailabilityFileTimestamp(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this)
{
  *this = &unk_1F4CD6390;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::~AvailabilityFileTimestamp(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
      }

      if (TagFallback != 9)
      {
        break;
      }

      v8 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v8) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v8;
      *(this + 5) |= 1u;
      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this)
{
  v1 = ((*(this + 5) << 31) >> 31) & 9;
  *(this + 4) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::Swap(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp *a2)
{
  if (a2 != this)
  {
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::AvailabilityFileCommonHeader(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD6408;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_1D0C73A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::~AvailabilityFileCommonHeader(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this)
{
  *this = &unk_1F4CD6408;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::~AvailabilityFileCommonHeader(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 5) |= 2u;
        if (v13 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, unsigned int a2)
{
  v3 = *(this + 20);
  if (v3)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(this + 3);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_14:
  *(this + 4) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::Swap(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::SharedCtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::RayTracingTilesAvailabilityHeader(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *a2)
{
  *this = &unk_1F4CD6480;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(this + 12) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergeFrom(v6, v7);
      v4 = *(a2 + 12);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 4);
    *(this + 12) |= 2u;
    *(this + 4) = v8;
    v4 = *(a2 + 12);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    v9 = *(a2 + 5);
    *(this + 12) |= 4u;
    *(this + 5) = v9;
    v4 = *(a2 + 12);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    v10 = *(a2 + 6);
    *(this + 12) |= 8u;
    *(this + 6) = v10;
    v4 = *(a2 + 12);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

LABEL_22:
    v11 = *(a2 + 7);
    *(this + 12) |= 0x10u;
    *(this + 7) = v11;
    v4 = *(a2 + 12);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_23:
    v12 = *(a2 + 8);
    *(this + 12) |= 0x20u;
    *(this + 8) = v12;
    v4 = *(a2 + 12);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_24:
    v13 = *(a2 + 9);
    *(this + 12) |= 0x40u;
    *(this + 9) = v13;
    if ((*(a2 + 12) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 10);
    *(this + 12) |= 0x80u;
    *(this + 10) = v5;
  }
}

void sub_1D0C741C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::~RayTracingTilesAvailabilityHeader(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this)
{
  *this = &unk_1F4CD6480;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::~RayTracingTilesAvailabilityHeader(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    if (*(this + 48))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 40) = 0;
    *(this + 32) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_89;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_97;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_73;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_81;
        }

        goto LABEL_36;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_57;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_65;
        }

        goto LABEL_36;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_49;
      }

LABEL_36:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_36;
    }

    *(this + 12) |= 1u;
    v14 = *(this + 1);
    if (!v14)
    {
      operator new();
    }

    v41 = 0;
    v15 = *(a2 + 1);
    if (v15 >= *(a2 + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v41))
      {
        return 0;
      }
    }

    else
    {
      v41 = *v15;
      *(a2 + 1) = v15 + 1;
    }

    v19 = *(a2 + 14);
    v20 = *(a2 + 15);
    *(a2 + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileTimestamp::MergePartialFromCodedStream(v14, a2, v21) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v22 = *(a2 + 14);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      *(a2 + 14) = v24;
    }

    v25 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v25 < v9 && *v25 == 16)
    {
      v10 = v25 + 1;
      *(a2 + 1) = v10;
LABEL_49:
      if (v10 >= v9 || (v26 = *v10, v26 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v27 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v26;
        v27 = v10 + 1;
        *(a2 + 1) = v27;
      }

      *(this + 12) |= 2u;
      if (v27 < v9 && *v27 == 24)
      {
        v17 = v27 + 1;
        *(a2 + 1) = v17;
LABEL_57:
        if (v17 >= v9 || (v29 = *v17, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v29;
          v30 = v17 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 12) |= 4u;
        if (v30 < v9 && *v30 == 32)
        {
          v12 = v30 + 1;
          *(a2 + 1) = v12;
LABEL_65:
          if (v12 >= v9 || (v31 = *v12, v31 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v32 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v31;
            v32 = v12 + 1;
            *(a2 + 1) = v32;
          }

          *(this + 12) |= 8u;
          if (v32 < v9 && *v32 == 40)
          {
            v16 = v32 + 1;
            *(a2 + 1) = v16;
LABEL_73:
            if (v16 >= v9 || (v33 = *v16, v33 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v34 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v33;
              v34 = v16 + 1;
              *(a2 + 1) = v34;
            }

            *(this + 12) |= 0x10u;
            if (v34 < v9 && *v34 == 48)
            {
              v11 = v34 + 1;
              *(a2 + 1) = v11;
LABEL_81:
              if (v11 >= v9 || (v35 = *v11, v35 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v36 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v35;
                v36 = v11 + 1;
                *(a2 + 1) = v36;
              }

              *(this + 12) |= 0x20u;
              if (v36 < v9 && *v36 == 56)
              {
                v18 = v36 + 1;
                *(a2 + 1) = v18;
LABEL_89:
                if (v18 >= v9 || (v37 = *v18, v37 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v38 = *(a2 + 1);
                  v9 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v37;
                  v38 = v18 + 1;
                  *(a2 + 1) = v38;
                }

                *(this + 12) |= 0x40u;
                if (v38 < v9 && *v38 == 64)
                {
                  v13 = v38 + 1;
                  *(a2 + 1) = v13;
LABEL_97:
                  if (v13 >= v9 || (v39 = *v13, v39 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                    if (!result)
                    {
                      return result;
                    }

                    v40 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 10) = v39;
                    v40 = v13 + 1;
                    *(a2 + 1) = v40;
                  }

                  *(this + 12) |= 0x80u;
                  if (v40 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
                    return result;
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

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[12];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[12];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[12];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
    if ((v5[12] & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v8 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_44;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::default_instance_ + 8);
  }

  v6 = ((*(v5 + 20) << 31) >> 31) & 9;
  *(v5 + 16) = v6;
  v4 = v6 | 2u;
  v3 = *(this + 12);
  if ((v3 & 2) != 0)
  {
LABEL_9:
    v7 = *(this + 4);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
  }

LABEL_13:
  if ((v3 & 4) != 0)
  {
    v9 = *(this + 5);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v3 = *(this + 12);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_28:
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_32:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

LABEL_36:
  v17 = *(this + 9);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v3 = *(this + 12);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_40:
    v19 = *(this + 10);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
  }

LABEL_44:
  *(this + 11) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::LatLonGeodetic(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *a2)
{
  *this = &unk_1F4CD64F8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0C74E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::~LatLonGeodetic(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this)
{
  *this = &unk_1F4CD64F8;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::~LatLonGeodetic(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v10) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v10;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        break;
      }

      v10 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v10) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v10;
      *(this + 7) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 6) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::Swap(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::BoundingBox(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *a2)
{
  *this = &unk_1F4CD6570;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      *(this + 7) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(v6, v7);
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 7) |= 2u;
      v8 = *(this + 2);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 2);
      if (!v9)
      {
        CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
        v9 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 16);
      }

      return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergeFrom(v8, v9);
    }
  }

  return result;
}

void sub_1D0C75520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::~BoundingBox(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this)
{
  *this = &unk_1F4CD6570;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::~BoundingBox(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 28);
  if (v1)
  {
    if (*(this + 28))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(this + 28);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(this + 7) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v25 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
        {
          return 0;
        }
      }

      else
      {
        v25 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 18)
      {
        *(a2 + 1) = v16 + 1;
LABEL_27:
        *(this + 7) |= 2u;
        v17 = *(this + 2);
        if (!v17)
        {
          operator new();
        }

        v26 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
          {
            return 0;
          }
        }

        else
        {
          v26 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LatLonGeodetic::MergePartialFromCodedStream(v17, a2, v21) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v22 = *(a2 + 14);
        v14 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v23 < 0 == v14)
        {
          *(a2 + 14) = v23;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this)
{
  if (!*(this + 28))
  {
    v2 = 0;
    goto LABEL_20;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
    v3 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 8);
  }

  v4 = *(v3 + 28);
  if (*(v3 + 28))
  {
    if ((v4 & 2) != 0)
    {
      v4 = ((v4 << 31 >> 31) & 9) + 9;
    }

    else
    {
      v4 = (v4 << 31 >> 31) & 9;
    }
  }

  *(v3 + 24) = v4;
  v2 = (v4 + 2);
  if ((*(this + 7) & 2) != 0)
  {
LABEL_13:
    v5 = *(this + 2);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::default_instance_ + 16);
    }

    v6 = *(v5 + 28);
    if (*(v5 + 28))
    {
      if ((v6 & 2) != 0)
      {
        v6 = ((v6 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v6 = (v6 << 31 >> 31) & 9;
      }
    }

    *(v5 + 24) = v6;
    v2 = (v2 + v6 + 2);
  }

LABEL_20:
  *(this + 6) = v2;
  return v2;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::RegionSpecificAvailableTiles(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *a2)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_1F4CD65E8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergeFrom(this, a2);
  return this;
}

void sub_1D0C75D70(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    sub_1D0C773F4(v3 + 4, *(v3 + 6) + v5);
    this = memcpy((*(v3 + 2) + 8 * *(v3 + 6)), *(a2 + 2), 8 * *(a2 + 6));
    *(v3 + 6) += *(a2 + 6);
  }

  if (*(a2 + 40))
  {
    *(v3 + 10) |= 1u;
    v6 = *(v3 + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_ + 8);
    }

    return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergeFrom(v6, v7);
  }

  return result;
}

void sub_1D0C75ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::~RegionSpecificAvailableTiles(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this)
{
  *this = &unk_1F4CD65E8;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::SharedDtor(this);
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::~RegionSpecificAvailableTiles(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 40))
  {
    this = *(this + 8);
    if (this)
    {
      this = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::Clear(this);
    }
  }

  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_16;
      }

      *(this + 10) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v24[0] = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v24))
        {
          return 0;
        }
      }

      else
      {
        v24[0] = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v13 = *(a2 + 14);
      v14 = *(a2 + 15);
      *(a2 + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::MergePartialFromCodedStream(v8, a2, v15) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v16 = *(a2 + 14);
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v18 < 0 == v17)
      {
        *(a2 + 14) = v18;
      }

      v19 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v19 < v10 && *v19 == 18)
      {
        v11 = v19 + 1;
        *(a2 + 1) = v11;
LABEL_31:
        v25 = 0;
        if (v11 >= v10 || *v11 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
          {
            return 0;
          }
        }

        else
        {
          v25 = *v11;
          *(a2 + 1) = v11 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
        {
          *v24 = 0;
          v20 = *(a2 + 1);
          if (v20 >= *(a2 + 2) || (*v20 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v24))
            {
              return 0;
            }
          }

          else
          {
            *v24 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v21 = *(this + 6);
          if (v21 == *(this + 7))
          {
            sub_1D0C773F4(this + 4, v21 + 1);
            v21 = *(this + 6);
          }

          v22 = *v24;
          v23 = *(this + 2);
          *(this + 6) = v21 + 1;
          *(v23 + 8 * v21) = v22;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_45:
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      result = sub_1D0C763C8(1, 0x12u, a2, this + 2);
      if (!result)
      {
        return result;
      }

      goto LABEL_45;
    }

    if (v7 == 2)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_31;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_1D0C763C8(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a4)
{
  v19 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || (*v7 & 0x8000000000000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v19);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v19 = *v7;
    *(this + 1) = v7 + 1;
  }

  v9 = *(a4 + 2);
  v10 = *(a4 + 3);
  if (v9 == v10)
  {
    sub_1D0C773F4(a4, v9 + 1);
    v9 = *(a4 + 2);
    v10 = *(a4 + 3);
  }

  v11 = v19;
  v12 = *a4;
  v13 = v9 + 1;
  *(a4 + 2) = v9 + 1;
  *(v12 + 8 * v9) = v11;
  if (v10 - (v9 + 1) >= 1)
  {
    v14 = v10 - v9;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v18 = *(this + 1);
        v15 = *(this + 2);
        if (v15 - v18 < 2 || (a2 & 0x7F | 0x80) != *v18 || a2 >> 7 != v18[1])
        {
          return 1;
        }

        v17 = (v18 + 2);
      }

      else
      {
        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 >= v15 || *v16 != a2)
        {
          return 1;
        }

        v17 = (v16 + 1);
      }

      *(this + 1) = v17;
      if (v17 >= v15 || (*v17 & 0x8000000000000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v19);
        if (!result)
        {
          return result;
        }

        v13 = *(a4 + 2);
      }

      else
      {
        v19 = *v17;
        *(this + 1) = v17 + 1;
      }

      if (v13 >= *(a4 + 3))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
        v13 = *(a4 + 2);
      }

      *(*a4 + 8 * v13++) = v19;
      *(a4 + 2) = v13;
      --v14;
    }

    while (v14 > 1);
  }

  return 1;
}

void sub_1D0C765A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 40))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a2);
        ++v7;
      }

      while (v7 < *(v5 + 24));
    }
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, unint64_t a2)
{
  if (*(this + 40))
  {
    v4 = *(this + 1);
    if (!v4)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(0);
      v4 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::default_instance_ + 8);
    }

    v3 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::BoundingBox::ByteSize(v4) + 2;
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 6) < 1)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v5 = 0;
    LODWORD(v6) = 0;
    do
    {
      v6 = (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(this + 2) + 8 * v5++)) + v6);
    }

    while (v5 < *(this + 6));
    if (v6 > 0)
    {
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      }

      else
      {
        v7 = 2;
      }

      v3 += v7;
    }
  }

  result = (v3 + v6);
  *(this + 8) = v6;
  *(this + 9) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::Swap(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    result = *(a2 + 3);
    *(a2 + 2) = v3;
    v5 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v5;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::SharedCtor(void *this)
{
  this[6] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::RayTracingTilesAvailabilityData(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *a2)
{
  *this = &unk_1F4CD6660;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergeFrom(this, a2);
  return this;
}

void sub_1D0C76944(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::~RayTracingTilesAvailabilityData(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this)
{
  *this = &unk_1F4CD6660;
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::SharedDtor(this);
  sub_1D0B8CD0C(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::~RayTracingTilesAvailabilityData(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::SharedDtor(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this)
{
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 2)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(this + 13) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v38 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
        {
          return 0;
        }
      }

      else
      {
        v38 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v14 = *(a2 + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(a2 + 14) = v16;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 18)
      {
        *(a2 + 1) = v17 + 1;
LABEL_30:
        *(this + 13) |= 2u;
        v18 = *(this + 2);
        if (!v18)
        {
          operator new();
        }

        v39 = 0;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
          {
            return 0;
          }
        }

        else
        {
          v39 = *v19;
          *(a2 + 1) = v19 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v15 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (v24 < 0 == v15)
        {
          *(a2 + 14) = v24;
        }

        v25 = *(a2 + 1);
        if (v25 < *(a2 + 2) && *v25 == 26)
        {
          do
          {
            *(a2 + 1) = v25 + 1;
LABEL_44:
            v26 = *(this + 9);
            v27 = *(this + 8);
            if (v27 >= v26)
            {
              if (v26 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v26 = *(this + 9);
              }

              *(this + 9) = v26 + 1;
              operator new();
            }

            v28 = *(this + 3);
            *(this + 8) = v27 + 1;
            v29 = *(v28 + 8 * v27);
            v40 = 0;
            v30 = *(a2 + 1);
            if (v30 >= *(a2 + 2) || *v30 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
              {
                return 0;
              }
            }

            else
            {
              v40 = *v30;
              *(a2 + 1) = v30 + 1;
            }

            v31 = *(a2 + 14);
            v32 = *(a2 + 15);
            *(a2 + 14) = v31 + 1;
            if (v31 >= v32)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::MergePartialFromCodedStream(v29, a2, v33) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v34 = *(a2 + 14);
            v15 = __OFSUB__(v34, 1);
            v35 = v34 - 1;
            if (v35 < 0 == v15)
            {
              *(a2 + 14) = v35;
            }

            v25 = *(a2 + 1);
            v36 = *(a2 + 2);
          }

          while (v25 < v36 && *v25 == 26);
          if (v25 == v36 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, unint64_t a2)
{
  if (!*(this + 52))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 8);
  }

  v5 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::AvailabilityFileCommonHeader::ByteSize(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  if ((*(this + 13) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityHeader::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
  }

LABEL_18:
  v12 = *(this + 8);
  v13 = (v12 + v3);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RegionSpecificAvailableTiles::ByteSize(*(*(this + 3) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      }

      else
      {
        v17 = 1;
      }

      v13 = (v16 + v13 + v17);
      ++v14;
    }

    while (v14 < *(this + 8));
  }

  *(this + 12) = v13;
  return v13;
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::CopyFrom(const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, const CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::Swap(CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *this, CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v6;
    v7 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v7;
  }

  return this;
}

uint64_t sub_1D0C77384(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

_DWORD *sub_1D0C773F4(_DWORD *result, int a2)
{
  v2 = result[3];
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    result[3] = v3;
    operator new[]();
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::protobuf_ShutdownFile_CoreNavigationCLPRavenOutput_2eproto(CoreNavigation::CLP::LogEntry::Raven *this)
{
  if (CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_;
  if (CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_ + 8);

    return v2();
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::Raven::TimeStruct::TimeStruct(void *this)
{
  *this = &unk_1F4CD6810;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD6810;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::TimeStamp::TimeStamp(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this)
{
  *this = &unk_1F4CD6888;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6888;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this)
{
  *this = &unk_1F4CD6900;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CD6900;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::NrEstimatorHealth(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this)
{
  *this = &unk_1F4CD6978;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6978;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::EstimatorHealth(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this)
{
  *this = &unk_1F4CD69F0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 70) = 0;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  *(this + 52) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 10) = 0u;
  return result;
}

{
  *this = &unk_1F4CD69F0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 70) = 0;
  *(this + 36) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 116) = 0u;
  *(this + 52) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 10) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::EstimatorActivity(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this)
{
  *this = &unk_1F4CD6A68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6A68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrParameters::NrParameters(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this)
{
  *this = &unk_1F4CD6AE0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 76) = 0;
  return result;
}

{
  *this = &unk_1F4CD6AE0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 76) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::NrBiases::NrBiases(CoreNavigation::CLP::LogEntry::Raven::NrBiases *this)
{
  *this = &unk_1F4CD6B58;
  *(this + 23) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 44) = 0;
  return result;
}

{
  *this = &unk_1F4CD6B58;
  *(this + 23) = 0;
  *(this + 24) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 44) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorState::EstimatorState(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this)
{
  *this = &unk_1F4CD6BD0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6BD0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::UserPosition::UserPosition(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this)
{
  *this = &unk_1F4CD6C48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6C48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::UserVelocity::UserVelocity(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this)
{
  *this = &unk_1F4CD6CC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6CC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DevicePosition::DevicePosition(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this)
{
  *this = &unk_1F4CD6D38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6D38;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::DeviceVelocity(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this)
{
  *this = &unk_1F4CD6DB0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6DB0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::DeviceAttitude(CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude *this)
{
  *this = &unk_1F4CD6E28;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

{
  *this = &unk_1F4CD6E28;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::DeviceRateGyroBias(CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias *this)
{
  *this = &unk_1F4CD6EA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6EA0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::DeviceAccelerometerBias(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias *this)
{
  *this = &unk_1F4CD6F18;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6F18;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::DeviceAccelerometerScaleFactor(CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor *this)
{
  *this = &unk_1F4CD6F90;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4CD6F90;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::DeviceReceiverClockDiscrepancy(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this)
{
  *this = &unk_1F4CD7008;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F4CD7008;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::Raven::RavenOutput::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_;
  this[4] = v2;
  v3 = CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_;
  this[5] = CoreNavigation::CLP::LogEntry::Raven::NrBiases::default_instance_;
  this[6] = v3;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Raven::TimeStamp::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::default_instance_;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Raven::EstimatorState::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_;
  this[4] = v2;
  v3 = CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::default_instance_;
  this[5] = CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_;
  this[6] = v3;
  v4 = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::default_instance_;
  this[7] = CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::default_instance_;
  this[8] = v4;
  v5 = CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_;
  this[9] = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::default_instance_;
  this[10] = v5;
  return this;
}

double CoreNavigation::CLP::LogEntry::Raven::RavenOutput::SharedCtor(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Raven::RavenOutput *CoreNavigation::CLP::LogEntry::Raven::RavenOutput::RavenOutput(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this, const CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a2)
{
  *this = &unk_1F4CD6798;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this, const CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 60))
  {
    *(this + 15) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergeFrom(v5, v6);
    v4 = *(a2 + 15);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 15) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergeFrom(v7, v8);
  v4 = *(a2 + 15);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    *(this + 15) |= 8u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 32);
    }

    CoreNavigation::CLP::LogEntry::Raven::NrParameters::MergeFrom(v11, v12);
    v4 = *(a2 + 15);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_21:
  *(this + 15) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergeFrom(v9, v10);
  v4 = *(a2 + 15);
  if ((v4 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_31:
  *(this + 15) |= 0x10u;
  v13 = *(this + 5);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 5);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 40);
  }

  CoreNavigation::CLP::LogEntry::Raven::NrBiases::MergeFrom(v13, v14);
  if ((*(a2 + 15) & 0x20) != 0)
  {
LABEL_36:
    *(this + 15) |= 0x20u;
    v15 = *(this + 6);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 6);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 48);
    }

    CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::MergeFrom(v15, v16);
  }
}

void sub_1D0C78BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenOutput::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 60);
  if (v2)
  {
    if (*(this + 60))
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::EstimatorState::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::NrParameters::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::NrBiases::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::Clear(this);
      }
    }
  }

  *(v1 + 60) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::Clear(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this)
{
  v2 = *(this + 73);
  if (v2)
  {
    if (v2)
    {
      v3 = *(this + 1);
      if (v3)
      {
        CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(v3);
        v2 = *(this + 73);
      }
    }

    *(this + 2) = 0u;
    *(this + 3) = 0u;
    *(this + 1) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 5) = 0u;
    *(this + 6) = 0u;
    *(this + 4) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 10) = 0u;
    *(this + 11) = 0u;
  }

  sub_1D0C77384(this + 112);
  sub_1D0C77384(this + 136);
  sub_1D0C77384(this + 192);
  sub_1D0C77384(this + 216);
  sub_1D0C77384(this + 240);
  result = sub_1D0C77384(this + 264);
  *(this + 73) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 228);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 228);
      }
    }

    *(v1 + 48) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 136) = 0;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 140) = 0;
    *(v1 + 184) = 0u;
    *(v1 + 200) = 0u;
    *(v1 + 216) = 0;
  }

  *(v1 + 228) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorState::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 92);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::UserPosition::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::UserVelocity::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DevicePosition::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::Clear(this);
        v2 = *(v1 + 92);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::Clear(this);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::Clear(this);
      }
    }
  }

  *(v1 + 92) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrParameters::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 160);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 160);
      }
    }

    *(v1 + 152) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 104) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 136) = 0u;
    *(v1 + 120) = 0u;
  }

  *(v1 + 160) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrBiases::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 96);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(this);
        v2 = *(v1 + 96);
      }
    }

    *(v1 + 88) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
  }

  *(v1 + 96) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::Clear(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this)
{
  v2 = *(this + 42);
  if (v2)
  {
    if (v2)
    {
      v3 = *(this + 1);
      if (v3)
      {
        CoreNavigation::CLP::LogEntry::Raven::TimeStamp::Clear(v3);
        v2 = *(this + 42);
      }
    }

    *(this + 44) = 0u;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
  }

  if ((v2 & 0x3FC00) != 0)
  {
    *(this + 15) = 0;
    *(this + 18) = 0;
    *(this + 19) = 0;
    *(this + 17) = 0;
    *(this + 40) = 0;
  }

  sub_1D0C77384(this + 64);
  sub_1D0C77384(this + 88);
  result = sub_1D0C77384(this + 112);
  *(this + 42) = 0;
  return result;
}

void CoreNavigation::CLP::LogEntry::Raven::RavenOutput::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  sub_1D0C84594((this + 112), a2 + 112);
  sub_1D0C84594((this + 136), a2 + 136);
  sub_1D0C84594((this + 192), a2 + 192);
  sub_1D0C84594((this + 216), a2 + 216);
  sub_1D0C84594((this + 240), a2 + 240);
  sub_1D0C84594((this + 264), a2 + 264);
  v6 = *(a2 + 73);
  if (!v6)
  {
    goto LABEL_22;
  }

  if (v6)
  {
    *(this + 73) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v4);
      v8 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v7, v8);
    v6 = *(a2 + 73);
  }

  if ((v6 & 2) != 0)
  {
    v9 = *(a2 + 4);
    if (v9 >= 7)
    {
      __assert_rtn("set_estimator_type", "CoreNavigationCLPRavenOutput.pb.h", 5162, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth_EstimatorType_IsValid(value)");
    }

    *(this + 73) |= 2u;
    *(this + 4) = v9;
    v6 = *(a2 + 73);
  }

  if ((v6 & 4) != 0)
  {
    v10 = *(a2 + 5);
    if (v10 >= 4)
    {
      __assert_rtn("set_health", "CoreNavigationCLPRavenOutput.pb.h", 5185, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth_EstimatorHealthType_IsValid(value)");
    }

    *(this + 73) |= 4u;
    *(this + 5) = v10;
    v6 = *(a2 + 73);
  }

  if ((v6 & 8) != 0)
  {
    result = *(a2 + 3);
    *(this + 73) |= 8u;
    *(this + 3) = result;
    v6 = *(a2 + 73);
    if ((v6 & 0x10) == 0)
    {
LABEL_18:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_19;
      }

LABEL_49:
      v13 = *(a2 + 5);
      *(this + 73) |= 0x20u;
      *(this + 5) = v13;
      v6 = *(a2 + 73);
      if ((v6 & 0x40) == 0)
      {
LABEL_20:
        if ((v6 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      goto LABEL_50;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_18;
  }

  result = *(a2 + 4);
  *(this + 73) |= 0x10u;
  *(this + 4) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_19:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_50:
  v14 = *(a2 + 6);
  *(this + 73) |= 0x40u;
  *(this + 6) = v14;
  v6 = *(a2 + 73);
  if ((v6 & 0x80) != 0)
  {
LABEL_21:
    v11 = *(a2 + 7);
    *(this + 73) |= 0x80u;
    *(this + 7) = v11;
    v6 = *(a2 + 73);
  }

LABEL_22:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_30;
  }

  if ((v6 & 0x100) != 0)
  {
    result = *(a2 + 8);
    *(this + 73) |= 0x100u;
    *(this + 8) = result;
    v6 = *(a2 + 73);
    if ((v6 & 0x200) == 0)
    {
LABEL_25:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_25;
  }

  result = *(a2 + 9);
  *(this + 73) |= 0x200u;
  *(this + 9) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x400) == 0)
  {
LABEL_26:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 10);
  *(this + 73) |= 0x400u;
  *(this + 10) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x800) == 0)
  {
LABEL_27:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 11);
  *(this + 73) |= 0x800u;
  *(this + 11) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x1000) == 0)
  {
LABEL_28:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_41:
  result = *(a2 + 12);
  *(this + 73) |= 0x1000u;
  *(this + 12) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x2000) != 0)
  {
LABEL_29:
    result = *(a2 + 13);
    *(this + 73) |= 0x2000u;
    *(this + 13) = result;
    v6 = *(a2 + 73);
  }

LABEL_30:
  if ((v6 & 0xFF0000) == 0)
  {
    return result;
  }

  if ((v6 & 0x10000) != 0)
  {
    result = *(a2 + 20);
    *(this + 73) |= 0x10000u;
    *(this + 20) = result;
    v6 = *(a2 + 73);
    if ((v6 & 0x20000) == 0)
    {
LABEL_33:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_45;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_33;
  }

  result = *(a2 + 21);
  *(this + 73) |= 0x20000u;
  *(this + 21) = result;
  v6 = *(a2 + 73);
  if ((v6 & 0x40000) == 0)
  {
LABEL_34:
    if ((v6 & 0x80000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_45:
  result = *(a2 + 22);
  *(this + 73) |= 0x40000u;
  *(this + 22) = result;
  if ((*(a2 + 73) & 0x80000) != 0)
  {
LABEL_35:
    v12 = *(a2 + 23);
    *(this + 73) |= 0x80000u;
    *(this + 23) = v12;
  }

  return result;
}

void sub_1D0C79520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v36);
  }

  v4 = *(a2 + 57);
  if (!v4)
  {
    goto LABEL_29;
  }

  if (v4)
  {
    *(this + 57) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v5, v6);
    v4 = *(a2 + 57);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 6);
    if (v7 >= 0xA)
    {
      __assert_rtn("set_estimated_user_activity", "CoreNavigationCLPRavenOutput.pb.h", 5734, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_UserActivityType_IsValid(value)");
    }

    *(this + 57) |= 2u;
    *(this + 6) = v7;
    v4 = *(a2 + 57);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 2);
    *(this + 57) |= 4u;
    *(this + 2) = v8;
    v4 = *(a2 + 57);
  }

  if ((v4 & 8) != 0)
  {
    v9 = *(a2 + 7);
    if (v9 >= 4)
    {
      __assert_rtn("set_estimated_moving_state", "CoreNavigationCLPRavenOutput.pb.h", 5779, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_MovingStateType_IsValid(value)");
    }

    *(this + 57) |= 8u;
    *(this + 7) = v9;
    v4 = *(a2 + 57);
  }

  if ((v4 & 0x10) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_24:
    v11 = *(a2 + 5);
    *(this + 57) |= 0x20u;
    *(this + 5) = v11;
    v4 = *(a2 + 57);
    if ((v4 & 0x40) == 0)
    {
LABEL_21:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v10 = *(a2 + 4);
  *(this + 57) |= 0x10u;
  *(this + 4) = v10;
  v4 = *(a2 + 57);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_25:
  v12 = *(a2 + 12);
  if (v12 >= 0xA)
  {
    __assert_rtn("set_user_fitness_session", "CoreNavigationCLPRavenOutput.pb.h", 5846, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_UserFitnessSessionType_IsValid(value)");
  }

  *(this + 57) |= 0x40u;
  *(this + 12) = v12;
  v4 = *(a2 + 57);
  if ((v4 & 0x80) != 0)
  {
LABEL_27:
    v13 = *(a2 + 13);
    if (v13 >= 4)
    {
      __assert_rtn("set_estimated_mount_state", "CoreNavigationCLPRavenOutput.pb.h", 5869, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_MountStateType_IsValid(value)");
    }

    *(this + 57) |= 0x80u;
    *(this + 13) = v13;
    v4 = *(a2 + 57);
  }

LABEL_29:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_41;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 34);
    if (v14 >= 3)
    {
      __assert_rtn("set_estimated_position_context_state", "CoreNavigationCLPRavenOutput.pb.h", 5892, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_PositionContextStateType_IsValid(value)");
    }

    *(this + 57) |= 0x100u;
    *(this + 34) = v14;
    v4 = *(a2 + 57);
  }

  if ((v4 & 0x200) != 0)
  {
    v24 = *(a2 + 7);
    *(this + 57) |= 0x200u;
    *(this + 7) = v24;
    v4 = *(a2 + 57);
    if ((v4 & 0x400) == 0)
    {
LABEL_35:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_69;
    }
  }

  else if ((v4 & 0x400) == 0)
  {
    goto LABEL_35;
  }

  v25 = *(a2 + 8);
  *(this + 57) |= 0x400u;
  *(this + 8) = v25;
  v4 = *(a2 + 57);
  if ((v4 & 0x800) == 0)
  {
LABEL_36:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_69:
  v26 = *(a2 + 9);
  *(this + 57) |= 0x800u;
  *(this + 9) = v26;
  v4 = *(a2 + 57);
  if ((v4 & 0x1000) == 0)
  {
LABEL_37:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_70:
  v27 = *(a2 + 10);
  *(this + 57) |= 0x1000u;
  *(this + 10) = v27;
  v4 = *(a2 + 57);
  if ((v4 & 0x2000) == 0)
  {
LABEL_38:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_72;
  }

LABEL_71:
  v28 = *(a2 + 11);
  *(this + 57) |= 0x2000u;
  *(this + 11) = v28;
  v4 = *(a2 + 57);
  if ((v4 & 0x4000) == 0)
  {
LABEL_39:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_72:
  v29 = *(a2 + 12);
  *(this + 57) |= 0x4000u;
  *(this + 12) = v29;
  v4 = *(a2 + 57);
  if ((v4 & 0x8000) != 0)
  {
LABEL_40:
    v15 = *(a2 + 13);
    *(this + 57) |= 0x8000u;
    *(this + 13) = v15;
    v4 = *(a2 + 57);
  }

LABEL_41:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_51;
  }

  if ((v4 & 0x10000) != 0)
  {
    v17 = *(a2 + 14);
    *(this + 57) |= 0x10000u;
    *(this + 14) = v17;
    v4 = *(a2 + 57);
    if ((v4 & 0x20000) == 0)
    {
LABEL_44:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_44;
  }

  v18 = *(a2 + 15);
  *(this + 57) |= 0x20000u;
  *(this + 15) = v18;
  v4 = *(a2 + 57);
  if ((v4 & 0x40000) == 0)
  {
LABEL_45:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_62;
  }

LABEL_61:
  v19 = *(a2 + 16);
  *(this + 57) |= 0x40000u;
  *(this + 16) = v19;
  v4 = *(a2 + 57);
  if ((v4 & 0x80000) == 0)
  {
LABEL_46:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_62:
  v20 = *(a2 + 18);
  *(this + 57) |= 0x80000u;
  *(this + 18) = v20;
  v4 = *(a2 + 57);
  if ((v4 & 0x100000) == 0)
  {
LABEL_47:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(a2 + 19);
  *(this + 57) |= 0x100000u;
  *(this + 19) = v21;
  v4 = *(a2 + 57);
  if ((v4 & 0x200000) == 0)
  {
LABEL_48:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(a2 + 20);
  *(this + 57) |= 0x200000u;
  *(this + 20) = v22;
  v4 = *(a2 + 57);
  if ((v4 & 0x400000) == 0)
  {
LABEL_49:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_65:
  v23 = *(a2 + 21);
  *(this + 57) |= 0x400000u;
  *(this + 21) = v23;
  v4 = *(a2 + 57);
  if ((v4 & 0x800000) != 0)
  {
LABEL_50:
    v16 = *(a2 + 22);
    *(this + 57) |= 0x800000u;
    *(this + 22) = v16;
    v4 = *(a2 + 57);
  }

LABEL_51:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v30 = *(a2 + 23);
    *(this + 57) |= 0x1000000u;
    *(this + 23) = v30;
    v4 = *(a2 + 57);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_54:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_76;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_54;
  }

  v31 = *(a2 + 24);
  *(this + 57) |= 0x2000000u;
  *(this + 24) = v31;
  v4 = *(a2 + 57);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_55:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_77;
  }

LABEL_76:
  v32 = *(a2 + 25);
  *(this + 57) |= 0x4000000u;
  *(this + 25) = v32;
  v4 = *(a2 + 57);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_56:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_78:
    v34 = *(a2 + 27);
    *(this + 57) |= 0x10000000u;
    *(this + 27) = v34;
    if ((*(a2 + 57) & 0x20000000) == 0)
    {
      return;
    }

    goto LABEL_79;
  }

LABEL_77:
  v33 = *(a2 + 26);
  *(this + 57) |= 0x8000000u;
  *(this + 26) = v33;
  v4 = *(a2 + 57);
  if ((v4 & 0x10000000) != 0)
  {
    goto LABEL_78;
  }

LABEL_57:
  if ((v4 & 0x20000000) == 0)
  {
    return;
  }

LABEL_79:
  v35 = *(a2 + 35);
  if (v35 >= 8)
  {
    __assert_rtn("set_estimated_signal_environment", "CoreNavigationCLPRavenOutput.pb.h", 6355, "::CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity_SignalEnvironmentType_IsValid(value)");
  }

  *(this + 57) |= 0x20000000u;
  *(this + 35) = v35;
}

void sub_1D0C79AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this, const CoreNavigation::CLP::LogEntry::Raven::EstimatorState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  v4 = *(a2 + 23);
  if (!v4)
  {
    goto LABEL_53;
  }

  if (v4)
  {
    *(this + 23) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v5, v6);
    v4 = *(a2 + 23);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 23) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::Raven::UserPosition::MergeFrom(v7, v8);
  v4 = *(a2 + 23);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(this + 23) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::Raven::UserVelocity::MergeFrom(v9, v10);
  v4 = *(a2 + 23);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_28:
  *(this + 23) |= 8u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::Raven::DevicePosition::MergeFrom(v11, v12);
  v4 = *(a2 + 23);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    *(this + 23) |= 0x20u;
    v15 = *(this + 6);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 6);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 48);
    }

    CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::MergeFrom(v15, v16);
    v4 = *(a2 + 23);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    }

    goto LABEL_43;
  }

LABEL_33:
  *(this + 23) |= 0x10u;
  v13 = *(this + 5);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 5);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 40);
  }

  CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::MergeFrom(v13, v14);
  v4 = *(a2 + 23);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_43:
  *(this + 23) |= 0x40u;
  v17 = *(this + 7);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 7);
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v18 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 56);
  }

  CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::MergeFrom(v17, v18);
  v4 = *(a2 + 23);
  if ((v4 & 0x80) != 0)
  {
LABEL_48:
    *(this + 23) |= 0x80u;
    v19 = *(this + 8);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 8);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v20 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 64);
    }

    CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::MergeFrom(v19, v20);
    v4 = *(a2 + 23);
  }

LABEL_53:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(this + 23) |= 0x100u;
      v21 = *(this + 9);
      if (!v21)
      {
        operator new();
      }

      v22 = *(a2 + 9);
      if (!v22)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
        v22 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 72);
      }

      CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::MergeFrom(v21, v22);
      v4 = *(a2 + 23);
    }

    if ((v4 & 0x200) != 0)
    {
      *(this + 23) |= 0x200u;
      v23 = *(this + 10);
      if (!v23)
      {
        operator new();
      }

      v24 = *(a2 + 10);
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
        v24 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 80);
      }

      CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::MergeFrom(v23, v24);
    }
  }
}

void sub_1D0C7A15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Raven::NrParameters::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::NrParameters *this, const CoreNavigation::CLP::LogEntry::Raven::NrParameters *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(this + 40) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::NrParameters::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 2);
  *(this + 40) |= 2u;
  *(this + 2) = result;
  v5 = *(a2 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 3);
  *(this + 40) |= 4u;
  *(this + 3) = result;
  v5 = *(a2 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 4);
  *(this + 40) |= 8u;
  *(this + 4) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_39:
    v9 = *(a2 + 153);
    *(this + 40) |= 0x20u;
    *(this + 153) = v9;
    v5 = *(a2 + 40);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_38:
  v8 = *(a2 + 152);
  *(this + 40) |= 0x10u;
  *(this + 152) = v8;
  v5 = *(a2 + 40);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_40:
  result = *(a2 + 5);
  *(this + 40) |= 0x40u;
  *(this + 5) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 6);
    *(this + 40) |= 0x80u;
    *(this + 6) = result;
    v5 = *(a2 + 40);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 7);
    *(this + 40) |= 0x100u;
    *(this + 7) = result;
    v5 = *(a2 + 40);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 8);
  *(this + 40) |= 0x200u;
  *(this + 8) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 9);
  *(this + 40) |= 0x400u;
  *(this + 9) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 10);
  *(this + 40) |= 0x800u;
  *(this + 10) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 11);
  *(this + 40) |= 0x1000u;
  *(this + 11) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 12);
  *(this + 40) |= 0x2000u;
  *(this + 12) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x4000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_48:
  result = *(a2 + 13);
  *(this + 40) |= 0x4000u;
  *(this + 13) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x8000) != 0)
  {
LABEL_22:
    result = *(a2 + 14);
    *(this + 40) |= 0x8000u;
    *(this + 14) = result;
    v5 = *(a2 + 40);
  }

LABEL_23:
  if ((v5 & 0xFF0000) == 0)
  {
    return result;
  }

  if ((v5 & 0x10000) != 0)
  {
    result = *(a2 + 15);
    *(this + 40) |= 0x10000u;
    *(this + 15) = result;
    v5 = *(a2 + 40);
    if ((v5 & 0x20000) == 0)
    {
LABEL_26:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_52;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  result = *(a2 + 16);
  *(this + 40) |= 0x20000u;
  *(this + 16) = result;
  v5 = *(a2 + 40);
  if ((v5 & 0x40000) == 0)
  {
LABEL_27:
    if ((v5 & 0x80000) == 0)
    {
      return result;
    }

    goto LABEL_28;
  }

LABEL_52:
  result = *(a2 + 17);
  *(this + 40) |= 0x40000u;
  *(this + 17) = result;
  if ((*(a2 + 40) & 0x80000) == 0)
  {
    return result;
  }

LABEL_28:
  result = *(a2 + 18);
  *(this + 40) |= 0x80000u;
  *(this + 18) = result;
  return result;
}