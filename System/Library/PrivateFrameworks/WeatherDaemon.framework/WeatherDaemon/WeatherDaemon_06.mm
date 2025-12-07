uint64_t sub_1B60AC2A8(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E70, &qword_1B6226058);
  return sub_1B62215D4();
}

uint64_t sub_1B60AC300@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B621D7F4();
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19[-1] - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_11_5();
  result = sub_1B62220C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    OUTLINED_FUNCTION_11_5();
    sub_1B6221F44();
    MEMORY[0x1B8C8C770]();
    sub_1B621D7E4();
    (*(v7 + 8))(v11, v5);

    v16 = sub_1B621D8F4();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
    OUTLINED_FUNCTION_10_6();
    (*(v17 + 32))(a2, v14, v16);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

void sub_1B60AC5D8(void *a1, void *a2, void *a3, void (*a4)(uint64_t *))
{
  v8 = sub_1B6220814();
  OUTLINED_FUNCTION_2_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = (v13 - v12);
  if (a3)
  {
    *v14 = a3;
    v15 = OUTLINED_FUNCTION_9_6();
    v16(v15);
    v17 = a3;
    a4(v14);
LABEL_3:
    v18 = OUTLINED_FUNCTION_6_6();
    v19(v18);
    return;
  }

  if (a1)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v22 = a1;
      if (!NSHTTPURLResponse.isSuccess.getter())
      {
        *v14 = v21;
        v25 = OUTLINED_FUNCTION_9_6();
        v26(v25);
        v27 = v22;
        a4(v14);

        goto LABEL_3;
      }

      v37 = v22;
      v36 = v21;
      if (a2)
      {
        v23 = [a2 transactionMetrics];
        sub_1B602370C(0, &qword_1EDAB0DC0, 0x1E696AFA0);
        v24 = sub_1B62214A4();
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

      v38 = sub_1B6058CBC(v24);
      v28 = 0;
      v35 = *MEMORY[0x1E69D6848];
      while (1)
      {
        if (v38 == v28)
        {
          goto LABEL_22;
        }

        if ((v24 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1B8C90D80](v28, v24);
        }

        else
        {
          if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v29 = *(v24 + 8 * v28 + 32);
        }

        v30 = v29;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if ([v29 resourceFetchType] == 3)
        {

LABEL_22:

          return;
        }

        *v14 = v36;
        v14[1] = v30;
        (*(v10 + 104))(v14, v35, v8);
        v31 = v37;
        v32 = v30;
        a4(v14);

        v33 = OUTLINED_FUNCTION_6_6();
        v34(v33);
        ++v28;
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }
  }
}

uint64_t sub_1B60AC8DC()
{
  sub_1B60AD0C0(v0 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_endpoint);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_configurationProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler));

  return v0;
}

uint64_t sub_1B60AC978()
{
  sub_1B60AC8DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t NSURLSession.wds_dataTask(with:completionHandler:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = v3;
  v8 = [v3 configuration];
  v9 = [v8 URLCache];

  if (v9)
  {
  }

  if (qword_1EDAB4B00 != -1)
  {
    swift_once();
  }

  v10 = sub_1B6220B34();
  __swift_project_value_buffer(v10, qword_1EDAC2AC8);
  v11 = sub_1B6220B14();
  v12 = sub_1B62217F4();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_8_8();
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    v13[1] = v9 != 0;
    OUTLINED_FUNCTION_5_13();
    _os_log_impl(v14, v15, v16, v17, v18, 8u);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  v19 = sub_1B621D214();
  v23[4] = a1;
  v23[5] = a2;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B60ACBEC;
  v23[3] = &block_descriptor_0;
  v20 = _Block_copy(v23);

  v21 = [v4 dataTaskWithRequest:v19 completionHandler:v20];
  _Block_release(v20);

  result = sub_1B602370C(0, &qword_1EDAB0DC8, 0x1E696AF88);
  a3[3] = result;
  a3[4] = &protocol witness table for NSURLSessionDataTask;
  *a3 = v21;
  return result;
}

double sub_1B60ACBEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1B621D714();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1B602FF58(v6, v10);

  return result;
}

double block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B60ACD40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B60ACD80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B60ACDC8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B60ACDF4(uint64_t a1, _BYTE *a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a9;
  v23 = a10;
  __swift_allocate_boxed_opaque_existential_1(&v21);
  OUTLINED_FUNCTION_10_6();
  (*(v17 + 32))();
  LOBYTE(a2) = *a2;
  v18 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_logger;
  sub_1B602370C(0, &qword_1EDAB2128, 0x1E69E9BF8);
  *(a8 + v18) = sub_1B62219D4();
  v19 = (a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_defaultMimeType);
  *v19 = 0xD000000000000010;
  v19[1] = 0x80000001B623C4E0;
  sub_1B602CBCC(a1, a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_endpoint);
  *(a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version) = a2;
  *(a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_session) = a3;
  sub_1B60273A4(a4, a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator);
  sub_1B60273A4(a5, a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
  sub_1B60273A4(a6, a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_configurationProvider);
  sub_1B60273A4(&v21, a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler);
  return a8;
}

uint64_t objectdestroyTm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E70, &qword_1B6226058);
  OUTLINED_FUNCTION_10_6();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B60AD04C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E70, &qword_1B6226058);
  v0 = OUTLINED_FUNCTION_4_8();
  return sub_1B60AC2A8(v0);
}

uint64_t sub_1B60AD0C0(uint64_t a1)
{
  v2 = type metadata accessor for WDSEndpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double Weather.weatherFacts.getter()
{
  *v0 = *(v1 + *(OUTLINED_FUNCTION_25_0() + 68));

  sub_1B6220784();
  return result;
}

void Weather.weatherFacts.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for Weather(0) + 68);

  *(v1 + v3) = v2;
}

WeatherDaemon::Weather::CodingKeys_optional __swiftcall Weather.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

WeatherDaemon::Weather::CodingKeys_optional __swiftcall Weather.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = Weather.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1B60ADB10()
{
  result = 0x696C617551726961;
  switch(*v0)
  {
    case 1:
      result = 0x57746E6572727563;
      break;
    case 2:
    case 3:
      result = 0x7473616365726F66;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x6F46656E6972616DLL;
      break;
    case 8:
      result = 1937204590;
      break;
    case 9:
      result = 0x6E65764565646974;
      break;
    case 0xA:
      result = 0x4172656874616577;
      break;
    case 0xB:
      result = 0x4372656874616577;
      break;
    case 0xC:
      result = 0xD000000000000015;
      break;
    case 0xD:
      result = 0x4672656874616577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60ADD08@<X0>(uint64_t *a1@<X8>)
{
  result = Weather.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B60ADD3C(uint64_t a1)
{
  v2 = sub_1B60AE9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60ADD78(uint64_t a1)
{
  v2 = sub_1B60AE9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Weather.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924ED8, &unk_1B622CC60);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v160 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924ED0, &unk_1B6226630);
  OUTLINED_FUNCTION_0(v7);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v166 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC8, &unk_1B622CC70);
  OUTLINED_FUNCTION_0(v10);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v165 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC0, &unk_1B6226640);
  OUTLINED_FUNCTION_0(v13);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  v164 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB8, &qword_1B6231210);
  OUTLINED_FUNCTION_0(v16);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  v163 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB0, &unk_1B6226650);
  OUTLINED_FUNCTION_0(v19);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_0();
  v162 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA8, &qword_1B62260B0);
  OUTLINED_FUNCTION_0(v22);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_0();
  v161 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E98, &unk_1B622CC80);
  OUTLINED_FUNCTION_0(v25);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_9_0();
  v159 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0, &qword_1B6226B80);
  OUTLINED_FUNCTION_0(v28);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_0();
  v158 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E90, &qword_1B62260A8);
  OUTLINED_FUNCTION_0(v31);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_0();
  v157 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E88, &qword_1B622CC90);
  OUTLINED_FUNCTION_0(v34);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_0();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E80, &unk_1B6226830);
  OUTLINED_FUNCTION_0(v38);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_0();
  v41 = v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E78, &qword_1B6226660);
  OUTLINED_FUNCTION_0(v42);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_0();
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EE0, &qword_1B62260B8);
  OUTLINED_FUNCTION_2();
  v156 = v47;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v141 - v49;
  v51 = a1[3];
  v168 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v51);
  sub_1B60AE9A0();
  v52 = v167;
  sub_1B62220D4();
  if (!v52)
  {
    v53 = type metadata accessor for AirQuality(0);
    LOBYTE(v170) = 0;
    OUTLINED_FUNCTION_12_4();
    sub_1B60AF138(v54, v55, &protocol conformance descriptor for AirQuality);
    OUTLINED_FUNCTION_6_7();
    v155 = v45;
    OUTLINED_FUNCTION_1_8();
    v56 = v53;
    sub_1B6221D24();
    v57 = type metadata accessor for CurrentWeather(0);
    LOBYTE(v170) = 1;
    OUTLINED_FUNCTION_21_1();
    sub_1B60AF138(v58, v59, &protocol conformance descriptor for CurrentWeather);
    OUTLINED_FUNCTION_6_7();
    v154 = v41;
    v152 = v57;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v60 = type metadata accessor for DailyForecast(0);
    LOBYTE(v170) = 2;
    OUTLINED_FUNCTION_19_1();
    sub_1B60AF138(v61, v62, &protocol conformance descriptor for DailyForecast);
    OUTLINED_FUNCTION_6_7();
    v153 = v37;
    v151 = v60;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v63 = type metadata accessor for HourlyForecast(0);
    LOBYTE(v170) = 3;
    OUTLINED_FUNCTION_18_4();
    sub_1B60AF138(v64, v65, &protocol conformance descriptor for HourlyForecast);
    OUTLINED_FUNCTION_6_7();
    v150 = v63;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    HourForecast = type metadata accessor for NextHourForecast(0);
    LOBYTE(v170) = 4;
    OUTLINED_FUNCTION_17_3();
    sub_1B60AF138(v67, v68, &protocol conformance descriptor for NextHourForecast);
    OUTLINED_FUNCTION_6_7();
    v149 = HourForecast;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v69 = type metadata accessor for PeriodicForecasts(0);
    LOBYTE(v170) = 5;
    OUTLINED_FUNCTION_16_4();
    sub_1B60AF138(v70, v71, &protocol conformance descriptor for PeriodicForecasts);
    OUTLINED_FUNCTION_6_7();
    v148 = v69;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v72 = type metadata accessor for LocationInfo(0);
    LOBYTE(v170) = 6;
    OUTLINED_FUNCTION_15_2();
    sub_1B60AF138(v73, v74, &protocol conformance descriptor for LocationInfo);
    OUTLINED_FUNCTION_6_7();
    v147 = v72;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v75 = type metadata accessor for MarineForecast(0);
    LOBYTE(v170) = 7;
    OUTLINED_FUNCTION_14_5();
    sub_1B60AF138(v76, v77, &protocol conformance descriptor for MarineForecast);
    OUTLINED_FUNCTION_6_7();
    v146 = v75;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v78 = type metadata accessor for News(0);
    LOBYTE(v170) = 8;
    OUTLINED_FUNCTION_13_3();
    sub_1B60AF138(v79, v80, &protocol conformance descriptor for News);
    OUTLINED_FUNCTION_6_7();
    v145 = v78;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v81 = type metadata accessor for TideEvents(0);
    LOBYTE(v170) = 9;
    OUTLINED_FUNCTION_11_6();
    sub_1B60AF138(v82, v83, &protocol conformance descriptor for TideEvents);
    OUTLINED_FUNCTION_6_7();
    v144 = v81;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v84 = type metadata accessor for WeatherAlerts(0);
    LOBYTE(v170) = 10;
    OUTLINED_FUNCTION_23_0();
    sub_1B60AF138(v85, v86, &protocol conformance descriptor for WeatherAlerts);
    OUTLINED_FUNCTION_6_7();
    v143 = v84;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v87 = type metadata accessor for WeatherChange(0);
    v167 = 0;
    v88 = v87;
    LOBYTE(v170) = 11;
    OUTLINED_FUNCTION_22_1();
    sub_1B60AF138(v89, v90, &protocol conformance descriptor for WeatherChange);
    OUTLINED_FUNCTION_6_7();
    sub_1B6221D24();
    v91 = type metadata accessor for WeatherComparisons(0);
    LOBYTE(v170) = 12;
    OUTLINED_FUNCTION_20_1();
    sub_1B60AF138(v92, v93, &protocol conformance descriptor for WeatherComparisons);
    OUTLINED_FUNCTION_6_7();
    sub_1B6221D24();
    v169[0] = 13;
    sub_1B60AE9F4();
    sub_1B6221D24();
    (*(v156 + 8))(v50, v46);
    v156 = v170;
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v56);
    v97 = type metadata accessor for Weather(0);
    v98 = v97[5];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v152);
    v102 = v97[6];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v151);
    v106 = v97[7];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v150);
    v142 = v97[8];
    v110 = OUTLINED_FUNCTION_2_14(v142);
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v148);
    v113 = v97[9];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v149);
    v141 = v97[10];
    v117 = OUTLINED_FUNCTION_2_14(v141);
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v147);
    v148 = v97[11];
    v120 = OUTLINED_FUNCTION_2_14(v148);
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v146);
    v149 = v97[12];
    v123 = OUTLINED_FUNCTION_2_14(v149);
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v145);
    v152 = v97[13];
    v126 = OUTLINED_FUNCTION_2_14(v152);
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v144);
    v129 = v97[14];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v143);
    v150 = v97[15];
    v133 = OUTLINED_FUNCTION_2_14(v150);
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v88);
    v151 = v97[16];
    v136 = OUTLINED_FUNCTION_2_14(v151);
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v91);
    v139 = v97[17];
    *(a2 + v139) = 0;
    sub_1B603F2AC(v155, a2, &qword_1EB924E78, &qword_1B6226660);
    sub_1B603F2AC(v154, a2 + v98, &qword_1EB924E80, &unk_1B6226830);
    sub_1B603F2AC(v153, a2 + v102, &qword_1EB924E88, &qword_1B622CC90);
    sub_1B603F2AC(v157, a2 + v106, &qword_1EB924E90, &qword_1B62260A8);
    sub_1B603F2AC(v158, a2 + v113, &qword_1EB924EA0, &qword_1B6226B80);
    sub_1B603F2AC(v159, a2 + v142, &qword_1EB924E98, &unk_1B622CC80);
    sub_1B603F2AC(v161, a2 + v141, &qword_1EB924EA8, &qword_1B62260B0);
    sub_1B603F2AC(v162, a2 + v148, &qword_1EB924EB0, &unk_1B6226650);
    sub_1B603F2AC(v163, a2 + v149, &qword_1EB924EB8, &qword_1B6231210);
    sub_1B603F2AC(v165, a2 + v129, &qword_1EB924EC8, &unk_1B622CC70);
    sub_1B603F2AC(v164, a2 + v152, &qword_1EB924EC0, &unk_1B6226640);
    sub_1B603F2AC(v166, a2 + v150, &qword_1EB924ED0, &unk_1B6226630);
    sub_1B603F2AC(v160, a2 + v151, &qword_1EB924ED8, &unk_1B622CC60);

    *(a2 + v139) = v156;
  }

  return __swift_destroy_boxed_opaque_existential_1(v168);
}

unint64_t sub_1B60AE9A0()
{
  result = qword_1EDAB2028;
  if (!qword_1EDAB2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2028);
  }

  return result;
}

unint64_t sub_1B60AE9F4()
{
  result = qword_1EDAB1580;
  if (!qword_1EDAB1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1580);
  }

  return result;
}

uint64_t Weather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EE8, &qword_1B62260C0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60AE9A0();
  sub_1B62220F4();
  LOBYTE(v64) = 0;
  type metadata accessor for AirQuality(0);
  OUTLINED_FUNCTION_12_4();
  sub_1B60AF138(v11, v12, &protocol conformance descriptor for AirQuality);
  OUTLINED_FUNCTION_6_7();
  sub_1B6221E74();
  if (!v2)
  {
    v13 = type metadata accessor for Weather(0);
    v14 = OUTLINED_FUNCTION_10_7(1);
    type metadata accessor for CurrentWeather(v14);
    OUTLINED_FUNCTION_21_1();
    v17 = sub_1B60AF138(v15, v16, &protocol conformance descriptor for CurrentWeather);
    OUTLINED_FUNCTION_0_18(v17);
    v18 = OUTLINED_FUNCTION_10_7(2);
    type metadata accessor for DailyForecast(v18);
    OUTLINED_FUNCTION_19_1();
    v21 = sub_1B60AF138(v19, v20, &protocol conformance descriptor for DailyForecast);
    OUTLINED_FUNCTION_0_18(v21);
    v22 = OUTLINED_FUNCTION_10_7(3);
    type metadata accessor for HourlyForecast(v22);
    OUTLINED_FUNCTION_18_4();
    v25 = sub_1B60AF138(v23, v24, &protocol conformance descriptor for HourlyForecast);
    OUTLINED_FUNCTION_0_18(v25);
    v26 = OUTLINED_FUNCTION_10_7(4);
    type metadata accessor for NextHourForecast(v26);
    OUTLINED_FUNCTION_17_3();
    v29 = sub_1B60AF138(v27, v28, &protocol conformance descriptor for NextHourForecast);
    OUTLINED_FUNCTION_0_18(v29);
    v30 = OUTLINED_FUNCTION_10_7(5);
    type metadata accessor for PeriodicForecasts(v30);
    OUTLINED_FUNCTION_16_4();
    v33 = sub_1B60AF138(v31, v32, &protocol conformance descriptor for PeriodicForecasts);
    OUTLINED_FUNCTION_0_18(v33);
    v34 = OUTLINED_FUNCTION_10_7(6);
    type metadata accessor for LocationInfo(v34);
    OUTLINED_FUNCTION_15_2();
    v37 = sub_1B60AF138(v35, v36, &protocol conformance descriptor for LocationInfo);
    OUTLINED_FUNCTION_0_18(v37);
    v38 = OUTLINED_FUNCTION_10_7(7);
    type metadata accessor for MarineForecast(v38);
    OUTLINED_FUNCTION_14_5();
    v41 = sub_1B60AF138(v39, v40, &protocol conformance descriptor for MarineForecast);
    OUTLINED_FUNCTION_0_18(v41);
    v42 = OUTLINED_FUNCTION_10_7(8);
    type metadata accessor for News(v42);
    OUTLINED_FUNCTION_13_3();
    v45 = sub_1B60AF138(v43, v44, &protocol conformance descriptor for News);
    OUTLINED_FUNCTION_0_18(v45);
    v46 = OUTLINED_FUNCTION_10_7(9);
    type metadata accessor for TideEvents(v46);
    OUTLINED_FUNCTION_11_6();
    v49 = sub_1B60AF138(v47, v48, &protocol conformance descriptor for TideEvents);
    OUTLINED_FUNCTION_0_18(v49);
    v50 = OUTLINED_FUNCTION_10_7(10);
    type metadata accessor for WeatherAlerts(v50);
    OUTLINED_FUNCTION_23_0();
    v53 = sub_1B60AF138(v51, v52, &protocol conformance descriptor for WeatherAlerts);
    OUTLINED_FUNCTION_0_18(v53);
    v54 = OUTLINED_FUNCTION_10_7(11);
    type metadata accessor for WeatherChange(v54);
    OUTLINED_FUNCTION_22_1();
    v57 = sub_1B60AF138(v55, v56, &protocol conformance descriptor for WeatherChange);
    OUTLINED_FUNCTION_0_18(v57);
    v58 = OUTLINED_FUNCTION_10_7(12);
    type metadata accessor for WeatherComparisons(v58);
    OUTLINED_FUNCTION_20_1();
    v61 = sub_1B60AF138(v59, v60, &protocol conformance descriptor for WeatherComparisons);
    OUTLINED_FUNCTION_0_18(v61);
    v64 = *(v3 + *(v13 + 68));
    v63[7] = 13;
    sub_1B60AEF3C();
    sub_1B6220784();
    sub_1B6221E74();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60AEF3C()
{
  result = qword_1EDAAEF80;
  if (!qword_1EDAAEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEF80);
  }

  return result;
}

