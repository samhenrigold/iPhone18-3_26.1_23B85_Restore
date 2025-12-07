void (*sub_584A8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_58378();
  return sub_584F0;
}

void sub_584F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent);
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent) = v2;
}

id sub_58508(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter__formatter] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_585D8(uint64_t a1)
{
  sub_479B4(a1, v8, &qword_182FC8, &qword_124DD0);
  if (!v9)
  {
    sub_488C8(v8, &qword_182FC8, &qword_124DD0);
    return 0;
  }

  sub_54960(0, &qword_1831C0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  [v7 doubleValue];
  v3 = v2;

  result = [*(v1 + OBJC_IVAR____TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter__formatter) stringFromTimeInterval:v3];
  if (result)
  {
    v5 = result;
    v6 = sub_1171B0();

    return v6;
  }

  return result;
}

uint64_t sub_588E4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_58998(uint64_t a1)
{
  v2 = v1;
  v4 = (*(&stru_20.maxprot + (swift_isaMask & *v1)))();
  if (*(v4 + 16) && (v5 = sub_5B618(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {

    isa = sub_1156B0().super.isa;
    v20.receiver = v2;
    v20.super_class = type metadata accessor for BUIChartViewConfig.CachedDateFormatter();
    v9 = objc_msgSendSuper2(&v20, "stringFromDate:", isa);

    v7 = sub_1171B0();
    v11 = v10;

    v12 = *&stru_68.sectname[swift_isaMask & *v2];

    v13 = v12(v19);
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v15;
    *v15 = 0x8000000000000000;
    sub_5BFA8(v7, v11, a1, isUniquelyReferenced_nonNull_native);
    *v15 = v18;
    v13(v19, 0);
  }

  return v7;
}

uint64_t sub_58CE4(void *a1)
{
  v2 = v1;
  v4 = (*(&stru_20.maxprot + (swift_isaMask & *v1)))();
  if (*(v4 + 16) && (v5 = sub_5B69C(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {

    v21.receiver = v2;
    v21.super_class = type metadata accessor for BUIChartViewConfig.CachedNumberFormatter();
    v8 = objc_msgSendSuper2(&v21, "stringFromNumber:", a1);
    if (v8)
    {
      v9 = v8;
      v7 = sub_1171B0();
      v11 = v10;
    }

    else
    {
      v7 = 0;
      v11 = 0;
    }

    v12 = *&stru_68.sectname[swift_isaMask & *v2];

    v13 = a1;
    v14 = v12(v20);
    v16 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v16;
    *v16 = 0x8000000000000000;
    sub_5C184(v7, v11, v13, isUniquelyReferenced_nonNull_native);

    *v16 = v19;
    v14(v20, 0);
  }

  return v7;
}

id sub_58F4C(char *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void *), uint64_t (*a5)(void))
{
  v7 = *a3;
  *&a1[v7] = (a4)(_swiftEmptyArrayStorage, a2);
  v9.receiver = a1;
  v9.super_class = a5();
  return objc_msgSendSuper2(&v9, "init");
}

char *sub_58FE8(char *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t (*a5)(void *), uint64_t (*a6)(void))
{
  v9 = *a4;
  v10 = a3;
  *&a1[v9] = a5(_swiftEmptyArrayStorage);
  v13.receiver = a1;
  v13.super_class = a6();
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", v10);

  if (v11)
  {
  }

  return v11;
}

id sub_5909C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_590E4()
{
  v0 = sub_1158D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_115820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(type metadata accessor for BUIChartViewConfig.CachedDateFormatter()) init];
  sub_1157E0();
  isa = sub_1157D0().super.isa;
  (*(v5 + 8))(v7, v4);
  [v8 setLocale:isa];

  sub_115870();
  v10 = sub_115860().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setCalendar:v10];

  [objc_opt_self() is24HourClock];
  v11 = sub_117170();
  [v8 setDateFormat:v11];

  return v8;
}

id sub_59308(uint64_t a1, uint64_t a2)
{
  v2 = sub_1158D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_115820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(type metadata accessor for BUIChartViewConfig.CachedDateFormatter()) init];
  sub_1157E0();
  isa = sub_1157D0().super.isa;
  (*(v7 + 8))(v9, v6);
  [v10 setLocale:isa];

  sub_115870();
  v12 = sub_115860().super.isa;
  (*(v3 + 8))(v5, v2);
  [v10 setCalendar:v12];

  v13 = sub_117170();
  [v10 setLocalizedDateFormatFromTemplate:v13];

  return v10;
}

uint64_t sub_59538(uint64_t a1)
{
  v2 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  if (!*(a1 + *(v2 + 24)))
  {
    v8 = *(a1 + *(v2 + 28));
    v10 = sub_D34A8(v8);
LABEL_7:
    v9 = v10;
    goto LABEL_8;
  }

  if (*(a1 + *(v2 + 24)) != 1)
  {
    v8 = *(a1 + *(v2 + 28));
    v10 = sub_D3534(v8);
    goto LABEL_7;
  }

  v5 = v2;
  v6 = sub_5822C(v2, v3, v4);
  v7 = sub_F59F0(&type metadata for PerfPowerServices, v6);
  v8 = *(a1 + *(v5 + 28));
  v9 = sub_D3534(v8);
  if ((v7 & 1) == 0)
  {
LABEL_8:
    sub_D34A8(v8);
    return v9;
  }

  sub_116B40();
  return v9;
}

uint64_t sub_59600()
{
  v0 = swift_allocObject();
  sub_59638();
  return v0;
}

void sub_59638()
{
  v1 = v0;
  v2 = sub_46F9C(&qword_1831E0, &unk_1258C0);
  __chkstk_darwin(v2 - 8);
  v4 = v134 - v3;
  v5 = sub_46F9C(&qword_1831E8, &qword_12A080);
  __chkstk_darwin(v5 - 8);
  v142 = v134 - v6;
  v7 = sub_116850();
  v143 = *(v7 - 8);
  v144 = v7;
  __chkstk_darwin(v7);
  v140 = v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_116870();
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1158D0();
  v136 = *(v10 - 8);
  v137 = v10;
  __chkstk_darwin(v10);
  v135 = v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_46F9C(&qword_182FF8, &qword_124E30);
  __chkstk_darwin(v12 - 8);
  v14 = v134 - v13;
  sub_1157E0();
  sub_115870();
  *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridLineWidth) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor10Days) = 0x3FE3333333333333;
  *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barRadiusRatioFor10Days) = 0x3FC999999999999ALL;
  *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor24Hrs) = 0x3FE599999999999ALL;
  *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barRadiusRatioFor24Hrs) = 0x3FC999999999999ALL;
  v15 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalShadeColor;
  v16 = objc_opt_self();
  v17 = [v16 systemGreenColor];
  sub_116BE0();
  v18 = sub_116BA0();

  *(v0 + v15) = v18;
  v19 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_slowChargingColor;
  v20 = [v16 systemOrangeColor];
  *(v0 + v19) = sub_116BE0();
  v21 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_slowChargingIntervalBackgroundColor;
  v22 = [v16 systemOrangeColor];
  sub_116BE0();
  v23 = sub_116BA0();

  *(v0 + v21) = v23;
  v24 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelHighColor;
  v25 = [v16 systemGreenColor];
  *(v0 + v24) = sub_116BE0();
  v26 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_notChargingBarColor;
  sub_116B40();
  v27 = sub_116BA0();

  *(v0 + v26) = v27;
  v28 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleFont;
  *(v0 + v28) = sub_116720();
  v29 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelFont;
  v30 = sub_116690();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  sub_1166D0();
  sub_488C8(v14, &qword_182FF8, &qword_124E30);
  sub_1166B0();
  v31 = sub_1166F0();

  *(v1 + v29) = v31;
  v32 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleColor;
  v33 = [v16 secondaryLabelColor];
  *(v1 + v32) = sub_116BE0();
  v34 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelColor;
  v35 = [v16 tertiaryLabelColor];
  *(v1 + v34) = sub_116BE0();
  v36 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalColor;
  v37 = [v16 systemGreenColor];
  *(v1 + v36) = sub_116BE0();
  v38 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor;
  v39 = [v16 tertiaryLabelColor];
  *(v1 + v38) = sub_116BE0();
  v40 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelMediumColor;
  v41 = [v16 systemYellowColor];
  *(v1 + v40) = sub_116BE0();
  v42 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelLowColor;
  v43 = [v16 systemRedColor];
  *(v1 + v42) = sub_116BE0();
  v44 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_energyUsageColor;
  v45 = [v16 systemGreenColor];
  *(v1 + v44) = sub_116BE0();
  v46 = objc_opt_self();
  if (![v46 screenOffColor])
  {
    __break(1u);
    goto LABEL_15;
  }

  v134[1] = v29;
  v47 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffColor;
  *(v1 + v47) = sub_116BE0();
  if (![v46 screenOnColor])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v48 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnColor;
  *(v1 + v48) = sub_116BE0();
  v49 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnBUI25Color;
  [objc_allocWithZone(UIColor) initWithRed:0.352941176 green:0.349019608 blue:0.815686275 alpha:1.0];
  *(v1 + v49) = sub_116BE0();
  v50 = [v16 systemGreenColor];
  sub_116BE0();
  sub_54960(0, &qword_1831A8, UIColor_ptr);

  v51 = sub_1175B0();
  v52 = [v51 dynamicGrayScaleColor];

  if (!v52)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v53 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelGrayColor;
  v54 = sub_116BE0();

  *(v1 + v53) = v54;
  v55 = [v16 systemGreenColor];
  sub_116BE0();

  v56 = sub_1175B0();
  v57 = [v56 dynamicGrayScaleColor];

  if (!v57)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v58 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalGrayColor;
  v59 = sub_116BE0();

  *(v1 + v58) = v59;
  v60 = [v16 systemGreenColor];
  sub_116BE0();
  sub_116BA0();

  v61 = sub_1175B0();
  v62 = [v61 dynamicGrayScaleColor];

  if (!v62)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v63 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalShadeGrayColor;
  v64 = sub_116BE0();

  *(v1 + v63) = v64;
  v65 = [v16 systemGreenColor];
  sub_116BE0();

  v66 = sub_1175B0();
  v67 = [v66 dynamicGrayScaleColor];

  if (!v67)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v68 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_energyUsageGrayColor;
  v69 = sub_116BE0();

  *(v1 + v68) = v69;
  if (![v46 screenOffColor])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_116BE0();

  v70 = sub_1175B0();
  v71 = [v70 dynamicGrayScaleColor];

  if (!v71)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v72 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor;
  v73 = sub_116BE0();

  *(v1 + v72) = v73;
  if (![v46 screenOnColor])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v134[0] = v4;
  sub_116BE0();

  v74 = sub_1175B0();
  v75 = [v74 dynamicGrayScaleColor];

  if (!v75)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v76 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnGrayColor;
  v77 = sub_116BE0();

  *(v1 + v76) = v77;
  v78 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor;
  v79 = [v16 systemGray2Color];
  *(v1 + v78) = sub_116BE0();
  v80 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_averageByTimeColor;
  [objc_allocWithZone(UIColor) initWithRed:0.292156863 green:0.292156863 blue:0.307843137 alpha:1.0];
  sub_116BE0();
  v81 = sub_116BA0();

  *(v1 + v80) = v81;
  v82 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor;
  sub_116BC0();
  v83 = sub_116BA0();

  *(v1 + v82) = v83;
  v84 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartAnomalousBarColor;
  v147 = sub_116B80();
  sub_57B74(v147, v85, v86);
  *(v1 + v84) = sub_116BF0();
  v87 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartNoComparisonBarColor;
  v147 = sub_116B30();
  v88 = sub_116BF0();
  *(v1 + v87) = v88;
  LOBYTE(v147) = 1;
  v91 = sub_5822C(v88, v89, v90);
  v92 = sub_F59F0(&type metadata for PerfPowerServices, v91);
  v93 = 90.0;
  if (v92)
  {
    v93 = 100.0;
  }

  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight) = v93;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titlePaddingBottom) = 0x4010000000000000;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartGap) = 0x4030000000000000;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalHeight) = 0x4010000000000000;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelSpacing) = 0x4018000000000000;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelAdditionalOffset) = 0x4000000000000000;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent) = 0;
  v94 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForMinutes;
  v95 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v96 = v135;
  sub_115870();
  isa = sub_115860().super.isa;
  v98 = v137;
  v99 = *(v136 + 8);
  v99(v96, v137);
  [v95 setCalendar:isa];

  [v95 setAllowedUnits:64];
  [v95 setUnitsStyle:1];
  v100 = type metadata accessor for BUIChartViewConfig.DateNumberFormatter();
  v101 = objc_allocWithZone(v100);
  *&v101[OBJC_IVAR____TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter__formatter] = v95;
  v146.receiver = v101;
  v146.super_class = v100;
  *(v1 + v94) = objc_msgSendSuper2(&v146, "init");
  v102 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourMinutes;
  v103 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  sub_115870();
  v104 = sub_115860().super.isa;
  v99(v96, v98);
  [v103 setCalendar:v104];

  [v103 setAllowedUnits:96];
  [v103 setUnitsStyle:1];
  v105 = objc_allocWithZone(v100);
  *&v105[OBJC_IVAR____TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter__formatter] = v103;
  v145.receiver = v105;
  v145.super_class = v100;
  *(v1 + v102) = objc_msgSendSuper2(&v145, "init");
  v106 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourShort;
  *(v1 + v106) = sub_590E4();
  v107 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHour;
  *(v1 + v107) = sub_59308(24938, 0xE200000000000000);
  v108 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDate;
  *(v1 + v108) = sub_59308(0x64204D4D4DLL, 0xE500000000000000);
  v109 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDay;
  *(v1 + v109) = sub_59308(0x4545454545, 0xE500000000000000);
  v110 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval;
  v111 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v111 setAllowedUnits:96];
  [v111 setUnitsStyle:3];
  sub_115870();
  v112 = sub_115860().super.isa;
  v99(v96, v98);
  [v111 setCalendar:v112];

  *(v1 + v110) = v111;
  v113 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingTime;
  *(v1 + v113) = sub_59308(28010, 0xE200000000000000);
  v114 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForHour;
  *(v1 + v114) = sub_59308(106, 0xE100000000000000);
  v115 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForDate;
  *(v1 + v115) = sub_59308(0x64204D4D4D4DLL, 0xE600000000000000);
  sub_116370();
  v116 = sub_1168E0();
  v118 = v117;
  v120 = v119;

  v121 = sub_1168C0();
  v123 = v122;
  LOBYTE(v98) = v124;

  sub_48928(v116, v118, v120 & 1);

  v125 = v138;
  sub_116860();
  v126 = sub_116820();
  (*(*(v126 - 8) + 56))(v142, 1, 1, v126);
  v127 = sub_1168D0();
  (*(*(v127 - 8) + 56))(v134[0], 1, 1, v127);
  v128 = v140;
  sub_116840();
  sub_116830();
  v130 = v129;
  (*(v143 + 8))(v128, v144);
  (*(v139 + 8))(v125, v141);
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) = v130 + 6.0;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset) = (v130 + 6.0) * 0.5 + 1.0;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axisLabelPadding) = v130 + 6.0;
  v131 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
  [v131 lineHeight];
  v133 = v132;
  sub_48928(v121, v123, v98 & 1);

  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleHeight) = v133;
}

