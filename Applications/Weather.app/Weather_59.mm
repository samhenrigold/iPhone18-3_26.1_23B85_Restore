uint64_t sub_10065897C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100657E48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006589A4(uint64_t a1)
{
  v2 = sub_100658A80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006589E0(uint64_t a1)
{
  v2 = sub_100658A80();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100658A80()
{
  result = qword_100CCEBD0;
  if (!qword_100CCEBD0)
  {
    result = swift_getWitnessTable(asc_100A6FE74, &type metadata for DetailChartSelection.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCEBD0);
  }

  return result;
}

unint64_t sub_100658AD4()
{
  result = qword_100CCEBD8;
  if (!qword_100CCEBD8)
  {
    result = swift_getWitnessTable(aI_54, &type metadata for ConditionsChartID, v0, v1);
    atomic_store(result, &qword_100CCEBD8);
  }

  return result;
}

unint64_t sub_100658B28()
{
  result = qword_100CCEBE8;
  if (!qword_100CCEBE8)
  {
    result = swift_getWitnessTable(aUi_1, &type metadata for ConditionsChartID, v0, v1);
    atomic_store(result, &qword_100CCEBE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailChartSelection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100658C5C()
{
  result = qword_100CCEBF0;
  if (!qword_100CCEBF0)
  {
    result = swift_getWitnessTable(byte_100A6FE4C, &type metadata for DetailChartSelection.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCEBF0);
  }

  return result;
}

unint64_t sub_100658CB4()
{
  result = qword_100CCEBF8;
  if (!qword_100CCEBF8)
  {
    result = swift_getWitnessTable(asc_100A6FDBC, &type metadata for DetailChartSelection.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCEBF8);
  }

  return result;
}

unint64_t sub_100658D0C()
{
  result = qword_100CCEC00;
  if (!qword_100CCEC00)
  {
    result = swift_getWitnessTable(byte_100A6FDE4, &type metadata for DetailChartSelection.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCEC00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationViewComponent.ComponentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocationViewComponent.ComponentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100658EC4(uint64_t a1)
{
  result = type metadata accessor for AirQualityComponent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DailyForecastComponent(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FeelsLikeComponent(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for HourlyForecastComponent(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for HumidityComponent(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for MapComponent(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for MoonComponent(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for NewsArticleComponent(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for NextHourPrecipitationComponent(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for NotificationsOptInComponent(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for PressureComponent(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for SevereAlertComponent(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for SunriseSunsetModel();
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for AveragesComponent(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for UVIndexComponent(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for VisibilityComponent(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for WindComponent(319);
                                  if (v18 <= 0x3F)
                                  {
                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                    return 0;
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

  return result;
}

uint64_t sub_100659078(uint64_t a1, uint64_t a2)
{
  v266 = a2;
  v267 = a1;
  v232 = type metadata accessor for WindComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v250 = v6;
  v7 = sub_1000038CC();
  v8 = type metadata accessor for VisibilityComponent(v7);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000038E4();
  v249 = v10;
  v11 = sub_1000038CC();
  v12 = type metadata accessor for UVIndexComponent(v11);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_1000038E4();
  v248 = v14;
  v15 = sub_1000038CC();
  v16 = type metadata accessor for AveragesComponent(v15);
  v17 = sub_100003810(v16);
  __chkstk_darwin(v17);
  sub_1000038E4();
  v247 = v18;
  sub_1000038CC();
  type metadata accessor for SunriseSunsetModel();
  sub_1000037C4();
  v263 = v20;
  v264 = v19;
  __chkstk_darwin(v19);
  sub_1000038E4();
  v245 = v21;
  v22 = sub_1000038CC();
  v227 = type metadata accessor for SevereAlertComponent(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000038E4();
  v246 = v24;
  v25 = sub_1000038CC();
  v231 = type metadata accessor for PressureComponent(v25);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000038E4();
  v243 = v27;
  v28 = sub_1000038CC();
  v29 = type metadata accessor for NotificationsOptInComponent(v28);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_1000038E4();
  v242 = v31;
  v32 = sub_1000038CC();
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_1000038E4();
  v244 = v34;
  v35 = sub_1000038CC();
  v230 = type metadata accessor for NewsArticleComponent(v35);
  sub_1000037E8();
  __chkstk_darwin(v36);
  sub_1000038E4();
  v241 = v37;
  v38 = sub_1000038CC();
  v39 = type metadata accessor for MoonComponent(v38);
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_1000038E4();
  v240 = v41;
  v42 = sub_1000038CC();
  v229 = type metadata accessor for MapComponent(v42);
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_1000038E4();
  v239 = v44;
  v45 = sub_1000038CC();
  v46 = type metadata accessor for HumidityComponent(v45);
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_1000038E4();
  v238 = v48;
  v49 = sub_1000038CC();
  v50 = type metadata accessor for HourlyForecastComponent(v49);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_1000038E4();
  v237 = v52;
  v53 = sub_1000038CC();
  v54 = type metadata accessor for FeelsLikeComponent(v53);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  sub_1000038E4();
  v236 = v56;
  v57 = sub_1000038CC();
  v228 = type metadata accessor for DailyForecastComponent(v57);
  sub_1000037E8();
  __chkstk_darwin(v58);
  sub_1000038E4();
  v235 = v59;
  v60 = sub_1000038CC();
  v61 = type metadata accessor for AirQualityComponent(v60);
  v62 = sub_100003810(v61);
  __chkstk_darwin(v62);
  sub_1000038E4();
  v233 = v63;
  v64 = sub_1000038CC();
  v65 = type metadata accessor for LocationViewComponent(v64);
  sub_1000037E8();
  __chkstk_darwin(v66);
  sub_100003848();
  v262 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  sub_100003878();
  v261 = v69;
  sub_10000386C();
  __chkstk_darwin(v70);
  sub_100003878();
  v259 = v71;
  sub_10000386C();
  __chkstk_darwin(v72);
  sub_100003878();
  v258 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_100003878();
  v256 = v75;
  sub_10000386C();
  __chkstk_darwin(v76);
  sub_100003878();
  v260 = v77;
  sub_10000386C();
  __chkstk_darwin(v78);
  sub_100003878();
  v252 = v79;
  sub_10000386C();
  __chkstk_darwin(v80);
  sub_100003878();
  v251 = v81;
  sub_10000386C();
  __chkstk_darwin(v82);
  sub_100003878();
  v257 = v83;
  sub_10000386C();
  __chkstk_darwin(v84);
  sub_100003878();
  v254 = v85;
  sub_10000386C();
  __chkstk_darwin(v86);
  sub_100003878();
  v265 = v87;
  sub_10000386C();
  __chkstk_darwin(v88);
  sub_100003878();
  v255 = v89;
  sub_10000386C();
  __chkstk_darwin(v90);
  sub_10003A2D4();
  __chkstk_darwin(v91);
  sub_100003878();
  v253 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100013628();
  __chkstk_darwin(v94);
  sub_10002137C();
  __chkstk_darwin(v95);
  v97 = (&v227 - v96);
  __chkstk_darwin(v98);
  v100 = &v227 - v99;
  __chkstk_darwin(v101);
  v103 = (&v227 - v102);
  v104 = sub_10022C350(&qword_100CCECC0, &qword_100A70068);
  v105 = sub_100003810(v104);
  __chkstk_darwin(v105);
  v107 = &v227 - v106;
  v109 = *(v108 + 56);
  sub_1001AB2F0(v267, &v227 - v106);
  v267 = v109;
  sub_1001AB2F0(v266, v107 + v109);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v166 = sub_100017BCC();
      sub_1001AB2F0(v166, v100);
      if (sub_10004E85C() != 1)
      {
        v217 = type metadata accessor for DailyForecastComponent;
        goto LABEL_85;
      }

      v167 = sub_10003C6B4();
      v168 = v235;
      sub_1001B29B0(v167, v235, v169);
      if (static CurrentWeather.== infix(_:_:)())
      {
        sub_1009ED6CC(*&v100[*(v228 + 20)], *(v168 + *(v228 + 20)), v170, v171, v172, v173, v174, v175, v227, v228, v229, v230, v231, v232, v233, HourPrecipitationComponent, v235, v236, v237, v238);
        if (v176)
        {
          sub_10002493C();
          sub_1001B331C(v168, v177);
          v165 = v100;
          goto LABEL_52;
        }
      }

      sub_10002493C();
      sub_1001B331C(v168, v220);
      v221 = v100;
      goto LABEL_93;
    case 2u:
      v141 = sub_100017BCC();
      sub_1001AB2F0(v141, v97);
      if (sub_10004E85C() == 2)
      {
        v142 = sub_10003C6B4();
        v143 = v236;
        sub_1001B29B0(v142, v236, v144);
        v120 = sub_100735648(v97, v143);
        v133 = type metadata accessor for FeelsLikeComponent;
        sub_1001B331C(v143, type metadata accessor for FeelsLikeComponent);
        v134 = v97;
        goto LABEL_44;
      }

      v112 = type metadata accessor for FeelsLikeComponent;
      v113 = v97;
      goto LABEL_86;
    case 3u:
      v150 = sub_100017BCC();
      sub_1001AB2F0(v150, v4);
      if (sub_10004E85C() == 3)
      {
        v151 = sub_10003C6B4();
        v152 = v237;
        sub_1001B29B0(v151, v237, v153);
        v120 = sub_1007C8CEC(v4, v152);
        v133 = type metadata accessor for HourlyForecastComponent;
        sub_1001B331C(v152, type metadata accessor for HourlyForecastComponent);
        v134 = v4;
        goto LABEL_44;
      }

      v112 = type metadata accessor for HourlyForecastComponent;
      v113 = v4;
      goto LABEL_86;
    case 4u:
      v129 = sub_100017BCC();
      sub_1001AB2F0(v129, v2);
      if (sub_10004E85C() == 4)
      {
        v130 = sub_10003C6B4();
        v131 = v238;
        sub_1001B29B0(v130, v238, v132);
        v120 = static CurrentWeather.== infix(_:_:)();
        v133 = type metadata accessor for HumidityComponent;
        sub_1001B331C(v131, type metadata accessor for HumidityComponent);
        v134 = v2;
        goto LABEL_44;
      }

      v216 = type metadata accessor for HumidityComponent;
      goto LABEL_83;
    case 5u:
      v183 = sub_100017BCC();
      v2 = v253;
      sub_1001AB2F0(v183, v253);
      if (sub_10004E85C() != 5)
      {
        v216 = type metadata accessor for MapComponent;
        goto LABEL_83;
      }

      v184 = sub_10003C6B4();
      v185 = v239;
      sub_1001B29B0(v184, v239, v186);
      if (static WeatherMapOverlayKind.== infix(_:_:)())
      {
        v187 = sub_100883064((v2 + *(v229 + 20)), (v185 + *(v229 + 20)));
        sub_10002C8E4();
        if (v187)
        {
          v188 = type metadata accessor for MapComponent;
          goto LABEL_57;
        }
      }

      else
      {
        sub_10002C8E4();
      }

      v225 = type metadata accessor for MapComponent;
      goto LABEL_102;
    case 6u:
      v195 = sub_100017BCC();
      sub_1001AB2F0(v195, v3);
      if (sub_10004E85C() == 6)
      {
        v196 = sub_10003C6B4();
        v116 = v240;
        sub_1001B29B0(v196, v240, v197);
        v198 = sub_100014268();
        v120 = sub_100883064(v198, v199);
        v121 = type metadata accessor for MoonComponent;
        goto LABEL_43;
      }

      v215 = type metadata accessor for MoonComponent;
      goto LABEL_80;
    case 7u:
      v154 = sub_100017BCC();
      v3 = v255;
      sub_1001AB2F0(v154, v255);
      if (sub_10004E85C() != 7)
      {
        v215 = type metadata accessor for NewsArticleComponent;
        goto LABEL_80;
      }

      v155 = sub_10003C6B4();
      v156 = v241;
      sub_1001B29B0(v155, v241, v157);
      v158 = sub_100014268();
      if (sub_1005A80A4(v158, v159))
      {
        v160 = *(v230 + 20);
        v161 = *(v3 + v160);
        v162 = *(v156 + v160);
        sub_100008B8C();
        sub_1001B331C(v156, v163);
        if (v161 == v162)
        {
          sub_100008B8C();
          v165 = v3;
          goto LABEL_58;
        }
      }

      else
      {
        sub_100008B8C();
        sub_1001B331C(v156, v224);
      }

      sub_100008B8C();
      v221 = v3;
      goto LABEL_103;
    case 8u:
      v209 = sub_100017BCC();
      v100 = v265;
      sub_1001AB2F0(v209, v265);
      if (sub_10004E85C() != 8)
      {
        v217 = type metadata accessor for NextHourPrecipitationComponent;
LABEL_85:
        v112 = v217;
        v113 = v100;
        goto LABEL_86;
      }

      v210 = sub_10003C6B4();
      v211 = v244;
      sub_1001B29B0(v210, v244, v212);
      if (static CurrentWeather.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
      {
        type metadata accessor for MinuteWeather();
        sub_10065B62C(&qword_100CB1738, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
        sub_10065B62C(&qword_100CB1740, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
        v100 = v265;
        sub_10065B62C(&unk_100CB1748, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
        v213 = static Forecast.== infix(_:_:)();
        sub_100006438();
        sub_1001B331C(v211, v214);
        if (v213)
        {
          sub_100006438();
          v165 = v100;
          goto LABEL_58;
        }
      }

      else
      {
        sub_100006438();
        sub_1001B331C(v211, v223);
      }

      sub_100006438();
      v221 = v100;
      goto LABEL_103;
    case 9u:
      v138 = sub_100017BCC();
      v3 = v254;
      sub_1001AB2F0(v138, v254);
      if (sub_10004E85C() == 9)
      {
        v139 = sub_10003C6B4();
        v116 = v242;
        sub_1001B29B0(v139, v242, v140);
        sub_100014268();
        v120 = static Location.== infix(_:_:)();
        v121 = type metadata accessor for NotificationsOptInComponent;
        goto LABEL_43;
      }

      v215 = type metadata accessor for NotificationsOptInComponent;
      goto LABEL_80;
    case 0xAu:
      v204 = sub_100017BCC();
      v2 = v257;
      sub_1001AB2F0(v204, v257);
      if (sub_10004E85C() != 10)
      {
        v216 = type metadata accessor for PressureComponent;
        goto LABEL_83;
      }

      v205 = sub_10003C6B4();
      v206 = v243;
      sub_1001B29B0(v205, v243, v207);
      if (static CurrentWeather.== infix(_:_:)())
      {
        v208 = sub_1003BE378(v2 + *(v231 + 20), v206 + *(v231 + 20));
        sub_10000EC28();
        if (v208)
        {
          v188 = type metadata accessor for PressureComponent;
LABEL_57:
          v164 = v188;
          v165 = v2;
          goto LABEL_58;
        }
      }

      else
      {
        sub_10000EC28();
      }

      v225 = type metadata accessor for PressureComponent;
LABEL_102:
      v222 = v225;
      v221 = v2;
      goto LABEL_103;
    case 0xBu:
      v128 = v251;
      sub_1001AB2F0(v107, v251);
      v65 = v107;
      memcpy(v268, v128, 0x80uLL);
      if (sub_10004E85C() == 11)
      {
        memcpy(v269, v103 + v107, 0x80uLL);
        v120 = sub_1007AC22C(v268, v269);
        sub_1004031BC(v268);
        sub_1004031BC(v269);
        goto LABEL_46;
      }

      sub_1004031BC(v268);
      goto LABEL_87;
    case 0xCu:
      v135 = sub_100017BCC();
      v136 = v252;
      sub_1001AB2F0(v135, v252);
      if (sub_10004E85C() != 12)
      {
        goto LABEL_87;
      }

      v137 = *v136 ^ *(v103 + v65);
      sub_100014BE8();
      v120 = v137 ^ 1;
      return v120 & 1;
    case 0xDu:
      v189 = sub_100017BCC();
      v2 = v260;
      sub_1001AB2F0(v189, v260);
      if (sub_10004E85C() != 13)
      {
        v216 = type metadata accessor for SevereAlertComponent;
        goto LABEL_83;
      }

      v190 = sub_10003C6B4();
      v191 = v246;
      sub_1001B29B0(v190, v246, v192);
      sub_1009ED720();
      if (v193 & 1) != 0 && *(v2 + 8) == *(v191 + 8) && (static Date.== infix(_:_:)())
      {
        v194 = type metadata accessor for SevereAlertComponent;
        goto LABEL_51;
      }

      v218 = type metadata accessor for SevereAlertComponent;
      goto LABEL_92;
    case 0xEu:
      v122 = sub_100017BCC();
      v123 = v256;
      sub_1001AB2F0(v122, v256);
      if (sub_10004E85C() == 14)
      {
        v125 = v263;
        v124 = v264;
        v126 = v245;
        (*(v263 + 32))(v245, v103 + v65, v264);
        v120 = static SunriseSunsetModel.== infix(_:_:)();
        v127 = *(v125 + 8);
        v127(v126, v124);
        v127(v123, v124);
        goto LABEL_46;
      }

      (*(v263 + 8))(v123, v264);
      goto LABEL_87;
    case 0xFu:
      v145 = sub_100017BCC();
      v3 = v258;
      sub_1001AB2F0(v145, v258);
      if (sub_10004E85C() == 15)
      {
        v146 = sub_10003C6B4();
        v116 = v247;
        sub_1001B29B0(v146, v247, v147);
        v148 = sub_100014268();
        v120 = sub_100897190(v148, v149);
        v121 = type metadata accessor for AveragesComponent;
        goto LABEL_43;
      }

      v215 = type metadata accessor for AveragesComponent;
      goto LABEL_80;
    case 0x10u:
      v114 = sub_100017BCC();
      v3 = v259;
      sub_1001AB2F0(v114, v259);
      if (sub_10004E85C() == 16)
      {
        v115 = sub_10003C6B4();
        v116 = v248;
        sub_1001B29B0(v115, v248, v117);
        v118 = sub_100014268();
        v120 = sub_100928C04(v118, v119);
        v121 = type metadata accessor for UVIndexComponent;
        goto LABEL_43;
      }

      v215 = type metadata accessor for UVIndexComponent;
      goto LABEL_80;
    case 0x11u:
      v178 = sub_100017BCC();
      v3 = v261;
      sub_1001AB2F0(v178, v261);
      if (sub_10004E85C() == 17)
      {
        v179 = sub_10003C6B4();
        v116 = v249;
        sub_1001B29B0(v179, v249, v180);
        v181 = sub_100014268();
        v120 = sub_1004491CC(v181, v182);
        v121 = type metadata accessor for VisibilityComponent;
LABEL_43:
        v133 = v121;
        sub_1001B331C(v116, v121);
        v134 = v3;
LABEL_44:
        v200 = v133;
        goto LABEL_45;
      }

      v215 = type metadata accessor for VisibilityComponent;
LABEL_80:
      v112 = v215;
      v113 = v3;
      goto LABEL_86;
    case 0x12u:
      v201 = sub_100017BCC();
      v2 = v262;
      sub_1001AB2F0(v201, v262);
      if (sub_10004E85C() != 18)
      {
        v216 = type metadata accessor for WindComponent;
LABEL_83:
        v112 = v216;
        v113 = v2;
        goto LABEL_86;
      }

      v202 = sub_10003C6B4();
      v191 = v250;
      sub_1001B29B0(v202, v250, v203);
      if (static CurrentWeather.== infix(_:_:)())
      {
        memcpy(v268, (v2 + *(v232 + 20)), sizeof(v268));
        memcpy(v269, (v191 + *(v232 + 20)), 0xE8uLL);
        if (sub_1008A1E20(v268, v269))
        {
          v194 = type metadata accessor for WindComponent;
LABEL_51:
          v103 = v194;
          sub_1001B331C(v191, v194);
          v165 = v2;
LABEL_52:
          v164 = v103;
LABEL_58:
          sub_1001B331C(v165, v164);
LABEL_65:
          sub_100014BE8();
          v120 = 1;
          return v120 & 1;
        }
      }

      v218 = type metadata accessor for WindComponent;
LABEL_92:
      v103 = v218;
      sub_1001B331C(v191, v218);
      v221 = v2;
LABEL_93:
      v222 = v103;
LABEL_103:
      sub_1001B331C(v221, v222);
      sub_100014BE8();
      goto LABEL_104;
    case 0x13u:
      v65 = v107;
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_65;
      }

      goto LABEL_87;
    default:
      v110 = sub_100017BCC();
      sub_1001AB2F0(v110, v103);
      v111 = v267;
      if (swift_getEnumCaseMultiPayload())
      {
        v112 = type metadata accessor for AirQualityComponent;
        v113 = v103;
LABEL_86:
        sub_1001B331C(v113, v112);
LABEL_87:
        sub_10065B4B8(v65);
LABEL_104:
        v120 = 0;
      }

      else
      {
        v219 = v233;
        sub_1001B29B0(v65 + v111, v233, type metadata accessor for AirQualityComponent);
        v120 = static AirQuality.== infix(_:_:)();
        sub_1001B331C(v219, type metadata accessor for AirQualityComponent);
        v134 = v103;
        v200 = type metadata accessor for AirQualityComponent;
LABEL_45:
        sub_1001B331C(v134, v200);
LABEL_46:
        sub_100014BE8();
      }

      return v120 & 1;
  }
}

uint64_t sub_10065A328()
{
  type metadata accessor for LocationViewComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB2F0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 10;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 1;
      break;
    case 2:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 2;
      break;
    case 3:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 3;
      break;
    case 4:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 4;
      break;
    case 5:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 5;
      break;
    case 6:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 6;
      break;
    case 7:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 7;
      break;
    case 8:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 8;
      break;
    case 9:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 9;
      break;
    case 10:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 11;
      break;
    case 11:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 12;
      break;
    case 12:
      result = 13;
      break;
    case 13:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 14;
      break;
    case 14:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 15;
      break;
    case 15:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 16;
      break;
    case 16:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 17;
      break;
    case 17:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 18;
      break;
    case 18:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 19;
      break;
    case 19:
      return result;
    default:
      sub_1001B331C(v3, type metadata accessor for LocationViewComponent);
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_10065A664(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

BOOL sub_10065A6B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C44C80, v2);

  return v3 != 0;
}

unint64_t sub_10065A728@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10065A664(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10065A758@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001AC9D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10065A7E8()
{
  result = qword_100CCECB0;
  if (!qword_100CCECB0)
  {
    result = swift_getWitnessTable(aA_54, &type metadata for LocationViewComponent.ComponentType, v0, v1);
    atomic_store(result, &qword_100CCECB0);
  }

  return result;
}

BOOL sub_10065A848@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10065A6B8(*a1);
  *a2 = result;
  return result;
}

BOOL sub_10065A890@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10065A6B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10065A8BC(uint64_t a1)
{
  v2 = sub_10065B520();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10065A8F8(uint64_t a1)
{
  v2 = sub_10065B520();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10065A934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v131 = sub_10022C350(&qword_100CCECC8, &unk_100A70070);
  sub_1000037C4();
  v129 = v6;
  __chkstk_darwin(v7);
  v136 = v122 - v8;
  v9 = sub_1000038CC();
  v125 = type metadata accessor for LocationViewComponent(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v24);
  v26 = v122 - v25;
  __chkstk_darwin(v27);
  sub_10002137C();
  __chkstk_darwin(v28);
  v30 = v122 - v29;
  __chkstk_darwin(v31);
  sub_10003A2D4();
  __chkstk_darwin(v32);
  sub_100013628();
  __chkstk_darwin(v33);
  v35 = v122 - v34;
  v36 = a1[3];
  v132 = a1;
  sub_1000161C0(a1, v36);
  sub_10065B520();
  v37 = v133;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v37)
  {
    v44 = v132;
  }

  else
  {
    v122[1] = v2;
    v122[2] = v3;
    v122[3] = v30;
    v122[4] = v4;
    v122[5] = v26;
    v38 = v126;
    v39 = v127;
    v40 = v128;
    v41 = v129;
    v133 = v35;
    v42 = v130;
    sub_10065B574();
    v43 = v136;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    switch(LOBYTE(v134[0]))
    {
      case 1:
        sub_100049A54(v132);
        sub_100037C18();
        sub_100579A94(v82, v83);
        v84 = sub_100028898();
        v85(v84);
        sub_10003A2C8();
        goto LABEL_18;
      case 2:
        sub_100049A54(v132);
        sub_100037C18();
        sub_10086750C(v70, v71);
        v72 = sub_100028898();
        v73(v72);
        sub_10003A2C8();
        goto LABEL_18;
      case 3:
        sub_100049A54(v132);
        sub_100037C18();
        sub_1007C918C(v74, v75);
        v76 = sub_100028898();
        v77(v76);
        sub_10003A2C8();
        goto LABEL_18;
      case 4:
        v3 = v42;
        sub_100049A54(v132);
        sub_100031E74();
        sub_10087FAD0(v60, v61);
        sub_10001C954();
        v62 = sub_1000116F8();
        v63(v62);
        sub_100027E24();
        goto LABEL_22;
      case 5:
        v3 = v42;
        sub_100049A54(v132);
        sub_100031E74();
        sub_1008573D8(v93, v94);
        sub_10001C954();
        v95 = sub_1000116F8();
        v96(v95);
        sub_100027E24();
        goto LABEL_22;
      case 6:
        sub_100049A54(v132);
        sub_10035C284(v134, v38);
        sub_10001C954();
        v115 = sub_1000116F8();
        v116(v115);
        sub_100027E24();
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        sub_1000252C4(v38, v117, v118);
        break;
      case 7:
        v3 = v42;
        sub_100049A54(v132);
        sub_100031E74();
        sub_1005A7024(v78, v79);
        sub_10001C954();
        v80 = sub_1000116F8();
        v81(v80);
        sub_100027E24();
LABEL_22:
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        v99 = v38;
        goto LABEL_31;
      case 8:
        sub_100022F54(v132);
        sub_100074D24();
        sub_100673F20(v108, v109);
        sub_10001C954();
        v110 = sub_100020980();
        v111(v110);
        sub_100031474();
        goto LABEL_30;
      case 9:
        sub_100022F54(v132);
        sub_100074D24();
        sub_1003ACDF8(v66, v67);
        sub_10001C954();
        v68 = sub_100020980();
        v69(v68);
        sub_100031474();
        goto LABEL_30;
      case 0xA:
        v35 = v132;
        v106 = sub_100028898();
        v107(v106);
        v41 = v133;
        sub_10003A2C8();
        swift_storeEnumTagMultiPayload();
        break;
      case 0xB:
        sub_100022F54(v132);
        sub_100074D24();
        sub_10068D194(v56, v57);
        sub_10001C954();
        v58 = sub_100020980();
        v59(v58);
        sub_100031474();
        goto LABEL_30;
      case 0xC:
        v3 = v42;
        sub_100049A54(v132);
        sub_1007AC420(v134, __src);
        sub_10001C954();
        v64 = sub_1000116F8();
        v65(v64);
        v41 = v124;
        memcpy(v124, __src, 0x80uLL);
        goto LABEL_24;
      case 0xD:
        sub_100022F54(v132);
        sub_100545BE0(v134);
        sub_10001C954();
        v101 = v100;
        v102 = sub_100020980();
        v103(v102);
        v41 = v123;
        *v123 = v101 & 1;
LABEL_24:
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        v99 = v41;
        goto LABEL_31;
      case 0xE:
        sub_100022F54(v132);
        sub_100074D24();
        sub_1003CAAF4(v52, v53);
        sub_10001C954();
        v54 = sub_100020980();
        v55(v54);
        sub_100031474();
        goto LABEL_30;
      case 0xF:
        v3 = v42;
        sub_100049A54(v132);
        sub_100074D24();
        SunriseSunsetModel.init(from:)();
        sub_10001C954();
        v114 = v41[1];
        ++v41;
        v114(v43);
        sub_100031474();
        goto LABEL_30;
      case 0x10:
        sub_100022F54(v132);
        v42 = v39;
        sub_100897408(v134, v39);
        sub_10001C954();
        v50 = sub_100020980();
        v51(v50);
        sub_100031474();
        goto LABEL_30;
      case 0x11:
        sub_100022F54(v132);
        sub_100074D24();
        sub_100928DFC(v89, v90);
        sub_10001C954();
        v91 = sub_100020980();
        v92(v91);
        sub_100031474();
        goto LABEL_30;
      case 0x12:
        sub_100049A54(v132);
        sub_10044946C(v134, v40);
        sub_10001C954();
        v104 = sub_100020980();
        v105(v104);
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        v88 = v40;
        goto LABEL_19;
      case 0x13:
        sub_100022F54(v132);
        sub_100074D24();
        sub_1009CBC60(v112, v113);
        sub_10001C954();
        v119 = sub_100020980();
        v120(v119);
        sub_100031474();
LABEL_30:
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        v99 = v42;
LABEL_31:
        sub_1000252C4(v99, v97, v98);
        v42 = v3;
        break;
      default:
        sub_100049A54(v132);
        sub_100037C18();
        sub_100449ED4(v46, v47);
        v48 = sub_100028898();
        v49(v48);
        sub_10003A2C8();
LABEL_18:
        swift_storeEnumTagMultiPayload();
        sub_10001F42C();
        v88 = v3;
LABEL_19:
        sub_1000252C4(v88, v86, v87);
        break;
    }

    sub_10001F42C();
    sub_1001B29B0(v41, v42, v121);
    v44 = v35;
  }

  return sub_100006F14(v44);
}

uint64_t sub_10065B2FC@<X0>(uint64_t *a1@<X8>)
{
  sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_10065A328();
  *(inited + 72) = &type metadata for LocationViewComponent.ComponentType;
  *(inited + 48) = v3;
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CCECE0, &qword_100A70080);
  a1[4] = sub_10065B5C8();
  sub_100042FB0(a1);
  type metadata accessor for LocationViewComponent(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_10065B404(uint64_t a1)
{
  sub_10065B62C(&qword_100CCECF0, type metadata accessor for LocationViewComponent, aI_55);

  return ShortDescribable.description.getter();
}

uint64_t sub_10065B4B8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CCECC0, &qword_100A70068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10065B520()
{
  result = qword_100CCECD0;
  if (!qword_100CCECD0)
  {
    result = swift_getWitnessTable(aM_64, &type metadata for LocationViewComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCECD0);
  }

  return result;
}

unint64_t sub_10065B574()
{
  result = qword_100CCECD8;
  if (!qword_100CCECD8)
  {
    result = swift_getWitnessTable(aA_55, &type metadata for LocationViewComponent.ComponentType, v0, v1);
    atomic_store(result, &qword_100CCECD8);
  }

  return result;
}

unint64_t sub_10065B5C8()
{
  result = qword_100CCECE8;
  if (!qword_100CCECE8)
  {
    v3 = sub_10022E824(&qword_100CCECE0, &qword_100A70080);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CCECE8);
  }

  return result;
}

uint64_t sub_10065B62C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_10065B674()
{
  result = qword_100CCECF8;
  if (!qword_100CCECF8)
  {
    result = swift_getWitnessTable(aO_12, &type metadata for LocationViewComponent.ComponentType, v0, v1);
    atomic_store(result, &qword_100CCECF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationViewComponent.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10065B778()
{
  result = qword_100CCED00;
  if (!qword_100CCED00)
  {
    result = swift_getWitnessTable(byte_100A7015C, &type metadata for LocationViewComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCED00);
  }

  return result;
}

unint64_t sub_10065B7D0()
{
  result = qword_100CCED08;
  if (!qword_100CCED08)
  {
    result = swift_getWitnessTable(aM_65, &type metadata for LocationViewComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCED08);
  }

  return result;
}

unint64_t sub_10065B828()
{
  result = qword_100CCED10;
  if (!qword_100CCED10)
  {
    result = swift_getWitnessTable(byte_100A700BC, &type metadata for LocationViewComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCED10);
  }

  return result;
}

uint64_t type metadata accessor for AirQualityComponentViewModel(uint64_t a1)
{
  result = qword_100CCED70;
  if (!qword_100CCED70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10065B8F0(uint64_t a1)
{
  sub_10062FF08();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10013CA90(319, &qword_100CA45C0, &type metadata for String, &type metadata accessor for Optional);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_10013CA90(319, &unk_100CCD480, &type metadata for Gradient.Stop, &type metadata accessor for Array);
      if (v7 > 0x3F)
      {
        return v6;
      }

      v6 = type metadata accessor for AttributedString();
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_10065BA38(char a1)
{
  if (*(v1 + 112) == 1)
  {
    if ((a1 & 1) != 0 && *(v1 + 113) == 1)
    {
      v2 = [objc_opt_self() mainBundle];
      v13._object = 0x8000000100AD9DB0;
      v3._countAndFlagsBits = 0x4025202D206425;
      v3._object = 0xE700000000000000;
      v4._countAndFlagsBits = 0;
      v4._object = 0xE000000000000000;
      v13._countAndFlagsBits = 0xD000000000000049;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v13);

      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100A2D320;
      v6 = *(v1 + 16);
      *(v5 + 56) = &type metadata for Int;
      *(v5 + 64) = &protocol witness table for Int;
      *(v5 + 32) = v6;
      v8 = *(v1 + 48);
      v7 = *(v1 + 56);
      *(v5 + 96) = &type metadata for String;
      *(v5 + 104) = sub_100035744();
      *(v5 + 72) = v8;
      *(v5 + 80) = v7;

      v9 = static String.localizedStringWithFormat(_:_:)();
    }

    else
    {
      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100A2C3F0;
      v11 = *(v1 + 16);
      *(v10 + 56) = &type metadata for Int;
      *(v10 + 64) = &protocol witness table for Int;
      *(v10 + 32) = v11;
      v9 = static String.localizedStringWithFormat(_:_:)();
    }
  }

  else
  {
    v9 = *(v1 + 48);
  }

  return v9;
}

uint64_t sub_10065BC1C(char a1)
{
  if (*(v1 + 112) != 1 || (a1 & 1) != 0 && (*(v1 + 113) & 1) != 0)
  {
    return 0;
  }

  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_10065BC70(char a1)
{
  v3 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  if (*(v1 + 112) != 1 || *(v1 + 113) == 1 && (a1 & 1) != 0)
  {
    (*(v12 + 104))(v16, enum case for Font.TextStyle.title3(_:), v10);
    static Font.Weight.semibold.getter();
    static Font.system(_:weight:)();
    (*(v12 + 8))(v16, v10);
    (*(v5 + 104))(v9, enum case for Font.Leading.tight(_:), v3);
    v17 = Font.leading(_:)();

    (*(v5 + 8))(v9, v3);
    static Font.headline.getter();
  }

  else
  {
    v17 = static Font.largeTitle.getter();
    static Font.title2.getter();
  }

  return v17;
}

uint64_t sub_10065BE54()
{
  v0 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  (*(v9 + 104))(v12 - v11, enum case for Font.TextStyle.title3(_:), v7);
  static Font.Weight.semibold.getter();
  static Font.system(_:weight:)();
  (*(v9 + 8))(v13, v7);
  (*(v2 + 104))(v6, enum case for Font.Leading.tight(_:), v0);
  v14 = Font.leading(_:)();

  (*(v2 + 8))(v6, v0);
  static Font.footnote.getter();
  return v14;
}

uint64_t sub_10065C008(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 2) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 3) == *(a2 + 24) && *(a1 + 4) == *(a2 + 32);
  if (!v5 || a1[5] != *(a2 + 40))
  {
    return 0;
  }

  v6 = *(a1 + 6) == *(a2 + 48) && *(a1 + 7) == *(a2 + 56);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 8) == *(a2 + 64) && *(a1 + 9) == *(a2 + 72);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 11);
  v9 = *(a2 + 88);
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *(a1 + 10) == *(a2 + 80) && v8 == v9;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(a1 + 12) == *(a2 + 96) && *(a1 + 13) == *(a2 + 104);
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 112) == *(a2 + 112) && *(a1 + 113) == *(a2 + 113) && (sub_1009EE6AC(*(a1 + 15), *(a2 + 120)))
  {
    v12 = type metadata accessor for AirQualityComponentViewModel(0);
    if (static AttributedString.== infix(_:_:)())
    {
      v13 = *(v12 + 64);
      v14 = (a1 + v13);
      v15 = *(a1 + v13 + 8);
      v16 = (a2 + v13);
      v17 = v16[1];
      if (v15)
      {
        if (v17)
        {
          v18 = *v14 == *v16 && v15 == v17;
          if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v17)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10065C1C4@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v43 = v6;
  v44 = v5;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v42 = v8 - v7;
  type metadata accessor for Date();
  sub_1000037C4();
  v46 = v10;
  v47 = v9;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v45 = v12 - v11;
  HourPrecipitationChartPlacement = type metadata accessor for NextHourPrecipitationChartPlacement();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  type metadata accessor for NextHourPrecipitationChartViewModel();
  sub_1000037C4();
  v48 = v21;
  v49 = v20;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v24 = v23 - v22;
  sub_1000161C0((v3 + 16), *(v3 + 40));
  type metadata accessor for NextHourPrecipitationComponent(0);
  (*(v15 + 104))(v19, enum case for NextHourPrecipitationChartPlacement.component(_:), HourPrecipitationChartPlacement);
  dispatch thunk of NextHourPrecipitationChartViewModelFactoryType.makeViewModel(for:precipitation:placement:currentTime:minutesToConsider:)();
  (*(v15 + 8))(v19, HourPrecipitationChartPlacement);
  if (qword_100CA2A08 != -1)
  {
    swift_once();
  }

  sub_10065C7AC();
  Configurable.setting<A>(_:)();
  if (v51 == 1)
  {
    v25 = 0x8000000100AD9EC0;
    v26 = 0xD000000000000015;
  }

  else
  {
    static WeatherClock.date.getter();
    sub_1000106A0();
    v26 = NextHourPrecipitationStringBuilder.buildShortString(from:referenceDate:)();
    v25 = v27;
    (*(v46 + 8))(v45, v47);
    if (!v25)
    {
      v26 = 0;
      v25 = 0xE000000000000000;
    }
  }

  Configurable.setting<A>(_:)();
  if (v50 == 1)
  {
    v28 = 0x8000000100AD9E90;
    v29 = 0xD00000000000002DLL;
  }

  else
  {
    Location.timeZone.getter();
    static WeatherClock.date.getter();
    sub_1000106A0();
    v29 = NextHourPrecipitationStringBuilder.buildLongString(from:timeZone:referenceDate:)();
    v28 = v30;
    (*(v46 + 8))(v45, v47);
    (*(v43 + 8))(v42, v44);
    if (!v28)
    {
      v29 = 0;
      v28 = 0xE000000000000000;
    }
  }

  v31 = [objc_opt_self() mainBundle];
  v52._object = 0x8000000100AD9E60;
  v32._countAndFlagsBits = 0xD000000000000017;
  v32._object = 0x8000000100AD3840;
  v52._countAndFlagsBits = 0xD00000000000002BLL;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v52);

  *a3 = v26;
  *(a3 + 8) = v25;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = v34;
  strcpy((a3 + 48), "umbrella.fill");
  *(a3 + 62) = -4864;
  *(a3 + 64) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  swift_storeEnumTagMultiPayload();
  v35 = type metadata accessor for LocationComponentContainerViewModel(0);
  v36 = (a3 + v35[5]);
  HourPrecipitationComponentViewModel = type metadata accessor for NextHourPrecipitationComponentViewModel(0);
  (*(v48 + 16))(v36 + *(HourPrecipitationComponentViewModel + 20), v24, v49);
  *v36 = v29;
  v36[1] = v28;
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v38 = v35[8];
  v39 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(a3 + v38, 0, 1, v39);
  sub_10013D288();
  v40 = Dictionary.init(dictionaryLiteral:)();
  result = (*(v48 + 8))(v24, v49);
  *(a3 + v35[6]) = 256;
  *(a3 + v35[7]) = v40;
  return result;
}

unint64_t sub_10065C7AC()
{
  result = qword_100CCEE80;
  if (!qword_100CCEE80)
  {
    HourPrecipitationComponentViewModelFactory = type metadata accessor for NextHourPrecipitationComponentViewModelFactory();
    result = swift_getWitnessTable(aY_33, HourPrecipitationComponentViewModelFactory, v0, v1);
    atomic_store(result, &qword_100CCEE80);
  }

  return result;
}

void *sub_10065C800@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCEFD8, &qword_100A703B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4C78, &qword_100A2EF00);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for SearchModule();
      swift_allocObject();
      result = sub_1003B580C(&v7, v5);
      a2[3] = v6;
      a2[4] = &off_100C52F00;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10065C900@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCEFD8, &qword_100A703B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v4 = type metadata accessor for SearchDismissOverlayModule();
    v5 = swift_allocObject();
    result = sub_100013188(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_100C73398;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10065C9AC()
{
  sub_10022C350(&qword_100CCEFD0, &qword_100A703B0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCEFD8, &qword_100A703B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4C78, &qword_100A2EF00);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCEFE0, &unk_100A703C0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10065CAD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = &type metadata for SearchTracker;
    a2[4] = &off_100C6DA60;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10065CB48@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v3 = sub_10065CB88(a2);
  result = type metadata accessor for SearchInteractor();
  a1[3] = result;
  a1[4] = &off_100C64238;
  *a1 = v3;
  return result;
}

void *sub_10065CB88(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v25;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA718, &unk_100A4FE10);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCEFD0, &qword_100A703B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v5 = sub_10002D7F8(v20, v21);
    v6 = __chkstk_darwin(v5);
    v8 = (&v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v19[3] = &type metadata for SearchTracker;
    v19[4] = &off_100C6DA60;
    v19[0] = v10;
    type metadata accessor for SearchInteractor();
    v11 = swift_allocObject();
    v12 = sub_10002D7F8(v19, &type metadata for SearchTracker);
    v13 = __chkstk_darwin(v12);
    v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v11[12] = &type metadata for SearchTracker;
    v11[13] = &off_100C6DA60;
    v11[9] = v17;
    v11[2] = v3;
    v11[3] = v4;
    sub_100013188(&v22, (v11 + 4));
    sub_100006F14(v19);
    sub_100006F14(v20);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_10065CE3C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v14;
  if (v14)
  {
    v5 = v16;
    v4 = v17;
    v6 = v15;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CCEFE0, &unk_100A703C0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v13)
    {
      v7 = *sub_1000161C0(v12, v13);
      v11[3] = type metadata accessor for SearchViewModelFactory();
      v11[4] = &off_100C7BD50;
      v11[0] = v7;
      sub_100035B30(v11, v10);
      v8 = swift_allocObject();
      sub_100013188(v10, v8 + 16);

      sub_100006F14(v11);
      sub_100006F14(v12);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_10065D0A0;
      *(v9 + 24) = v8;
      sub_10022C350(&qword_100CA4C78, &qword_100A2EF00);
      swift_allocObject();
      return sub_10024B808(v3, v6, v5, v4, sub_10001BAA8, 0, sub_10065D0AC, 0, sub_100104B5C, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10065D030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v4 = a2;
  sub_1000161C0(a3, a3[3]);
  return sub_100A086A4(a1, v4, a4);
}

uint64_t sub_10065D0AC@<X0>(uint64_t *a1@<X8>)
{
  result = j__swift_retain_0();
  *a1 = result;
  return result;
}

void sub_10065D0D8(uint64_t a1@<X8>)
{
  v4 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v34[-v8];
  v10 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003C38();
  sub_100030568();
  __chkstk_darwin(v12);
  v14 = &v34[-v13];
  v15 = OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___currentLocation;
  sub_10002401C(v1 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___currentLocation, v35);
  sub_100071DA8();
  sub_10065F774(v16, v17, v18, &unk_100A3D9D0);
  v19 = type metadata accessor for Location();
  sub_1000038B4(v14, 1, v19);
  if (v20)
  {
    sub_10002C4AC(v14, &qword_100CA65D8, &unk_100A3D9D0);
    v21 = static Location.currentLocationID.getter();
    v23 = v22;
    sub_10002159C();
    v24 = type metadata accessor for TimeZone();
    sub_1000038B4(v9, 1, v24);
    if (v20)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for Date();
      sub_10003720C();
      sub_100003934();
      sub_10001B350(v25, v26, v27, v28);
      sub_100006450();
      sub_10006A850(v21, v23, 0x6E69747265707543, 0xE90000000000006FLL);
      sub_100003B20();
      (*(v29 + 16))(v2, a1, v19);
      sub_10000E7B0();
      sub_10001B350(v30, v31, v32, v19);
      sub_100017BD8(v1 + v15, v34);
      sub_10065F7C4(v2, v1 + v15, &qword_100CA65D8, &unk_100A3D9D0);
      swift_endAccess();
    }
  }

  else
  {
    sub_100003B20();
    sub_100071DA8();
    v33();
  }
}

void sub_10065D394()
{
  sub_100018514();
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10002098C();
  v4 = sub_1000047E4(v3);
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  v7 = sub_10002109C();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10000CD5C();
  sub_100024954();
  v10 = type metadata accessor for Location();
  sub_100049A70(v10);
  if (!v11)
  {
    sub_100022F78();
    v30 = sub_100037C28();
    v31(v30);
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_100074D34();
  sub_10002C4AC(v0, &qword_100CA65D8, &unk_100A3D9D0);
  sub_10003BAEC();
  sub_100013AA0();
  if (!v11)
  {
    v12 = CLLocationCoordinate2D.id.getter();
    v14 = sub_10001F444(v12, v13);
    v15(v14);
    type metadata accessor for Date();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    sub_100006450();
    sub_100008BA4();
    sub_100051F78(v20, v21, v22, v23);
    v24 = sub_1000288AC();
    v25(v24);
    sub_100022F78();
    v26 = sub_10000EC50();
    v27(v26);
    v28 = sub_1000106B4();
    sub_100016450(v28, v29, &qword_100CA65D8, &unk_100A3D9D0);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10065D618()
{
  sub_100018514();
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10002098C();
  v4 = sub_1000047E4(v3);
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  v7 = sub_10002109C();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10000CD5C();
  sub_100024954();
  v10 = type metadata accessor for Location();
  sub_100049A70(v10);
  if (!v11)
  {
    sub_100022F78();
    v29 = sub_100037C28();
    v30(v29);
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_100074D34();
  sub_10002C4AC(v0, &qword_100CA65D8, &unk_100A3D9D0);
  sub_10003BAEC();
  sub_100013AA0();
  if (!v11)
  {
    v12 = CLLocationCoordinate2D.id.getter();
    v14 = sub_10001F444(v12, v13);
    v15(v14);
    type metadata accessor for Date();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    sub_100006450();
    sub_100008BA4();
    sub_100051F78(v20, v21, v22, 0xE800000000000000);
    v23 = sub_1000288AC();
    v24(v23);
    sub_100022F78();
    v25 = sub_10000EC50();
    v26(v25);
    v27 = sub_1000106B4();
    sub_100016450(v27, v28, &qword_100CA65D8, &unk_100A3D9D0);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10065D894(uint64_t a1@<X8>)
{
  v4 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v59 - v8;
  v10 = sub_10022C350(&qword_100CCF250, &qword_100A704C8);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003C38();
  sub_100030568();
  __chkstk_darwin(v12);
  v14 = &v59 - v13;
  v15 = OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___locations;
  sub_10002401C(v1 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___locations, v70);
  sub_10065F774(v1 + v15, v14, &qword_100CCF250, &qword_100A704C8);
  v16 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  sub_1000038B4(v14, 1, v16);
  if (v17)
  {
    sub_10002C4AC(v14, &qword_100CCF250, &qword_100A704C8);
    sub_10065D0D8(v9);
    v18 = type metadata accessor for CurrentLocation();
    sub_10003BEC0(v9);
    sub_10000E7B0();
    sub_10001B350(v19, v20, v21, v18);
    sub_10022C350(&qword_100CCF258, &qword_100A766F0);
    v68 = v16;
    v22 = type metadata accessor for SavedLocation();
    v66 = a1;
    v67 = v2;
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_100A2D320;
    sub_10065D394();
    v61 = v22;
    swift_storeEnumTagMultiPayload();
    sub_10065D618();
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CCD858, &qword_100A6E598);
    v23 = type metadata accessor for LocationModel();
    v63 = v9;
    v64 = v15;
    v24 = v23;
    v59 = v23;
    v25 = *(v23 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v60 = *(v25 + 72);
    v27 = v60;
    v28 = swift_allocObject();
    v62 = v28;
    *(v28 + 16) = xmmword_100A3BBA0;
    v29 = v28 + v26;
    sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
    sub_10065D0D8(v29);
    sub_10003BEC0(v29);
    v30 = type metadata accessor for LocationOfInterest();
    sub_100003934();
    sub_10001B350(v31, v32, v33, v30);
    sub_1000202C8();
    v34 = *(v25 + 104);
    v34(v29, enum case for LocationModel.current(_:), v24);
    sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
    sub_10065D394();
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v35, v36, v37, v30);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v38 = enum case for LocationModel.saved(_:);
    v39 = v59;
    v34(v29 + v27, enum case for LocationModel.saved(_:), v59);
    v40 = v29 + 2 * v60;
    sub_10065D618();
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v41, v42, v43, v30);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v34(v40, v38, v39);
    type metadata accessor for LocationDisplayContext();
    v44 = Dictionary.init(dictionaryLiteral:)();
    v45 = v66;
    sub_100036DB4(v63, v65, v62, v46, v47, v48, v49, v44);
    type metadata accessor for LocationsState(0);
    sub_10003720C();
    sub_10000E7B0();
    sub_10001B350(v50, v51, v52, v53);
    v54 = v67;
    sub_10065F774(v45, v67, &qword_100CA6630, &unk_100A32630);
    sub_10000E7B0();
    sub_10001B350(v55, v56, v57, v68);
    v58 = v64;
    sub_100017BD8(v1 + v64, v69);
    sub_10065F7C4(v54, v1 + v58, &qword_100CCF250, &qword_100A704C8);
    swift_endAccess();
  }

  else
  {
    sub_10065F724(v14, a1, &qword_100CA6630, &unk_100A32630);
  }
}

void *sub_10065DE10(uint64_t a1, unint64_t a2)
{
  type metadata accessor for DemoDataProvider();
  swift_allocObject();
  DemoDataProvider.init()();
  v4 = DemoDataProvider.demoData(named:subdirectory:)();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    if (qword_100CA26C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90AC0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100078694(a1, a2, &v13);
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not load preset data with name = %{public}s", v10, 0xCu);
      sub_100006F14(v11);
    }

    return 0;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1002DE1B4();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_1003B3404(v4, v6);

    return v13;
  }
}

uint64_t sub_10065E1E0()
{
  v1 = *(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___preset);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = 0;
    *(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos8Fall2024____lazy_storage___preset) = 0;
  }

  sub_10065F6B4(v1);
  return v2;
}

void sub_10065E2D4()
{
  sub_100018514();
  v3 = v2;
  v4 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v34[-v8];
  v10 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003C38();
  sub_100030568();
  __chkstk_darwin(v12);
  v14 = &v34[-v13];
  v15 = OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos10Winter2024____lazy_storage___currentLocation;
  sub_10002401C(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos10Winter2024____lazy_storage___currentLocation, &v35);
  sub_100071DA8();
  sub_10065F774(v16, v17, v18, &unk_100A3D9D0);
  v19 = type metadata accessor for Location();
  sub_1000038B4(v14, 1, v19);
  if (!v20)
  {
    sub_100003B20();
    sub_100071DA8();
    v33();
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_10002C4AC(v14, &qword_100CA65D8, &unk_100A3D9D0);
  v21 = static Location.currentLocationID.getter();
  v23 = v22;
  sub_10002159C();
  v24 = type metadata accessor for TimeZone();
  sub_1000038B4(v9, 1, v24);
  if (!v20)
  {
    static CLLocationCoordinate2D.losAngeles.getter();
    sub_1000B99C0();
    type metadata accessor for Date();
    sub_10003720C();
    sub_100003934();
    sub_10001B350(v25, v26, v27, v28);
    sub_100006450();
    sub_10006A850(v21, v23, 0x65676E4120736F4CLL, 0xEB0000000073656CLL);
    sub_100003B20();
    (*(v29 + 16))(v1, v3, v19);
    sub_10000E7B0();
    sub_10001B350(v30, v31, v32, v19);
    sub_100017BD8(v0 + v15, v34);
    sub_10065F7C4(v1, v0 + v15, &qword_100CA65D8, &unk_100A3D9D0);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10065E584()
{
  sub_100018514();
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10002098C();
  v4 = sub_1000047E4(v3);
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  v7 = sub_10002109C();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10000CD5C();
  sub_100024954();
  v10 = type metadata accessor for Location();
  sub_100049A70(v10);
  if (!v11)
  {
    sub_100022F78();
    v29 = sub_100037C28();
    v30(v29);
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_100074D34();
  sub_10002C4AC(v0, &qword_100CA65D8, &unk_100A3D9D0);
  TimeZone.init(identifier:)();
  sub_100013AA0();
  if (!v11)
  {
    static CLLocationCoordinate2D.amsterdam.getter();
    sub_1000B99C0();
    v12 = CLLocationCoordinate2D.id.getter();
    v14 = sub_10001F444(v12, v13);
    v15(v14);
    type metadata accessor for Date();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    sub_100006450();
    sub_100008BA4();
    sub_100051F78(v20, v21, v22, 0xE90000000000006DLL);
    v23 = sub_1000288AC();
    v24(v23);
    sub_100022F78();
    v25 = sub_10000EC50();
    v26(v25);
    v27 = sub_1000106B4();
    sub_100016450(v27, v28, &qword_100CA65D8, &unk_100A3D9D0);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10065E810()
{
  sub_100018514();
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10002098C();
  v4 = sub_1000047E4(v3);
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  v7 = sub_10002109C();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10000CD5C();
  sub_100024954();
  v10 = type metadata accessor for Location();
  sub_100049A70(v10);
  if (!v11)
  {
    sub_100022F78();
    v29 = sub_100037C28();
    v30(v29);
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_100074D34();
  sub_10002C4AC(v0, &qword_100CA65D8, &unk_100A3D9D0);
  TimeZone.init(identifier:)();
  sub_100013AA0();
  if (!v11)
  {
    static CLLocationCoordinate2D.london.getter();
    sub_1000B99C0();
    v12 = CLLocationCoordinate2D.id.getter();
    v14 = sub_10001F444(v12, v13);
    v15(v14);
    type metadata accessor for Date();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    sub_100006450();
    sub_100008BA4();
    sub_100051F78(v20, v21, v22, 0xE600000000000000);
    v23 = sub_1000288AC();
    v24(v23);
    sub_100022F78();
    v25 = sub_10000EC50();
    v26(v25);
    v27 = sub_1000106B4();
    sub_100016450(v27, v28, &qword_100CA65D8, &unk_100A3D9D0);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10065EA9C()
{
  sub_100018514();
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v3 = sub_10002098C();
  v4 = sub_1000047E4(v3);
  __chkstk_darwin(v4);
  sub_1000106FC();
  v5 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10002C698();
  v7 = sub_10002109C();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100014B58();
  __chkstk_darwin(v9);
  sub_10003C300();
  sub_10000CD5C();
  sub_100024954();
  v10 = type metadata accessor for Location();
  sub_100049A70(v10);
  if (!v11)
  {
    sub_100022F78();
    v29 = sub_100037C28();
    v30(v29);
LABEL_5:
    sub_1000135C8();
    return;
  }

  sub_100074D34();
  sub_10002C4AC(v0, &qword_100CA65D8, &unk_100A3D9D0);
  TimeZone.init(identifier:)();
  sub_100013AA0();
  if (!v11)
  {
    static CLLocationCoordinate2D.tokyo.getter();
    sub_1000B99C0();
    v12 = CLLocationCoordinate2D.id.getter();
    v14 = sub_10001F444(v12, v13);
    v15(v14);
    type metadata accessor for Date();
    sub_100003934();
    sub_10001B350(v16, v17, v18, v19);
    sub_100006450();
    sub_100008BA4();
    sub_100051F78(v20, v21, v22, 0xE500000000000000);
    v23 = sub_1000288AC();
    v24(v23);
    sub_100022F78();
    v25 = sub_10000EC50();
    v26(v25);
    v27 = sub_1000106B4();
    sub_100016450(v27, v28, &qword_100CA65D8, &unk_100A3D9D0);
    swift_endAccess();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_10065ED20(uint64_t a1@<X8>)
{
  v4 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v78 = &v64[-v6];
  v7 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v64[-v9];
  v11 = sub_10022C350(&qword_100CCF250, &qword_100A704C8);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100014B58();
  __chkstk_darwin(v13);
  v15 = &v64[-v14];
  v16 = OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos10Winter2024____lazy_storage___locations;
  sub_10002401C(v1 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos10Winter2024____lazy_storage___locations, v80);
  v77 = v16;
  sub_10065F774(v1 + v16, v15, &qword_100CCF250, &qword_100A704C8);
  v17 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  sub_1000038B4(v15, 1, v17);
  if (v18)
  {
    sub_10002C4AC(v15, &qword_100CCF250, &qword_100A704C8);
    sub_10065E2D4();
    v19 = type metadata accessor for CurrentLocation();
    sub_10003BEC0(v10);
    sub_10000E7B0();
    sub_10001B350(v20, v21, v22, v19);
    sub_10022C350(&qword_100CCF258, &qword_100A766F0);
    v75 = v17;
    v23 = type metadata accessor for SavedLocation();
    v73 = a1;
    v74 = v2;
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_100A3BBA0;
    sub_10065E584();
    swift_storeEnumTagMultiPayload();
    sub_10065E810();
    v76 = v23;
    swift_storeEnumTagMultiPayload();
    sub_10065EA9C();
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CCD858, &qword_100A6E598);
    v24 = type metadata accessor for LocationModel();
    v25 = *(v24 - 8);
    v71 = v10;
    v26 = v25;
    v27 = *(v25 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = swift_allocObject();
    v70 = v29;
    *(v29 + 16) = xmmword_100A3B020;
    v30 = v29 + v28;
    sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
    sub_10065E2D4();
    sub_10003BEC0(v30);
    v31 = type metadata accessor for LocationOfInterest();
    sub_100003934();
    sub_10001B350(v32, v33, v34, v31);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v68 = *(v26 + 104);
    v69 = v26 + 104;
    v66 = v24;
    v68(v30, enum case for LocationModel.current(_:), v24);
    v67 = v27;
    sub_10022C350(&qword_100CA38B8, &unk_100A66A90);
    sub_10065E584();
    sub_10003BEC0(v30 + v27);
    sub_100003934();
    sub_10001B350(v35, v36, v37, v31);
    sub_1000202C8();
    v65 = enum case for LocationModel.saved(_:);
    v38 = v68;
    (v68)(v30 + v27);
    v39 = v30 + 2 * v27;
    sub_10065E810();
    sub_10003BEC0(v39);
    sub_100003934();
    sub_10001B350(v40, v41, v42, v31);
    sub_1000202C8();
    v43 = v65;
    v44 = v66;
    v38(v39, v65, v66);
    v45 = v30 + 3 * v67;
    sub_10065EA9C();
    swift_storeEnumTagMultiPayload();
    sub_100003934();
    sub_10001B350(v46, v47, v48, v31);
    sub_1000202C8();
    v38(v45, v43, v44);
    type metadata accessor for LocationDisplayContext();
    v49 = Dictionary.init(dictionaryLiteral:)();
    v50 = v73;
    sub_100036DB4(v71, v72, v70, v51, v52, v53, v54, v49);
    type metadata accessor for LocationsState(0);
    sub_10003720C();
    sub_10000E7B0();
    sub_10001B350(v55, v56, v57, v58);
    v59 = v74;
    sub_10065F774(v50, v74, &qword_100CA6630, &unk_100A32630);
    sub_10000E7B0();
    sub_10001B350(v60, v61, v62, v75);
    v63 = v77;
    sub_100017BD8(v1 + v77, v79);
    sub_10065F7C4(v59, v1 + v63, &qword_100CCF250, &qword_100A704C8);
    swift_endAccess();
  }

  else
  {
    sub_10065F724(v15, a1, &qword_100CA6630, &unk_100A32630);
  }
}

void sub_10065F30C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_10022C350(&qword_100CCF248, &qword_100A704C0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003C38();
  v10 = v8 - v9;
  __chkstk_darwin(v11);
  v13 = &v24[-v12];
  v14 = *a1;
  sub_10002401C(v3 + *a1, v25);
  sub_10065F774(v3 + v14, v13, &qword_100CCF248, &qword_100A704C0);
  v15 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  sub_1000038B4(v13, 1, v15);
  if (v16)
  {
    sub_10002C4AC(v13, &qword_100CCF248, &qword_100A704C0);
    Date.init(timeIntervalSinceReferenceDate:)();
    type metadata accessor for TimeState(0);
    sub_10003720C();
    sub_10000E7B0();
    sub_10001B350(v17, v18, v19, v20);
    sub_10065F774(a2, v10, &qword_100CA6618, &unk_100A31440);
    sub_10000E7B0();
    sub_10001B350(v21, v22, v23, v15);
    sub_100017BD8(v3 + v14, v24);
    sub_10065F7C4(v10, v3 + v14, &qword_100CCF248, &qword_100A704C0);
    swift_endAccess();
  }

  else
  {
    sub_10065F724(v13, a2, &qword_100CA6618, &unk_100A31440);
  }
}

void *sub_10065F4BC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = (v3 + *a1);
  v5 = *v4;
  v6 = v4[2];
  v7 = v4[3];
  if (v4[1] == 1)
  {
    v5 = sub_10065DE10(a2, a3);
    v8 = v4[1];
    v15 = *v4;
    *v4 = v5;
    v4[1] = v9;
    v4[2] = v10;
    v4[3] = v11;
    sub_1000D3B68(v5, v9, v10, v11);
    sub_1000425D8(v15, v8);
  }

  v12 = sub_100003940();
  sub_10065F714(v12, v13, v6, v7);
  return v5;
}

uint64_t sub_10065F590()
{
  v1 = *(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos10Winter2024____lazy_storage___preset);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = 0;
    *(v0 + OBJC_IVAR____TtCOO7Weather10DemoPreset5Demos10Winter2024____lazy_storage___preset) = 0;
  }

  sub_10065F6B4(v1);
  return v2;
}

uint64_t sub_10065F6B4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10065F6C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_10065F714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    sub_1000D3B68(a1, a2, a3, a4);
  }
}

uint64_t sub_10065F724(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000399C(a1, a2, a3, a4);
  sub_100003B20();
  v5 = sub_100003940();
  v6(v5);
  return v4;
}

uint64_t sub_10065F774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000399C(a1, a2, a3, a4);
  sub_100003B20();
  v5 = sub_100003940();
  v6(v5);
  return v4;
}

uint64_t sub_10065F7C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000399C(a1, a2, a3, a4);
  sub_100003B20();
  v5 = sub_100003940();
  v6(v5);
  return v4;
}

uint64_t sub_10065F814(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Settings.TappableModulesTipStore.set<A>(setting:value:)(uint64_t a1, uint64_t a2)
{
  sub_10014982C(&qword_100CCF308, protocol conformance descriptor for Settings.TappableModulesTipStore);

  return Updatable.save<A>(setting:value:)();
}

uint64_t sub_10065F99C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(62, v7, v8);
  qword_100D906A8 = result;
  return result;
}

uint64_t sub_10065FAEC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(65, v7, v8);
  qword_100D906B0 = result;
  return result;
}

uint64_t sub_10065FC3C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(55, v7, v8);
  qword_100D906B8 = result;
  return result;
}

uint64_t sub_10065FD8C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(59, v7, v8);
  qword_100D906C0 = result;
  return result;
}

uint64_t sub_10065FEDC()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(59, v7, v8);
  qword_100D906C8 = result;
  return result;
}

uint64_t sub_10066002C()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(56, v7, v8);
  qword_100D906D0 = result;
  return result;
}

uint64_t sub_1006601F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Access();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v7 + 16))(v10, a4, v5);
  v11 = SettingGroup.init(key:defaultValue:access:)();
  (*(v7 + 8))(a4, v5);
  return v11;
}

uint64_t sub_10066030C()
{
  SettingGroup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100660344()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(49, v7, v8);
  qword_100D90708 = result;
  return result;
}

uint64_t sub_100660494()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(53, v7, v8);
  qword_100D90710 = result;
  return result;
}

uint64_t sub_1006605E4()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(46, v7, v8);
  qword_100D90718 = result;
  return result;
}

uint64_t sub_10066079C(uint64_t a1, void (*a2)(void, double), uint64_t (*a3)(void, void, void, char *), uint64_t *a4)
{
  v7 = type metadata accessor for Access();
  sub_1000037C4();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0, v11);
  (*(v9 + 104))(v13, enum case for Access.protected(_:), v7);
  result = a3(0, 0, 0, v13);
  *a4 = result;
  return result;
}

void sub_1006608E4(uint64_t a1)
{
  type metadata accessor for ChartViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1004DCED0();
    if (v2 <= 0x3F)
    {
      sub_1000077F0();
      if (v3 <= 0x3F)
      {
        sub_1001BB2E4(319, &qword_100CAD8E8, &type metadata accessor for ColorSchemeContrast);
        if (v4 <= 0x3F)
        {
          sub_1001BB2E4(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Text.Measurements();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100660A18(uint64_t a1, uint64_t a2)
{
  if ((sub_10060F94C(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ChartView(0);
  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  return static EdgeInsets.== infix(_:_:)();
}

uint64_t sub_100660A9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v200 = a1;
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = sub_100003E5C(v3, &v217);
  v198 = v5;
  __chkstk_darwin(v4);
  sub_1000038E4();
  sub_100003918(v6);
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000038E4();
  v10 = sub_100003918(v9);
  v196[1] = type metadata accessor for AutomationInfo(v10);
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_100003918(v12);
  v13 = type metadata accessor for EnvironmentValues();
  v14 = sub_100003E5C(v13, &v191);
  v169[2] = v15;
  __chkstk_darwin(v14);
  sub_1000038E4();
  sub_100003918(v16);
  v17 = type metadata accessor for AccessibilityChildBehavior();
  v18 = sub_100003E5C(v17, &v216);
  v195 = v19;
  __chkstk_darwin(v18);
  sub_1000038E4();
  v21 = sub_100003918(v20);
  v22 = type metadata accessor for ChartView(v21);
  v23 = sub_100003E5C(v22, &v212);
  v182 = v24;
  __chkstk_darwin(v23);
  v184 = v25;
  sub_100003918(v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for PlotDimensionScaleRange();
  v27 = sub_100003E5C(v26, v196);
  v169[8] = v28;
  __chkstk_darwin(v27);
  sub_1000038E4();
  sub_100003990(v29);
  v30 = sub_10022C350(&qword_100CBABB8, &qword_100A50510);
  sub_100003810(v30);
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = v169 - v32;
  v34 = sub_10022C350(&qword_100CCF4F8, &qword_100A70708);
  sub_100003E5C(v34, v192);
  v175 = v35;
  sub_100003828();
  __chkstk_darwin(v36);
  v38 = v169 - v37;
  v39 = sub_10022C350(&qword_100CCF500, &qword_100A70710);
  sub_100003E5C(v39, v193);
  v169[5] = v40;
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  sub_100003990(v42);
  v43 = sub_10022C350(&qword_100CCF508, &qword_100A70718);
  sub_100003E5C(v43, &v195);
  v169[9] = v44;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  v202 = v46;
  v47 = sub_10022C350(&qword_100CCF510, &qword_100A70720);
  sub_100003E5C(v47, &v199);
  v171 = v48;
  sub_100003828();
  __chkstk_darwin(v49);
  sub_1000039BC();
  sub_100003990(v50);
  v51 = sub_10022C350(&qword_100CCF518, &qword_100A70728);
  sub_100003E5C(v51, &v198);
  v170 = v52;
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  sub_100003990(v54);
  v177 = sub_10022C350(&qword_100CCF520, &qword_100A70730);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v55);
  sub_1000039BC();
  sub_100003990(v56);
  v57 = sub_10022C350(&qword_100CCF528, &qword_100A70738);
  sub_100003E5C(v57, v204);
  v178 = v58;
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  sub_100003990(v60);
  v61 = sub_10022C350(&qword_100CCF530, &qword_100A70740);
  sub_100003E5C(v61, v206);
  v181 = v62;
  sub_100003828();
  __chkstk_darwin(v63);
  sub_1000039BC();
  sub_100003990(v64);
  v186 = sub_10022C350(&qword_100CCF538, &qword_100A70748);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v65);
  sub_1000039BC();
  sub_100003990(v66);
  v193[0] = sub_10022C350(&qword_100CCF540, &qword_100A70750);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v67);
  sub_1000039BC();
  sub_100003990(v68);
  v69 = sub_10022C350(&qword_100CCF548, &qword_100A70758);
  sub_100003E5C(v69, &v215 + 8);
  v193[1] = v70;
  sub_100003828();
  __chkstk_darwin(v71);
  sub_1000039BC();
  sub_100003990(v72);
  v73 = sub_10022C350(&qword_100CCF550, &qword_100A70760);
  sub_100003E5C(v73, &v213 + 8);
  v191 = v74;
  sub_100003828();
  __chkstk_darwin(v75);
  sub_1000039BC();
  sub_100003990(v76);
  v205 = v2;
  sub_10022C350(&qword_100CCF558, &qword_100A70768);
  sub_100669E54();
  Chart.init(content:)();
  v212 = sub_10066323C(v2);
  v77 = type metadata accessor for ScaleType();
  sub_10001B350(v33, 1, 1, v77);
  v78 = sub_10022C350(&qword_100CA72D0, &qword_100A32450);
  v79 = sub_1005F6F6C(&unk_100CCF568);
  v80 = sub_100669EE8(&qword_100CCF570);
  v81 = v169[4];
  View.chartXScale<A>(domain:type:)();
  v82 = v33;
  sub_100018198(v33, &qword_100CBABB8);

  sub_10000E73C();
  v83(v38, v81);
  sub_10022C350(&qword_100CAB9C0, &unk_100A3A830);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_100A2D320;
  v85 = type metadata accessor for ChartViewModel(0);
  *(v84 + 32) = *(v2 + *(v85 + 40));
  v211 = v84;
  v175 = v85;
  v86 = *(v85 + 32);
  v203 = v2;
  if (*(v2 + v86))
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
  }

  v87 = v169[7];
  static PositionScaleRange<>.plotDimension(startPadding:endPadding:)();
  sub_10001B350(v33, 1, 1, v77);
  v88 = sub_10022C350(&qword_100CCF578, &qword_100A88020);
  *&v213 = v81;
  *(&v213 + 1) = v78;
  *&v214 = v79;
  *(&v214 + 1) = v80;
  v89 = sub_10000EC60();
  v90 = sub_100669EE8(&unk_100CCF580);
  v91 = v169[6];
  v92 = v169[11];
  v93 = v201;
  View.chartYScale<A, B>(domain:range:type:)();
  sub_100018198(v82, &qword_100CBABB8);
  sub_10000E73C();
  v94(v87, v92);

  sub_10000E73C();
  v96 = v95(v93, v91);
  v201 = v169;
  __chkstk_darwin(v96);
  v97 = sub_10022C350(&qword_100CCF588, &qword_100A707C0);
  *&v213 = v91;
  *(&v213 + 1) = v88;
  *&v214 = v92;
  *(&v214 + 1) = v89;
  *&v215 = v90;
  *(&v215 + 1) = &protocol witness table for PlotDimensionScaleRange;
  v98 = sub_10000EC60();
  v99 = sub_10022E824(&qword_100CCF590, &qword_100A707C8);
  v100 = sub_10022E824(&qword_100CCF598, &qword_100A707D0);
  v101 = sub_1005F6F6C(&unk_100CCF5A0);
  v102 = sub_100669F6C();
  *&v213 = v99;
  *(&v213 + 1) = v100;
  *&v214 = v101;
  *(&v214 + 1) = v102;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = v169[13];
  v105 = v169[10];
  v106 = v202;
  View.chartXAxis<A>(content:)();
  sub_10000E73C();
  v108 = v107(v106, v105);
  __chkstk_darwin(v108);
  sub_10022C350(&qword_100CCF5C0, &qword_100A707E0);
  *&v213 = v105;
  *(&v213 + 1) = v97;
  *&v214 = v98;
  *(&v214 + 1) = OpaqueTypeConformance2;
  sub_10000EC60();
  v109 = sub_10022E824(&qword_100CCF5C8, &qword_100A707E8);
  v110 = sub_10022E824(&qword_100CCF5D0, &qword_100A707F0);
  v111 = sub_1005F6F6C(&unk_100CCF5D8);
  v112 = sub_10066A048();
  *&v213 = v109;
  *(&v213 + 1) = v110;
  *&v214 = v111;
  *(&v214 + 1) = v112;
  swift_getOpaqueTypeConformance2();
  v113 = v169[12];
  v114 = v173;
  View.chartYAxis<A>(content:)();
  sub_10000E73C();
  v115(v104, v114);
  v116 = v190;
  v117 = v203;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v118 = v174;
  (*(v170 + 32))(v174, v113, v172);
  v119 = v177;
  v120 = (v118 + *(v177 + 36));
  v121 = v214;
  *v120 = v213;
  v120[1] = v121;
  v120[2] = v215;
  v122 = v117;
  v123 = v185;
  sub_10066A598(v122, v185, type metadata accessor for ChartView);
  v124 = (*(v182 + 80) + 16) & ~*(v182 + 80);
  v125 = swift_allocObject();
  sub_10066A100(v123, v125 + v124);
  static Alignment.center.getter();
  v126 = type metadata accessor for ChartBackgroundView(0);
  v127 = sub_10066A19C();
  v128 = sub_10066A554(&unk_100CCF600);
  v129 = v176;
  View.chartBackground<A>(alignment:content:)();

  sub_100018198(v118, &qword_100CCF520);
  v130 = v203 + *(v116 + 32);
  v131 = *v130;
  if (*(v130 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v133 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v134 = v169[1];
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v131, 0);
    sub_10000E73C();
    v135(v134, v169[3]);
    v132 = v194;
    if (v207 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    static AccessibilityChildBehavior.contain.getter();
    goto LABEL_10;
  }

  v132 = v194;
  if (v131)
  {
    goto LABEL_9;
  }

LABEL_7:
  static AccessibilityChildBehavior.ignore.getter();
LABEL_10:
  v207 = v119;
  v208 = v126;
  v209 = v127;
  v210 = v128;
  swift_getOpaqueTypeConformance2();
  v136 = v180;
  v137 = v179;
  View.accessibilityElement(children:)();
  sub_10000E73C();
  v138(v132, v196[0]);
  sub_10000E73C();
  v139(v129, v137);
  type metadata accessor for AutomationCellInfo(0);
  v140 = v196[2];
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v141 = v187;
  v142 = v187 + *(v186 + 36);
  v143 = type metadata accessor for AutomationInfoProperty(0);
  sub_10066A598(v140, v142 + *(v143 + 24), type metadata accessor for AutomationInfo);
  sub_10066C2B0(v140, type metadata accessor for AutomationInfo);
  *v142 = 0;
  *(v142 + 8) = 0xE000000000000000;
  *(v142 + 16) = swift_getKeyPath();
  *(v142 + 24) = 0;
  (*(v181 + 32))(v141, v136, v183);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v144._countAndFlagsBits = 0x203A7472616843;
  v144._object = 0xE700000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v144);
  v145 = v175;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(v203 + *(v175 + 112)));
  v146._countAndFlagsBits = 0;
  v146._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v146);
  v147 = LocalizedStringKey.init(stringInterpolation:)();
  v151 = Text.init(_:tableName:bundle:comment:)(v147, v149, v148 & 1, v150, 0, 0, 0, 0, 0, 256);
  v153 = v152;
  v155 = v154;
  sub_10066A5F4();
  v156 = v188;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v151, v153, v155 & 1);

  sub_100018198(v141, &qword_100CCF538);
  v157 = sub_10066A780();
  v158 = sub_10066A554(&unk_100CCF618);
  v159 = v192[1];
  v160 = v193[0];
  View.accessibilityChartDescriptor<A>(_:)();
  sub_100018198(v156, &qword_100CCF540);
  v161 = v198;
  v162 = v197;
  v163 = v199;
  (*(v198 + 104))(v197, enum case for DynamicTypeSize.large(_:), v199);
  v207 = v160;
  v208 = v145;
  v209 = v157;
  v210 = v158;
  swift_getOpaqueTypeConformance2();
  v164 = v189;
  v165 = v193[2];
  View.dynamicTypeSize(_:)();
  (*(v161 + 8))(v162, v163);
  sub_10000E73C();
  v166(v159, v165);
  v167 = v200;
  (*(v191 + 32))(v200, v164, v192[0]);
  result = sub_10022C350(&qword_100CCF620, &qword_100A70828);
  *(v167 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100661F24@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v3 = sub_10022C350(&qword_100CCDD20, &unk_100A707A0);
  v126 = *(v3 - 8);
  v127 = v3;
  __chkstk_darwin(v3);
  v125 = &v91 - v4;
  v132 = sub_10022C350(&qword_100CCF6A8, &qword_100A708D0);
  v124 = *(v132 - 8);
  __chkstk_darwin(v132);
  v123 = &v91 - v5;
  v6 = sub_10022C350(&qword_100CCDD10, &unk_100A6E9C0);
  __chkstk_darwin(v6 - 8);
  v133 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v131 = &v91 - v9;
  v10 = sub_10022C350(&qword_100CCDCE0, &unk_100A70780);
  __chkstk_darwin(v10 - 8);
  v122 = &v91 - v11;
  v96 = type metadata accessor for ChartPeakMarkStyle();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v98 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ChartPointMarkSeries();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10022C350(&qword_100CCF6B0, &qword_100A708D8);
  v99 = *(v120 - 8);
  __chkstk_darwin(v120);
  v97 = &v91 - v14;
  v15 = sub_10022C350(&qword_100CCDD00, &unk_100A70790);
  __chkstk_darwin(v15 - 8);
  v121 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v119 = &v91 - v18;
  v115 = type metadata accessor for ChartViewModelInterpolationMode();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Date();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v103 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10022C350(&qword_100CCDCE8, &unk_100A6E9B0);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v91 - v21;
  v118 = sub_10022C350(&qword_100CCDD48, &qword_100A708E0);
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v107 = &v91 - v24;
  v25 = sub_10022C350(&qword_100CAC3D8, &qword_100A6EF60);
  __chkstk_darwin(v25 - 8);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v91 - v29;
  v106 = sub_10022C350(&qword_100CCDCD0, &unk_100A6E9A0);
  v104 = *(v106 - 1);
  __chkstk_darwin(v106);
  v32 = &v91 - v31;
  v105 = type metadata accessor for DetailChartGradientModel();
  v33 = *(v105 - 8);
  __chkstk_darwin(v105);
  v35 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ChartKind();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10022C350(&qword_100CCDCB8, &unk_100A70770);
  __chkstk_darwin(v40 - 8);
  v130 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v129 = &v91 - v43;
  v44 = type metadata accessor for ChartViewModel(0);
  (*(v37 + 16))(v39, &a1[v44[5]], v36);
  v45 = (*(v37 + 88))(v39, v36);
  v128 = v44;
  if (v45 == enum case for ChartKind.line(_:))
  {
    (*(v37 + 96))(v39, v36);
    v46 = *(sub_10022C350(&qword_100CAC400, &unk_100A3B370) + 48);
    sub_10011C0F0(v39, v30, &qword_100CAC3D8, &qword_100A6EF60);
    sub_10011C0F0(&v39[v46], v27, &qword_100CAC3D8, &qword_100A6EF60);
    v47 = v103;
    v48 = a1;
    v49 = sub_100668040(v30, v27, a1, v103);
    v106 = &v91;
    __chkstk_darwin(v49);
    *(&v91 - 4) = v27;
    *(&v91 - 3) = a1;
    v89 = v47;
    v90 = v30;
    sub_10022C350(&qword_100CCF6B8, &qword_100A708E8);
    sub_10066ADFC();
    v50 = v110;
    Plot.init(content:)();
    (*(v108 + 8))(v47, v109);
    (*(v114 + 16))(v113, &a1[v44[26]], v115);
    InterpolationMethod.init(_:)();
    sub_1005F6F6C(&qword_100CCDCF0);
    v51 = v107;
    v52 = v112;
    ChartContent.interpolationMethod(_:)();
    (*(v111 + 8))(v50, v52);
    v53 = *(*&v48[v44[22]] + 16);
    v94 = v27;
    v93 = v30;
    v92 = v48;
    if (v53)
    {
      (*(v95 + 16))(v98, &v48[v44[23]], v96);
      v54 = qword_100CA2198;

      v55 = v129;
      if (v54 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004B62B4();
      sub_1004B60A0();
      sub_1004B61C0();
      swift_endAccess();
      v56 = v100;
      ChartPointMarkSeries.init(markers:markStyle:symbolSize:labelFont:fallbackLabelColor:)();
      sub_10066A554(&qword_100CCDD08);
      v57 = v97;
      v58 = v102;
      ChartContent.accessibilityHidden(_:)();
      (*(v101 + 8))(v56, v58);
      v59 = v119;
      v60 = v120;
      (*(v99 + 32))(v119, v57, v120);
      v61 = 0;
    }

    else
    {
      v61 = 1;
      v55 = v129;
      v60 = v120;
      v59 = v119;
    }

    sub_10001B350(v59, v61, 1, v60);
    v67 = v117;
    v68 = v116;
    v69 = v51;
    v70 = v51;
    v71 = v118;
    (*(v117 + 16))(v116, v69, v118);
    v135 = v68;
    v72 = v121;
    sub_1000302D8(v59, v121, &qword_100CCDD00, &unk_100A70790);
    v136 = v72;
    v73 = v122;
    sub_10063A978(&v135, v122);
    sub_100018198(v59, &qword_100CCDD00);
    v74 = *(v67 + 8);
    v74(v70, v71);
    sub_100018198(v72, &qword_100CCDD00);
    v74(v68, v71);
    sub_10011C0F0(v73, v55, &qword_100CCDCE0, &unk_100A70780);
    sub_10022C350(&qword_100CCF6C8, &unk_100A70908);
    swift_storeEnumTagMultiPayload();
    sub_100018198(v94, &qword_100CAC3D8);
    sub_100018198(v93, &qword_100CAC3D8);
    a1 = v92;
  }

  else
  {
    if (v45 != enum case for ChartKind.bar(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v37 + 96))(v39, v36);
    v62 = v105;
    v63 = (*(v33 + 32))(v35, v39, v105);
    __chkstk_darwin(v63);
    v89 = a1;
    v90 = v35;
    sub_10022C350(&qword_100CCF6E0, &qword_100A70940);
    v64 = sub_10022E824(&qword_100CCF6E8, &qword_100A70948);
    v65 = type metadata accessor for RectangleMark();
    v66 = sub_10066AE90();
    v135 = v64;
    v136 = v65;
    v137 = v66;
    v138 = &protocol witness table for RectangleMark;
    swift_getOpaqueTypeConformance2();
    Plot.init(content:)();
    v55 = v129;
    (*(v104 + 32))(v129, v32, v106);
    sub_10022C350(&qword_100CCF6C8, &unk_100A70908);
    swift_storeEnumTagMultiPayload();
    (*(v33 + 8))(v35, v62);
  }

  v75 = v128[8];
  if (*&a1[v75])
  {
    v139 = *&a1[v75];
    swift_getKeyPath();

    sub_10022C350(&qword_100CBAE30, &qword_100A50750);
    sub_10022C350(&qword_100CCF6D0, &qword_100A70938);
    sub_1005F6F6C(&qword_100CBAE40);
    sub_10066A554(&unk_100CCF6D8);
    v76 = sub_10022E824(&qword_100CCDD30, &unk_100A6E9D0);
    v77 = sub_10022E824(&qword_100CCDD38, &unk_100A707B0);
    v135 = type metadata accessor for PointMark();
    v136 = &protocol witness table for PointMark;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v135 = v77;
    v136 = &type metadata for Color;
    v137 = OpaqueTypeConformance2;
    v138 = &protocol witness table for Color;
    v79 = swift_getOpaqueTypeConformance2();
    v135 = v76;
    v136 = &type metadata for Text;
    v137 = v79;
    v138 = &protocol witness table for Text;
    v89 = swift_getOpaqueTypeConformance2();
    v80 = v125;
    ForEach<>.init(_:id:content:)();
    sub_100644498();
    v81 = v123;
    v82 = v127;
    ChartContent.accessibilityHidden(_:)();
    (*(v126 + 8))(v80, v82);
    v84 = v131;
    v83 = v132;
    (*(v124 + 32))(v131, v81, v132);
    v85 = 0;
  }

  else
  {
    v85 = 1;
    v84 = v131;
    v83 = v132;
  }

  sub_10001B350(v84, v85, 1, v83);
  v86 = v130;
  sub_1000302D8(v55, v130, &qword_100CCDCB8, &unk_100A70770);
  v135 = v86;
  v87 = v133;
  sub_1000302D8(v84, v133, &qword_100CCDD10, &unk_100A6E9C0);
  v136 = v87;
  sub_10063AAE4(&v135, v134);
  sub_100018198(v84, &qword_100CCDD10);
  sub_100018198(v55, &qword_100CCDCB8);
  sub_100018198(v87, &qword_100CCDD10);
  return sub_100018198(v86, &qword_100CCDCB8);
}

uint64_t sub_10066323C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChartDateStep(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for ChartViewModel(0);
  v16 = v15[12];
  v32 = a1;
  sub_10066A598(a1 + v16, v8, type metadata accessor for ChartDateStep);
  v17 = sub_10022C350(&qword_100CAC408, &qword_100A6B670);
  v18 = *(v17 + 64);
  sub_10011C0F0(&v8[*(v17 + 48)], v14, &unk_100CB2CF0, &unk_100A2D7F0);
  v19 = type metadata accessor for TimeZone();
  (*(*(v19 - 8) + 8))(&v8[v18], v19);
  sub_1000302D8(v14, v11, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v11, 1, v2) == 1)
  {
    sub_100018198(v14, &unk_100CB2CF0);
    sub_100018198(v11, &unk_100CB2CF0);
    sub_10022C350(&qword_100CAB978, &qword_100A76730);
    v20 = *(v3 + 72);
    v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100A2D320;
    v23 = v22 + v21;
    v24 = *(v3 + 16);
    v25 = v32;
    v24(v23, v32 + v15[19], v2);
    v24(v23 + v20, v25 + v15[20], v2);
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    sub_10022C350(&qword_100CAB978, &qword_100A76730);
    v26 = *(v3 + 72);
    v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100A2D320;
    v28 = v22 + v27;
    v29 = *(v3 + 16);
    v29(v28, v5, v2);
    v29(v28 + v26, (v32 + v15[20]), v2);
    (*(v3 + 8))(v5, v2);
    sub_100018198(v14, &unk_100CB2CF0);
  }

  return v22;
}

uint64_t sub_100663610@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ChartView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v8 - 8);
  v27 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v11 - 8);
  v24 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CCF590, &qword_100A707C8);
  v25 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for ChartViewModel(0);
  v17 = &qword_100CA2000;
  if (*(v2 + *(v16 + 32)))
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = *&xmmword_100D90090 + *(&xmmword_100D90090 + 1) + *(&xmmword_100D90090 + 1);
    v17 = &qword_100CA2000;
  }

  else
  {
    v18 = 0.0;
  }

  v26 = a1;
  if (v17[51] != -1)
  {
    swift_once();
  }

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  static AxisMarkPreset.extended.getter();
  static AxisMarkPosition.bottom.getter();
  sub_100663FBC(v27);
  sub_10066A598(v2, v7, type metadata accessor for ChartView);
  v19 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v21 = v29;
  *(v20 + 16) = v28;
  *(v20 + 32) = v21;
  *(v20 + 48) = v30;
  v22 = v32;
  *(v20 + 56) = v31;
  *(v20 + 72) = v22;
  *(v20 + 88) = v33;
  *(v20 + 96) = v18;
  sub_10066A100(v7, v20 + v19);
  sub_10022C350(&qword_100CCF670, &qword_100A70888);
  sub_10066AB38();
  AxisMarks.init(preset:position:values:content:)();
  sub_10022C350(&qword_100CCF598, &qword_100A707D0);
  sub_1005F6F6C(&unk_100CCF5A0);
  sub_100669F6C();
  AxisContent.compositingLayer<A>(style:)();
  return (*(v25 + 8))(v15, v13);
}

uint64_t sub_100663AE0@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = type metadata accessor for ChartView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10022C350(&qword_100CCF5C8, &qword_100A707E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - v10;
  static AxisMarkPreset.aligned.getter();
  static AxisMarkPosition.trailing.getter();
  v12 = type metadata accessor for ChartViewModel(0);
  sub_1006656A0(*(v1 + *(v12 + 52)), *(v1 + *(v12 + 52) + 8));
  sub_10066A598(v1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChartView);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_10066A100(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_10022C350(&qword_100CCF628, &qword_100A70860);
  sub_10066ABF8(&unk_100CCF630);
  AxisMarks.init(preset:position:values:content:)();
  sub_10022C350(&qword_100CCF5D0, &qword_100A707F0);
  sub_1005F6F6C(&unk_100CCF5D8);
  sub_10066A048();
  AxisContent.compositingLayer<A>(style:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100663E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ChartViewModel(0);
  sub_10066A598(a2 + *(v6 + 56), a3, type metadata accessor for ChartViewModel.Background);
  v7 = type metadata accessor for ChartBackgroundView(0);
  v8 = v7[5];
  v9 = type metadata accessor for ChartProxy();
  (*(*(v9 - 8) + 16))(a3 + v8, a1, v9);
  v10 = *(v6 + 76);
  v11 = v7[6];
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 16))(a3 + v11, a2 + v10, v12);
  v13 = v7[7];
  *(a3 + v13) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100663FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = sub_10022C350(&qword_100CBADB0, &unk_100A708C0);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeZone();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChartDateStep(0);
  __chkstk_darwin(v14 - 8);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10066A598(v2, v16, type metadata accessor for ChartDateStep);
  v17 = sub_10022C350(&qword_100CAC408, &qword_100A6B670);
  v18 = *(v17 + 48);
  (*(v11 + 32))(v13, &v16[*(v17 + 64)], v10);
  (*(v7 + 104))(v9, enum case for Calendar.Component.hour(_:), v6);
  static Calendar.currentCalendar(with:)();
  v19 = type metadata accessor for Calendar();
  sub_10001B350(v5, 0, 1, v19);
  static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
  sub_100018198(v5, &qword_100CBADB0);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  return sub_100018198(&v16[v18], &unk_100CB2CF0);
}

uint64_t sub_1006642B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v157 = a4;
  v162 = a5;
  v7 = *a2;
  v8 = *(a2 + 12);
  v148 = *(a2 + 8);
  v147 = v8;
  v9 = *(a2 + 16);
  v146 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *a3;
  v12 = *(a3 + 12);
  v145 = *(a3 + 8);
  v143 = v12;
  v13 = *(a3 + 16);
  v144 = *(a3 + 24);
  v14 = *(a3 + 32);
  v15 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v15 - 8);
  v128 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v17 - 8);
  v127 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_10022C350(&qword_100CBAE00, &unk_100A506E0);
  v129 = *(v161 - 8);
  __chkstk_darwin(v161);
  v126 = &v120 - v19;
  v125 = type metadata accessor for TimeStyle();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v21 - 8);
  v150 = &v120 - v22;
  v152 = type metadata accessor for DetailChartDataElement();
  v158 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v24 - 8);
  v154 = &v120 - v25;
  v26 = type metadata accessor for Date();
  v164 = *(v26 - 8);
  v165 = v26;
  __chkstk_darwin(v26);
  v163 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10022C350(&qword_100CBADF0, &unk_100A708A0);
  __chkstk_darwin(v28 - 8);
  v160 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v159 = &v120 - v31;
  v32 = sub_10022C350(&qword_100CCF698, &qword_100A881A0);
  __chkstk_darwin(v32);
  v149 = &v120 - v33;
  v34 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v34 - 8);
  v135 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for AxisTick();
  v138 = *(v140 - 8);
  __chkstk_darwin(v140);
  v137 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10022C350(&qword_100CBAE08, &unk_100A708B0);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v136 = &v120 - v39;
  v40 = type metadata accessor for AxisGridLine();
  v130 = *(v40 - 8);
  __chkstk_darwin(v40);
  v42 = &v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10022C350(&qword_100CBAD88, &unk_100A50670);
  v131 = *(v43 - 8);
  __chkstk_darwin(v43);
  v45 = &v120 - v44;
  v134 = sub_10022C350(&qword_100CCF6A0, &unk_100A881B0);
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v120 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v153 = &v120 - v48;
  v49 = sub_10022C350(&qword_100CCF688, &unk_100A70890);
  __chkstk_darwin(v49 - 8);
  v156 = &v120 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v53 = &v120 - v52;
  v54 = AxisValue.isFirst.getter();
  v155 = v53;
  if (v54)
  {
    sub_10001B350(v53, 1, 1, v32);
  }

  else
  {
    v122 = v32;
    v55 = AxisValue.isLast.getter();
    v56 = (v55 & 1) == 0;
    if (v55)
    {
      v57 = v7;
    }

    else
    {
      v57 = v11;
    }

    if (v55)
    {
      v58 = v148;
    }

    else
    {
      v58 = v145;
    }

    if (v55)
    {
      v59 = v147;
    }

    else
    {
      v59 = v143;
    }

    if (v55)
    {
      v60 = v9;
    }

    else
    {
      v60 = v13;
    }

    if (v55)
    {
      v61 = v146;
    }

    else
    {
      v61 = v144;
    }

    v170 = v57;
    v171 = v58 | (v59 << 32);
    v172 = v60;
    if (v56)
    {
      v62 = v14;
    }

    else
    {
      v62 = v10;
    }

    v173 = v61;
    v174 = v62;
    swift_bridgeObjectRetain_n();
    AxisGridLine.init(centered:stroke:)();
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v63 = sub_1004B5F70();
    swift_endAccess();
    v166 = v63;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v130 + 8))(v42, v40);
    v121 = a1;
    AxisValue.isLast.getter();
    v166 = v40;
    v167 = &type metadata for Color;
    v168 = &protocol witness table for AxisGridLine;
    v169 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v64 = v153;
    AxisMark.offset(x:y:)();
    (*(v131 + 8))(v45, v43);
    static AxisTick.Length.automatic.getter();
    v65 = v137;
    AxisTick.init(centered:length:stroke:)();
    swift_beginAccess();
    v66 = sub_1004B5F70();
    swift_endAccess();
    v166 = v66;
    v67 = v136;
    v68 = v140;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v138 + 8))(v65, v68);
    v69 = v132;
    v70 = v133;
    v71 = v64;
    v72 = v134;
    (*(v132 + 16))(v133, v71, v134);
    v166 = v70;
    v73 = v141;
    v74 = v139;
    v75 = v142;
    (*(v141 + 16))(v139, v67, v142);
    v167 = v74;
    v76 = v149;
    sub_1007FEFB4(&v166, v77, v78, v79, v80, v81, v82, v83, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129);
    v84 = *(v73 + 8);
    v84(v67, v75);
    v85 = *(v69 + 8);
    v85(v153, v72);
    v84(v74, v75);
    v85(v70, v72);
    v86 = v76;
    v53 = v155;
    sub_10011C0F0(v86, v155, &qword_100CCF698, &qword_100A881A0);
    sub_10001B350(v53, 0, 1, v122);
  }

  v87 = v154;
  v88 = v165;
  AxisValue.as<A>(_:)();
  v89 = sub_100024D10(v87, 1, v88);
  v90 = v158;
  v92 = v163;
  v91 = v164;
  if (v89 == 1)
  {
    sub_100018198(v87, &unk_100CB2CF0);
    v93 = v159;
LABEL_28:
    sub_10001B350(v93, 1, 1, v161);
    goto LABEL_32;
  }

  (*(v164 + 32))(v163, v87, v88);
  v94 = type metadata accessor for ChartViewModel(0);
  __chkstk_darwin(v94);
  v118 = v92;
  v95 = v150;
  sub_1008DBA9C();
  v96 = v95;
  v97 = v95;
  v98 = v152;
  if (sub_100024D10(v97, 1, v152) == 1)
  {
    sub_100018198(v96, &qword_100CAB930);
    (*(v91 + 8))(v92, v88);
    v93 = v159;
    v53 = v155;
    goto LABEL_28;
  }

  (*(v90 + 32))(v151, v96, v98);
  type metadata accessor for Style();
  v99 = v123;
  static Style.componentTime.getter();
  DetailChartDataElement.dateLabel.getter();
  v100 = v90;
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v101 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v103 = v102;
  v105 = v104;

  v106 = (*(v124 + 8))(v99, v125);
  __chkstk_darwin(v106);
  v115 = v103;
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v118 = sub_10022C350(&qword_100CB9110, &unk_100A506F0);
  v119 = sub_100453B24();
  v116 = sub_10066ADD8;
  v117 = &v112;
  LOBYTE(v115) = 0;
  v114 = 0;
  LOBYTE(v113) = 0;
  v112 = 0;
  v107 = v126;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  sub_10010CD64(v101, v103, v105 & 1);

  (*(v100 + 8))(v151, v152);
  v93 = v159;
  v108 = v161;
  (*(v129 + 32))(v159, v107, v161);
  sub_10001B350(v93, 0, 1, v108);
  (*(v164 + 8))(v163, v165);
  v53 = v155;
LABEL_32:
  v109 = v156;
  sub_1000302D8(v53, v156, &qword_100CCF688, &unk_100A70890);
  v166 = v109;
  v110 = v160;
  sub_1000302D8(v93, v160, &qword_100CBADF0, &unk_100A708A0);
  v167 = v110;
  sub_1007FF14C();
  sub_100018198(v93, &qword_100CBADF0);
  sub_100018198(v53, &qword_100CCF688);
  sub_100018198(v110, &qword_100CBADF0);
  return sub_100018198(v109, &qword_100CCF688);
}

uint64_t sub_10066542C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  v4 = static Date.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

void sub_100665518(uint64_t a5@<X8>)
{
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B61C0();
  swift_endAccess();
  v6 = Text.foregroundColor(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = v10 & 1;
  v14 = static Edge.Set.horizontal.getter();
  AxisValue.isFirst.getter();
  EdgeInsets.init(_all:)();
  *a5 = v6;
  *(a5 + 8) = v8;
  *(a5 + 16) = v13;
  *(a5 + 24) = v12;
  *(a5 + 32) = v19;
  *(a5 + 48) = v20;
  *(a5 + 64) = v21;
  *(a5 + 80) = v14;
  *(a5 + 88) = v15;
  *(a5 + 96) = v16;
  *(a5 + 104) = v17;
  *(a5 + 112) = v18;
  *(a5 + 120) = 0;
}

uint64_t sub_1006656A0(uint64_t a1, char a2)
{
  if (a2)
  {

    return static AxisMarkValues.automatic(desiredCount:roundLowerBound:roundUpperBound:)(a1, 0, 2, 2);
  }

  else
  {
    sub_10014AB54();
    return static AxisMarkValues.stride<A>(by:roundLowerBound:roundUpperBound:)();
  }
}

uint64_t sub_100665724@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v127 = a1;
  v3 = sub_10022C350(&qword_100CCF640, &qword_100A70868);
  __chkstk_darwin(v3);
  v5 = &v102 - v4;
  v6 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v6 - 8);
  v119 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v8 - 8);
  v118 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10022C350(&qword_100CCF658, &qword_100A70878);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v120 = &v102 - v10;
  v11 = sub_10022C350(&qword_100CCF668, &qword_100A70880);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v121 = &v102 - v16;
  v17 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v17 - 8);
  v115 = &v102 - v18;
  v19 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v19 - 8);
  v112 = &v102 - v20;
  v116 = type metadata accessor for Text.Measurements.Context();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v22 - 8);
  v111 = &v102 - v23;
  v24 = type metadata accessor for AxisGridLine();
  v109 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10022C350(&qword_100CBAD88, &unk_100A50670);
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v28 = &v102 - v27;
  v29 = sub_10022C350(&qword_100CCF650, &qword_100A70870);
  __chkstk_darwin(v29 - 8);
  v117 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v126 = &v102 - v32;
  AxisValue.as<A>(_:)();
  if ((BYTE8(v134) & 1) != 0 || (v104 = v14, v105 = v12, v106 = v11, v107 = v5, v33 = *&v134, v34 = type metadata accessor for ChartViewModel(0), v35 = (v127 + v34[11]), v124 = v3, v37 = *v35, v36 = v35[1], v125 = a2, v38 = v35[2], v39 = AxisValue.isFirst.getter(), v40 = AxisValue.isLast.getter(), v41 = v36, v3 = v124, v42 = v38, a2 = v125, sub_100695870(v39 & 1, v40 & 1, v37, v41, v42, v33), !v44))
  {
    v92 = a2;
    v93 = 1;
    v94 = v3;
  }

  else
  {
    v45 = v43;
    v46 = v44;
    v47 = v127;
    if (!*(v127 + v34[8]) && (AxisValue.isLast.getter() & 1) != 0 && *(v47 + v34[10] + 8) <= v33)
    {
      v55 = 1;
      v53 = v126;
      v54 = v110;
    }

    else
    {
      if (qword_100CA2198 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004B62E0(v48, v49, v50);
      v103 = v131;
      v102 = v132;
      v51 = v133;
      swift_endAccess();
      v134 = v103;
      v135 = v102;
      v136 = v51;
      AxisGridLine.init(centered:stroke:)();
      swift_beginAccess();
      v52 = sub_1004B5F70();
      swift_endAccess();
      v129 = v52;
      AxisMark.foregroundStyle<A>(_:)();

      (*(v109 + 8))(v26, v24);
      v53 = v126;
      v54 = v110;
      (*(v108 + 32))(v126, v28, v110);
      v55 = 0;
    }

    sub_10001B350(v53, v55, 1, v54);
    v129 = v45;
    v130 = v46;
    sub_10002D5A4();
    v56 = Text.init<A>(_:)();
    v58 = v57;
    v60 = v59;
    static Font.Weight.semibold.getter();
    v61 = type metadata accessor for Font.Design();
    v62 = v111;
    sub_10001B350(v111, 1, 1, v61);
    static Font.system(size:weight:design:)();
    sub_100018198(v62, &qword_100CA4020);
    v63 = Text.font(_:)();
    v65 = v64;
    v67 = v66;
    v69 = v68;

    sub_10010CD64(v56, v58, v60 & 1);

    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    type metadata accessor for ChartView(0);
    v70 = type metadata accessor for Text.WritingMode();
    sub_10001B350(v112, 1, 1, v70);
    v71 = type metadata accessor for Text.Suffix();
    sub_10001B350(v115, 1, 1, v71);
    v72 = v113;
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    v110 = v63;
    v109 = v65;
    LODWORD(v115) = v67 & 1;
    v111 = v69;
    Text.Measurements.size(of:in:context:)();
    (*(v114 + 8))(v72, v116);
    v73 = swift_beginAccess();
    __chkstk_darwin(v73);
    static AxisValueLabelCollisionResolution.automatic.getter();
    static AxisValueLabelOrientation.automatic.getter();
    v101 = &protocol witness table for Text;
    v99 = &v96;
    v100 = &type metadata for Text;
    v98 = sub_10066AAA4;
    LOBYTE(v97) = 1;
    v96 = 0;
    v74 = v120;
    AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
    sub_1005F6F6C(&qword_100CCF660);
    v75 = v121;
    v76 = v123;
    AxisMark.offset(x:y:)();
    (*(v122 + 8))(v74, v76);
    v77 = v126;
    v78 = v117;
    sub_1000302D8(v126, v117, &qword_100CCF650, &qword_100A70870);
    v128[0] = v78;
    v79 = v105;
    v80 = v104;
    v81 = v106;
    (*(v105 + 16))(v104, v75, v106);
    v128[1] = v80;
    v82 = v107;
    sub_1007FF218(v128, v83, v84, v85, v86, v87, v88, v89, v102, *(&v102 + 1), v103, *(&v103 + 1), v104, v105, v106, v107, v108, v109);
    sub_10010CD64(v110, v109, v115);

    v90 = *(v79 + 8);
    v90(v75, v81);
    sub_100018198(v77, &qword_100CCF650);
    v90(v80, v81);
    sub_100018198(v78, &qword_100CCF650);
    v91 = v125;
    sub_10011C0F0(v82, v125, &qword_100CCF640, &qword_100A70868);
    v92 = v91;
    v93 = 0;
    v94 = v124;
  }

  return sub_10001B350(v92, v93, 1, v94);
}

uint64_t sub_1006663D0@<X0>(uint64_t a5@<X8>)
{
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B61C0();
  swift_endAccess();
  v6 = Text.foregroundColor(_:)();
  v8 = v7;
  v10 = v9;

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v6, v8, v10 & 1);

  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15 & 1;
  *(a5 + 24) = v17;
  return result;
}

uint64_t sub_100666554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v9 = sub_100003A24(a1, a2);
  v11 = *(sub_10022C350(v9, v10) + 36);
  v12 = enum case for BlendMode.plusLighter(_:);
  type metadata accessor for BlendMode();
  sub_1000037E8();
  (*(v13 + 104))(a5 + v11, v12);
  sub_10022C350(a3, a4);
  sub_1000037E8();
  v16 = *(v15 + 16);

  return v16(a5, a1, v14);
}

uint64_t sub_100666620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for AnnotationOverflowResolution();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v40 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnnotationPosition();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v37 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for PointMark();
  v30 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CCDD38, &unk_100A707B0);
  v31 = *(v13 - 8);
  v32 = v13;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_10022C350(&qword_100CCDD30, &unk_100A6E9D0);
  v34 = *(v16 - 8);
  v35 = v16;
  __chkstk_darwin(v16);
  v33 = &v27 - v17;
  LocalizedStringKey.init(stringLiteral:)();
  v36 = a1;
  DetailChartDataElement.date.getter();
  v18 = v28;
  static PlottableValue.value(_:_:)();

  (*(v29 + 8))(v8, v18);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  PointMark.init<A>(x:y:)();
  ChartContent.symbolSize(_:)();
  (*(v30 + 8))(v12, v10);
  v48 = static Color.clear.getter();
  v44 = v10;
  v45 = &protocol witness table for PointMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v32;
  v21 = v33;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v31 + 8))(v15, v20);
  v22 = v37;
  static AnnotationPosition.bottom.getter();
  v23 = v40;
  v24 = static AnnotationOverflowResolution.automatic.getter();
  __chkstk_darwin(v24);
  static Alignment.center.getter();
  v44 = v20;
  v45 = &type metadata for Color;
  v46 = OpaqueTypeConformance2;
  v47 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v25 = v35;
  ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)();
  (*(v42 + 8))(v23, v43);
  (*(v38 + 8))(v22, v39);
  return (*(v34 + 8))(v21, v25);
}

uint64_t sub_100666C9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DetailChartDataElement.ValueLabel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.valueLabel.getter();
  v6 = static ChartValueLabel.with(label:)();
  v8 = v7;
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  static Font.footnote.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10010CD64(v6, v8, v10 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_100666DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for DetailChartGradientModel();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for ChartView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CCF6E8, &qword_100A70948);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v29 = &KeyPath - v14;
  v15 = *(type metadata accessor for ChartViewModel(0) + 24);
  v28 = a1;
  v38 = *(a1 + v15);
  KeyPath = swift_getKeyPath();
  sub_10066A598(a1, v11, type metadata accessor for ChartView);
  (*(v6 + 16))(&KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_10066A100(v11, v18 + v16);
  (*(v6 + 32))(v18 + v17, &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_10022C350(&qword_100CBAE30, &qword_100A50750);
  sub_10022C350(&qword_100CCF710, &unk_100A70960);
  sub_1005F6F6C(&qword_100CBAE40);
  sub_10066A554(&unk_100CCF6D8);
  v19 = sub_10022E824(&qword_100CCF6F8, &qword_100A70950);
  v20 = sub_10022E824(&qword_100CCF700, &qword_100A70958);
  v21 = sub_1005F6F6C(&unk_100CCF708);
  v22 = sub_10002D5A4();
  v34 = v20;
  v35 = &type metadata for String;
  v36 = v21;
  v37 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v19;
  v35 = &type metadata for String;
  v36 = OpaqueTypeConformance2;
  v37 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  ForEach<>.init(_:id:content:)();
  v33 = v28;
  type metadata accessor for RectangleMark();
  sub_10066AE90();
  v25 = v30;
  ChartContent.mask<A>(content:)();
  return (*(v31 + 8))(v24, v25);
}

uint64_t sub_10066728C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = sub_10022C350(&qword_100CCF700, &qword_100A70958);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_10022C350(&qword_100CCF6F8, &qword_100A70950);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  __chkstk_darwin(v11);
  v14 = &v23 - v13;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  sub_10022C350(&qword_100CCF718, &qword_100A70978);
  v15 = sub_10022E824(&qword_100CCF720, &unk_100A70980);
  v32 = type metadata accessor for BarMark();
  v33 = &protocol witness table for BarMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v15;
  v33 = &type metadata for AnyShapeStyle;
  v34 = OpaqueTypeConformance2;
  v35 = &protocol witness table for AnyShapeStyle;
  swift_getOpaqueTypeConformance2();
  Plot.init(content:)();
  v32 = DetailChartDataElement.accessibilityDateString.getter();
  v33 = v17;
  v18 = sub_1005F6F6C(&unk_100CCF708);
  v19 = sub_10002D5A4();
  ChartContent.accessibilityLabel<A>(_:)();

  (*(v8 + 8))(v10, v7);
  v30 = DetailChartDataElement.accessibilityValueDescription.getter();
  v31 = v20;
  v32 = v7;
  v33 = &type metadata for String;
  v34 = v18;
  v35 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v24;
  ChartContent.accessibilityValue<A>(_:)();

  return (*(v25 + 8))(v14, v21);
}

uint64_t sub_1006675BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a3;
  v52 = a2;
  v53 = a4;
  v5 = type metadata accessor for RoundedCornerStyle();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB6950, &unk_100A50770);
  __chkstk_darwin(v7 - 8);
  v47 = &v37 - v8;
  v9 = sub_10022C350(&qword_100CBADB0, &unk_100A708C0);
  __chkstk_darwin(v9 - 8);
  v38 = &v37 - v10;
  v37 = type metadata accessor for Calendar.Component();
  v11 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Date();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v16 - 8);
  v54 = &v37 - v17;
  v18 = type metadata accessor for BarMark();
  v19 = *(v18 - 8);
  v43 = v18;
  v44 = v19;
  __chkstk_darwin(v18);
  v41 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10022C350(&qword_100CCF720, &unk_100A70980);
  v22 = *(v21 - 8);
  v45 = v21;
  v46 = v22;
  __chkstk_darwin(v21);
  v39 = &v37 - v23;
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.date.getter();
  v24 = v37;
  (*(v11 + 104))(v13, enum case for Calendar.Component.hour(_:), v37);
  v25 = type metadata accessor for Calendar();
  v26 = v38;
  sub_10001B350(v38, 1, 1, v25);
  static PlottableValue.value<>(_:_:unit:calendar:)();

  sub_100018198(v26, &qword_100CBADB0);
  (*(v11 + 8))(v13, v24);
  (*(v40 + 8))(v15, v42);
  LocalizedStringKey.init(stringLiteral:)();
  DetailChartDataElement.value.getter();
  v55 = v27;
  static PlottableValue.value(_:_:)();

  v28 = v41;
  BarMark.init<A, B>(x:y:width:height:stacking:)();
  v30 = v48;
  v29 = v49;
  v31 = v50;
  (*(v49 + 104))(v48, enum case for RoundedCornerStyle.continuous(_:), v50);
  v32 = v39;
  v33 = v43;
  ChartContent.cornerRadius(_:style:)();
  (*(v29 + 8))(v30, v31);
  (*(v44 + 8))(v28, v33);
  v34 = sub_100667C3C(a1, v51);
  v56 = &protocol witness table for BarMark;
  v57 = v34;
  v55 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v45;
  ChartContent.foregroundStyle<A>(_:)();

  return (*(v46 + 8))(v32, v35);
}