unint64_t sub_1B60AEF94()
{
  result = qword_1EB924EF0;
  if (!qword_1EB924EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924EF0);
  }

  return result;
}

unint64_t sub_1B60AEFEC()
{
  result = qword_1EDAB2018;
  if (!qword_1EDAB2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2018);
  }

  return result;
}

unint64_t sub_1B60AF044()
{
  result = qword_1EDAB2020;
  if (!qword_1EDAB2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2020);
  }

  return result;
}

uint64_t sub_1B60AF0E0(uint64_t a1)
{
  result = sub_1B60AF138(&qword_1EDAB2010, type metadata accessor for Weather, &protocol conformance descriptor for Weather);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B60AF138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Weather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Weather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t WeatherRequestOptions.countryCode.getter()
{
  type metadata accessor for WeatherRequestOptions(0);
  sub_1B6220784();
  return OUTLINED_FUNCTION_5_2();
}

void sub_1B60AF34C()
{
  OUTLINED_FUNCTION_44();
  v500 = v0;
  v452 = v1;
  v448 = sub_1B621D944();
  OUTLINED_FUNCTION_2();
  v447 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_22_2(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  v6 = OUTLINED_FUNCTION_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_40_0();
  v430 = v18;
  OUTLINED_FUNCTION_21_2();
  v443 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v441 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_22_2(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F40, &qword_1B62263C8);
  OUTLINED_FUNCTION_0(v29);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_0();
  v498 = v31;
  v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F48, &qword_1B62263D0);
  OUTLINED_FUNCTION_2();
  v497 = v32;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_0();
  v496 = v34;
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F50, &qword_1B62263D8);
  OUTLINED_FUNCTION_2();
  v445 = v35;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_22_2(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  v39 = OUTLINED_FUNCTION_0(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_22_2(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18, &unk_1B6226600);
  OUTLINED_FUNCTION_0(v42);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_22_2(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10, &unk_1B6226370);
  v46 = OUTLINED_FUNCTION_0(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v407 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00, &unk_1B6226360);
  v51 = OUTLINED_FUNCTION_0(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v407 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08, &unk_1B6226610);
  v57 = OUTLINED_FUNCTION_0(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v58);
  v60 = v407 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8, &unk_1B6226620);
  v62 = OUTLINED_FUNCTION_0(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v63);
  v65 = v407 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F58, &qword_1B62263E0);
  OUTLINED_FUNCTION_0(v66);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v67);
  v69 = v407 - v68;
  v70 = sub_1B621D474();
  OUTLINED_FUNCTION_2();
  v72 = v71;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_14();
  v76 = v75 - v74;
  v77 = type metadata accessor for WeatherRequestOptions(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_22_2(v79);
  sub_1B621D444();

  OUTLINED_FUNCTION_16_5(v69, 1, v70);
  if (v115)
  {
    sub_1B6037288(v69, &qword_1EB924F58, &qword_1B62263E0);
    OUTLINED_FUNCTION_3_10();
    v83 = v77;
    goto LABEL_320;
  }

  v419 = v77;
  v417 = v72;
  v84 = *(v72 + 32);
  v418 = v70;
  v84(v76, v69, v70);
  sub_1B621DB64();
  v481 = v65;
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  type metadata accessor for WeatherRequestDailyRelativeRange(0);
  v450[0] = v60;
  OUTLINED_FUNCTION_3_10();
  v411 = v89;
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v89);
  v93 = sub_1B621D364();
  v449 = v55;
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
  type metadata accessor for WeatherRequestHourlyRelativeRange(0);
  v442 = v49;
  OUTLINED_FUNCTION_3_10();
  v412 = v97;
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v97);
  OUTLINED_FUNCTION_3_10();
  v410 = v93;
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v93);
  type metadata accessor for WeatherRequestPeriodicRelativeRange(0);
  OUTLINED_FUNCTION_3_10();
  v409 = v104;
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
  v108 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange(0);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F60, &qword_1B62263E8);
  sub_1B6220A24();
  sub_1B621D404();
  v112 = v498;
  v113 = 0;
  sub_1B6220A34();

  v114 = v499;
  OUTLINED_FUNCTION_16_5(v112, 1, v499);
  if (v115)
  {
    sub_1B6037288(v112, &qword_1EB924F40, &qword_1B62263C8);
    v415 = 0;
    v414 = 0xE000000000000000;
  }

  else
  {
    v247 = v496;
    v248 = v497;
    (*(v497 + 32))(v496, v112, v114);
    swift_getKeyPath();
    sub_1B6220A44();

    v415 = MEMORY[0x1B8C904C0](v501, v502, v503, v504);
    v414 = v249;

    v250 = *(v248 + 8);
    v49 = v248 + 8;
    v250(v247, v114);
  }

  v416 = v76;
  v116 = sub_1B621D3B4();
  if (!v116)
  {
    v488 = 0;
    v454 = 0;
    LODWORD(v491) = 0;
    v496 = 0;
    v497 = 0;
    v492 = 0;
    v493 = 0;
    v499 = 0;
    v500 = 0;
    v494 = 0;
    v495 = 0;
    v498 = 0;
    v233 = 0;
    v234 = 768;
    v489 = MEMORY[0x1E69E7CC0];
    v490 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_47_0();
    v236 = v419;
    goto LABEL_319;
  }

  v408 = v108;
  v407[1] = 0;
  v117 = 0;
  v413 = 0;
  v454 = 0;
  v113 = 0;
  v472 = 0;
  v497 = 0;
  v118 = 0;
  v119 = 0;
  v467 = 0;
  v466 = 0;
  v459 = 0;
  v500 = 0;
  v462 = 0;
  v496 = 0;
  v465 = 0;
  v499 = 0;
  v461 = 0;
  v495 = 0;
  v464 = 0;
  v498 = 0;
  v471 = 0;
  v470 = 0;
  v460 = 0;
  v494 = 0;
  v463 = 0;
  v493 = 0;
  v458 = 0;
  v469 = 0;
  v468 = 0;
  v491 = 0x80000001B623C5C0;
  v492 = 0x80000001B623C5A0;
  v489 = 0x80000001B623C600;
  v490 = 0x80000001B623C5E0;
  v487 = 0x80000001B623C640;
  v488 = 0x80000001B623C620;
  v486 = 0x80000001B623C660;
  v485 = 0x80000001B623C680;
  v484 = 0x80000001B623C6A0;
  OUTLINED_FUNCTION_48_1();
  v120 = v116[2];
  v474 = 1;
  v475 = 2;
  v456 = 2;
  v473 = 1;
  v457 = 2;
  v479 = 1;
  v478 = 1;
  v477 = 1;
  v476 = 1;
  v483 = v116;
  v482 = v120;
  while (v120 != v117)
  {
    if (v117 >= v120)
    {
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      OUTLINED_FUNCTION_6_8(&qword_1EDAB2108);
      goto LABEL_269;
    }

    sub_1B621D3A4();
    if (__OFADD__(v117, 1))
    {
      goto LABEL_322;
    }

    if (sub_1B621D384() == v49 && v121 == 0xE800000000000000)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    sub_1B621D394();
    if (v123)
    {
      v49 = v480;
      sub_1B621DB14();

      sub_1B6074568(v49, v481, &qword_1EB924EF8, &unk_1B6226620);
    }

LABEL_21:
    v124 = sub_1B621D384();
    if (v124 == 0xD000000000000012 && v492 == v125)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v124, v125, 0xD000000000000012, v492);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_1B621D394();
    if (v127)
    {
      v468 = sub_1B60C2408();
      v476 = v128;
    }

LABEL_30:
    v129 = sub_1B621D384();
    if (v129 == 0xD000000000000010 && v491 == v130)
    {
    }

    else
    {
      OUTLINED_FUNCTION_52(v129, v130, v131, v491);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    sub_1B621D394();
    if (v133)
    {
      v469 = sub_1B60C2408();
      v477 = v134;
    }

LABEL_39:
    v135 = sub_1B621D384();
    v137 = v136;
    if (v135 == 0x617453796C696164 && v136 == 0xEA00000000007472)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    sub_1B621D394();
    if (v139)
    {
      OUTLINED_FUNCTION_17_4();

      v463 = v137;
      v493 = v49;
    }

LABEL_48:
    v140 = sub_1B621D384();
    v142 = v141;
    if (v140 == 0x646E45796C696164 && v141 == 0xE800000000000000)
    {
    }

    else
    {
      OUTLINED_FUNCTION_42_1(v140, v141, 0x646E45796C696164);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    sub_1B621D394();
    if (v144)
    {
      OUTLINED_FUNCTION_17_4();

      v460 = v142;
      v494 = v49;
    }

LABEL_57:
    v145 = sub_1B621D384();
    if (v145 == 0xD000000000000013 && v490 == v146)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v145, v146, 0xD000000000000013, v490);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    sub_1B621D394();
    if (v148)
    {
      v470 = sub_1B60C2408();
      v478 = v149;
    }

LABEL_66:
    v150 = sub_1B621D384();
    if (v150 == 0xD000000000000011 && v489 == v151)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v150, v151, 0xD000000000000011, v489);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    sub_1B621D394();
    if (v153)
    {
      v471 = sub_1B60C2408();
      v479 = v154;
    }

LABEL_75:
    v155 = sub_1B621D384();
    if (v155 == 0xD000000000000010 && v488 == v156)
    {
    }

    else
    {
      OUTLINED_FUNCTION_52(v155, v156, v157, v488);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    sub_1B621D394();
    if (v159)
    {
      v49 = sub_1B6221CD4();

      if (v49 == 1)
      {
        v457 = 1;
      }

      else if (!v49)
      {
        v457 = 0;
      }
    }

LABEL_87:
    v160 = sub_1B621D384();
    v162 = v161;
    if (v160 == 0x7453796C72756F68 && v161 == 0xEB00000000747261)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v160, v161, 0x7453796C72756F68, 0xEB00000000747261);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    sub_1B621D394();
    if (v164)
    {
      OUTLINED_FUNCTION_17_4();

      v464 = v162;
      v498 = v49;
    }

LABEL_96:
    v165 = sub_1B621D384();
    v167 = v166;
    if (v165 == 0x6E45796C72756F68 && v166 == 0xE900000000000064)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    sub_1B621D394();
    if (v169)
    {
      OUTLINED_FUNCTION_17_4();

      v461 = v167;
      v495 = v49;
    }

LABEL_105:
    sub_1B621D384();
    OUTLINED_FUNCTION_19_2();
    v173 = v172 & 0xFFFFFFFFFFFFLL | 0x6369000000000000;
    if (v170 == v173 && v171 == 0xED00007472617453)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v170, v171, v173, 0xED00007472617453);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    sub_1B621D394();
    if (v175)
    {
      OUTLINED_FUNCTION_17_4();

      v465 = v167;
      v499 = v49;
    }

LABEL_114:
    sub_1B621D384();
    OUTLINED_FUNCTION_19_2();
    v179 = v178 & 0xFFFFFFFFFFFFLL | 0x6369000000000000;
    if (v176 == v179 && v177 == 0xEB00000000646E45)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v176, v177, v179, 0xEB00000000646E45);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    sub_1B621D394();
    if (v181)
    {
      OUTLINED_FUNCTION_17_4();

      v462 = v167;
      v496 = v49;
    }

LABEL_123:
    sub_1B621D384();
    OUTLINED_FUNCTION_19_2();
    v185 = v184 & 0xFFFFFFFFFFFFLL | 0x654C000000000000;
    if (v182 == v185 && v183 == 0xED0000736874676ELL)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v182, v183, v185, 0xED0000736874676ELL);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_132;
      }
    }

    sub_1B621D394();
    if (v187)
    {
      OUTLINED_FUNCTION_17_4();

      v459 = v167;
      v500 = v49;
    }

LABEL_132:
    v188 = sub_1B621D384();
    if (v188 == 0xD000000000000019 && v487 == v189)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v188, v189, 0xD000000000000019, v487);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_141;
      }
    }

    sub_1B621D394();
    if (v191)
    {
      v466 = sub_1B60C2408();
      v473 = v192;
    }

LABEL_141:
    v193 = sub_1B621D384();
    if (v193 == 0xD000000000000017 && v486 == v194)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v193, v194, 0xD000000000000017, v486);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_150;
      }
    }

    sub_1B621D394();
    if (v196)
    {
      v467 = sub_1B60C2408();
      v474 = v197;
    }

LABEL_150:
    v198 = sub_1B621D384();
    if (v198 == 0xD000000000000016 && v485 == v199)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v198, v199, 0xD000000000000016, v485);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    sub_1B621D394();
    if (v201)
    {
      v49 = sub_1B6221CD4();

      if (v49 == 1)
      {
        v456 = 1;
      }

      else if (!v49)
      {
        v456 = 0;
      }
    }

LABEL_162:
    if (sub_1B621D384() == 0x7374696E75 && v202 == 0xE500000000000000)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_174;
      }
    }

    sub_1B621D394();
    if (v204)
    {
      v49 = sub_1B6221CD4();

      if (v49 == 1)
      {
        v458 = 1;
      }

      else if (!v49)
      {
        v458 = 0;
      }
    }

LABEL_174:
    v205 = sub_1B621D384();
    v207 = v206;
    if (v205 == 0x7972746E756F63 && v206 == 0xE700000000000000)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_183;
      }
    }

    sub_1B621D394();
    if (v209)
    {
      OUTLINED_FUNCTION_17_4();

      v118 = v207;
      v119 = v49;
    }

LABEL_183:
    if (sub_1B621D384() == 0x657372616F63 && v210 == 0xE600000000000000)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_192;
      }
    }

    sub_1B621D394();
    if (v212)
    {
      v475 = sub_1B62215B4();
    }

LABEL_192:
    v213 = sub_1B621D384();
    v215 = v214;
    if (v213 == 0xD000000000000014 && v484 == v214)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1(v213, v214, 0xD000000000000014, v484);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_201;
      }
    }

    sub_1B621D394();
    if (v217)
    {
      OUTLINED_FUNCTION_17_4();

      v472 = v215;
      v497 = v49;
    }

LABEL_201:
    v218 = sub_1B621D384();
    if (v218 == 0x7465537472656C61 && v219 == 0xE800000000000000)
    {
    }

    else
    {
      OUTLINED_FUNCTION_42_1(v218, v219, 0x7465537472656C61);
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_215;
      }
    }

    v221 = sub_1B621D394();
    if (v222)
    {
      if (v221 == 0x656D69746972616DLL && v222 == 0xE800000000000000)
      {

        v113 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_42_1(v221, v222, 0x656D69746972616DLL);
        OUTLINED_FUNCTION_20_2();
        v113 = v49 | v113;
      }
    }

LABEL_215:
    v49 = 0x614C656369766564;
    if (sub_1B621D384() != 0x614C656369766564 || v224 != 0xEF7365676175676ELL)
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
LABEL_221:
      ++v117;
      goto LABEL_222;
    }

    v226 = sub_1B621D394();
    if (!v227)
    {
      goto LABEL_221;
    }

    v228 = v226;
    v229 = v227;

    ++v117;
    v413 = v228;
    v454 = v229;
LABEL_222:
    v116 = v483;
    OUTLINED_FUNCTION_48_1();
    v120 = v482;
  }

  v487 = v118;
  LODWORD(v491) = v113;
  v492 = v119;

  if ((v476 | v477))
  {
    OUTLINED_FUNCTION_34();
    v230 = v457;
    if (v493 && v494)
    {
      if (qword_1EDAB2108 != -1)
      {
        OUTLINED_FUNCTION_6_8(&qword_1EDAB2108);
      }

      v231 = sub_1B62211B4();
      v232 = OUTLINED_FUNCTION_28_0(v231);

      v113 = v429;
      if (v232)
      {
        sub_1B621D8C4();
      }

      OUTLINED_FUNCTION_23_1();
      __swift_storeEnumTagSinglePayload(v251, v252, v253, v254);
      v255 = v430;
      sub_1B603D3DC(v113, v430, &qword_1EB924600, &qword_1B6223420);
      OUTLINED_FUNCTION_8_9(v255);
      if (v115)
      {
        sub_1B6037288(v255, &qword_1EB924600, &qword_1B6223420);
      }

      else
      {
        v113 = v441 + 32;
        v256 = *(v441 + 32);
        v257 = OUTLINED_FUNCTION_33_0(&v462);
        v256(v257);
        v258 = sub_1B62211B4();
        v259 = OUTLINED_FUNCTION_26_2(v258);

        if (v259)
        {
          OUTLINED_FUNCTION_41_0();
        }

        else
        {
          v255 = v424;
        }

        OUTLINED_FUNCTION_23_1();
        __swift_storeEnumTagSinglePayload(v260, v261, v262, v263);
        v264 = v420;
        sub_1B603D3DC(v255, v420, &qword_1EB924600, &qword_1B6223420);
        OUTLINED_FUNCTION_8_9(v264);
        if (v115)
        {
          (*(v441 + 8))(v431, v118);
          sub_1B6037288(v264, &qword_1EB924600, &qword_1B6223420);
        }

        else
        {
          v265 = OUTLINED_FUNCTION_49_0(&v449);
          v256(v265);
          OUTLINED_FUNCTION_36_0();
          v267 = v431;
          (v255)(*(v266 - 256), v431, v118);
          (v255)(v422, 0x1FB254000, v118);
          v268 = v421;
          v230 = v457;
          sub_1B621D344();
          v269 = OUTLINED_FUNCTION_35_0();
          (v255)(v269);
          (v255)(v267, v118);
          OUTLINED_FUNCTION_47_0();
          v270 = OUTLINED_FUNCTION_36();
          sub_1B6037288(v270, v271, &unk_1B6226360);
          OUTLINED_FUNCTION_18();
          __swift_storeEnumTagSinglePayload(v272, v273, v274, v410);
          OUTLINED_FUNCTION_53(v268, v113);
        }

        v119 = v442;
      }

      v116 = v498;
    }
  }

  else
  {
    v237 = v411;
    v238 = v439;
    sub_1B621D8D4();
    v116 = &unk_1B6226610;
    v113 = v450[0];
    v239 = OUTLINED_FUNCTION_36();
    sub_1B6037288(v239, v240, &unk_1B6226610);
    v241 = v469;
    *v238 = v468;
    v238[1] = v241;
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v242, v243, v244, v237);
    v245 = OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_53(v245, v246);
    OUTLINED_FUNCTION_34();
    v230 = v457;
  }

  if (((v478 | v479) & 1) == 0 && v230 != 2)
  {
    v275 = v412;
    v113 = v440;
    sub_1B621D8D4();
    sub_1B6037288(v119, &qword_1EB924F10, &unk_1B6226370);
    v276 = v471;
    *v113 = v470;
    *(v113 + 8) = v276;
    *(v113 + 16) = v230 & 1;
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v277, v278, v279, v275);
    v280 = v113;
    v281 = v119;
    goto LABEL_247;
  }

  v282 = v499;
  v283 = v500;
  if (!v116 || !v495)
  {
    goto LABEL_265;
  }

  if (qword_1EDAB2108 != -1)
  {
    OUTLINED_FUNCTION_6_8(&qword_1EDAB2108);
  }

  v284 = sub_1B62211B4();
  v285 = OUTLINED_FUNCTION_28_0(v284);

  v113 = v432;
  if (v285)
  {
    sub_1B621D8C4();
  }

  OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v286, v287, v288, v289);
  v290 = v433;
  sub_1B603D3DC(v113, v433, &qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_8_9(v290);
  if (v115)
  {
    v291 = v290;
LABEL_263:
    sub_1B6037288(v291, &qword_1EB924600, &qword_1B6223420);
    goto LABEL_264;
  }

  v113 = v441 + 32;
  v292 = *(v441 + 32);
  v293 = OUTLINED_FUNCTION_33_0(&v465);
  v292(v293);
  v294 = sub_1B62211B4();
  v295 = OUTLINED_FUNCTION_26_2(v294);

  if (v295)
  {
    OUTLINED_FUNCTION_41_0();
  }

  else
  {
    v290 = v425;
  }

  OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v296, v297, v298, v299);
  v300 = v423;
  sub_1B603D3DC(v290, v423, &qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_8_9(v300);
  if (v115)
  {
    (*(v441 + 8))(v434, v118);
    v291 = v300;
    goto LABEL_263;
  }

  v314 = OUTLINED_FUNCTION_49_0(v450);
  v292(v314);
  OUTLINED_FUNCTION_36_0();
  v316 = v434;
  (v290)(*(v315 - 256), v434, v118);
  (v290)(v422, 0x1FB254000, v118);
  sub_1B621D344();
  v317 = OUTLINED_FUNCTION_35_0();
  (v290)(v317);
  (v290)(v316, v118);
  v113 = v455;
  v318 = OUTLINED_FUNCTION_36();
  sub_1B6037288(v318, v319, &unk_1B6226360);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v320, v321, v322, v410);
  v280 = OUTLINED_FUNCTION_29_1();
