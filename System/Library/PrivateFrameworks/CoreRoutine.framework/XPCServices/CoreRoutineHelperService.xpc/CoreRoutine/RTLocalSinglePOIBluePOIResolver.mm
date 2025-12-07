@interface RTLocalSinglePOIBluePOIResolver
- (double)_getConfidence:(double)confidence distribution:()chi_squared_distribution<double std:()boost:()default_policy :()default_policy math:()default_policy :()default_policy policies:()default_policy :()default_policy policy<default_policy;
- (id)inferLocalSinglePOIBluePOIsWithReferenceLocation:(id)location bluePOITile:(id)tile signalEnv:(int)env queryTime:(id)time;
@end

@implementation RTLocalSinglePOIBluePOIResolver

- (id)inferLocalSinglePOIBluePOIsWithReferenceLocation:(id)location bluePOITile:(id)tile signalEnv:(int)env queryTime:(id)time
{
  locationCopy = location;
  tileCopy = tile;
  v50 = objc_opt_new();
  if (![tileCopy singlePOIMuid])
  {
    goto LABEL_21;
  }

  pointsOfInterest = [tileCopy pointsOfInterest];
  if (!pointsOfInterest)
  {
    goto LABEL_21;
  }

  [locationCopy horizontalUncertainty];
  v11 = v10;

  if (v11 > 100.0)
  {
    goto LABEL_21;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  pointsOfInterest2 = [tileCopy pointsOfInterest];
  v13 = [pointsOfInterest2 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *v58;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v58 != v14)
      {
        objc_enumerationMutation(pointsOfInterest2);
      }

      v16 = *(*(&v57 + 1) + 8 * i);
      singlePOIMuid = [tileCopy singlePOIMuid];
      if (singlePOIMuid == [v16 muid] && (objc_msgSend(v16, "filtered") & 1) == 0)
      {
        v18 = v16;

        if (!v18)
        {
          goto LABEL_21;
        }

        [locationCopy latitude];
        [locationCopy longitude];
        location = [v18 location];
        [location latitude];
        location2 = [v18 location];
        [location2 longitude];
        RTCommonCalculateDistanceHighPrecision();
        v22 = v21;

        [(RTLocalSinglePOIBluePOIResolver *)self _getConfidence:v22 distribution:2.0 std:17.8885438];
        v24 = v23;
        pointsOfInterest3 = [tileCopy pointsOfInterest];
        v26 = [pointsOfInterest3 count] == 1;

        if (v26)
        {
          if (env == 6 || env == 1)
          {
            v24 = v24 * 0.1 + 0.9;
          }

          if (v24 < 0.4)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v30 = objc_opt_new();
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          pointsOfInterest4 = [tileCopy pointsOfInterest];
          v32 = [pointsOfInterest4 countByEnumeratingWithState:&v53 objects:v62 count:16];
          if (v32)
          {
            v33 = *v54;
            do
            {
              for (j = 0; j != v32; j = j + 1)
              {
                if (*v54 != v33)
                {
                  objc_enumerationMutation(pointsOfInterest4);
                }

                v35 = *(*(&v53 + 1) + 8 * j);
                muid = [v35 muid];
                if (muid != [v18 muid])
                {
                  [locationCopy latitude];
                  [locationCopy longitude];
                  location3 = [v35 location];
                  [location3 latitude];
                  location4 = [v35 location];
                  [location4 longitude];
                  RTCommonCalculateDistanceHighPrecision();
                  v40 = v39;

                  [(RTLocalSinglePOIBluePOIResolver *)self _getConfidence:v40 distribution:2.0 std:17.8885438];
                  v41 = [NSNumber numberWithDouble:?];
                  [v30 addObject:v41];
                }
              }

              v32 = [pointsOfInterest4 countByEnumeratingWithState:&v53 objects:v62 count:16];
            }

            while (v32);
          }

          v42 = [[NSSortDescriptor alloc] initWithKey:0 ascending:0];
          v61 = v42;
          v43 = [NSArray arrayWithObjects:&v61 count:1];
          [v30 sortUsingDescriptors:v43];

          firstObject = [v30 firstObject];
          [firstObject doubleValue];
          v46 = v45;

          if (v24 - v46 < 0.4)
          {
            goto LABEL_36;
          }
        }

        v47 = [NSNumber numberWithDouble:v24];
        v48 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v18 muid]);
        [v50 setObject:v47 forKeyedSubscript:v48];

LABEL_36:
        v49 = v50;

        v27 = v50;
        goto LABEL_22;
      }
    }

    v13 = [pointsOfInterest2 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_13:

LABEL_21:
  v27 = v50;
  v28 = v50;
LABEL_22:

  return v50;
}