uint64_t sub_100667C3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DetailChartGradientModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = DetailChartDataElement.color.getter();
  if (v7)
  {
    v9[1] = v7;
  }

  else
  {
    (*(v4 + 16))(v6, a2, v3);
    LinearGradient.init(_:)();
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t sub_100667D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[2] = a2;
  v3 = sub_10022C350(&qword_100CB6950, &unk_100A50770);
  __chkstk_darwin(v3 - 8);
  v12[1] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v12[0] = v12 - v6;
  v7 = sub_10022C350(&qword_100CB6970, &qword_100A70970);
  __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  LocalizedStringKey.init(stringLiteral:)();
  v9 = type metadata accessor for ChartViewModel(0);
  type metadata accessor for Date();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v10 = (a1 + *(v9 + 40));
  v13 = *v10;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v13 = v10[1];
  static PlottableValue.value(_:_:)();

  return RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
}

uint64_t sub_100668040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a4;
  v25 = a2;
  v5 = type metadata accessor for ChartLineStrokeStyle();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CAC3D8, &qword_100A6EF60);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ChartLineStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302D8(a1, v10, &qword_100CAC3D8, &qword_100A6EF60);
  if (sub_100024D10(v10, 1, v14) == 1)
  {
    sub_1000302D8(v25, v13, &qword_100CAC3D8, &qword_100A6EF60);
    if (sub_100024D10(v10, 1, v14) != 1)
    {
      sub_100018198(v10, &qword_100CAC3D8);
    }
  }

  else
  {
    (*(v15 + 32))(v13, v10, v14);
    sub_10001B350(v13, 0, 1, v14);
  }

  if (sub_100024D10(v13, 1, v14) == 1)
  {
    sub_100018198(v13, &qword_100CAC3D8);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    ChartLineStyle.strokeStyle.getter();
    v18 = v26;
    v19 = (*(v26 + 88))(v7, v5);
    if (v19 == enum case for ChartLineStrokeStyle.dashed(_:))
    {
      (*(v15 + 8))(v17, v14);
      (*(v18 + 96))(v7, v5);
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 8))(v7, v20);
    }

    else
    {
      if (v19 == enum case for ChartLineStrokeStyle.solidFrom(_:))
      {
        (*(v15 + 8))(v17, v14);
        (*(v18 + 96))(v7, v5);
        v21 = type metadata accessor for Date();
        return (*(*(v21 - 8) + 32))(v28, v7, v21);
      }

      if (v19 != enum case for ChartLineStrokeStyle.solid(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      (*(v15 + 8))(v17, v14);
    }
  }

  v23 = *(type metadata accessor for ChartViewModel(0) + 76);
  v24 = type metadata accessor for Date();
  return (*(*(v24 - 8) + 16))(v28, v27 + v23, v24);
}