LABEL_247:
  OUTLINED_FUNCTION_53(v280, v281);
LABEL_264:
  v282 = v499;
  v283 = v500;
LABEL_265:
  if (!v282 || !v496 || !v283)
  {
    goto LABEL_291;
  }

  if (qword_1EDAB2108 != -1)
  {
    goto LABEL_325;
  }

LABEL_269:
  v301 = sub_1B62211B4();
  v302 = OUTLINED_FUNCTION_28_0(v301);

  if (v302)
  {
    v303 = v436;
    sub_1B621D8C4();

    OUTLINED_FUNCTION_46_0();
  }

  else
  {
    OUTLINED_FUNCTION_46_0();
    v303 = v436;
  }

  OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v304, v305, v306, v307);
  v308 = v437;
  sub_1B603D3DC(v303, v437, &qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_8_9(v308);
  if (v115)
  {
    sub_1B6037288(v308, &qword_1EB924600, &qword_1B6223420);
    goto LABEL_292;
  }

  v309 = *(v441 + 32);
  v310 = OUTLINED_FUNCTION_33_0(&v466);
  v309(v310);
  v311 = sub_1B62211B4();
  v312 = OUTLINED_FUNCTION_26_2(v311);

  if (v312)
  {
    OUTLINED_FUNCTION_41_0();

    v313 = v428;
  }

  else
  {
    v313 = v428;
    v308 = v427;
  }

  OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v323, v324, v325, v326);
  sub_1B603D3DC(v308, v313, &qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_8_9(v313);
  if (v115)
  {
    OUTLINED_FUNCTION_51();
    v327(v435, v118);
    sub_1B6037288(v313, &qword_1EB924600, &qword_1B6223420);
  }

  else
  {
    (v309)(v426, v313, v118);
    v501 = v459;
    v502 = v500;
    v328 = OUTLINED_FUNCTION_43_0();
    v330 = OUTLINED_FUNCTION_27_1(v328, MEMORY[0x1E69E6158], v329, v328);
    v331 = 0;
    v118 = *(v330 + 16);
    v332 = MEMORY[0x1E69E7CC0];
LABEL_281:
    v333 = (v330 + 40 + 16 * v331);
    while (v118 != v331)
    {
      if (v331 >= *(v330 + 16))
      {
        goto LABEL_324;
      }

      ++v331;
      v334 = v333 + 2;
      v113 = *v333;
      sub_1B6220784();
      OUTLINED_FUNCTION_29_1();
      v335 = sub_1B60C2408();
      v333 = v334;
      if ((v336 & 1) == 0)
      {
        v113 = v335;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B609C2B0(0, *(v332 + 16) + 1, 1, v332);
          v332 = v339;
        }

        v338 = *(v332 + 16);
        v337 = *(v332 + 24);
        if (v338 >= v337 >> 1)
        {
          v340 = OUTLINED_FUNCTION_50(v337);
          sub_1B609C2B0(v340, v341, v342, v332);
          v332 = v343;
        }

        *(v332 + 16) = v338 + 1;
        *(v332 + 8 * v338 + 32) = v113;
        goto LABEL_281;
      }
    }

    v344 = v453;
    sub_1B6037288(v453, &qword_1EB924F18, &unk_1B6226600);
    v113 = v443;
    (v309)(v344, v435, v443);
    v345 = v409;
    (v309)(v344 + *(v409 + 20), v426, v113);
    *(v344 + *(v345 + 24)) = v332;
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v346, v347, v348, v345);
  }

LABEL_291:
  OUTLINED_FUNCTION_46_0();
LABEL_292:
  v233 = v458;
  v349 = v456;
  if (((v473 | v474) & 1) == 0 && v456 != 2)
  {
    v350 = v408;
    v351 = v438;
    sub_1B621D8D4();
    v352 = OUTLINED_FUNCTION_36();
    sub_1B6037288(v352, v353, &unk_1B6226380);
    v354 = v467;
    *v351 = v466;
    *(v351 + 8) = v354;
    *(v351 + 16) = v349 & 1;
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v355, v356, v357, v350);
    v358 = OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_53(v358, v359);
  }

  if (v475 == 2)
  {
    v360 = 0;
  }

  else
  {
    v360 = 3;
  }

  if (v475 == 2)
  {
    v234 = 768;
  }

  else
  {
    v234 = v475 << 8;
  }

  if (v497)
  {
    v501 = v472;
    v502 = v497;
    v361 = OUTLINED_FUNCTION_43_0();
    v363 = OUTLINED_FUNCTION_27_1(v361, MEMORY[0x1E69E6158], v362, v361);
    v364 = 0;
    v365 = *(v363 + 16);
    v366 = MEMORY[0x1E69E7CC0];
LABEL_303:
    v367 = (v363 + 40 + 16 * v364);
    while (v365 != v364)
    {
      if (v364 >= *(v363 + 16))
      {
        goto LABEL_323;
      }

      ++v364;
      v118 = (v367 + 2);
      v113 = *v367;
      sub_1B6220784();
      OUTLINED_FUNCTION_29_1();
      v368 = sub_1B60C2408();
      v367 = v118;
      if ((v369 & 1) == 0)
      {
        v113 = v368;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v370 = v366;
        }

        else
        {
          sub_1B609C29C(0, *(v366 + 16) + 1, 1, v366);
          v370 = v372;
        }

        v118 = *(v370 + 16);
        v371 = *(v370 + 24);
        if (v118 >= v371 >> 1)
        {
          v373 = OUTLINED_FUNCTION_50(v371);
          sub_1B609C29C(v373, v374, v375, v376);
          v370 = v377;
        }

        *(v370 + 16) = v118 + 1;
        v366 = v370;
        *(v370 + 8 * v118 + 32) = v113;
        goto LABEL_303;
      }
    }

    OUTLINED_FUNCTION_47_0();
    v233 = v458;
  }

  else
  {
    v366 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_47_0();
  }

  v488 = v360;
  v489 = v366;
  if (v454)
  {
    v501 = v413;
    v502 = v454;
    v378 = OUTLINED_FUNCTION_43_0();
    v490 = OUTLINED_FUNCTION_27_1(v378, MEMORY[0x1E69E6158], v379, v378);
  }

  else
  {
    v454 = 0;
    v490 = MEMORY[0x1E69E7CC0];
  }

  v235 = v481;
  v236 = v419;
  v116 = v487;
LABEL_319:
  v380 = v444;
  v381 = v414;
  *v444 = v415;
  *(v380 + 8) = v381;
  sub_1B603A944(v235, v380 + v236[5], &qword_1EB924EF8, &unk_1B6226620);
  sub_1B603A944(v450[0], v380 + v236[9], &qword_1EB924F08, &unk_1B6226610);
  *(v380 + v236[6]) = v233 & 1;
  sub_1B603A944(v113, v380 + v236[7], &qword_1EB924F00, &unk_1B6226360);
  v382 = v442;
  sub_1B603A944(v442, v380 + v236[10], &qword_1EB924F10, &unk_1B6226370);
  sub_1B603A944(v455, v380 + v236[8], &qword_1EB924F00, &unk_1B6226360);
  v383 = v453;
  sub_1B603A944(v453, v380 + v236[11], &qword_1EB924F18, &unk_1B6226600);
  OUTLINED_FUNCTION_46_0();
  sub_1B603A944(v113, v384, v385, v386);
  type metadata accessor for WeatherInterpolationOptions(0);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v387, v388, v389, v390);
  v391 = (v380 + v236[14]);
  v392 = v492;
  *v391 = v116;
  v391[1] = v392;
  v393 = v380 + v236[15];
  *v393 = v488;
  *(v393 + 8) = v234;
  *(v380 + v236[16]) = 0;
  LOBYTE(v501) = 1;
  v505 = 1;
  v394 = v380 + v236[17];
  *v394 = 1;
  *(v394 + 8) = 1;
  *(v394 + 16) = 0;
  *(v394 + 30) = 0;
  *(v394 + 28) = 256;
  *(v394 + 24) = 1;
  *(v380 + v236[18]) = v489;
  type metadata accessor for WDSNetworkActivity(0);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v395, v396, v397, v398);
  *(v380 + v236[20]) = v491 & 1;
  *(v380 + v236[21]) = v490;
  sub_1B6220784();
  v399 = v446;
  _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
  v400 = sub_1B621D904();
  v402 = v401;
  OUTLINED_FUNCTION_51();
  v403(v399, v448);
  OUTLINED_FUNCTION_51();
  v404(v450[1], v451);
  sub_1B6037288(v113, &qword_1EB924F20, &unk_1B6226380);
  sub_1B6037288(v383, &qword_1EB924F18, &unk_1B6226600);
  sub_1B6037288(v455, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v382, &qword_1EB924F10, &unk_1B6226370);
  sub_1B6037288(v449, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v450[0], &qword_1EB924F08, &unk_1B6226610);
  OUTLINED_FUNCTION_51();
  v405(v416, v418);

  v406 = (v380 + v236[22]);
  *v406 = v400;
  v406[1] = v402;
  *(v380 + v236[23]) = 0;

  sub_1B6037288(v481, &qword_1EB924EF8, &unk_1B6226620);
  sub_1B60787F8(v380, v452, type metadata accessor for WeatherRequestOptions);
  OUTLINED_FUNCTION_18();
  v83 = v236;
LABEL_320:
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  OUTLINED_FUNCTION_45();
}

void sub_1B60B19E8()
{
  OUTLINED_FUNCTION_44();
  v97 = v1;
  v98 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30, &unk_1B6226390);
  OUTLINED_FUNCTION_0(v5);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  v96 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28, &unk_1B62265F0);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  OUTLINED_FUNCTION_0(v12);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v101 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18, &unk_1B6226600);
  OUTLINED_FUNCTION_0(v15);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  v100 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10, &unk_1B6226370);
  OUTLINED_FUNCTION_0(v18);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v104 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08, &unk_1B6226610);
  OUTLINED_FUNCTION_0(v21);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_0();
  v103 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00, &unk_1B6226360);
  v25 = OUTLINED_FUNCTION_0(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_3();
  v102 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_40_0();
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8, &unk_1B6226620);
  v31 = OUTLINED_FUNCTION_0(v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v80 - v35;
  v37 = v0[1];
  v95 = *v0;
  v38 = OUTLINED_FUNCTION_29_1();
  sub_1B603A944(v38, v39, &qword_1EB924EF8, &unk_1B6226620);
  v40 = sub_1B621DB64();
  v41 = OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_16_5(v41, v42, v40);
  v99 = v36;
  v94 = v37;
  if (v43)
  {
    v44 = type metadata accessor for WeatherRequestOptions(0);
    sub_1B603A944(v0 + *(v44 + 20), v36, &qword_1EB924EF8, &unk_1B6226620);
    v45 = OUTLINED_FUNCTION_38_0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, v46, v40);
    sub_1B6220784();
    if (EnumTagSinglePayload != 1)
    {
      sub_1B6037288(v33, &qword_1EB924EF8, &unk_1B6226620);
    }
  }

  else
  {
    (*(*(v40 - 8) + 32))(v36, v33, v40);
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v40);
    sub_1B6220784();
  }

  v51 = type metadata accessor for WeatherRequestOptions(0);
  v52 = *(v0 + v51[6]);
  v53 = v29;
  sub_1B603A944(v0 + v51[7], v29, &qword_1EB924F00, &unk_1B6226360);
  sub_1B603A944(v0 + v51[8], v102, &qword_1EB924F00, &unk_1B6226360);
  sub_1B603A944(v0 + v51[9], v103, &qword_1EB924F08, &unk_1B6226610);
  sub_1B603A944(v0 + v51[10], v104, &qword_1EB924F10, &unk_1B6226370);
  sub_1B603A944(v0 + v51[11], v100, &qword_1EB924F18, &unk_1B6226600);
  sub_1B603A944(v0 + v51[12], v101, &qword_1EB924F20, &unk_1B6226380);
  sub_1B603A944(v0 + v51[13], v11, &qword_1EB924F28, &unk_1B62265F0);
  v93 = v11;
  v54 = v98;
  if (!v98)
  {
    v55 = (v0 + v51[14]);
    v54 = v55[1];
    v97 = *v55;
    sub_1B6220784();
  }

  v56 = v51[16];
  v57 = v0 + v51[15];
  v89 = *v57;
  v88 = *(v57 + 4);
  v58 = *(v0 + v56);
  v59 = v51[18];
  v60 = v0 + v51[17];
  v84 = *v60;
  v83 = *(v60 + 2);
  v61 = *(v60 + 6);
  v60 += 24;
  v87 = v61;
  v86 = *(v60 + 2);
  v62 = *(v0 + v59);
  v63 = v51[19];
  v81 = v60[6];
  v64 = v96;
  sub_1B603A944(v0 + v63, v96, &qword_1EB924F30, &unk_1B6226390);
  v65 = v51[21];
  v82 = *(v0 + v51[20]);
  v85 = *(v0 + v65);
  v66 = (v0 + v51[22]);
  v68 = *v66;
  v67 = v66[1];
  v92 = v68;
  v90 = v67;
  v69 = v94;
  *v4 = v95;
  v4[1] = v69;
  sub_1B603A944(v99, v4 + v51[5], &qword_1EB924EF8, &unk_1B6226620);
  *(v4 + v51[6]) = v52;
  v70 = v4 + v51[7];
  v91 = v53;
  sub_1B603A944(v53, v70, &qword_1EB924F00, &unk_1B6226360);
  sub_1B603A944(v102, v4 + v51[8], &qword_1EB924F00, &unk_1B6226360);
  sub_1B603A944(v103, v4 + v51[9], &qword_1EB924F08, &unk_1B6226610);
  sub_1B603A944(v104, v4 + v51[10], &qword_1EB924F10, &unk_1B6226370);
  v71 = v100;
  sub_1B603A944(v100, v4 + v51[11], &qword_1EB924F18, &unk_1B6226600);
  v72 = v101;
  sub_1B603A944(v101, v4 + v51[12], &qword_1EB924F20, &unk_1B6226380);
  v73 = v93;
  sub_1B603A944(v93, v4 + v51[13], &qword_1EB924F28, &unk_1B62265F0);
  v74 = (v4 + v51[14]);
  *v74 = v97;
  v74[1] = v54;
  v75 = v4 + v51[15];
  *v75 = v89;
  *(v75 + 4) = v88;
  *(v4 + v51[16]) = v58;
  v76 = v4 + v51[17];
  *v76 = v84;
  *(v76 + 2) = v83;
  v76[30] = v81;
  v77 = v87;
  *(v76 + 14) = v86;
  *(v76 + 6) = v77;
  *(v4 + v51[18]) = v62;
  sub_1B603A944(v64, v4 + v51[19], &qword_1EB924F30, &unk_1B6226390);
  *(v4 + v51[20]) = v82;
  *(v4 + v51[21]) = v85;
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  v78 = v90;
  sub_1B6220784();
  sub_1B6037288(v64, &qword_1EB924F30, &unk_1B6226390);
  sub_1B6037288(v73, &qword_1EB924F28, &unk_1B62265F0);
  sub_1B6037288(v72, &qword_1EB924F20, &unk_1B6226380);
  sub_1B6037288(v71, &qword_1EB924F18, &unk_1B6226600);
  sub_1B6037288(v104, &qword_1EB924F10, &unk_1B6226370);
  sub_1B6037288(v103, &qword_1EB924F08, &unk_1B6226610);
  sub_1B6037288(v102, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v91, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v99, &qword_1EB924EF8, &unk_1B6226620);
  v79 = (v4 + v51[22]);
  *v79 = v92;
  v79[1] = v78;
  *(v4 + v51[23]) = 0;
  OUTLINED_FUNCTION_45();
}

double URLRequest.addValue(_:for:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  sub_1B621D254();

  return result;
}

void URLRequest.Header.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1B6221CD4();

  v5 = 6;
  if (v4 < 6)
  {
    v5 = v4;
  }

  *a3 = v5;
}