- (double)_getConfidence:(double)confidence distribution:()chi_squared_distribution<double std:()boost:()default_policy :()default_policy math:()default_policy :()default_policy policies:()default_policy :()default_policy policy<default_policy
{
  confidenceCopy = confidence;
  result = 0.0;
  if (a5 == 0.0)
  {
    return result;
  }

  v11 = confidenceCopy / a5 * (confidenceCopy / a5);
  v77 = v11;
  var0 = a4.var0;
  if ((a4.var0 <= -1 || ((a4.var0 & 0x7FFFFFFFFFFFFFFFLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a4.var0 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    sub_100083894("Degrees of freedom argument is %1%, but must be > 0 !", &var0, *&v77);
  }

  if (*&v11 >> 52 >= 0x7FFuLL)
  {
    sub_100083894("Chi Square parameter was %1%, but must be > 0 !", &v77);
  }

  v14 = a4.var0 * 0.5;
  *&v80.__r_.__value_.__l.__data_ = a4.var0 * 0.5;
  if (a4.var0 * 0.5 <= 0.0)
  {
    sub_100085A1C("boost::math::gamma_p<%1%>(%1%, %1%)", "Argument a to the incomplete gamma function must be greater than zero (got a=%1%).", &v80, *&v77, *&var0);
  }

  v15 = v11 * 0.5;
  a4.var0 = v11 * 0.5 + 1.0;
  v16 = 30.0;
  v17 = v11 * 0.5 < 709.0 && v14 < 30.0;
  if (!v17 || a4.var0 < v14)
  {
    goto LABEL_29;
  }

  v19 = floor(v14);
  if (v19 != v14)
  {
    a4.var0 = vabdd_f64(v19, v14);
    v16 = 0.5;
    if (v15 > 0.2 && a4.var0 == 0.5)
    {
      v23 = sub_100087DE4(1, a2, sqrt(v15), *&a4.var0);
      if (fabs(v23) <= 1.79769313e308)
      {
        if (v14 > 1.0 && v23 != 0.0)
        {
          v34 = exp(-v15);
          v35 = sqrt(v15 * 3.14159265);
          v36 = v15 * (v34 / v35) + v15 * (v34 / v35);
          v37 = 2.0;
          if (v14 > 2.0)
          {
            v38 = 3;
            v39 = v36;
            do
            {
              v39 = v15 * (v39 / (v37 + -0.5));
              v36 = v36 + v39;
              v37 = v38++;
            }

            while (v14 > v37);
          }

          v23 = v23 + v36;
        }

        goto LABEL_65;
      }

      v52 = "boost::math::erfc<%1%>(%1%, %1%)";
      goto LABEL_149;
    }

LABEL_29:
    if (v14 > 1.0 && v15 < 0.0000000149011612)
    {
      sub_100086ED8(v14 + 1.0, a4.var0, v16, confidenceCopy, v5, v6, v7, v8);
      if (fabs(v25) > 1.79769313e308)
      {
        sub_100086A38("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
      }

      v26 = (1.0 - v14 * v15 / (v14 + 1.0)) * (pow(v15, v14) / v25);
LABEL_33:
      v27 = 1.0;
      if (v26 <= 1.0)
      {
        v27 = v26;
      }

      goto LABEL_68;
    }

    if (v15 > 1000.0 && (v14 < v15 || fabs(v14 + -50.0) / v15 < 1.0))
    {
      v23 = sub_1000850F4(v14, v15) / v15;
      if (v23 == 0.0)
      {
        goto LABEL_65;
      }

      v28 = 0.0;
      v29 = 1.0;
      v30 = 1000000;
      do
      {
        v28 = v29 + v28;
        if (fabs(v28 * 2.22044605e-16) >= fabs(v29))
        {
          break;
        }

        v14 = v14 + -1.0;
        v29 = v29 * (v14 / v15);
        --v30;
      }

      while (v30);
      v31 = 1000000 - v30;
      if (v31 < 0xF4240)
      {
        goto LABEL_44;
      }

      *&v81.__r_.__value_.__l.__data_ = v31;
      v76 = "boost::math::tgamma<%1%>(%1%,%1%)";
LABEL_147:
      sub_100085E48(v76, &v81);
    }

    if (v15 < 0.5)
    {
      v32 = -0.4 / log(v15);
LABEL_51:
      if (v32 < v14)
      {
        goto LABEL_52;
      }

      v40 = v14 + 1.0;
      if (v14 >= 2.0)
      {
        sub_100086ED8(v40, 2.0, v16, confidenceCopy, v5, v6, v7, v8);
        if (fabs(v45) > 1.79769313e308)
        {
          v52 = "boost::math::tgamma<%1%>(%1%)";
          goto LABEL_149;
        }

        v42 = v45 + -1.0;
        v43 = fabs(v45 + -1.0);
      }

      else
      {
        sub_100086C20(v40, v14, v14 + -1.0);
        v42 = sub_10008821C(v41);
        v43 = fabs(v42);
        if (v43 > 1.79769313e308)
        {
          goto LABEL_95;
        }
      }

      if (v43 <= 1.79769313e308)
      {
        v46 = v15;
        if (v15 > 0.0)
        {
          goto LABEL_88;
        }

        if (v14 == INFINITY)
        {
          *&v81.__r_.__value_.__l.__data_ = v14;
        }

        else
        {
          if (floor(v14) != v14)
          {
            *&v81.__r_.__value_.__l.__data_ = v15;
            sub_100085A1C("boost::math::powm1<%1%>(%1%, %1%)", "For non-integral exponent, expected base > 0 but got %1%", &v81, *&v77, *&var0);
          }

          if (v14 * 0.5 != INFINITY)
          {
            v46 = v15;
            if (floor(v14 * 0.5) != v14 * 0.5)
            {
              goto LABEL_97;
            }

            v47 = v15;
            do
            {
              v46 = -v47;
              v17 = v47 < 0.0;
              v47 = -v47;
            }

            while (!v17);
LABEL_88:
            v48 = fabs(v14 * (v46 + -1.0));
            if (v14 < 0.2 || v48 < 0.5)
            {
              v50 = v14 * log(v46);
              if (v50 < 0.5)
              {
                v51 = sub_10008821C(v50);
                if (fabs(v51) > 1.79769313e308)
                {
LABEL_95:
                  v52 = "boost::math::expm1<%1%>(%1%)";
                  goto LABEL_149;
                }

LABEL_98:
                v53 = (v42 + 1.0) / v14;
                v54 = (v42 - v51) / v14;
                v55 = v51 + 1.0;
                v56 = (v53 - v54) / v55;
                v57 = 999990;
                v58 = 2;
                v59 = -v15;
                do
                {
                  v14 = v14 + 1.0;
                  v56 = v59 / v14 + v56;
                  if (fabs(v56 * 2.22044605e-16) >= fabs(v59 / v14))
                  {
                    break;
                  }

                  v59 = v59 * -v15 / v58++;
                  --v57;
                }

                while (v57);
                v60 = 999990 - v57;
                if (v60 < 0xF4240)
                {
                  v27 = v55 * v56 / v53;
                  if (v27 > 1.0)
                  {
                    v27 = 1.0;
                  }

                  goto LABEL_68;
                }

                *&v81.__r_.__value_.__l.__data_ = v60;
                v76 = "boost::math::tgamma_small_upper_part<%1%>(%1%, %1%)";
                goto LABEL_147;
              }

              if (v50 > 709.0)
              {
                sub_100086A38("boost::math::powm1<%1%>(%1%, %1%)", "Overflow Error");
              }
            }

LABEL_97:
            v51 = pow(v46, v14) + -1.0;
            goto LABEL_98;
          }

          *&v81.__r_.__value_.__l.__data_ = v14 * 0.5;
        }

        sub_1000871F8("boost::math::trunc<%1%>(%1%)", &v81);
      }

      v52 = "boost::math::tgamma1pm1<%!%>(%1%)";
LABEL_149:
      sub_100086A38(v52, "numeric overflow");
    }

    if (v15 < 1.1)
    {
      v32 = v15 * 0.75;
      goto LABEL_51;
    }

    if (v14 > 20.0)
    {
      v44 = (v15 - v14) / v14;
      if (v14 > 200.0)
      {
        if (20.0 / v14 <= v44 * v44)
        {
          goto LABEL_74;
        }

LABEL_106:
        v61.n128_f64[0] = v15;
        v27 = sub_1000854C8(v14, v61, self, a2);
        if (v27 > 1.0)
        {
          v27 = 1.0;
        }

        if (v15 < v14)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (fabs(v44) < 0.4)
      {
        goto LABEL_106;
      }
    }

LABEL_74:
    if (v15 + -1.0 / (v15 * 3.0) >= v14)
    {
      v23 = sub_1000850F4(v14, v15);
      if (v23 == 0.0)
      {
        goto LABEL_65;
      }

      v28 = sub_100084FB8(v14, v15);
LABEL_44:
      v27 = v23 * v28;
      if (v27 > 1.0)
      {
        v27 = 1.0;
      }

      goto LABEL_67;
    }

LABEL_52:
    v26 = sub_1000850F4(v14, v15);
    if (v26 != 0.0)
    {
      sub_100085068(v14, v15);
      v26 = v26 * (v33 / v14);
    }

    goto LABEL_33;
  }

  a4.var0 = 0.6;
  if (v15 <= 0.6)
  {
    goto LABEL_29;
  }

  v20 = exp(-v15);
  v21 = 1.0;
  if (v14 <= 1.0 || v20 == 0.0)
  {
    v23 = v20;
  }

  else
  {
    v22 = 2;
    v23 = v20;
    do
    {
      v20 = v15 * (v20 / v21);
      v23 = v23 + v20;
      v21 = v22++;
    }

    while (v14 > v21);
  }

LABEL_65:
  v27 = 1.0;
  if (v23 <= 1.0)
  {
    v27 = v23;
  }

LABEL_67:
  v27 = 1.0 - v27;
LABEL_68:
  if (fabs(v27) > 1.79769313e308)
  {
    sub_10000D63C(&v81, "gamma_p<%1%>(%1%, %1%)");
    sub_10000D63C(&v80, "Error in function ");
    v62 = 0;
    v63 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    v64 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    size = v81.__r_.__value_.__l.__size_;
    v65 = v81.__r_.__value_.__r.__words[0];
    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v81;
    }

    else
    {
      v67 = v81.__r_.__value_.__r.__words[0];
    }

    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v81.__r_.__value_.__l.__size_;
    }

    do
    {
      v68 = v63 - v62;
      if ((v63 - v62) < 3)
      {
        break;
      }

      v69 = v67 + v63;
      v70 = v67 + v62;
      while (1)
      {
        v71 = memchr(v70, 37, v68 - 2);
        if (!v71)
        {
          goto LABEL_135;
        }

        if (*v71 == 12581 && v71[2] == 37)
        {
          break;
        }

        v70 = v71 + 1;
        v68 = v69 - v70;
        if (v69 - v70 < 3)
        {
          goto LABEL_135;
        }
      }

      if (v71 == v69)
      {
        break;
      }

      v73 = v71 - v67;
      if (v73 == -1)
      {
        break;
      }

      std::string::replace(&v81, v73, 3uLL, "double");
      v62 = v73 + 6;
      v63 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      v64 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      size = v81.__r_.__value_.__l.__size_;
      v65 = v81.__r_.__value_.__r.__words[0];
      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = &v81;
      }

      else
      {
        v67 = v81.__r_.__value_.__r.__words[0];
      }

      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v63 = v81.__r_.__value_.__l.__size_;
      }
    }

    while (v63 >= v62);
LABEL_135:
    if ((v64 & 0x80u) == 0)
    {
      v74 = &v81;
    }

    else
    {
      v74 = v65;
    }

    if ((v64 & 0x80u) == 0)
    {
      v75 = v64;
    }

    else
    {
      v75 = size;
    }

    std::string::append(&v80, v74, v75);
    std::string::append(&v80, ": ");
    std::string::append(&v80, "numeric overflow");
    std::runtime_error::runtime_error(&v79, &v80);
    sub_100084890(&v79);
  }

  return 1.0 - v27;
}

@end