uint64_t sub_1006684AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X8>)
{
  v201 = a4;
  v202 = a1;
  v204 = a3;
  v216 = a2;
  v196 = a5;
  v5 = sub_10022C350(&qword_100CCDD98, &unk_100A6EA10);
  __chkstk_darwin(v5);
  v190 = &v170 - v6;
  v7 = type metadata accessor for ShadowModel();
  __chkstk_darwin(v7 - 8);
  v186 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorSchemeContrast();
  __chkstk_darwin(v9 - 8);
  v184 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for ChartLineMark();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v187 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v185 = &v170 - v13;
  v208 = sub_10022C350(&qword_100CCF728, &qword_100A98420);
  __chkstk_darwin(v208);
  v207 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v206 = &v170 - v16;
  v205 = sub_10022C350(&qword_100CCF730, &qword_100A70990);
  __chkstk_darwin(v205);
  v209 = &v170 - v17;
  v18 = type metadata accessor for DetailChartExtrema();
  v210 = *(v18 - 8);
  v211 = v18;
  __chkstk_darwin(v18);
  v215 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for ChartAreaSeries();
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v174 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_10022C350(&qword_100CCF738, &qword_100A70998);
  v173 = *(v199 - 8);
  __chkstk_darwin(v199);
  v172 = &v170 - v21;
  v22 = sub_10022C350(&qword_100CAC3E0, &qword_100A3B360);
  __chkstk_darwin(v22 - 8);
  v177 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v170 - v25;
  v27 = type metadata accessor for ChartAreaStyle();
  v213 = *(v27 - 8);
  __chkstk_darwin(v27);
  v203 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v171 = &v170 - v30;
  __chkstk_darwin(v31);
  v178 = &v170 - v32;
  v33 = sub_10022C350(&qword_100CCDD58, &qword_100A70900);
  __chkstk_darwin(v33 - 8);
  v192 = &v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v183 = &v170 - v36;
  __chkstk_darwin(v37);
  v198 = &v170 - v38;
  v39 = sub_10022C350(&qword_100CAC3D8, &qword_100A6EF60);
  __chkstk_darwin(v39 - 8);
  v200 = &v170 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v170 - v42;
  v44 = type metadata accessor for ChartLineStyle();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v212 = &v170 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v180 = &v170 - v48;
  __chkstk_darwin(v49);
  v51 = &v170 - v50;
  v52 = sub_10022C350(&qword_100CCDD80, &unk_100A708F0);
  __chkstk_darwin(v52 - 8);
  v195 = &v170 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v194 = &v170 - v55;
  __chkstk_darwin(v56);
  v193 = &v170 - v57;
  __chkstk_darwin(v58);
  v60 = &v170 - v59;
  sub_1000302D8(v202, v43, &qword_100CAC3D8, &qword_100A6EF60);
  v61 = sub_100024D10(v43, 1, v44);
  v191 = v5;
  v182 = v60;
  v181 = v44;
  v214 = v45;
  v197 = v27;
  if (v61 == 1)
  {
    sub_100018198(v43, &qword_100CAC3D8);
    sub_10001B350(v60, 1, 1, v5);
    v62 = v60;
  }

  else
  {
    (*(v45 + 32))(v51, v43, v44);
    ChartLineStyle.areaStyle.getter();
    v63 = sub_100024D10(v26, 1, v27);
    v179 = v51;
    if (v63 == 1)
    {
      sub_100018198(v26, &qword_100CAC3E0);
      v64 = 1;
      v65 = v199;
      v66 = v198;
    }

    else
    {
      (*(v213 + 32))(v178, v26, v27);
      v67 = type metadata accessor for ChartViewModel(0);
      v68 = *(v216 + v67[6]);
      (*(v210 + 16))(v215, v216 + v67[7], v211);
      v202 = v67;
      v69 = v67[20];
      v70 = type metadata accessor for Date();
      sub_10066A554(&qword_100CA7020);

      v71 = v204;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v73 = *(v70 - 8);
      v74 = v73[2];
      v75 = v206;
      v74(v206, v71, v70);
      v76 = v208;
      v74((v75 + *(v208 + 48)), v216 + v69, v70);
      v77 = v207;
      sub_1000302D8(v75, v207, &qword_100CCF728, &qword_100A98420);
      v78 = *(v76 + 48);
      v79 = v73[4];
      v170 = v68;
      v80 = v209;
      v79(v209, v77, v70);
      v81 = v73[1];
      v81(v77 + v78, v70);
      sub_10011C0F0(v75, v77, &qword_100CCF728, &qword_100A98420);
      v79(&v80[*(v205 + 36)], v77 + *(v76 + 48), v70);
      v81(v77, v70);
      v82 = v213;
      v83 = v178;
      v84 = v197;
      (*(v213 + 16))(v171, v178, v197);
      ChartLineStyle.halfLineWidth.getter();
      v85 = v174;
      ChartAreaSeries.init(chartData:dateExtrema:visibleDateRange:yAxisRange:areaStyle:halfLineWidth:useSecondValue:)();
      sub_10066A554(&qword_100CCDD68);
      v86 = v172;
      v87 = v176;
      ChartContent.accessibilityHidden(_:)();
      (*(v175 + 8))(v85, v87);
      (*(v82 + 8))(v83, v84);
      v66 = v198;
      v65 = v199;
      (*(v173 + 32))(v198, v86, v199);
      v64 = 0;
    }

    sub_10001B350(v66, v64, 1, v65);
    v88 = type metadata accessor for ChartViewModel(0);
    v89 = v216;
    v90 = *(v216 + v88[6]);
    (*(v210 + 16))(v215, v216 + v88[7], v211);
    v91 = v89 + v88[19];
    v92 = v89 + v88[20];
    v93 = type metadata accessor for Date();
    sub_10066A554(&qword_100CA7020);

    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v94 = *(v93 - 8);
    v95 = v94[2];
    v202 = v90;
    v96 = v206;
    v95(v206, v91, v93);
    v97 = v208;
    v95((v96 + *(v208 + 48)), v92, v93);
    v98 = v207;
    sub_1000302D8(v96, v207, &qword_100CCF728, &qword_100A98420);
    v99 = *(v97 + 48);
    v100 = v94[4];
    v178 = v88;
    v101 = v209;
    v100(v209, v98, v93);
    v102 = v94[1];
    v102(v98 + v99, v93);
    sub_10011C0F0(v96, v98, &qword_100CCF728, &qword_100A98420);
    v100(&v101[*(v205 + 36)], v98 + *(v97 + 48), v93);
    v102(v98, v93);
    v103 = v181;
    (*(v214 + 16))(v180, v179, v181);
    type metadata accessor for ChartView(0);
    sub_1001C7668();
    static ShadowModel.clear.getter();
    v104 = v185;
    ChartLineMark.init(chartData:dateExtrema:xAxisRange:yAxisRange:lineStyle:colorSchemeContrast:shadow:useSecondValue:showAccessibilityLabels:)();
    v105 = v198;
    v106 = v183;
    sub_1000302D8(v198, v183, &qword_100CCDD58, &qword_100A70900);
    v217 = v106;
    v107 = v188;
    v108 = v187;
    v109 = v189;
    (*(v188 + 16))(v187, v104, v189);
    v218 = v108;
    v110 = v190;
    sub_10063ABE8(&v217, v190);
    v111 = *(v107 + 8);
    v112 = v104;
    v44 = v103;
    v45 = v214;
    v111(v112, v109);
    sub_100018198(v105, &qword_100CCDD58);
    (*(v45 + 8))(v179, v44);
    v111(v108, v109);
    sub_100018198(v106, &qword_100CCDD58);
    v62 = v182;
    sub_10011C0F0(v110, v182, &qword_100CCDD98, &unk_100A6EA10);
    v5 = v191;
    sub_10001B350(v62, 0, 1, v191);
  }

  v113 = v200;
  sub_1000302D8(v201, v200, &qword_100CAC3D8, &qword_100A6EF60);
  v114 = sub_100024D10(v113, 1, v44);
  v116 = v203;
  v115 = v204;
  v117 = v213;
  if (v114 == 1)
  {
    sub_100018198(v113, &qword_100CAC3D8);
    v118 = v193;
    sub_10001B350(v193, 1, 1, v5);
LABEL_17:
    v168 = v194;
    sub_1000302D8(v62, v194, &qword_100CCDD80, &unk_100A708F0);
    v217 = v168;
    v169 = v195;
    sub_1000302D8(v118, v195, &qword_100CCDD80, &unk_100A708F0);
    v218 = v169;
    sub_10063AD44();
    sub_100018198(v118, &qword_100CCDD80);
    sub_100018198(v62, &qword_100CCDD80);
    sub_100018198(v169, &qword_100CCDD80);
    return sub_100018198(v168, &qword_100CCDD80);
  }

  (*(v45 + 32))(v212, v113, v44);
  v119 = v177;
  ChartLineStyle.areaStyle.getter();
  v120 = v197;
  if (sub_100024D10(v119, 1, v197) == 1)
  {
    sub_100018198(v119, &qword_100CAC3E0);
    v121 = 1;
    v122 = v192;
    v123 = v199;
    goto LABEL_15;
  }

  (*(v117 + 32))(v116, v119, v120);
  v124 = type metadata accessor for ChartViewModel(0);
  v125 = *(v216 + v124[6]);
  (*(v210 + 16))(v215, v216 + v124[7], v211);
  v201 = v124;
  v126 = v124[20];
  v127 = type metadata accessor for Date();
  sub_10066A554(&qword_100CA7020);
  v202 = v125;

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v128 = *(v127 - 8);
    v129 = v128[2];
    v130 = v206;
    v129(v206, v115, v127);
    v131 = v208;
    v129((v130 + *(v208 + 48)), v216 + v126, v127);
    v132 = v207;
    sub_1000302D8(v130, v207, &qword_100CCF728, &qword_100A98420);
    v133 = *(v131 + 48);
    v134 = v128[4];
    v135 = v209;
    v134(v209, v132, v127);
    v136 = v128[1];
    v136(v132 + v133, v127);
    sub_10011C0F0(v130, v132, &qword_100CCF728, &qword_100A98420);
    v134(&v135[*(v205 + 36)], v132 + *(v131 + 48), v127);
    v136(v132, v127);
    v137 = v213;
    v138 = v203;
    v139 = v197;
    (*(v213 + 16))(v171, v203, v197);
    ChartLineStyle.halfLineWidth.getter();
    v140 = v174;
    ChartAreaSeries.init(chartData:dateExtrema:visibleDateRange:yAxisRange:areaStyle:halfLineWidth:useSecondValue:)();
    sub_10066A554(&qword_100CCDD68);
    v141 = v172;
    v142 = v176;
    ChartContent.accessibilityHidden(_:)();
    (*(v175 + 8))(v140, v142);
    (*(v137 + 8))(v138, v139);
    v122 = v192;
    v123 = v199;
    (*(v173 + 32))(v192, v141, v199);
    v121 = 0;
LABEL_15:
    sub_10001B350(v122, v121, 1, v123);
    v143 = type metadata accessor for ChartViewModel(0);
    v144 = v216;
    v145 = *(v216 + v143[6]);
    (*(v210 + 16))(v215, v216 + v143[7], v211);
    v146 = v144 + v143[19];
    v147 = v144 + v143[20];
    v148 = type metadata accessor for Date();
    sub_10066A554(&qword_100CA7020);

    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v149 = *(v148 - 8);
      v150 = v149;
      v211 = v143;
      v151 = *(v149 + 16);
      v152 = v206;
      v151(v206, v146, v148);
      v153 = v208;
      v151((v152 + *(v208 + 48)), v147, v148);
      v154 = v207;
      sub_1000302D8(v152, v207, &qword_100CCF728, &qword_100A98420);
      v155 = *(v153 + 48);
      v156 = *(v150 + 32);
      v213 = v145;
      v157 = v209;
      v156(v209, v154, v148);
      v158 = *(v150 + 8);
      v158(v154 + v155, v148);
      sub_10011C0F0(v152, v154, &qword_100CCF728, &qword_100A98420);
      v156(&v157[*(v205 + 36)], v154 + *(v153 + 48), v148);
      v158(v154, v148);
      v159 = v181;
      (*(v214 + 16))(v180, v212, v181);
      type metadata accessor for ChartView(0);
      sub_1001C7668();
      static ShadowModel.clear.getter();
      v160 = v185;
      ChartLineMark.init(chartData:dateExtrema:xAxisRange:yAxisRange:lineStyle:colorSchemeContrast:shadow:useSecondValue:showAccessibilityLabels:)();
      v161 = v192;
      v162 = v183;
      sub_1000302D8(v192, v183, &qword_100CCDD58, &qword_100A70900);
      v217 = v162;
      v163 = v188;
      v164 = v187;
      v165 = v189;
      (*(v188 + 16))(v187, v160, v189);
      v218 = v164;
      v166 = v190;
      sub_10063ABE8(&v217, v190);
      v167 = *(v163 + 8);
      v167(v160, v165);
      sub_100018198(v161, &qword_100CCDD58);
      (*(v214 + 8))(v212, v159);
      v167(v164, v165);
      sub_100018198(v162, &qword_100CCDD58);
      v118 = v193;
      sub_10011C0F0(v166, v193, &qword_100CCDD98, &unk_100A6EA10);
      sub_10001B350(v118, 0, 1, v191);
      v62 = v182;
      goto LABEL_17;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_100669E54()
{
  result = qword_100CCF560;
  if (!qword_100CCF560)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = sub_10022E824(&qword_100CCF558, &qword_100A70768);
    v5[0] = sub_100644138();
    v5[1] = sub_1006443D8();
    v4 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v4);
    atomic_store(result, &qword_100CCF560);
  }

  return result;
}