unint64_t URLRequest.Header.rawValue.getter()
{
  result = 0x747065636341;
  switch(*v0)
  {
    case 1:
      result = 0x7A69726F68747541;
      break;
    case 2:
      result = 0x746E756F436F6547;
      break;
    case 3:
      result = 0x7365757165522D58;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x2D746E65746E6F43;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B60B2494@<X0>(unint64_t *a1@<X8>)
{
  result = URLRequest.Header.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall URLRequest.addAcceptedMimeTypes(_:)(Swift::OpaquePointer a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68, &qword_1B622B910);
  sub_1B60358B4();
  sub_1B6221174();
  sub_1B621D254();
}

unint64_t sub_1B60B254C()
{
  result = qword_1EB924F70;
  if (!qword_1EB924F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924F70);
  }

  return result;
}

_BYTE *_s6HeaderOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1B60B267C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250B8, &qword_1B6239ED0);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for DayForecast(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB9250B8, &qword_1B6239ED0);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B6053F58();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B6053F58();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_47_1();
      sub_1B602F074();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B2844()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250B0, &unk_1B62267E0);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for HourForecast(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB9250B0, &unk_1B62267E0);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B6054BD4();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B6054BD4();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_46_1();
      sub_1B602F074();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B2A0C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250A0, &qword_1B62267D0);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for ForecastCondition(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB9250A0, &qword_1B62267D0);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B6055F3C();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B6055F3C();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B2BDC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925098, &qword_1B62267C8);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for ForecastSummary(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB925098, &qword_1B62267C8);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609B86C();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609B86C();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B2DAC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925090, &qword_1B62267C0);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for ForecastMinute(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB925090, &qword_1B62267C0);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B60563E8();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B60563E8();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B2F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67();
  v16 = MEMORY[0x1E69E7CC0];
  v24 = v17;
  for (i = v17; ; ++i)
  {
    if (v15 == i)
    {
      goto LABEL_15;
    }

    if (v15 < v24)
    {
      break;
    }

    if (i >= v15)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_38_2();
    v19();
    if (v12)
    {

LABEL_15:
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_114();
      return;
    }

    if (a12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609B948();
        v16 = v22;
      }

      OUTLINED_FUNCTION_65();
      if (v20)
      {
        OUTLINED_FUNCTION_32_2();
        sub_1B609B948();
        v16 = v23;
      }

      *(v16 + 16) = v14;
      v21 = v16 + 16 * v13;
      *(v21 + 32) = a11;
      *(v21 + 40) = a12;
    }

    else
    {
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1B60B306C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925080, &unk_1B62267B0);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for MarineHourForecast(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB925080, &unk_1B62267B0);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BA14();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BA14();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67();
  v16 = MEMORY[0x1E69E7CC0];
  v24 = v17;
  for (i = v17; ; ++i)
  {
    if (v15 == i)
    {
      goto LABEL_15;
    }

    if (v15 < v24)
    {
      break;
    }

    if (i >= v15)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_38_2();
    v19();
    if (v12)
    {

LABEL_15:
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_114();
      return;
    }

    if (a11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609BAF0();
        v16 = v22;
      }

      OUTLINED_FUNCTION_65();
      if (v20)
      {
        OUTLINED_FUNCTION_32_2();
        sub_1B609BAF0();
        v16 = v23;
      }

      *(v16 + 16) = v14;
      v21 = v16 + 16 * v13;
      *(v21 + 32) = a11;
      *(v21 + 40) = a12;
    }

    else
    {
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1B60B332C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925068, &qword_1B6226798);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for TideEvent(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB925068, &qword_1B6226798);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BBBC();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BBBC();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B34FC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925060, &qword_1B6226790);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for HourTide(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB925060, &qword_1B6226790);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BC98();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BC98();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B36CC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925058, &qword_1B6226788);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for WeatherAlert(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB925058, &qword_1B6226788);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BD74();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BD74();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B389C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925050, &qword_1B6226780);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for TrendDeviation(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB925050, &qword_1B6226780);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BE50();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BE50();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B3A6C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925048, &qword_1B6226778);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for WeatherComparison(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB925048, &qword_1B6226778);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BF2C();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BF2C();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B3C3C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250C0, &qword_1B62267F0);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for Weather(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB9250C0, &qword_1B62267F0);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609C008();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609C008();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1B60B3E0C()
{
  OUTLINED_FUNCTION_27_2();
  v3 = 0;
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  while (v5 != v3)
  {
    v7 = sub_1B621D3A4();
    OUTLINED_FUNCTION_28_1(v7);
    v2(v22, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v3);
    if (v0)
    {

      return OUTLINED_FUNCTION_66();
    }

    if (*(&v22[0] + 1))
    {
      v18 = v22[0];
      v19 = v22[1];
      v20 = v22[2];
      v21 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609C1B0();
        v6 = v15;
      }

      v10 = v6;
      v11 = *(v6 + 16);
      v12 = v10;
      v13 = v11 + 1;
      if (v11 >= *(v10 + 24) >> 1)
      {
        v24 = v11 + 1;
        sub_1B609C1B0();
        v13 = v24;
        v12 = v16;
      }

      ++v3;
      *(v12 + 16) = v13;
      v14 = v12 + 56 * v11;
      v6 = v12;
      *(v14 + 80) = v21;
      *(v14 + 48) = v19;
      *(v14 + 64) = v20;
      *(v14 + 32) = v18;
    }

    else
    {
      sub_1B6037288(v22, &qword_1EB9250C8, &qword_1B62267F8);
      ++v3;
    }
  }

  return OUTLINED_FUNCTION_66();
}

void sub_1B60B3FBC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_103(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB0, &unk_1B6226650);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_59();
  v20 = type metadata accessor for MarineForecast(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_101(v9);
  if (v10)
  {
    while (1)
    {
      OUTLINED_FUNCTION_69(v10);

      v11 = OUTLINED_FUNCTION_99();
      v12(v11);
      if (v1)
      {
        break;
      }

      OUTLINED_FUNCTION_119();

      OUTLINED_FUNCTION_16_5(v0, 1, v20);
      if (v13)
      {
        sub_1B6037288(v0, &qword_1EB924EB0, &unk_1B6226650);
      }

      else
      {
        v0 = v19;
        sub_1B602F074();
        sub_1B602F074();
        v14 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_14_7();
          sub_1B609C398();
          v14 = v17;
        }

        v16 = *(v14 + 16);
        if (v16 >= *(v14 + 24) >> 1)
        {
          sub_1B609C398();
          v14 = v18;
        }

        *(v14 + 16) = v16 + 1;
        OUTLINED_FUNCTION_16_6();
        sub_1B602F074();
      }

      v10 = v21 - 1;
      v2 += 56;
      if (v21 == 1)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_83();
  }

LABEL_14:
  OUTLINED_FUNCTION_13();
}

void sub_1B60B4284()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_103(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC0, &unk_1B6226640);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_59();
  v20 = type metadata accessor for TideEvents(v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_101(v9);
  if (v10)
  {
    while (1)
    {
      OUTLINED_FUNCTION_69(v10);

      v11 = OUTLINED_FUNCTION_99();
      v12(v11);
      if (v1)
      {
        break;
      }

      OUTLINED_FUNCTION_119();

      OUTLINED_FUNCTION_16_5(v0, 1, v20);
      if (v13)
      {
        sub_1B6037288(v0, &qword_1EB924EC0, &unk_1B6226640);
      }

      else
      {
        v0 = v19;
        sub_1B602F074();
        sub_1B602F074();
        v14 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_14_7();
          sub_1B609C474();
          v14 = v17;
        }

        v16 = *(v14 + 16);
        if (v16 >= *(v14 + 24) >> 1)
        {
          sub_1B609C474();
          v14 = v18;
        }

        *(v14 + 16) = v16 + 1;
        OUTLINED_FUNCTION_16_6();
        sub_1B602F074();
      }

      v10 = v21 - 1;
      v2 += 56;
      if (v21 == 1)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_83();
  }

LABEL_14:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_1B60B454C(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925118, &unk_1B6226850);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for WeatherRequest(0);
  v24[2] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v24[3] = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v24[1] = v24 - v12;
  v13 = 0;
  v14 = *(a3 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v14 == v13)
    {
      return v25;
    }

    v15 = *(type metadata accessor for WeatherServiceRequestLocation(0) - 8);
    a1(a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1B6037288(v8, &qword_1EB925118, &unk_1B6226850);
      ++v13;
    }

    else
    {
      v24[0] = type metadata accessor for WeatherRequest;
      sub_1B602F074();
      sub_1B602F074();
      v16 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B609C62C();
        v16 = v20;
      }

      v17 = v16;
      v18 = *(v16 + 16);
      v25 = v17;
      v19 = v18 + 1;
      if (v18 >= *(v17 + 24) >> 1)
      {
        v24[0] = v18 + 1;
        sub_1B609C62C();
        v19 = v24[0];
        v25 = v21;
      }

      ++v13;
      *(v25 + 16) = v19;
      sub_1B602F074();
    }
  }

  v22 = v25;

  return v22;
}

void sub_1B60B4868()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_3();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250E0, &qword_1B6226818);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8, &qword_1B6226820);
  OUTLINED_FUNCTION_2();
  v28 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_3();
  v29 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_40_0();
  v27 = v13;
  v14 = 0;
  v15 = *(v1 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  while (v15 != v14)
  {
    v16 = type metadata accessor for WeatherServiceRequestLocation(0);
    OUTLINED_FUNCTION_28_1(v16);
    v3(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v18 + 72) * v14);
    if (v0)
    {
      OUTLINED_FUNCTION_89();

      break;
    }

    OUTLINED_FUNCTION_16_5(v7, 1, v8);
    if (v19)
    {
      sub_1B6037288(v7, &qword_1EB9250E0, &qword_1B6226818);
      ++v14;
    }

    else
    {
      sub_1B60BFF1C();
      sub_1B60BFF1C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_14_7();
        sub_1B609C7E4();
        v30 = v23;
      }

      v21 = *(v30 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v30 + 24) >> 1)
      {
        v25[1] = *(v30 + 16);
        v26 = v21 + 1;
        sub_1B609C7E4();
        v22 = v26;
        v30 = v24;
      }

      ++v14;
      *(v30 + 16) = v22;
      OUTLINED_FUNCTION_16_6();
      sub_1B60BFF1C();
    }
  }

  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_13();
}

void sub_1B60B4B20()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_3();
  v22 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250D8, &qword_1B6226810);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_1();
  v7 = type metadata accessor for WeatherServiceRequestLocation(v6);
  v8 = OUTLINED_FUNCTION_3_11(v7);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40_0();
  v12 = 0;
  v13 = *(v1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  while (v13 != v12)
  {
    v22(v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v12);
    if (v0)
    {

      break;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v2, &qword_1EB9250D8, &qword_1B6226810);
      ++v12;
    }

    else
    {
      sub_1B602F074();
      sub_1B602F074();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_14_7();
        sub_1B609C708();
        v21 = v18;
      }

      v16 = *(v21 + 16);
      v17 = v16 + 1;
      if (v16 >= *(v21 + 24) >> 1)
      {
        v20 = v16 + 1;
        sub_1B609C708();
        v17 = v20;
        v21 = v19;
      }

      ++v12;
      *(v21 + 16) = v17;
      sub_1B602F074();
    }
  }

  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_13();
}

void sub_1B60B4D64()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925088, &qword_1B623A3A0);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for DayPartForecast(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB925088, &qword_1B623A3A0);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609CD68();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609CD68();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B4F34()
{
  OUTLINED_FUNCTION_27_2();
  v4 = HIDWORD(v3);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = v1;
  v20 = v7;
  while (1)
  {
    if (v4 == v6)
    {
      goto LABEL_14;
    }

    if (v4 < v1)
    {
      break;
    }

    if (v6 >= v4)
    {
      goto LABEL_16;
    }

    *(&v21 + 1) = v6;
    v2(&v21, &v21 + 1);
    if (v0)
    {

LABEL_14:
      OUTLINED_FUNCTION_66();
      return;
    }

    v8 = v21;
    if (v21 != 9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = OUTLINED_FUNCTION_12_5();
        sub_1B609CE44(v10, v11, v12, v13);
        v5 = v14;
      }

      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        OUTLINED_FUNCTION_32_2();
        sub_1B609CE44(v15, v16, v17, v18);
        v5 = v19;
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + v9 + 32) = v8;
      v2 = v20;
    }

    ++v6;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1B60B5044()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250A8, &qword_1B62267D8);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_1();
  v9 = type metadata accessor for PrecipitationConditionParameter(v8);
  v10 = OUTLINED_FUNCTION_3_11(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_15(v11, v17);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v13 = OUTLINED_FUNCTION_11_7();
    v2(v13);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v14)
    {
      sub_1B6037288(v3, &qword_1EB9250A8, &qword_1B62267D8);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609CF18();
      }

      OUTLINED_FUNCTION_22_3();
      if (v16)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609CF18();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v18;
      v1 = v19;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B5214()
{
  OUTLINED_FUNCTION_27_2();
  v4 = HIDWORD(v3);
  v5 = MEMORY[0x1E69E7CC0];
  for (i = v1; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_15;
    }

    if (v4 < v1)
    {
      break;
    }

    if (i >= v4)
    {
      goto LABEL_17;
    }

    v13 = i;
    v2(__src, &v13);
    if (v0)
    {

LABEL_15:
      OUTLINED_FUNCTION_66();
      return;
    }

    if (__src[1])
    {
      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609CFF4();
        v5 = v8;
      }

      v7 = *(v5 + 16);
      if (v7 >= *(v5 + 24) >> 1)
      {
        sub_1B609CFF4();
        v5 = v9;
      }

      memcpy(v10, __dst, sizeof(v10));
      *(v5 + 16) = v7 + 1;
      memcpy((v5 + 72 * v7 + 32), v10, 0x48uLL);
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      sub_1B6037288(__dst, &qword_1EB925070, &unk_1B62267A0);
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1B60B537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67();
  v16 = MEMORY[0x1E69E7CC0];
  v24 = v17;
  for (i = v17; ; ++i)
  {
    if (v15 == i)
    {
      goto LABEL_14;
    }

    if (v15 < v24)
    {
      break;
    }

    if (i >= v15)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_38_2();
    v19();
    if (v12)
    {

LABEL_14:
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_114();
      return;
    }

    if (a12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609B5D8();
        v16 = v22;
      }

      OUTLINED_FUNCTION_65();
      if (v20)
      {
        OUTLINED_FUNCTION_32_2();
        sub_1B609B5D8();
        v16 = v23;
      }

      *(v16 + 16) = v14;
      v21 = v16 + 16 * v13;
      *(v21 + 32) = a11;
      *(v21 + 40) = a12;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1B60B545C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_12_0();
  a20 = v23;
  a21 = v24;
  v26 = v25;
  v28 = v27;
  v29 = HIDWORD(v25);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925078, &qword_1B622ED90);
  OUTLINED_FUNCTION_0(v30);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_1();
  v32 = sub_1B621D944();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_15(v34, v50);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_40_0();
  v51 = v36;
  v55 = (v37 + 32);
  v38 = MEMORY[0x1E69E7CC0];
  v39 = v26;
  v53 = v28;
  v54 = v26;
  v52 = v40;
  while (1)
  {
    if (v29 == v39)
    {
      goto LABEL_16;
    }

    if (v29 < v26)
    {
      break;
    }

    if (v39 >= v29)
    {
      goto LABEL_18;
    }

    a11 = v39;
    v28(&a11);
    if (v21)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_16_5(v22, 1, v32);
    if (v41)
    {
      sub_1B6037288(v22, &qword_1EB925078, &qword_1B622ED90);
    }

    else
    {
      v42 = *v55;
      (*v55)(v51, v22, v32);
      v42(v56, v51, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609D0D4();
        v38 = v48;
      }

      v44 = *(v38 + 16);
      if (v44 >= *(v38 + 24) >> 1)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609D0D4();
        v38 = v49;
      }

      *(v38 + 16) = v44 + 1;
      OUTLINED_FUNCTION_16_6();
      v47 = v38 + v45 + *(v46 + 72) * v44;
      v32 = v52;
      v42(v47, v56, v52);
      v28 = v53;
      v26 = v54;
    }

    ++v39;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B56B0(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    sub_1B621D3A4();
    if (sub_1B621D384() == 0x7374655361746164 && v4 == 0xE800000000000000)
    {
    }

    else
    {
      v6 = sub_1B6221F24();

      if ((v6 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_1B621D394();
    if (v7)
    {
      sub_1B602C004();
      v8 = sub_1B6221A44();

      sub_1B60B5838(v8, a2);
    }

LABEL_12:
    ++v2;
  }
}

void sub_1B60B5838(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  for (i = (a1 + 40); v3; --v3)
  {
    v6 = *(i - 1);
    v5 = *i;
    swift_bridgeObjectRetain_n();
    v7._countAndFlagsBits = v6;
    v7._object = v5;
    WeatherProduct.init(rawValue:)(v7);
    if (v14 != 16)
    {
      v8 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B6073B94(0, *(v8 + 16) + 1, 1, v8);
        v8 = v12;
        *a2 = v12;
      }

      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B6073B94(v10 > 1, v11 + 1, 1, v8);
        v8 = v13;
        *a2 = v13;
      }

      *(v8 + 16) = v11 + 1;
      *(v8 + v11 + 32) = v14;
    }

    i += 2;
  }
}

uint64_t sub_1B60B5948(void *a1)
{

  sub_1B6220864();

  return v2;
}

uint64_t sub_1B60B5990()
{
  v0 = sub_1B6220544();
  MEMORY[0x1EEE9AC00](v0);
  sub_1B602CB84(&qword_1EDAB3F58, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924FD0, &qword_1B6230270);
  sub_1B602CAF4(&qword_1EDAB3D78, &qword_1EB924FD0, &qword_1B6230270, MEMORY[0x1E69E6328]);
  sub_1B6221AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925130, &qword_1B6226878);
  swift_allocObject();
  result = sub_1B6220874();
  qword_1EB924F78 = result;
  return result;
}

void *sub_1B60B5B04@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WeatherStatisticsDataStore();
  swift_allocObject();
  result = WeatherStatisticsDataStore.init()();
  *a1 = result;
  return result;
}