uint64_t sub_5A65C(uint64_t a1)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:a1];
  [v2 lineHeight];
  v4 = v3;

  v5 = *(*v1 + 568);
  v6.n128_u64[0] = v4;

  return v5(v6);
}

void sub_5A714()
{
  type metadata accessor for BUIChartViewConfig(0);
  v0 = swift_allocObject();
  sub_59638();
  qword_191C80 = v0;
}

uint64_t *sub_5A754()
{
  if (qword_188E40 != -1)
  {
    swift_once();
  }

  return &qword_191C80;
}

uint64_t sub_5A7A4()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_locale;
  v2 = sub_115820();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar;
  v4 = sub_1158D0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_5AAB4()
{
  sub_5A7A4();

  return swift_deallocClassInstance();
}

__n128 sub_5AB0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_116B00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_46F9C(&qword_1831F0, &unk_1258D0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1248A0;
    *(v11 + 32) = a2;
    *(v11 + 40) = a1;
  }

  else
  {
    v12 = v8;
    sub_116B20();
    v13 = sub_116B10();

    if (v13 & 1) != 0 || (sub_116B60(), v14 = sub_116B10(), , (v14) || (sub_116B90(), v18 = sub_116B10(), , (v18) || (sub_116B80(), v19 = sub_116B10(), , (v19))
    {
      sub_46F9C(&qword_1831F0, &unk_1258D0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1248A0;
      (*(v7 + 104))(v10, enum case for Color.RGBColorSpace.sRGB(_:), v12);
      *(v15 + 32) = sub_116BD0();
      *(v15 + 40) = a2;

      goto LABEL_7;
    }

    sub_116B40();
    v20 = sub_116B10();

    sub_46F9C(&qword_1831F0, &unk_1258D0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1248A0;
    if (v20)
    {
      v22 = objc_opt_self();
      v23 = [v22 systemGray4Color];
      *(v21 + 32) = sub_116BE0();
      v24 = [v22 systemGray2Color];
      *(v21 + 40) = sub_116BE0();
      goto LABEL_7;
    }

    *(v21 + 32) = sub_116BA0();
    *(v21 + 40) = a2;
  }

LABEL_7:
  sub_116E70();
  sub_116F80();
  sub_116F90();
  sub_1160E0();
  result = v26;
  v17 = v27;
  *a3 = v25[1];
  *(a3 + 8) = result;
  *(a3 + 24) = v17;
  return result;
}

__n128 sub_5AEF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    sub_46F9C(&qword_1831F0, &unk_1258D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1248A0;
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;
  }

  else
  {
    sub_46F9C(&qword_1831F0, &unk_1258D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1248A0;
    *(v7 + 32) = sub_116BA0();
    *(v7 + 40) = a2;
  }

  sub_116E70();
  sub_116F70();
  sub_116F60();
  sub_1160E0();
  result = v10;
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 24) = v11;
  return result;
}

__n128 sub_5B018@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_116B00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_46F9C(&qword_1831F0, &unk_1258D0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1248A0;
    *(v11 + 32) = a2;
    *(v11 + 40) = a1;
  }

  else
  {
    v12 = v8;
    sub_116B20();
    v13 = sub_116B10();

    if (v13 & 1) != 0 || (v14 = objc_opt_self(), v15 = [v14 systemRedColor], sub_116BE0(), v16 = sub_116B10(), , (v16) || (sub_116B60(), v20 = sub_116B10(), , (v20) || (v21 = objc_msgSend(v14, "systemGreenColor"), sub_116BE0(), v22 = sub_116B10(), , (v22) || (sub_116B90(), v23 = sub_116B10(), , (v23) || (v24 = objc_msgSend(v14, "systemYellowColor"), sub_116BE0(), v25 = sub_116B10(), , (v25) || (sub_116B80(), v26 = sub_116B10(), , (v26) || (v27 = objc_msgSend(v14, "systemOrangeColor"), sub_116BE0(), v28 = sub_116B10(), , (v28))
    {
      sub_46F9C(&qword_1831F0, &unk_1258D0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1248A0;
      (*(v7 + 104))(v10, enum case for Color.RGBColorSpace.sRGB(_:), v12);
    }

    else
    {
      sub_116B40();
      v29 = sub_116B10();

      if (v29 & 1) != 0 || (v30 = [v14 systemGray2Color], sub_116BE0(), v31 = sub_116B10(), , (v31))
      {
        sub_46F9C(&qword_1831F0, &unk_1258D0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1248A0;
        v33 = [v14 systemGray4Color];
        *(v32 + 32) = sub_116BE0();
        v34 = [v14 systemGray2Color];
        *(v32 + 40) = sub_116BE0();
        goto LABEL_7;
      }

      sub_116B30();
      v35 = sub_116B10();

      sub_46F9C(&qword_1831F0, &unk_1258D0);
      v36 = swift_allocObject();
      v17 = v36;
      *(v36 + 16) = xmmword_1248A0;
      if ((v35 & 1) == 0)
      {
        *(v36 + 32) = a2;
        *(v36 + 40) = a2;
        swift_retain_n();
        goto LABEL_7;
      }

      (*(v7 + 104))(v10, enum case for Color.RGBColorSpace.sRGB(_:), v12);
    }

    *(v17 + 32) = sub_116BD0();
    *(v17 + 40) = a2;
  }

LABEL_7:
  sub_116E70();
  sub_116F50();
  sub_116F40();
  sub_1160E0();
  result = v38;
  v19 = v39;
  *a3 = v37[1];
  *(a3 + 8) = result;
  *(a3 + 24) = v19;
  return result;
}

unint64_t sub_5B618(uint64_t a1)
{
  sub_115760();
  sub_5CD10(&qword_183548, &protocol conformance descriptor for Date);
  v2 = sub_1170C0();

  return sub_5B6E0(a1, v2);
}

unint64_t sub_5B69C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1175D0(*(v2 + 40));

  return sub_5B88C(a1, v4);
}

unint64_t sub_5B6E0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_115760();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_5CD10(&qword_183550, &protocol conformance descriptor for Date);
      v16 = sub_117160();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_5B88C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_54960(0, &qword_1831C0, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1175E0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_5B960(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_115760();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_46F9C(&qword_183540, &qword_125978);
  v44 = v4;
  result = sub_117860();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_5CD10(&qword_183548, &protocol conformance descriptor for Date);
      result = sub_1170C0();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_5BD34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_46F9C(&qword_183538, &qword_125970);
  result = sub_117860();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {

        v21 = v20;
      }

      result = sub_1175D0(*(v7 + 40));
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_5BFA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_115760();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_5B618(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_5C3C8();
      goto LABEL_9;
    }

    sub_5B960(v18, a4 & 1);
    v21 = sub_5B618(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_117A40();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_5C308(v15, v12, v23, a2, v24);
  }
}

id sub_5C184(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_5B69C(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_5BD34(v15, a4 & 1);
      v10 = sub_5B69C(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_54960(0, &qword_1831C0, NSNumber_ptr);
        result = sub_117A40();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_5C654();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

uint64_t sub_5C308(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_115760();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *sub_5C3C8()
{
  v1 = v0;
  v35 = sub_115760();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_46F9C(&qword_183540, &qword_125978);
  v3 = *v0;
  v4 = sub_117850();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_5C654()
{
  v1 = v0;
  sub_46F9C(&qword_183538, &qword_125970);
  v2 = *v0;
  v3 = sub_117850();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;

        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_5C7BC(uint64_t a1)
{
  v2 = sub_46F9C(&qword_183558, &unk_125980);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_46F9C(&qword_183540, &qword_125978);
    v7 = sub_117870();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_479B4(v9, v5, &qword_183558, &unk_125980);
      result = sub_5B618(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_115760();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_5C9D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_46F9C(&qword_183538, &qword_125970);
    v3 = sub_117870();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v5;
      result = sub_5B69C(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for BUIChartViewConfig(uint64_t a1)
{
  result = qword_188E50;
  if (!qword_188E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5CB20(uint64_t a1)
{
  result = sub_115820();
  if (v2 <= 0x3F)
  {
    result = sub_1158D0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_5CC8C()
{
  result = qword_183528;
  if (!qword_183528)
  {
    sub_47A1C(&qword_183530, &qword_12CCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183528);
  }

  return result;
}

uint64_t sub_5CD10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_115760();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5CD58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "dNumberFormatter";
  }

  else
  {
    v4 = "PLBatteryUILevelKey";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = "PLBatteryUILevelKey";
  }

  else
  {
    v7 = "dNumberFormatter";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1179E0();
  }

  return v9 & 1;
}

uint64_t sub_5CE04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x80000000001344F0;
  v5 = 0x8000000000134510;
  v6 = 0x776F646B61657242;
  if (a1 == 4)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xE90000000000006ELL;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v4 = v5;
  }

  v7 = 0xD000000000000014;
  if (a1 == 1)
  {
    v7 = 0x756F48664F646E65;
    v8 = 0xE900000000000072;
  }

  else
  {
    v8 = 0x80000000001344D0;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x796144664F646E65;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0x80000000001344F0;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_37;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0x8000000000134510;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v11 = 0xE90000000000006ELL;
      if (v9 != 0x776F646B61657242)
      {
LABEL_37:
        v12 = sub_1179E0();
        goto LABEL_38;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE900000000000072;
      if (v9 != 0x756F48664F646E65)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v11 = 0x80000000001344D0;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x796144664F646E65)
    {
      goto LABEL_37;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_5CFF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ALL;
  v3 = "PLBatteryUISuggestionTypeKey";
  v4 = a1;
  v5 = 0xD00000000000001FLL;
  if (a1 == 4)
  {
    v6 = "PLBatteryUIQueryRangeDayTapKey";
  }

  else
  {
    v5 = 0xD000000000000029;
    v6 = "PLBatteryUIQueryRangeWeekTapKey";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001ELL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "PLBatteryUIQueryRangeWeekKey";
  }

  v8 = 0xD00000000000001CLL;
  if (a1 == 1)
  {
    v8 = 0xD00000000000001BLL;
    v9 = "PLBatteryUIDataDurationKey";
  }

  else
  {
    v9 = "PLBatteryUIQueryRangeDayKey";
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0xD00000000000001ALL;
    v10 = "PLBatteryUISuggestionTypeKey";
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001ELL;
      v3 = "PLBatteryUIQueryRangeWeekKey";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001FLL;
      v3 = "PLBatteryUIQueryRangeDayTapKey";
    }

    else
    {
      v2 = 0xD000000000000029;
      v3 = "PLBatteryUIQueryRangeWeekTapKey";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "PLBatteryUIDataDurationKey";
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v3 = "PLBatteryUIQueryRangeDayKey";
    }
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1179E0();
  }

  return v13 & 1;
}

Swift::Int sub_5D15C()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

Swift::Int sub_5D1DC(unsigned __int8 a1)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

Swift::Int sub_5D2CC(unsigned __int8 a1)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_5D3E0(uint64_t a1)
{
  sub_117200();
}

Swift::Int sub_5D44C(uint64_t a1)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

Swift::Int sub_5D4C8(uint64_t a1, unsigned __int8 a2)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

Swift::Int sub_5D5B4(uint64_t a1, unsigned __int8 a2)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

void sub_5D6D0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "PLBatteryUILevelKey";
  }

  else
  {
    v3 = "dNumberFormatter";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_5D710()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_5D764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6B2B8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_5D7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6B2B8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void sub_5D7DC(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v5 = sub_66228(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

unint64_t sub_5D834@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_663D4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_5D910()
{
  result = sub_663E4(&off_165C90);
  qword_191E40 = result;
  return result;
}

uint64_t *sub_5D938()
{
  if (qword_188E60 != -1)
  {
    swift_once();
  }

  return &qword_191E40;
}

uint64_t sub_5D9DC(char a1)
{
  v1 = 0;
  switch(a1)
  {
    case 1:
      v2 = sub_117170();
      v3 = BatteryUILocalization(v2);

      if (v3)
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_4;
    case 3:
      goto LABEL_16;
    case 4:
      goto LABEL_10;
    case 5:
      goto LABEL_26;
    case 7:
      goto LABEL_28;
    case 8:
      goto LABEL_12;
    case 9:
      goto LABEL_18;
    case 12:
      goto LABEL_20;
    case 13:
      goto LABEL_32;
    case 14:
      goto LABEL_30;
    case 16:
      goto LABEL_6;
    case 20:
      goto LABEL_14;
    case 21:
      goto LABEL_8;
    case 22:
LABEL_4:
      v4 = sub_117170();
      v3 = BatteryUILocalization(v4);

      if (v3)
      {
        goto LABEL_33;
      }

      __break(1u);
LABEL_6:
      v5 = sub_117170();
      v3 = BatteryUILocalization(v5);

      if (!v3)
      {
        __break(1u);
LABEL_8:
        v6 = sub_117170();
        v3 = BatteryUILocalization(v6);

        if (!v3)
        {
          __break(1u);
LABEL_10:
          v7 = sub_117170();
          v3 = BatteryUILocalization(v7);

          if (!v3)
          {
            __break(1u);
LABEL_12:
            v8 = sub_117170();
            v3 = BatteryUILocalization(v8);

            if (!v3)
            {
              __break(1u);
LABEL_14:
              v9 = sub_117170();
              v3 = BatteryUILocalization(v9);

              if (!v3)
              {
                __break(1u);
LABEL_16:
                v10 = sub_117170();
                v3 = BatteryUILocalization(v10);

                if (!v3)
                {
                  __break(1u);
LABEL_18:
                  v11 = sub_117170();
                  v3 = BatteryUILocalization(v11);

                  if (!v3)
                  {
                    __break(1u);
LABEL_20:
                    v12 = sub_117170();
                    v3 = BatteryUILocalization(v12);

                    if (!v3)
                    {
                      __break(1u);
LABEL_22:
                      v13 = sub_117170();
                      v3 = BatteryUILocalization(v13);

                      if (!v3)
                      {
                        __break(1u);
LABEL_24:
                        v14 = sub_117170();
                        v3 = BatteryUILocalization(v14);

                        if (!v3)
                        {
                          __break(1u);
LABEL_26:
                          v15 = sub_117170();
                          v3 = BatteryUILocalization(v15);

                          if (!v3)
                          {
                            __break(1u);
LABEL_28:
                            v16 = sub_117170();
                            v3 = BatteryUILocalization(v16);

                            if (!v3)
                            {
                              __break(1u);
LABEL_30:
                              v17 = sub_117170();
                              v3 = BatteryUILocalization(v17);

                              if (!v3)
                              {
                                __break(1u);
LABEL_32:
                                v18 = sub_117170();
                                v3 = BatteryUILocalization(v18);

                                if (!v3)
                                {
                                  __break(1u);
                                  JUMPOUT(0x5DE48);
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

LABEL_33:
      v1 = sub_1171B0();

      return v1;
    case 23:
      goto LABEL_22;
    case 24:
      goto LABEL_24;
    default:
      return v1;
  }
}

unint64_t sub_5DEA8(unsigned __int8 a1)
{
  v1 = a1 - 1;
  result = 0x72616C756C6C6563;
  switch(v1)
  {
    case 0:
    case 23:
      return result;
    case 1:
    case 21:
      result = 0x61622E7472616863;
      break;
    case 2:
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x2E79616C70726961;
      break;
    case 4:
      result = 0x706F7264726961;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
    case 22:
      result = 0x7269632E79616C70;
      break;
    case 8:
      result = 0x6461622E6C6C6562;
      break;
    case 9:
      result = 0x746177656C707061;
      break;
    case 10:
      result = 0x6F632E656C626163;
      break;
    case 11:
    case 15:
      result = 0x732E746567646977;
      break;
    case 12:
      result = 0x74696B656D6F68;
      break;
    case 13:
      result = 0x68702E656C707061;
      break;
    case 19:
      result = 0x6B636F6C63;
      break;
    case 20:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_5E120(uint64_t a1, uint64_t a2, char a3, char a4)
{
  result = 0;
  switch(a4)
  {
    case 1:
      v8 = "QUALIFIER_EXPLANATION_POOR_SIGNAL_CONDITION";
      goto LABEL_14;
    case 3:
      v8 = "QUALIFIER_EXPLANATION_LOCATION";
      goto LABEL_14;
    case 4:
      v8 = "QUALIFIER_EXPLANATION_AIRPLAY";
      goto LABEL_14;
    case 5:
      v8 = "QUALIFIER_EXPLANATION_AIRDROP";
      goto LABEL_14;
    case 7:
      v8 = "QUALIFIER_EXPLANATION_AUDIO";
      goto LABEL_14;
    case 8:
      v8 = "QUALIFIER_EXPLANATION_BACKGROUND_LOCATION";
      goto LABEL_14;
    case 9:
      v8 = "QUALIFIER_EXPLANATION_NOTIFICATIONS";
      goto LABEL_14;
    case 12:
      v8 = "QUALIFIER_EXPLANATION_WIDGET";
      goto LABEL_14;
    case 13:
      v18 = sub_117170();
      v19 = BatteryUILocalization(v18);

      if (!v19)
      {
        goto LABEL_28;
      }

      v20 = sub_1171B0();

      result = v20;
      break;
    case 14:
      v8 = "QUALIFIER_EXPLANATION_POSTER";
      goto LABEL_14;
    case 16:
      v8 = "QUALIFIER_EXPLANATION_REMOTE_WIDGET";
      goto LABEL_14;
    case 22:
      v8 = "QUALIFIER_EXPLANATION_NOT_TYPICALLY_USED";
      goto LABEL_14;
    case 24:
      v8 = "QUALIFIER_EXPLANATION_INCREASED_POOR_SIGNAL_CONDITION";
LABEL_14:
      v9 = v8 - 32;

      if ((v9 & 0x2F00000000000000) == 0x2000000000000000)
      {

        result = 0;
      }

      else
      {
        if (a3)
        {
          v10._countAndFlagsBits = 0x524548544F5FLL;
        }

        else
        {
          v10._countAndFlagsBits = 1347436895;
        }

        if (a3)
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE400000000000000;
        }

        v10._object = v11;
        sub_117220(v10);

        v12 = sub_117170();
        v13 = BatteryUILocalization(v12);

        if (!v13)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          JUMPOUT(0x5E478);
        }

        sub_1171B0();

        sub_46F9C(&qword_182EF8, &unk_125990);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_124890;
        *(v14 + 56) = &type metadata for String;
        *(v14 + 64) = sub_53EE8(v14, v15, v16);
        *(v14 + 32) = a1;
        *(v14 + 40) = a2;

        v17 = sub_117180();

        result = v17;
      }

      break;
    default:
      return result;
  }

  return result;
}

void sub_5E4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  switch(a6)
  {
    case 23:
      v11 = "QUALIFIER_EXPLANATION_INCREASED_AUDIO_TIME";
      break;
    case 21:
      v11 = "QUALIFIER_EXPLANATION_INCREASED_BACKGROUND";
      break;
    case 20:
      v11 = "QUALIFIER_EXPLANATION_INCREASED_FOREGROUND";
      break;
    default:
      return;
  }

  v12 = v11 - 32;

  if ((v12 & 0x2F00000000000000) == 0x2000000000000000)
  {
  }

  else
  {
    if (a5)
    {
      v13._countAndFlagsBits = 0x524548544F5FLL;
    }

    else
    {
      v13._countAndFlagsBits = 1347436895;
    }

    if (a5)
    {
      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v13._object = v14;
    sub_117220(v13);

    v15 = sub_117170();
    v16 = BatteryUILocalization(v15);

    if (v16)
    {
      sub_1171B0();

      sub_46F9C(&qword_182EF8, &unk_125990);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1248A0;
      *(v17 + 56) = &type metadata for String;
      v20 = sub_53EE8(v17, v18, v19);
      *(v17 + 32) = a1;
      *(v17 + 40) = a2;
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v20;
      *(v17 + 64) = v20;
      *(v17 + 72) = a3;
      *(v17 + 80) = a4;

      sub_117180();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_5E6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v13 = sub_E639C();
  if (v13 != 7)
  {
    switch(a7)
    {
      case 23:
        v14 = v13;
        v15 = "QUALIFIER_PAST_EXPLANATION_INCREASED_AUDIO_TIME";
        break;
      case 21:
        v14 = v13;
        v15 = "QUALIFIER_PAST_EXPLANATION_INCREASED_BACKGROUND";
        break;
      case 20:
        v14 = v13;
        v15 = "QUALIFIER_PAST_EXPLANATION_INCREASED_FOREGROUND";
        break;
      default:
        return;
    }

    v16 = v15 - 32;
    v27 = (v15 - 32) | 0x8000000000000000;

    if ((v16 & 0x2F00000000000000) == 0x2000000000000000)
    {
    }

    else
    {
      if (a6)
      {
        v17._countAndFlagsBits = 0x524548544F5FLL;
      }

      else
      {
        v17._countAndFlagsBits = 1347436895;
      }

      if (a6)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      v17._object = v18;
      sub_117220(v17);

      sub_E622C(0xD00000000000002FLL, v27, v14);
      v19 = sub_117170();

      v20 = BatteryUILocalization(v19);

      if (v20)
      {
        sub_1171B0();

        sub_46F9C(&qword_182EF8, &unk_125990);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1246D0;
        *(v21 + 56) = &type metadata for String;
        v24 = sub_53EE8(v21, v22, v23);
        *(v21 + 32) = a1;
        *(v21 + 40) = a2;
        *(v21 + 96) = &type metadata for String;
        *(v21 + 104) = v24;
        *(v21 + 64) = v24;
        *(v21 + 72) = a3;
        *(v21 + 80) = a4;

        v25 = sub_E6648();
        *(v21 + 136) = &type metadata for String;
        *(v21 + 144) = v24;
        *(v21 + 112) = v25;
        *(v21 + 120) = v26;
        sub_117180();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_5E944@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_664C4(*a1);
  *a2 = result;
  return result;
}

unint64_t *sub_5EA34@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_5EAC4()
{
  v1 = sub_1157A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40))
  {
    v5 = *(v0 + 32);
  }

  else
  {
    sub_115790();
    v5 = sub_115770();
    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

unint64_t sub_5EBC0(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
    case 6:
      result = 0xD000000000000022;
      break;
    case 5:
    case 7:
      result = 0xD00000000000002BLL;
      break;
    case 9:
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_5ED98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_664D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_5EDC8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_5EBC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_5EE10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_664D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5EE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_66E24(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_5EE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_66E24(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void sub_5EEBC()
{
  sub_1154B0();
  swift_allocObject();
  v1 = sub_1154A0();
  v2 = *(v0 + 112);
  v19[6] = *(v0 + 96);
  v19[7] = v2;
  v19[8] = *(v0 + 128);
  v20 = *(v0 + 144);
  v3 = *(v0 + 48);
  v19[2] = *(v0 + 32);
  v19[3] = v3;
  v4 = *(v0 + 80);
  v19[4] = *(v0 + 64);
  v19[5] = v4;
  v5 = *(v0 + 16);
  v19[0] = *v0;
  v19[1] = v5;
  sub_66D38(v1, v6, v7);
  v8 = sub_115490();
  v10 = v9;

  v11 = objc_opt_self();
  isa = sub_115660().super.isa;
  *&v19[0] = 0;
  v13 = [v11 JSONObjectWithData:isa options:0 error:v19];

  if (!v13)
  {
    v17 = *&v19[0];
    sub_1155A0();

    swift_willThrow();
    sub_66D8C(v8, v10);

LABEL_2:

    return;
  }

  v14 = *&v19[0];
  sub_117660();
  swift_unknownObjectRelease();
  sub_46F9C(&qword_183580, &qword_1259A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_66D8C(v8, v10);
    goto LABEL_2;
  }

  sub_5F138(v18);
  v15 = sub_117050().super.isa;

  v16 = BatteryUIGetDisplayName(v15);

  if (v16)
  {

    sub_1171B0();

    sub_66D8C(v8, v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5F138(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_46F9C(&qword_1838A0, &qword_126960);
    v2 = sub_117870();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_6AD00(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_543D8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_543D8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_543D8(v31, v32);
    result = sub_1176A0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_543D8(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_5F400()
{
  v1 = *(v0 + 48);
  v2 = sub_8D6A8();
  if (*v2 <= v1 && (v3 = [sub_8D8B4()[8] stringFromTimeInterval:v1]) != 0)
  {
    v4 = v3;
    v5 = sub_1171B0();
    v7 = v6;

    v8 = sub_117170();
    v9 = BatteryUILocalization(v8);

    if (!v9)
    {
      __break(1u);
      goto LABEL_19;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_124890;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_53EE8(v10, v11, v12);
    *(v10 + 32) = v5;
    *(v10 + 40) = v7;
    v13 = sub_117180();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = *(v0 + 56);
  if (*v2 <= v16)
  {
    v17 = [sub_8D8B4()[8] stringFromTimeInterval:v16];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1171B0();
      v21 = v20;

      v22 = sub_117170();
      v23 = BatteryUILocalization(v22);

      if (v23)
      {
        sub_1171B0();

        sub_46F9C(&qword_182EF8, &unk_125990);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_124890;
        *(v24 + 56) = &type metadata for String;
        *(v24 + 64) = sub_53EE8(v24, v25, v26);
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v27 = sub_117180();
        v29 = v28;

        if (v15 | v29)
        {
          goto LABEL_10;
        }

        return;
      }

LABEL_19:
      __break(1u);
      return;
    }
  }

  v27 = 0;
  v29 = 0;
  if (v15)
  {
LABEL_10:
    if (v15)
    {
      v30._countAndFlagsBits = v13;
      v30._object = v15;
      sub_117220(v30);
      if (v29)
      {

        v31._countAndFlagsBits = 10;
        v31._object = 0xE100000000000000;
        sub_117220(v31);
LABEL_16:
        v32._countAndFlagsBits = v27;
        v32._object = v29;
        sub_117220(v32);
      }
    }

    else if (v29)
    {
      goto LABEL_16;
    }
  }
}

void sub_5F6F8()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v8 = *v4++;
      v7 = v8;
      if ((v8 - 20) <= 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_65240(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v6 = _swiftEmptyArrayStorage[2];
        v5 = _swiftEmptyArrayStorage[3];
        if (v6 >= v5 >> 1)
        {
          sub_65240((v5 > 1), v6 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v6 + 1;
        *(&_swiftEmptyArrayStorage[4] + v6) = v7;
      }

      --v3;
    }

    while (v3);
  }

  if (!_swiftEmptyArrayStorage[2])
  {

    return;
  }

  v9 = LOBYTE(_swiftEmptyArrayStorage[4]);

  if (v9 <= 21)
  {
    if (v9 == 20)
    {
      goto LABEL_31;
    }

    if (v9 != 21)
    {
      return;
    }

    if (*(v0 + 144))
    {
      return;
    }

    v10 = [sub_8D8B4()[8] stringFromTimeInterval:*(v0 + 136)];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v2 = sub_1171B0();
    v13 = v12;

    v14 = sub_117170();
    v15 = BatteryUILocalization(v14);

    if (v15)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_25:
    v16 = sub_117170();
    v17 = BatteryUILocalization(v16);

    if (v17)
    {
      sub_1171B0();
    }

    return;
  }

  if (v9 == 22)
  {
    goto LABEL_25;
  }

  if (v9 != 23)
  {
    if (v9 != 24)
    {
      return;
    }

    goto LABEL_25;
  }

  if (*(v0 + 144))
  {
    return;
  }

  v18 = [sub_8D8B4()[8] stringFromTimeInterval:*(v0 + 136)];
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v2 = sub_1171B0();
  v13 = v20;

  v21 = sub_117170();
  v15 = BatteryUILocalization(v21);

  if (v15)
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_31:
  if ((*(v2 + 144) & 1) == 0)
  {
    v22 = [sub_8D8B4()[8] stringFromTimeInterval:*(v2 + 136)];
    if (v22)
    {
      v23 = v22;
      v2 = sub_1171B0();
      v13 = v24;

      v25 = sub_117170();
      v15 = BatteryUILocalization(v25);

      if (!v15)
      {
        __break(1u);
        return;
      }

LABEL_34:
      sub_1171B0();

      sub_46F9C(&qword_182EF8, &unk_125990);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_124890;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_53EE8(v26, v27, v28);
      *(v26 + 32) = v2;
      *(v26 + 40) = v13;
      sub_117180();
    }
  }
}

uint64_t sub_5FAE8()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    return 26;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if ((v7 - 20) <= 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_65240(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_65240((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        *(&_swiftEmptyArrayStorage[4] + v5) = v6;
      }

      --v2;
    }

    while (v2);
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v8 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v8 = 26;
  }

  return v8;
}

uint64_t sub_5FBF8(void *a1)
{
  v3 = v1;
  v5 = sub_46F9C(&qword_183588, &qword_1259A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_66DE0(a1, a1[3]);
  sub_66E24(v9, v10, v11);
  v12 = sub_117B00();
  LOBYTE(v16) = *v3;
  v17 = 0;
  sub_66E78(v12, v13, v14);
  sub_117960();
  if (!v2)
  {
    v16 = *(v3 + 8);
    v17 = 1;
    sub_46F9C(&qword_183598, &unk_1259B0);
    sub_6B1B4(&qword_1835A0, sub_66ECC, &protocol conformance descriptor for <A> [A]);
    sub_117960();
    LOBYTE(v16) = 2;
    sub_117970();
    LOBYTE(v16) = 3;
    sub_117930();
    LOBYTE(v16) = 4;
    sub_117990();
    LOBYTE(v16) = 5;
    sub_117940();
    LOBYTE(v16) = 6;
    sub_117990();
    LOBYTE(v16) = 7;
    sub_117940();
    LOBYTE(v16) = 8;
    sub_117990();
    LOBYTE(v16) = 9;
    sub_117990();
    LOBYTE(v16) = 10;
    sub_117950();
    v16 = *(v3 + 128);
    v17 = 11;
    sub_46F9C(&qword_1835B0, &qword_127DA0);
    sub_6B08C(&qword_1835B8, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    sub_117960();
    LOBYTE(v16) = 12;
    sub_117940();
    LOBYTE(v16) = 13;
    sub_117980();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_60010(uint64_t a1)
{
  v2 = *v1;
  if (v2 == 6)
  {
    sub_117AB0(0);
    v3 = *(v1 + 1);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_117AB0(0);
    goto LABEL_9;
  }

  sub_117AB0(1u);
  sub_117AA0(v2);
  v3 = *(v1 + 1);
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_117AB0(1u);
  v4 = *(v3 + 16);
  sub_117AA0(v4);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      sub_117AA0(v6);
      --v4;
    }

    while (v4);
  }

LABEL_9:
  sub_117200();
  if (*(v1 + 5))
  {
    sub_117AB0(1u);
    sub_117200();
  }

  else
  {
    sub_117AB0(0);
  }

  v7 = *(v1 + 6);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  sub_117AC0(*&v7);
  v8 = *(v1 + 7);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  sub_117AC0(*&v8);
  if (v1[72] == 1)
  {
    sub_117AB0(0);
  }

  else
  {
    v9 = *(v1 + 8);
    sub_117AB0(1u);
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    sub_117AC0(v10);
  }

  if (v1[88] == 1)
  {
    sub_117AB0(0);
  }

  else
  {
    v11 = *(v1 + 10);
    sub_117AB0(1u);
    if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    sub_117AC0(v12);
  }

  v13 = *(v1 + 12);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  sub_117AC0(*&v13);
  v14 = *(v1 + 13);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  sub_117AC0(*&v14);
  if (v1[120] == 1)
  {
    sub_117AB0(0);
    v15 = *(v1 + 16);
    if (v15)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v19 = *(v1 + 14);
    sub_117AB0(1u);
    sub_117AA0(v19);
    v15 = *(v1 + 16);
    if (v15)
    {
LABEL_34:
      sub_117AB0(1u);
      v16 = *(v15 + 16);
      sub_117AA0(v16);
      if (v16)
      {
        v17 = (v15 + 32);
        do
        {
          v18 = *v17++;
          sub_117AA0(v18);
          --v16;
        }

        while (v16);
      }

      if (v1[144])
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

  sub_117AB0(0);
  if (v1[144])
  {
LABEL_38:
    sub_117AB0(0);
    goto LABEL_45;
  }

LABEL_41:
  v20 = *(v1 + 17);
  sub_117AB0(1u);
  if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  sub_117AC0(v21);
LABEL_45:
  sub_117AB0(v1[145] & 1);
}

double sub_6024C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_66520(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v10;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

Swift::Int sub_602D8()
{
  sub_117A90();
  sub_60010(v1);
  return sub_117AD0();
}

Swift::Int sub_6031C(uint64_t a1)
{
  sub_117A90();
  sub_60010(v2);
  return sub_117AD0();
}

uint64_t sub_6035C()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_6038C()
{
  sub_5F6F8();
  if (!v0)
  {
    sub_5F400();
  }
}

uint64_t sub_603B4()
{
  v1 = sub_46F9C(&qword_183560, &qword_129070);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v9[1] = *(v0 + 104);
  v5 = sub_ECF08();
  sub_66C80(v5, v6, v7);
  sub_66CD4();
  sub_117040();
  (*(v2 + 8))(v4, v1);
  return v9[2];
}

uint64_t sub_604D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1157A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 40);
  if (v7)
  {
    v8 = *(v1 + 32);
    v9 = v7;
  }

  else
  {
    sub_115790();
    v8 = sub_115770();
    v9 = v10;
    (*(v4 + 8))(v6, v3);
  }

  *a1 = v8;
  a1[1] = v9;
}

BOOL sub_605D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6A95C(a1, a2, a3);

  return sub_F27A8(a1, a2, a3, v6);
}

uint64_t sub_60624(uint64_t a1)
{
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  sub_117710(36);
  v3._countAndFlagsBits = 0x776F646B61657262;
  v3._object = 0xEF2068746977206ELL;
  sub_117220(v3);
  sub_117430();
  v4._countAndFlagsBits = 0x612065676E617220;
  v4._object = 0xEB0000000020646ELL;
  sub_117220(v4);
  sub_46F9C(&qword_1835C8, &qword_1259C0);
  sub_1177E0();
  v5._countAndFlagsBits = 0x666675747320;
  v5._object = 0xE600000000000000;
  sub_117220(v5);
  sub_117220(v2);
}

unint64_t sub_60774(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0xD000000000000019;
    if (!a1)
    {
      v7 = 0xD00000000000001CLL;
    }

    if (a1 <= 1u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    if (a1 == 9)
    {
      v1 = 0xD000000000000018;
    }

    else
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 8)
    {
      v2 = 0xD000000000000019;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD000000000000023;
    if (a1 == 6)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_608B4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1179E0();
  }

  return v12 & 1;
}

Swift::Int sub_60960(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_117A90();
  a3(v5);
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_609E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_117200();
}

Swift::Int sub_60A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_117A90();
  a4(v6);
  sub_117200();

  return sub_117AD0();
}

unint64_t sub_60ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_66F74(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_60AEC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_60774(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_60B34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_66F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_60B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6AE88(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_60BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6AE88(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

double sub_60BE0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_67598(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

unint64_t sub_60C48()
{
  sub_117710(24);

  v1._countAndFlagsBits = sub_117090();
  sub_117220(v1);

  return 0xD000000000000016;
}

uint64_t sub_60CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (*(a1 + 24))
  {
    if (v2 & 1 | ((v3 & 1) == 0))
    {
      return v3 & v4;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if ((v3 | v2))
    {
      return (v3 ^ 1) & v4;
    }
  }

  return (*(a1 + 32) == *(a2 + 32)) & ~v4;
}

uint64_t sub_60D40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD000000000000025;
  }

  if (v2)
  {
    v4 = "PLBatteryUIComparisonType";
  }

  else
  {
    v4 = "stionEnergyPercentKey";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v6 = 0xD000000000000025;
  }

  if (*a2)
  {
    v7 = "stionEnergyPercentKey";
  }

  else
  {
    v7 = "PLBatteryUIComparisonType";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1179E0();
  }

  return v9 & 1;
}

Swift::Int sub_60DEC()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_60E6C(uint64_t a1)
{
  sub_117200();
}

Swift::Int sub_60ED8(uint64_t a1)
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_60F60@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_117890(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_60FBC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000025;
  }

  if (*v1)
  {
    v3 = "stionEnergyPercentKey";
  }

  else
  {
    v3 = "PLBatteryUIComparisonType";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_60FFC()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t sub_61044@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X4>, char *a4@<X8>)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_117890(a3, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_610B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6ADE0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_610EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6ADE0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_61128@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_67B58(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 9) = HIBYTE(v5);
  }

  return result;
}

uint64_t sub_61184()
{
  sub_117710(36);
  v1._countAndFlagsBits = 0x776F646B61657262;
  v1._object = 0xEF2068746977206ELL;
  sub_117220(v1);
  sub_117430();
  v2._countAndFlagsBits = 0x612065676E617220;
  v2._object = 0xEB0000000020646ELL;
  sub_117220(v2);
  sub_46F9C(&qword_1835C8, &qword_1259C0);
  sub_1177E0();
  v3._countAndFlagsBits = 0x666675747320;
  v3._object = 0xE600000000000000;
  sub_117220(v3);
  return 0;
}

uint64_t sub_612C8(uint64_t a1)
{
  sub_117200();
}

unint64_t sub_613A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_67D20(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_613D8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ALL;
  v3 = *v1;
  v4 = "PLBatteryUISuggestionTypeKey";
  v5 = "PLBatteryUIQueryRangeWeekKey";
  v6 = 0xD00000000000001ELL;
  v7 = "PLBatteryUIQueryRangeDayTapKey";
  v8 = 0xD00000000000001FLL;
  if (v3 != 4)
  {
    v8 = 0xD000000000000029;
    v7 = "PLBatteryUIQueryRangeWeekTapKey";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "PLBatteryUIDataDurationKey";
  v10 = 0xD00000000000001CLL;
  if (v3 == 1)
  {
    v10 = 0xD00000000000001BLL;
  }

  else
  {
    v9 = "PLBatteryUIQueryRangeDayKey";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 > 2u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_61484()
{
  v1 = 0xD00000000000001ALL;
  v2 = *v0;
  v3 = 0xD00000000000001ELL;
  v4 = 0xD00000000000001FLL;
  if (v2 != 4)
  {
    v4 = 0xD000000000000029;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001CLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_6152C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_67D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_61560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6AD5C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_6159C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6AD5C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void *sub_615D8@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_67D6C(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x110uLL);
  }

  return result;
}

void *sub_61640@<X0>(void *a2@<X8>)
{
  v4 = objc_opt_self();
  isa = sub_117050().super.isa;
  v6 = [v4 isValidJSONObject:isa];

  if (!v6)
  {

    sub_68340(v17, v18, v19);
    swift_allocError();
    *v20 = 0xD000000000000011;
    v20[1] = 0x8000000000134C60;
LABEL_7:
    swift_willThrow();
    return swift_willThrow();
  }

  v7 = sub_117050().super.isa;

  __src[0] = 0;
  v8 = [v4 dataWithJSONObject:v7 options:0 error:__src];

  v9 = __src[0];
  if (!v8)
  {
    v21 = v9;
    sub_1155A0();

    goto LABEL_7;
  }

  v10 = sub_115670();
  v12 = v11;

  sub_115480();
  swift_allocObject();
  v13 = sub_115470();
  sub_691C4(v13, v14, v15);
  sub_115450();

  sub_66D8C(v10, v12);
  if (!v2)
  {
    return memcpy(a2, __src, 0x110uLL);
  }

  return swift_willThrow();
}

uint64_t sub_61870(uint64_t a1)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_1835D0, &qword_1259C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_117800();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = &v48 - v11;
  v12 = objc_opt_self();
  isa = sub_117050().super.isa;
  v14 = [v12 isValidJSONObject:isa];

  if (!v14)
  {

    sub_68340(v37, v38, v39);
    swift_allocError();
    *v40 = 0xD000000000000011;
    v40[1] = 0x8000000000134C60;
LABEL_25:
    swift_willThrow();
    return swift_willThrow();
  }

  v15 = sub_117050().super.isa;
  *&v60 = 0;
  v16 = [v12 dataWithJSONObject:v15 options:0 error:&v60];

  v17 = v60;
  if (!v16)
  {
    v44 = v17;

    sub_1155A0();

    goto LABEL_25;
  }

  v18 = sub_115670();
  v53 = v19;
  v54 = v18;

  sub_115480();
  swift_allocObject();
  v20 = sub_115470();
  if (!*(a1 + 16) || (v21 = sub_64F08(0xD000000000000022, 0x8000000000134490), (v22 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_6AD00(*(a1 + 56) + 32 * v21, &v60);

  sub_46F9C(&qword_1835E0, &qword_1259D0);
  v23 = swift_dynamicCast();
  if (!v23)
  {
    goto LABEL_22;
  }

  v52 = v20;
  v26 = v58;
  if (v58 >> 62)
  {
    v27 = sub_117840();
    if (v27)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v27 = *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8));
    if (v27)
    {
LABEL_8:
      v49 = v8;
      v50 = v7;
      v51 = v1;
      v57 = _swiftEmptyArrayStorage;
      sub_65260(0, v27 & ~(v27 >> 63), 0);
      if (v27 < 0)
      {
        __break(1u);
      }

      v28 = 0;
      v29 = v57;
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v30 = sub_117730();
        }

        else
        {
          v30 = *(v26 + 8 * v28 + 32);
        }

        v31 = v30;
        *&v60 = 0x6870617247;
        *(&v60 + 1) = 0xE500000000000000;
        v32 = [v30 __swift_objectForKeyedSubscript:sub_117A10()];
        swift_unknownObjectRelease();
        if (v32)
        {
          sub_117660();
          swift_unknownObjectRelease();
        }

        else
        {

          v58 = 0u;
          v59 = 0u;
        }

        v60 = v58;
        v61 = v59;
        v57 = v29;
        v34 = v29[2];
        v33 = v29[3];
        if (v34 >= v33 >> 1)
        {
          sub_65260((v33 > 1), v34 + 1, 1);
          v29 = v57;
        }

        ++v28;
        v29[2] = v34 + 1;
        v35 = &v29[4 * v34];
        v36 = v61;
        *(v35 + 2) = v60;
        *(v35 + 3) = v36;
      }

      while (v27 != v28);

      v7 = v50;
      v2 = v51;
      v8 = v49;
      goto LABEL_29;
    }
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_29:
  sub_1177F0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    v23 = sub_488C8(v6, &qword_1835D0, &qword_1259C8);
  }

  else
  {
    v45 = v56;
    (*(v8 + 32))(v56, v6, v7);
    v46 = v55;
    (*(v8 + 16))(v55, v45, v7);
    *(&v61 + 1) = sub_46F9C(&qword_1835E8, &qword_1259D8);
    *&v60 = v29;
    v47 = sub_115460();
    sub_64D10(&v60, v46);
    v47(&v58, 0);
    v23 = (*(v8 + 8))(v45, v7);
  }

LABEL_22:
  sub_69240(v23, v24, v25);
  v42 = v53;
  v41 = v54;
  sub_115450();

  sub_66D8C(v41, v42);
  if (!v2)
  {
    return v60;
  }

  return swift_willThrow();
}

uint64_t sub_61EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v57 = a3;
  v59 = a2;
  v56 = a4;
  v5 = sub_46F9C(&qword_1835D0, &qword_1259C8);
  __chkstk_darwin(v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_117800();
  v55 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = objc_opt_self();
  isa = sub_117050().super.isa;
  v16 = [v14 isValidJSONObject:isa];

  if (!v16)
  {

    sub_68340(v39, v40, v41);
    swift_allocError();
    *v42 = 0xD000000000000011;
    v42[1] = 0x8000000000134C60;
LABEL_26:
    swift_willThrow();
    return swift_willThrow();
  }

  v17 = sub_117050().super.isa;
  *&v63 = 0;
  v18 = [v14 dataWithJSONObject:v17 options:0 error:&v63];

  v19 = v63;
  if (!v18)
  {
    v46 = v19;

    sub_1155A0();

    goto LABEL_26;
  }

  v20 = sub_115670();
  v52 = v21;

  sub_115480();
  swift_allocObject();
  v51 = sub_115470();
  if (!swift_dynamicCastMetatype() || !*(a1 + 16) || (v22 = sub_64F08(0xD000000000000022, 0x8000000000134490), (v23 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_6AD00(*(a1 + 56) + 32 * v22, &v63);

  sub_46F9C(&qword_1835E0, &qword_1259D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v50 = v20;
  v24 = v61;
  if (v61 >> 62)
  {
    v47 = v61;
    v25 = sub_117840();
    v24 = v47;
    v26 = v55;
    if (v25)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v25 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
    v26 = v55;
    if (v25)
    {
LABEL_9:
      v49 = v8;
      v27 = v24;
      v60 = _swiftEmptyArrayStorage;
      sub_65260(0, v25 & ~(v25 >> 63), 0);
      if (v25 < 0)
      {
        __break(1u);
      }

      v28 = 0;
      v29 = v60;
      v30 = v27;
      v53 = v27 & 0xC000000000000001;
      v54 = v27;
      v31 = v25;
      do
      {
        if (v53)
        {
          v32 = sub_117730();
        }

        else
        {
          v32 = *(v30 + 8 * v28 + 32);
        }

        v33 = v32;
        *&v63 = 0x6870617247;
        *(&v63 + 1) = 0xE500000000000000;
        v34 = [v32 __swift_objectForKeyedSubscript:sub_117A10()];
        swift_unknownObjectRelease();
        if (v34)
        {
          sub_117660();
          swift_unknownObjectRelease();
        }

        else
        {

          v61 = 0u;
          v62 = 0u;
        }

        v63 = v61;
        v64 = v62;
        v60 = v29;
        v36 = v29[2];
        v35 = v29[3];
        if (v36 >= v35 >> 1)
        {
          sub_65260((v35 > 1), v36 + 1, 1);
          v29 = v60;
        }

        ++v28;
        v29[2] = v36 + 1;
        v37 = &v29[4 * v36];
        v38 = v64;
        *(v37 + 2) = v63;
        *(v37 + 3) = v38;
        v30 = v54;
      }

      while (v31 != v28);

      v26 = v55;
      v8 = v49;
      goto LABEL_30;
    }
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_30:
  sub_1177F0();
  if ((*(v26 + 48))(v7, 1, v8) == 1)
  {

    sub_488C8(v7, &qword_1835D0, &qword_1259C8);
  }

  else
  {
    (*(v26 + 32))(v13, v7, v8);
    (*(v26 + 16))(v10, v13, v8);
    *(&v64 + 1) = sub_46F9C(&qword_1835E8, &qword_1259D8);
    *&v63 = v29;
    v48 = sub_115460();
    sub_64D10(&v63, v10);
    v48(&v61, 0);
    (*(v26 + 8))(v13, v8);
  }

  v20 = v50;
LABEL_23:
  v43 = v52;
  v44 = v58;
  sub_115450();

  result = sub_66D8C(v20, v43);
  if (v44)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_62548()
{
  sub_117710(23);

  v1._countAndFlagsBits = sub_1179B0();
  sub_117220(v1);

  v2._countAndFlagsBits = 0x666675747320;
  v2._object = 0xE600000000000000;
  sub_117220(v2);
  return 0x776F646B61657262;
}

Swift::Int sub_62614()
{
  sub_117A90();
  sub_117200();
  return sub_117AD0();
}

Swift::Int sub_62688(uint64_t a1)
{
  sub_117A90();
  sub_117200();
  return sub_117AD0();
}

uint64_t sub_626DC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_166050;
  v7._object = v3;
  v5 = sub_117890(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_6276C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_166088;
  v8._object = a2;
  v6 = sub_117890(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_627D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6AB84(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_6280C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6AB84(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_62848@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_68394(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_6287C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_61870(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_628A8()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_117710(28);
  v3._countAndFlagsBits = 1029992293;
  v3._object = 0xE400000000000000;
  sub_117220(v3);
  __dst[0] = *v0;
  v4._countAndFlagsBits = sub_1179B0();
  sub_117220(v4);

  v5._countAndFlagsBits = 0x3D686F6520;
  v5._object = 0xE500000000000000;
  sub_117220(v5);
  __dst[0] = v0[1];
  v6._countAndFlagsBits = sub_1179B0();
  sub_117220(v6);

  v7._countAndFlagsBits = 0x6F646B6165726220;
  v7._object = 0xED0000203D206E77;
  sub_117220(v7);
  memcpy(__dst, v0 + 6, sizeof(__dst));
  sub_60624(__dst);
  return 0;
}

uint64_t sub_629EC(uint64_t a1)
{
  sub_117200();
}

unint64_t sub_62AF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_688B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_62B20(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x796144664F646E65;
  v5 = 0xD000000000000018;
  v6 = 0x80000000001344F0;
  v7 = 0x8000000000134510;
  v8 = 0x776F646B61657242;
  if (v2 == 4)
  {
    v8 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE900000000000072;
  v10 = 0xD000000000000014;
  if (v2 == 1)
  {
    v10 = 0x756F48664F646E65;
  }

  else
  {
    v9 = 0x80000000001344D0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_62BEC()
{
  v1 = *v0;
  v2 = 0x796144664F646E65;
  v3 = 0xD000000000000018;
  v4 = 0x776F646B61657242;
  if (v1 == 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 == 1)
  {
    v5 = 0x756F48664F646E65;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_62CB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_688B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_62CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6AADC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_62D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6AADC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void *sub_62D54@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_68900(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x140uLL);
  }

  return result;
}

uint64_t sub_62DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_117620();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = *(a3 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6, v12);
  if ((*(v10 + 48))(v9, 1, a3) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v15 = 0;
  }

  else
  {
    (*(v10 + 32))(v14, v9, a3);
    v15 = sub_117160();
    (*(v10 + 8))(v14, a3);
  }

  return v15 & 1;
}

uint64_t sub_62F94()
{
  v1 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = v1;
  v9 = *(v0 + 192);
  v10 = *(v0 + 208);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v6[3] = v2;
  v3 = *(v0 + 144);
  v6[4] = *(v0 + 128);
  v6[5] = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  if (sub_68BD4(v6) == 1)
  {
    return 0;
  }

  else
  {
    return *(&v7 + 1);
  }
}

uint64_t sub_62FFC()
{
  v1 = *(v0 + 176);
  v7[6] = *(v0 + 160);
  v7[7] = v1;
  v7[8] = *(v0 + 192);
  v8 = *(v0 + 208);
  v2 = *(v0 + 112);
  v7[2] = *(v0 + 96);
  v7[3] = v2;
  v3 = *(v0 + 144);
  v7[4] = *(v0 + 128);
  v7[5] = v3;
  v4 = *(v0 + 80);
  v7[0] = *(v0 + 64);
  v7[1] = v4;
  v5 = sub_68BD4(v7) != 1;
  return v5 & HIBYTE(v8);
}

double sub_63060@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v11 = sub_1157A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44 = 0;
  BYTE8(v44) = 1;
  sub_68BEC(v58);
  v54 = v58[6];
  v55 = v58[7];
  v56 = v58[8];
  v57 = v59;
  v50 = v58[2];
  v51 = v58[3];
  v52 = v58[4];
  v53 = v58[5];
  v48 = v58[0];
  v49 = v58[1];
  *&v46 = a1;
  BYTE8(v46) = a2 & 1;
  *&v47 = a3;
  BYTE8(v47) = a4 & 1;
  sub_68CFC(v25, &v48, &qword_1835F0, &unk_12B240);
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  sub_115790();
  v15 = sub_115770();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v60._countAndFlagsBits = v15;
  v60._object = v17;
  sub_117220(v60);

  sub_117430();
  sub_117430();
  v45 = v43;
  v37 = v54;
  v38 = v55;
  v39 = v56;
  v33 = v50;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v29 = v46;
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v27 = v44;
  v28 = v43;
  v41[10] = v54;
  v41[11] = v55;
  v41[12] = v56;
  v41[6] = v50;
  v41[7] = v51;
  v41[8] = v52;
  v41[9] = v53;
  v41[2] = v46;
  v41[3] = v47;
  v41[4] = v48;
  v41[5] = v49;
  v40 = v57;
  v42 = v57;
  v41[0] = v44;
  v41[1] = v43;
  sub_68C0C(&v27, &v26);
  sub_68C44(v41);
  v18 = v38;
  *(a6 + 160) = v37;
  *(a6 + 176) = v18;
  *(a6 + 192) = v39;
  *(a6 + 208) = v40;
  v19 = v34;
  *(a6 + 96) = v33;
  *(a6 + 112) = v19;
  v20 = v36;
  *(a6 + 128) = v35;
  *(a6 + 144) = v20;
  v21 = v30;
  *(a6 + 32) = v29;
  *(a6 + 48) = v21;
  v22 = v32;
  *(a6 + 64) = v31;
  *(a6 + 80) = v22;
  result = *&v27;
  v24 = v28;
  *a6 = v27;
  *(a6 + 16) = v24;
  return result;
}

uint64_t sub_63378(uint64_t a1, char a2)
{
  v5 = *(v2 + 176);
  v11[6] = *(v2 + 160);
  v11[7] = v5;
  v11[8] = *(v2 + 192);
  v12 = *(v2 + 208);
  v6 = *(v2 + 112);
  v11[2] = *(v2 + 96);
  v11[3] = v6;
  v7 = *(v2 + 144);
  v11[4] = *(v2 + 128);
  v11[5] = v7;
  v8 = *(v2 + 80);
  v11[0] = *(v2 + 64);
  v11[1] = v8;
  result = sub_68BD4(v11);
  if (result != 1)
  {
    v10 = *&a1;
    if (a2)
    {
      v10 = 0.0;
    }

    *(v2 + 168) = v10;
  }

  return result;
}

uint64_t (*sub_63400(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x148uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 320) = v1;
  v5 = *(v1 + 80);
  *v3 = *(v1 + 64);
  *(v3 + 16) = v5;
  v6 = *(v1 + 96);
  v7 = *(v1 + 112);
  v8 = *(v1 + 144);
  *(v3 + 64) = *(v1 + 128);
  *(v3 + 80) = v8;
  *(v3 + 32) = v6;
  *(v3 + 48) = v7;
  v9 = *(v1 + 160);
  v10 = *(v1 + 176);
  v11 = *(v1 + 192);
  *(v3 + 144) = *(v1 + 208);
  *(v3 + 112) = v10;
  *(v3 + 128) = v11;
  *(v3 + 96) = v9;
  v12 = sub_68BD4(v3);
  v13 = *(v4 + 104);
  if (v12 == 1)
  {
    v13 = 0;
  }

  *(v4 + 304) = v13;
  *(v4 + 312) = v12 == 1;
  return sub_6BE68;
}

void sub_634BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 152;
  v3 = *(v1 + 320);
  v4 = *(v1 + 304);
  v5 = *(v1 + 312);
  v6 = *(v3 + 80);
  *(v1 + 152) = *(v3 + 64);
  *(v1 + 168) = v6;
  v7 = *(v3 + 128);
  v8 = *(v3 + 144);
  v9 = *(v3 + 112);
  *(v1 + 184) = *(v3 + 96);
  *(v1 + 232) = v8;
  *(v1 + 216) = v7;
  *(v1 + 200) = v9;
  v11 = *(v3 + 176);
  v10 = *(v3 + 192);
  v12 = *(v3 + 208);
  *(v1 + 248) = *(v3 + 160);
  *(v1 + 296) = v12;
  *(v2 + 112) = v11;
  *(v2 + 128) = v10;
  if (sub_68BD4(v2) != 1)
  {
    v13 = 0.0;
    if (!v5)
    {
      v13 = v4;
    }

    *(*(v1 + 320) + 168) = v13;
  }

  free(v1);
}

uint64_t sub_6356C()
{
  v1 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = v1;
  v12 = *(v0 + 192);
  v13 = *(v0 + 208);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v7 = v2;
  v3 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  if (sub_68BD4(v6) == 1)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_635D0()
{
  v1 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = v1;
  v12 = *(v0 + 192);
  v13 = *(v0 + 208);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v7 = v2;
  v3 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  if (sub_68BD4(v6) == 1)
  {
    return 0;
  }

  else
  {
    return *(&v7 + 1);
  }
}

uint64_t sub_63634()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_6367C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

BOOL sub_63688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v15[12] = *(a1 + 192);
  v16 = *(a1 + 208);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v17[12] = *(a2 + 192);
  v18 = *(a2 + 208);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return sub_66FC0(v15, v17);
}

uint64_t sub_6373C()
{
  if (*(v0 + 80))
  {
    return *(v0 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_63764()
{
  if (*(v0 + 80))
  {
    return *(v0 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_63788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 80))
  {
    v4 = *(v3 + 104) == 5;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    sub_66F20(a1, a2, a3);
    v5 = sub_117160();
  }

  return v5 & 1;
}

uint64_t sub_637F8()
{
  if (*(v0 + 80))
  {
  }

  else
  {
    return 0;
  }
}

void sub_63828()
{
  v1 = v0;
  v2 = sub_115760();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 10) && (v1[40] & 1) == 0)
  {
    v7 = v4;
    LODWORD(v1) = v1[104];
    sub_115700();
    v8 = sub_E639C();
    if (v8 == 7)
    {
      (*(v3 + 8))(v6, v7);
      return;
    }

    v9 = v8;
    if (v1 <= 2)
    {
      if (v1 < 2)
      {
        goto LABEL_14;
      }

      sub_E622C(0xD000000000000030, 0x8000000000134CF0, v8);
      v10 = sub_117170();

      v1 = BatteryUILocalization(v10);

      if (v1)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    if (v1 == 3)
    {
      sub_E622C(0xD00000000000002ELL, 0x8000000000134CC0, v9);
      v12 = sub_117170();

      v1 = BatteryUILocalization(v12);

      if (!v1)
      {
        __break(1u);
        return;
      }

      goto LABEL_16;
    }

    if (v1 == 4)
    {
      sub_E622C(0xD000000000000030, 0x8000000000134C80, v9);
      v11 = sub_117170();

      v1 = BatteryUILocalization(v11);

      if (!v1)
      {
        __break(1u);
        goto LABEL_14;
      }

LABEL_16:
      sub_1171B0();

      sub_46F9C(&qword_182EF8, &unk_125990);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_124890;
      v14 = sub_E6648();
      v16 = v15;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_53EE8(v14, v15, v17);
      *(v13 + 32) = v14;
      *(v13 + 40) = v16;
      sub_117180();

      (*(v3 + 8))(v6, v7);
      return;
    }

LABEL_14:
    (*(v3 + 8))(v6, v7, v9);
  }
}

void sub_63B20()
{
  v1 = v0;
  v2 = sub_115760();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_8D8B4()[2];
  sub_115750();
  isa = sub_1156B0().super.isa;
  (*(v3 + 8))(v5, v2);
  v8 = [v6 stringFromDate:isa];

  v9 = sub_1171B0();
  v11 = v10;

  if (!*(v1 + 80))
  {
    goto LABEL_10;
  }

  v12 = *(v1 + 104);
  if (v12 <= 2)
  {
    if (v12 < 2)
    {
      goto LABEL_10;
    }

    v13 = sub_117170();
    v14 = BatteryUILocalization(v13);

    if (v14)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v15 = sub_117170();
      v14 = BatteryUILocalization(v15);

      if (!v14)
      {
        __break(1u);
        goto LABEL_10;
      }

      goto LABEL_12;
    }

LABEL_10:

    return;
  }

  v16 = sub_117170();
  v14 = BatteryUILocalization(v16);

  if (v14)
  {
LABEL_12:
    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_124890;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_53EE8(v17, v18, v19);
    *(v17 + 32) = v9;
    *(v17 + 40) = v11;
    sub_117180();

    return;
  }

  __break(1u);
}

double sub_63DC8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v39 = a2;
  v5 = sub_1157A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 1;
  memset(v73, 0, 113);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[3];
  v37 = a1[2];
  v38 = v9;
  v12 = a1[5];
  v35 = a1[4];
  v36 = v11;
  v13 = a1[7];
  v33 = a1[6];
  v34 = v12;
  v14 = a1[9];
  v31 = a1[8];
  v32 = v13;
  v15 = a1[11];
  v29 = a1[10];
  v30 = v14;
  v16 = a1[13];
  v27 = a1[12];
  v28 = v15;
  v26 = v16;
  HIDWORD(v25) = *(a1 + 112);
  sub_479B4(a1, &v50, &qword_1835C8, &qword_1259C0);
  sub_488C8(v73, &qword_1835C8, &qword_1259C0);
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_115790();
  v17 = sub_115770();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v74._countAndFlagsBits = v17;
  v74._object = v19;
  sub_117220(v74);

  sub_117430();
  if (a1[8])
  {
    sub_488C8(a1, &qword_1835C8, &qword_1259C0);
  }

  sub_117430();
  v41 = v70;
  *&v42 = v10;
  *(&v42 + 1) = v38;
  *&v43 = v37;
  *(&v43 + 1) = v36;
  *&v44 = v35;
  *(&v44 + 1) = v34;
  *&v45 = v33;
  *(&v45 + 1) = v32;
  *&v46 = v31;
  *(&v46 + 1) = v30;
  *&v47 = v29;
  *(&v47 + 1) = v28;
  *&v48 = v27;
  *(&v48 + 1) = v26;
  LOBYTE(v49[0]) = BYTE4(v25);
  *(v49 + 1) = *v72;
  DWORD1(v49[0]) = *&v72[3];
  *(&v49[0] + 1) = v39;
  *&v49[1] = 0;
  BYTE8(v49[1]) = v71;
  v50 = v70;
  v51 = v10;
  v52 = v38;
  v53 = v37;
  v54 = v36;
  v55 = v35;
  v56 = v34;
  v57 = v33;
  v58 = v32;
  v59 = v31;
  v60 = v30;
  v61 = v29;
  v62 = v28;
  v63 = v27;
  v64 = v26;
  v65 = BYTE4(v25);
  *v66 = *v72;
  *&v66[3] = *&v72[3];
  v67 = v39;
  v68 = 0;
  v69 = v71;
  sub_68C74(&v41, &v40);
  sub_68CAC(&v50);
  v20 = v48;
  a3[6] = v47;
  a3[7] = v20;
  a3[8] = v49[0];
  *(a3 + 137) = *(v49 + 9);
  v21 = v44;
  a3[2] = v43;
  a3[3] = v21;
  v22 = v46;
  a3[4] = v45;
  a3[5] = v22;
  result = *&v41;
  v24 = v42;
  *a3 = v41;
  a3[1] = v24;
  return result;
}

uint64_t sub_64150()
{
  if (*(v0 + 80))
  {
    return *(v0 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_64164(uint64_t result, char a2)
{
  if (*(v2 + 80))
  {
    v3 = *&result;
    if (a2)
    {
      v3 = 0.0;
    }

    *(v2 + 72) = v3;
  }

  return result;
}

uint64_t (*sub_64184(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) == 0;
  if (!*(v1 + 80))
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_6BE6C;
}

uint64_t sub_641C0(uint64_t result)
{
  v1 = *(result + 16);
  if (*(v1 + 80))
  {
    v2 = *result;
    if (*(result + 8))
    {
      v2 = 0.0;
    }

    *(v1 + 72) = v2;
  }

  return result;
}

uint64_t sub_641E8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_64218()
{
  if (*(v0 + 80))
  {
    return *(v0 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6423C()
{
  if (*(v0 + 80))
  {
    return *(v0 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_64260@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL sub_6426C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v12[0] = a1[8];
  *(v12 + 9) = *(a1 + 137);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v13[7] = v6;
  v14[0] = a2[8];
  *(v14 + 9) = *(a2 + 137);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return sub_64304(v11, v13);
}

BOOL sub_64304(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1179E0() & 1) == 0)
  {
    return 0;
  }

  if (!*(a1 + 10))
  {
    v5 = 0.0;
    if (*(a2 + 80))
    {
      if ((*(a2 + 40) & 1) == 0 || (*(a2 + 56) & 1) == 0)
      {
        return 0;
      }

      v6 = *(a2 + 72);
    }

    else
    {
      v6 = 0.0;
    }

    return v5 == v6;
  }

  v5 = a1[9];
  if (!*(a2 + 80))
  {
    if ((a1[5] & 1) == 0)
    {
      return 0;
    }

    v6 = 0.0;
    if ((a1[7] & 1) == 0)
    {
      return 0;
    }

    return v5 == v6;
  }

  v6 = *(a2 + 72);
  if (a1[5])
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 40) & 1) != 0 || a1[4] != *(a2 + 32))
    {
      return result;
    }
  }

  if (a1[7])
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }

    return v5 == v6;
  }

  result = 0;
  if ((*(a2 + 56) & 1) == 0 && a1[6] == *(a2 + 48))
  {
    return v5 == v6;
  }

  return result;
}

uint64_t sub_64404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_117620();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = *(a3 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6, v12);
  if ((*(v10 + 48))(v9, 1, a3) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v15 = 0;
  }

  else
  {
    (*(v10 + 32))(v14, v9, a3);
    v15 = sub_117160();
    (*(v10 + 8))(v14, a3);
  }

  return v15 & 1;
}

uint64_t sub_645F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = sub_115760();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = *v1;
  if (v16 > 6)
  {
    if (v16 != 7)
    {
      if (v16 == 8 && (v1[8] & 1) == 0)
      {
        v22 = *(v1 + 1);
        *a1 = 8;
        *(a1 + 8) = v22;
        type metadata accessor for ChargingState.State(0);
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    v21 = type metadata accessor for ChargingState(0);
    sub_479B4(v1 + *(v21 + 28), v5, &qword_182EF0, &unk_124BB0);
    if ((*(v10 + 48))(v5, 1, v9) != 1)
    {
      v26 = *(v10 + 32);
      v26(v12, v5, v9);
      v27 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
      *a1 = 7;
      v26((a1 + v27), v12, v9);
      (*(v10 + 56))(a1 + v27, 0, 1, v9);
      goto LABEL_20;
    }

    sub_488C8(v5, &qword_182EF0, &unk_124BB0);
    v19 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
    v20 = 7;
    goto LABEL_13;
  }

  if (v16 == 2)
  {
    v18 = type metadata accessor for ChargingState(0);
    sub_479B4(v1 + *(v18 + 24), v8, &qword_182EF0, &unk_124BB0);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v24 = *(v10 + 32);
      v24(v15, v8, v9);
      v25 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
      *a1 = 2;
      v24((a1 + v25), v15, v9);
      (*(v10 + 56))(a1 + v25, 0, 1, v9);
      goto LABEL_20;
    }

    sub_488C8(v8, &qword_182EF0, &unk_124BB0);
    v19 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
    v20 = 2;
LABEL_13:
    *a1 = v20;
    (*(v10 + 56))(a1 + v19, 1, 1, v9);
LABEL_20:
    type metadata accessor for ChargingState.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v16 != 3)
  {
LABEL_8:
    *a1 = v16;
    type metadata accessor for ChargingState.State(0);
    goto LABEL_15;
  }

  v17 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
  *a1 = 3;
  (*(v10 + 56))(a1 + v17, 1, 1, v9);
  type metadata accessor for ChargingState.State(0);
LABEL_15:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_64A5C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for ChargingState(0);
  v12 = *(v11 + 24);
  v13 = sub_115760();
  v14 = *(*(v13 - 8) + 56);
  v14(a6 + v12, 1, 1, v13);
  v15 = *(v11 + 28);
  v14(a6 + v15, 1, 1, v13);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  sub_68CFC(a4, a6 + v12, &qword_182EF0, &unk_124BB0);
  return sub_68CFC(a5, a6 + v15, &qword_182EF0, &unk_124BB0);
}

Swift::Int sub_64B98()
{
  v1 = *v0;
  sub_117A90();
  sub_117AA0(qword_127108[v1]);
  return sub_117AD0();
}

Swift::Int sub_64C20(uint64_t a1)
{
  v2 = *v1;
  sub_117A90();
  sub_117AA0(qword_127108[v2]);
  return sub_117AD0();
}

uint64_t sub_64C6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_68DBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_64D10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_543D8(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_65BD8(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_117800();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_488C8(a1, &qword_183828, &qword_126910);
    sub_654A8(a2, v9);
    v7 = sub_117800();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_488C8(v9, &qword_183828, &qword_126910);
  }

  return result;
}

unint64_t sub_64E3C(uint64_t a1)
{
  v1 = a1;
  sub_117A90();
  sub_117AA0(v1);
  v2 = sub_117AD0();
  return sub_64F80(v1, v2);
}

unint64_t sub_64EA4(uint64_t a1)
{
  sub_117800();
  v2 = sub_1170C0();

  return sub_64FF0(a1, v2);
}

unint64_t sub_64F08(uint64_t a1, uint64_t a2)
{
  sub_117A90();
  sub_117200();
  v4 = sub_117AD0();

  return sub_65188(a1, a2, v4);
}

unint64_t sub_64F80(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_64FF0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_117800();
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = sub_117160();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_65188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1179E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_65240(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_65280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_65260(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_65374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_65280(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_46F9C(&qword_183898, &qword_12B270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_65374(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_46F9C(&qword_183838, &unk_126920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_46F9C(&qword_182FC8, &qword_124DD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_654A8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_64EA4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_65E70();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_117800();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_543D8((*(v9 + 56) + 32 * v7), a2);
    sub_65924(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_65584(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_117800();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_46F9C(&qword_183830, &qword_126918);
  v39 = v4;
  result = sub_117860();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_543D8((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_6AD00(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_1170C0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_543D8(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_65924(int64_t a1, uint64_t a2)
{
  v4 = sub_117800();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_117690();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = sub_1170C0();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

_OWORD *sub_65BD8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_117800();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_64EA4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_65E70();
      goto LABEL_7;
    }

    sub_65584(v17, a3 & 1);
    v23 = sub_64EA4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_65DB0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_117A40();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  sub_6ACB4(v21);

  return sub_543D8(a1, v21);
}

_OWORD *sub_65DB0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_117800();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_543D8(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_65E70()
{
  v1 = v0;
  v26 = sub_117800();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_46F9C(&qword_183830, &qword_126918);
  v3 = *v0;
  v4 = sub_117850();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_6AD00(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_543D8(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_66108(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_46F9C(&qword_183820, &qword_126908);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_66228(void *a1)
{
  v2 = sub_46F9C(&qword_1838D0, &qword_126978);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  v6 = sub_66DE0(a1, a1[3]);
  sub_6B2B8(v6, v7, v8);
  sub_117AF0();
  v14 = 0;
  sub_117910();
  v13 = 1;
  sub_117900();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  sub_6ACB4(a1);
  return v10;
}

unint64_t sub_663D4(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_663E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_46F9C(&qword_1838C8, &qword_126970);
    v3 = sub_117870();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_64E3C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_664C4(unint64_t result)
{
  if (result >= 0x1A)
  {
    return 26;
  }

  return result;
}

unint64_t sub_664D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_165CB8;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_66520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = sub_46F9C(&qword_1838A8, &qword_126968);
  v5 = *(v87 - 8);
  __chkstk_darwin(v87);
  v7 = &v42 - v6;
  v8 = sub_66DE0(a1, a1[3]);
  sub_66E24(v8, v9, v10);
  v11 = sub_117AF0();
  if (v2)
  {
    sub_6ACB4(a1);
  }

  else
  {
    v53 = v5;
    LOBYTE(v54) = 0;
    sub_6B160(v11, v12, v13);
    sub_1178E0();
    v14 = LOBYTE(v64[0]);
    sub_46F9C(&qword_183598, &unk_1259B0);
    LOBYTE(v54) = 1;
    sub_6B1B4(&qword_1838B8, sub_6B22C, &protocol conformance descriptor for <A> [A]);
    sub_1178E0();
    v50 = v14;
    v16 = v64[0];
    LOBYTE(v64[0]) = 2;
    v49 = sub_1178F0();
    v52 = v17;
    LOBYTE(v64[0]) = 3;
    v48 = sub_1178A0();
    v51 = v18;
    LOBYTE(v64[0]) = 4;
    v19 = COERCE_DOUBLE(sub_1178C0());
    if (v20)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v19;
    }

    LOBYTE(v64[0]) = 6;
    v22 = COERCE_DOUBLE(sub_1178C0());
    if (v23)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v22;
    }

    LOBYTE(v64[0]) = 5;
    v47 = sub_1178C0();
    v85 = v25 & 1;
    LOBYTE(v64[0]) = 7;
    v46 = sub_1178C0();
    v83 = v26 & 1;
    LOBYTE(v64[0]) = 8;
    sub_117900();
    v28 = v27;
    LOBYTE(v64[0]) = 9;
    sub_117900();
    v30 = v29;
    LOBYTE(v64[0]) = 10;
    v31 = sub_1178D0();
    v81 = v32 & 1;
    sub_46F9C(&qword_1835B0, &qword_127DA0);
    LOBYTE(v54) = 11;
    sub_6B08C(&qword_183890, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
    sub_1178E0();
    v33 = v64[0];
    LOBYTE(v64[0]) = 12;
    v45 = sub_1178C0();
    v79 = v34 & 1;
    LOBYTE(v64[0]) = 13;
    v35 = sub_1178B0();
    (*(v53 + 8))(v7, v87);
    LODWORD(v87) = v35 & 1;
    v36 = v50;
    LOBYTE(v54) = v50;
    v37 = v49;
    *(&v54 + 1) = v16;
    *&v55 = v49;
    *(&v55 + 1) = v52;
    *&v56 = v48;
    *(&v56 + 1) = v51;
    *&v57 = v21;
    *(&v57 + 1) = v24;
    *&v58 = v47;
    HIDWORD(v42) = v85;
    BYTE8(v58) = v85;
    *&v59 = v46;
    v43 = v83;
    BYTE8(v59) = v83;
    *&v60 = v28;
    *(&v60 + 1) = v30;
    *&v61 = v31;
    v44 = v81;
    BYTE8(v61) = v81;
    *&v62 = v33;
    *(&v62 + 1) = v45;
    LODWORD(v53) = v79;
    LOBYTE(v63) = v79;
    HIBYTE(v63) = v87;
    sub_6B280(&v54, v64);
    sub_6ACB4(a1);
    LOBYTE(v64[0]) = v36;
    *(v64 + 1) = v86[0];
    HIDWORD(v64[0]) = *(v86 + 3);
    v64[1] = v16;
    v64[2] = v37;
    v64[3] = v52;
    v64[4] = v48;
    v64[5] = v51;
    *&v64[6] = v21;
    *&v64[7] = v24;
    v64[8] = v47;
    v65 = BYTE4(v42);
    *v66 = *v84;
    *&v66[3] = *&v84[3];
    v67 = v46;
    v68 = v43;
    *v69 = *v82;
    *&v69[3] = *&v82[3];
    v70 = v28;
    v71 = v30;
    v72 = v31;
    v73 = v44;
    *v74 = *v80;
    *&v74[3] = *&v80[3];
    v75 = v33;
    v76 = v45;
    v77 = v53;
    v78 = v87;
    result = sub_6AAAC(v64);
    v38 = v61;
    *(a2 + 96) = v60;
    *(a2 + 112) = v38;
    *(a2 + 128) = v62;
    *(a2 + 144) = v63;
    v39 = v57;
    *(a2 + 32) = v56;
    *(a2 + 48) = v39;
    v40 = v59;
    *(a2 + 64) = v58;
    *(a2 + 80) = v40;
    v41 = v55;
    *a2 = v54;
    *(a2 + 16) = v41;
  }

  return result;
}

unint64_t sub_66C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183568;
  if (!qword_183568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183568);
  }

  return result;
}

unint64_t sub_66CD4()
{
  result = qword_183570;
  if (!qword_183570)
  {
    sub_47A1C(&qword_183560, &qword_129070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183570);
  }

  return result;
}

unint64_t sub_66D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183578;
  if (!qword_183578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183578);
  }

  return result;
}

uint64_t sub_66D8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_66DE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_66E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_188E70[0];
  if (!qword_188E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_188E70);
  }

  return result;
}

unint64_t sub_66E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183590;
  if (!qword_183590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183590);
  }

  return result;
}

unint64_t sub_66ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1835A8;
  if (!qword_1835A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1835A8);
  }

  return result;
}

unint64_t sub_66F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1835C0;
  if (!qword_1835C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1835C0);
  }

  return result;
}

unint64_t sub_66F74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_165E28;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

BOOL sub_66FC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    v5 = a1;
    v6 = sub_1179E0();
    a1 = v5;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  v8 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a1 + 176);
  v10 = *(a1 + 144);
  v116 = *(a1 + 160);
  v117 = v9;
  v11 = *(a1 + 176);
  v118 = *(a1 + 192);
  v12 = *(a1 + 112);
  v13 = *(a1 + 80);
  v112 = *(a1 + 96);
  v113 = v12;
  v14 = *(a1 + 112);
  v15 = *(a1 + 144);
  v114 = *(a1 + 128);
  v115 = v15;
  v16 = *(a1 + 80);
  v111[0] = *(a1 + 64);
  v111[1] = v16;
  v17 = *(a2 + 176);
  v18 = *(a2 + 144);
  v107 = *(a2 + 160);
  v108 = v17;
  v19 = *(a2 + 176);
  v109 = *(a2 + 192);
  v20 = *(a2 + 112);
  v21 = *(a2 + 80);
  v103 = *(a2 + 96);
  v104 = v20;
  v22 = *(a2 + 112);
  v23 = *(a2 + 144);
  v105 = *(a2 + 128);
  v106 = v23;
  v24 = *(a2 + 80);
  v102[0] = *(a2 + 64);
  v102[1] = v24;
  v25 = *(a1 + 176);
  __src[6] = *(a1 + 160);
  __src[7] = v25;
  __src[8] = *(a1 + 192);
  v26 = *(a1 + 112);
  __src[2] = *(a1 + 96);
  __src[3] = v26;
  v27 = *(a1 + 144);
  __src[4] = *(a1 + 128);
  __src[5] = v27;
  v28 = *(a1 + 80);
  __src[0] = *(a1 + 64);
  __src[1] = v28;
  v29 = *(a2 + 192);
  *(&__src[16] + 8) = v19;
  *(&__src[17] + 8) = v29;
  *(&__src[15] + 8) = v107;
  *(&__src[11] + 8) = v103;
  *(&__src[12] + 8) = v22;
  *(&__src[13] + 8) = v105;
  *(&__src[14] + 8) = v18;
  *(&__src[9] + 8) = v102[0];
  *(&__src[10] + 8) = v21;
  v100[6] = v116;
  v100[7] = v11;
  v100[8] = *(a1 + 192);
  v100[2] = v112;
  v100[3] = v14;
  v100[4] = v114;
  v100[5] = v10;
  v119 = *(a1 + 208);
  v110 = *(a2 + 208);
  LOWORD(__src[9]) = *(a1 + 208);
  WORD4(__src[18]) = *(a2 + 208);
  v30 = a1;
  v101 = *(a1 + 208);
  v100[0] = v111[0];
  v100[1] = v13;
  if (sub_68BD4(v100) != 1)
  {
    v39 = *(v30 + 176);
    v40 = *(v30 + 144);
    v95 = *(v30 + 160);
    v96 = v39;
    v41 = *(v30 + 176);
    v97 = *(v30 + 192);
    v42 = *(v30 + 112);
    v43 = *(v30 + 80);
    v91 = *(v30 + 96);
    v92 = v42;
    v44 = *(v30 + 112);
    v45 = *(v30 + 144);
    v93 = *(v30 + 128);
    v94 = v45;
    v46 = *(v30 + 80);
    v89 = *(v30 + 64);
    v90 = v46;
    v84 = v95;
    v85 = v41;
    v86 = *(v30 + 192);
    v80 = v91;
    v81 = v44;
    v82 = v93;
    v83 = v40;
    v98 = *(v30 + 208);
    v87 = *(v30 + 208);
    v78 = v89;
    v79 = v43;
    v47 = *(a2 + 176);
    __dst[6] = *(a2 + 160);
    __dst[7] = v47;
    __dst[8] = *(a2 + 192);
    LOWORD(__dst[9]) = *(a2 + 208);
    v48 = *(a2 + 112);
    __dst[2] = *(a2 + 96);
    __dst[3] = v48;
    v49 = *(a2 + 144);
    __dst[4] = *(a2 + 128);
    __dst[5] = v49;
    v50 = *(a2 + 80);
    __dst[0] = *(a2 + 64);
    __dst[1] = v50;
    if (sub_68BD4(__dst) == 1)
    {
      v74 = v84;
      v75 = v85;
      v76 = v86;
      v77 = v87;
      v70 = v80;
      v71 = v81;
      v72 = v82;
      v73 = v83;
      v68 = v78;
      v69 = v79;
      sub_479B4(v111, v66, &qword_1835F0, &unk_12B240);
      sub_479B4(v102, v66, &qword_1835F0, &unk_12B240);
      sub_479B4(&v89, v66, &qword_1835F0, &unk_12B240);
      sub_6AAAC(&v68);
LABEL_30:
      memcpy(__dst, __src, 0x12AuLL);
      sub_488C8(__dst, &qword_1837E0, &qword_1268E0);
      return 0;
    }

    v52 = *(a2 + 176);
    v74 = *(a2 + 160);
    v75 = v52;
    v76 = *(a2 + 192);
    v77 = *(a2 + 208);
    v53 = *(a2 + 112);
    v70 = *(a2 + 96);
    v71 = v53;
    v54 = *(a2 + 144);
    v72 = *(a2 + 128);
    v73 = v54;
    v55 = *(a2 + 80);
    v68 = *(a2 + 64);
    v69 = v55;
    sub_479B4(v111, v66, &qword_1835F0, &unk_12B240);
    sub_479B4(v102, v66, &qword_1835F0, &unk_12B240);
    v56 = sub_479B4(&v89, v66, &qword_1835F0, &unk_12B240);
    sub_690C0(v56, v57, v58);
    v59 = sub_117160();
    v64[6] = v74;
    v64[7] = v75;
    v64[8] = v76;
    v65 = v77;
    v64[2] = v70;
    v64[3] = v71;
    v64[4] = v72;
    v64[5] = v73;
    v64[0] = v68;
    v64[1] = v69;
    sub_6AAAC(v64);
    v66[6] = v84;
    v66[7] = v85;
    v66[8] = v86;
    v67 = v87;
    v66[2] = v80;
    v66[3] = v81;
    v66[4] = v82;
    v66[5] = v83;
    v66[0] = v78;
    v66[1] = v79;
    sub_6AAAC(v66);
    v60 = *(v30 + 176);
    v74 = *(v30 + 160);
    v75 = v60;
    v76 = *(v30 + 192);
    v77 = *(v30 + 208);
    v61 = *(v30 + 112);
    v70 = *(v30 + 96);
    v71 = v61;
    v62 = *(v30 + 144);
    v72 = *(v30 + 128);
    v73 = v62;
    v63 = *(v30 + 80);
    v68 = *(v30 + 64);
    v69 = v63;
    sub_488C8(&v68, &qword_1835F0, &unk_12B240);
    return (v59 & 1) != 0;
  }

  v31 = *(a2 + 176);
  __dst[6] = *(a2 + 160);
  __dst[7] = v31;
  __dst[8] = *(a2 + 192);
  LOWORD(__dst[9]) = *(a2 + 208);
  v32 = *(a2 + 112);
  __dst[2] = *(a2 + 96);
  __dst[3] = v32;
  v33 = *(a2 + 144);
  __dst[4] = *(a2 + 128);
  __dst[5] = v33;
  v34 = *(a2 + 80);
  __dst[0] = *(a2 + 64);
  __dst[1] = v34;
  if (sub_68BD4(__dst) != 1)
  {
    sub_479B4(v111, &v89, &qword_1835F0, &unk_12B240);
    sub_479B4(v102, &v89, &qword_1835F0, &unk_12B240);
    goto LABEL_30;
  }

  v35 = *(v30 + 176);
  v95 = *(v30 + 160);
  v96 = v35;
  v97 = *(v30 + 192);
  v98 = *(v30 + 208);
  v36 = *(v30 + 112);
  v91 = *(v30 + 96);
  v92 = v36;
  v37 = *(v30 + 144);
  v93 = *(v30 + 128);
  v94 = v37;
  v38 = *(v30 + 80);
  v89 = *(v30 + 64);
  v90 = v38;
  sub_479B4(v111, &v78, &qword_1835F0, &unk_12B240);
  sub_479B4(v102, &v78, &qword_1835F0, &unk_12B240);
  sub_488C8(&v89, &qword_1835F0, &unk_12B240);
  return 1;
}

uint64_t sub_67598@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = sub_46F9C(&qword_183858, &qword_126940);
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = &v34 - v6;
  v8 = sub_66DE0(a1, a1[3]);
  sub_6AE88(v8, v9, v10);
  sub_117AF0();
  if (v2)
  {
    return sub_6ACB4(a1);
  }

  v11 = v5;
  LOBYTE(v53[0]) = 0;
  sub_117900();
  v13 = v12;
  LOBYTE(v53[0]) = 1;
  v14 = sub_1178C0();
  v69 = v15 & 1;
  LOBYTE(v53[0]) = 2;
  v43 = sub_1178C0();
  v68 = v16 & 1;
  LOBYTE(v53[0]) = 3;
  v42 = sub_117910();
  LOBYTE(v53[0]) = 4;
  sub_117900();
  v18 = v17;
  LOBYTE(v53[0]) = 5;
  sub_117900();
  v20 = v19;
  sub_46F9C(&qword_183860, &qword_126948);
  LOBYTE(v45) = 6;
  sub_6AEDC();
  sub_117920();
  v21 = v53[0];
  sub_46F9C(&qword_183878, &unk_126950);
  LOBYTE(v45) = 7;
  sub_6AFBC();
  v22 = sub_117920();
  v41 = v53[0];
  LOBYTE(v45) = 8;
  sub_6B038(v22, v23, v24);
  v40 = 0;
  sub_1178E0();
  v39 = LOBYTE(v53[0]);
  sub_46F9C(&qword_1835B0, &qword_127DA0);
  LOBYTE(v45) = 9;
  sub_6B08C(&qword_183890, &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
  sub_1178E0();
  v40 = v53[0];
  v66 = 10;
  v38 = sub_1178D0();
  v26 = v25;
  (*(v11 + 8))(v7, v44);
  v67 = v26 & 1;
  *&v45 = v13;
  *(&v45 + 1) = v18;
  v37 = v14;
  *&v46 = v14;
  LODWORD(v44) = v69;
  BYTE8(v46) = v69;
  *&v47 = v43;
  v35 = v26 & 1;
  v36 = v68;
  BYTE8(v47) = v68;
  v27 = v41;
  *&v48 = v42;
  *(&v48 + 1) = v20;
  *&v49 = v21;
  *(&v49 + 1) = v41;
  *&v50 = 0;
  LOBYTE(v11) = v39;
  BYTE8(v50) = v39;
  v28 = v40;
  v29 = v38;
  *&v51 = v40;
  *(&v51 + 1) = v38;
  v52 = v35;
  sub_6B0F8(&v45, v53);
  sub_6ACB4(a1);
  v53[0] = v13;
  v53[1] = v18;
  v53[2] = v37;
  v54 = v44;
  v55 = v43;
  v56 = v36;
  v57 = v42;
  v58 = v20;
  v59 = v21;
  v60 = v27;
  v61 = 0;
  v62 = v11;
  v63 = v28;
  v64 = v29;
  v65 = v35;
  result = sub_6B130(v53);
  v31 = v50;
  *(a2 + 64) = v49;
  *(a2 + 80) = v31;
  *(a2 + 96) = v51;
  *(a2 + 112) = v52;
  v32 = v46;
  *a2 = v45;
  *(a2 + 16) = v32;
  v33 = v48;
  *(a2 + 32) = v47;
  *(a2 + 48) = v33;
  return result;
}

uint64_t sub_67B58(void *a1)
{
  v3 = sub_46F9C(&qword_183848, &qword_126938);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-v5];
  v7 = a1[3];
  v8 = sub_66DE0(a1, v7);
  sub_6ADE0(v8, v9, v10);
  sub_117AF0();
  if (!v1)
  {
    v14[15] = 0;
    v7 = sub_1178C0();
    v14[13] = 1;
    sub_6AE34(v7, v11, v12);
    sub_1178E0();
    (*(v4 + 8))(v6, v3);
  }

  sub_6ACB4(a1);
  return v7;
}

unint64_t sub_67D20(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_165FA0;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

void *sub_67D6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_46F9C(&qword_183840, &qword_126930);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v26 = a1;
  v10 = sub_66DE0(a1, v9);
  sub_6AD5C(v10, v11, v12);
  sub_117AF0();
  if (v2)
  {
    sub_6ACB4(v26);
  }

  else
  {
    v13 = v6;
    v25 = a2;
    LOBYTE(v28) = 0;
    v14 = v5;
    v15 = sub_117900();
    v17 = v16;
    v59 = 1;
    sub_6AC5C(v15, v18, v19);
    sub_1178E0();
    v20 = v13;
    v80 = v64;
    v81 = v65;
    v82 = v66;
    v83 = v67;
    v76 = v60;
    v77 = v61;
    v78 = v62;
    v79 = v63;
    v50 = 2;
    sub_1178E0();
    v72 = v55;
    v73 = v56;
    v74 = v57;
    v75 = v58;
    v68 = v51;
    v69 = v52;
    v70 = v53;
    v71 = v54;
    sub_46F9C(&qword_183800, &qword_1268F8);
    LOBYTE(v27[0]) = 3;
    sub_6ABD8();
    sub_1178E0();
    v21 = v28;
    LOBYTE(v27[0]) = 4;
    sub_1178E0();
    v22 = v28;
    v48 = 5;
    sub_1178E0();
    (*(v20 + 8))(v8, v14);
    *&v27[9] = v80;
    *&v27[11] = v81;
    *&v27[13] = v82;
    *&v27[1] = v76;
    *&v27[3] = v77;
    *&v27[5] = v78;
    *&v27[7] = v79;
    *&v27[23] = v71;
    *&v27[21] = v70;
    *&v27[19] = v69;
    *&v27[17] = v68;
    *&v27[29] = v74;
    *&v27[27] = v73;
    v23 = v49;
    v27[0] = v17;
    LOBYTE(v27[15]) = v83;
    v27[16] = v21;
    LOBYTE(v27[31]) = v75;
    *&v27[25] = v72;
    v27[32] = v22;
    v27[33] = v49;
    sub_6887C(v27, &v28);
    sub_6ACB4(v26);
    v28 = v17;
    v33 = v80;
    v34 = v81;
    v35 = v82;
    v29 = v76;
    v30 = v77;
    v31 = v78;
    v32 = v79;
    v44 = v74;
    v43 = v73;
    v42 = v72;
    v41 = v71;
    v40 = v70;
    v39 = v69;
    v36 = v83;
    v37 = v21;
    v45 = v75;
    v38 = v68;
    v46 = v22;
    v47 = v23;
    sub_6ADB0(&v28);
    return memcpy(v25, v27, 0x110uLL);
  }
}

unint64_t sub_68340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1835D8;
  if (!qword_1835D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1835D8);
  }

  return result;
}

uint64_t sub_68394(void *a1)
{
  v2 = sub_46F9C(&qword_1835D0, &qword_1259C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_117800();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_1837F8, &qword_1268F0);
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_66DE0(a1, a1[3]);
  sub_6AB84(v11, v12, v13);
  v14 = v43;
  sub_117AF0();
  if (v14)
  {
    sub_6ACB4(a1);
    return v11;
  }

  v43 = v7;
  v15 = v41;
  sub_46F9C(&qword_183800, &qword_1268F8);
  sub_6ABD8();
  sub_1178E0();
  v16 = v8;
  v18 = v4;
  sub_1177F0();
  v19 = v15;
  v20 = v4;
  v21 = v5;
  if ((*(v15 + 48))(v20, 1, v5) == 1)
  {
    (*(v42 + 8))(v10, v16);
    sub_488C8(v18, &qword_1835D0, &qword_1259C8);
    v22 = a1;
LABEL_23:
    v11 = v46;
    sub_6ACB4(v22);
    return v11;
  }

  v39 = v10;
  v23 = v43;
  (*(v15 + 32))(v43, v18, v21);
  v22 = a1;
  sub_66DE0(a1, a1[3]);
  v24 = sub_117AE0();
  if (!*(v24 + 16) || (v25 = sub_64EA4(v23), (v26 & 1) == 0))
  {

    (*(v19 + 8))(v23, v21);
    (*(v42 + 8))(v39, v16);
    goto LABEL_23;
  }

  sub_6AD00(*(v24 + 56) + 32 * v25, v45);

  sub_46F9C(&qword_183818, &qword_126900);
  v27 = swift_dynamicCast();
  v28 = v42;
  if ((v27 & 1) == 0)
  {
LABEL_20:
    (*(v19 + 8))(v23, v21);
    (*(v28 + 8))(v39, v16);
    goto LABEL_23;
  }

  v29 = v44;
  v30 = v46;
  if (!v46)
  {

    goto LABEL_20;
  }

  v40 = *(v44 + 16);
  if (!v40)
  {

LABEL_22:
    (*(v19 + 8))(v23, v21);
    (*(v28 + 8))(v39, v16);
    v46 = v30;
    goto LABEL_23;
  }

  v38 = v16;
  v31 = 0;
  v32 = 112;
  while (1)
  {
    v33 = v29;
    v34 = *(v29 + 8 * v31 + 32);
    v35 = v34;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_660F4(v30);
      v30 = result;
    }

    if (v31 >= *(v30 + 16))
    {
      break;
    }

    ++v31;
    v36 = *(v30 + v32);
    *(v30 + v32) = v34;

    v32 += 120;
    v29 = v33;
    if (v40 == v31)
    {

      v28 = v42;
      v23 = v43;
      v16 = v38;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_688B4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1660C0;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

void *sub_68900@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_46F9C(&qword_1837E8, &qword_1268E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = a1[3];
  v30 = a1;
  v10 = sub_66DE0(a1, v9);
  sub_6AADC(v10, v11, v12);
  sub_117AF0();
  if (v2)
  {
    return sub_6ACB4(v30);
  }

  v13 = v6;
  LOBYTE(v32[0]) = 0;
  v14 = v5;
  v15 = sub_117910();
  LOBYTE(v32[0]) = 1;
  v29 = sub_117910();
  LOBYTE(v32[0]) = 2;
  sub_117900();
  v17 = v16;
  LOBYTE(v32[0]) = 3;
  v28 = sub_117910();
  v31[0] = 4;
  sub_6AB30(v28, v18, v19);
  v20 = sub_117920();
  v21 = v32[0];
  v22 = v32[1];
  v33 = 5;
  sub_691C4(v20, v23, v24);
  sub_117920();
  (*(v13 + 8))(v8, v14);
  memcpy(v31, v32, sizeof(v31));
  sub_6ACB4(v30);
  v25 = v28;
  v26 = v29;
  *a2 = v15;
  *(a2 + 1) = v26;
  *(a2 + 2) = v17;
  *(a2 + 3) = v25;
  *(a2 + 4) = v21;
  *(a2 + 5) = v22;
  return memcpy(a2 + 6, v31, 0x110uLL);
}

uint64_t sub_68BD4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_68BEC(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_68CFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_46F9C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_68D84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_68DBC(uint64_t a1)
{
  if (a1 > 400)
  {
    if (a1 <= 502)
    {
      if (a1 <= 405)
      {
        if (a1 == 401)
        {
          return 11;
        }

        if (a1 == 402)
        {
          return 12;
        }
      }

      else
      {
        switch(a1)
        {
          case 406:
            return 13;
          case 501:
            return 14;
          case 502:
            return 15;
        }
      }
    }

    else if (a1 > 506)
    {
      switch(a1)
      {
        case 507:
          return 19;
        case 508:
          return 20;
        case 601:
          return 21;
      }
    }

    else
    {
      switch(a1)
      {
        case 503:
          return 16;
        case 505:
          return 17;
        case 506:
          return 18;
      }
    }

    return 22;
  }

  if (a1 > 203)
  {
    if (a1 > 300)
    {
      switch(a1)
      {
        case 301:
          return 8;
        case 302:
          return 9;
        case 306:
          return 10;
      }
    }

    else
    {
      switch(a1)
      {
        case 204:
          return 5;
        case 205:
          return 6;
        case 206:
          return 7;
      }
    }

    return 22;
  }

  if (a1 <= 200)
  {
    if (a1 == 100)
    {
      return 0;
    }

    if (a1 == 200)
    {
      return 1;
    }

    return 22;
  }

  if (a1 == 201)
  {
    return 2;
  }

  if (a1 == 202)
  {
    return 3;
  }

  return 4;
}

unint64_t sub_68F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183600;
  if (!qword_183600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183600);
  }

  return result;
}

unint64_t sub_68FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183608;
  if (!qword_183608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183608);
  }

  return result;
}

unint64_t sub_69010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183610;
  if (!qword_183610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183610);
  }

  return result;
}

unint64_t sub_69068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183618;
  if (!qword_183618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183618);
  }

  return result;
}

unint64_t sub_690C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183620;
  if (!qword_183620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183620);
  }

  return result;
}

unint64_t sub_69114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_6913C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_6913C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183628;
  if (!qword_183628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183628);
  }

  return result;
}

unint64_t sub_6919C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_691C4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_691C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183630;
  if (!qword_183630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183630);
  }

  return result;
}

unint64_t sub_69218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_69240(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_69240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183638;
  if (!qword_183638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183638);
  }

  return result;
}

unint64_t sub_69294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183640;
  if (!qword_183640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183640);
  }

  return result;
}

unint64_t sub_692E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_69294(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_6933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183648;
  if (!qword_183648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183648);
  }

  return result;
}

unint64_t sub_69390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183650;
  if (!qword_183650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183650);
  }

  return result;
}

unint64_t sub_693E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_6940C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_6940C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183658;
  if (!qword_183658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183658);
  }

  return result;
}

uint64_t sub_6948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_694C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183660;
  if (!qword_183660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183660);
  }

  return result;
}

unint64_t sub_6951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183668;
  if (!qword_183668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183668);
  }

  return result;
}

unint64_t sub_69574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_183670;
  if (!qword_183670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183670);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppQualifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppQualifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_698A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_698DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_69924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_6999C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_699C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_69A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Suggestion(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Suggestion(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 10))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 9);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for Suggestion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_69B3C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_69B5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_69BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_69C6C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_69CC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_69D30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 320))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_69D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 320) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 320) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t sub_69E44(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_69E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_69EA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 210))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_69EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_69F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_69FA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_69FEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6A078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_6A114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

void sub_6A1A0(uint64_t a1)
{
  type metadata accessor for PLBatteryUIChargingIntervalType(319);
  if (v1 <= 0x3F)
  {
    sub_6A260(319, &qword_1836D0, &type metadata for Int, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_6A2B0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_6A260(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_6A2B0(uint64_t a1)
{
  if (!qword_1836D8)
  {
    sub_115760();
    v1 = sub_117620();
    if (!v2)
    {
      atomic_store(v1, &qword_1836D8);
    }
  }
}

void sub_6A358(uint64_t a1)
{
  type metadata accessor for PLBatteryUIChargingIntervalType(319);
  if (v1 <= 0x3F)
  {
    sub_6A3E0(319);
    if (v2 <= 0x3F)
    {
      sub_6A448(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_6A3E0(uint64_t a1)
{
  if (!qword_183780)
  {
    type metadata accessor for PLBatteryUIChargingIntervalType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_183780);
    }
  }
}

void sub_6A448(uint64_t a1)
{
  if (!qword_183788)
  {
    type metadata accessor for PLBatteryUIChargingIntervalType(255);
    sub_47A1C(&qword_182EF0, &unk_124BB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_183788);
    }
  }
}

uint64_t getEnumTagSinglePayload for ChargingStateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChargingStateType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_6A614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}