unint64_t sub_100669EE8(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    v8 = sub_10022E824(v6, v7);
    v9 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v8, &v9);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100669F6C()
{
  result = qword_100CCF5A8;
  if (!qword_100CCF5A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCF598, &qword_100A707D0);
    v4[0] = sub_1005F6F6C(&unk_100CCF5B0);
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCF5A8);
  }

  return result;
}

unint64_t sub_10066A048()
{
  result = qword_100CCF5E0;
  if (!qword_100CCF5E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCF5D0, &qword_100A707F0);
    v4[0] = sub_1005F6F6C(&unk_100CCF5E8);
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCF5E0);
  }

  return result;
}

uint64_t sub_10066A100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10066A19C()
{
  result = qword_100CCF5F8;
  if (!qword_100CCF5F8)
  {
    v7[18] = v0;
    v7[19] = v1;
    v6 = sub_10022E824(&qword_100CCF520, &qword_100A70730);
    v5 = sub_10022E824(&qword_100CCF510, &qword_100A70720);
    v4 = sub_10022E824(&qword_100CCF5C0, &qword_100A707E0);
    sub_10022E824(&qword_100CCF508, &qword_100A70718);
    sub_10022E824(&qword_100CCF588, &qword_100A707C0);
    sub_10022E824(&qword_100CCF500, &qword_100A70710);
    sub_10022E824(&qword_100CCF578, &qword_100A88020);
    type metadata accessor for PlotDimensionScaleRange();
    sub_10022E824(&qword_100CCF4F8, &qword_100A70708);
    sub_10022E824(&qword_100CA72D0, &qword_100A32450);
    sub_1005F6F6C(&unk_100CCF568);
    sub_100669EE8(&qword_100CCF570);
    swift_getOpaqueTypeConformance2();
    v7[6] = sub_100669EE8(&unk_100CCF580);
    v7[7] = &protocol witness table for PlotDimensionScaleRange;
    swift_getOpaqueTypeConformance2();
    sub_10022E824(&qword_100CCF590, &qword_100A707C8);
    sub_10022E824(&qword_100CCF598, &qword_100A707D0);
    sub_1005F6F6C(&unk_100CCF5A0);
    sub_100669F6C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_10022E824(&qword_100CCF5C8, &qword_100A707E8);
    sub_10022E824(&qword_100CCF5D0, &qword_100A707F0);
    sub_1005F6F6C(&unk_100CCF5D8);
    sub_10066A048();
    v7[2] = v5;
    v7[3] = v4;
    v7[4] = OpaqueTypeConformance2;
    v7[5] = swift_getOpaqueTypeConformance2();
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v7);
    atomic_store(result, &qword_100CCF5F8);
  }

  return result;
}