id sub_1B60B5D4C()
{
  OUTLINED_FUNCTION_129();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v21 = v8;
  v10 = v9;
  v11 = type metadata accessor for WDSEndpoint(0);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_1();
  sub_1B602E848();
  sub_1B602E8A0(v7, v27);
  sub_1B602E8A0(v5, v26);
  sub_1B602E8A0(v3, v25);
  v13 = type metadata accessor for WDSClient(0);
  v14 = OUTLINED_FUNCTION_73(v13);
  v23 = &type metadata for DefaultTaskScheduler;
  v24 = &protocol witness table for DefaultTaskScheduler;
  v15 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_logger;
  sub_1B602370C(0, &qword_1EDAB2128, 0x1E69E9BF8);
  OUTLINED_FUNCTION_100();
  *(v14 + v15) = sub_1B62219D4();
  v16 = (v14 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_defaultMimeType);
  *v16 = 0xD000000000000010;
  v16[1] = 0x80000001B623C4E0;
  OUTLINED_FUNCTION_25_1();
  sub_1B602F074();
  *(v14 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version) = 0;
  *(v14 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_session) = v21;
  sub_1B60273A4(v27, v14 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator);
  sub_1B60273A4(v26, v14 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
  sub_1B60273A4(v25, v14 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_configurationProvider);
  sub_1B60273A4(&v22, v14 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler);
  v1(0);
  OUTLINED_FUNCTION_84();
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *v10 = v17;
  OUTLINED_FUNCTION_48_0();

  return v18;
}

uint64_t objectdestroyTm_0()
{
  type metadata accessor for WDSEndpoint(0);
  OUTLINED_FUNCTION_57();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  sub_1B621D634();
  OUTLINED_FUNCTION_9();
  (*(v5 + 8))(v1 + v4);
  OUTLINED_FUNCTION_81();
  if (v6)
  {
  }

  OUTLINED_FUNCTION_68();
  __swift_destroy_boxed_opaque_existential_1((v1 + v0));
  __swift_destroy_boxed_opaque_existential_1((v1 + v1 + v4));
  __swift_destroy_boxed_opaque_existential_1((v1 + v4));

  return MEMORY[0x1EEE6BDD0](v1, v4 + 40, v3 | 7);
}

id sub_1B60B6078()
{
  v0 = type metadata accessor for WDSEndpoint(0);
  OUTLINED_FUNCTION_28_1(v0);
  OUTLINED_FUNCTION_51_0();
  return sub_1B60B5D4C();
}

uint64_t objectdestroy_5Tm()
{
  type metadata accessor for WDSEndpoint(0);
  OUTLINED_FUNCTION_57();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  sub_1B621D634();
  OUTLINED_FUNCTION_9();
  (*(v5 + 8))(v1 + v4);
  OUTLINED_FUNCTION_81();
  if (v6)
  {
  }

  OUTLINED_FUNCTION_68();
  __swift_destroy_boxed_opaque_existential_1((v1 + v0));
  __swift_destroy_boxed_opaque_existential_1((v1 + v1 + v4));
  __swift_destroy_boxed_opaque_existential_1((v1 + v4));

  return MEMORY[0x1EEE6BDD0](v1, v4 + 41, v3 | 7);
}

void sub_1B60B6248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), uint64_t (*a22)(void), uint64_t (*a23)(__int128 *, uint64_t, uint64_t), uint64_t a24)
{
  OUTLINED_FUNCTION_44();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = type metadata accessor for WDSEndpoint(0);
  v39 = OUTLINED_FUNCTION_0(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_1();
  sub_1B602E848();
  sub_1B602E8A0(v31, v55);
  sub_1B602E8A0(v29, v54);
  sub_1B602E8A0(v27, v53);
  v40 = type metadata accessor for WDSClient(0);
  v41 = OUTLINED_FUNCTION_73(v40);
  v51 = &type metadata for DefaultTaskScheduler;
  v52 = &protocol witness table for DefaultTaskScheduler;
  v42 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_logger;
  sub_1B602370C(0, &qword_1EDAB2128, 0x1E69E9BF8);
  OUTLINED_FUNCTION_100();
  *(v41 + v42) = sub_1B62219D4();
  v43 = (v41 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_defaultMimeType);
  *v43 = 0xD000000000000010;
  v43[1] = 0x80000001B623C4E0;
  OUTLINED_FUNCTION_25_1();
  sub_1B602F074();
  *(v41 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version) = v35;
  *(v41 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_session) = v33;
  sub_1B60273A4(v55, v41 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator);
  sub_1B60273A4(v54, v41 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
  sub_1B60273A4(v53, v41 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_configurationProvider);
  sub_1B60273A4(&v50, v41 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler);
  a21(0);
  OUTLINED_FUNCTION_84();
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  LOBYTE(v55[0]) = v25 & 1;
  v45 = qword_1EB924410;
  v46 = v33;

  if (v45 != -1)
  {
    swift_once();
  }

  v47 = qword_1EB924F78;
  v48 = a22(0);
  swift_allocObject();

  v49 = a23(v55, v44, v47);
  v37[3] = v48;
  v37[4] = a24;

  *v37 = v49;
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B60B6528(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6220B34();
    __swift_project_value_buffer(v8, qword_1EDAC2AB0);
    v9 = sub_1B6220B14();
    v10 = sub_1B62217F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B6020000, v9, v10, "Empty request - returning empty response array", v11, 2u);
      MEMORY[0x1B8C91C90](v11, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1B6221504();
  v2 = *(v1 + 16);
  if (!v2)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v13 = MEMORY[0x1E69E7CC0];
  sub_1B6035220(0, v2, 0);
  v3 = 32;
  v4 = v13;
  do
  {
    v5 = byte_1B622695A[*(v1 + v3)];
    v7 = *(v13 + 16);
    v6 = *(v13 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1B6035220(v6 > 1, v7 + 1, 1);
    }

    *(v13 + 16) = v7 + 1;
    *(v13 + v7 + 32) = v5;
    ++v3;
    --v2;
  }

  while (v2);

  return v4;
}

unint64_t sub_1B60B6710@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  result = WeatherDataRequest.rawValue.getter(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B60B673C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B621D944();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30, &unk_1B6226390);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28, &unk_1B62265F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18, &unk_1B6226600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v74 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10, &unk_1B6226370);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08, &unk_1B6226610);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00, &unk_1B6226360);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v78 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8, &unk_1B6226620);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v51 - v24;
  v26 = a1[1];
  v61 = *a1;
  v76 = v26;
  v27 = type metadata accessor for WeatherDataRequestOptions(0);
  v67 = v25;
  sub_1B603A990();
  v64 = *(a1 + v27[6]);
  v66 = v22;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v28 = type metadata accessor for WeatherInterpolationOptions(0);
  v29 = v68;
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v28);
  v30 = v27[8];
  v31 = (a1 + v27[7]);
  v32 = *v31;
  v59 = v31[1];
  v60 = v32;
  v63 = *(a1 + v30);
  v62 = *(a1 + v30 + 8);
  v33 = v27[10];
  v54 = *(a1 + v27[9]);
  v34 = a1 + v27[21];
  v53 = *v34;
  v52 = *(v34 + 2);
  v35 = *(v34 + 6);
  v34 += 24;
  v58 = v35;
  v55 = *(v34 + 2);
  v57 = *(a1 + v33);
  v51 = v34[6];
  v36 = v70;
  sub_1B603A990();
  v56 = *(a1 + v27[18]);
  v37 = *(a1 + v27[20]);
  v69 = *(a1 + v27[22]);
  v38 = v76;
  *a2 = v61;
  a2[1] = v38;
  v39 = type metadata accessor for WeatherRequestOptions(0);
  sub_1B603A990();
  *(a2 + v39[6]) = v64;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v40 = v65;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v41 = (a2 + v39[14]);
  v42 = v59;
  *v41 = v60;
  v41[1] = v42;
  v43 = a2 + v39[15];
  *v43 = v63;
  *(v43 + 4) = v62;
  *(a2 + v39[16]) = v54;
  v44 = a2 + v39[17];
  *v44 = v53;
  *(v44 + 2) = v52;
  v44[30] = v51;
  *(v44 + 14) = v55;
  *(v44 + 6) = v58;
  *(a2 + v39[18]) = v57;
  sub_1B603A990();
  *(a2 + v39[20]) = v56;
  *(a2 + v39[21]) = v37;
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  v45 = v71;
  _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
  v46 = sub_1B621D904();
  v48 = v47;
  (*(v72 + 8))(v45, v73);
  sub_1B6037288(v36, &qword_1EB924F30, &unk_1B6226390);
  sub_1B6037288(v29, &qword_1EB924F28, &unk_1B62265F0);
  sub_1B6037288(v75, &qword_1EB924F20, &unk_1B6226380);
  sub_1B6037288(v74, &qword_1EB924F18, &unk_1B6226600);
  sub_1B6037288(v40, &qword_1EB924F10, &unk_1B6226370);
  sub_1B6037288(v77, &qword_1EB924F08, &unk_1B6226610);
  sub_1B6037288(v78, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v66, &qword_1EB924F00, &unk_1B6226360);
  result = sub_1B6037288(v67, &qword_1EB924EF8, &unk_1B6226620);
  v50 = (a2 + v39[22]);
  *v50 = v46;
  v50[1] = v48;
  *(a2 + v39[23]) = v69;
  return result;
}

uint64_t sub_1B60B6FD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = sub_1B60B6528(a1);
  v10 = type metadata accessor for WeatherRequest(0);
  result = sub_1B60B673C(a2, (a3 + *(v10 + 24)));
  *a3 = v9;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  v12 = (a3 + *(v10 + 28));
  *v12 = 0;
  v12[1] = 0;
  return result;
}

id WeatherDataServiceProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherDataServiceProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void WeatherDataServiceProxy.performRequests(with:completion:)()
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_60();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = sub_1B6220B34();
  __swift_project_value_buffer(v1, qword_1EDAC2AB0);
  v2 = v0;
  v3 = sub_1B6220B14();
  sub_1B62217F4();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_9_3();
    swift_slowAlloc();
    v4 = OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_94(v4, 5.8381e-34);
    OUTLINED_FUNCTION_53_0(&dword_1B6020000, v5, v6, "Received XPC message for fetching requests: %{public}@");
    sub_1B6037288(v4, &qword_1EB924E68, &unk_1B6226DD0);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_102_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927520, &unk_1B62265B0);
  sub_1B62209F4();
  OUTLINED_FUNCTION_90();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_63(v8);
  v9 = sub_1B62208D4();
  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_90();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_63(v10);
  v11 = sub_1B62208D4();
  OUTLINED_FUNCTION_92_0(v11);

  OUTLINED_FUNCTION_48_0();
}

void WeatherDataServiceProxy.fetchAvailableDataSets(with:completion:)()
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_60();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = sub_1B6220B34();
  __swift_project_value_buffer(v1, qword_1EDAC2AB0);
  v2 = v0;
  v3 = sub_1B6220B14();
  sub_1B62217F4();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_9_3();
    swift_slowAlloc();
    v4 = OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_94(v4, 5.8381e-34);
    OUTLINED_FUNCTION_53_0(&dword_1B6020000, v5, v6, "Received XPC message for fetching requests: %{public}@");
    sub_1B6037288(v4, &qword_1EB924E68, &unk_1B6226DD0);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_102_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB927110, &qword_1B62265C0);
  sub_1B62209F4();
  OUTLINED_FUNCTION_90();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_63(v8);
  v9 = sub_1B62208D4();
  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_90();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_63(v10);
  v11 = sub_1B62208D4();
  OUTLINED_FUNCTION_92_0(v11);

  OUTLINED_FUNCTION_48_0();
}

void sub_1B60B7744(uint64_t *a1, void (*a2)(id), uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  objc_allocWithZone(a4(0));
  v7 = sub_1B6220784();
  v8 = a5(v7);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v9 = sub_1B6220B34();
  __swift_project_value_buffer(v9, qword_1EDAC2AB0);
  v10 = v8;
  v11 = sub_1B6220B14();
  v12 = sub_1B62217F4();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_9_3();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1B6020000, v11, v12, "Calling XPC completion with responses: %{public}@", v13, 0xCu);
    sub_1B6037288(v14, &qword_1EB924E68, &unk_1B6226DD0);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  a2(v10);
}

void sub_1B60B78C8()
{
  OUTLINED_FUNCTION_44();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B6220604();
  v9 = OUTLINED_FUNCTION_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v13 = v7;
  sub_1B6220614();
  v14 = objc_allocWithZone(v3(0));
  v15 = v1(v12);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v16 = sub_1B6220B34();
  __swift_project_value_buffer(v16, qword_1EDAC2AB0);
  v17 = v7;
  v18 = sub_1B6220B14();
  sub_1B62217E4();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_9_3();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136446210;
    v21 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910, &qword_1B62237D0);
    v22 = sub_1B6221234();
    v24 = sub_1B602EEB0(v22, v23, &v31);

    *(v19 + 4) = v24;
    OUTLINED_FUNCTION_53_0(&dword_1B6020000, v25, v26, "Calling XPC completion with error: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90](v27, v28);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90](v29, v30);
  }

  v5(v15);
  OUTLINED_FUNCTION_45();
}

double sub_1B60B7AD4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_84();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);

  return result;
}

void WeatherDataServiceProxy.fetchAirQualityScale(with:completion:)()
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_60();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = sub_1B6220B34();
  __swift_project_value_buffer(v1, qword_1EDAC2AB0);
  v2 = v0;
  v3 = sub_1B6220B14();
  sub_1B62217F4();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_9_3();
    swift_slowAlloc();
    v4 = OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_94(v4, 5.8381e-34);
    OUTLINED_FUNCTION_53_0(&dword_1B6020000, v5, v6, "Received XPC message for fetching air quality scale: %{public}@");
    sub_1B6037288(v4, &qword_1EB924E68, &unk_1B6226DD0);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1B62209F4();
  OUTLINED_FUNCTION_90();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_63(v8);
  v9 = sub_1B62208D4();
  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_90();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_63(v10);
  v11 = sub_1B62208D4();
  OUTLINED_FUNCTION_92_0(v11);

  OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1B60B7D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC13WeatherDaemon27AirQualityScaleProxyRequest_name);
  v3 = *(a2 + OBJC_IVAR____TtC13WeatherDaemon27AirQualityScaleProxyRequest_name + 8);
  v4 = *(a2 + OBJC_IVAR____TtC13WeatherDaemon27AirQualityScaleProxyRequest_options);
  v5 = *(a2 + OBJC_IVAR____TtC13WeatherDaemon27AirQualityScaleProxyRequest_options + 8);
  sub_1B60B5948(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyAirQualityScaleService);
  sub_1B60DC480(v2, v3, v4, v5);
  v7 = v6;

  return v7;
}

uint64_t WeatherDataServiceProxy.fetchAirQualityScale(named:with:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_1B60B5948(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyAirQualityScaleService);
  v6 = OUTLINED_FUNCTION_104();
  sub_1B60DC480(v6, a2, v4, v5);
  v8 = v7;

  return v8;
}

void sub_1B60B7E5C(void *__src, void (*a2)(id))
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  v4 = objc_allocWithZone(type metadata accessor for AirQualityScaleProxyResponse(0));
  sub_1B60BFF80(__dst, &v13);
  v5 = AirQualityScaleProxyResponse.init(scale:)();
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v6 = sub_1B6220B34();
  __swift_project_value_buffer(v6, qword_1EDAC2AB0);
  v7 = v5;
  v8 = sub_1B6220B14();
  v9 = sub_1B62217F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1B6020000, v8, v9, "Calling XPC completion with responses: %{public}@", v10, 0xCu);
    sub_1B6037288(v11, &qword_1EB924E68, &unk_1B6226DD0);
    MEMORY[0x1B8C91C90](v11, -1, -1);
    MEMORY[0x1B8C91C90](v10, -1, -1);
  }

  a2(v7);
}

uint64_t sub_1B60B8054()
{
  v1 = sub_1B621D3A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1B603AA90())
  {
    return sub_1B605F170();
  }

  v5 = sub_1B6221504();

  v6 = *(v5 + 16);
  if (v6)
  {
    v29[2] = v0;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B603C6EC(0, v6, 0);
    v7 = v36;
    v8 = v2 + 16;
    v9 = *(v2 + 16);
    v10 = *(v2 + 80);
    v29[1] = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v31 = *(v8 + 56);
    v32 = v9;
    v33 = v8;
    v30 = (v8 - 8);
    do
    {
      v32(v4, v11, v1);
      v12 = sub_1B621D394();
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        v34 = sub_1B621D384();
        v35 = v16;
        MEMORY[0x1B8C90530](61, 0xE100000000000000);
        MEMORY[0x1B8C90530](v14, v15);

        v17 = v34;
        v18 = v35;
      }

      else
      {
        v17 = sub_1B621D384();
        v18 = v19;
      }

      v20 = v1;
      (*v30)(v4, v1);
      v36 = v7;
      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B603C6EC(v21 > 1, v22 + 1, 1);
        v7 = v36;
      }

      *(v7 + 16) = v22 + 1;
      v23 = v7 + 16 * v22;
      *(v23 + 32) = v17;
      *(v23 + 40) = v18;
      v11 += v31;
      --v6;
      v1 = v20;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v34 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68, &qword_1B622B910);
  sub_1B602CAF4(&qword_1EDAB2168, &qword_1EB924F68, &qword_1B622B910, MEMORY[0x1E69E6310]);
  v25 = sub_1B6221174();
  v27 = v26;

  v34 = sub_1B605F170();
  v35 = v28;
  MEMORY[0x1B8C90530](63, 0xE100000000000000);
  MEMORY[0x1B8C90530](v25, v27);

  return v34;
}

uint64_t sub_1B60B8384(double a1, double a2, uint64_t a3, char *a4)
{
  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  __swift_project_boxed_opaque_existential_1(v25, v26);
  DynamicType = swift_getDynamicType();
  v8 = v27;
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v9 = sub_1B6220B34();
  __swift_project_value_buffer(v9, qword_1EDAC2AB0);
  v10 = sub_1B6220B14();
  v11 = sub_1B62217F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136315138;
    v14 = sub_1B6222144();
    v16 = sub_1B602EEB0(v14, v15, v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B6020000, v10, v11, "About to fetch products via %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B8C91C90](v13, -1, -1);
    MEMORY[0x1B8C91C90](v12, -1, -1);
  }

  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  v17 = v26;
  v18 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v19 = *a4;
  v20 = type metadata accessor for WeatherRequest(0);
  (*(v18 + 16))(v19, &a4[*(v20 + 24)], v17, v18, a1, a2);
  v21 = swift_allocObject();
  *(v21 + 16) = DynamicType;
  *(v21 + 24) = v8;
  v22 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927520, &unk_1B62265B0);
  v23 = sub_1B6220934();

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v23;
}

void sub_1B60B8618(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for WeatherModel(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010, &unk_1B62265E0);
  MEMORY[0x1EEE9AC00](v54);
  v65 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v46 - v12;
  v13 = type metadata accessor for WeatherDataResponse(0);
  v51 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *a1;
  if (qword_1EDAB3D80 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v16 = sub_1B6220B34();
    __swift_project_value_buffer(v16, qword_1EDAC2AB0);
    v17 = sub_1B6220B14();
    v18 = sub_1B62217F4();
    v19 = os_log_type_enabled(v17, v18);
    v55 = v9;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v66 = v21;
      *v20 = 136315138;
      v22 = sub_1B6222144();
      v24 = sub_1B602EEB0(v22, v23, &v66);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1B6020000, v17, v18, "Finished fetching products via %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1B8C91C90](v21, -1, -1);
      MEMORY[0x1B8C91C90](v20, -1, -1);
    }

    v25 = *(v58 + 16);
    v26 = MEMORY[0x1E69E7CC0];
    if (!v25)
    {
      break;
    }

    v64 = v3;
    v66 = MEMORY[0x1E69E7CC0];
    sub_1B605B7F4(0, v25, 0);
    v27 = v58;
    v26 = v66;
    v9 = sub_1B605B84C(v58);
    v30 = 0;
    v31 = v27 + 64;
    v48 = v28;
    v49 = v25;
    v47 = v27 + 72;
    v50 = v27 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v27 + 32))
    {
      if ((*(v31 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v27 + 36) != v28)
      {
        goto LABEL_31;
      }

      v62 = 1 << v9;
      v63 = v9 >> 6;
      v60 = v30;
      v61 = v28;
      v59 = v29;
      v32 = *(*(v27 + 48) + v9);
      v33 = v53;
      *v53 = v32;
      v3 = &qword_1EB925000;
      sub_1B603A990();
      *v65 = *v33;
      sub_1B60BFF1C();
      sub_1B603A990();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        swift_willThrow();
LABEL_27:
        sub_1B6037288(v65, &qword_1EB925010, &unk_1B62265E0);

        return;
      }

      v34 = v52;
      sub_1B602F074();
      v35 = v64;
      sub_1B605B89C(v34, v15);
      v64 = v35;
      if (v35)
      {
        goto LABEL_27;
      }

      sub_1B6037288(v65, &qword_1EB925010, &unk_1B62265E0);
      v66 = v26;
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B605B7F4(v36 > 1, v37 + 1, 1);
        v26 = v66;
      }

      *(v26 + 16) = v37 + 1;
      sub_1B602F074();
      v27 = v58;
      v38 = 1 << *(v58 + 32);
      if (v9 >= v38)
      {
        goto LABEL_32;
      }

      v31 = v50;
      v39 = *(v50 + 8 * v63);
      if ((v39 & v62) == 0)
      {
        goto LABEL_33;
      }

      if (*(v58 + 36) != v61)
      {
        goto LABEL_34;
      }

      v40 = v39 & (-2 << (v9 & 0x3F));
      if (v40)
      {
        v38 = __clz(__rbit64(v40)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v41 = v49;
      }

      else
      {
        v3 = (v63 << 6);
        v42 = v63 + 1;
        v43 = (v47 + 8 * v63);
        v41 = v49;
        while (v42 < (v38 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v3 += 8;
          ++v42;
          if (v45)
          {
            sub_1B60BFF74(v9, v61, v59 & 1);
            v38 = v3 + __clz(__rbit64(v44));
            goto LABEL_24;
          }
        }

        sub_1B60BFF74(v9, v61, v59 & 1);
      }

LABEL_24:
      v29 = 0;
      v30 = v60 + 1;
      v9 = v38;
      v28 = v48;
      if (v60 + 1 == v41)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_28:
  v66 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925120, &unk_1B6226860);
  swift_allocObject();
  sub_1B6220994();
}

void WeatherDataServiceProxy.perform(requests:for:with:)()
{
  OUTLINED_FUNCTION_44();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for WeatherRequestOptions(0);
  v8 = OUTLINED_FUNCTION_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = (v10 - v9);
  v37 = v0;
  v38 = v6;
  v39 = v2;
  v12 = sub_1B60B454C(sub_1B60BE64C, v36, v4);
  if (*(v12 + 16) == *(v4 + 16))
  {
    v13 = sub_1B60B6528(v6);
    sub_1B60B673C(v2, v11);
    v14 = *v11;
    v15 = v11[1];
    sub_1B6220784();
    v16 = sub_1B60B9000(v14, v15, v12);
    v18 = v17;

    v40[0] = v16;
    v40[1] = v18;
    MEMORY[0x1EEE9AC00](v19);
    *&v36[-32] = v0;
    *&v36[-24] = v4;
    *&v36[-16] = v13;
    *&v36[-8] = v11;
    sub_1B6220784();
    sub_1B6220714();
    swift_bridgeObjectRelease_n();

    OUTLINED_FUNCTION_13_5();
    sub_1B602FC9C(v11, v20);
  }

  else
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v21 = sub_1B6220B34();
    __swift_project_value_buffer(v21, qword_1EDAC2AB0);
    sub_1B6220784();
    v22 = sub_1B6220B14();
    v23 = sub_1B62217E4();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_110();
      swift_slowAlloc();
      OUTLINED_FUNCTION_64();
      v24 = swift_slowAlloc();
      v40[0] = v24;
      OUTLINED_FUNCTION_26(7.2225e-34);
      v25 = type metadata accessor for WeatherServiceRequestLocation(0);
      v26 = MEMORY[0x1B8C906E0](v4, v25);
      v28 = sub_1B602EEB0(v26, v27, v40);

      *(v11 + 14) = v28;
      OUTLINED_FUNCTION_56();
      _os_log_impl(v29, v30, v31, v32, v33, v34);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    v40[0] = MEMORY[0x1E69E7CC0];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924FF8, &qword_1B62265C8);
    OUTLINED_FUNCTION_73(v35);
    sub_1B6220994();
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B60B8FA0@<X0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  sub_1B60B6FD0(a2, a3, a4, *a1, a1[1]);
  v5 = type metadata accessor for WeatherRequest(0);
  return __swift_storeEnumTagSinglePayload(a4, 0, 1, v5);
}

uint64_t sub_1B60B9000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for WeatherRequest(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v12 = 0xE000000000000000;
    do
    {
      sub_1B602E848();
      v13 = sub_1B60B8054();
      v15 = v14;
      v18 = v9;
      v19 = v12;
      sub_1B6220784();
      MEMORY[0x1B8C90530](v13, v15);

      v9 = v18;
      v12 = v19;
      sub_1B602FC9C(v7, type metadata accessor for WeatherRequest);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  v16 = sub_1B6221294();

  return v16;
}

uint64_t sub_1B60B9194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  DynamicType = swift_getDynamicType();
  v8 = v34;
  __swift_destroy_boxed_opaque_existential_1(v32);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v9 = sub_1B6220B34();
  __swift_project_value_buffer(v9, qword_1EDAC2AB0);
  sub_1B6220784();
  v10 = sub_1B6220B14();
  v11 = sub_1B62217F4();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = a4;
    v31 = a3;
    v12 = swift_slowAlloc();
    v13 = v8;
    v14 = swift_slowAlloc();
    v32[0] = v14;
    *v12 = 136315651;
    v15 = sub_1B6222144();
    v17 = sub_1B602EEB0(v15, v16, v32);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    v18 = type metadata accessor for WeatherServiceRequestLocation(0);
    v19 = MEMORY[0x1B8C906E0](a2, v18);
    v21 = sub_1B602EEB0(v19, v20, v32);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_1B6020000, v10, v11, "About to fetch products via %s, locations=%{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
    v22 = v14;
    v8 = v13;
    MEMORY[0x1B8C91C90](v22, -1, -1);
    v23 = v12;
    a4 = v30;
    a3 = v31;
    MEMORY[0x1B8C91C90](v23, -1, -1);
  }

  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  v24 = v33;
  v25 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v25 + 24))(a3, a2, a4, v24, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = DynamicType;
  *(v26 + 24) = v8;
  v27 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925110, &qword_1B6226848);
  v28 = sub_1B6220934();

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v28;
}

void sub_1B60B9488(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1EDAB3D80 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = sub_1B6220B34();
    __swift_project_value_buffer(v4, qword_1EDAC2AB0);
    v5 = sub_1B6220B14();
    v6 = sub_1B62217F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136315138;
      v9 = sub_1B6222144();
      v11 = sub_1B602EEB0(v9, v10, &v26);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1B6020000, v5, v6, "Finished fetching products via %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1B8C91C90](v8, -1, -1);
      MEMORY[0x1B8C91C90](v7, -1, -1);
    }

    v12 = *(v3 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
      break;
    }

    v26 = MEMORY[0x1E69E7CC0];
    sub_1B60AA4BC(0, v12, 0);
    v14 = 0;
    v13 = v26;
    v15 = v3 + 48;
    while (v14 < *(v3 + 16))
    {
      v16 = sub_1B6220784();
      v17 = sub_1B60B970C(v16);
      if (v2)
      {

        return;
      }

      v20 = v18;
      v21 = v19;
      v22 = v17;

      v26 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B60AA4BC(v23 > 1, v24 + 1, 1);
        v13 = v26;
      }

      ++v14;
      *(v13 + 16) = v24 + 1;
      v25 = (v13 + 24 * v24);
      v25[4] = v20;
      v25[5] = v21;
      v25[6] = v22;
      v15 += 24;
      if (v12 == v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

LABEL_11:
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924FF8, &qword_1B62265C8);
  swift_allocObject();
  sub_1B6220994();
}

uint64_t sub_1B60B970C(uint64_t a1)
{
  v3 = type metadata accessor for WeatherModel(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010, &unk_1B62265E0);
  MEMORY[0x1EEE9AC00](v44);
  v56 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v36 - v10;
  v11 = type metadata accessor for WeatherDataResponse(0);
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    return v16;
  }

  v55 = v1;
  v57 = MEMORY[0x1E69E7CC0];
  v48 = v12;
  sub_1B605B7F4(0, v15, 0);
  v16 = v57;
  result = sub_1B605B84C(v48);
  v20 = v48;
  v21 = 0;
  v54 = v48 + 64;
  v38 = v18;
  v37 = v48 + 72;
  v41 = v7;
  v39 = v15;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v20 + 32))
  {
    if ((*(v54 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    if (*(v20 + 36) != v18)
    {
      goto LABEL_28;
    }

    v51 = 1 << result;
    v52 = result >> 6;
    v49 = v21;
    v50 = v18;
    v47 = v19;
    v22 = v14;
    v23 = v43;
    *v43 = *(*(v20 + 48) + result);
    v53 = result;
    sub_1B603A990();
    *v56 = *v23;
    sub_1B60BFF1C();
    sub_1B603A990();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_willThrow();
LABEL_24:
      sub_1B6037288(v56, &qword_1EB925010, &unk_1B62265E0);

      return v16;
    }

    v24 = v42;
    sub_1B602F074();
    v14 = v22;
    v25 = v55;
    sub_1B605B89C(v24, v22);
    v55 = v25;
    if (v25)
    {
      goto LABEL_24;
    }

    sub_1B6037288(v56, &qword_1EB925010, &unk_1B62265E0);
    v57 = v16;
    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1B605B7F4(v26 > 1, v27 + 1, 1);
      v16 = v57;
    }

    *(v16 + 16) = v27 + 1;
    sub_1B602F074();
    v20 = v48;
    v28 = 1 << *(v48 + 32);
    result = v53;
    if (v53 >= v28)
    {
      goto LABEL_29;
    }

    v29 = *(v54 + 8 * v52);
    if ((v29 & v51) == 0)
    {
      goto LABEL_30;
    }

    if (*(v48 + 36) != v50)
    {
      goto LABEL_31;
    }

    v30 = v29 & (-2 << (v53 & 0x3F));
    if (v30)
    {
      v28 = __clz(__rbit64(v30)) | v53 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v52 << 6;
      v32 = v52 + 1;
      v33 = (v37 + 8 * v52);
      while (v32 < (v28 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          sub_1B60BFF74(v53, v50, v47 & 1);
          v20 = v48;
          v28 = __clz(__rbit64(v34)) + v31;
          goto LABEL_21;
        }
      }

      sub_1B60BFF74(v53, v50, v47 & 1);
      v20 = v48;
    }

LABEL_21:
    v19 = 0;
    v21 = v49 + 1;
    result = v28;
    v18 = v38;
    if (v49 + 1 == v39)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void WeatherDataServiceProxy.fetchWeatherAlert(with:for:timezone:)()
{
  OUTLINED_FUNCTION_129();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1B60B5948(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyWeatherAlertService);
  sub_1B610A890(v11, v9, v7, v5, v3, v1);

  OUTLINED_FUNCTION_48_0();
}

uint64_t WeatherDataServiceProxy.fetchInstantWeather(spanning:stride:for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_58();
  CLLocationCoordinate2D.id.getter();
  v3 = sub_1B6220724();

  return v3;
}

uint64_t sub_1B60B9DC4(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, double a6, double a7)
{
  v91 = a5;
  v87 = a4;
  v84 = a2;
  v85 = a3;
  v10 = sub_1B621D944();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30, &unk_1B6226390);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28, &unk_1B62265F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v93 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v92 = &v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18, &unk_1B6226600);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v83 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10, &unk_1B6226370);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v96 = &v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08, &unk_1B6226610);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v69 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00, &unk_1B6226360);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v69 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8, &unk_1B6226620);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v95 = &v69 - v32;
  v33 = type metadata accessor for WeatherRequestOptions(0);
  v34 = (v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a1[1];
  v82 = *a1;
  v80 = v37;
  v38 = type metadata accessor for WeatherDataRequestOptions(0);
  sub_1B603A990();
  v79 = *(a1 + v38[6]);
  v39 = sub_1B621D364();
  v81 = v30;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v39);
  v40 = type metadata accessor for WeatherRequestDailyRelativeRange(0);
  v78 = v24;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v40);
  v41 = type metadata accessor for WeatherRequestHourlyRelativeRange(0);
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v41);
  v42 = v83;
  sub_1B603A990();
  v43 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange(0);
  __swift_storeEnumTagSinglePayload(v92, 1, 1, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925108, &qword_1B6226840);
  v45 = &v93[*(v44 + 48)];
  v46 = v93;
  (*(*(v39 - 8) + 16))();
  *v45 = v85;
  v45[8] = v87 & 1;
  v47 = type metadata accessor for WeatherInterpolationOptions(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
  v48 = v38[9];
  v49 = a1 + v38[8];
  v75 = *v49;
  v74 = *(v49 + 4);
  v84 = *(a1 + v48);
  v50 = a1 + v38[21];
  v77 = *v50;
  v76 = *(v50 + 2);
  v51 = *(v50 + 6);
  v50 += 24;
  v85 = v51;
  v73 = *(v50 + 2);
  v70 = v50[6];
  v52 = type metadata accessor for WDSNetworkActivity(0);
  v53 = v86;
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v52);
  v72 = *(a1 + v38[18]);
  v71 = *(a1 + v38[20]);
  v87 = *(a1 + v38[22]);
  v54 = v80;
  *v36 = v82;
  v36[1] = v54;
  sub_1B603A990();
  *(v36 + v34[8]) = v79;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v55 = v92;
  sub_1B603A990();
  v56 = v93;
  sub_1B603A990();
  v57 = (v36 + v34[16]);
  *v57 = 0;
  v57[1] = 0;
  v58 = v36 + v34[17];
  *v58 = v75;
  *(v58 + 4) = v74;
  *(v36 + v34[18]) = v84;
  v59 = v36 + v34[19];
  *v59 = v77;
  *(v59 + 2) = v76;
  v59[30] = v70;
  *(v59 + 14) = v73;
  *(v59 + 6) = v85;
  *(v36 + v34[20]) = MEMORY[0x1E69E7CC0];
  sub_1B603A990();
  *(v36 + v34[22]) = v72;
  *(v36 + v34[23]) = v71;
  sub_1B6220784();
  sub_1B6220784();
  v60 = v88;
  _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
  v61 = sub_1B621D904();
  v85 = v62;
  (*(v89 + 8))(v60, v90);
  sub_1B6037288(v53, &qword_1EB924F30, &unk_1B6226390);
  sub_1B6037288(v56, &qword_1EB924F28, &unk_1B62265F0);
  sub_1B6037288(v55, &qword_1EB924F20, &unk_1B6226380);
  sub_1B6037288(v42, &qword_1EB924F18, &unk_1B6226600);
  sub_1B6037288(v96, &qword_1EB924F10, &unk_1B6226370);
  sub_1B6037288(v78, &qword_1EB924F08, &unk_1B6226610);
  sub_1B6037288(v94, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v81, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v95, &qword_1EB924EF8, &unk_1B6226620);
  v63 = (v36 + v34[24]);
  v64 = v85;
  *v63 = v61;
  v63[1] = v64;
  *(v36 + v34[25]) = v87;
  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  v65 = v98;
  v66 = v99;
  __swift_project_boxed_opaque_existential_1(v97, v98);
  v67 = (*(v66 + 8))(v36, v65, v66, a6, a7);
  sub_1B602FC9C(v36, type metadata accessor for WeatherRequestOptions);
  __swift_destroy_boxed_opaque_existential_1(v97);
  return v67;
}

uint64_t WeatherDataServiceProxy.fetchInstantWeather(at:for:with:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58();
  CLLocationCoordinate2D.id.getter();
  v2 = sub_1B6220724();

  return v2;
}

uint64_t sub_1B60BA834(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v92 = a3;
  v84 = a2;
  v8 = sub_1B621D944();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30, &unk_1B6226390);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v85 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28, &unk_1B62265F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v97 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18, &unk_1B6226600);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = &v68 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10, &unk_1B6226370);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v93 = &v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08, &unk_1B6226610);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00, &unk_1B6226360);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8, &unk_1B6226620);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v68 - v30;
  v32 = type metadata accessor for WeatherRequestOptions(0);
  v33 = (v32 - 8);
  v88 = *(v32 - 8);
  v87 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v86 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v68 - v36);
  v38 = a1[1];
  v81 = *a1;
  v96 = v38;
  v39 = type metadata accessor for WeatherDataRequestOptions(0);
  v83 = v31;
  sub_1B603A990();
  v80 = *(a1 + v39[6]);
  v40 = sub_1B621D364();
  v82 = v28;
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v40);
  v41 = type metadata accessor for WeatherRequestDailyRelativeRange(0);
  v79 = v22;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v41);
  v42 = type metadata accessor for WeatherRequestHourlyRelativeRange(0);
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v42);
  sub_1B603A990();
  v43 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange(0);
  __swift_storeEnumTagSinglePayload(v95, 1, 1, v43);
  v44 = sub_1B621D8F4();
  v45 = v97;
  (*(*(v44 - 8) + 16))(v97, v84, v44);
  v46 = type metadata accessor for WeatherInterpolationOptions(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
  v47 = v39[9];
  v48 = a1 + v39[8];
  v74 = *v48;
  v73 = *(v48 + 4);
  v77 = *(a1 + v47);
  v49 = a1 + v39[21];
  v76 = *v49;
  v75 = *(v49 + 2);
  v50 = *(v49 + 6);
  v49 += 24;
  v78 = v50;
  v72 = *(v49 + 2);
  v69 = v49[6];
  v51 = type metadata accessor for WDSNetworkActivity(0);
  v52 = v85;
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v51);
  v71 = *(a1 + v39[18]);
  v70 = *(a1 + v39[20]);
  LODWORD(v84) = *(a1 + v39[22]);
  v53 = v96;
  *v37 = v81;
  v37[1] = v53;
  sub_1B603A990();
  *(v37 + v33[8]) = v80;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v54 = v94;
  sub_1B603A990();
  v55 = v95;
  sub_1B603A990();
  v56 = v97;
  sub_1B603A990();
  v57 = (v37 + v33[16]);
  *v57 = 0;
  v57[1] = 0;
  v58 = v37 + v33[17];
  *v58 = v74;
  *(v58 + 4) = v73;
  *(v37 + v33[18]) = v77;
  v59 = v37 + v33[19];
  *v59 = v76;
  *(v59 + 2) = v75;
  v59[30] = v69;
  *(v59 + 14) = v72;
  *(v59 + 6) = v78;
  *(v37 + v33[20]) = MEMORY[0x1E69E7CC0];
  sub_1B603A990();
  *(v37 + v33[22]) = v71;
  *(v37 + v33[23]) = v70;
  sub_1B6220784();
  sub_1B6220784();
  v60 = v89;
  _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
  v61 = sub_1B621D904();
  v96 = v62;
  (*(v90 + 8))(v60, v91);
  sub_1B6037288(v52, &qword_1EB924F30, &unk_1B6226390);
  sub_1B6037288(v56, &qword_1EB924F28, &unk_1B62265F0);
  sub_1B6037288(v55, &qword_1EB924F20, &unk_1B6226380);
  sub_1B6037288(v54, &qword_1EB924F18, &unk_1B6226600);
  sub_1B6037288(v93, &qword_1EB924F10, &unk_1B6226370);
  sub_1B6037288(v79, &qword_1EB924F08, &unk_1B6226610);
  sub_1B6037288(v98, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v82, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v83, &qword_1EB924EF8, &unk_1B6226620);
  v63 = (v37 + v33[24]);
  v64 = v96;
  *v63 = v61;
  v63[1] = v64;
  *(v37 + v33[25]) = v84;
  v99 = v92;
  v100 = a4;
  v101 = a5;
  v102 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250F0, &qword_1B6226828);
  sub_1B62209F4();
  sub_1B602E848();
  swift_allocObject();
  sub_1B602F074();
  v65 = sub_1B62208D4();
  type metadata accessor for CurrentWeather(0);
  v66 = sub_1B6220934();

  sub_1B602FC9C(v37, type metadata accessor for WeatherRequestOptions);
  return v66;
}

uint64_t sub_1B60BB304(double a1, double a2, uint64_t a3, uint64_t a4)
{
  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v9 = (*(v8 + 8))(a4, v7, v8, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_1B60BB3B8(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E80, &unk_1B6226830);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for CurrentWeather(0);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1B6091EE8(*a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1B6037288(v5, &qword_1EB924E80, &unk_1B6226830);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_1B6221B34();
    MEMORY[0x1B8C90530](0xD000000000000035, 0x80000001B623CA20);
    type metadata accessor for WeatherRequestOptions(0);
    sub_1B6221C34();
    v10 = v15;
    v11 = v16;
    sub_1B60BFEAC();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925100, &unk_1B6233450);
    swift_allocObject();
    return sub_1B6220984();
  }

  else
  {
    sub_1B602F074();
    sub_1B602E848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925100, &unk_1B6233450);
    swift_allocObject();
    v13 = sub_1B6220994();
    sub_1B602FC9C(v9, type metadata accessor for CurrentWeather);
  }

  return v13;
}