unint64_t sub_10066A554(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10066A598(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

unint64_t sub_10066A5F4()
{
  result = qword_100CCF608;
  if (!qword_100CCF608)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = sub_10022E824(&qword_100CCF538, &qword_100A70748);
    v4 = sub_10022E824(&qword_100CCF528, &qword_100A70738);
    sub_10022E824(&qword_100CCF520, &qword_100A70730);
    type metadata accessor for ChartBackgroundView(255);
    v5[4] = sub_10066A19C();
    v5[5] = sub_10066A554(&unk_100CCF600);
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_10066A554(&qword_100CA3F68);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CCF608);
  }

  return result;
}

unint64_t sub_10066A780()
{
  result = qword_100CCF610;
  if (!qword_100CCF610)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCF540, &qword_100A70750);
    v4[0] = sub_10066A5F4();
    v4[1] = sub_10066A554(&qword_100CE1750);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCF610);
  }

  return result;
}

uint64_t sub_10066A854(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = sub_10002C90C();
  sub_100003810(v4);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(v2, v6);
}

unint64_t sub_10066A8D8()
{
  result = qword_100CCF638;
  if (!qword_100CCF638)
  {
    v5[6] = v0;
    v5[7] = v1;
    v3 = sub_10022E824(&qword_100CCF640, &qword_100A70868);
    v5[0] = sub_10066A9DC();
    v4[1] = sub_10022E824(&qword_100CCF658, &qword_100A70878);
    v4[2] = sub_1005F6F6C(&qword_100CCF660);
    v5[1] = swift_getOpaqueTypeConformance2();
    v4[0] = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, v4);
    atomic_store(result, &qword_100CCF638);
  }

  return result;
}