void WeatherDataServiceProxy.cached(_:for:with:)()
{
  OUTLINED_FUNCTION_116();
  v142 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_58();
  v141 = v4;
  v144 = type metadata accessor for WeatherModel(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v153 = (v7 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000, &qword_1B62265D0);
  OUTLINED_FUNCTION_2();
  v156 = v9;
  v157 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v155 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925008, &qword_1B62265D8);
  OUTLINED_FUNCTION_0(v12);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v152 = v14;
  v15 = OUTLINED_FUNCTION_21_2();
  v151 = type metadata accessor for WeatherDataResponse(v15);
  OUTLINED_FUNCTION_2();
  v121[2] = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_3();
  v121[3] = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_22_2(v20);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010, &unk_1B62265E0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_0();
  v159 = v22;
  OUTLINED_FUNCTION_21_2();
  v140 = sub_1B621D944();
  OUTLINED_FUNCTION_2();
  v139 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_2(v26 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30, &unk_1B6226390);
  OUTLINED_FUNCTION_0(v27);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_22_2(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28, &unk_1B62265F0);
  OUTLINED_FUNCTION_0(v30);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_0();
  v147 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20, &unk_1B6226380);
  OUTLINED_FUNCTION_0(v33);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_22_2(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18, &unk_1B6226600);
  OUTLINED_FUNCTION_0(v36);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_22_2(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10, &unk_1B6226370);
  OUTLINED_FUNCTION_0(v39);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_9_0();
  v158 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08, &unk_1B6226610);
  OUTLINED_FUNCTION_0(v42);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v43);
  v149 = v121 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00, &unk_1B6226360);
  v46 = OUTLINED_FUNCTION_0(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_10();
  v150 = v47 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = v121 - v50;
  v52 = OUTLINED_FUNCTION_112();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
  OUTLINED_FUNCTION_0(v54);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v55);
  v56 = OUTLINED_FUNCTION_9_1();
  v57 = type metadata accessor for WeatherRequestOptions(v56);
  v58 = (v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_14();
  v61 = (v60 - v59);
  v62 = v3[1];
  v143 = *v3;
  v148 = v62;
  v63 = type metadata accessor for WeatherDataRequestOptions(0);
  v135 = v1;
  sub_1B603A990();
  LODWORD(v133) = *(v3 + v63[6]);
  v134 = v51;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v64 = type metadata accessor for WeatherInterpolationOptions(0);
  __swift_storeEnumTagSinglePayload(v147, 1, 1, v64);
  v65 = v63[8];
  v66 = (v3 + v63[7]);
  v68 = *v66;
  v67 = v66[1];
  v131 = v68;
  v130 = v67;
  v69 = v3 + v65;
  v132 = *(v3 + v65);
  v70 = v63[10];
  v71 = *(v3 + v63[9]);
  v72 = v3 + v63[21];
  v126 = *v72;
  v125 = *(v72 + 2);
  v73 = *(v72 + 6);
  v72 += 24;
  v129 = v73;
  v122 = *(v69 + 4);
  v127 = *(v72 + 2);
  v128 = *(v3 + v70);
  v123 = v72[6];
  v74 = type metadata accessor for WDSNetworkActivity(0);
  v75 = v137;
  __swift_storeEnumTagSinglePayload(v137, 1, 1, v74);
  v124 = *(v3 + v63[18]);
  v76 = *(v3 + v63[20]);
  v136 = *(v3 + v63[22]);
  v77 = v148;
  *v61 = v143;
  v61[1] = v77;
  sub_1B603A990();
  *(v61 + v58[8]) = v133;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v78 = v145;
  sub_1B603A990();
  sub_1B603A990();
  v79 = v147;
  sub_1B603A990();
  v80 = (v61 + v58[16]);
  v81 = v130;
  *v80 = v131;
  v80[1] = v81;
  v82 = v61 + v58[17];
  *v82 = v132;
  *(v82 + 4) = v122;
  v83 = v58[18];
  v133 = v71;
  *(v61 + v83) = v71;
  v84 = v61 + v58[19];
  *v84 = v126;
  *(v84 + 2) = v125;
  v84[30] = v123;
  *(v84 + 14) = v127;
  v143 = v84;
  *(v84 + 6) = v129;
  *(v61 + v58[20]) = v128;
  sub_1B603A990();
  *(v61 + v58[22]) = v124;
  *(v61 + v58[23]) = v76;
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  v85 = v138;
  _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
  v86 = sub_1B621D904();
  v88 = v87;
  (*(v139 + 8))(v85, v140);
  sub_1B6037288(v75, &qword_1EB924F30, &unk_1B6226390);
  sub_1B6037288(v79, &qword_1EB924F28, &unk_1B62265F0);
  sub_1B6037288(v146, &qword_1EB924F20, &unk_1B6226380);
  sub_1B6037288(v78, &qword_1EB924F18, &unk_1B6226600);
  sub_1B6037288(v158, &qword_1EB924F10, &unk_1B6226370);
  sub_1B6037288(v149, &qword_1EB924F08, &unk_1B6226610);
  sub_1B6037288(v150, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v134, &qword_1EB924F00, &unk_1B6226360);
  sub_1B6037288(v135, &qword_1EB924EF8, &unk_1B6226620);
  v89 = (v61 + v58[24]);
  *v89 = v86;
  v89[1] = v88;
  *(v61 + v58[25]) = v136;
  v90 = *(v141 + 16);
  if (v90)
  {
    v91 = v141;
    v160[0] = MEMORY[0x1E69E7CC0];
    sub_1B6035220(0, v90, 0);
    v92 = v160[0];
    v93 = (v91 + 32);
    do
    {
      v94 = *v93++;
      v95 = byte_1B622695A[v94];
      v160[0] = v92;
      v97 = *(v92 + 16);
      v96 = *(v92 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1B6035220(v96 > 1, v97 + 1, 1);
        v92 = v160[0];
      }

      *(v92 + 16) = v97 + 1;
      *(v92 + v97 + 32) = v95;
      --v90;
    }

    while (v90);
  }

  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  v98 = __swift_project_boxed_opaque_existential_1(v160, v160[3]);
  v99 = OUTLINED_FUNCTION_17_2();
  v100(v99);
  OUTLINED_FUNCTION_104();

  v158 = v98;
  if (v98)
  {
    __swift_destroy_boxed_opaque_existential_1(v160);
    v101 = v158 + 8;
    v102 = 1 << *(v158 + 32);
    v103 = -1;
    if (v102 < 64)
    {
      v103 = ~(-1 << v102);
    }

    v104 = v103 & v158[8];
    v105 = (v102 + 63) >> 6;
    sub_1B6220784();
    v106 = 0;
    v150 = MEMORY[0x1E69E7CC0];
    v149 = v133 & 4;
    v107 = v159;
    while (v104)
    {
      v108 = v106;
LABEL_15:
      v109 = *(v158[6] + (__clz(__rbit64(v104)) | (v108 << 6)));
      sub_1B603A990();
      *v107 = v109;
      v110 = v155;
      sub_1B603A990();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v111 = *v110;
        v112 = ((*(v143 + 6) | ((*(v143 + 14) | (v143[30] << 16)) << 32)) >> 16) & 1;
        if ((*(v143 + 6) & 0xFF00) == 0x200)
        {
          LOBYTE(v112) = 0;
        }

        if ((v112 & 1) == 0 && !v149)
        {
          swift_willThrow();

          sub_1B6037288(v159, &qword_1EB925010, &unk_1B62265E0);

          goto LABEL_35;
        }

        v113 = 1;
        v115 = v151;
        v114 = v152;
      }

      else
      {
        sub_1B602F074();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v115 = v151;
        v114 = v152;
        switch(EnumCaseMultiPayload)
        {
          case 1:
          case 2:
          case 3:
          case 5:
          case 7:
            OUTLINED_FUNCTION_42_2();
            sub_1B602F074();
            break;
          case 6:
            *v152 = *v153;
            break;
          default:
            OUTLINED_FUNCTION_42_2();
            sub_1B60BFF1C();
            break;
        }

        OUTLINED_FUNCTION_112();
        swift_storeEnumTagMultiPayload();
        v113 = 0;
      }

      v104 &= v104 - 1;
      __swift_storeEnumTagSinglePayload(v114, v113, 1, v115);
      sub_1B6037288(v159, &qword_1EB925010, &unk_1B62265E0);
      if (__swift_getEnumTagSinglePayload(v114, 1, v115) == 1)
      {
        sub_1B6037288(v114, &qword_1EB925008, &qword_1B62265D8);
        v106 = v108;
      }

      else
      {
        sub_1B602F074();
        sub_1B602F074();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_7();
          sub_1B609C8CC();
          v150 = v118;
        }

        v117 = *(v150 + 16);
        if (v117 >= *(v150 + 24) >> 1)
        {
          sub_1B609C8CC();
          v150 = v119;
        }

        *(v150 + 16) = v117 + 1;
        OUTLINED_FUNCTION_16_6();
        sub_1B602F074();
        v106 = v108;
      }
    }

    while (1)
    {
      v108 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        break;
      }

      if (v108 >= v105)
      {

        goto LABEL_35;
      }

      v104 = v101[v108];
      ++v106;
      if (v104)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v160);
LABEL_35:
    OUTLINED_FUNCTION_13_5();
    sub_1B602FC9C(v61, v120);
    OUTLINED_FUNCTION_117();
  }
}

uint64_t WeatherDataServiceProxy.addCacheObserver(configuration:observer:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = *(a1 + 25);
  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  v10 = v17;
  v11 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v14 = v8;
  v15 = v9;
  (*(v11 + 56))(v13, a2, a3, v10, v11);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t WeatherDataServiceProxy.removeCacheObserver(token:)(uint64_t a1)
{
  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 64))(a1, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t WeatherDataServiceProxy.removeCacheObservers(with:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v9[0] = v1;
  v9[1] = v2;
  v9[2] = v3;
  v10 = v4;
  v11 = v5;
  (*(v7 + 72))(v9, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void WeatherDataServiceProxy.fetchDailySummary(_:for:start:end:with:)()
{
  OUTLINED_FUNCTION_116();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_58();
  v9 = v8;
  v11 = *(v10 + 8);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_17_2();
  CLLocationCoordinate2D.id.getter();

  OUTLINED_FUNCTION_77();
  MEMORY[0x1B8C90530](v7, v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1B8C90530](v3, v1);
  OUTLINED_FUNCTION_77();
  v12 = sub_1B6195268(v9);
  MEMORY[0x1B8C90530](v12);

  OUTLINED_FUNCTION_77();
  if (v11)
  {
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    v14 = sub_1B6221F04();
    v13 = v15;
  }

  MEMORY[0x1B8C90530](v14, v13);

  OUTLINED_FUNCTION_77();
  v16 = sub_1B60701A0();
  MEMORY[0x1B8C90530](v16);

  MEMORY[0x1EEE9AC00](v17);
  sub_1B6220724();

  OUTLINED_FUNCTION_117();
}

uint64_t sub_1B60BCAD8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDailySummaryDataManager);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v21 = a9;
  v22 = a10 & 1;
  v19 = sub_1B60A0718(a4, a5, a6, a7, a8, &v21, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v19;
}

uint64_t sub_1B60BCBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(double))
{
  OUTLINED_FUNCTION_58();
  sub_1B603CAC0(v9);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v10 = OUTLINED_FUNCTION_17_2();
  v11 = a8(v10);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11;
}

void sub_1B60BCCA0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_58();
  v1 = v0;
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_17_2();
  CLLocationCoordinate2D.id.getter();

  OUTLINED_FUNCTION_77();
  v4 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v4);

  OUTLINED_FUNCTION_77();
  v5 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v5);

  OUTLINED_FUNCTION_77();
  v6 = sub_1B6195268(v1);
  MEMORY[0x1B8C90530](v6);

  OUTLINED_FUNCTION_77();
  if (v3)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v8 = sub_1B6221F04();
    v7 = v9;
  }

  MEMORY[0x1B8C90530](v8, v7);

  OUTLINED_FUNCTION_77();
  v10 = sub_1B60701A0();
  MEMORY[0x1B8C90530](v10);

  MEMORY[0x1EEE9AC00](v11);
  sub_1B6220724();

  OUTLINED_FUNCTION_117();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WeatherDataServiceProxy.insertIntoCache(requestUrl:responseJson:)(Swift::String requestUrl, Swift::String responseJson)
{
  v126 = responseJson;
  object = requestUrl._object;
  countAndFlagsBits = requestUrl._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925018, &qword_1B6226668);
  OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  v130 = v5;
  v6 = OUTLINED_FUNCTION_21_2();
  v128 = type metadata accessor for WeatherRequestOptions(v6);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_2(v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925020, &qword_1B6226670);
  OUTLINED_FUNCTION_0(v10);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v134 = v12;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925028, &qword_1B6226678);
  OUTLINED_FUNCTION_2();
  v131 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  v132 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925030, &unk_1B6226680);
  OUTLINED_FUNCTION_2();
  v137 = v16;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v125 - v18;
  v20 = sub_1B621D474();
  OUTLINED_FUNCTION_2();
  v133 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F58, &qword_1B62263E0);
  v27 = OUTLINED_FUNCTION_0(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_10();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v125 - v32;
  v129 = countAndFlagsBits;
  sub_1B621D444();
  v146 = MEMORY[0x1E69E7CC0];
  v138 = v33;
  sub_1B603A990();
  OUTLINED_FUNCTION_16_5(v30, 1, v20);
  if (v34)
  {
    sub_1B6037288(v30, &qword_1EB924F58, &qword_1B62263E0);
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v35 = sub_1B6220B34();
    __swift_project_value_buffer(v35, qword_1EDAC2AB0);
    v36 = sub_1B6220B14();
    v37 = sub_1B62217F4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B6020000, v36, v37, "insertIntoCache: Could not parse request components", v38, 2u);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    v39 = sub_1B60BE750();
    OUTLINED_FUNCTION_127(&type metadata for WeatherDataError, v39);
    *v40 = 0;
    v40[1] = 0;
    swift_willThrow();
    goto LABEL_19;
  }

  (*(v133 + 32))(v25, v30, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925038, &qword_1B6226690);
  sub_1B6220A24();
  v127 = v25;
  sub_1B621D404();
  v41 = v134;
  v125[1] = v19;
  v42 = v135;
  sub_1B6220A34();
  v135 = v20;
  if (v42)
  {

    __swift_storeEnumTagSinglePayload(v41, 1, 1, v136);
LABEL_12:
    sub_1B6037288(v41, &qword_1EB925020, &qword_1B6226670);
    goto LABEL_13;
  }

  v19 = v136;
  OUTLINED_FUNCTION_16_5(v41, 1, v136);
  if (v34)
  {
    goto LABEL_12;
  }

  v63 = v131;
  (*(v131 + 32))(v132, v41, v19);
  swift_getKeyPath();
  OUTLINED_FUNCTION_80();
  sub_1B6220A44();

  if (!((v141 ^ *&v140) >> 14))
  {
    (*(v63 + 8))(v132, v19);

    goto LABEL_13;
  }

  v64 = OUTLINED_FUNCTION_86();
  sub_1B60BF824(v64, v65, v66, v67, v68);
  v134 = 0;
  if ((v69 & 0x100) == 0)
  {
    v70 = v69;

    if ((v70 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    (*(v63 + 8))(v132, v19);
    goto LABEL_13;
  }

  v74 = OUTLINED_FUNCTION_86();
  sub_1B60BE7A4(v74, v75, v76, v77, v78);
  v80 = v79;

  if (v80)
  {
    goto LABEL_27;
  }

LABEL_24:
  swift_getKeyPath();
  OUTLINED_FUNCTION_80();
  v71 = v132;
  sub_1B6220A44();

  *&v72 = COERCE_DOUBLE(sub_1B6221714());
  if (v73)
  {
    (*(v63 + 8))(v71, v19);
  }

  else
  {
    v81 = *&v72;
    swift_getKeyPath();
    OUTLINED_FUNCTION_80();
    sub_1B6220A44();

    *&v82 = COERCE_DOUBLE(sub_1B6221714());
    v84 = v83;
    (*(v63 + 8))(v71, v19);
    if ((v84 & 1) == 0)
    {
      v85 = sub_1B621D3B4();
      if (v85)
      {
        v86 = v134;
        sub_1B60B56B0(v85, &v146);

        sub_1B6220784();
        v87 = v130;
        sub_1B60AF34C();
        OUTLINED_FUNCTION_16_5(v87, 1, v128);
        if (!v34)
        {
          v116 = *&v82;
          v117 = v125[3];
          sub_1B602F074();
          sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
          v118 = v143;
          v119 = v144;
          __swift_project_boxed_opaque_existential_1(&v140, v143);
          (*(v119 + 48))(v146, v117, v126._countAndFlagsBits, v126._object, v118, v119, v81, v116);
          OUTLINED_FUNCTION_13_5();
          sub_1B602FC9C(v117, v120);
          v121 = OUTLINED_FUNCTION_88();
          v122(v121);
          v123 = OUTLINED_FUNCTION_82();
          v124(v123);
          sub_1B6037288(v138, &qword_1EB924F58, &qword_1B62263E0);
          __swift_destroy_boxed_opaque_existential_1(&v140);
          goto LABEL_20;
        }

        sub_1B6037288(v87, &qword_1EB925018, &qword_1B6226668);
        if (qword_1EDAB3D80 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v88 = sub_1B6220B34();
        __swift_project_value_buffer(v88, qword_1EDAC2AB0);
        v89 = sub_1B6220B14();
        v90 = sub_1B62217F4();
        if (OUTLINED_FUNCTION_95(v90))
        {
          OUTLINED_FUNCTION_110();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64();
          v91 = swift_slowAlloc();
          v145[0] = v91;
          OUTLINED_FUNCTION_26(7.2225e-34);
          v140 = v81;
          v141 = v82;
          type metadata accessor for CLLocationCoordinate2D(0);
          v92 = sub_1B6221234();
          v94 = sub_1B602EEB0(v92, v93, v145);

          *(v86 + 14) = v94;
          OUTLINED_FUNCTION_56();
          _os_log_impl(v95, v96, v97, v98, v99, v100);
          __swift_destroy_boxed_opaque_existential_1(v91);
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
        }

        v101 = sub_1B60BE750();
        OUTLINED_FUNCTION_127(&type metadata for WeatherDataError, v101);
        v58 = xmmword_1B62264F0;
      }

      else
      {
        if (qword_1EDAB3D80 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v102 = sub_1B6220B34();
        __swift_project_value_buffer(v102, qword_1EDAC2AB0);
        v103 = sub_1B6220B14();
        v104 = sub_1B62217F4();
        if (OUTLINED_FUNCTION_95(v104))
        {
          OUTLINED_FUNCTION_110();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64();
          v105 = swift_slowAlloc();
          v145[0] = v105;
          OUTLINED_FUNCTION_26(7.2225e-34);
          v140 = v81;
          v141 = v82;
          type metadata accessor for CLLocationCoordinate2D(0);
          v106 = sub_1B6221234();
          v108 = sub_1B602EEB0(v106, v107, v145);

          *(v19 + 14) = v108;
          OUTLINED_FUNCTION_56();
          _os_log_impl(v109, v110, v111, v112, v113, v114);
          __swift_destroy_boxed_opaque_existential_1(v105);
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
        }

        v115 = sub_1B60BE750();
        OUTLINED_FUNCTION_127(&type metadata for WeatherDataError, v115);
        v58 = xmmword_1B6226500;
      }

      goto LABEL_18;
    }
  }

LABEL_13:
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v43 = sub_1B6220B34();
  __swift_project_value_buffer(v43, qword_1EDAC2AB0);
  v44 = sub_1B6220B14();
  v45 = sub_1B62217F4();
  if (OUTLINED_FUNCTION_95(v45))
  {
    OUTLINED_FUNCTION_110();
    swift_slowAlloc();
    OUTLINED_FUNCTION_64();
    v46 = swift_slowAlloc();
    v145[0] = v46;
    OUTLINED_FUNCTION_26(7.2225e-34);
    v140 = 0.0;
    v141 = 0;
    LOBYTE(v142) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925040, &qword_1B6226698);
    v47 = sub_1B6221234();
    v49 = sub_1B602EEB0(v47, v48, v145);

    *(v19 + 14) = v49;
    OUTLINED_FUNCTION_56();
    _os_log_impl(v50, v51, v52, v53, v54, v55);
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  v56 = sub_1B60BE750();
  OUTLINED_FUNCTION_127(&type metadata for WeatherDataError, v56);
  v58 = xmmword_1B6226510;
LABEL_18:
  *v57 = v58;
  swift_willThrow();
  v59 = OUTLINED_FUNCTION_112();
  v60(v59);
  v61 = OUTLINED_FUNCTION_82();
  v62(v61);
LABEL_19:
  sub_1B6037288(v138, &qword_1EB924F58, &qword_1B62263E0);
LABEL_20:
}

Swift::Void __swiftcall WeatherDataServiceProxy.cleanupCaches()()
{
  sub_1B603CAC0(&OBJC_IVAR____TtC13WeatherDaemon23WeatherDataServiceProxy_lazyDataManager);
  v0 = v3;
  v1 = v4;
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v1 + 80))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v2);
}