unint64_t sub_10066A9DC()
{
  result = qword_100CCF648;
  if (!qword_100CCF648)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = sub_10022E824(&qword_100CCF650, &qword_100A70870);
    v4[1] = type metadata accessor for AxisGridLine();
    v4[2] = &type metadata for Color;
    v4[3] = &protocol witness table for AxisGridLine;
    v4[4] = &protocol witness table for Color;
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCF648);
  }

  return result;
}

uint64_t sub_10066AABC()
{
  v3 = sub_10002C90C();
  sub_100003810(v3);
  v5 = v1 + ((*(v4 + 80) + 104) & ~*(v4 + 80));

  return sub_1006642B4(v0, v1 + 16, v1 + 56, v5, v2);
}

unint64_t sub_10066AB38()
{
  result = qword_100CCF678;
  if (!qword_100CCF678)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = sub_10022E824(&qword_100CCF670, &qword_100A70888);
    v5[0] = sub_10066ABF8(&qword_100CCF680);
    v5[1] = sub_100453998();
    v4 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v4);
    atomic_store(result, &qword_100CCF678);
  }

  return result;
}

unint64_t sub_10066ABF8(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = sub_100003A24(0, v3);
    v8 = sub_10022E824(v6, v7);
    v9 = v5();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v8, &v9);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10066AC6C()
{
  result = qword_100CCF690;
  if (!qword_100CCF690)
  {
    v5[8] = v0;
    v5[9] = v1;
    v3 = sub_10022E824(&qword_100CCF698, &qword_100A881A0);
    sub_10022E824(&qword_100CBAD88, &unk_100A50670);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v4[1] = type metadata accessor for AxisTick();
    v4[2] = &type metadata for Color;
    v4[3] = &protocol witness table for AxisTick;
    v4[4] = &protocol witness table for Color;
    v5[1] = swift_getOpaqueTypeConformance2();
    v4[0] = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, v4);
    atomic_store(result, &qword_100CCF690);
  }

  return result;
}

unint64_t sub_10066ADFC()
{
  result = qword_100CCF6C0;
  if (!qword_100CCF6C0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = sub_10022E824(&qword_100CCF6B8, &qword_100A708E8);
    v5[0] = sub_100644720();
    v5[1] = v5[0];
    v4 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v4);
    atomic_store(result, &qword_100CCF6C0);
  }

  return result;
}

unint64_t sub_10066AE90()
{
  result = qword_100CCF6F0;
  if (!qword_100CCF6F0)
  {
    v6[11] = v0;
    v6[12] = v1;
    v3 = sub_10022E824(&qword_100CCF6E8, &qword_100A70948);
    v4 = sub_10022E824(&qword_100CCF6F8, &qword_100A70950);
    sub_10022E824(&qword_100CCF700, &qword_100A70958);
    sub_1005F6F6C(&unk_100CCF708);
    v5 = sub_10002D5A4();
    v6[1] = v4;
    v6[2] = &type metadata for String;
    v6[3] = swift_getOpaqueTypeConformance2();
    v6[4] = v5;
    v6[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v6);
    atomic_store(result, &qword_100CCF6F0);
  }

  return result;
}

uint64_t sub_10066AFE4()
{
  v3 = *(sub_10002C90C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for DetailChartGradientModel();
  sub_100003810(v6);
  v8 = v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_10066728C(v0, v1 + v4, v8, v2);
}

void sub_10066B0FC(uint64_t a1)
{
  type metadata accessor for ChartViewModel.Background(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChartProxy();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_1001BB2E4(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10066B1CC()
{
  result = qword_100CCF7D8;
  if (!qword_100CCF7D8)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = sub_10022E824(&qword_100CCF620, &qword_100A70828);
    v4 = sub_10022E824(&qword_100CCF548, &qword_100A70758);
    sub_10022E824(&qword_100CCF540, &qword_100A70750);
    type metadata accessor for ChartViewModel(255);
    v5[4] = sub_10066A780();
    v5[5] = sub_10066A554(&unk_100CCF618);
    v5[2] = v4;
    v5[3] = swift_getOpaqueTypeConformance2();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_1005F6F6C(&qword_100CCA190);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CCF7D8);
  }

  return result;
}

double sub_10066B370@<D0>(uint64_t a1@<X8>)
{
  v6 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = sub_1004B5F4C();
  v10 = *(v6 + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(v8 + v10, v11, v12);
  *v8 = v9;
  v8[1] = v9;
  RoundedRectangle.path(in:)();
  sub_10066C2B0(v8, &type metadata accessor for RoundedRectangle);
  result = *&v16;
  v14 = v17;
  *a1 = v16;
  *(a1 + 16) = v14;
  *(a1 + 32) = v18;
  return result;
}

double sub_10066B504@<D0>(uint64_t a1@<X8>)
{
  sub_10066B370(v8);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_10066B550(void *a1))(void *a1)
{
  v2 = sub_10023FBC0(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return sub_10023DD88;
}

uint64_t sub_10066B5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10066C304();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10066B628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10066C304();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10066B68C(uint64_t a1)
{
  v2 = sub_10066C304();

  return Shape.body.getter(a1, v2);
}

void *sub_10066B6D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = static Alignment.center.getter();
  v5 = v4;
  sub_10066B790(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  sub_1000302D8(__dst, &v7, &qword_100CCF7E0, &qword_100A70A10);
  sub_100018198(v10, &qword_100CCF7E0);
  *a1 = v3;
  a1[1] = v5;
  return memcpy(a1 + 2, __dst, 0xD0uLL);
}

uint64_t sub_10066B790@<X0>(void *a1@<X8>)
{
  sub_10066B9B8(__src);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_1004B5F70();
  swift_endAccess();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v3 = v15;
  v4 = v16;
  v5 = HIDWORD(v16);
  v6 = v17;
  v7 = v18;
  v8 = v19;
  v9 = static Alignment.center.getter();
  v11 = v10;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v21, __src, 0x82uLL);
  memcpy(v13, __src, 0x82uLL);
  v22[0] = v15;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  v22[4] = v19;
  v22[5] = v2;
  LOWORD(v22[6]) = 256;
  v22[7] = v9;
  v22[8] = v11;
  memcpy(&v13[136], v22, 0x48uLL);
  memcpy(a1, v13, 0xD0uLL);
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v2;
  v30 = 256;
  v31 = v9;
  v32 = v11;
  sub_1000302D8(v21, v33, &qword_100CCF7E8, &qword_100A70A18);
  sub_1000302D8(v22, v33, &qword_100CCF7F0, &qword_100A70A20);
  sub_100018198(&v23, &qword_100CCF7F0);
  memcpy(v33, __dst, 0x82uLL);
  return sub_100018198(v33, &qword_100CCF7E8);
}

void *sub_10066B9B8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  v7 = type metadata accessor for ChartViewModel.Background(0);
  __chkstk_darwin(v7 - 8);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10066A598(v2, v9, type metadata accessor for ChartViewModel.Background);
  v10 = sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
  if (sub_100024D10(v9, 1, v10) == 1)
  {
    sub_10066C1A4(v21);
    memcpy(v20, v21, 0x82uLL);
    sub_10022C350(&qword_100CCF800, &qword_100A70A30);
    sub_10066C0C0();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v11 = *v9;
    sub_10011C0F0(v9 + *(v10 + 48), v6, &unk_100CB2CF0, &unk_100A2D7F0);

    v12 = static Alignment.center.getter();
    v14 = v13;
    sub_10066BD08(v6, v20);
    v16[0] = v12;
    v16[1] = v14;
    memcpy(&v16[2], v20, 0x61uLL);
    memcpy(&__src[6], v16, 0x71uLL);
    v17[0] = v12;
    v17[1] = v14;
    memcpy(v18, v20, sizeof(v18));
    sub_1000302D8(v16, v21, &qword_100CCF7F8, &qword_100A70A28);
    sub_100018198(v17, &qword_100CCF7F8);
    v19[0] = v11;
    LOWORD(v19[1]) = 256;
    memcpy(&v19[1] + 2, __src, 0x77uLL);
    memcpy(v20, v19, 0x81uLL);
    sub_10066C0B4(v20);
    memcpy(v21, v20, 0x82uLL);
    sub_1000302D8(v19, __src, &qword_100CCF800, &qword_100A70A30);
    sub_10022C350(&qword_100CCF800, &qword_100A70A30);
    sub_10066C0C0();
    _ConditionalContent<>.init(storage:)();

    sub_100018198(v19, &qword_100CCF800);
    memcpy(v21, __src, 0x82uLL);
    sub_100018198(v6, &unk_100CB2CF0);
    memcpy(__src, v21, 0x82uLL);
  }

  return memcpy(a1, __src, 0x82uLL);
}

void *sub_10066BD08@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000302D8(a1, v7, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_100018198(v7, &unk_100CB2CF0);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    type metadata accessor for ChartBackgroundView(0);
    if (static Date.> infix(_:_:)())
    {
      ChartProxy.position<A>(forX:)();
      if ((v12 & 1) == 0)
      {
        v15 = static VerticalAlignment.center.getter();
        v21[0] = 1;
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v16 = v27;
        v17 = v29;
        v19 = v31;
        v18 = v32;
        v24 = 1;
        v23 = v28;
        v22 = v30;
        v20 = static Color.white.getter();
        v25 = 0;
        v33[0] = v15;
        v33[1] = 0;
        LOBYTE(v33[2]) = v21[0];
        v33[3] = 0;
        LOBYTE(v33[4]) = v24;
        v33[5] = v16;
        LOBYTE(v33[6]) = v23;
        v33[7] = v17;
        LOBYTE(v33[8]) = v22;
        v33[9] = v19;
        v33[10] = v18;
        v33[11] = v20;
        LOBYTE(v33[12]) = 0;
        sub_10022C350(&qword_100CCF828, &unk_100A70A40);
        sub_1005F6F6C(&unk_100CCF830);
        _ConditionalContent<>.init(storage:)();
        (*(v9 + 8))(v11, v8);
        memcpy(v33, v26, 0x61uLL);
        return memcpy(a3, v33, 0x61uLL);
      }
    }

    (*(v9 + 8))(v11, v8);
  }

  v13 = static Color.white.getter();
  LOBYTE(v27) = 1;
  v26[0] = v13;
  LOBYTE(v26[12]) = 1;
  sub_10022C350(&qword_100CCF828, &unk_100A70A40);
  sub_1005F6F6C(&unk_100CCF830);
  _ConditionalContent<>.init(storage:)();
  return memcpy(a3, v33, 0x61uLL);
}

unint64_t sub_10066C0C0()
{
  result = qword_100CCF808;
  if (!qword_100CCF808)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCF800, &qword_100A70A30);
    v4[0] = sub_1005F6F6C(&unk_100CCF810);
    v4[1] = sub_1005F6F6C(&unk_100CCF820);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCF808);
  }

  return result;
}

unint64_t sub_10066C204()
{
  result = qword_100CCF858;
  if (!qword_100CCF858)
  {
    result = swift_getWitnessTable(byte_100A70AC8, &type metadata for ChartBackgroundShape, v0, v1);
    atomic_store(result, &qword_100CCF858);
  }

  return result;
}

unint64_t sub_10066C25C()
{
  result = qword_100CCF860;
  if (!qword_100CCF860)
  {
    result = swift_getWitnessTable(byte_100A70A78, &type metadata for ChartBackgroundShape, v0, v1);
    atomic_store(result, &qword_100CCF860);
  }

  return result;
}

uint64_t sub_10066C2B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10066C304()
{
  result = qword_100CCF868;
  if (!qword_100CCF868)
  {
    result = swift_getWitnessTable(byte_100A70B18, &type metadata for ChartBackgroundShape, v0, v1);
    atomic_store(result, &qword_100CCF868);
  }

  return result;
}

uint64_t type metadata accessor for ScrubberDayView(uint64_t a1)
{
  result = qword_100CCF8C8;
  if (!qword_100CCF8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10066C3CC(uint64_t a1)
{
  type metadata accessor for ScrubberDay(319);
  if (v1 <= 0x3F)
  {
    sub_100578820(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10066C47C()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for LayoutDirection();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = type metadata accessor for ScrubberDayView(0);
  sub_10066D458(v0 + *(v18 + 28), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
  }

  v20 = (*(v13 + 88))(v17, v11);
  if (v20 == enum case for LayoutDirection.leftToRight(_:))
  {
    v21 = *(v0 + *(type metadata accessor for ScrubberDay(0) + 20));
  }

  else
  {
    v22 = v20;
    v23 = enum case for LayoutDirection.rightToLeft(_:);
    v21 = *(v0 + *(type metadata accessor for ScrubberDay(0) + 20));
    if (v22 == v23)
    {

      sub_1002EC2FC();
      return v24;
    }

    else
    {
      v25 = *(v13 + 8);

      v25(v17, v11);
    }
  }

  return v21;
}

BOOL sub_10066C744()
{
  v1 = sub_10022C350(&qword_100CBD410, &unk_100A542F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v36 - v5;
  v6 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for LayoutDirection();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v22 = v21 - v20;
  v23 = *(type metadata accessor for ScrubberDayView(0) + 28);
  v37 = v0;
  sub_10066D458(v0 + v23, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v18 + 32))(v22, v15, v16);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v24 = v6;
    v25 = v3;
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v3 = v25;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v12, v24);
  }

  v27 = (*(v18 + 88))(v22, v16);
  if (v27 == enum case for LayoutDirection.leftToRight(_:))
  {
    return 0;
  }

  if (v27 != enum case for LayoutDirection.rightToLeft(_:))
  {
    (*(v18 + 8))(v22, v16);
    return 0;
  }

  v28 = sub_10066C47C();
  v29 = v36;
  sub_1003DFBD0(v28, v36);

  v30 = type metadata accessor for ScrubberHour(0);
  if (sub_100024D10(v29, 1, v30) != 1)
  {
    v32 = *(v29 + *(v30 + 20));
    sub_10066D4C8(v29);
    if (v32 != 1)
    {
      return 1;
    }

    v33 = sub_10066C47C();
    sub_1002F553C(v33);

    if (sub_100024D10(v3, 1, v30) == 1)
    {
      v29 = v3;
      goto LABEL_7;
    }

    v34 = v3[*(v30 + 20)];
    sub_10066D4C8(v3);
    if (v34 != 1)
    {
      return 1;
    }

    v35 = *(sub_10066C47C() + 16);

    return v35 <= 1;
  }

LABEL_7:
  sub_1000180EC(v29, &qword_100CBD410, &unk_100A542F0);
  return 1;
}

uint64_t sub_10066CB2C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  type metadata accessor for ColorRenderingMode();
  sub_1000037C4();
  v23 = v3;
  v24 = v2;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for ScrubberDayView(0);
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10022C350(&qword_100CBD8C8, &unk_100A550D0);
  sub_1000037C4();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_10022C350(&qword_100CCF908, &qword_100A70BC8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  v18 = *(sub_10066C47C() + 16);

  if (v18)
  {
    sub_10066D3E8(v1, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScrubberDayView);
    v19 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v20 = swift_allocObject();
    sub_10066D2FC(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    (*(v23 + 104))(v6, enum case for ColorRenderingMode.nonLinear(_:), v24);
    Canvas<>.init(opaque:colorMode:rendersAsynchronously:renderer:)();
    (*(v11 + 16))(v17, v14, v9);
    swift_storeEnumTagMultiPayload();
    sub_1005284D4();
    _ConditionalContent<>.init(storage:)();
    return (*(v11 + 8))(v14, v9);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1005284D4();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10066CE5C(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v25 = a1;
  v24 = type metadata accessor for GraphicsContext.Shading();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CCF910, &qword_100A70BD0);
  __chkstk_darwin(v23);
  v10 = (&v23 - v9);
  result = sub_10066C47C();
  v12 = result;
  v13 = 0;
  v14 = *(result + 16);
  v15 = (v6 + 8);
  while (1)
  {
    if (v14 == v13)
    {
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    v16 = type metadata accessor for ScrubberHour(0);
    v17 = v12 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v13;
    v18 = v10 + *(v23 + 48);
    *v10 = v13;
    sub_10066D3E8(v17, v18, type metadata accessor for ScrubberHour);
    if (sub_10066C744())
    {
      type metadata accessor for ScrubberDayView(0);
    }

    v19 = type metadata accessor for ScrubberDayView(0);
    v20 = __chkstk_darwin(v19);
    *(&v23 - 6) = v21;
    *(&v23 - 5) = 0;
    *(&v23 - 4) = v20;
    *(&v23 - 3) = a4;
    *(&v23 - 2) = a2;
    Path.init(_:)();
    v22 = *(v18 + *(v16 + 20));

    if (v22 == 1)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.gray.getter();
      Color.opacity(_:)();
    }

    static GraphicsContext.Shading.color(_:)();

    GraphicsContext.fill(_:with:style:)();

    sub_1001A8674(v26);
    (*v15)(v8, v24);
    result = sub_1000180EC(v10, &qword_100CCF910, &qword_100A70BD0);
    ++v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10066D190(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for RoundedCornerStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScrubberDayView(0);
  (*(v7 + 104))(v9, enum case for RoundedCornerStyle.continuous(_:), v6);
  v11[0] = 0x3FF0000000000000;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0x3FF0000000000000;
  v11[4] = 0;
  v11[5] = 0;
  Path.addRoundedRect(in:cornerSize:style:transform:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10066D2FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScrubberDayView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10066D360(uint64_t *a1, double a2, double a3)
{
  v7 = *(type metadata accessor for ScrubberDayView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10066CE5C(a1, v8, a2, a3);
}

uint64_t sub_10066D3E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10066D458(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10066D4C8(uint64_t a1)
{
  v2 = type metadata accessor for ScrubberHour(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10066D524()
{
  result = qword_100CCF918;
  if (!qword_100CCF918)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCF920, &qword_100A70BD8);
    v4[0] = &protocol witness table for EmptyView;
    v4[1] = sub_1005284D4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCF918);
  }

  return result;
}

BOOL sub_10066D5D8(void *a1, void *a2)
{
  type metadata accessor for DetailComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  __chkstk_darwin(v7 - 8);
  v9 = (&v28 - v8);
  v10 = sub_10022C350(&qword_100CAA958, &qword_100A5B780);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = *a1 == *a2 && a1[1] == a2[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = _s10PolarModelVMa(0);
  sub_10001BC88(v16[6]);
  if ((static PolarType.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[7]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[8]);
  if ((static TimeZone.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[9]);
  if ((static AttributedString.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1001CAA30();
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = v16[11];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v19 == *v21 && v20 == v21[1];
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[12]);
  if ((static SunriseSunsetDetailChartViewModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[13]);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[14]);
  if ((static DaylightStringBuilder.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_10001BC88(v16[15]);
  if ((static OverviewTableViewModel.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v23 = v16[16];
  v24 = *(v10 + 48);
  sub_10066D8E4(a1 + v23, v13);
  sub_10066D8E4(a2 + v23, &v13[v24]);
  sub_100003A40(v13);
  if (v14)
  {
    sub_100003A40(&v13[v24]);
    if (v14)
    {
      sub_1000180EC(v13, &qword_100CA7188, &qword_100A35360);
      return 1;
    }

    goto LABEL_33;
  }

  sub_10066D8E4(v13, v9);
  sub_100003A40(&v13[v24]);
  if (v25)
  {
    sub_10066D954(v9);
LABEL_33:
    sub_1000180EC(v13, &qword_100CAA958, &qword_100A5B780);
    return 0;
  }

  sub_10066D9B0(&v13[v24], v6);
  v27 = sub_100428860(v9, v6);
  sub_10066D954(v6);
  sub_10066D954(v9);
  sub_1000180EC(v13, &qword_100CA7188, &qword_100A35360);
  return (v27 & 1) != 0;
}

uint64_t sub_10066D8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10066D954(uint64_t a1)
{
  v2 = type metadata accessor for DetailComponentContainerViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10066D9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailComponentContainerViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10066DA14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10066DA54(uint64_t result, int a2, int a3)
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

uint64_t sub_10066DAB4()
{
  sub_10022C350(&qword_100CCB7A0, qword_100A6AE00);
  result = Dictionary.init(dictionaryLiteral:)();
  qword_100D90758 = result;
  return result;
}

uint64_t sub_10066DB04(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  if (qword_100CA24A0 != -1)
  {
    swift_once();
  }

  sub_1002DCC84();
  if ((v4 & 1) == 0)
  {
    return sub_10066DD28(v3, sub_10066E074, 0, a1);
  }
}

double sub_10066DBDC@<D0>(void *a1@<X8>)
{
  if (qword_100CA24A0 != -1)
  {
    swift_once();
  }

  *a1 = qword_100D90758;

  return result;
}

uint64_t sub_10066DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(a1, a3, v8);

  return sub_10060CE0C(a4, a2);
}

uint64_t sub_10066DCF8(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;

  return a2;
}

uint64_t sub_10066DD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_10066DD9C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_10066DD9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  sub_10066E038(a1, a2, a3, v39);
  v7 = v39[1];
  v8 = v39[3];
  v9 = v39[4];
  v35 = v39[5];
  v36 = v39[0];
  v10 = (v39[2] + 64) >> 6;

  v33 = v7;
  v34 = a5;
  if (v9)
  {
    while (1)
    {
      v40 = a4;
      v11 = v8;
LABEL_8:
      v13 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
      v14 = *(*(v36 + 56) + v13);
      v38[0] = *(*(v36 + 48) + v13);
      v38[1] = v14;

      v35(v37, v38);

      v15 = v37[0];
      v16 = v37[1];
      v17 = *a5;
      v20 = sub_1000D5F5C(v37[0], v18);
      v21 = *(v17 + 16);
      v22 = (v19 & 1) == 0;
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v19;
      if (*(v17 + 24) >= v23)
      {
        if ((v40 & 1) == 0)
        {
          sub_10022C350(&qword_100CCF9F8, &qword_100A70E78);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_10060BBA8(v23, v40 & 1);
        v26 = sub_1000D5F5C(v15, v25);
        if ((v24 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v20 = v26;
      }

      v9 &= v9 - 1;
      v28 = *a5;
      if (v24)
      {
        v38[0] = *(v28[7] + 8 * v20);

        sub_10035DC70(v16);
        *(v28[7] + 8 * v20) = v38[0];
      }

      else
      {
        v28[(v20 >> 6) + 8] |= 1 << v20;
        *(v28[6] + 8 * v20) = v15;
        *(v28[7] + 8 * v20) = v16;
        v29 = v28[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_23;
        }

        v28[2] = v31;
      }

      a4 = 1;
      v8 = v11;
      v7 = v33;
      a5 = v34;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_10027FAE8();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v40 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10066E038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_10066E074@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10066DCF8(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10066E384()
{
  result = qword_100CCFA00;
  if (!qword_100CCFA00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CGFloat, &type metadata for CGFloat, v0, v1);
    atomic_store(result, &qword_100CCFA00);
  }

  return result;
}

unint64_t sub_10066E3DC()
{
  result = qword_100CCFA08;
  if (!qword_100CCFA08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CGFloat, &type metadata for CGFloat, v0, v1);
    atomic_store(result, &qword_100CCFA08);
  }

  return result;
}

uint64_t sub_10066E558@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007612D4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_10066E7B0(void *a1@<X8>)
{
  sub_10076719C();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t sub_10066EAF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = static MoonPhase.read(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10066EB38@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10076AD40(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 2) = BYTE2(result);
  }

  return result;
}

void sub_10066ECB0(void *a1@<X8>)
{
  sub_10076D3DC(v3);
  if (!v1)
  {
    memcpy(a1, v3, 0x80uLL);
  }
}

void sub_10066ED50(void *a1@<X8>)
{
  sub_10076D550();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t sub_10066EE80@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_10076E440(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_10066EEC8(void *a1@<X8>, uint64_t a2@<X0>)
{
  sub_10076E4E8(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }
}

double sub_10066EF18@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_10076E670(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_10066EFCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = static UVIndex.ExposureCategory.read(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10066F044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = static Wind.CompassDirection.read(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10066F11C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = static WeatherChange.Direction.read(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

double sub_10066F314@<D0>(_OWORD *a1@<X8>)
{
  sub_1007720E8();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

void *sub_10066F3C4@<X0>(void *a1@<X8>)
{
  result = sub_100772494();
  if (!v1)
  {
    return memcpy(a1, __src, 0xE8uLL);
  }

  return result;
}

unint64_t sub_10066F85C()
{
  result = qword_100CCFA10;
  if (!qword_100CCFA10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CGFloat, &type metadata for CGFloat, v0, v1);
    atomic_store(result, &qword_100CCFA10);
  }

  return result;
}

uint64_t sub_10066F8B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WindComponentViewModel(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = (a1 + *(type metadata accessor for WindComponent(0) + 20));
  memcpy(v48, v9, sizeof(v48));
  v10 = v9[1];
  v55 = v9[2];
  v56 = v10;
  v11 = v48[7];
  v44 = v48[6];
  v12 = v48[9];
  v45 = v48[8];
  v46 = v48[0];
  v13 = v9[5];
  v53 = v9[6];
  v54 = v13;
  v14 = v48[15];
  v42 = v48[1];
  v43 = v48[14];
  v15 = v9[10];
  v51 = v9[11];
  v52 = v15;
  v16 = v9[12];
  v17 = v48[26];
  v49 = *(v9 + 216);
  v50 = v16;
  v18 = *(v5 + 76);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_100358150(&v56, v47);
  sub_100358150(&v55, v47);
  sub_100358150(&v54, v47);
  sub_100358150(&v53, v47);
  sub_100358150(&v52, v47);
  sub_100358150(&v51, v47);
  sub_100358150(&v50, v47);
  sub_100358150(&v49, v47);
  sub_10066FCAC(v48, v8 + v18);
  sub_10022C350(&qword_100CCFAE0, &unk_100A73280);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100A3BBA0;
  v20 = v55;
  *(v8 + 16) = v56;
  *(v8 + 32) = v20;
  v21 = v53;
  *(v8 + 80) = v54;
  *(v8 + 96) = v21;
  v22 = v51;
  *(v8 + 128) = v52;
  *(v8 + 144) = v22;
  v23 = v49;
  *(v8 + 160) = v50;
  *(v19 + 32) = v44;
  *(v19 + 40) = v11;
  *(v19 + 48) = v46;
  *(v19 + 56) = v42;
  *(v19 + 64) = v43;
  *(v19 + 72) = v14;
  *(v19 + 80) = v45;
  *(v19 + 88) = v12;
  v24 = v48[19];
  v25 = v48[16];
  v26 = v48[17];
  *(v19 + 96) = v48[18];
  *(v19 + 104) = v24;
  *(v19 + 112) = v25;
  *(v19 + 120) = v26;
  *v8 = v46;
  *(v8 + 8) = v42;
  *(v8 + 48) = v44;
  *(v8 + 56) = v11;
  *(v8 + 64) = v45;
  *(v8 + 72) = v12;
  *(v8 + 112) = v43;
  *(v8 + 120) = v14;
  *(v8 + 176) = v17;
  *(v8 + 184) = v23;
  *(v8 + *(v5 + 80)) = v19;
  v27 = objc_opt_self();

  v28 = [v27 mainBundle];
  v57._object = 0x8000000100ADAB50;
  sub_1000080F4();
  v57._countAndFlagsBits = 0xD000000000000036;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v31, v32, v57);

  *a2 = v33;
  *(a2 + 16) = 1684957559;
  *(a2 + 24) = 0xE400000000000000;
  *(a2 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v34 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100670384(v8, a2 + v34[5]);
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v35 = a2 + v34[8];
  v36 = *(sub_10022C350(&qword_100CA6690, &unk_100A5B6A0) + 48);
  v37 = enum case for DetailCondition.wind(_:);
  v38 = type metadata accessor for DetailCondition();
  (*(*(v38 - 8) + 104))(v35, v37, v38);
  *(v35 + v36) = 0;
  v39 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v35, 0, 1, v39);
  sub_10013D288();
  v40 = Dictionary.init(dictionaryLiteral:)();
  result = sub_1006703E8(v8);
  *(a2 + v34[6]) = 256;
  *(a2 + v34[7]) = v40;
  return result;
}

uint64_t sub_10066FCAC@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v40 = type metadata accessor for Locale.Language();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Locale();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WindComponentCompassViewStyle();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v50 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v35 - v7;
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v60._object = 0x8000000100ADAB90;
  v10._countAndFlagsBits = 87;
  v10._object = 0xE100000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0xD000000000000024;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v60);

  v13 = [v8 mainBundle];
  v61._object = 0x8000000100ADABC0;
  v14._countAndFlagsBits = 69;
  v14._object = 0xE100000000000000;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v61._countAndFlagsBits = 0xD000000000000024;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v61);

  v17 = [v8 mainBundle];
  v62._object = 0x8000000100ADABF0;
  v62._countAndFlagsBits = 0xD000000000000025;
  v18._countAndFlagsBits = 78;
  v18._object = 0xE100000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v62);

  v21 = [v8 mainBundle];
  v63._object = 0x8000000100ADAC20;
  v63._countAndFlagsBits = 0xD000000000000025;
  v22._countAndFlagsBits = 83;
  v22._object = 0xE100000000000000;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v63);

  sub_10022C350(&qword_100CA7300, &qword_100A51110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A3B020;
  countAndFlagsBits = v12._countAndFlagsBits;
  *(inited + 32) = v12;
  v47 = v16._countAndFlagsBits;
  *(inited + 48) = v16;
  v45 = v20._countAndFlagsBits;
  *(inited + 64) = v20;
  v42 = v24._countAndFlagsBits;
  *(inited + 80) = v24;
  object = v12._object;

  v46 = v16._object;

  v44 = v20._object;

  v41 = v24._object;

  v26 = 0;
  do
  {
    v27 = v26 + 16;
    if (v26 == 64)
    {
      break;
    }

    v28 = String.count.getter();

    v26 = v27;
  }

  while (v28 == 1);

  v29 = v43;
  *v43 = v27 == 80;
  (*(v53 + 104))(v29, enum case for WindComponentCompassViewStyle.cardinalDirectionsInline(_:), v54);
  if (WindComponentCompassViewStyle.canPrimaryLabelShowWindDirection.getter())
  {
    v30 = v35;
    static Locale.current.getter();
    v31 = v38;
    Locale.language.getter();
    (*(v36 + 8))(v30, v37);
    LOBYTE(v30) = Locale.Language.isHebrew.getter();
    (*(v39 + 8))(v31, v40);
    if (v30)
    {
      v59 = *(v51 + 12);
      v57 = 47;
      v58 = 0xE100000000000000;
      v55 = 10;
      v56 = 0xE100000000000000;
      sub_10002D5A4();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    }

    else
    {
    }
  }

  else
  {
  }

  v33 = v53;
  v32 = v54;
  (*(v53 + 16))(v50, v29, v54);
  WindComponentCompassViewModel.init(style:angle:primaryLabel:secondaryLabel:primaryLabelLineLimit:northString:eastString:southString:westString:)();
  return (*(v33 + 8))(v29, v32);
}

uint64_t sub_100670384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WindComponentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006703E8(uint64_t a1)
{
  v2 = type metadata accessor for WindComponentViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100670448()
{
  type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons(0);
  *(swift_allocObject() + 16) = &_swiftEmptyDictionarySingleton;
  ObservationRegistrar.init()();
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_1006704BC()
{
  sub_10000FE4C();
  result = EnvironmentValues.isWindowFocused.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_10067050C()
{
  v0 = type metadata accessor for WeatherMapPresentationState(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MainViewModel(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  sub_1000A3D20(&v7[*(v5 + 44)], v3, type metadata accessor for WeatherMapPresentationState);
  sub_100097CF4(v7, type metadata accessor for MainViewModel);
  v8 = v3[*(v1 + 44)];
  sub_100097CF4(v3, type metadata accessor for WeatherMapPresentationState);
  if (v8 == 1)
  {
    if (qword_100CA2058 != -1)
    {
      swift_once();
    }
  }

  else
  {
    static Animation.easeInOut.getter();
  }

  return Transaction.animation.setter();
}

unint64_t sub_1006706BC()
{
  result = qword_100CCFB30;
  if (!qword_100CCFB30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCFB28, &qword_100A73438);
    v4[0] = sub_100670774();
    v4[1] = sub_100006F64(&qword_100CCFB90, &qword_100CCFB98, &qword_100A734C8, byte_100A56A50);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCFB30);
  }

  return result;
}

unint64_t sub_100670774()
{
  result = qword_100CCFB38;
  if (!qword_100CCFB38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCFB20, &qword_100A73430);
    v4[0] = sub_100082EE8();
    v4[1] = sub_100670800();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCFB38);
  }

  return result;
}

unint64_t sub_100670800()
{
  result = qword_100CCFB88;
  if (!qword_100CCFB88)
  {
    result = swift_getWitnessTable(a9_23, &type metadata for DisableAnimatedBackgroundsWhenFullscreenMapVisibleModifier, v0, v1);
    atomic_store(result, &qword_100CCFB88);
  }

  return result;
}

uint64_t sub_1006708A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MainViewModel(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  sub_1000A3D20(&v10[*(v8 + 44)], v6, type metadata accessor for WeatherMapPresentationState);
  sub_100097CF4(v10, type metadata accessor for MainViewModel);
  v11 = *(v6 + 1);
  sub_100097CF4(v6, type metadata accessor for WeatherMapPresentationState);
  LOBYTE(v8) = (v11 & 0xC0) == 64;
  type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons(0);
  sub_1004C70C8();
  v12 = Environment.init<A>(_:)();
  LOBYTE(v6) = v13;
  v14 = sub_10022C350(&qword_100CCFBA0, &qword_100A73530);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = sub_10022C350(&qword_100CCFBA8, &qword_100A73538);
  v16 = a2 + *(result + 36);
  *v16 = v12;
  *(v16 + 8) = v6 & 1;
  *(v16 + 9) = v8;
  return result;
}

unint64_t sub_100670A94()
{
  result = qword_100CCFBB0;
  if (!qword_100CCFBB0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCFBA8, &qword_100A73538);
    v4[0] = sub_100006F64(&qword_100CCFBB8, &qword_100CCFBA0, &qword_100A73530, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CCFBC0, &qword_100CCFBC8, &qword_100A73570, aAo);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCFBB0);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for NetworkState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 4;
    v8 = v6 - 4;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100670D0C(void *a1)
{
  sub_10022C350(&qword_100CCFBD8, &qword_100A736B8);
  sub_1000037C4();
  __chkstk_darwin(v3);
  v4 = sub_1000161C0(a1, a1[3]);
  sub_100671438();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11[0] = 0;
    sub_10067148C();
    sub_10001072C(&type metadata for NetworkState.CodingType, v11);
    if (v11[1])
    {
      v6 = sub_10001C984();
      v7(v6);
      v4 = 4;
    }

    else
    {
      v10[0] = 1;
      sub_1006714E0();
      sub_10001072C(&type metadata for NetworkInterface, v10);
      v8 = sub_10001C984();
      v9(v8);
      v4 = v10[1];
    }
  }

  sub_100006F14(a1);
  return v4;
}

uint64_t sub_100670EBC(void *a1, unsigned __int8 a2)
{
  v5 = a2;
  v6 = sub_10022C350(&qword_100CCFBF8, &qword_100A736C0);
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  sub_1000161C0(a1, a1[3]);
  sub_100671438();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v5 == 4)
  {
    v18 = 1;
    v17 = 0;
    sub_100671534();
LABEL_5:
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v8 + 8))(v11, v6);
  }

  v16 = 0;
  sub_100671534();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = a2;
    v14 = 1;
    sub_100671588();
    goto LABEL_5;
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_100671070(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006710C0(char a1)
{
  if (a1)
  {
    return 0x656E696C66666FLL;
  }

  else
  {
    return 0x6C62616863616572;
  }
}

uint64_t sub_100671120@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_100C44D10;
  result = sub_100671070(*a1, v3);
  *a2 = result;
  return result;
}

uint64_t sub_100671158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100206308(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10067118C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_100C44D10;
  result = sub_100671070(a1, v3);
  *a2 = result;
  return result;
}

uint64_t sub_1006711BC(uint64_t a1)
{
  v2 = sub_100671438();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006711F8(uint64_t a1)
{
  v2 = sub_100671438();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100671258@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  v3._rawValue = &off_100C44D60;
  result = sub_100671070(*a1, v3);
  *a2 = result;
  return result;
}

uint64_t sub_100671290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1006710C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10067136C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100670D0C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1006713B4(uint64_t a1)
{
  sub_1006715DC();

  return ShortDescribable.description.getter();
}

uint64_t sub_1006713F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100778854(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100671438()
{
  result = qword_100CCFBE0;
  if (!qword_100CCFBE0)
  {
    result = swift_getWitnessTable(a1_24, &type metadata for NetworkState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCFBE0);
  }

  return result;
}

unint64_t sub_10067148C()
{
  result = qword_100CCFBE8;
  if (!qword_100CCFBE8)
  {
    result = swift_getWitnessTable(byte_100A73898, &type metadata for NetworkState.CodingType, v0, v1);
    atomic_store(result, &qword_100CCFBE8);
  }

  return result;
}

unint64_t sub_1006714E0()
{
  result = qword_100CCFBF0;
  if (!qword_100CCFBF0)
  {
    result = swift_getWitnessTable(aV, &type metadata for NetworkInterface, v0, v1);
    atomic_store(result, &qword_100CCFBF0);
  }

  return result;
}

unint64_t sub_100671534()
{
  result = qword_100CCFC00;
  if (!qword_100CCFC00)
  {
    result = swift_getWitnessTable(byte_100A73870, &type metadata for NetworkState.CodingType, v0, v1);
    atomic_store(result, &qword_100CCFC00);
  }

  return result;
}

unint64_t sub_100671588()
{
  result = qword_100CCFC08;
  if (!qword_100CCFC08)
  {
    result = swift_getWitnessTable(a9v, &type metadata for NetworkInterface, v0, v1);
    atomic_store(result, &qword_100CCFC08);
  }

  return result;
}

unint64_t sub_1006715DC()
{
  result = qword_100CCFC10;
  if (!qword_100CCFC10)
  {
    result = swift_getWitnessTable(aI_56, &type metadata for NetworkState, v0, v1);
    atomic_store(result, &qword_100CCFC10);
  }

  return result;
}

_BYTE *sub_100671640(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100671720()
{
  result = qword_100CCFC18;
  if (!qword_100CCFC18)
  {
    result = swift_getWitnessTable(aY_72, &type metadata for NetworkState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCFC18);
  }

  return result;
}

unint64_t sub_100671778()
{
  result = qword_100CCFC20;
  if (!qword_100CCFC20)
  {
    result = swift_getWitnessTable(byte_100A73848, &type metadata for NetworkState.CodingType, v0, v1);
    atomic_store(result, &qword_100CCFC20);
  }

  return result;
}

unint64_t sub_1006717D0()
{
  result = qword_100CCFC28;
  if (!qword_100CCFC28)
  {
    result = swift_getWitnessTable(byte_100A736E0, &type metadata for NetworkState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCFC28);
  }

  return result;
}

unint64_t sub_100671828()
{
  result = qword_100CCFC30;
  if (!qword_100CCFC30)
  {
    result = swift_getWitnessTable(aZ_3, &type metadata for NetworkState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CCFC30);
  }

  return result;
}

unint64_t sub_10067187C()
{
  result = qword_100CCFC38;
  if (!qword_100CCFC38)
  {
    result = swift_getWitnessTable(aA_56, &type metadata for NetworkState.CodingType, v0, v1);
    atomic_store(result, &qword_100CCFC38);
  }

  return result;
}

void sub_1006718D4()
{
  sub_10000C778();
  v248 = v0;
  v244 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000038E4();
  v247 = v2;
  v3 = sub_1000038CC();
  v240 = type metadata accessor for TimeState(v3);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v231 = v5;
  v6 = sub_1000038CC();
  v239 = type metadata accessor for NotificationsOptInState(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000038E4();
  v246 = v8;
  v9 = sub_1000038CC();
  v237 = type metadata accessor for NotificationsState(v9);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v245 = v11;
  v12 = sub_1000038CC();
  v228 = type metadata accessor for LocationsState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v243 = v14;
  v15 = sub_1000038CC();
  v234 = type metadata accessor for EnvironmentState(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  v242 = v17;
  v18 = sub_1000038CC();
  *(&v215 + 1) = type metadata accessor for AppConfigurationState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v241 = v20;
  v21 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_10000E70C();
  v222 = v24;
  v25 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_10000E70C();
  v238 = v28;
  v29 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v30 = sub_100003810(v29);
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v236 = v32;
  v33 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_10000E70C();
  v235 = v36;
  v37 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_10000E70C();
  v233 = v40;
  v41 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  v224 = v44;
  v45 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_10000E70C();
  v221 = v48;
  v49 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_10000E70C();
  v232 = v52;
  sub_1000038CC();
  v219 = type metadata accessor for UUID();
  sub_1000037C4();
  v218 = v53;
  __chkstk_darwin(v54);
  sub_1000038E4();
  v217 = v55;
  v56 = sub_1000038CC();
  v57 = type metadata accessor for ModalViewState(v56);
  sub_1000037E8();
  __chkstk_darwin(v58);
  sub_100003C38();
  v61 = v59 - v60;
  __chkstk_darwin(v62);
  v64 = &v205 - v63;
  __chkstk_darwin(v65);
  v67 = &v205 - v66;
  __chkstk_darwin(v68);
  v70 = &v205 - v69;
  v71 = sub_10022C350(&qword_100CB0F88, &qword_100A73910);
  v72 = sub_100003810(v71);
  __chkstk_darwin(v72);
  v74 = &v205 - v73;
  v75 = type metadata accessor for PresentedLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v76);
  v78 = &v205 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = [objc_opt_self() currentDevice];
  v80 = [v79 userInterfaceIdiom];

  if (!v80)
  {
    v81 = v67;
    v213 = v57;
    v211 = v61;
    v212 = v64;
    v214 = v70;
    *&v215 = v78;
    v82 = v247;
    v83 = v248;
    sub_100962FAC(0, v74);
    sub_1000038B4(v74, 1, v75);
    if (v84)
    {
      sub_1000180EC(v74, &qword_100CB0F88, &qword_100A73910);
    }

    else
    {
      v85 = v215;
      sub_100673B88(v74, v215, type metadata accessor for PresentedLocation);
      v86 = v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
      sub_100024974();
      sub_100020FE8();
      sub_1000BC914(v87, v88, v89);
      swift_storeEnumTagMultiPayload();
      sub_1000BC008();
      v91 = v90;
      sub_1000DFFE8(v81, type metadata accessor for ModalViewState);
      sub_1000DFFE8(v61, type metadata accessor for ModalViewState);
      if (v91)
      {
        v206 = v86;
        if (qword_100CA26E0 != -1)
        {
          sub_100019C5C(&qword_100CA26E0);
        }

        v92 = type metadata accessor for Logger();
        sub_10000703C(v92, qword_100D90B08);
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();
        v95 = os_log_type_enabled(v93, v94);
        v96 = *(&v215 + 1);
        if (v95)
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&_mh_execute_header, v93, v94, "Found presentedLocationIdentifier. Remove none-presented locations weather data.", v97, 2u);
        }

        v98 = v83 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
        v99 = *(v98 + 16);
        __chkstk_darwin(v100);
        v204 = v85;

        v210 = sub_100672C94(sub_100672C50, &v203, v99, type metadata accessor for LocationWeatherDataState, sub_100673648, type metadata accessor for LocationWeatherDataState, type metadata accessor for LocationWeatherDataState);

        v102 = *(v98 + 24);
        __chkstk_darwin(v101);
        v204 = v85;

        v209 = sub_100672C94(sub_100672E3C, &v203, v102, type metadata accessor for LocationAvailableDataSetState, sub_10067341C, type metadata accessor for LocationAvailableDataSetState, type metadata accessor for LocationAvailableDataSetState);

        v103 = v217;
        UUID.init()();
        v208 = UUID.uuidString.getter();
        v207 = v104;
        (*(v218 + 8))(v103, v219);
        sub_100003934();
        sub_10001B350(v105, v106, v107, v96);
        sub_100003934();
        sub_10001B350(v108, v109, v110, v234);
        v111 = v224;
        sub_100003934();
        sub_10001B350(v112, v113, v114, v228);
        sub_100003934();
        sub_10001B350(v115, v116, v117, v237);
        sub_100003934();
        sub_10001B350(v118, v119, v120, v239);
        sub_100003934();
        sub_10001B350(v121, v122, v123, v240);
        sub_100003934();
        sub_10001B350(v124, v125, v126, v244);
        v127 = v222;
        sub_100003934();
        v128 = v213;
        sub_10001B350(v129, v130, v131, v213);
        sub_100024974();
        v132 = v211;
        sub_1000BC914(v206, v211, v133);
        sub_100020FE8();
        sub_1002AB08C(v134, v135, v136, v137);
        v138 = sub_10000C834();
        sub_1000038B4(v138, v139, v128);
        if (v84)
        {
          sub_1000180EC(v127, &qword_100CA65E8, &unk_100A31410);
        }

        else
        {
          sub_1000DFFE8(v132, type metadata accessor for ModalViewState);
          sub_100014C4C();
          sub_100673B88(v127, v132, v145);
        }

        v146 = v241;
        sub_100014C4C();
        sub_100673B88(v132, v147, v148);
        v149 = v248;
        v150 = *(v248 + 16);
        v223 = *(v248 + 24);
        sub_100020FE8();
        sub_1002AB08C(v151, v152, v153, v154);
        v155 = sub_10000C834();
        sub_1000038B4(v155, v156, v96);
        v157 = v245;
        v247 = v150;
        if (v84)
        {
          v158 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
          sub_1000BC914(v158, v146, v159);
          v160 = sub_10000C834();
          v162 = sub_100024D10(v160, v161, v96);

          v163 = v231;
          if (v162 != 1)
          {
            sub_1000180EC(v127, &qword_100CA6640, qword_100A32640);
          }
        }

        else
        {
          sub_100673B88(v127, v146, type metadata accessor for AppConfigurationState);

          v163 = v231;
        }

        sub_100020FE8();
        sub_1002AB08C(v164, v165, v166, v167);
        v168 = sub_10000C834();
        v169 = v234;
        sub_1000038B4(v168, v170, v234);
        if (v84)
        {
          v171 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
          swift_beginAccess();
          sub_1000BC914(v149 + v171, v242, type metadata accessor for EnvironmentState);
          v172 = sub_10000C834();
          sub_1000038B4(v172, v173, v169);
          v174 = v246;
          v175 = v226;
          if (!v84)
          {
            sub_1000180EC(v127, &qword_100CA6638, &unk_100A31460);
          }
        }

        else
        {
          sub_100673B88(v127, v242, type metadata accessor for EnvironmentState);
          v174 = v246;
          v175 = v226;
        }

        v176 = v111;
        v177 = v225;
        sub_1002AB08C(v176, v225, &qword_100CA6630, &unk_100A32630);
        sub_100003A40(v177);
        if (v84)
        {
          v178 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
          sub_1000BC914(v178, v243, v179);
          sub_100003A40(v177);
          v180 = v82;
          if (!v84)
          {
            sub_1000180EC(v177, &qword_100CA6630, &unk_100A32630);
          }
        }

        else
        {
          sub_100673B88(v177, v243, type metadata accessor for LocationsState);
          v180 = v82;
        }

        sub_1002AB08C(v233, v175, &qword_100CA6628, &unk_100A31450);
        sub_1000038B4(v175, 1, v237);
        if (v84)
        {
          v181 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
          sub_1000BC914(v181, v157, v182);
          sub_100003A40(v175);
          v183 = v236;
          if (!v84)
          {
            sub_1000180EC(v175, &qword_100CA6628, &unk_100A31450);
          }
        }

        else
        {
          sub_100673B88(v175, v157, type metadata accessor for NotificationsState);
          v183 = v236;
        }

        v184 = v227;
        sub_1002AB08C(v235, v227, &qword_100CA6620, &unk_100A32620);
        v185 = v239;
        sub_1000038B4(v184, 1, v239);
        if (v84)
        {
          v186 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
          sub_1000BC914(v186, v174, v187);
          sub_1000038B4(v184, 1, v185);
          if (!v84)
          {
            sub_1000180EC(v184, &qword_100CA6620, &unk_100A32620);
          }
        }

        else
        {
          sub_100673B88(v184, v174, type metadata accessor for NotificationsOptInState);
        }

        v188 = v229;
        sub_1002AB08C(v183, v229, &qword_100CA6618, &unk_100A31440);
        v189 = v240;
        sub_1000038B4(v188, 1, v240);
        v190 = v247;
        if (v84)
        {
          v191 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
          sub_1000BC914(v191, v163, v192);
          sub_1000038B4(v188, 1, v189);
          if (!v84)
          {
            sub_1000180EC(v188, &qword_100CA6618, &unk_100A31440);
          }
        }

        else
        {
          sub_100673B88(v188, v163, type metadata accessor for TimeState);
        }

        v193 = v230;
        sub_1002AB08C(v238, v230, &qword_100CA6610, &unk_100A32610);
        sub_100003A40(v193);
        if (v84)
        {
          v194 = sub_100013AC4(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
          sub_1000BC914(v194, v180, v195);
          sub_100003A40(v193);
          if (!v84)
          {
            sub_1000180EC(v193, &qword_100CA6610, &unk_100A32610);
          }
        }

        else
        {
          sub_100673B88(v193, v180, type metadata accessor for ViewState);
        }

        sub_100014C4C();
        v196 = v214;
        sub_100673B88(v212, v214, v197);
        v198 = *(v149 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
        v199 = *(v149 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
        v200 = *(v149 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
        v201 = *(v149 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
        type metadata accessor for MainState._Storage(0);
        swift_allocObject();
        LOBYTE(v203) = v198;
        sub_10003E038(v190, v223, v241, v242, v243, v245, v246, v163, v180, v196, v208, v207, v210, v209, v203, v199, v200, v201, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);

        sub_10000CD98();
        sub_1000DFFE8(v215, v202);
      }

      else
      {
        if (qword_100CA26E0 != -1)
        {
          sub_100019C5C(&qword_100CA26E0);
        }

        v140 = type metadata accessor for Logger();
        sub_10000703C(v140, qword_100D90B08);
        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          *v143 = 0;
          _os_log_impl(&_mh_execute_header, v141, v142, "DiscardNonePresentedLocationDataStateProcessor: A modal view is presented. Skip cleaning up state", v143, 2u);
        }

        sub_10000CD98();
        sub_1000DFFE8(v85, v144);
      }
    }
  }

  sub_10000536C();
}

uint64_t sub_100672B34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = sub_10022C350(a4, a5);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = (v22 - v13);
  v15 = *a1;
  v16 = a1[1];
  *v14 = v15;
  v14[1] = v16;
  sub_1000BC914(a2, v22 + *(v17 + 56) - v13, a6);

  if (v15 == Location.Identifier.id.getter() && v16 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_1000180EC(v14, a4, a5);
  return v20 & 1;
}

void (*sub_100672C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t *a7))(void)
{
  v9 = *(a3 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    v31 = a7;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v30 = swift_slowAlloc();
      sub_1000215C0();
      v12 = sub_100673098(v22, v23, v24, v25, v26, v27, v28, a6, v31);

      return v12;
    }
  }

  v30 = a6;
  v31 = &v29;
  __chkstk_darwin(a1);
  v12 = v11;
  sub_1006A76B8(0, v10, &v29 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1000215C0();
  sub_100672E80(v13, v14, v15, v16, v17, v18, v19, v30, v12);
  if (!v7)
  {
    return v20;
  }

  swift_willThrow();
  return v12;
}

void sub_100672E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, __n128), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void), void (*a9)(void))
{
  v42 = a4;
  v43 = a8;
  v35 = a2;
  v36 = a7;
  v37 = a1;
  v41 = a9;
  v10 = a6(0);
  v11 = sub_100003AE8(v10);
  v40 = v12;
  __chkstk_darwin(v11);
  v38 = 0;
  v39 = &v34 - v13;
  v14 = 0;
  v44 = a3;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v45 = (v20 - 1) & v20;
LABEL_11:
    v25 = v22 | (v14 << 6);
    v26 = *(v44 + 56);
    v27 = (*(v44 + 48) + 16 * v25);
    v28 = v27[1];
    v46[0] = *v27;
    v46[1] = v28;
    v29 = v39;
    v30 = v25;
    sub_1000BC914(v26 + *(v40 + 72) * v25, v39, v43);

    v31 = v47;
    v32 = (v42)(v46, v29);
    sub_1000DFFE8(v29, v41);

    v47 = v31;
    if (v31)
    {
      return;
    }

    v20 = v45;
    if (v32)
    {
      *(v37 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_16:
        v36(v37, v35, v38, v44);
        return;
      }
    }
  }

  v23 = v14;
  while (1)
  {
    v14 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      goto LABEL_16;
    }

    ++v23;
    if (*(v16 + 8 * v14))
    {
      sub_100004818();
      v45 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_100673098(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, __n128), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void), void (*a9)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      v18 = a8;
      v12 = a7;
      v13 = a6;
      v14 = a5;
      v15 = a4;
      bzero(result, 8 * a2);
      a4 = v15;
      a5 = v14;
      a6 = v13;
      a7 = v12;
      a8 = v18;
    }

    sub_100672E80(v11, a2, a3, a4, a5, a6, a7, a8, a9);
    v17 = v16;

    return v17;
  }

  return result;
}

void sub_100673160()
{
  sub_10000C778();
  v4 = v3;
  v5 = sub_1000288E0();
  v6 = type metadata accessor for CalendarMoonPhaseData(v5);
  v7 = sub_100003AE8(v6);
  __chkstk_darwin(v7);
  sub_100003848();
  v35 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v33 = v10;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_10000E70C();
  if (!v0)
  {
    goto LABEL_23;
  }

  if (*(v4 + 16) == v0)
  {

LABEL_23:
    sub_10000536C();
    return;
  }

  sub_10022C350(&qword_100CCFC50, qword_100A73938);
  sub_1000A7CDC();
  sub_100037218();
  while (v15)
  {
    sub_100074730();
    v34 = v16;
LABEL_13:
    v20 = sub_10002C934();
    v21(v20);
    v22 = sub_100016468();
    sub_1000BC914(v22, v33, type metadata accessor for CalendarMoonPhaseData);
    v23 = sub_1000210B4();
    v12(v23);
    sub_10003C6CC();
    sub_100673B88(v33, v35, v24);
    v25 = sub_100673874();
    sub_1000867F4(v25);
    sub_100006474();
    if (v26)
    {
      sub_100022F00();
      while (1)
      {
        sub_1000202E0();
        if (v26)
        {
          if (v27)
          {
            goto LABEL_25;
          }
        }

        sub_100011704();
        if (!v26)
        {
          sub_100018638();
          goto LABEL_21;
        }
      }
    }

    sub_100031E84();
LABEL_21:
    v28 = sub_1000697CC();
    v12(v28);
    sub_10003C6CC();
    sub_100673B88(v35, v29, v30);
    sub_1000D3F14();
    if (v31)
    {
      goto LABEL_26;
    }

    v12 = v32;
    v15 = v34;
  }

  v17 = v2;
  while (1)
  {
    v2 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    sub_1000C87EC();
    if (v18)
    {
      sub_100004818();
      v34 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_10067341C()
{
  sub_10000C778();
  v6 = v5;
  v7 = sub_1000288E0();
  v8 = type metadata accessor for LocationAvailableDataSetState(v7);
  v9 = sub_100003AE8(v8);
  __chkstk_darwin(v9);
  sub_100003C38();
  __chkstk_darwin(v10);
  sub_10000E70C();
  if (!v2)
  {
    goto LABEL_23;
  }

  if (*(v6 + 16) == v2)
  {

LABEL_23:
    sub_10000536C();
    return;
  }

  v30 = v11;
  sub_10022C350(&qword_100CCFC40, &unk_100A73918);
  sub_1000A7CDC();
  sub_100036DD4();
  while (v12)
  {
    sub_100074730();
    v31 = v14;
LABEL_13:
    v18 = sub_1000252E0(v13);
    sub_1000BC914(v18, v1, type metadata accessor for LocationAvailableDataSetState);
    sub_100017C20();
    sub_100673B88(v1, v0, v19);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v1 = &v32;
    Hasher._finalize()();
    sub_100006474();
    if (v20)
    {
      sub_100022F00();
      v0 = v30;
      while (1)
      {
        sub_1000202E0();
        if (v20)
        {
          if (v24)
          {
            goto LABEL_25;
          }
        }

        sub_100011704();
        if (!v20)
        {
          sub_100018638();
          v23 = v26 + (v25 << 6);
          goto LABEL_21;
        }
      }
    }

    sub_100031E84();
    v23 = v21 | v22;
    v0 = v30;
LABEL_21:
    sub_10004E884(v23);
    sub_100017C20();
    sub_100673B88(v0, v27, v28);
    sub_10003BB0C();
    if (v29)
    {
      goto LABEL_26;
    }

    v12 = v31;
  }

  v15 = v4;
  while (1)
  {
    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v4 >= v3)
    {
      goto LABEL_23;
    }

    sub_1000C87EC();
    if (v16)
    {
      sub_100004818();
      v31 = v17;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_100673648()
{
  sub_10000C778();
  v6 = v5;
  v7 = sub_1000288E0();
  v8 = type metadata accessor for LocationWeatherDataState(v7);
  v9 = sub_100003AE8(v8);
  __chkstk_darwin(v9);
  sub_100003C38();
  __chkstk_darwin(v10);
  sub_10000E70C();
  if (!v2)
  {
    goto LABEL_23;
  }

  if (*(v6 + 16) == v2)
  {

LABEL_23:
    sub_10000536C();
    return;
  }

  v30 = v11;
  sub_10022C350(&qword_100CCFC48, &unk_100A73928);
  sub_1000A7CDC();
  sub_100036DD4();
  while (v12)
  {
    sub_100074730();
    v31 = v14;
LABEL_13:
    v18 = sub_1000252E0(v13);
    sub_1000BC914(v18, v1, type metadata accessor for LocationWeatherDataState);
    sub_10000EC88();
    sub_100673B88(v1, v0, v19);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v1 = &v32;
    Hasher._finalize()();
    sub_100006474();
    if (v20)
    {
      sub_100022F00();
      v0 = v30;
      while (1)
      {
        sub_1000202E0();
        if (v20)
        {
          if (v24)
          {
            goto LABEL_25;
          }
        }

        sub_100011704();
        if (!v20)
        {
          sub_100018638();
          v23 = v26 + (v25 << 6);
          goto LABEL_21;
        }
      }
    }

    sub_100031E84();
    v23 = v21 | v22;
    v0 = v30;
LABEL_21:
    sub_10004E884(v23);
    sub_10000EC88();
    sub_100673B88(v0, v27, v28);
    sub_10003BB0C();
    if (v29)
    {
      goto LABEL_26;
    }

    v12 = v31;
  }

  v15 = v4;
  while (1)
  {
    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v4 >= v3)
    {
      goto LABEL_23;
    }

    sub_1000C87EC();
    if (v16)
    {
      sub_100004818();
      v31 = v17;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_100673874()
{
  result = qword_100CA39C8;
  if (!qword_100CA39C8)
  {
    v3 = type metadata accessor for Date();
    result = swift_getWitnessTable(&protocol conformance descriptor for Date, v3, v0, v1);
    atomic_store(result, &qword_100CA39C8);
  }

  return result;
}

void sub_1006738CC()
{
  sub_10000C778();
  v4 = v3;
  v5 = sub_1000288E0();
  v6 = type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity(v5);
  v7 = sub_100003AE8(v6);
  __chkstk_darwin(v7);
  sub_100003848();
  v35 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v33 = v10;
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_10000E70C();
  if (!v0)
  {
    goto LABEL_23;
  }

  if (*(v4 + 16) == v0)
  {

LABEL_23:
    sub_10000536C();
    return;
  }

  sub_10022C350(&qword_100CCFC58, &unk_100A73970);
  sub_1000A7CDC();
  sub_100037218();
  while (v15)
  {
    sub_100074730();
    v34 = v16;
LABEL_13:
    v20 = sub_10002C934();
    v21(v20);
    v22 = sub_100016468();
    sub_1000BC914(v22, v33, type metadata accessor for SunriseSunsetDaylightCalculator.SunActivity);
    v23 = sub_1000210B4();
    v12(v23);
    sub_1000209E4();
    sub_100673B88(v33, v35, v24);
    v25 = sub_100673874();
    sub_1000867F4(v25);
    sub_100006474();
    if (v26)
    {
      sub_100022F00();
      while (1)
      {
        sub_1000202E0();
        if (v26)
        {
          if (v27)
          {
            goto LABEL_25;
          }
        }

        sub_100011704();
        if (!v26)
        {
          sub_100018638();
          goto LABEL_21;
        }
      }
    }

    sub_100031E84();
LABEL_21:
    v28 = sub_1000697CC();
    v12(v28);
    sub_1000209E4();
    sub_100673B88(v35, v29, v30);
    sub_1000D3F14();
    if (v31)
    {
      goto LABEL_26;
    }

    v12 = v32;
    v15 = v34;
  }

  v17 = v2;
  while (1)
  {
    v2 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    sub_1000C87EC();
    if (v18)
    {
      sub_100004818();
      v34 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_100673B88(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100673BE8(uint64_t a1, uint64_t a2)
{
  if (static Location.currentLocationID.getter() == a1 && v4 == a2)
  {

    return 1;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 1;
  }

  if (qword_100CA2950 != -1)
  {
    swift_once();
  }

  v7 = static WeatherLocation.currentLocationID == a1 && *algn_100D911C8 == a2;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x69436C61636F6C5FLL && a2 == 0xEB000000005F7974)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100673D44(uint64_t a1)
{
  type metadata accessor for CurrentWeather();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10038F248(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100673DE0(uint64_t a1, uint64_t a2)
{
  if ((static CurrentWeather.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for NextHourPrecipitationComponent(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MinuteWeather();
  sub_10067499C(&qword_100CB1738, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
  sub_10067499C(&qword_100CB1740, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);
  sub_10067499C(&unk_100CB1748, &type metadata accessor for MinuteWeather, &protocol conformance descriptor for MinuteWeather);

  return static Forecast.== infix(_:_:)();
}

uint64_t sub_100673F20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_10022C350(&qword_100CAE8F0, &qword_100A3E420);
  sub_1000037C4();
  v42 = v3;
  __chkstk_darwin(v4);
  v45 = &v40 - v5;
  type metadata accessor for Date();
  sub_1000037C4();
  v48 = v7;
  v49 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v46 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v50 = v15 - v14;
  v52 = sub_10022C350(&qword_100CCFCF8, &qword_100A73A58);
  sub_1000037C4();
  v47 = v16;
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  HourPrecipitationComponent = type metadata accessor for NextHourPrecipitationComponent(0);
  __chkstk_darwin(HourPrecipitationComponent);
  sub_1000037D8();
  v23 = v22 - v21;
  sub_1000161C0(a1, a1[3]);
  sub_100674888();
  v51 = v19;
  v24 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return sub_100006F14(a1);
  }

  v41 = HourPrecipitationComponent;
  v53 = v23;
  v25 = a1;
  v26 = v48;
  v27 = v49;
  v56 = 0;
  sub_10001074C();
  sub_10067499C(v28, v29, &protocol conformance descriptor for CurrentWeather);
  v30 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = *(v46 + 32);
  v50 = v11;
  v31(v53, v30, v11);
  v55 = 1;
  sub_10001C994();
  sub_10067499C(v32, v33, &protocol conformance descriptor for Date);
  v34 = v10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v53;
  (*(v26 + 32))(v53 + *(v41 + 20), v34, v27);
  v54 = 2;
  sub_1006749E4(&qword_100CCFD08, &protocol conformance descriptor for Forecast<A>);
  v36 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = sub_10000482C();
  v38(v37);
  (*(v42 + 32))(v35 + *(v41 + 24), v45, v36);
  sub_1006748DC(v35, v43);
  sub_100006F14(v25);
  return sub_100674940(v35);
}