void sub_1B60BDD04()
{
  OUTLINED_FUNCTION_44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8, &unk_1B6226620);
  OUTLINED_FUNCTION_0(v1);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v26 - v3;
  v5 = sub_1B621DB64();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_59();
  v9 = sub_1B621DB04();
  v10 = OUTLINED_FUNCTION_3_11(v9);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  v16 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  sub_1B621DB44();
  OUTLINED_FUNCTION_71();
  if (__swift_getEnumTagSinglePayload(v23, v24, v25) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v0, v4, v5);
    static Calendar.currentCalendar(with:)(v0, v15);
    (*(v7 + 8))(v0, v5);
    sub_1B621DA74();
    (*(v12 + 8))(v15, v26[1]);
    sub_1B621D894();
    sub_1B62216F4();
    (*(v18 + 8))(v22, v16);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_45();
  }
}

void sub_1B60BDF5C()
{
  OUTLINED_FUNCTION_44();
  v50 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600, &qword_1B6223420);
  OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - v4;
  v6 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v54 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v52 = v10 - v9;
  OUTLINED_FUNCTION_21_2();
  v53 = sub_1B621D4F4();
  OUTLINED_FUNCTION_2();
  v51 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8, &unk_1B6226620);
  OUTLINED_FUNCTION_0(v16);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = sub_1B621DB64();
  OUTLINED_FUNCTION_2();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_59();
  sub_1B621DB04();
  OUTLINED_FUNCTION_2();
  v48 = v25;
  v49 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v28 = v27 - v26;
  sub_1B621DB44();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(v1, v19, v20);
    static Calendar.currentCalendar(with:)(v1, v28);
    (*(v22 + 8))(v1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250D0, &unk_1B62325C0);
    v29 = sub_1B621DAF4();
    OUTLINED_FUNCTION_2();
    v31 = v30;
    v33 = *(v32 + 72);
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1B6226520;
    v36 = v35 + v34;
    v37 = *(v31 + 104);
    v37(v36, *MEMORY[0x1E6969A68], v29);
    v37(v36 + v33, *MEMORY[0x1E6969A78], v29);
    v37(v36 + 2 * v33, *MEMORY[0x1E6969A48], v29);
    v37(v36 + 3 * v33, *MEMORY[0x1E6969A58], v29);
    sub_1B605954C(v35);
    v38 = v50;
    sub_1B621DA94();

    sub_1B621DAA4();
    OUTLINED_FUNCTION_71();
    if (__swift_getEnumTagSinglePayload(v39, v40, v41) == 1)
    {
      v42 = v54;
      v43 = v52;
      (*(v54 + 16))(v52, v38, v6);
      OUTLINED_FUNCTION_71();
      if (__swift_getEnumTagSinglePayload(v44, v45, v46) != 1)
      {
        sub_1B6037288(v5, &qword_1EB924600, &qword_1B6223420);
      }
    }

    else
    {
      v42 = v54;
      v43 = v52;
      (*(v54 + 32))(v52, v5, v6);
    }

    sub_1B621D894();
    sub_1B62216F4();
    (*(v42 + 8))(v43, v6);
    (*(v51 + 8))(v15, v53);
    (*(v48 + 8))(v28, v49);
    OUTLINED_FUNCTION_45();
  }
}

uint64_t sub_1B60BE450@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1B621D384();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1B60BE750()
{
  result = qword_1EDAAF030;
  if (!qword_1EDAAF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF030);
  }

  return result;
}

void sub_1B60BE7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  sub_1B60BF994();
  sub_1B6220784();
  v6 = sub_1B62213C4();
  v8 = v6;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1B60C1FF8(v6, v7);
    v39 = v38;

    v9 = v39;
    if ((v39 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      v10 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = sub_1B6221BA4();
    }

    v12 = *v10;
    if (v12 == 43)
    {
      if (v11 >= 1)
      {
        v22 = v11 - 1;
        if (v11 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (v10)
          {
            v26 = 0;
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_125;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v26 * a5;
              if ((v26 * a5) >> 64 == (v26 * a5) >> 63)
              {
                v26 = v30 + (v28 + v29);
                if (!__OFADD__(v30, (v28 + v29)))
                {
                  ++v27;
                  if (--v22)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v12 != 45)
    {
      if (v11)
      {
        v31 = a5 + 48;
        v32 = a5 + 55;
        v33 = a5 + 87;
        if (a5 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v10)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v10;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_125;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a5;
            if ((v34 * a5) >> 64 == (v34 * a5) >> 63)
            {
              v34 = v37 + (v35 + v36);
              if (!__OFADD__(v37, (v35 + v36)))
              {
                ++v10;
                if (--v11)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v11 >= 1)
    {
      v13 = v11 - 1;
      if (v11 != 1)
      {
        v14 = a5 + 48;
        v15 = a5 + 55;
        v16 = a5 + 87;
        if (a5 > 10)
        {
          v14 = 58;
        }

        else
        {
          v16 = 97;
          v15 = 65;
        }

        if (v10)
        {
          v17 = 0;
          v18 = v10 + 1;
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v14)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                if (v19 < 0x61 || v19 >= v16)
                {
                  break;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v21 = v17 * a5;
            if ((v17 * a5) >> 64 == (v17 * a5) >> 63)
            {
              v17 = v21 - (v19 + v20);
              if (!__OFSUB__(v21, (v19 + v20)))
              {
                ++v18;
                if (--v13)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v40 = HIBYTE(v9) & 0xF;
  v67 = v8;
  v68 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v40)
      {
        v59 = 0;
        v60 = a5 + 48;
        v61 = a5 + 55;
        v62 = a5 + 87;
        if (a5 > 10)
        {
          v60 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v63 = &v67;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v60)
          {
            if (v64 < 0x41 || v64 >= v61)
            {
              if (v64 < 0x61 || v64 >= v62)
              {
                goto LABEL_125;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v59 * a5;
          if ((v59 * a5) >> 64 == (v59 * a5) >> 63)
          {
            v59 = v66 + (v64 + v65);
            if (!__OFADD__(v66, (v64 + v65)))
            {
              v63 = (v63 + 1);
              if (--v40)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        v42 = 0;
        v43 = a5 + 48;
        v44 = a5 + 55;
        v45 = a5 + 87;
        if (a5 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v67 + 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_125;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v42 * a5;
          if ((v42 * a5) >> 64 == (v42 * a5) >> 63)
          {
            v42 = v49 - (v47 + v48);
            if (!__OFSUB__(v49, (v47 + v48)))
            {
              ++v46;
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      v51 = 0;
      v52 = a5 + 48;
      v53 = a5 + 55;
      v54 = a5 + 87;
      if (a5 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v67 + 1;
      while (1)
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_125;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v51 * a5;
        if ((v51 * a5) >> 64 == (v51 * a5) >> 63)
        {
          v51 = v58 + (v56 + v57);
          if (!__OFADD__(v58, (v56 + v57)))
          {
            ++v55;
            if (--v50)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1B60BED38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v44 = a5;
  v56 = a4;
  v57 = a2;
  v51 = a3;
  v55 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925160, &qword_1B6226970);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v41 - v8;
  v52 = sub_1B6220544();
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6221834();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6221034();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925168, &qword_1B62268B0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925170, &qword_1B62268B8);
  v18 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925178, &unk_1B62268C0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v41 - v23;
  v59[3] = &type metadata for WeatherDataInterpolator;
  v59[4] = &protocol witness table for WeatherDataInterpolator;
  *v59 = a6;
  v25 = OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_cacheProcessingStream;
  v42 = OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_cacheProcessingContinuation;
  type metadata accessor for WeatherDataManager.CacheProcessingRequest(0);
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8650], v14);
  v26 = v44;
  sub_1B6221654();
  (*(v15 + 8))(v17, v14);
  (*(v22 + 32))(v26 + v25, v24, v21);
  (*(v18 + 32))(v26 + v42, v20, v43);
  v27 = OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch;
  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EDAB20B8 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  *(v26 + v27) = (v58 & 1) == 0;
  v43 = OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_fetchQueue;
  sub_1B602370C(0, &qword_1EDAB4020, 0x1E69E9610);
  v28 = v45;
  sub_1B6221024();
  v58 = MEMORY[0x1E69E7CC0];
  sub_1B602CB84(&qword_1EDAB4028, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AE0, &unk_1B6224B90);
  v29 = MEMORY[0x1E69E6328];
  sub_1B602CAF4(qword_1EDAB4030, &qword_1EB924AE0, &unk_1B6224B90, MEMORY[0x1E69E6328]);
  v30 = v48;
  v31 = v50;
  sub_1B6221AA4();
  v32 = static OS_dispatch_queue.schedulingQueue(named:attributes:qualityOfService:)();
  (*(v49 + 8))(v30, v31);
  (*(v46 + 8))(v28, v47);
  *(v26 + v43) = v32;
  *(v26 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_service) = v55;
  *(v26 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_marineService) = v57;
  sub_1B602E8A0(v59, v26 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_interpolator);
  v33 = swift_allocObject();
  v34 = v56;
  *(v33 + 16) = v51;
  *(v33 + 24) = v34;
  v58 = MEMORY[0x1E69E7CC0];
  sub_1B602CB84(&qword_1EDAB3F58, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924FD0, &qword_1B6230270);
  sub_1B602CAF4(&qword_1EDAB3D78, &qword_1EB924FD0, &qword_1B6230270, v29);
  sub_1B6221AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925180, &qword_1B62268D0);
  swift_allocObject();
  *(v26 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_lazyStore) = sub_1B6220874();
  type metadata accessor for WeatherDataCacheObservationManager();
  swift_allocObject();
  v35 = swift_retain_n();
  *(v26 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_cacheObservationManager) = sub_1B60659E4(v35);
  sub_1B6062D74();
  v36 = v54;
  sub_1B6221624();
  v37 = sub_1B6221644();
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v37);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v38;
  sub_1B6101560(0xD000000000000026, 0x80000001B623CA90, v36, &unk_1B62268D8, v39);

  __swift_destroy_boxed_opaque_existential_1(v59);
  return v26;
}

void *sub_1B60BF5DC(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_1B6220514();
  MEMORY[0x1EEE9AC00](v8);
  v11 = &type metadata for WeatherDataInterpolator;
  v12 = &protocol witness table for WeatherDataInterpolator;
  *&v10 = a4;
  sub_1B621D8F4();
  a3[9] = sub_1B6221124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925150, &unk_1B622C6B0);
  *(swift_allocObject() + 16) = xmmword_1B6225510;
  sub_1B6220504();
  sub_1B602CB84(&unk_1EDAB3C40, MEMORY[0x1E69D6388], MEMORY[0x1E69D6390]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925158, &unk_1B62268A0);
  sub_1B602CAF4(&qword_1EDAB2228, &qword_1EB925158, &unk_1B62268A0, MEMORY[0x1E69E6328]);
  sub_1B6221AA4();
  sub_1B6220534();
  swift_allocObject();
  a3[10] = sub_1B6220524();
  a3[2] = a1;
  a3[3] = a2;
  sub_1B60273A4(&v10, (a3 + 4));
  return a3;
}

uint64_t sub_1B60BF824(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1B6221BA4();
  }

  result = sub_1B60BF9E8(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t type metadata accessor for WeatherDataServiceProxy(uint64_t a1)
{
  result = qword_1EDAB4810;
  if (!qword_1EDAB4810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B60BF994()
{
  result = qword_1EB9250E8;
  if (!qword_1EB9250E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9250E8);
  }

  return result;
}

uint64_t sub_1B60BF9E8(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1B6176C54(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1B6221364();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1B6176C54(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1B6176C54(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1B6221364();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1B60BFE48()
{
  v0 = type metadata accessor for WeatherRequestOptions(0);
  OUTLINED_FUNCTION_0(v0);
  v1 = OUTLINED_FUNCTION_66();
  return sub_1B60BB3B8(v1, v2);
}

unint64_t sub_1B60BFEAC()
{
  result = qword_1EB9250F8;
  if (!qword_1EB9250F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9250F8);
  }

  return result;
}

uint64_t sub_1B60BFF1C()
{
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_5_2();
  v4(v3);
  return v0;
}

double sub_1B60BFF74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{
  type metadata accessor for WDSEndpoint(0);
  OUTLINED_FUNCTION_57();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v5 = *(v4 + 64);
  sub_1B621D634();
  OUTLINED_FUNCTION_9();
  (*(v6 + 8))(v0 + v3);
  OUTLINED_FUNCTION_81();
  if (v7)
  {
  }

  v8 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1((v0 + v9));
  __swift_destroy_boxed_opaque_existential_1((v0 + v10));
  __swift_destroy_boxed_opaque_existential_1((v0 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8)));

  return MEMORY[0x1EEE6BDD0](v0, ((v10 + 95) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B60C0334(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B6049918;

  return sub_1B61E5278();
}

uint64_t sub_1B60C03F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B60C0440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B60C0494(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B60C04AC(void *result, int a2)
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

uint64_t OUTLINED_FUNCTION_74()
{

  return sub_1B602F074();
}

uint64_t OUTLINED_FUNCTION_92_0(uint64_t a1)
{

  return sub_1B6220974();
}

double OUTLINED_FUNCTION_119()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_1B6037288(v2 - 304, v0, v1);
}

uint64_t OUTLINED_FUNCTION_123()
{

  return sub_1B603A990();
}

void *OUTLINED_FUNCTION_125(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t sub_1B60C05E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925160, &qword_1B6226970);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23[-1] - v11;
  v23[5] = a4;
  v23[6] = a5;
  sub_1B6061BAC(a3, &v23[-1] - v11);
  v13 = sub_1B6221644();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B6060FD8(v12);
  }

  else
  {
    sub_1B6221634();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B62215C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B6221254();
      sub_1B60C08B4(v19 + 32, v23);

      v20 = v23[0];
      sub_1B6060FD8(a3);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B6060FD8(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

_BYTE *storeEnumTagSinglePayload for DefaultTaskScheduler(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B60C08B4@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B60C0970(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_3_12();
            while (1)
            {
              OUTLINED_FUNCTION_1_11();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_0_19();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_5_14();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_82:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_11();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_19();
            if (!v9)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            OUTLINED_FUNCTION_5_14();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_3_12();
          while (1)
          {
            OUTLINED_FUNCTION_1_11();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_19();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_5_14();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B6221BA4();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_14_8();
              while (1)
              {
                OUTLINED_FUNCTION_1_11();
                if (!v9 & v8)
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_0_19();
                if (!v9)
                {
                  goto LABEL_71;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_5_14();
                if (v9)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (*result - 48 <= 9)
            {
              OUTLINED_FUNCTION_15_3();
              if (!v9)
              {
                break;
              }

              v7 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              result = v19 + 1;
              if (v20 == 1)
              {
                goto LABEL_62;
              }
            }

            goto LABEL_71;
          }

          goto LABEL_62;
        }

LABEL_71:
        v7 = 0;
        v12 = 1;
        goto LABEL_72;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_14_8();
            while (1)
            {
              OUTLINED_FUNCTION_1_11();
              if (!v9 & v8)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_0_19();
              if (!v9)
              {
                goto LABEL_71;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_5_14();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_62:
          v12 = 0;
LABEL_72:
          v25 = v12;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_1B60C1AE8(result, a2, 10);
  v7 = v26;
  v25 = v27;
LABEL_73:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B60C0BC4()
{
  sub_1B60C1A1C();
  sub_1B60C1A60();
  v1 = v0;
  v2 = sub_1B6221F14();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  v5 = sub_1B621D564();

  v6 = [v5 domain];
  v7 = sub_1B62211D4();
  v9 = v8;

  if (v7 == sub_1B62211D4() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1B6221F24();

    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v5 code] != -1001 && objc_msgSend(v5, sel_code) != -1005)
  {
LABEL_14:
    v14 = [v5 userInfo];
    v15 = sub_1B6221104();

    v16 = sub_1B62211D4();
    sub_1B60C4D84(v16, v17, v15, &v20);

    if (v21)
    {
      if (swift_dynamicCast())
      {
        v13 = sub_1B60C0BC4();

        return v13 & 1;
      }
    }

    else
    {

      sub_1B60C19B4(&v20);
    }

    v13 = 0;
    return v13 & 1;
  }

  v13 = 1;
  return v13 & 1;
}

uint64_t sub_1B60C0DFC()
{
  OUTLINED_FUNCTION_7_7();
  MEMORY[0x1EEE9AC00](v1);
  v10 = OUTLINED_FUNCTION_4_10(v2, v3, v4, v5, v6, v7, v8, v9, v31);
  v11(v10);
  OUTLINED_FUNCTION_36();
  v12 = sub_1B6221F14();
  if (v12)
  {
    v0 = v12;
    v13 = OUTLINED_FUNCTION_36();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_16_7();
    v13 = OUTLINED_FUNCTION_11_8(v15, v16);
  }

  v14(v13);
  v17 = sub_1B621D564();

  v18 = [v17 domain];
  v19 = sub_1B62211D4();
  v21 = v20;

  if (v19 == sub_1B62211D4() && v21 == v22)
  {
  }

  else
  {
    v24 = sub_1B6221F24();

    if ((v24 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v17 code] != -1001 && objc_msgSend(v17, sel_code) != -1005)
  {
LABEL_14:
    v26 = [v17 userInfo];
    v27 = sub_1B6221104();

    v28 = sub_1B62211D4();
    sub_1B60C4D84(v28, v29, v27, &v33);

    if (v34)
    {
      sub_1B60C1A1C();
      if (swift_dynamicCast())
      {
        v25 = sub_1B60C0BC4();

        return v25 & 1;
      }
    }

    else
    {

      sub_1B60C19B4(&v33);
    }

    v25 = 0;
    return v25 & 1;
  }

  v25 = 1;
  return v25 & 1;
}